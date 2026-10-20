object CProceduresFrame: TCProceduresFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 17600
  Align = alClient
  TabOrder = 0
  OnExit = FrameExit
  object TBToolbar1: TTBToolbar
    Left = 0
    Top = 2
    Width = 435
    Height = 22
    Align = alTop
    Caption = 'TBToolbar1'
    Images = IBEMainForm.MenuImages
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object TBItem2: TTBItem
      Action = actNewProcedure
    end
    object TBSeparatorItem1: TTBSeparatorItem
    end
    object TBItem1: TTBItem
      Action = actDeleteProcedure
    end
    object TBSeparatorItem2: TTBSeparatorItem
    end
    object TBControlItem2: TTBControlItem
      Control = Label1
    end
    object TBControlItem1: TTBControlItem
      Control = cbProcedures
    end
    object Label1: TLabel
      Left = 58
      Top = 4
      Width = 55
      Height = 13
      Caption = 'Procedure: '
    end
    object cbProcedures: TdxPopupEdit
      Left = 113
      Top = 0
      Width = 248
      TabOrder = 0
      OnKeyPress = cbProceduresKeyPress
      ReadOnly = True
      StyleController = IBEMainForm.MainSC
      PopupControl = tlProcedures
      PopupFormBorderStyle = pbsSysPanel
      OnPopup = cbProceduresPopup
      StoredValues = 64
    end
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 26
    Width = 435
    Height = 242
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsText
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    PageMargin = 0
    TabPosition = tpBottom
    TabSettings.RightMargin = 2
    TabSettings.Height = 24
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    OnExit = PagesExit
    TabOrder = 1
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsText: TAdvOfficePage
      Left = 0
      Top = 1
      Width = 435
      Height = 217
      Caption = 'DDL'
      PageAppearance.BorderColor = clNone
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = 15195349
      PageAppearance.ColorMirror = 15195349
      PageAppearance.ColorMirrorTo = 16513776
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clWhite
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = 14342874
      TabAppearance.BackGround.Direction = gdHorizontal
      object EditFm: TEditFrame
        Left = 2
        Top = 2
        Width = 431
        Height = 213
        object EditM: TSQLMemo
          Width = 431
          Height = 195
          OnExit = EditFmEditMExit
        end
        object pIncSearch: TPanel
          Top = 195
          Width = 431
        end
      end
      object tlProcedures: TdxTreeList
        Left = 192
        Top = 8
        Width = 250
        Height = 217
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        TabOrder = 1
        Visible = False
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoRowSelect', 'aoAutoWidth', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowButtons = False
        ShowHeader = False
        ShowLines = False
        ShowRoot = False
        OnDblClick = tlProceduresDblClick
        OnKeyPress = tlProceduresKeyPress
        object tlcProcName: TdxTreeListColumn
          Sorted = csUp
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsDesc: TAdvOfficePage
      Left = 0
      Top = 1
      Width = 435
      Height = 217
      Caption = 'Description'
      PageAppearance.BorderColor = clNone
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = 15195349
      PageAppearance.ColorMirror = 15195349
      PageAppearance.ColorMirrorTo = 16513776
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clWhite
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = 14342874
      TabAppearance.BackGround.Direction = gdHorizontal
      object DescFm: TEditFrame
        Left = 2
        Top = 2
        Width = 431
        Height = 213
        object EditM: TSQLMemo
          Width = 431
          Height = 195
          OnExit = DescFmEditMExit
        end
        object pIncSearch: TPanel
          Top = 195
          Width = 431
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 24
    Width = 435
    Height = 2
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 2
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
  end
  object CProceduresActions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 240
    Top = 85
    object actNewProcedure: TAction
      Caption = 'New Procedure'
      Hint = 'New Procedure'
      ImageIndex = 19
      OnExecute = actNewProcedureExecute
    end
    object actDeleteProcedure: TAction
      Caption = 'Delete Procedure'
      Hint = 'Delete Procedure'
      ImageIndex = 38
      OnExecute = actDeleteProcedureExecute
      OnUpdate = actDeleteProcedureUpdate
    end
  end
  object SynTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = SynTimerTimer
    Left = 144
    Top = 114
  end
end
