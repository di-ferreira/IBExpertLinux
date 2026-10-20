object fmPrintParams: TfmPrintParams
  Left = 302
  Top = 384
  HelpContext = 3200
  BorderStyle = bsDialog
  Caption = 'Printing options'
  ClientHeight = 132
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pButton: TPanel
    Left = 480
    Top = 0
    Width = 91
    Height = 95
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object btPreview: TButton
      Left = 8
      Top = 32
      Width = 75
      Height = 24
      Caption = 'Pre&view'
      TabOrder = 1
      OnClick = btPreviewClick
    end
    object btDesign: TButton
      Left = 8
      Top = 60
      Width = 75
      Height = 24
      Caption = '&Design'
      TabOrder = 2
      OnClick = btDesignClick
    end
    object btPrint: TButton
      Left = 8
      Top = 4
      Width = 75
      Height = 24
      Caption = '&Print'
      Default = True
      TabOrder = 0
      OnClick = btPrintClick
    end
  end
  object pGeneral: TPanel
    Left = 338
    Top = 0
    Width = 135
    Height = 95
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object cbDDL: TdxCheckEdit
      Left = 14
      Top = 8
      Width = 142
      TabOrder = 0
      Caption = 'DD&L'
      StyleController = IBEMainForm.MainCheckSC
      State = cbsChecked
    end
    object cbDescription: TdxCheckEdit
      Left = 14
      Top = 32
      Width = 142
      TabOrder = 1
      Caption = 'Descr&iption'
      StyleController = IBEMainForm.MainCheckSC
      State = cbsChecked
    end
  end
  object pTable: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 95
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object cbFields: TdxCheckEdit
      Left = 8
      Top = 8
      Width = 137
      TabOrder = 0
      Caption = '&Fields'
      StyleController = IBEMainForm.MainCheckSC
      State = cbsChecked
    end
    object cbConstraints: TdxCheckEdit
      Left = 8
      Top = 32
      Width = 137
      TabOrder = 1
      Caption = 'Constraints'
      StyleController = IBEMainForm.MainCheckSC
      State = cbsChecked
    end
    object cbIndices: TdxCheckEdit
      Left = 8
      Top = 56
      Width = 137
      TabOrder = 2
      Caption = 'Indices'
      StyleController = IBEMainForm.MainCheckSC
      State = cbsChecked
    end
  end
  object pDepend: TPanel
    Left = 145
    Top = 0
    Width = 193
    Height = 95
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
    object cbOnDepend: TdxCheckEdit
      Left = 8
      Top = 8
      Width = 179
      TabOrder = 0
      Caption = 'Dependent Objects'
      StyleController = IBEMainForm.MainCheckSC
      State = cbsChecked
    end
    object cbDependOn: TdxCheckEdit
      Left = 8
      Top = 32
      Width = 180
      TabOrder = 1
      Caption = 'Depend On Objects'
      StyleController = IBEMainForm.MainCheckSC
      State = cbsChecked
    end
    object cbParameters: TdxCheckEdit
      Left = 8
      Top = 56
      Width = 176
      TabOrder = 2
      Caption = 'Parameters'
      StyleController = IBEMainForm.MainCheckSC
      State = cbsChecked
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 95
    Width = 571
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 571
      Height = 4
      Align = alTop
      Shape = bsTopLine
    end
    object cbBlackAndWhite: TdxCheckEdit
      Left = 8
      Top = 8
      Width = 465
      TabOrder = 0
      Anchors = ['akLeft', 'akTop', 'akRight']
      Caption = 'Print object DDL in black and white'
      StyleController = IBEMainForm.MainCheckSC
      State = cbsChecked
    end
    object btCancel: TButton
      Left = 489
      Top = 8
      Width = 75
      Height = 24
      Anchors = ['akTop', 'akRight']
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Left = 268
    Top = 72
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
end
