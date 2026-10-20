object TBDocksForm: TTBDocksForm
  Left = 228
  Top = 141
  Width = 783
  Height = 540
  HelpContext = 7600
  Caption = 'TBDocksForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DockTop: TTBDock
    Left = 0
    Top = 20
    Width = 775
    Height = 26
    object Toolbar: TTBToolbar
      Left = 0
      Top = 0
      Caption = 'Toolbar'
      DockPos = 0
      TabOrder = 0
    end
  end
  object DockBottom: TTBDock
    Left = 0
    Top = 497
    Width = 775
    Height = 9
    Position = dpBottom
  end
  object DockLeft: TTBDock
    Left = 0
    Top = 46
    Width = 9
    Height = 451
    Position = dpLeft
  end
  object DockRight: TTBDock
    Left = 766
    Top = 46
    Width = 9
    Height = 451
    Position = dpRight
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 20
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clBtnShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
