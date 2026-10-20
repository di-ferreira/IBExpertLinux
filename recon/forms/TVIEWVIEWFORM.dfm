object ViewViewForm: TViewViewForm
  Left = 303
  Top = 239
  Width = 967
  Height = 614
  HelpContext = 1300
  Caption = 'View'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poDefault
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TdfsSplitter
    Left = 0
    Top = 35
    Width = 951
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ResizeStyle = rsUpdate
    OnCanResize = Splitter2CanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 38
    Width = 951
    Height = 537
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsSQL
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    PageMargin = 0
    TabSettings.LeftMargin = 2
    TabSettings.RightMargin = 2
    TabSettings.Height = 24
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    OnChange = PagesChange
    OnChanging = PagesChanging
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsSQL: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = '&SQL'
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
      object Splitter1: TdfsSplitter
        Left = 0
        Top = 415
        Width = 951
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ResizeStyle = rsUpdate
        OnCanResize = Splitter1CanResize
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object EditFm: TEditFrame
        Top = 1
        Width = 951
        Height = 414
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 951
          Height = 396
        end
        object pIncSearch: TPanel
          Top = 396
          Width = 951
        end
      end
      object DockBottom: TTBDock
        Left = 0
        Top = 418
        Width = 951
        Height = 94
        Position = dpBottom
        object twError: TTBToolWindow
          Left = 0
          Top = 0
          BorderStyle = bsNone
          Caption = 'Messages'
          CloseButtonWhenDocked = True
          ClientAreaHeight = 90
          ClientAreaWidth = 933
          DockableTo = ['dpTop', 'dpBottom']
          DockPos = 0
          DragHandleStyle = dhDouble
          FullSize = True
          TabOrder = 0
          Visible = False
          OnDockChanged = twErrorDockChanged
          OnVisibleChanged = twErrorDockChanged
          object MessagePanel: TPanel
            Left = 0
            Top = 0
            Width = 933
            Height = 90
            Align = alClient
            BevelOuter = bvNone
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object MessagesTL: TdxTreeList
              Left = 0
              Top = 0
              Width = 933
              Height = 90
              Bands = <
                item
                end
              >
              DefaultLayout = True
              HeaderPanelRowCount = 1
              Align = alClient
              DragMode = dmAutomatic
              TabOrder = 2
              HideSelection = False
              LookAndFeel = lfFlat
              Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
              OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
              TreeLineColor = clGrayText
              ShowGrid = True
              ShowRoot = False
              GridLineColor = clSilver
              OnDblClick = MessagesTLDblClick
              object tlcNumber: TdxTreeListColumn
                Caption = '#'
                DisableCustomizing = True
                DisableDragging = True
                DisableEditor = True
                Width = 30
                BandIndex = 0
                RowIndex = 0
              end
              object tlcType: TdxTreeListColumn
                Caption = 'Type'
                DisableCustomizing = True
                DisableDragging = True
                DisableEditor = True
                Width = 97
                BandIndex = 0
                RowIndex = 0
              end
              object tlcText: TdxTreeListColumn
                Caption = 'Text'
                DisableCustomizing = True
                DisableDragging = True
                DisableEditor = True
                Width = 760
                BandIndex = 0
                RowIndex = 0
              end
            end
            object ErrorM: TdxMemo
              Tag = 1000
              Left = 0
              Top = 0
              Width = 933
              Align = alClient
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ReadOnly = True
              StyleController = IBEMainForm.MainSC
              ScrollBars = ssVertical
              Height = 90
              StoredValues = 64
            end
            object MesPages: TIBEPageControl
              Left = 0
              Top = 0
              Width = 933
              Height = 90
              AdvOfficePagerStyler = IBEMainForm.PCStyler
              Align = alClient
              ActivePage = tsServerMes
              AntiAlias = aaNone
              ButtonSettings.PageListButtonHint = 'Page List'
              Glow = False
              PageMargin = 0
              TabSettings.LeftMargin = 2
              TabSettings.RightMargin = 2
              TabSettings.Height = 24
              TabSettings.Spacing = 2
              TabSettings.Shape = tsRightRamp
              TabSettings.Rounding = 3
              ShowShortCutHints = False
              TabOrder = 1
              TabStop = True
              NextPictureChanged = True
              PrevPictureChanged = True
              object tsServerMes: TAdvOfficePage
                Left = 0
                Top = 24
                Width = 933
                Height = 65
                Caption = 'Ser&ver Message'
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
              end
              object tsParserMes: TAdvOfficePage
                Left = 0
                Top = 24
                Width = 933
                Height = 65
                Caption = 'Pa&rser Messages'
                ImageIndex = 1
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
              end
            end
          end
        end
      end
    end
    object tsFields: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = '&Fields'
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
      object FieldsP: TPanel
        Left = 0
        Top = 1
        Width = 951
        Height = 511
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsDependencies: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = 'De&pendencies'
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
      object DependenceP: TPanel
        Left = 0
        Top = 1
        Width = 951
        Height = 511
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsTriggers: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = 'T&riggers'
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
      object TriggersP: TPanel
        Left = 0
        Top = 1
        Width = 951
        Height = 511
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsData: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = 'D&ata'
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
    end
    object tsDescription: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = 'Descr&iption'
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
        Top = 1
        Width = 951
        Height = 511
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 951
          Height = 493
          OnExit = DescFmEditMExit
        end
        object pIncSearch: TPanel
          Top = 493
          Width = 951
        end
      end
    end
    object tsGrants: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = '&Grants'
      ImageIndex = 6
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
    end
    object tsDDL: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = 'DDL'
      ImageIndex = 7
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
      object DDLP: TPanel
        Left = 0
        Top = 1
        Width = 951
        Height = 511
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsVerHistory: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = 'Version History'
      ImageIndex = 8
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
      object VerPages: TIBEPageControl
        Left = 0
        Top = 1
        Width = 951
        Height = 511
        AdvOfficePagerStyler = IBEMainForm.PCStyler
        Align = alClient
        ActivePage = tsVersions
        AntiAlias = aaNone
        ButtonSettings.PageListButtonHint = 'Page List'
        Glow = False
        PageMargin = 0
        TabSettings.LeftMargin = 2
        TabSettings.RightMargin = 2
        TabSettings.Height = 24
        TabSettings.Spacing = 2
        TabSettings.Shape = tsRightRamp
        TabSettings.Rounding = 3
        ShowShortCutHints = False
        OnChange = VerPagesChange
        TabOrder = 0
        TabStop = True
        NextPictureChanged = True
        PrevPictureChanged = True
        object tsVersions: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 951
          Height = 486
          Caption = 'Versions'
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
          object VerHisP: TPanel
            Left = 0
            Top = 1
            Width = 951
            Height = 485
            Align = alClient
            BevelOuter = bvNone
            Color = clWindow
            TabOrder = 0
          end
        end
        object tsCompareVer: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 951
          Height = 486
          Caption = 'Compare versions'
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
          object TDFm: TTextDiffFrame
            Top = 1
            Width = 951
            Height = 485
            object Splitter1: TdfsSplitter
              Height = 383
            end
            object Splitter2: TdfsSplitter
              Top = 383
              Width = 951
            end
            object pnlLeft: TPanel
              Height = 383
              object Panel1: TPanel
                Height = 24
                object cbVer1: TdxPickEdit
                  OnChange = TDFmcbVer1Change
                end
              end
            end
            object pnlRight: TPanel
              Width = 632
              Height = 383
              object pVer2: TPanel
                Width = 632
                object cbVer2: TdxPickEdit
                  Width = 465
                  OnChange = TDFmcbVer2Change
                end
              end
            end
            object pnlMerge: TPanel
              Top = 387
              Width = 951
            end
            object StatusBar1: TStatusBar
              Top = 466
              Width = 951
            end
          end
        end
      end
    end
    object tsRecreateScript: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = 'Recreate script'
      ImageIndex = 9
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
      object RecreateFm: TEditFrame
        Top = 1
        Width = 951
        Height = 511
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 951
          Height = 493
        end
        object pIncSearch: TPanel
          Top = 493
          Width = 951
        end
      end
    end
    object tsPlan: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = 'Plan Analyzer'
      ImageIndex = 10
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
      object PAF: TPlanAnalyzerFrame
        Top = 1
        Width = 951
        Height = 511
        object Splitter1: TdfsSplitter
          Width = 951
        end
        object Panel1: TPanel
          Width = 951
          object EditFm: TEditFrame
            Width = 951
            object lBookmark: TLabel
              Width = 46
            end
            object EditM: TSQLMemo
              Width = 951
            end
            object pIncSearch: TPanel
              Width = 951
            end
          end
        end
        object Panel2: TPanel
          Width = 951
          Height = 370
          object Panel3: TPanel
            Width = 951
            Height = 370
            object tl: TdxTreeList
              Width = 951
              Height = 345
            end
            object TBDock1: TTBDock
              Width = 951
            end
          end
        end
        object TR: TpFIBTransaction
          Timeout = 61387220
        end
      end
    end
    object tsCompare: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = 'Compare'
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
    end
    object tsTodo: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 951
      Height = 512
      Caption = 'To-do'
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
    end
  end
  object dockTop: TTBDock
    Left = 0
    Top = 0
    Width = 951
    Height = 9
  end
  object SourceQ: TFIBQuery
    ParamCheck = True
    Left = 496
    Top = 137
  end
  object ActionList: TActionList
    Images = IBEMainForm.MenuImages
    OnExecute = ActionListExecute
    OnUpdate = ActionListUpdate
    Left = 499
    Top = 3
    object aCompile: TAction
      Caption = 'Compile'
      Hint = 'Compile'
      ImageIndex = 28
      ShortCut = 16504
      OnExecute = aCompileExecute
    end
    object aCommitTransaction: TAction
      Caption = 'Commit Transaction'
      Enabled = False
      ImageIndex = 36
      ShortCut = 49219
      OnExecute = aCommitTransactionExecute
    end
    object aRollbackTransaction: TAction
      Caption = 'Rollback Transaction'
      Enabled = False
      ImageIndex = 38
      ShortCut = 49234
      OnExecute = aRollbackTransactionExecute
    end
    object aExportData: TAction
      Caption = 'Export Data'
      Enabled = False
      ImageIndex = 73
      ShortCut = 16453
      OnExecute = aExportDataExecute
    end
    object aPrint: TAction
      Caption = 'Print View'
      ImageIndex = 53
      OnExecute = aPrintExecute
    end
    object aFindText: TAction
      Caption = 'Find Text'
      ImageIndex = 32
      ShortCut = 16454
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actAutoGrant: TAction
      Caption = 'Autogrant privileges'
      Hint = 'Autogrant'
      ImageIndex = 119
      ShortCut = 16503
      OnExecute = actAutoGrantExecute
    end
    object actExportToScript: TAction
      Caption = 'Export data into script'
      ImageIndex = 74
      OnExecute = actExportToScriptExecute
    end
    object actFormatCode: TAction
      Caption = 'Format code'
      ImageIndex = 294
      ShortCut = 32838
      OnExecute = actFormatCodeExecute
    end
    object actCodeFormatOptions: TAction
      Caption = 'Code Formatting Options'
      OnExecute = actCodeFormatOptionsExecute
    end
    object actDropView: TAction
      Caption = 'Drop view'
      OnExecute = actDropViewExecute
      OnUpdate = actDropViewUpdate
    end
  end
  object EM: TpFIBExtract
    Options = ['eopExtractDescriptions', 'eopExtractIndices', 'eopExtractReferences', 'eopExtractChecks', 'eopExtractData', 'eopIncludeComments']
    CommitAfter = 0
    ReplaceTabs = True
    TabWidth = 2
    ExtractBlobs = True
    DateFormat = 'YYYY-MM-DD'
    DateTimeFormat = 'YYYY-MM-DD HH:NN:SS'
    Left = 276
    Top = 161
  end
  object bm: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        Caption = 'View toolbar'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'View toolbar'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRecentItems = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default']
    Categories.ItemsVisibles = [2]
    Categories.Visibles = [True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    Style = bmsFlat
    UseSystemFont = True
    Left = 332
    Top = 77
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = aCompile
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actAutoGrant
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = aCommitTransaction
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = aRollbackTransaction
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = aExportData
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = aPrint
      Category = 0
    end
    object cbViewName: TdxBarCombo
      Align = iaClient
      Caption = 'View name'
      Category = 0
      Hint = 'View name'
      Visible = ivAlways
      OnChange = cbViewNameChange
      Width = 100
      DropDownCount = 20
      ItemIndex = -1
    end
    object dxBarButton3: TdxBarButton
      Action = actExportToScript
      Category = 0
    end
    object bsiFormatCode: TdxBarSubItem
      Caption = 'Format code'
      Category = 0
      Visible = ivAlways
      ImageIndex = 294
      ShowCaption = False
      ItemLinks = <
        item
          Item = dxBarButton9
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton8
          Visible = True
        end
      >
    end
    object dxBarButton8: TdxBarButton
      Action = actCodeFormatOptions
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actFormatCode
      Category = 0
    end
    object bsiView: TdxBarSubItem
      Caption = 'View'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton1
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton4
          Visible = True
        end
        item
          Item = dxBarButton5
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton6
          Visible = True
        end
        item
          Item = dxBarButton3
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton7
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton2
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton9
          Visible = True
        end
        item
          Item = dxBarButton8
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton10
          Visible = True
        end
      >
    end
    object dxBarButton10: TdxBarButton
      Action = actDropView
      Category = 0
    end
  end
end
