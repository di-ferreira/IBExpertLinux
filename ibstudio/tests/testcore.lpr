program testcore;
{ Runner de testes do nucleo (fpcunit, sem LCL e sem banco). }

{$mode objfpc}{$H+}

uses
  Classes, consoletestrunner, testregistry, tc_sqlutil, tc_metadata,
  tc_settings;

var
  Runner: TTestRunner;

begin
  Runner := TTestRunner.Create(nil);
  try
    Runner.Initialize;
    Runner.Title := 'IBStudio - nucleo';
    Runner.Run;
  finally
    Runner.Free;
  end;
end.
