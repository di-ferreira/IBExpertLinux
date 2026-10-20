object RestoreConnectForm: TRestoreConnectForm
  Left = 389
  Top = 358
  HelpContext = 14600
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Connection lost'
  ClientHeight = 144
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 101
    Width = 494
    Height = 5
    Align = alBottom
    Shape = bsBottomLine
  end
  object Panel1: TPanel
    Left = 0
    Top = 106
    Width = 494
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bCloseDB: TButton
      Left = 107
      Top = 6
      Width = 134
      Height = 27
      Caption = 'Close database'
      ModalResult = 2
      TabOrder = 0
    end
    object bRestoreConnect: TButton
      Left = 250
      Top = 6
      Width = 143
      Height = 27
      Caption = 'Restore connection'
      TabOrder = 1
      OnClick = bRestoreConnectClick
    end
  end
  object M: TdxMemo
    Tag = 1000
    Left = 0
    Top = 0
    Width = 494
    Align = alClient
    ParentColor = True
    Style.BorderStyle = xbsNone
    TabOrder = 1
    Alignment = taCenter
    ReadOnly = True
    Lines.Strings = ['']
    ScrollBars = ssBoth
    WordWrap = False
    Height = 101
    StoredValues = 65
  end
end
