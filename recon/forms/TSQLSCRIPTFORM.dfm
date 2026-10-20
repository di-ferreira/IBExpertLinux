object SQLScriptForm: TSQLScriptForm
  Left = 552
  Top = 240
  Width = 1130
  Height = 606
  HelpContext = 1400
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
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
    Top = 53
    Width = 1114
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ResizeStyle = rsUpdate
    OnCanResize = Splitter2CanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 438
    Width = 1114
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Color = clBtnShadow
    ParentColor = False
    ResizeStyle = rsUpdate
    OnCanResize = Splitter1CanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 56
    Width = 1114
    Height = 382
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsEdit
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    Images = IBEMainForm.MenuImages
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
    object tsEdit: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 1114
      Height = 357
      HelpContext = 289
      Caption = '&Edit'
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
      object Panel2: TPanel
        Left = 0
        Top = 1
        Width = 1114
        Height = 356
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 0
        object QMRightSplitter: TdfsSplitter
          Left = 931
          Top = 0
          Width = 3
          Height = 324
          Cursor = crHSplit
          Align = alRight
          Color = clBtnShadow
          ParentColor = False
          ResizeStyle = rsUpdate
          OnCanResize = QMRightSplitterCanResize
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object QMLeftSplitter: TdfsSplitter
          Left = 9
          Top = 0
          Width = 3
          Height = 324
          Cursor = crHSplit
          Align = alLeft
          Color = clBtnShadow
          ParentColor = False
          ResizeStyle = rsUpdate
          OnCanResize = QMLeftSplitterCanResize
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object EditFm: TEditFrame
          Left = 12
          Width = 919
          Height = 324
          object lBookmark: TLabel
            Width = 46
          end
          object EditM: TSQLMemo
            Width = 919
            Height = 306
          end
          object pIncSearch: TPanel
            Top = 306
            Width = 919
          end
        end
        object TBDock1: TTBDock
          Left = 0
          Top = 324
          Width = 1114
          Height = 32
          Position = dpBottom
          object tbQueryBar: TTBToolWindow
            Left = 0
            Top = 0
            BorderStyle = bsNone
            Caption = 'Queries'
            CloseButton = False
            ClientAreaHeight = 28
            ClientAreaWidth = 1110
            DockMode = dmCannotFloat
            DragHandleStyle = dhNone
            MinClientHeight = 20
            MinClientWidth = 200
            Stretch = True
            TabOrder = 0
            OnDockChanged = tbQueryBarDockChanged
            object pQueryBar: TPanel
              Left = 0
              Top = 0
              Width = 1110
              Height = 28
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object pSBRight: TPanel
                Left = 622
                Top = 0
                Width = 488
                Height = 28
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 0
                object sbNextQuery: TSpeedButton
                  Left = 5
                  Top = 4
                  Width = 23
                  Height = 22
                  Flat = True
                  Glyph.Data = {1594 bytes}
                  NumGlyphs = 2
                  Transparent = False
                  OnMouseDown = sbPrevQueryMouseDown
                  OnMouseUp = sbPrevQueryMouseUp
                end
                object Bevel3: TBevel
                  Left = 0
                  Top = 0
                  Width = 2
                  Height = 28
                  Align = alLeft
                  Shape = bsRightLine
                  Style = bsRaised
                end
              end
              object pSBLeft: TPanel
                Left = 0
                Top = 0
                Width = 49
                Height = 28
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                object sbPrevQuery: TSpeedButton
                  Left = 3
                  Top = 4
                  Width = 23
                  Height = 22
                  AllowAllUp = True
                  Flat = True
                  Glyph.Data = {1594 bytes}
                  NumGlyphs = 2
                  Transparent = False
                  OnMouseDown = sbPrevQueryMouseDown
                  OnMouseUp = sbPrevQueryMouseUp
                end
                object Bevel2: TBevel
                  Left = 47
                  Top = 0
                  Width = 2
                  Height = 28
                  Align = alRight
                  Shape = bsRightLine
                  Style = bsRaised
                end
              end
              object Panel1: TPanel
                Left = 49
                Top = 0
                Width = 573
                Height = 28
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 2
                OnResize = Panel1Resize
                object sbQueryBar: TPanel
                  Left = 8
                  Top = 0
                  Width = 568
                  Height = 28
                  BevelOuter = bvNone
                  TabOrder = 0
                end
              end
            end
          end
        end
        object QMDockLeft: TTBDock
          Left = 0
          Top = 0
          Width = 9
          Height = 324
          Position = dpLeft
        end
        object QMDockRight: TTBDock
          Left = 934
          Top = 0
          Width = 180
          Height = 324
          Position = dpRight
          object twQueryManager: TTBToolWindow
            Left = 0
            Top = 0
            Align = alClient
            BorderStyle = bsNone
            Caption = 'Query manager'
            CloseButtonWhenDocked = True
            ClientAreaHeight = 306
            ClientAreaWidth = 176
            DockableTo = ['dpLeft', 'dpRight']
            DockPos = 0
            DragHandleStyle = dhDouble
            FullSize = True
            TabOrder = 0
            OnClose = twQueryManagerClose
            OnDockChanged = twQueryManagerDockChanged
            OnVisibleChanged = twQueryManagerVisibleChanged
            object QMSplitter: TdfsSplitter
              Left = 0
              Top = 191
              Width = 176
              Height = 3
              Cursor = crVSplit
              Align = alBottom
              Color = clBtnFace
              ParentColor = False
              ResizeStyle = rsUpdate
              Maximized = False
              Minimized = False
              ButtonCursor = crDefault
            end
            object Panel4: TPanel
              Left = 0
              Top = 194
              Width = 176
              Height = 112
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'pQMTLGlobal'
              TabOrder = 0
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 176
                Height = 18
                Align = alTop
                Alignment = taLeftJustify
                BevelOuter = bvNone
                Caption = ' Common queries'
                Color = clBtnShadow
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clCaptionText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = ['fsBold']
                ParentFont = False
                TabOrder = 0
                OnDblClick = Panel7DblClick
              end
              object QMTLGlobal: TdxTreeList
                Left = 0
                Top = 18
                Width = 176
                Height = 94
                Bands = <
                  item
                  end
                >
                DefaultLayout = True
                HeaderPanelRowCount = 1
                Align = alClient
                DragMode = dmAutomatic
                TabOrder = 1
                HideFocusRect = False
                HideSelection = False
                Images = IBEMainForm.MenuImages
                LookAndFeel = lfFlat
                Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
                OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
                TreeLineColor = clGrayText
                ShowHeader = False
                GridLineColor = clSilver
                OnDragDrop = QMTLDragDrop
                OnDragOver = QMTLDragOver
                OnEndDrag = QMTLEndDrag
                OnEnter = QMTLGlobalEnter
                OnKeyDown = QMTLKeyDown
                OnKeyUp = QMTLKeyUp
                OnMouseUp = QMTLMouseUp
                OnGetImageIndex = QMTLGetImageIndex
                OnGetSelectedIndex = QMTLGetImageIndex
                OnGetStateIndex = QMTLGetImageIndex
                OnCustomDrawCell = QMTLCustomDrawCell
                OnBeginDragNode = QMTLBeginDragNode
                OnChangeNode = QMTLChangeNode
                OnSelectedCountChange = QMTLSelectedCountChange
                object dxTreeListColumn1: TdxTreeListColumn
                  BandIndex = 0
                  RowIndex = 0
                end
              end
            end
            object pQMTL: TPanel
              Left = 0
              Top = 0
              Width = 176
              Height = 191
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pQMTL'
              Constraints.MinHeight = 35
              TabOrder = 1
              object QMTL: TdxTreeList
                Left = 0
                Top = 18
                Width = 176
                Height = 173
                Bands = <
                  item
                  end
                >
                DefaultLayout = True
                HeaderPanelRowCount = 1
                Align = alClient
                DragMode = dmAutomatic
                TabOrder = 0
                HideFocusRect = False
                HideSelection = False
                Images = IBEMainForm.MenuImages
                LookAndFeel = lfFlat
                Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
                OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
                TreeLineColor = clGrayText
                ShowHeader = False
                GridLineColor = clSilver
                OnDragDrop = QMTLDragDrop
                OnDragOver = QMTLDragOver
                OnEndDrag = QMTLEndDrag
                OnEnter = QMTLEnter
                OnKeyDown = QMTLKeyDown
                OnKeyUp = QMTLKeyUp
                OnMouseUp = QMTLMouseUp
                OnGetImageIndex = QMTLGetImageIndex
                OnGetSelectedIndex = QMTLGetImageIndex
                OnGetStateIndex = QMTLGetImageIndex
                OnCustomDrawCell = QMTLCustomDrawCell
                OnBeginDragNode = QMTLBeginDragNode
                OnChangeNode = QMTLChangeNode
                OnSelectedCountChange = QMTLSelectedCountChange
                object tlcName: TdxTreeListColumn
                  BandIndex = 0
                  RowIndex = 0
                end
              end
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 176
                Height = 18
                Align = alTop
                Alignment = taLeftJustify
                BevelOuter = bvNone
                Caption = ' This database queries'
                Color = clBtnShadow
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clCaptionText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = ['fsBold']
                ParentFont = False
                TabOrder = 1
                OnDblClick = Panel6DblClick
              end
            end
          end
        end
      end
    end
    object tsResults: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 1114
      Height = 357
      HelpContext = 820
      Caption = 'Res&ults'
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
      OnShow = tsResultsShow
    end
    object tsHistory: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 1114
      Height = 357
      HelpContext = 290
      Caption = 'Hist&ory'
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
    object tsPlan: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 1114
      Height = 357
      HelpContext = 294
      Caption = 'Plan Analyzer'
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
        Width = 1114
        Height = 356
        object Splitter1: TdfsSplitter
          Width = 1114
        end
        object Panel1: TPanel
          Width = 1114
          object EditFm: TEditFrame
            Width = 1114
            object lBookmark: TLabel
              Width = 46
            end
            object EditM: TSQLMemo
              Width = 1114
            end
            object pIncSearch: TPanel
              Width = 1114
            end
          end
        end
        object Panel2: TPanel
          Width = 1114
          Height = 215
          object Panel3: TPanel
            Width = 1114
            Height = 215
            object tl: TdxTreeList
              Width = 1114
              Height = 190
            end
            object TBDock1: TTBDock
              Width = 1114
            end
          end
        end
        object TR: TpFIBTransaction
          Timeout = 164030664
        end
      end
    end
    object tsPerformance: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 1114
      Height = 357
      HelpContext = 840
      Caption = '&Performance Analysis'
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
      object PerformanceFm: TPerformanceFrame
        Top = 1
        Width = 1114
        Height = 356
        object Pages: TIBEPageControl
          Width = 1114
          Height = 347
          NextPictureChanged = True
          PrevPictureChanged = True
          object tsGraphicalSummary: TAdvOfficePage
            Width = 1114
            Height = 322
            object Panel4: TPanel
              Width = 1114
              Height = 321
              object Panel3: TPanel
                Width = 1114
                Height = 321
                object Bevel1: TBevel
                  Width = 1114
                end
                object Chart: TChart
                  Width = 1114
                  Height = 291
                  object lbReads: TLabel
                    Width = 30
                  end
                  object lbInserts: TLabel
                    Width = 34
                  end
                  object lbSummary: TLabel
                    Width = 44
                  end
                  object RT1: THorizBarSeries
                    Marks.Font.Color = clWhite
                  end
                end
                object TBDock2: TTBDock
                  Width = 1114
                end
              end
            end
          end
          object tsSummary: TAdvOfficePage
            Width = 1114
            Height = 322
            object Panel2: TPanel
              Height = 321
            end
            object Panel5: TPanel
              Width = 919
              Height = 321
              object Panel6: TPanel
                Width = 919
              end
              object TL: TdxTreeList
                Width = 919
                Height = 300
              end
            end
          end
        end
        object Panel7: TPanel
          Width = 1081
        end
        object TBDock1: TTBDock
          Width = 1114
        end
      end
    end
    object tsLogs: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 1114
      Height = 357
      Caption = '&Logs'
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
      object LogFm: TEditFrame
        Top = 1
        Width = 1114
        Height = 356
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 1114
          Height = 338
        end
        object pIncSearch: TPanel
          Top = 338
          Width = 1114
        end
      end
    end
    object tsSearchQuery: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 1114
      Height = 357
      Caption = 'Find query'
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
      object pSearchSplitter: TdfsSplitter
        Left = 0
        Top = 162
        Width = 1114
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Color = clBtnFace
        ParentColor = False
        ResizeStyle = rsUpdate
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object pSearch: TPanel
        Left = 0
        Top = 1
        Width = 1114
        Height = 161
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pSearch'
        Constraints.MinHeight = 150
        TabOrder = 0
        object pSearchOptions: TPanel
          Left = 0
          Top = 0
          Width = 291
          Height = 161
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object eSearchString: TdxButtonEdit
            Left = 5
            Top = 4
            Width = 282
            TabOrder = 0
            OnKeyPress = eSearchStringKeyPress
            Anchors = ['akLeft', 'akTop', 'akRight']
            StyleController = IBEMainForm.MainSC
            Buttons = <
              item
                Default = True
                Glyph.Data = {06030000424d060300000000000036000000280000000f0000000f0000000100180000000000d002000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000ff00ff984054a4576992354a7e10297e1029ff00ffff00ffff00ff984054a4576992354a7e10297e1029ff00ff000000ff00ffb27180f6b8c6ef859de94f727e1029ff00ffff00ffff00ffb27180f6b8c6ef859de94f727e1029ff00ff000000ff00ffb27180f6b8c6ef859de94f727e1029ff00ffff00ffff00ffb27180f6b8c6ef859de94f727e1029ff00ff000000ff00ffb27180f6b8c6ef859de94f727e1029ff00ffff00ffff00ffb27180f6b8c6ef859de94f727e1029ff00ff000000ff00ffb27180cb9fa9a65a6b7e10297e10297e10297e1029a45769b27180cb9fa9a65a6b7e10297e1029ff00ff000000ff00ffb27180f6b8c6ef859de94f727e1029ef819a7e1029f8ccd6b27180f6b8c6ef859de94f727e1029ff00ff000000ff00ffb27180f6b8c6ef859de94f727e1029ef819a7e1029f8ccd6b27180f6b8c6ef859de94f727e1029ff00ff000000ff00ffb27180f6b8c6ef859de94f727e1029ef819a7e1029f8ccd6b27180f6b8c6ef859de94f727e1029ff00ff000000ff00ff984054a4576992354a7e10297e1029d2647d7e1029edc1cb984054a4576992354a7e10297e1029ff00ff000000ff00ffff00ffff00ffb77a88f9d2dbf4aabb7e10297e1029c3909cf7c0ccf196ab7e1029ff00ffff00ffff00ff000000ff00ffff00ffff00ffbb828ffad8e0f4acbd7e1029ff00ffbb828ffad8e0f4acbd7e1029ff00ffff00ffff00ff000000ff00ffff00ffff00ffbb828ff1cfd7e29aaa7e1029ff00ffbb828ff1cfd7e29aaa7e1029ff00ffff00ffff00ff000000ff00ffff00ffff00ff9c495caa637394394e7e1029ff00ff9c495caa637394394e7e1029ff00ffff00ffff00ff000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000}
                Kind = bkGlyph
              end
            >
            OnButtonClick = eSearchStringButtonClick
            ExistButtons = True
          end
          object cbSearchCaseSensitive: TdxCheckEdit
            Left = 2
            Top = 28
            Width = 288
            TabOrder = 1
            Caption = 'Case sensitive'
            StyleController = IBEMainForm.MainCheckSC
          end
          object cbSearchRegExp: TdxCheckEdit
            Left = 2
            Top = 49
            Width = 288
            TabOrder = 2
            Caption = 'Regular expressions'
            StyleController = IBEMainForm.MainCheckSC
          end
          object cbSearchSQLEditors: TdxCheckEdit
            Left = 1
            Top = 81
            Width = 290
            TabOrder = 3
            Caption = 'Search in SQL Editor queries'
            StyleController = IBEMainForm.MainCheckSC
            State = cbsChecked
          end
          object cbSearchHistory: TdxCheckEdit
            Left = 1
            Top = 102
            Width = 290
            TabOrder = 4
            Caption = 'Search in history of executed queries'
            StyleController = IBEMainForm.MainCheckSC
            State = cbsChecked
          end
          object cbSearchBlocks: TdxCheckEdit
            Left = 1
            Top = 123
            Width = 290
            TabOrder = 5
            Caption = 'Search in IBEBlocks/FB blocks'
            StyleController = IBEMainForm.MainCheckSC
            State = cbsChecked
          end
        end
        object Panel9: TPanel
          Left = 291
          Top = 0
          Width = 823
          Height = 161
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel9'
          TabOrder = 1
          object pSearchResults: TPanel
            Left = 0
            Top = 0
            Width = 823
            Height = 18
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = ' Search results'
            Color = clBtnShadow
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clCaptionText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = ['fsBold']
            ParentFont = False
            TabOrder = 0
            OnDblClick = Panel6DblClick
          end
          object grSearch: TdxDBGrid
            Left = 0
            Top = 18
            Width = 823
            Height = 143
            Bands = <
              item
                Alignment = taLeftJustify
                Caption = 'General'
                DisableDragging = True
                OnlyOwnColumns = True
              end
            >
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'Key'
            SummaryGroups = []
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 1
            OnDblClick = grSearchDblClick
            DataSource = dsSearch
            Filter.Criteria = {4 bytes}
            LookAndFeel = lfFlat
            OptionsBehavior = ['edgoAutoSearch', 'edgoAutoSort', 'edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoStoreToRegistry', 'edgoTabThrough', 'edgoVertThrough']
            OptionsDB = ['edgoCancelOnExit', 'edgoCanNavigation', 'edgoLoadAllRecords', 'edgoUseBookmarks']
            OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoRowSelect', 'edgoUseBitmap']
            OnCustomDrawCell = grSearchCustomDrawCell
            object gcNum: TdxDBGridColumn
              Caption = '#'
              HeaderAlignment = taRightJustify
              Visible = False
              Width = 79
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Key'
            end
            object gcStatement: TdxDBGridMemoColumn
              DisableEditor = True
              Width = 514
              BandIndex = 0
              RowIndex = 0
              HeaderMaxLineCount = 1
              FieldName = 'Statement'
              MaxDisplayLength = 1000
              WordWrap = False
            end
            object gcDatabase: TdxDBGridMemoColumn
              Width = 286
              BandIndex = 0
              RowIndex = 0
              HeaderMaxLineCount = 1
              FieldName = 'Database'
            end
          end
        end
      end
      object SearchFm: TEditFrame
        Top = 165
        Width = 1114
        Height = 192
        TabOrder = 1
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 1114
          Height = 174
        end
        object pIncSearch: TPanel
          Top = 174
          Width = 1114
        end
      end
    end
  end
  object dockTop: TTBDock
    Left = 0
    Top = 0
    Width = 1114
    Height = 9
  end
  object dockBtm: TTBDock
    Left = 0
    Top = 441
    Width = 1114
    Height = 126
    Position = dpBottom
    object twError: TTBToolWindow
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'Messages'
      CloseButtonWhenDocked = True
      ClientAreaHeight = 122
      ClientAreaWidth = 1096
      DockableTo = ['dpTop', 'dpBottom']
      DockPos = 0
      DragHandleStyle = dhDouble
      FullSize = True
      TabOrder = 0
      OnDockChanged = twErrorDockChanged
      OnVisibleChanged = twErrorDockChanged
      object MesPages: TIBEPageControl
        Left = 0
        Top = 0
        Width = 1096
        Height = 122
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
        TabOrder = 0
        TabStop = True
        NextPictureChanged = True
        PrevPictureChanged = True
        object tsServerMes: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 1096
          Height = 97
          Caption = 'Messages'
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
          object ErrorM: TdxMemo
            Tag = 1000
            Left = 0
            Top = 1
            Width = 1096
            Align = alClient
            TabOrder = 0
            ReadOnly = True
            StyleController = IBEMainForm.MainSC
            ScrollBars = ssVertical
            Height = 96
            StoredValues = 64
          end
        end
        object tsParserMes: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 1096
          Height = 97
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
          object MessagesTL: TdxTreeList
            Left = 0
            Top = 1
            Width = 1096
            Height = 96
            Bands = <
              item
              end
            >
            DefaultLayout = True
            HeaderPanelRowCount = 1
            Align = alClient
            DragMode = dmAutomatic
            TabOrder = 0
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
        end
        object tsResults2: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 1096
          Height = 97
          Caption = 'Results'
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
          OnShow = tsResults2Show
        end
        object tsColumns: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 1096
          Height = 97
          Caption = 'Query Columns'
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
          object ColumnsM: TdxMemo
            Tag = 1000
            Left = 0
            Top = 1
            Width = 1096
            Align = alClient
            TabOrder = 0
            StyleController = IBEMainForm.MainSC
            ScrollBars = ssVertical
            Height = 68
          end
          object Panel3: TPanel
            Left = 0
            Top = 69
            Width = 1096
            Height = 28
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object lSeparator: TLabel
              Left = 1
              Top = 8
              Width = 48
              Height = 13
              Caption = 'Separator'
            end
            object cbColumnTypes: TdxCheckEdit
              Left = 119
              Top = 4
              Width = 976
              TabOrder = 1
              Anchors = ['akLeft', 'akTop', 'akRight']
              Caption = 'Show column types'
              StyleController = IBEMainForm.MainCheckSC
              OnChange = cbColumnTypesChange
            end
            object eColumnsSeparator: TdxEdit
              Left = 59
              Top = 4
              Width = 38
              TabOrder = 0
              Text = ','
              StyleController = IBEMainForm.MainSC
              OnChange = eColumnsSeparatorChange
            end
          end
        end
      end
    end
  end
  object pBack: TPanel
    Left = 0
    Top = 35
    Width = 1114
    Height = 18
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Background executing...'
    Color = clBtnShadow
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = ['fsBold']
    ParentFont = False
    TabOrder = 7
    Visible = False
  end
  object Actions: TActionList
    Images = IBEMainForm.MenuImages
    OnExecute = ActionsExecute
    OnUpdate = ActionsUpdate
    Left = 312
    Top = 155
    object aCommitTransaction: TAction
      Caption = 'Commit Transaction'
      Enabled = False
      Hint = 'Commit Transaction'
      ImageIndex = 36
      ShortCut = 49219
      OnExecute = aCommitTransactionExecute
      OnUpdate = aCommitTransactionUpdate
    end
    object aRollbackTransaction: TAction
      Caption = 'Rollback Transaction'
      Enabled = False
      Hint = 'Rollback Transaction'
      ImageIndex = 38
      ShortCut = 49234
      OnExecute = aRollbackTransactionExecute
      OnUpdate = aRollbackTransactionUpdate
    end
    object aRunQuery: TAction
      Caption = 'Execute'
      ImageIndex = 56
      ShortCut = 120
      OnExecute = aRunQueryExecute
      OnUpdate = aRunQueryUpdate
    end
    object aPrepareQuery: TAction
      Caption = 'Prepare Query'
      Hint = 'Prepare Query'
      ImageIndex = 39
      ShortCut = 16504
      OnExecute = aPrepareQueryExecute
      OnUpdate = aPrepareQueryUpdate
    end
    object aVisualBuilder: TAction
      Caption = 'Visual Query Builder'
      Hint = 'Visual Query Builder'
      ImageIndex = 118
      ShortCut = 49218
      OnExecute = aVisualBuilderExecute
    end
    object aNewQuery: TAction
      Caption = 'New Query'
      Hint = 'New Query'
      ImageIndex = 5
      ShortCut = 16462
      OnExecute = aNewQueryExecute
    end
    object aDeleteQuery: TAction
      Caption = 'Delete Query'
      Hint = 'Delete Current Query'
      ImageIndex = 45
      ShortCut = 16452
      OnExecute = aDeleteQueryExecute
    end
    object aClearHistory: TAction
      Caption = 'Delete All'
      Hint = 'Clear All History'
      ImageIndex = 46
      ShortCut = 24644
      OnExecute = aClearHistoryExecute
    end
    object aExportData: TAction
      Caption = 'Export Data'
      Hint = 'Export Data'
      ImageIndex = 73
      ShortCut = 16453
      OnExecute = aExportDataExecute
    end
    object aRenameTab: TAction
      Caption = 'Rename Query'
      Hint = 'Rename Tab'
      ShortCut = 16497
      OnExecute = aRenameTabExecute
    end
    object aSelectDB: TAction
      Caption = 'Select Database'
      Hint = 'Select Database'
      ShortCut = 49239
    end
    object actFindText: TAction
      Caption = 'Find Text'
      Hint = 'Find Text'
      ImageIndex = 66
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actPrevQuery: TAction
      Caption = 'Previous Query'
      ImageIndex = 90
      OnExecute = actPrevQueryExecute
    end
    object actNextQuery: TAction
      Caption = 'Next Query'
      ImageIndex = 91
      OnExecute = actNextQueryExecute
    end
    object actExportAsInsert: TAction
      Caption = 'Export data into script'
      ImageIndex = 74
      OnExecute = actExportAsInsertExecute
    end
    object actCreateView: TAction
      Caption = 'Create View'
      Hint = 'Create View from SELECT'
      ImageIndex = 106
      OnExecute = actCreateViewExecute
    end
    object actCreateProcedure: TAction
      Caption = 'Create Procedure'
      Hint = 'Create Procedure from SELECT'
      ImageIndex = 105
      OnExecute = actCreateProcedureExecute
    end
    object actUseCurrentConnect: TAction
      Caption = 'Use current connect'
    end
    object actRunQueryFA: TAction
      Caption = 'Execute and fetch all'
      Hint = 'Execute and fetch all'
      ImageIndex = 144
      ShortCut = 8312
      OnExecute = actRunQueryFAExecute
      OnUpdate = actRunQueryFAUpdate
    end
    object actGetRecordCount: TAction
      Caption = 'Count records'
      Hint = 'Get record count'
      ShortCut = 8309
      OnExecute = actGetRecordCountExecute
      OnUpdate = actGetRecordCountUpdate
    end
    object actClearQuery: TAction
      Caption = 'Clear current query'
      Hint = 'Clear current query'
      ImageIndex = 201
      OnExecute = actClearQueryExecute
    end
    object actExecuteCurrent: TAction
      Caption = 'Execute Current'
      ShortCut = 24696
      OnExecute = actExecuteCurrentExecute
    end
    object actRunBackground: TAction
      Caption = 'Background Execute...'
      Hint = 'Run in Background'
      ImageIndex = 228
      OnExecute = actRunBackgroundExecute
      OnUpdate = actRunBackgroundUpdate
    end
    object actAbortExecution: TAction
      Caption = 'Abort execution'
      ImageIndex = 147
      OnExecute = actAbortExecutionExecute
      OnUpdate = actAbortExecutionUpdate
    end
    object actHideErrorBar: TAction
      Caption = 'actHideErrorBar'
      ShortCut = 27
      OnExecute = actHideErrorBarExecute
    end
    object actDebug: TAction
      Caption = 'Debug'
      Hint = 'Debug'
      ImageIndex = 55
      OnExecute = actDebugExecute
    end
    object actNextQueryTab: TAction
      Caption = 'actNextQueryTab'
      ShortCut = 49191
      OnExecute = actNextQueryTabExecute
      OnUpdate = actNextQueryTabUpdate
    end
    object actPrevQueryTab: TAction
      Caption = 'actPrevQueryTab'
      ShortCut = 49189
      OnExecute = actPrevQueryTabExecute
      OnUpdate = actNextQueryTabUpdate
    end
    object actFirstQueryTab: TAction
      Caption = 'actFirstQueryTab'
      ShortCut = 49190
      OnExecute = actFirstQueryTabExecute
      OnUpdate = actNextQueryTabUpdate
    end
    object actLastQueryTab: TAction
      Caption = 'actLastQueryTab'
      ShortCut = 49192
      OnExecute = actLastQueryTabExecute
      OnUpdate = actNextQueryTabUpdate
    end
    object actManageQueries: TAction
      Caption = 'Manage queries'
      Hint = 'Manage queries'
      ImageIndex = 95
      OnExecute = actManageQueriesExecute
      OnUpdate = actManageQueriesUpdate
    end
    object actFormatQuery: TAction
      Caption = 'Format query text'
      Hint = 'Format query text'
      ImageIndex = 294
      ShortCut = 32838
      OnExecute = actFormatQueryExecute
    end
    object actLockQuery: TAction
      Caption = 'Lock query'
      Hint = 'Lock query'
      ImageIndex = 297
      OnExecute = actLockQueryExecute
      OnUpdate = actLockQueryUpdate
    end
    object actNewQuerySet: TAction
      Category = 'QueryManager'
      Caption = 'New query set'
      ImageIndex = 264
      OnExecute = actNewQuerySetExecute
    end
    object actDeleteQuerySet: TAction
      Category = 'QueryManager'
      Caption = 'Delete query set'
      OnExecute = actDeleteQuerySetExecute
      OnUpdate = actDeleteQuerySetUpdate
    end
    object actRenameQuerySet: TAction
      Category = 'QueryManager'
      Caption = 'Rename query/set'
      OnExecute = actRenameQuerySetExecute
      OnUpdate = actRenameQuerySetUpdate
    end
    object actLockQuery2: TAction
      Category = 'QueryManager'
      Caption = 'Lock query'
      ImageIndex = 297
    end
    object actCodeFormatOptions: TAction
      Caption = 'Code formatting options...'
      OnExecute = actCodeFormatOptionsExecute
    end
    object actSearchQuery: TAction
      Category = 'Search'
      Caption = 'Search'
    end
    object actSaveQueries: TAction
      Category = 'QueryManager'
      Caption = 'Save queries/sets...'
      ImageIndex = 29
      OnExecute = actSaveQueriesExecute
      OnUpdate = actSaveQueriesUpdate
    end
    object actLoadQueries: TAction
      Category = 'QueryManager'
      Caption = 'Load queries/sets...'
      ImageIndex = 41
      OnExecute = actLoadQueriesExecute
      OnUpdate = actLoadQueriesUpdate
    end
  end
  object Tr: TpFIBTransaction
    Active = False
    Timeout = 284096852
    TimeoutAction = TARollback
    OnBeforeGenerateTPB = TrBeforeGenerateTPB
    BeforeEnd = TrBeforeEnd
    Left = 100
    Top = 320
  end
  object Query: TFIBQuery
    GoToFirstRecordOnExecute = False
    ParamCheck = True
    Transaction = Tr
    Left = 68
    Top = 320
  end
  object TempScript: TpFIBScript
    ConsoleMode = False
    UseCurrentConnect = False
    AbortOnError = False
    RollbackOnAbort = False
    Left = 468
    Top = 173
  end
  object bm: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        Caption = 'SQL Editor'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 374
        FloatTop = 321
        FloatClientWidth = 100
        FloatClientHeight = 20
        ItemLinks = None
        Name = 'SQL Editor'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default', 'QueryManager']
    Categories.ItemsVisibles = [2, 2]
    Categories.Visibles = [True, True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    Style = bmsFlat
    UseSystemFont = True
    Left = 420
    Top = 77
    DockControlHeights = [0, 0, 26, 0]
    object bliDatabases: TdxBarSubItem
      Caption = '(No active connection)'
      Category = 0
      Visible = ivAlways
      ImageIndex = 0
      OnClick = bliDatabasesClick
      ItemLinks = []
    end
    object dxBarButton5: TdxBarButton
      Action = actPrevQuery
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actNextQuery
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = aRunQuery
      Category = 0
      DropDownMenu = pm
      UnclickAfterDoing = False
    end
    object dxBarButton9: TdxBarButton
      Action = aPrepareQuery
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = aVisualBuilder
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = aNewQuery
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = aDeleteQuery
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = aClearHistory
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = aCommitTransaction
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = aRollbackTransaction
      Category = 0
    end
    object dxBarButton17: TdxBarButton
      Action = actCreateView
      Category = 0
    end
    object dxBarButton18: TdxBarButton
      Action = actCreateProcedure
      Category = 0
    end
    object dxBarButton19: TdxBarButton
      Action = actExportAsInsert
      Category = 0
    end
    object dxBarButton20: TdxBarButton
      Action = aExportData
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actRunQueryFA
      Category = 0
      UnclickAfterDoing = False
    end
    object bbCount: TdxBarButton
      Action = actGetRecordCount
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton2: TdxBarButton
      Action = actClearQuery
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actRunBackground
      Category = 0
      UnclickAfterDoing = False
    end
    object bbAbortExecution: TdxBarButton
      Action = actAbortExecution
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = aRenameTab
      Category = 0
    end
    object bsSQLEditor: TdxBarSubItem
      Caption = 'SQL Editor'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton5
          Visible = True
        end
        item
          Item = dxBarButton6
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton8
          Visible = True
        end
        item
          Item = dxBarButton1
          Visible = True
        end
        item
          Item = dxBarButton9
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton3
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbAbortExecution
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton2
          Visible = True
        end
        item
          Item = dxBarButton11
          Visible = True
        end
        item
          Item = dxBarButton12
          Visible = True
        end
        item
          Item = dxBarButton13
          Visible = True
        end
        item
          BeginGroup = True
          Item = bsiFormatCode
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton14
          Visible = True
        end
        item
          Item = dxBarButton15
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton20
          Visible = True
        end
        item
          Item = dxBarButton19
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton17
          Visible = True
        end
        item
          Item = dxBarButton18
          Visible = True
        end
      >
    end
    object cbTIL: TdxBarListItem
      Caption = 'TIL: '
      Category = 0
      Visible = ivAlways
      OnClick = cbTILClick
      ItemIndex = 1
      Items.Strings = ['Snapshot, RW', 'Snapshot, RO', 'Read Commited, RW', 'Read Commited, RO', 'Table Stability, RO', 'Table Stability, RW']
      ShowCheck = True
      ShowNumbers = False
    end
    object dxBarButton7: TdxBarButton
      Action = actDebug
      Category = 0
    end
    object bbQueryManager: TdxBarButton
      Action = actManageQueries
      Category = 0
      UnclickAfterDoing = False
    end
    object bsiFormatCode: TdxBarButton
      Action = actFormatQuery
      Category = 0
      UnclickAfterDoing = False
    end
    object bbLockQuery: TdxBarButton
      Action = actLockQuery
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton16: TdxBarButton
      Action = actNewQuerySet
      Category = 1
    end
    object dxBarButton21: TdxBarButton
      Action = actDeleteQuerySet
      Category = 1
    end
    object dxBarButton22: TdxBarButton
      Action = aRenameTab
      Category = 1
    end
    object bsiFormat: TdxBarSubItem
      Caption = 'Format'
      Category = 0
      Visible = ivAlways
      ImageIndex = 294
      ShowCaption = False
      ItemLinks = <
        item
          Item = bsiFormatCode
          Visible = True
        end
        item
          Item = dxBarButton23
          Visible = True
        end
      >
    end
    object dxBarButton23: TdxBarButton
      Action = actCodeFormatOptions
      Category = 0
    end
    object dxBarButton24: TdxBarButton
      Action = actLoadQueries
      Category = 1
    end
    object dxBarButton25: TdxBarButton
      Action = actSaveQueries
      Category = 1
    end
  end
  object qCount: TFIBQuery
    ParamCheck = True
    Transaction = Tr
    Left = 68
    Top = 288
  end
  object pm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton3
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 32
    Top = 261
  end
  object ThreadTimer: TTimer
    Enabled = False
    OnTimer = ThreadTimerTimer
    Left = 400
    Top = 221
  end
  object qpm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton11
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton12
        Visible = True
      end
      item
        Item = dxBarButton13
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton4
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbLockQuery
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = qpmPopup
    Left = 32
    Top = 287
  end
  object SBTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = SBTimerTimer
    Left = 400
    Top = 263
  end
  object QMChangeTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = QMChangeTimerTimer
    Left = 864
    Top = 128
  end
  object qmpm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton16
        Visible = True
      end
      item
        Item = dxBarButton21
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton11
        Visible = True
      end
      item
        Item = dxBarButton12
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton22
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton24
        Visible = True
      end
      item
        Item = dxBarButton25
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = qmpmPopup
    Left = 32
    Top = 319
  end
  object dsSearch: TDataSource
    DataSet = mtSearch
    OnDataChange = dsSearchDataChange
    Left = 200
    Top = 280
  end
  object mtSearch: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    Left = 232
    Top = 280
    object mtSearchKey: TIntegerField
      FieldName = 'Key'
    end
    object mtSearchStatement: TMemoField
      FieldName = 'Statement'
      BlobType = ftMemo
    end
    object mtSearchFullStmt: TMemoField
      FieldName = 'FullStmt'
      BlobType = ftMemo
    end
    object mtSearchIsUTF8: TBooleanField
      FieldName = 'IsUTF8'
    end
    object mtSearchDatabase: TMemoField
      FieldName = 'Database'
      BlobType = ftMemo
    end
    object mtSearchQueryID: TIntegerField
      FieldName = 'QueryID'
    end
    object mtSearchQuerySetID: TIntegerField
      FieldName = 'QuerySetID'
    end
    object mtSearchDatabaseID: TIntegerField
      FieldName = 'DatabaseID'
    end
  end
  object QOpenD: TExtOpenDialog
    DefaultExt = 'XML'
    Filter = 'XML Files (*.xml)|*.xml|All Files (*.*)|*.*'
    Options = ['ofReadOnly', 'ofHideReadOnly', 'ofFileMustExist', 'ofEnableSizing']
    Title = 'Load queries/sets from'
    Left = 976
    Top = 150
  end
  object QSaveD: TExtSaveDialog
    DefaultExt = 'XML'
    Filter = 'XML Files (*.xml)|*.xml|All Files (*.*)|*.*'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofPathMustExist', 'ofEnableSizing']
    Title = 'Save queries/sets to'
    Left = 1008
    Top = 150
  end
end
