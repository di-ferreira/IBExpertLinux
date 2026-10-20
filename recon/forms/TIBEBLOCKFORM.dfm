object IBEBlockForm: TIBEBlockForm
  Left = 417
  Top = 299
  Width = 433
  Height = 308
  BorderIcons = ['biMinimize', 'biMaximize']
  Caption = 'Executing IBEBlock...'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 237
    Width = 417
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bStop: TButton
      Left = 339
      Top = 5
      Width = 75
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = 'Stop'
      TabOrder = 0
      OnClick = bStopClick
    end
  end
  object Pages: TPageControl
    Left = 0
    Top = 6
    Width = 417
    Height = 231
    ActivePage = tsLog
    Align = alClient
    TabOrder = 1
    object tsLog: TTabSheet
      Caption = 'Block progress'
      object mLog: TMemo
        Left = 0
        Top = 0
        Width = 409
        Height = 203
        Align = alClient
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object tsError: TTabSheet
      Caption = 'Error'
      ImageIndex = 1
      TabVisible = False
      object mError: TMemo
        Left = 0
        Top = 0
        Width = 410
        Height = 215
        Align = alClient
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 6
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
  end
end
