object ProcViewForm: TProcViewForm
  Left = 388
  Top = 176
  Width = 800
  Height = 562
  HelpContext = 1200
  Caption = 'Stored Procedure'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {1078 bytes}
  KeyPreview = True
  OldCreateOrder = True
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 52
    Width = 784
    Height = 474
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Splitter4: TdfsSplitter
      Left = 0
      Top = 9
      Width = 784
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ResizeStyle = rsUpdate
      OnCanResize = Splitter4CanResize
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object Pages: TIBEPageControl
      Left = 0
      Top = 12
      Width = 784
      Height = 462
      AdvOfficePagerStyler = IBEMainForm.PCStyler
      Align = alClient
      ActivePage = tsEdit
      AntiAlias = aaNone
      ButtonSettings.PageListButtonHint = 'Page List'
      DockSite = True
      Glow = False
      PageMargin = 0
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
        Width = 784
        Height = 437
        Hint = 'Edit (Alt+E)'
        HelpContext = 710
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
        TabAppearance.BackGround.ColorTo = 14537936
        TabAppearance.BackGround.Direction = gdHorizontal
        object Splitter3: TdfsSplitter
          Left = 2
          Top = 338
          Width = 780
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ResizeStyle = rsUpdate
          OnCanResize = Splitter3CanResize
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object ParamsSplitter: TdfsSplitter
          Left = 2
          Top = 150
          Width = 780
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ResizeStyle = rsUpdate
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object EditFm: TEditFrame
          Left = 2
          Top = 153
          Width = 780
          Height = 185
          object lBookmark: TLabel
            Width = 46
          end
          object EditM: TSQLMemo
            Width = 780
            Height = 167
            OnDragDrop = EditFmEditMDragDrop
            OnDragOver = EditFmEditMDragOver
          end
          object pIncSearch: TPanel
            Top = 167
            Width = 780
          end
          object EditActions: TActionList
            object actProcVarsCI: TAction
              OnExecute = EditFmactProcVarsCIExecute
            end
          end
          object OpenD: TExtOpenDialog
            OnClose = EditFmOpenDClose
            Filter = 'Stored Procedure (*.sp)|*.sp|SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|All Files (*.*)|*.*'
          end
          object SaveD: TExtSaveDialog
            OnClose = EditFmSaveDClose
            Filter = 'Stored Procedure (*.sp)|*.sp|SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|All Files (*.*)|*.*'
          end
        end
        object DockBottom: TTBDock
          Left = 2
          Top = 341
          Width = 780
          Height = 94
          Position = dpBottom
          object twError: TTBToolWindow
            Left = 0
            Top = 0
            BorderStyle = bsNone
            Caption = 'Messages'
            CloseButtonWhenDocked = True
            ClientAreaHeight = 90
            ClientAreaWidth = 762
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
              Width = 762
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
                Width = 762
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
                OnKeyPress = MessagesTLKeyPress
                OnKeyUp = MessagesTLKeyUp
                OnMouseUp = MessagesTLMouseUp
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
                Width = 762
                Align = alClient
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ReadOnly = True
                ScrollBars = ssVertical
                Height = 90
                StoredValues = 64
              end
              object MesPages: TIBEPageControl
                Left = 0
                Top = 0
                Width = 762
                Height = 90
                AdvOfficePagerStyler = IBEMainForm.PCStyler
                Align = alClient
                ActivePage = tsServerMes
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
                TabOrder = 1
                TabStop = True
                NextPictureChanged = True
                PrevPictureChanged = True
                object tsServerMes: TAdvOfficePage
                  Left = 0
                  Top = 24
                  Width = 762
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
                  TabAppearance.BackGround.ColorTo = 14537936
                  TabAppearance.BackGround.Direction = gdHorizontal
                end
                object tsParserMes: TAdvOfficePage
                  Left = 0
                  Top = 24
                  Width = 762
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
                  TabAppearance.BackGround.ColorTo = 14537936
                  TabAppearance.BackGround.Direction = gdHorizontal
                end
              end
            end
          end
        end
        object ParamsFm: TParamsFrame
          Left = 2
          Top = 2
          Width = 780
          Height = 148
          Align = alTop
          TabOrder = 2
          object Bevel1: TBevel
            Top = 146
            Width = 780
          end
          object pCursors: TPanel
            Width = 780
            Height = 96
            object Splitter3: TdfsSplitter
              Height = 96
            end
            object CTL: TdxTreeList
              Height = 96
            end
            object CursorFm: TEditFrame
              Width = 633
              Height = 96
              object lBookmark: TLabel
                Width = 46
              end
              object EditM: TSQLMemo
                Width = 633
                Height = 78
              end
              object pIncSearch: TPanel
                Top = 78
                Width = 633
              end
              object EditActions: TActionList
                Images = IBEMainForm.MenuImages
              end
            end
          end
          object GR: TdxDBGrid
            Width = 780
            Height = 96
            OnMouseUp = ParamsFmGRMouseUp
            Filter.Criteria = {4 bytes}
          end
          object Tabs: TTabControl
            Top = 120
            Width = 780
            Tabs.Strings = ['&Input Parameters', '&Output Parameters', '&Variables']
          end
          object Panel1: TPanel
            Top = 114
            Width = 780
          end
          object Panel3: TPanel
            Width = 780
          end
          object SelectPages: TIBEPageControl
            NextPictureChanged = True
            PrevPictureChanged = True
          end
          object ParamsActions: TActionList
            object actRemoveParam: TAction
              OnExecute = ParamsFmactRemoveParamExecute
            end
            object actAppendParam: TAction
              OnExecute = ParamsFmactAppendParamExecute
            end
            object actMoveParamUp: TAction
              OnExecute = ParamsFmactMoveParamUpExecute
            end
          end
        end
      end
      object tsResults: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 784
        Height = 437
        HelpContext = 720
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
        TabAppearance.BackGround.ColorTo = 14537936
        TabAppearance.BackGround.Direction = gdHorizontal
      end
      object tsDescription: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 784
        Height = 437
        HelpContext = 740
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
        TabAppearance.BackGround.ColorTo = 14537936
        TabAppearance.BackGround.Direction = gdHorizontal
        object DescFm: TEditFrame
          Left = 2
          Top = 2
          Width = 780
          Height = 433
          object lBookmark: TLabel
            Width = 46
          end
          object EditM: TSQLMemo
            Width = 780
            Height = 415
            OnExit = DescFmEditMExit
          end
          object pIncSearch: TPanel
            Top = 415
            Width = 780
          end
        end
      end
      object tsDependencies: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 784
        Height = 437
        HelpContext = 750
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
        TabAppearance.BackGround.ColorTo = 14537936
        TabAppearance.BackGround.Direction = gdHorizontal
        object DepP: TPanel
          Left = 2
          Top = 2
          Width = 780
          Height = 433
          Align = alClient
          BevelOuter = bvNone
          Color = clWindow
          TabOrder = 0
        end
      end
      object tsOperations: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 784
        Height = 437
        HelpContext = 760
        Caption = 'Operations / Index &Using'
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
      end
      object tsParameters: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 784
        Height = 437
        HelpContext = 770
        Caption = 'Para&meters'
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
        object Splitter2: TdfsSplitter
          Left = 2
          Top = 258
          Width = 780
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ResizeStyle = rsUpdate
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object ParametersP: TPanel
          Left = 2
          Top = 2
          Width = 780
          Height = 256
          Align = alTop
          BevelOuter = bvNone
          Caption = 'ParametersP'
          TabOrder = 0
          object ProcParamsTL: TdxTreeList
            Left = 0
            Top = 0
            Width = 780
            Height = 256
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
            OnEnter = ProcParamsTLEnter
            OnCustomDrawCell = ProcParamsTLCustomDrawCell
            OnChangeNode = ProcParamsTLChangeNode
            object tlcName: TdxTreeListColumn
              Caption = 'Name'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Width = 149
              BandIndex = 0
              RowIndex = 0
            end
            object tlcProcType: TdxTreeListColumn
              Caption = 'Type'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Width = 135
              BandIndex = 0
              RowIndex = 0
            end
            object tlcScope: TdxTreeListColumn
              Caption = 'Input/Output'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Width = 86
              BandIndex = 0
              RowIndex = 0
            end
            object tlcDescription: TdxTreeListColumn
              Caption = 'Description'
              Width = 420
              BandIndex = 0
              RowIndex = 0
            end
          end
        end
        object ParamDescP: TPanel
          Left = 2
          Top = 261
          Width = 780
          Height = 174
          Align = alClient
          BevelOuter = bvNone
          Caption = 'ParamDescP'
          TabOrder = 1
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 780
            Height = 18
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = ' Parameter Description'
            Color = clBtnShadow
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clCaptionText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object ParamDescFm: TEditFrame
            Top = 18
            Width = 780
            Height = 156
            TabOrder = 1
            object lBookmark: TLabel
              Width = 46
            end
            object EditM: TSQLMemo
              Width = 780
              Height = 138
              OnExit = ParamDescFmEditMExit
            end
            object pIncSearch: TPanel
              Top = 138
              Width = 780
            end
          end
        end
      end
      object tsPerformance: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 784
        Height = 437
        Caption = 'Performance &Analysis'
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
        object PerformanceFm: TPerformanceFrame
          Left = 2
          Top = 2
          Width = 780
          Height = 433
          object Pages: TIBEPageControl
            Width = 780
            Height = 424
            NextPictureChanged = True
            PrevPictureChanged = True
            object tsGraphicalSummary: TAdvOfficePage
              Width = 780
              Height = 399
              object Panel4: TPanel
                Width = 776
                Height = 395
                object Panel3: TPanel
                  Width = 776
                  Height = 395
                  object Bevel1: TBevel
                    Width = 776
                  end
                  object Chart: TChart
                    Width = 776
                    Height = 365
                    object lbReads: TLabel
                      Width = 30
                    end
                    object lbInserts: TLabel
                      Width = 34
                    end
                    object lbSummary: TLabel
                      Width = 44
                    end
                  end
                  object TBDock2: TTBDock
                    Width = 776
                  end
                end
              end
            end
            object tsSummary: TAdvOfficePage
              Width = 780
              Height = 399
              object Panel2: TPanel
                Height = 395
                object Label5: TLabel
                  Width = 31
                end
              end
              object Panel5: TPanel
                Width = 581
                Height = 395
                object Panel6: TPanel
                  Width = 581
                end
                object TL: TdxTreeList
                  Width = 581
                  Height = 374
                end
              end
            end
          end
          object Panel7: TPanel
            Width = 611
          end
          object TBDock1: TTBDock
            Width = 780
          end
        end
      end
      object tsPlan: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 784
        Height = 437
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
        TabAppearance.BackGround.ColorTo = 14537936
        TabAppearance.BackGround.Direction = gdHorizontal
      end
      object tsScript: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 784
        Height = 437
        Caption = 'Script'
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
        object ScriptFm: TEditFrame
          Left = 2
          Top = 2
          Width = 780
          Height = 433
          object lBookmark: TLabel
            Width = 46
          end
          object EditM: TSQLMemo
            Width = 780
            Height = 415
          end
          object pIncSearch: TPanel
            Top = 415
            Width = 780
          end
        end
      end
      object tsGrants: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 784
        Height = 437
        Caption = '&Grants'
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
      end
      object tsVerHistory: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 784
        Height = 437
        Caption = '&Version History'
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
        object VerPages: TIBEPageControl
          Left = 2
          Top = 2
          Width = 780
          Height = 433
          AdvOfficePagerStyler = IBEMainForm.PCStyler
          Align = alClient
          ActivePage = tsVersions
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
          OnChange = VerPagesChange
          TabOrder = 0
          TabStop = True
          NextPictureChanged = True
          PrevPictureChanged = True
          object tsVersions: TAdvOfficePage
            Left = 0
            Top = 24
            Width = 780
            Height = 408
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
            TabAppearance.BackGround.ColorTo = 14537936
            TabAppearance.BackGround.Direction = gdHorizontal
            object VerHisP: TPanel
              Left = 2
              Top = 2
              Width = 776
              Height = 404
              Align = alClient
              BevelOuter = bvNone
              Color = clWindow
              TabOrder = 0
            end
          end
          object tsCompareVer: TAdvOfficePage
            Left = 0
            Top = 24
            Width = 780
            Height = 408
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
            TabAppearance.BackGround.ColorTo = 14537936
            TabAppearance.BackGround.Direction = gdHorizontal
            object TDFm: TTextDiffFrame
              Left = 2
              Top = 2
              Width = 776
              Height = 404
              object Splitter1: TdfsSplitter
                Height = 302
              end
              object Splitter2: TdfsSplitter
                Top = 302
                Width = 776
              end
              object pnlLeft: TPanel
                Height = 302
                object Panel1: TPanel
                  Height = 24
                  object cbVer1: TdxPickEdit
                    OnChange = TDFmcbVer1Change
                  end
                end
              end
              object pnlRight: TPanel
                Width = 457
                Height = 302
                object pVer2: TPanel
                  Width = 457
                  object cbVer2: TdxPickEdit
                    Width = 340
                    OnChange = TDFmcbVer2Change
                  end
                end
              end
              object pnlMerge: TPanel
                Top = 306
                Width = 776
              end
              object StatusBar1: TStatusBar
                Top = 385
                Width = 776
              end
            end
          end
        end
      end
      object tsCompare: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 784
        Height = 437
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
        TabAppearance.BackGround.ColorTo = 14537936
        TabAppearance.BackGround.Direction = gdHorizontal
      end
      object tsTodo: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 784
        Height = 437
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
        TabAppearance.BackGround.ColorTo = 14537936
        TabAppearance.BackGround.Direction = gdHorizontal
      end
    end
    object dockTop: TTBDock
      Left = 0
      Top = 0
      Width = 784
      Height = 9
    end
  end
  object ChangeTimer: TTimer
    Enabled = False
    Interval = 500
    Left = 356
    Top = 127
  end
  object ActionList: TActionList
    Images = IBEMainForm.MenuImages
    OnExecute = ActionListExecute
    OnUpdate = ActionListUpdate
    Left = 363
    Top = 283
    object aCompile: TAction
      Caption = 'Compile procedure'
      Hint = 'Compile Procedure'
      ImageIndex = 28
      ShortCut = 16504
      OnExecute = aCompileExecute
    end
    object aExecuteProcedure: TAction
      Caption = 'Execute procedure'
      Hint = 'Execute procedure'
      ImageIndex = 56
      ShortCut = 120
      OnExecute = aExecuteProcedureExecute
    end
    object aPrintProcedure: TAction
      Caption = 'Print procedure report'
      Hint = 'Print'
      ImageIndex = 53
      OnExecute = aPrintProcedureExecute
    end
    object aCommitTransaction: TAction
      Caption = 'Commit transaction'
      Hint = 'Commit Transaction'
      ImageIndex = 36
      ShortCut = 49219
      OnExecute = aCommitTransactionExecute
    end
    object aRollbackTransaction: TAction
      Caption = 'Rollback transaction'
      Hint = 'Rollback Transaction'
      ImageIndex = 38
      ShortCut = 49234
      OnExecute = aRollbackTransactionExecute
    end
    object aExportData: TAction
      Caption = 'Export Data'
      Enabled = False
      Hint = 'Export Data'
      ImageIndex = 73
      ShortCut = 16453
      OnExecute = aExportDataExecute
    end
    object aQuickLoad: TAction
      Caption = 'Quick Load'
      ShortCut = 24652
      OnExecute = aQuickLoadExecute
    end
    object aQuickSave: TAction
      Caption = 'Quick Save'
      ShortCut = 24659
      OnExecute = aQuickSaveExecute
    end
    object aRefresh: TAction
      Caption = 'aRefresh'
      OnExecute = PagesChange
    end
    object aDebug: TAction
      Caption = 'Debug procedure'
      Hint = 'Debug Procedure'
      ImageIndex = 55
      ShortCut = 119
      OnExecute = aDebugExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actInputParams: TAction
      Caption = 'actInputParams'
      ShortCut = 32817
      OnExecute = actInputParamsExecute
    end
    object actOutputParams: TAction
      Caption = 'actOutputParams'
      ShortCut = 32818
      OnExecute = actOutputParamsExecute
    end
    object actLocalVars: TAction
      Caption = 'actLocalVars'
      ShortCut = 32819
      OnExecute = actLocalVarsExecute
    end
    object actToggleParams: TAction
      Caption = 'Show parameters'
      ShortCut = 119
      OnExecute = actToggleParamsExecute
    end
    object actLazyMode: TAction
      Caption = 'Lazy mode on/off'
      Hint = 'Lazy mode on/off'
      ImageIndex = 117
      OnExecute = actLazyModeExecute
    end
    object actAutoGrant: TAction
      Caption = 'Autogrant privileges'
      Hint = 'Autogrant'
      ImageIndex = 119
      ShortCut = 16503
      OnExecute = actAutoGrantExecute
    end
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16505
    end
    object actExecuteFetchAll: TAction
      Caption = 'Execute and fetch all'
      Hint = 'Execute and fetch all'
      ImageIndex = 144
      ShortCut = 8312
      OnExecute = actExecuteFetchAllExecute
    end
    object actCommentBody: TAction
      Caption = 'Comment Procedure Body'
      Hint = 'Comment Procedure Body'
      ImageIndex = 205
      OnExecute = actCommentBodyExecute
      OnUpdate = actCommentBodyUpdate
    end
    object actUncommentBody: TAction
      Caption = 'Uncomment Procedure Body'
      Hint = 'Uncomment Procedure Body'
      ImageIndex = 206
      OnExecute = actUncommentBodyExecute
      OnUpdate = actUncommentBodyUpdate
    end
    object actRemoveDeclaration: TAction
      Caption = 'Remove declaration'
      OnExecute = actRemoveDeclarationExecute
    end
    object actFormatProcedure: TAction
      Caption = 'Format procedure code'
      Hint = 'Format procedure code'
      ImageIndex = 294
      ShortCut = 32838
      OnExecute = actFormatProcedureExecute
    end
    object actCodeFormatOptions: TAction
      Caption = 'Code formatting options...'
      OnExecute = actCodeFormatOptionsExecute
    end
    object actDropProcedure: TAction
      Caption = 'Drop procedure'
      OnExecute = actDropProcedureExecute
      OnUpdate = actDropProcedureUpdate
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
    Left = 492
    Top = 168
  end
  object Query: TFIBQuery
    GoToFirstRecordOnExecute = False
    ParamCheck = True
    Transaction = Tr
    Left = 492
    Top = 136
  end
  object Tr: TFIBTransaction
    Active = False
    Timeout = 199140960
    TimeoutAction = TARollback
    Left = 524
    Top = 136
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
        Caption = 'Procedure'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Custom 1'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        Caption = 'Parameters'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 26
        DockingStyle = dsTop
        FloatLeft = 383
        FloatTop = 320
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'tbLazy'
        NotDocking = ['dsNone']
        OneOnRow = True
        Row = 1
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default', 'Parameters actions', 'Variables', 'Procedure name', 'Format']
    Categories.ItemsVisibles = [2, 2, 2, 2, 2]
    Categories.Visibles = [True, True, True, True, True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    Style = bmsFlat
    UseSystemFont = True
    Left = 264
    Top = 288
    DockControlHeights = [0, 0, 52, 0]
    object dxBarButton3: TdxBarButton
      Action = aCompile
      Category = 0
    end
    object bbLazy: TdxBarButton
      Action = actLazyMode
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton5: TdxBarButton
      Action = aExecuteProcedure
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = aCommitTransaction
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = aRollbackTransaction
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = aExportData
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = aPrintProcedure
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = aDebug
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = actAutoGrant
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = ParamsFm.actInsertParam
      Category = 1
    end
    object dxBarButton14: TdxBarButton
      Action = ParamsFm.actAppendParam
      Category = 1
    end
    object dxBarButton15: TdxBarButton
      Action = ParamsFm.actRemoveParam
      Category = 1
    end
    object dxBarButton16: TdxBarButton
      Action = ParamsFm.actMoveParamUp
      Category = 1
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 3
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 3
      Hint = 'New Item'
      Visible = ivAlways
    end
    object cbProcNames: TdxBarCombo
      Align = iaClient
      Caption = 'Proce&dure:'
      Category = 3
      Hint = 'Procedure name'
      Visible = ivAlways
      OnChange = cbProcNamesChange
      OnCurChange = cbProcNamesCurChange
      OnExit = cbProcNamesCurChange
      MaxLength = 31
      Width = 100
      OnDropDown = cbProcNamesDropDown
      DropDownCount = 20
      Sorted = True
      ItemIndex = -1
    end
    object dxBarButton2: TdxBarButton
      Action = ParamsFm.actMoveParamDown
      Category = 1
    end
    object dxBarButton6: TdxBarButton
      Action = actExecuteFetchAll
      Category = 0
    end
    object dxBarButton17: TdxBarButton
      Action = actCommentBody
      Category = 0
      UnclickAfterDoing = False
    end
    object biUnformat: TdxBarButton
      Action = actUncommentBody
      Category = 0
      UnclickAfterDoing = False
    end
    object bsiProcedure: TdxBarSubItem
      Caption = 'Procedure'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = bbLazy
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton3
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton5
          Visible = True
        end
        item
          Item = dxBarButton6
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton7
          Visible = True
        end
        item
          Item = dxBarButton8
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton9
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton10
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
          BeginGroup = True
          Item = dxBarButton17
          Visible = True
        end
        item
          Item = biUnformat
          Visible = True
        end
        item
          BeginGroup = True
          Item = bsiFormatCode
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton4
          Visible = True
        end
      >
    end
    object dxBarButton1: TdxBarButton
      Action = ParamsFm.actCopyParams
      Category = 1
    end
    object siDeclareAs: TdxBarSubItem
      Caption = 'Declare as'
      Category = 2
      Visible = ivAlways
      OnClick = siDeclareAsClick
      ItemLinks = []
    end
    object siInputAs: TdxBarSubItem
      Caption = 'Input As'
      Category = 2
      Visible = ivAlways
      OnClick = siDeclareAsClick
      ItemLinks = []
    end
    object siReturnAs: TdxBarSubItem
      Caption = 'Return as'
      Category = 2
      Visible = ivAlways
      OnClick = siDeclareAsClick
      ItemLinks = []
    end
    object siRemoveDeclaration: TdxBarButton
      Action = actRemoveDeclaration
      Category = 2
    end
    object dxBarButton18: TdxBarButton
      Action = actCodeFormatOptions
      Category = 4
    end
    object dxBarButton20: TdxBarButton
      Action = actFormatProcedure
      Category = 4
    end
    object bsiFormatCode: TdxBarSubItem
      Caption = 'Format procedure code'
      Category = 4
      Hint = 'Format procedure code'
      Visible = ivAlways
      ImageIndex = 294
      ShowCaption = False
      ItemLinks = <
        item
          Item = dxBarButton20
          Visible = True
        end
        item
          Item = dxBarButton18
          Visible = True
        end
      >
    end
    object dxBarButton4: TdxBarButton
      Action = actDropProcedure
      Category = 0
    end
  end
  object pm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton13
        Visible = True
      end
      item
        Item = dxBarButton14
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton15
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton16
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton1
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 232
    Top = 289
  end
  object VarsPM: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = siDeclareAs
        Visible = True
      end
      item
        Item = siInputAs
        Visible = True
      end
      item
        Item = siReturnAs
        Visible = True
      end
      item
        Item = siRemoveDeclaration
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 232
    Top = 327
  end
  object pmFormat: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton20
        Visible = True
      end
      item
        Item = dxBarButton18
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 264
    Top = 327
  end
  object CalcLenTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = CalcLenTimerTimer
    Left = 688
    Top = 143
  end
end
