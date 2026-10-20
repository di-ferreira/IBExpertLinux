object PEPictureForm: TPEPictureForm
  Left = 360
  Top = 294
  Width = 432
  Height = 406
  BorderIcons = ['biSystemMenu', 'biMaximize']
  Caption = 'Picture'
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
    Top = 338
    Width = 424
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 256
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
      Left = 340
      Top = 8
      Width = 75
      Height = 25
      Action = actCancel
      Anchors = ['akTop', 'akRight']
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 409
    Height = 321
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Panel3: TPanel
      Left = 8
      Top = 8
      Width = 305
      Height = 305
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clWhite
      TabOrder = 0
      object I: TImage
        Left = 0
        Top = 0
        Width = 301
        Height = 301
        Align = alClient
      end
    end
    object Button3: TButton
      Left = 318
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Load ...'
      Default = True
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 318
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Cl&ear'
      TabOrder = 2
      OnClick = Button4Click
    end
  end
  object ActionList1: TActionList
    Left = 328
    Top = 192
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
  object od: TOpenDialog
    Left = 384
    Top = 192
  end
end
