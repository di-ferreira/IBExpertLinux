object PEStringsForm: TPEStringsForm
  Left = 360
  Top = 294
  Width = 478
  Height = 357
  ActiveControl = M
  BorderIcons = ['biSystemMenu', 'biMaximize']
  Caption = 'String List Editor'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 289
    Width = 470
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 302
      Top = 8
      Width = 75
      Height = 25
      Action = actApply
      Anchors = ['akTop', 'akRight']
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 386
      Top = 8
      Width = 75
      Height = 25
      Action = actCancel
      Anchors = ['akTop', 'akRight']
      ModalResult = 2
      TabOrder = 1
    end
  end
  object M: TMemo
    Left = 8
    Top = 8
    Width = 453
    Height = 273
    Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object ActionList1: TActionList
    Left = 144
    Top = 32
    object actApply: TAction
      Caption = 'OK'
      OnExecute = actApplyExecute
    end
    object actCancel: TAction
      Caption = 'Cancel'
      ShortCut = 27
      OnExecute = actCancelExecute
    end
  end
end
