object frmModifyVar: TfrmModifyVar
  Left = 418
  Top = 267
  HelpContext = 5400
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Modify variable'
  ClientHeight = 430
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pVarName: TPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '  pVarName'
    TabOrder = 0
  end
  object pButtons: TPanel
    Left = 0
    Top = 395
    Width = 320
    Height = 35
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 320
      Height = 8
      Align = alTop
      Shape = bsTopLine
    end
    object OkB: TButton
      Left = 162
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Modify'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object CancelB: TButton
      Left = 242
      Top = 7
      Width = 75
      Height = 24
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object pNumEdit: TPanel
    Left = 0
    Top = 25
    Width = 320
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object ceNumEdit: TdxCalcEdit
      Left = 6
      Top = 4
      Width = 121
      TabOrder = 0
      OnKeyPress = ceNumEditKeyPress
      StyleController = IBEMainForm.MainSC
      Text = '0'
      OnChange = ceNumEditChange
    end
  end
  object pDateTimeEdit: TPanel
    Left = 0
    Top = 145
    Width = 320
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    object dtf: TDateTimeEditFrame
      Left = 6
      Top = 6
      object DateEdit: TdxDateEdit
        OnChange = ceNumEditChange
      end
      object TimeEdit: TdxTimeEdit
        OnChange = ceNumEditChange
        StoredValues = 4
      end
    end
  end
  object pStringEdit: TPanel
    Left = 0
    Top = 185
    Width = 320
    Height = 75
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    Visible = False
    object mStringEdit: TdxMemo
      Tag = 1000
      Left = 7
      Top = 7
      Width = 306
      TabOrder = 0
      StyleController = IBEMainForm.MainSC
      OnChange = mStringEditChange
      Height = 60
    end
  end
  object pNull: TPanel
    Left = 0
    Top = 369
    Width = 320
    Height = 26
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    TabOrder = 5
    object cbNull: TdxCheckEdit
      Left = 4
      Top = 2
      Width = 75
      TabOrder = 0
      Caption = '&Null'
      StyleController = IBEMainForm.MainCheckSC
    end
  end
  object pDateEdit: TPanel
    Left = 0
    Top = 65
    Width = 320
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    Visible = False
    object DateEdit: TdxDateEdit
      Left = 6
      Top = 7
      Width = 121
      TabOrder = 0
      StyleController = IBEMainForm.MainSC
      OnChange = ceNumEditChange
      Date = -700000
      SaveTime = False
    end
  end
  object pTimeEdit: TPanel
    Left = 0
    Top = 105
    Width = 320
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 7
    Visible = False
    object TimeEdit: TdxTimeEdit
      Left = 6
      Top = 7
      Width = 121
      TabOrder = 0
      StyleController = IBEMainForm.MainSC
      OnChange = ceNumEditChange
      StoredValues = 4
    end
  end
  object pBlobEdit: TPanel
    Left = 0
    Top = 260
    Width = 320
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 8
    Visible = False
    object eFile: TdxButtonEdit
      Left = 7
      Top = 9
      Width = 306
      TabOrder = 0
      StyleController = IBEMainForm.MainSC
      Buttons = <
        item
          Default = True
          Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
          Kind = bkGlyph
          Width = 21
        end
      >
      ExistButtons = True
    end
  end
  object pBooleanEdit: TPanel
    Left = 0
    Top = 300
    Width = 320
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 9
    Visible = False
    object cbBoolEdit: TdxPickEdit
      Left = 8
      Top = 8
      Width = 121
      TabOrder = 0
      StyleController = IBEMainForm.MainSC
      OnChange = cbBoolEditChange
      DropDownListStyle = True
      Items.Strings = ['False', 'True']
    end
  end
end
