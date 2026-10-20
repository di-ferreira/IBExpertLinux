object frxReportTreeForm: TfrxReportTreeForm
  Left = 185
  Top = 107
  Width = 179
  Height = 319
  BorderStyle = bsSizeToolWin
  Caption = 'Report Tree'
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Tree: TTreeView
    Left = 0
    Top = 0
    Width = 171
    Height = 292
    Align = alClient
    HideSelection = False
    Indent = 19
    ReadOnly = True
    ShowRoot = False
    TabOrder = 0
    OnChange = TreeChange
  end
end
