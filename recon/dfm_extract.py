#!/usr/bin/env python3
"""Extrai e decodifica os recursos RCDATA (formularios DFM) de IBExpert.exe.

O executavel e um PE32 Delphi 5. Os formularios ficam em RCDATA no formato
binario do DFM (assinatura TPF0 + tokens prefixados por tamanho). Este script
converte cada um para o formato DFM textual, legivel e reutilizavel.
"""
import argparse
import collections
import os
import struct
import sys

VA_NULL = 0
VA_LIST = 1
VA_INT8 = 2
VA_INT16 = 3
VA_INT32 = 4
VA_EXTENDED = 5
VA_STRING = 6
VA_IDENT = 7
VA_FALSE = 8
VA_TRUE = 9
VA_BINARY = 10
VA_SET = 11
VA_LSTRING = 12
VA_NIL = 13
VA_COLLECTION = 14
VA_SINGLE = 15
VA_CURRENCY = 16
VA_DATE = 17
VA_WSTRING = 18
VA_INT64 = 19
VA_UTF8STRING = 20


class Reader:
    def __init__(self, data, pos=0):
        self.d = data
        self.p = pos

    def byte(self):
        v = self.d[self.p]
        self.p += 1
        return v

    def raw(self, n):
        v = self.d[self.p:self.p + n]
        self.p += n
        return v

    def shortstr(self):
        n = self.byte()
        return self.raw(n).decode("latin-1")

    def i32(self):
        v = struct.unpack_from("<i", self.d, self.p)[0]
        self.p += 4
        return v


def read_value(r):
    t = r.byte()
    if t == VA_LIST:
        # TWriter.WriteListBegin: itens sao valores sem nome, terminados por vaNull
        items = []
        while True:
            if r.d[r.p] == VA_NULL:
                r.p += 1
                return items
            items.append(read_value(r))
    if t == VA_INT8:
        v = struct.unpack_from("<b", r.d, r.p)[0]
        r.p += 1
        return v
    if t == VA_INT16:
        v = struct.unpack_from("<h", r.d, r.p)[0]
        r.p += 2
        return v
    if t == VA_INT32:
        v = r.i32()
        return v
    if t == VA_INT64:
        v = struct.unpack_from("<q", r.d, r.p)[0]
        r.p += 8
        return v
    if t == VA_EXTENDED:
        v = struct.unpack_from("<d", r.d, r.p)[0]
        r.p += 10
        return v
    if t == VA_SINGLE:
        v = struct.unpack_from("<f", r.d, r.p)[0]
        r.p += 4
        return v
    if t == VA_CURRENCY:
        v = struct.unpack_from("<q", r.d, r.p)[0] / 10000.0
        r.p += 8
        return v
    if t == VA_DATE:
        v = struct.unpack_from("<d", r.d, r.p)[0]
        r.p += 8
        return v
    if t == VA_STRING:
        return r.shortstr()
    if t == VA_IDENT:
        return Ident(r.shortstr())
    if t == VA_FALSE:
        return False
    if t == VA_TRUE:
        return True
    if t == VA_NIL:
        return None
    if t == VA_NULL:
        return NULL
    if t == VA_BINARY:
        n = r.i32()
        return r.raw(n)
    if t == VA_LSTRING:
        n = r.i32()
        return r.raw(n).decode("latin-1")
    if t == VA_WSTRING:
        n = r.i32()
        return r.raw(n * 2).decode("utf-16le", "replace")
    if t == VA_UTF8STRING:
        n = r.i32()
        return r.raw(n).decode("utf-8", "replace")
    if t == VA_SET:
        items = []
        while True:
            s = r.shortstr()
            if not s:
                break
            items.append(s)
        return items
    if t == VA_COLLECTION:
        items = []
        while True:
            b = r.byte()
            if b == 0:
                break
            if b != VA_LIST:
                raise ValueError("colecao inesperada byte %#x em %#x" % (b, r.p))
            items.append(read_props(r))
        return items
    raise ValueError("tipo de valor desconhecido %#x em %#x" % (t, r.p))


class Ident(str):
    pass


class NULL:
    pass


def read_props(r):
    props = []
    while True:
        if r.d[r.p] == VA_NULL:
            r.p += 1
            return props
        name = r.shortstr()
        props.append((name, read_value(r)))


def read_object(r):
    # Alguns recursos carregam um byte de cabecalho >= 0xF0 antes do nome da
    # classe (0xF1 na maioria, 0xF4 em varios filhos). O significado nao consta
    # na documentacao do formato; o Delphi da aplicacao o consome.
    if r.p < len(r.d) and r.d[r.p] >= 0xF0:
        r.p += 1
    cls = r.shortstr()
    name = r.shortstr()
    props = read_props(r)
    children = []
    while r.d[r.p] != VA_NULL:
        children.append(read_object(r))
    r.p += 1
    return (cls, name, props, children)


