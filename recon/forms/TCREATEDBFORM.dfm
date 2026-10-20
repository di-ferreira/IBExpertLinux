object CreateDBForm: TCreateDBForm
  Left = 355
  Top = 227
  HelpContext = 2400
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Create Database'
  ClientHeight = 316
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {894 bytes}
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lDBName: TLabel
    Left = 6
    Top = 51
    Width = 483
    Height = 13
    AutoSize = False
    Caption = 'Database File (relative to server)'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lUserName: TLabel
    Left = 2
    Top = 157
    Width = 111
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'User Name'
    FocusControl = UserE
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lPass: TLabel
    Left = 1
    Top = 186
    Width = 112
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Password'
    FocusControl = PassE
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lPageSize: TLabel
    Left = 2
    Top = 214
    Width = 111
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Page Size'
    FocusControl = PageC
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lCharset: TLabel
    Left = 1
    Top = 242
    Width = 112
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Char Set'
    FocusControl = CharSetC
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lSQLDialect: TLabel
    Left = 268
    Top = 157
    Width = 103
    Height = 13
    Alignment = taRightJustify
    Caption = 'Database SQL Dialect'
  end
  object lServer: TLabel
    Left = 5
    Top = 3
    Width = 32
    Height = 13
    Caption = 'Server'
  end
  object lServerName: TLabel
    Left = 142
    Top = 4
    Width = 61
    Height = 13
    Caption = 'Server name'
  end
  object lProtocol: TLabel
    Left = 358
    Top = 4
    Width = 39
    Height = 13
    Caption = 'Protocol'
  end
  object Label1: TLabel
    Left = 6
    Top = 96
    Width = 483
    Height = 13
    AutoSize = False
    Caption = 'Client Library File'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lCollation: TLabel
    Left = 248
    Top = 242
    Width = 121
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Collation (FB 2.5)'
    FocusControl = eCollation
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object UserE: TdxEdit
    Left = 117
    Top = 153
    Width = 121
    TabOrder = 5
    CharCase = ecUpperCase
    StyleController = IBEMainForm.MainSC
  end
  object PageC: TdxPickEdit
    Left = 117
    Top = 211
    Width = 121
    TabOrder = 7
    StyleController = IBEMainForm.MainSC
    DropDownRows = 20
    DropDownListStyle = True
    Items.Strings = ['1024', '2048', '4096', '8192', '16384']
  end
  object CharSetC: TdxPickEdit
    Left = 117
    Top = 239
    Width = 121
    TabOrder = 8
    StyleController = IBEMainForm.MainSC
    Text = 'NONE'
    DropDownRows = 20
    Items.Strings = ['ASCII', 'BIG_5', 'CYRL', 'DOS437', 'DOS850', 'DOS852', 'DOS857', 'DOS860', 'DOS861', 'DOS863', 'DOS865', 'EUCJ_0208', 'GB_2312', 'ISO8859_1', 'ISO8859_2', 'KSC_5601', 'NEXT', 'NONE', 'OCTETS', 'SJIS_0208', 'UNICODE_FSS', 'UTF8', 'WIN1250', 'WIN1251', 'WIN1252', 'WIN1253', 'WIN1254']
  end
  object PassE: TdxEdit
    Left = 117
    Top = 183
    Width = 121
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    PasswordChar = '*'
    StyleController = IBEMainForm.MainSC
  end
  object DBNameE: TdxButtonEdit
    Left = 5
    Top = 69
    Width = 490
    TabOrder = 3
    StyleController = IBEMainForm.MainSC
    Buttons = <
      item
        Default = True
        Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
        Kind = bkGlyph
        Width = 21
      end
    >
    OnButtonClick = DBNameEButtonClick
    ExistButtons = True
  end
  object cbSQLDialect: TdxPickEdit
    Left = 374
    Top = 153
    Width = 120
    TabOrder = 10
    StyleController = IBEMainForm.MainSC
    DropDownRows = 20
    DropDownListStyle = True
    Items.Strings = ['Dialect 1', 'Dialect 3']
    Revertable = True
  end
  object cbServer: TdxPickEdit
    Left = 5
    Top = 21
    Width = 112
    TabOrder = 0
    StyleController = IBEMainForm.MainSC
    OnChange = cbServerChange
    DropDownListStyle = True
    Items.Strings = ['Local', 'Remote']
  end
  object cbServerName: TdxPickEdit
    Left = 142
    Top = 21
    Width = 195
    TabOrder = 1
    StyleController = IBEMainForm.MainSC
    DropDownRows = 20
  end
  object cbProtocol: TdxPickEdit
    Left = 357
    Top = 21
    Width = 138
    TabOrder = 2
    StyleController = IBEMainForm.MainSC
    DropDownListStyle = True
    Items.Strings = ['TCP/IP', 'NetBEUI', 'SPX']
  end
  object eClientLibrary: TdxButtonEdit
    Left = 5
    Top = 114
    Width = 490
    TabOrder = 4
    StyleController = IBEMainForm.MainSC
    Buttons = <
      item
        Default = True
        Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
        Kind = bkGlyph
        Width = 21
      end
    >
    OnButtonClick = eClientLibraryButtonClick
    ExistButtons = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 277
    Width = 501
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 11
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 501
      Height = 2
      Align = alTop
      Shape = bsTopLine
    end
    object cbRegister: TdxCheckEdit
      Left = 2
      Top = 9
      Width = 247
      TabOrder = 3
      Caption = '&Register After Creating'
      StyleController = IBEMainForm.MainCheckSC
      State = cbsChecked
    end
    object CancelB: TButton
      Left = 336
      Top = 8
      Width = 75
      Height = 24
      Anchors = ['akTop', 'akRight']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object bHelp: TButton
      Left = 419
      Top = 8
      Width = 75
      Height = 24
      Anchors = ['akTop', 'akRight']
      Cancel = True
      Caption = 'Help'
      TabOrder = 1
      OnClick = bHelpClick
    end
    object OkB: TButton
      Left = 253
      Top = 8
      Width = 75
      Height = 24
      Anchors = ['akTop', 'akRight']
      Caption = 'OK'
      Default = True
      TabOrder = 2
      OnClick = OkBClick
    end
  end
  object eCollation: TdxEdit
    Left = 374
    Top = 239
    Width = 121
    TabOrder = 9
    CharCase = ecUpperCase
    StyleController = IBEMainForm.MainSC
  end
  object CreateDB: TFIBDatabase
    ClientLibName = 'gds32.dll'
    DefaultTransaction = CreateTr
    SQLDialect = 1
    SQLDAVersion = 1
    Timeout = 239549708
    Left = 8
    Top = 224
  end
  object CreateTr: TFIBTransaction
    Active = False
    DefaultDatabase = CreateDB
    Timeout = 229134180
    TimeoutAction = TARollback
    Left = 328
    Top = 40
  end
  object ConfigService: TpFIBConfigService
    ClientLibName = 'gds32.dll'
    Params.Strings = ['user_name=SYSDBA', 'password=masterkey']
    LoginPrompt = False
    DatabaseName = 'd:\test_sql3.gdb'
    Left = 360
    Top = 40
  end
  object ActionList1: TActionList
    Left = 16
    Top = 192
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
  end
  object OP: TOpenDialog
    DefaultExt = 'gdb'
    Filter = 'InterBase database (*.gdb)|*.gdb|Firebird database (*.fdb)|*.fdb|InterBase 7.0 database (*.ib)|*.ib|All Files (*.*)|*.*'
    Left = 12
    Top = 152
  end
end
