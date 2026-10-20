object ReplaceTextF: TReplaceTextF
  Left = 336
  Top = 253
  HelpContext = 9100
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Replace Text'
  ClientHeight = 263
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lText: TLabel
    Left = 8
    Top = 11
    Width = 56
    Height = 13
    Caption = '&Text to find:'
  end
  object lReplace: TLabel
    Left = 8
    Top = 35
    Width = 65
    Height = 13
    Caption = '&Replace with:'
    FocusControl = cbReplace
  end
  object gbOptions: TGroupBox
    Left = 8
    Top = 57
    Width = 185
    Height = 105
    Caption = ' Options '
    TabOrder = 1
    object CaseC: TdxCheckEdit
      Left = 8
      Top = 14
      Width = 171
      TabOrder = 0
      Caption = '&Case sensitive'
      StyleController = IBEMainForm.MainCheckSC
    end
    object WholeC: TdxCheckEdit
      Left = 8
      Top = 35
      Width = 169
      TabOrder = 1
      Caption = '&Whole words only'
      StyleController = IBEMainForm.MainCheckSC
    end
    object RegC: TdxCheckEdit
      Left = 8
      Top = 56
      Width = 171
      TabOrder = 2
      Caption = '&Regular expressions'
      StyleController = IBEMainForm.MainCheckSC
    end
    object cbPrompt: TdxCheckEdit
      Left = 8
      Top = 77
      Width = 169
      TabOrder = 3
      Caption = '&Prompt on replace'
      StyleController = IBEMainForm.MainCheckSC
      State = cbsChecked
    end
  end
  object ScopeG: TRadioGroup
    Left = 8
    Top = 166
    Width = 185
    Height = 57
    Caption = ' Scope '
    ItemIndex = 0
    Items.Strings = ['&Global', '&Selected text']
    TabOrder = 3
  end
  object OriginG: TRadioGroup
    Left = 199
    Top = 166
    Width = 185
    Height = 57
    Caption = ' Origin '
    ItemIndex = 0
    Items.Strings = ['&From cursor', '&Entire scope']
    TabOrder = 4
  end
  object bFind: TButton
    Left = 71
    Top = 231
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 5
  end
  object bCancel: TButton
    Left = 229
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 7
  end
  object bHelp: TButton
    Left = 308
    Top = 231
    Width = 75
    Height = 25
    Caption = '&Help'
    TabOrder = 8
  end
  object cbReplace: TdxPickEdit
    Left = 95
    Top = 32
    Width = 290
    TabOrder = 0
    StyleController = IBEMainForm.MainSC
    ImmediateDropDown = False
  end
  object gbDirection: TGroupBox
    Left = 199
    Top = 57
    Width = 185
    Height = 105
    Caption = ' Direction '
    TabOrder = 2
    object rbForward: TRadioButton
      Left = 8
      Top = 17
      Width = 170
      Height = 17
      Caption = 'Forward'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbBackward: TRadioButton
      Left = 8
      Top = 35
      Width = 170
      Height = 17
      Caption = 'Backward'
      TabOrder = 1
    end
  end
  object bAll: TButton
    Left = 150
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Replace &All'
    ModalResult = 6
    TabOrder = 6
  end
  object cbFind: TdxPickEdit
    Left = 95
    Top = 7
    Width = 290
    TabOrder = 9
    StyleController = IBEMainForm.MainSC
    DropDownRows = 20
    ImmediateDropDown = False
  end
  object ActionList1: TActionList
    Left = 327
    Top = 89
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
end