def fmt_value(v):
    if isinstance(v, Ident):
        return str(v)
    if isinstance(v, bool):
        return "True" if v else "False"
    if isinstance(v, list):
        if v and isinstance(v[0], list):
            return None  # colecao
        return "[" + ", ".join(fmt_value(x) for x in v) + "]"
    if isinstance(v, bytes):
        return "{" + v.hex() + "}"
    if isinstance(v, str):
        esc = v.replace("'", "''")
        if "\n" in v or "\r" in v:
            return "'" + esc.replace("\r\n", "\\r\\n").replace("\n", "\\n") + "'"
        return "'" + esc + "'"
    return str(v)


def emit(node, out, depth=0):
    cls, name, props, children = node
    pad = "  " * depth
    out.append("%sobject %s: %s" % (pad, name, cls))
    for pname, pval in props:
        fv = fmt_value(pval)
        if fv is None:  # colecao
            out.append("%s  %s = <" % (pad, pname))
            for item in pval:
                out.append("%s    item" % pad)
                for iname, ival in item:
                    out.append("%s      %s = %s" % (pad, iname, fmt_value(ival)))
                out.append("%s    end" % pad)
            out.append("%s  >" % pad)
        elif isinstance(pval, bytes):
            out.append("%s  %s = {%d bytes}" % (pad, pname, len(pval)))
        else:
            out.append("%s  %s = %s" % (pad, pname, fv))
    for c in children:
        emit(c, out, depth + 1)
    out.append("%send" % pad)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("exe")
    ap.add_argument("outdir")
    args = ap.parse_args()

    data = open(args.exe, "rb").read()
    pe = struct.unpack_from("<I", data, 0x3C)[0]
    nsec = struct.unpack_from("<H", data, pe + 6)[0]
    opt = pe + 24
    so = opt + 224
    secs = []
    for i in range(nsec):
        o = so + i * 40
        secname = data[o:o + 8].rstrip(b"\0").decode("latin-1")
        vs, va, rs, ra = struct.unpack_from("<IIII", data, o + 8)
        secs.append((secname, va, vs, ra, rs))

    def r2o(va):
        for _n, b, vs, ra, rs in secs:
            if b <= va < b + max(vs, rs):
                return ra + (va - b)
        return None

    rsrc = [s for s in secs if s[0] == ".rsrc"][0]
    base, rsize, rraw = rsrc[1], max(rsrc[2], rsrc[4]), rsrc[3]

    def nameof(off):
        ln = struct.unpack_from("<H", data, off)[0]
        return data[off + 2:off + 2 + ln * 2].decode("utf-16le", "replace")

    found = []

    def walk(rel, depth, path):
        off = rraw + rel
        if off + 16 > len(data):
            return
        _, _, _, _, n1, n2 = struct.unpack_from("<IIHHHH", data, off)
        for i in range(n1 + n2):
            e = off + 16 + i * 8
            if e + 8 > len(data):
                return
            nid, ofs = struct.unpack_from("<II", data, e)
            nm = nameof(rraw + (nid & 0x7FFFFFFF)) if nid & 0x80000000 else nid
            r = ofs & 0x7FFFFFFF
            if ofs & 0x80000000:
                if depth < 3 and r < rsize:
                    walk(r, depth + 1, path + (nm,))
            else:
                if r >= rsize:
                    continue
                dataRVA, size, cp, _ = struct.unpack_from("<IIII", data, rraw + r)
                fo = r2o(dataRVA)
                found.append((path + (nm,), fo, size))

    walk(0, 0, ())

    os.makedirs(args.outdir, exist_ok=True)
    stats = collections.Counter()
    ok = fail = 0
    for path, fo, size in found:
        if path[0] != 10 or not isinstance(path[1], str):
            continue
        blob = data[fo:fo + size]
        if not blob.startswith(b"TPF0"):
            stats["nao_dfm"] += 1
            continue
        r = Reader(blob, 4)
        try:
            node = read_object(r)
            if r.p != len(blob):
                raise ValueError("sobra %d bytes" % (len(blob) - r.p))
        except Exception as exc:  # noqa: BLE001
            fail += 1
            print("FALHA %s: %s" % (path[1], exc), file=sys.stderr)
            continue
        out = []
        emit(node, out)
        with open(os.path.join(args.outdir, path[1] + ".dfm"), "w", encoding="utf-8") as fh:
            fh.write("\n".join(out) + "\n")
        ok += 1
        cls, name, props, children = node

        def count(n):
            stats["objetos"] += 1
            for pn, pv in n[2]:
                if pn.startswith("On"):
                    stats["handlers"] += 1
                stats["props"] += 1
            for c in n[3]:
                count(c)

        count(node)
    print("formularios convertidos: %d | falhas: %d | nao-DFM: %d" % (ok, fail, stats["nao_dfm"]))
    print("objetos: %d | propriedades: %d | handlers On*: %d"
          % (stats["objetos"], stats["props"], stats["handlers"]))


if __name__ == "__main__":
    main()
