object DataFrame: TDataFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 265
  HelpContext = 5900
  Align = alClient
  TabOrder = 0
  OnResize = FrameResize
  object TopSplitter: TdfsSplitter
    Left = 0
    Top = 69
    Width = 435
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Color = clBtnShadow
    ParentColor = False
    ResizeStyle = rsUpdate
    OnCanResize = TopSplitterCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object BottomSplitter: TdfsSplitter
    Left = 0
    Top = 75
    Width = 435
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    Color = clBtnShadow
    ParentColor = False
    ResizeStyle = rsUpdate
    OnCanResize = BottomSplitterCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 73
    Width = 435
    Height = 2
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsGrid
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    PageMargin = 0
    TabSettings.LeftMargin = 2
    TabSettings.RightMargin = 2
    TabSettings.Height = 0
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    OnChange = PagesChange
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsGrid: TAdvOfficePage
      Left = 0
      Top = 0
      Width = 435
      Height = 1
      Caption = 'tsGrid'
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
      object GR: TdxDBGrid
        Tag = 1
        Left = 0
        Top = 0
        Width = 435
        Height = 1
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = None
            Name = 'GRSummaryGroup2'
          end
        >
        SummarySeparator = ', '
        Align = alClient
        DragMode = dmAutomatic
        TabOrder = 0
        OnClick = GRClick
        OnDblClick = GRDblClick
        OnEnter = GREnter
        OnKeyPress = GRKeyPress
        OnKeyUp = GRKeyUp
        OnMouseDown = GRMouseDown
        OnMouseMove = GRMouseMove
        OnMouseUp = GRMouseUp
        ArrowsColor = clGreen
        AutoSearchColor = 6986751
        DataSource = DS
        Filter.Criteria = {4 bytes}
        LookAndFeel = lfFlat
        OptionsBehavior = ['edgoAutoCopySelectedToClipboard', 'edgoAutoSort', 'edgoEditing', 'edgoEnterShowEditor', 'edgoTabThrough', 'edgoVertThrough']
        OptionsCustomize = ['edgoBandMoving', 'edgoBandSizing', 'edgoColumnMoving', 'edgoColumnSizing', 'edgoRowSizing']
        OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanDelete', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoUseBookmarks']
        OptionsView = ['edgoBandHeaderWidth', 'edgoHotTrack', 'edgoIndicator', 'edgoUseBitmap']
        OnChangeColumn = GRChangeColumn
        OnChangedColumnsWidth = GRChangedColumnsWidth
        OnChangeLeftCoord = GRChangeLeftCoord
        OnCustomDrawBand = GRCustomDrawBand
        OnCustomDrawCell = GRCustomDrawCell
        OnCustomDrawColumnHeader = GRCustomDrawColumnHeader
        OnDragEndBand = GRDragEndBand
        OnDragEndHeader = GRDragEndHeader
        OnEdited = GREdited
        OnEditing = GREditing
        OnEndDragGroupColumn = GREndDragGroupColumn
        OnReloadGroupList = GRReloadGroupList
        OnColumnMoved = GRColumnMoved
        OnColumnClick = GRColumnClick
        OnFilterChanged = GRFilterChanged
      end
      object MDFm: TMasterDetailFrame
        Left = 128
        Top = 138
        Width = 357
        Height = 185
        TabOrder = 1
        Visible = False
        object GR: TdxDBGrid
          Width = 357
          Height = 136
          OnDblClick = MDFmGRDblClick
          OnKeyDown = MDFmGRKeyDown
          Filter.Criteria = {4 bytes}
          OptionsBehavior = ['edgoAutoCopySelectedToClipboard', 'edgoAutoSearch', 'edgoAutoSort', 'edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoTabThrough', 'edgoVertThrough']
          OnCustomDrawCell = MDFmGRCustomDrawCell
        end
        object Panel1: TPanel
          Width = 357
        end
        object Panel3: TPanel
          Width = 357
        end
        object DataD: TpFIBDataSet
          AfterOpen = None
        end
      end
      object pSummary: TPanel
        Left = 24
        Top = 288
        Width = 185
        Height = 25
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 2
        Visible = False
      end
    end
    object tsForm: TAdvOfficePage
      Left = 0
      Top = 0
      Width = 435
      Height = 1
      Caption = 'tsForm'
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
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 435
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel2: TBevel
          Left = 0
          Top = 0
          Width = 435
          Height = 2
          Align = alTop
          Shape = bsTopLine
        end
        object TBToolbar1: TTBToolbar
          Left = 0
          Top = 4
          Width = 598
          Height = 21
          Caption = 'TBToolbar1'
          TabOrder = 0
          object TBControlItem9: TTBControlItem
            Control = lStyle
          end
          object TBControlItem10: TTBControlItem
            Control = cbFormStyle
          end
          object TBSeparatorItem15: TTBSeparatorItem
          end
          object TBControlItem8: TTBControlItem
            Control = lMemosHeight
          end
          object TBControlItem6: TTBControlItem
            Control = seMemoHeight
          end
          object TBSeparatorItem12: TTBSeparatorItem
          end
          object TBControlItem7: TTBControlItem
            Control = cbWordWrap
          end
          object lMemosHeight: TLabel
            Left = 141
            Top = 4
            Width = 74
            Height = 13
            Caption = ' Memos Height '
          end
          object lStyle: TLabel
            Left = 0
            Top = 4
            Width = 29
            Height = 13
            Caption = ' Style '
          end
          object seMemoHeight: TdxSpinEdit
            Left = 215
            Top = 0
            Width = 57
            TabOrder = 0
            StyleController = IBEMainForm.MainSC
            OnChange = seMemoHeightChange
            Increment = -1.4916681462400413e-154
            MaxValue = -4.538015467766672e+279
            MinValue = -1.020640762992391e-202
            Value = -1.020640762992391e-202
            StoredValues = 48
          end
          object cbWordWrap: TdxCheckEdit
            Left = 278
            Top = 0
            Width = 320
            TabOrder = 1
            Caption = 'Memos Word Wrap'
            StyleController = IBEMainForm.MainCheckSC
            OnChange = cbWordWrapChange
          end
          object cbFormStyle: TdxPickEdit
            Left = 29
            Top = 0
            Width = 106
            TabOrder = 2
            StyleController = IBEMainForm.MainSC
            OnChange = cbFormStyleChange
            DropDownRows = 20
            DropDownListStyle = True
            Items.Strings = ['Classic', 'Compact']
          end
        end
      end
      object pHeader: TPanel
        Left = 0
        Top = 30
        Width = 435
        Height = 18
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pHeader'
        TabOrder = 1
        object Bevel3: TBevel
          Left = 0
          Top = 0
          Width = 435
          Height = 2
          Align = alTop
          Shape = bsBottomLine
        end
        object hc: THeaderControl
          Left = 0
          Top = 1
          Width = 568
          Height = 17
          Align = alNone
          DragReorder = False
          Sections = <
            item
              ImageIndex = -1
              MinWidth = 100
              Text = 'Name'
              Width = 150
            end
            item
              ImageIndex = -1
              MinWidth = 50
              Text = 'Type'
              Width = 70
            end
            item
              Alignment = taCenter
              ImageIndex = -1
              MinWidth = 30
              Text = 'Null'
              Width = 40
            end
            item
              ImageIndex = -1
              MinWidth = 100
              Text = 'Value'
              Width = 300
            end
            item
              ImageIndex = -1
              Text = 'Description'
              Width = 200
            end
          >
          OnSectionResize = hcSectionResize
        end
      end
      object ftl: TdxTreeList
        Left = 0
        Top = 48
        Width = 435
        Height = 278
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        Color = clBtnFace
        DragMode = dmAutomatic
        TabOrder = 2
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnClick = ftlClick
        OnDblClick = ftlDblClick
        OnKeyPress = ftlKeyPress
        OnCustomDrawCell = ftlCustomDrawCell
        OnChangedColumnsWidth = ftlChangedColumnsWidth
        OnColumnMoved = ftlColumnMoved
        OnChangeColumn = ftlChangeColumn
        OnChangeLeftCoord = ftlChangeLeftCoord
        OnChangeNode = ftlChangeNode
        OnChangeTopVisibleNode = ftlChangeTopVisibleNode
        OnCompare = ftlCompare
        object ftlNum: TdxTreeListColumn
          Alignment = taRightJustify
          Caption = '#'
          HeaderAlignment = taRightJustify
          BandIndex = 0
          RowIndex = 0
        end
        object ftlName: TdxTreeListColumn
          Caption = 'Name'
          BandIndex = 0
          RowIndex = 0
        end
        object ftlType: TdxTreeListColumn
          Caption = 'Type'
          BandIndex = 0
          RowIndex = 0
        end
        object ftlNull: TdxTreeListColumn
          Caption = 'Null'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
        end
        object ftlValue: TdxTreeListColumn
          Caption = 'Value'
          BandIndex = 0
          RowIndex = 0
        end
        object ftlDesc: TdxTreeListColumn
          Caption = 'Description'
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsPrint: TAdvOfficePage
      Left = 0
      Top = 0
      Width = 435
      Height = 1
      Caption = 'tsPrint'
      ImageIndex = 2
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
  object Tabs: TTabControl
    Left = 0
    Top = 239
    Width = 435
    Height = 26
    Align = alBottom
    Style = tsFlatButtons
    TabOrder = 2
    Tabs.Strings = ['&Grid View', 'Form &View', '&Print Data']
    TabIndex = 0
    OnChange = TabsChange
    OnChanging = TabsChanging
  end
  object pNav: TPanel
    Left = 0
    Top = 9
    Width = 435
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lFetched: TLabel
      Left = 35264
      Top = 8
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Anchors = ['akTop', 'akRight']
      Caption = 'Fetched'
    end
    object Bevel1: TBevel
      Left = 86
      Top = 4
      Width = 15
      Height = 21
      Shape = bsLeftLine
    end
    object tbFilter: TTBToolbar
      Left = 3
      Top = 3
      Width = 486
      Height = 22
      Caption = 'tbFilter'
      Images = IBEMainForm.MenuImages
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object TBSeparatorItem16: TTBSeparatorItem
      end
      object tbFiltered: TTBItem
        Action = actApplyFilter
      end
      object TBSeparatorItem6: TTBSeparatorItem
      end
      object TBItem4: TTBItem
        Action = actShowFilterPanel
      end
      object TBSeparatorItem3: TTBSeparatorItem
      end
      object tbbQuickAddFilterCriteria: TTBItem
        Action = IBEMainForm.actGridFilterAddCriteria
      end
      object TBSeparatorItem8: TTBSeparatorItem
      end
      object TBControlItem2: TTBControlItem
        Control = lRecord
      end
      object TBControlItem1: TTBControlItem
        Control = seRecNo
      end
      object TBSeparatorItem10: TTBSeparatorItem
      end
      object TBItem11: TTBItem
        Action = actDataAnalysis
      end
      object TBSeparatorItem17: TTBSeparatorItem
      end
      object TBItem9: TTBItem
        Action = actSummaries
      end
      object TBSeparatorItem14: TTBSeparatorItem
      end
      object TBItem10: TTBItem
        Action = actUnicode
      end
      object TBSeparatorItem13: TTBSeparatorItem
      end
      object TBControlItem5: TTBControlItem
        Control = DBNavigator
      end
      object TBSeparatorItem11: TTBSeparatorItem
      end
      object TBSubmenuItem1: TTBSubmenuItem
        Caption = 'View all columns'
        Options = ['tboDropdownArrow']
        Visible = False
        object TBItem28: TTBItem
          Caption = 'Statements'
        end
        object TBItem27: TTBItem
          Caption = 'Transactions'
        end
        object TBItem26: TTBItem
          Caption = 'BLR'
        end
      end
      object TBSeparatorItem22: TTBSeparatorItem
      end
      object bAbortFetch: TTBItem
        Caption = 'Abort fetch'
        DisplayMode = nbdmTextOnly
        ImageIndex = 0
        Options = ['tboDefault', 'tboShowHint']
        ShortCut = 27
        Visible = False
        OnClick = TBItem9Click
      end
      object lRecord: TLabel
        Left = 87
        Top = 4
        Width = 41
        Height = 13
        Caption = 'Record: '
      end
      object seRecNo: TdxSpinEdit
        Left = 128
        Top = 0
        Width = 55
        TabOrder = 0
        OnEnter = seRecNoEnter
        OnExit = seRecNoExit
        OnKeyPress = seRecNoKeyPress
        StyleController = IBEMainForm.MainSC
        MaxValue = -3.1562054625721004e-190
        Value = -0.0
        StoredValues = 48
      end
      object DBNavigator: TDBNavigator
        Left = 276
        Top = 0
        Width = 210
        Height = 22
        DataSource = DS
        Flat = True
        Hints.Strings = ['First', 'Previous', 'Next', 'Last', 'Insert', 'Delete', 'Edit', 'Save Updates', 'Cancel Updates', 'Refresh']
        ParentShowHint = False
        ConfirmDelete = False
        ShowHint = True
        TabOrder = 1
        BeforeAction = DBNavigatorBeforeAction
        OnClick = DBNavigatorClick
      end
    end
  end
  object PrintP: TPanel
    Left = 0
    Top = 37
    Width = 435
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 36838
      Top = 11
      Width = 3
      Height = 13
      Alignment = taRightJustify
      Anchors = ['akTop', 'akRight']
    end
    object tbPrint: TTBToolbar
      Left = 3
      Top = 5
      Width = 837
      Height = 22
      Caption = 'tbPrint'
      Images = IBEMainForm.MenuImages
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object TBItem25: TTBItem
        Action = actEditReport
      end
      object TBSeparatorItem21: TTBSeparatorItem
      end
      object TBSubmenuItem2: TTBSubmenuItem
        Action = actSaveReport
        Options = ['tboDropdownArrow']
        object TBItem12: TTBItem
          Caption = 'Prepared report (*.fr3)'
          OnClick = TBItem12Click
        end
        object TBItem23: TTBItem
          Caption = 'Simple text file (*.txt)'
          OnClick = TBItem23Click
        end
        object TBItem1: TTBItem
          Caption = 'Text file for dot-matrix printers (*.txt)'
          OnClick = TBItem1Click
        end
        object TBItem14: TTBItem
          Caption = 'Excel file (*.xls)'
          OnClick = TBItem14Click
        end
        object TBItem15: TTBItem
          Caption = 'XML Excel file (*.xls)'
          OnClick = TBItem15Click
        end
        object TBItem13: TTBItem
          Caption = 'HTML page (*.html)'
          OnClick = TBItem13Click
        end
        object TBItem16: TTBItem
          Caption = 'RTF file (*.rtf)'
          OnClick = TBItem16Click
        end
        object TBItem17: TTBItem
          Caption = 'PDF file (*.pdf)'
          OnClick = TBItem17Click
        end
        object TBItem18: TTBItem
          Caption = 'CSV file (*csv)'
          OnClick = TBItem18Click
        end
        object TBItem19: TTBItem
          Caption = 'BMP image (*.bmp)'
          OnClick = TBItem19Click
        end
        object TBItem22: TTBItem
          Caption = 'JPEG image (*.jpg)'
          OnClick = TBItem22Click
        end
        object TBItem21: TTBItem
          Caption = 'TIFF image (*.tiff)'
          OnClick = TBItem21Click
        end
        object TBItem20: TTBItem
          Caption = 'GIF image (*.gif)'
          OnClick = TBItem20Click
        end
        object TBItem24: TTBItem
          Caption = 'Email '
          OnClick = TBItem24Click
        end
      end
      object TBSeparatorItem19: TTBSeparatorItem
      end
      object TBItem2: TTBItem
        Action = actPrint
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object TBItem3: TTBItem
        Action = actPageSetup
      end
      object TBSeparatorItem2: TTBSeparatorItem
      end
      object : TTBControlItem
        Control = lScale
      end
      object TBControlItem4: TTBControlItem
        Control = cbScale
      end
      object TBSeparatorItem20: TTBSeparatorItem
      end
      object TBControlItem13: TTBControlItem
        Control = lReportTitle
      end
      object TBControlItem12: TTBControlItem
        Control = eDataReportTitle
      end
      object TBSeparatorItem9: TTBSeparatorItem
      end
      object TBControlItem3: TTBControlItem
        Control = cbPrintBlobs
      end
      object lScale: TLabel
        Left = 124
        Top = 4
        Width = 36
        Height = 13
        Caption = ' Scale: '
      end
      object lReportTitle: TLabel
        Left = 272
        Top = 4
        Width = 29
        Height = 13
        Caption = ' Title: '
      end
      object cbPrintBlobs: TdxCheckEdit
        Left = 517
        Top = 0
        Width = 320
        TabOrder = 0
        Caption = 'Print BLOB and MEMO values'
        StyleController = IBEMainForm.MainCheckSC
        OnChange = cbPrintBlobsChange
      end
      object cbScale: TdxPickEdit
        Left = 160
        Top = 0
        Width = 106
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        OnChange = cbScaleChange
        DropDownRows = 20
        DropDownListStyle = True
        Items.Strings = ['200%', '150%', '100%', '75%', '50%', '25%', '10%', 'Page width', 'Whole page', 'Two pages']
      end
      object eDataReportTitle: TdxEdit
        Left = 301
        Top = 0
        Width = 210
        TabOrder = 2
        OnKeyPress = eDataReportTitleKeyPress
        StyleController = IBEMainForm.MainSC
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 232
    Width = 435
    Height = 7
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
  end
  object TopDock: TTBDock
    Left = 0
    Top = 0
    Width = 435
    Height = 9
  end
  object BottomDock: TTBDock
    Left = 0
    Top = 79
    Width = 435
    Height = 153
    Position = dpBottom
    object twFilter: TTBToolWindow
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'Filter Criterias'
      CloseButtonWhenDocked = True
      ClientAreaHeight = 149
      ClientAreaWidth = 417
      DockableTo = ['dpTop', 'dpBottom']
      DockPos = 0
      DragHandleStyle = dhDouble
      FloatingMode = fmOnTopOfAllForms
      FullSize = True
      TabOrder = 0
      Visible = False
      OnDockChanged = twFilterDockChanged
      OnVisibleChanged = twFilterVisibleChanged
      object FilterSplitter: TdfsSplitter
        Left = 106
        Top = 0
        Width = 4
        Height = 149
        Cursor = crHSplit
        Align = alRight
        ResizeStyle = rsUpdate
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object pCriterias: TPanel
        Left = 0
        Top = 0
        Width = 106
        Height = 149
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pCriterias'
        TabOrder = 0
        object FilterTL: TdxTreeList
          Left = 0
          Top = 22
          Width = 106
          Height = 127
          HelpContext = -1
          Bands = <
            item
            end
          >
          DefaultLayout = True
          HeaderPanelRowCount = 1
          Align = alClient
          DragMode = dmAutomatic
          TabOrder = 0
          DblClkExpanding = False
          HideSelection = False
          LookAndFeel = lfFlat
          Options = ['aoColumnSizing', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoAutoWidth']
          OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoEnterShowEditor', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
          TreeLineColor = clGrayText
          ShowLines = False
          GridLineColor = clSilver
          OnClick = FilterTLClick
          OnExit = FilterTLExit
          OnKeyPress = FilterTLKeyPress
          OnKeyUp = FilterTLKeyUp
          OnCustomDrawCell = FilterTLCustomDrawCell
          OnChangeNode = FilterTLChangeNode
          OnEdited = FilterTLEdited
          OnEditing = FilterTLEditing
          object tlcColumn: TdxTreeListPickColumn
            Caption = 'Column / Criteria'
            DisableCustomizing = True
            Width = 188
            BandIndex = 0
            RowIndex = 0
            DropDownListStyle = True
            Items.Strings = ['Equal', 'Not Equal', 'Greater than', 'Greater or Equal than', 'Lower than', 'Lower or Equal than', 'Is NULL', 'Not NULL', 'Between', 'Starting With', 'Containing']
            DropDownRows = 20
          end
          object tlcValue: TdxTreeListDateColumn
            Caption = 'Value'
            Width = 271
            BandIndex = 0
            RowIndex = 0
          end
          object tlcAndOr: TdxTreeListPickColumn
            Alignment = taLeftJustify
            Caption = 'AND/OR'
            MinWidth = 60
            Width = 60
            BandIndex = 0
            RowIndex = 0
            DropDownListStyle = True
            Items.Strings = ['AND', 'OR']
          end
          object tlcActive: TdxTreeListColumn
            Caption = 'A'
            DisableEditor = True
            HeaderAlignment = taCenter
            MinWidth = 25
            ReadOnly = True
            Width = 25
            BandIndex = 0
            RowIndex = 0
          end
          object tlcCS: TdxTreeListColumn
            Alignment = taCenter
            Caption = 'CS'
            DisableEditor = True
            HeaderAlignment = taCenter
            MinWidth = 25
            ReadOnly = True
            Width = 25
            BandIndex = 0
            RowIndex = 0
          end
          object tlcVal: TdxTreeListColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
          end
        end
        object tbFilter2: TTBToolbar
          Left = 0
          Top = 0
          Width = 106
          Height = 22
          Align = alTop
          Caption = 'TBToolbar1'
          CloseButton = False
          Images = IBEMainForm.MenuImages
          ParentShowHint = False
          ShowHint = True
          ShrinkMode = tbsmNone
          TabOrder = 1
          object TBItem6: TTBItem
            Action = actApplyFilter
          end
          object TBSeparatorItem4: TTBSeparatorItem
          end
          object tbbAddNewCriteria: TTBItem
            Caption = 'Add New Criteria'
            Hint = 'Add New Criteria'
            ImageIndex = 211
            ShortCut = 45
            OnClick = tbbAddNewCriteriaClick
          end
          object TBItem7: TTBItem
            Action = actDelFilterCriteria
          end
          object TBSeparatorItem5: TTBSeparatorItem
          end
          object TBItem5: TTBItem
            Action = actFilterPanelLayout
          end
          object TBSeparatorItem7: TTBSeparatorItem
          end
          object TBItem8: TTBItem
            Action = actCountFilteredRecords
          end
          object TBSeparatorItem18: TTBSeparatorItem
          end
          object TBControlItem11: TTBControlItem
            Control = cbCountFilteredRecords
          end
          object cbCountFilteredRecords: TdxCheckEdit
            Left = 203
            Top = 0
            Width = 365
            TabOrder = 0
            Caption = 'Count filtered records automatically'
            StyleController = IBEMainForm.MainCheckSC
          end
        end
      end
      object pWhere: TPanel
        Left = 110
        Top = 0
        Width = 307
        Height = 149
        Align = alRight
        BevelOuter = bvNone
        Caption = 'pWhere'
        TabOrder = 1
        object pWhereClause: TPanel
          Left = 0
          Top = 0
          Width = 307
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Where Clause'
          Color = clBtnShadow
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 0
        end
        object MWhere: TdxMemo
          Tag = 1000
          Left = 0
          Top = 18
          Width = 307
          Align = alClient
          TabOrder = 1
          ReadOnly = True
          StyleController = IBEMainForm.MainSC
          Lines.Strings = ['']
          Height = 131
          StoredValues = 64
        end
      end
    end
  end
  object DataD: TpFIBDataSet
    BufferChunks = 32
    CachedUpdates = False
    UniDirectional = False
    UpdateRecordTypes = ['cusUnmodified', 'cusModified', 'cusInserted']
    OnUpdateError = DataDUpdateError
    Transaction = DataTr
    OnGetRecordError = DataDGetRecordError
    Options = ['poTrimCharFields', 'poAllowChangeSqls', 'poRefreshAfterPost']
    AfterCancel = DataDAfterCancel
    AfterClose = DataDAfterClose
    AfterDelete = DataDAfterDelete
    AfterOpen = DataDAfterOpen
    AfterPost = DataDAfterPost
    BeforeClose = DataDBeforeClose
    BeforeDelete = DataDBeforeDelete
    BeforeEdit = DataDBeforeEdit
    BeforeInsert = DataDBeforeInsert
    BeforePost = DataDBeforePost
    BeforeScroll = DataDBeforeScroll
    OnDeleteError = DataDDeleteError
    OnPostError = DataDPostError
    BeforeRefresh = DataDBeforeRefresh
    ObjectView = False
    OnFilterRecord = DatasetFilterRecord
    PrepareOptions = []
    DefaultFormats.DateTimeDisplayFormat = 'dd MM yyyy'
    DefaultFormats.NumericEditFormat = '0'
    DefaultFormats.DisplayFormatDate = 'dd/MM/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 370
    Top = 150
  end
  object DataTr: TpFIBTransaction
    Active = False
    Timeout = 293080420
    TimeoutAction = TARollback
    TPBMode = tpbDefault
    Left = 402
    Top = 118
  end
  object DS: TDataSource
    DataSet = DataD
    OnDataChange = DSDataChange
    OnUpdateData = DSUpdateData
    Left = 370
    Top = 118
  end
  object DataActions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = DataActionsUpdate
    Left = 344
    Top = 81
    object actPrint: TAction
      Caption = 'Print'
      Hint = 'Print Data'
      ImageIndex = 53
      OnExecute = actPrintExecute
    end
    object actPageSetup: TAction
      Caption = 'Page Setup'
      Hint = 'Page Setup'
      ImageIndex = 99
      OnExecute = actPageSetupExecute
    end
    object actSaveReport: TAction
      Caption = 'Save'
      Hint = 'Save Report'
      ImageIndex = 29
      OnExecute = actSaveReportExecute
    end
    object actNextPage: TAction
      Caption = 'Next Page'
      OnExecute = actNextPageExecute
    end
    object actPrevPage: TAction
      Caption = 'Previous Page'
      OnExecute = actPrevPageExecute
    end
    object actIncreaseColumnWidth: TAction
      Caption = 'Increase Column Width'
      ShortCut = 49191
      OnExecute = actIncreaseColumnWidthExecute
    end
    object actDecreaseColumnWidth: TAction
      Caption = 'Decrease Column Width'
      ShortCut = 49189
      OnExecute = actDecreaseColumnWidthExecute
    end
    object actIncSearch: TAction
      Caption = 'actIncSearch'
      ShortCut = 16454
      OnExecute = actIncSearchExecute
    end
    object actNewFilterCriteria: TAction
      Caption = 'Add New Criteria'
      Hint = 'Add New Criteria'
      ImageIndex = 211
      ShortCut = 45
      OnExecute = actNewFilterCriteriaExecute
      OnUpdate = actNewFilterCriteriaUpdate
    end
    object actDelFilterCriteria: TAction
      Caption = 'Delete Criteria'
      ImageIndex = 212
      ShortCut = 16430
      OnExecute = actDelFilterCriteriaExecute
      OnUpdate = actDelFilterCriteriaUpdate
    end
    object actFilterPanelLayout: TAction
      Caption = 'Vertical Layout'
      ImageIndex = 214
      ShortCut = 24652
      OnExecute = actFilterPanelLayoutExecute
      OnUpdate = actFilterPanelLayoutUpdate
    end
    object actApplyFilter: TAction
      Caption = 'Apply Filter'
      ImageIndex = 210
      OnExecute = actApplyFilterExecute
      OnUpdate = actApplyFilterUpdate
    end
    object actShowFilterPanel: TAction
      Caption = 'Show Filter Panel'
      ImageIndex = 209
      OnExecute = actShowFilterPanelExecute
      OnUpdate = actShowFilterPanelUpdate
    end
    object actCountFilteredRecords: TAction
      Caption = 'Count records'
      OnExecute = actCountFilteredRecordsExecute
      OnUpdate = actCountFilteredRecordsUpdate
    end
    object actSummaries: TAction
      Caption = 'Summaries'
      Hint = 'Show summary footer'
      ImageIndex = 252
      OnExecute = actSummariesExecute
      OnUpdate = actSummariesUpdate
    end
    object actUnicode: TAction
      Caption = 'Display data as Unicode'
      Hint = 'Display data as Unicode'
      ImageIndex = 253
      ShortCut = 114
      OnExecute = actUnicodeExecute
    end
    object actDataAnalysis: TAction
      Caption = 'Data Analysis'
      Hint = 'Data Analysis'
      ImageIndex = 254
      OnExecute = actDataAnalysisExecute
    end
    object actEditReport: TAction
      Caption = 'Edit prepared report'
      Hint = 'Edit report page'
      ImageIndex = 92
      OnExecute = actEditReportExecute
    end
  end
  object ClipbrdExp: TVClipbrdExport
    ReplaceNonPrintableCharacters = True
    QuoteStrings = False
    ReplaceCRLF = False
    Dataset = DataD
    Left = 320
    Top = 121
  end
  object mtBlock: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    AfterScroll = DatasetAfterScroll
    OnFilterRecord = mtBlockFilterRecord
    Left = 144
    Top = 113
  end
  object frxData: TfrxReport
    Version = '3.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = -0.0
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -4.331900294171538e-210
    ReportOptions.LastChange = -8.278348759516275e-199
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['procedure Page1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  mTitle.Left := 0;', '  mTitle.Width := Trunc((Page1.PaperWidth - Page1.RightMargin - Page1.LeftMargin) * 3.77953);', '  mTitle.Top := 0;', '  bTitle.Height := mTitle.Height + 5;', '', '  mPageNum.Left := 0;', '  mPageNum.Width := mTitle.Width;', '  mPageNum.Top := 0;', '', '', '', '  CellMemo.Left :=  MasterData2.Left;', '  CellMemo.Width := MasterData2.Width;', '  CellMemo.Height := [DefRowHeight];', '', '  HeaderMemo.Left :=  MasterData2.Left;', '  HeaderMemo.Width := MasterData2.Width;', '  HeaderMemo.Height := CellMemo.Height;', '  HeaderMemo.Color := [HeaderColor];', '', '  bHeader.Height :=  CellMemo.Height;', '  bData.Height := CellMemo.Height;', '', '  mTitle.Text := [REPORT_TITLE];', '  bTitle.Visible := mTitle.Text <> '''';', 'end;', '', 'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  MasterData2.Width := [CUR_WIDTH];', '  CellMemo.Width := MasterData2.Width;', '  CellMemo.HAlign  := [CUR_ALIGN];', '  HeaderMemo.Width := MasterData2.Width;', 'end;', '', 'begin', '', 'end.']
    OnGetValue = frxDataGetValue
    Left = 54
    Top = 136
    Datasets = <
      item
        DataSet = frxdData
        DataSetName = 'frxdData'
      end
      item
        DataSet = frxdHeader
        DataSetName = 'frxdHeader'
      end
    >
    Variables = <
      item
        Name = ' New Category1'
        Value = <class '__main__.NULL'>
      end
      item
        Name = 'DefRowHeight'
        Value = ''
      end
      item
        Name = 'HeaderColor'
        Value = ''
      end
    >
    Style = []
    object Page1: TfrxReportPage
      PaperWidth = -9.946464728195733e+86
      PaperHeight = -6.083493012144512e-210
      PaperSize = 9
      LeftMargin = -1.4916681462400413e-154
      RightMargin = -1.4916681462400413e-154
      TopMargin = -1.4916681462400413e-154
      BottomMargin = -1.4916681462400413e-154
      OnBeforePrint = 'Page1OnBeforePrint'
      object bHeader: TfrxHeader
        Height = -5.081401752486278e-197
        Top = -1.5849810117082512e-52
        Width = -1.7957132885796112e-60
        ReprintOnNewPage = True
        object HeaderMemo: TfrxMemoView
          Left = -0.0
          Width = -2.5581481343098213e+80
          Height = -5.081401752486278e-197
          OnBeforePrint = 'MasterData2OnBeforePrint'
          DataSet = frxdHeader
          DataSetName = 'frxdHeader'
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = ['[header]']
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object bTitle: TfrxReportTitle
        Height = -1.3726088041763537e+296
        Top = -5.694733964134864e-167
        Width = -1.7957132885796112e-60
        object mTitle: TfrxMemoView
          Left = -0.0
          Top = -1.2085793209879134e-109
          Width = -1.1868700036780088e-63
          Height = -3.1084117212581763e+150
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = ['Report title']
          ParentFont = False
        end
      end
      object bData: TfrxMasterData
        Height = -5.081401752486278e-197
        Top = -4.158619671048663e-220
        Width = -1.7957132885796112e-60
        DataSet = frxdData
        DataSetName = 'frxdData'
        RowCount = 0
        Stretched = True
        object CellMemo: TfrxMemoView
          Width = -2.5581481343098213e+80
          Height = -5.081401752486278e-197
          OnBeforePrint = 'MasterData2OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxdHeader
          DataSetName = 'frxdHeader'
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = ['[cell]']
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = -7.2792804016404025e-295
        Left = -0.0
        Vertical = True
        Width = -8.026685219779706e+99
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = frxdHeader
        DataSetName = 'frxdHeader'
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = -2.2438394294166002e-51
        Top = -5.063623495144114e+144
        Width = -1.7957132885796112e-60
        object mPageNum: TfrxSysMemoView
          Left = -0.0
          Top = -2.2192620610341246e-301
          Width = -1.1868700036780088e-63
          Height = -5.081401752486278e-197
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = ['ftTop']
          HAlign = haRight
          Memo.UTF8 = ['[PAGE#]']
          ParentFont = False
        end
      end
    end
  end
  object frxdData: TfrxDBDataset
    UserName = 'frxdData'
    CloseDataSource = False
    DataSource = DS
    Left = 24
    Top = 136
  end
  object frxdHeader: TfrxUserDataSet
    UserName = 'frxdHeader'
    OnCheckEOF = frxdHeaderCheckEOF
    Left = 24
    Top = 166
  end
  object frxTXTExport1: TfrxTXTExport
    UseFileCache = True
    ShowProgress = True
    ScaleWidth = -0.0
    ScaleHeight = -0.0
    Borders = False
    Pseudogrpahic = False
    PageBreaks = True
    OEMCodepage = False
    EmptyLines = False
    LeadSpaces = False
    PrintAfter = False
    PrinterDialog = True
    UseSavedProps = True
    Left = 142
    Top = 170
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    FixedWidth = True
    Background = False
    Left = 174
    Top = 170
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    Left = 206
    Top = 170
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    Background = True
    Creator = 'FastReport®'
    Left = 238
    Top = 170
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    Left = 272
    Top = 168
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    Left = 310
    Top = 170
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    Left = 142
    Top = 202
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    Left = 174
    Top = 202
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport®'
    Subject = 'FastReport® PDF export'
    Background = False
    Creator = 'FastReport® (http://www.fast-report.com)'
    HTMLTags = True
    Left = 214
    Top = 202
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 254
    Top = 202
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    Separator = ';'
    OEMCodepage = False
    Left = 286
    Top = 202
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    Left = 326
    Top = 202
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    Left = 358
    Top = 202
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = -1.4916681462400413e-154
    DefaultRightMargin = -1.4916681462400413e-154
    DefaultTopMargin = -1.4916681462400413e-154
    DefaultBottomMargin = -1.4916681462400413e-154
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 56
    Top = 170
  end
  object mQuery: TmQuery
    SQL.Strings = ['select * from customer', 'where custno = :custno']
    RequestLive = True
    CursorType = ctFwdOnlyCursor
    Params.Data = {21 bytes}
    OnFilterRecord = DatasetFilterRecord
    Left = 280
    Top = 121
  end
  object mtTrace: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    AfterScroll = DatasetAfterScroll
    OnFilterRecord = mtBlockFilterRecord
    Left = 184
    Top = 113
    object mtTraceKey: TIntegerField
      DisplayLabel = '#'
      FieldName = 'Key'
    end
    object mtTraceTimeStamp: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'TimeStamp'
    end
    object mtTraceEvent: TStringField
      FieldKind = fkCalculated
      FieldName = 'Event'
      Size = 50
      Calculated = True
    end
    object mtTraceUser: TStringField
      DisplayWidth = 20
      FieldName = 'User'
      Size = 31
    end
    object mtTraceRole: TStringField
      DisplayWidth = 20
      FieldName = 'Role'
      Size = 31
    end
    object mtTraceCharset: TStringField
      DisplayWidth = 20
      FieldName = 'Charset'
      Size = 32
    end
    object mtTraceTCPV4: TStringField
      DisplayLabel = 'TCPv4'
      FieldName = 'TCPV4'
      Size = 15
    end
    object mtTraceProcessName: TMemoField
      DisplayLabel = 'Process name'
      FieldName = 'ProcessName'
      BlobType = ftMemo
    end
    object mtTraceProcessID: TIntegerField
      DisplayLabel = 'Process ID'
      FieldName = 'ProcessID'
    end
    object mtTraceStmtID: TIntegerField
      DisplayLabel = 'Statement ID'
      FieldName = 'StatementID'
    end
    object mtTraceTransID: TIntegerField
      DisplayLabel = 'Transaction ID'
      FieldName = 'TransactionID'
    end
    object mtTraceTransactionParams: TStringField
      DisplayLabel = 'Transaction params'
      DisplayWidth = 30
      FieldName = 'TransactionParams'
      Size = 50
    end
    object mtTraceTime: TIntegerField
      DisplayLabel = 'Time (ms)'
      FieldName = 'Time'
    end
    object mtTraceRecsFetched: TIntegerField
      DisplayLabel = 'Records fetched'
      FieldName = 'RecsFetched'
    end
    object mtTraceReads: TIntegerField
      FieldName = 'Reads'
    end
    object mtTraceWrites: TIntegerField
      FieldName = 'Writes'
    end
    object mtTraceFetches: TIntegerField
      FieldName = 'Fetches'
    end
    object mtTraceMarks: TIntegerField
      FieldName = 'Marks'
    end
    object mtTraceStatementText: TMemoField
      DisplayLabel = 'Statement text'
      FieldName = 'StatementText'
      BlobType = ftMemo
    end
    object mtTraceStatementPlan: TMemoField
      DisplayLabel = 'Statement plan'
      FieldName = 'StatementPlan'
      BlobType = ftMemo
    end
    object mtTraceTriggerName: TStringField
      DisplayLabel = 'Trigger name'
      FieldName = 'TriggerName'
      Size = 32
    end
    object mtTraceTriggerTable: TStringField
      DisplayLabel = 'Trigger table'
      FieldName = 'TriggerTable'
      Size = 32
    end
    object mtTraceTriggerEvent: TMemoField
      DisplayLabel = 'Trigger event'
      FieldName = 'TriggerEvent'
      BlobType = ftMemo
    end
    object mtTraceProcedureName: TMemoField
      DisplayLabel = 'Procedure name'
      FieldName = 'ProcedureName'
      BlobType = ftMemo
    end
    object mtTraceErrors: TMemoField
      FieldName = 'Errors'
      BlobType = ftMemo
    end
    object mtTraceSrcOffset: TLargeintField
      FieldName = 'SrcOffset'
      Visible = False
    end
    object mtTraceSrcLength: TIntegerField
      FieldName = 'SrcLength'
      Visible = False
    end
  end
end
