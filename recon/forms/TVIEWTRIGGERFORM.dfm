object ViewTriggerForm: TViewTriggerForm
  Left = 339
  Top = 213
  Width = 642
  Height = 572
  HelpContext = 1600
  Caption = 'Trigger'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TdfsSplitter
    Left = 0
    Top = 61
    Width = 626
    Height = 3
    Cursor = crVSplit
    Align = alTop
    OnCanResize = Splitter2CanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 64
    Width = 626
    Height = 472
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsTrigger
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
    OnChange = PagesChange
    OnChanging = PagesChanging
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsTrigger: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 626
      Height = 447
      Caption = '&Trigger'
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
        Left = 2
        Top = 348
        Width = 622
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        OnCanResize = Splitter1CanResize
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object Splitter3: TdfsSplitter
        Left = 2
        Top = 257
        Width = 622
        Height = 4
        Cursor = crVSplit
        Align = alTop
        ResizeStyle = rsUpdate
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object VarsPanel: TPanel
        Left = 2
        Top = 95
        Width = 622
        Height = 162
        Align = alTop
        BevelOuter = bvNone
        Constraints.MinHeight = 120
        TabOrder = 0
        object ParamsFm: TParamsFrame
          Width = 622
          Height = 162
          object Bevel1: TBevel
            Top = 160
            Width = 622
          end
          object pCursors: TPanel
            Width = 622
            Height = 110
            object Splitter3: TdfsSplitter
              Height = 110
            end
            object CTL: TdxTreeList
              Height = 110
            end
            object CursorFm: TEditFrame
              Width = 475
              Height = 110
              object lBookmark: TLabel
                Width = 46
              end
              object EditM: TSQLMemo
                Width = 475
                Height = 92
              end
              object pIncSearch: TPanel
                Top = 92
                Width = 475
              end
            end
          end
          object GR: TdxDBGrid
            Width = 622
            Height = 110
            OnMouseUp = ParamsFmGRMouseUp
            Filter.Criteria = {4 bytes}
          end
          object Tabs: TTabControl
            Top = 134
            Width = 622
          end
          object Panel1: TPanel
            Top = 128
            Width = 622
          end
          object Panel3: TPanel
            Width = 622
          end
          object SelectPages: TIBEPageControl
            NextPictureChanged = True
            PrevPictureChanged = True
          end
          object ParamsActions: TActionList
            Left = 128
            Top = 56
          end
        end
      end
      object EditFm: TEditFrame
        Left = 2
        Top = 261
        Width = 622
        Height = 87
        TabOrder = 1
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 622
          Height = 69
        end
        object pIncSearch: TPanel
          Top = 69
          Width = 622
        end
        object EditActions: TActionList
          object actProcVarsCI: TAction
            OnExecute = EditFmactProcVarsCIExecute
          end
        end
        object OpenD: TExtOpenDialog
          Filter = 'Trigger (*.trg)|*.trg|SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|All Files (*.*)|*.*'
        end
        object SaveD: TExtSaveDialog
          Filter = 'Trigger (*.trg)|*.trg|SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|Rich Text Files (*.rtf)|*.rtf|All Files (*.*)|*.*'
        end
      end
      object DockBottom: TTBDock
        Left = 2
        Top = 351
        Width = 622
        Height = 94
        Position = dpBottom
        object twError: TTBToolWindow
          Left = 0
          Top = 0
          BorderStyle = bsNone
          Caption = 'Messages'
          CloseButtonWhenDocked = True
          ClientAreaHeight = 90
          ClientAreaWidth = 604
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
            Width = 604
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
              Width = 604
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
              Width = 604
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
              Width = 604
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
                Width = 604
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
                Width = 604
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
      object HeaderPanel: TPanel
        Left = 2
        Top = 2
        Width = 622
        Height = 93
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object lName: TLabel
          Left = 7
          Top = 4
          Width = 187
          Height = 13
          AutoSize = False
          Caption = 'Trigger Name'
          FocusControl = NameE
          Transparent = True
        end
        object lTable: TLabel
          Left = 195
          Top = 4
          Width = 45
          Height = 13
          Caption = 'For Table'
          FocusControl = TableC
          Transparent = True
        end
        object lPosition: TLabel
          Left = 384
          Top = 4
          Width = 79
          Height = 13
          AutoSize = False
          Caption = 'Position'
          FocusControl = PosE
          Transparent = True
        end
        object Bevel1: TBevel
          Left = 24
          Top = 53
          Width = 605
          Height = 6
          Anchors = ['akLeft', 'akTop', 'akRight']
          Shape = bsTopLine
        end
        object lType: TLabel
          Left = 8
          Top = 47
          Width = 66
          Height = 13
          AutoSize = False
          Caption = 'Trigger Type'
          FocusControl = TypeC
        end
        object NameE: TdxEdit
          Left = 6
          Top = 22
          Width = 180
          TabOrder = 0
          OnKeyPress = NameEKeyPress
          CharCase = ecUpperCase
          MaxLength = 31
          StyleController = IBEMainForm.MainSC
          OnChange = NameEChange
          StoredValues = 2
        end
        object TypeC: TdxPickEdit
          Left = 7
          Top = 65
          Width = 178
          TabOrder = 1
          StyleController = IBEMainForm.MainSC
          OnChange = TypeCChange
          DropDownListStyle = True
          Items.Strings = ['before insert', 'after insert', 'before update', 'after update', 'before delete', 'after delete']
        end
        object TableC: TdxPickEdit
          Left = 194
          Top = 22
          Width = 180
          TabOrder = 2
          StyleController = IBEMainForm.MainSC
          OnChange = TableCChange
          DropDownRows = 20
          DropDownListStyle = True
        end
        object PosE: TdxSpinEdit
          Left = 383
          Top = 22
          Width = 80
          TabOrder = 3
          StyleController = IBEMainForm.MainSC
          OnChange = PosEChange
        end
        object ActiveC: TdxCheckEdit
          Left = 473
          Top = 22
          Width = 105
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Caption = 'Is &Active'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbInsert: TdxCheckEdit
          Left = 191
          Top = 65
          Width = 65
          TabOrder = 5
          Caption = 'INSERT'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbInsertChange
        end
        object cbUpdate: TdxCheckEdit
          Left = 255
          Top = 65
          Width = 79
          TabOrder = 6
          Caption = 'UPDATE'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbInsertChange
        end
        object cbDelete: TdxCheckEdit
          Left = 335
          Top = 65
          Width = 89
          TabOrder = 7
          Caption = 'DELETE'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbInsertChange
        end
      end
    end
    object tsDescription: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 626
      Height = 447
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
        Left = 2
        Top = 2
        Width = 622
        Height = 443
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 622
          Height = 425
          OnExit = DescFmEditMExit
        end
        object pIncSearch: TPanel
          Top = 425
          Width = 622
        end
      end
    end
    object tsDependencies: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 626
      Height = 447
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
      object DependenciesP: TPanel
        Left = 2
        Top = 2
        Width = 622
        Height = 443
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsOperations: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 626
      Height = 447
      Caption = '&Operations / Index using'
      ImageIndex = 5
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
      Width = 626
      Height = 447
      Caption = 'DD&L'
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
        Left = 2
        Top = 2
        Width = 622
        Height = 443
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsVerHistory: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 626
      Height = 447
      Caption = 'Version History'
      ImageIndex = 4
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
        Left = 2
        Top = 2
        Width = 622
        Height = 443
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
          Width = 622
          Height = 418
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
            Left = 2
            Top = 2
            Width = 618
            Height = 414
            Align = alClient
            BevelOuter = bvNone
            Color = clWindow
            TabOrder = 0
          end
        end
        object tsCompareVer: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 622
          Height = 418
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
            Left = 2
            Top = 2
            Width = 618
            Height = 414
            object Splitter1: TdfsSplitter
              Height = 312
            end
            object Splitter2: TdfsSplitter
              Top = 312
              Width = 618
            end
            object pnlLeft: TPanel
              Height = 312
              object Panel1: TPanel
                Height = 24
                object cbVer1: TdxPickEdit
                  OnChange = TDFmcbVer1Change
                end
              end
            end
            object pnlRight: TPanel
              Width = 299
              Height = 312
              object pVer2: TPanel
                Width = 299
                object cbVer2: TdxPickEdit
                  Width = 148
                  OnChange = TDFmcbVer2Change
                end
              end
            end
            object pnlMerge: TPanel
              Top = 316
              Width = 618
            end
            object StatusBar1: TStatusBar
              Top = 395
              Width = 618
            end
          end
        end
      end
    end
    object tsCompare: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 626
      Height = 447
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
      Width = 626
      Height = 447
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
    Top = 52
    Width = 626
    Height = 9
  end
  object Actions: TActionList
    Images = IBEMainForm.MenuImages
    OnExecute = ActionsExecute
    OnUpdate = ActionsUpdate
    Left = 411
    Top = 27
    object aCompile: TAction
      Caption = 'Compile Trigger'
      ImageIndex = 28
      ShortCut = 16504
      OnExecute = aCompileExecute
    end
    object aPrint: TAction
      Caption = 'Print Trigger'
      ImageIndex = 53
      OnExecute = aPrintExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
    end
    object actDebug: TAction
      Caption = 'Debug Trigger'
      Hint = 'Debug Trigger'
      ImageIndex = 55
      OnExecute = actDebugExecute
    end
    object actAutoGrant: TAction
      Caption = 'Autogrant privileges'
      Hint = 'Autogrant privileges'
      ImageIndex = 119
      ShortCut = 16503
      OnExecute = actAutoGrantExecute
    end
    object actLazyMode: TAction
      Caption = 'Lazy mode'
      Hint = 'Lazy mode on/off'
      ImageIndex = 117
      OnExecute = actLazyModeExecute
    end
    object actCommentBody: TAction
      Caption = 'Comment Trigger Body'
      Hint = 'Comment Trigger Body'
      ImageIndex = 205
      OnExecute = actCommentBodyExecute
      OnUpdate = actCommentBodyUpdate
    end
    object actUncommentBody: TAction
      Caption = 'Uncomment Trigger Body'
      Hint = 'Uncomment Trigger Body'
      ImageIndex = 206
      OnExecute = actUncommentBodyExecute
      OnUpdate = actUncommentBodyUpdate
    end
    object actRemoveDeclaration: TAction
      Caption = 'Remove declaration'
      OnExecute = actRemoveDeclarationExecute
    end
    object actFormatTrigger: TAction
      Caption = 'Format trigger text'
      Hint = 'Format trigger text'
      ImageIndex = 294
      ShortCut = 32838
      OnExecute = actFormatTriggerExecute
    end
    object actCodeFormatOptions: TAction
      Caption = 'Code formatting options...'
      Hint = 'Code formatting options'
      OnExecute = actCodeFormatOptionsExecute
    end
    object actDropTrigger: TAction
      Caption = 'Drop trigger'
      OnExecute = actDropTriggerExecute
      OnUpdate = actDropTriggerUpdate
    end
    object actEditTable: TAction
      Caption = 'Goto table'
      OnExecute = actEditTableExecute
      OnUpdate = actEditTableUpdate
    end
  end
  object bm: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        Caption = 'Trigger toolbar'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Trigger toolbar'
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
        Caption = 'Variables'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 26
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'tbLazy'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = True
        Row = 1
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default', 'Variables', 'Format']
    Categories.ItemsVisibles = [2, 2, 2]
    Categories.Visibles = [True, True, True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    Style = bmsFlat
    UseSystemFont = True
    Left = 264
    Top = 368
    DockControlHeights = [0, 0, 52, 0]
    object dxBarButton1: TdxBarButton
      Action = aCompile
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = aPrint
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actDebug
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actAutoGrant
      Category = 0
    end
    object cbTriggerName: TdxBarCombo
      Align = iaClient
      Caption = 'Trigger name'
      Category = 0
      Hint = 'Trigger name'
      Visible = ivAlways
      OnChange = cbTriggerNameChange
      Width = 100
      DropDownCount = 20
      OnDrawItem = cbTriggerNameDrawItem
      ItemIndex = -1
    end
    object bbLazyMode: TdxBarButton
      Action = actLazyMode
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton3: TdxBarButton
      Action = ParamsFm.actAppendParam
      Category = 1
      Hint = 'Append variable'
    end
    object dxBarButton8: TdxBarButton
      Action = ParamsFm.actInsertParam
      Category = 1
      Hint = 'Insert variable'
    end
    object dxBarButton9: TdxBarButton
      Action = ParamsFm.actMoveParamDown
      Category = 1
      Hint = 'Move variable down'
    end
    object dxBarButton10: TdxBarButton
      Action = ParamsFm.actMoveParamUp
      Category = 1
      Hint = 'Move variable up'
    end
    object dxBarButton11: TdxBarButton
      Action = ParamsFm.actRemoveParam
      Category = 1
      Hint = 'Remove variable'
    end
    object dxBarButton2: TdxBarButton
      Action = actCommentBody
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = actUncommentBody
      Category = 0
    end
    object bsiTrigger: TdxBarSubItem
      Caption = 'Trigger'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = bbLazyMode
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton1
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton5
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton6
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
          Item = dxBarButton12
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
          BeginGroup = True
          Item = dxBarButton15
          Visible = True
        end
      >
    end
    object siDeclareAs: TdxBarSubItem
      Caption = 'Declare as'
      Category = 1
      Visible = ivAlways
      OnClick = siDeclareAsClick
      ItemLinks = []
    end
    object siRemoveDeclaration: TdxBarButton
      Action = actRemoveDeclaration
      Category = 1
    end
    object cbDBTrigger: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivNever
      Text = 'Table trigger'
      OnChange = cbDBTriggerChange
      Width = 120
      ShowEditor = False
      Items.Strings = ['Table trigger', 'Database trigger']
      ItemIndex = 0
    end
    object bsiFormatCode: TdxBarSubItem
      Caption = 'Format trigger text'
      Category = 2
      Hint = 'Format trigger text'
      Visible = ivAlways
      ImageIndex = 294
      ShowCaption = False
      ItemLinks = <
        item
          Item = dxBarButton4
          Visible = True
        end
        item
          Item = dxBarButton13
          Visible = True
        end
      >
    end
    object dxBarButton4: TdxBarButton
      Action = actFormatTrigger
      Category = 2
    end
    object dxBarButton13: TdxBarButton
      Action = actCodeFormatOptions
      Category = 2
    end
    object dxBarButton14: TdxBarButton
      Action = actDropTrigger
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = actEditTable
      Category = 0
    end
  end
  object pm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        Item = dxBarButton3
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
        Item = dxBarButton10
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton11
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 232
    Top = 369
  end
  object VarsPM: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Item = siDeclareAs
        Visible = True
      end
      item
        Item = siRemoveDeclaration
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 200
    Top = 375
  end
  object Timer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerTimer
    Left = 354
    Top = 255
  end
end
