object HelpItemEditForm: THelpItemEditForm
  Left = 281
  Top = 224
  HelpContext = 15900
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'HelpItemEditForm'
  ClientHeight = 285
  ClientWidth = 607
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
  object Pages: TIBEPageControl
    Left = 0
    Top = 0
    Width = 607
    Height = 250
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = dxTabSheet1
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    PageMargin = 0
    TabSettings.RightMargin = 2
    TabSettings.Height = 24
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object dxTabSheet1: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 607
      Height = 225
      Caption = 'General'
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
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object Label1: TLabel
        Left = 6
        Top = 5
        Width = 39
        Height = 13
        Caption = 'Item title'
      end
      object eTitle: TdxEdit
        Left = 5
        Top = 24
        Width = 597
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = eTitleChange
      end
      object eFile: TdxEdit
        Left = 4
        Top = 67
        Width = 597
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = eFileChange
      end
      object eFullPath: TdxEdit
        Left = 4
        Top = 110
        Width = 597
        TabOrder = 2
        Anchors = ['akLeft', 'akTop', 'akRight']
        ReadOnly = True
        StyleController = IBEMainForm.MainSC
        StoredValues = 64
      end
    end
    object tsKeywords: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 607
      Height = 225
      Caption = 'Keywords'
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
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object Splitter1: TSplitter
        Left = 292
        Top = 2
        Width = 3
        Height = 221
        Cursor = crHSplit
        Align = alRight
        ResizeStyle = rsUpdate
      end
      object Panel2: TPanel
        Left = 295
        Top = 2
        Width = 310
        Height = 221
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object tlA: TdxTreeList
          Left = 0
          Top = 0
          Width = 452
          Height = 221
          Bands = <
            item
            end
          >
          DefaultLayout = True
          HeaderPanelRowCount = 1
          Align = alLeft
          DragMode = dmAutomatic
          TabOrder = 0
          HideSelection = False
          LookAndFeel = lfFlat
          Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
          OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
          TreeLineColor = clGrayText
          ShowGrid = True
          ShowRoot = False
          GridLineColor = clSilver
          object tlcAKeyword: TdxTreeListColumn
            Caption = 'Keywords A'
            Width = 173
            BandIndex = 0
            RowIndex = 0
          end
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 2
        Width = 290
        Height = 221
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object tlK: TdxTreeList
          Left = 0
          Top = 0
          Width = 452
          Height = 221
          Bands = <
            item
            end
          >
          DefaultLayout = True
          HeaderPanelRowCount = 1
          Align = alLeft
          DragMode = dmAutomatic
          TabOrder = 0
          HideSelection = False
          LookAndFeel = lfFlat
          Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
          OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
          TreeLineColor = clGrayText
          ShowGrid = True
          ShowRoot = False
          GridLineColor = clSilver
          OnEdited = tlKEdited
          object tlcKKeyword: TdxTreeListColumn
            Caption = 'Keywords K'
            Width = 173
            BandIndex = 0
            RowIndex = 0
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 250
    Width = 607
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bOk: TButton
      Left = 439
      Top = 5
      Width = 75
      Height = 25
      Anchors = ['akRight', 'akBottom']
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object bCancel: TButton
      Left = 527
      Top = 5
      Width = 75
      Height = 25
      Anchors = ['akRight', 'akBottom']
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Left = 392
    Top = 16
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
    object actInsert: TAction
      Caption = 'actInsert'
      ShortCut = 45
      OnExecute = actInsertExecute
    end
  end
end
