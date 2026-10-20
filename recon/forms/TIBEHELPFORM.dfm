object IBEHelpForm: TIBEHelpForm
  Left = 304
  Top = 197
  HelpContext = 13300
  AutoScroll = False
  Caption = 'IBExpert Help'
  ClientHeight = 513
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BottomSplitter: TdfsSplitter
    Left = 0
    Top = 382
    Width = 826
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    Visible = False
    OnCanResize = BottomSplitterCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 26
    Width = 826
    Height = 356
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsBrowse
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
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsBrowse: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 826
      Height = 331
      PageAppearance.BorderColor = 12697533
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
      object WB: TWebBrowser
        Left = 2
        Top = 2
        Width = 822
        Height = 327
        Align = alClient
        TabOrder = 0
        OnCommandStateChange = WBCommandStateChange
        OnDownloadBegin = WBDownloadBegin
        OnDownloadComplete = WBDownloadComplete
        OnTitleChange = WBTitleChange
        OnNavigateComplete2 = WBNavigateComplete2
        ControlData = {156 bytes}
      end
    end
    object tsEdit: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 826
      Height = 331
      Caption = 'Edit'
      PageAppearance.BorderColor = 12697533
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
      object mw: TmwCustomEdit
        Left = 2
        Top = 2
        Width = 822
        Height = 327
        Cursor = crIBeam
        Align = alClient
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        HighlightCurrentLine = False
        CurrentLineColor = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        HighLighter = hkHTMLSyn1
        Keystrokes = <
          item
            ShortCut = 38
            ShortCut2 = 0
            Command = ecUp
          end
          item
            ShortCut = 8230
            ShortCut2 = 0
            Command = ecSelUp
          end
          item
            ShortCut = 16422
            ShortCut2 = 0
            Command = ecScrollUp
          end
          item
            ShortCut = 40
            ShortCut2 = 0
            Command = ecDown
          end
          item
            ShortCut = 8232
            ShortCut2 = 0
            Command = ecSelDown
          end
          item
            ShortCut = 16424
            ShortCut2 = 0
            Command = ecScrollDown
          end
          item
            ShortCut = 37
            ShortCut2 = 0
            Command = ecLeft
          end
          item
            ShortCut = 8229
            ShortCut2 = 0
            Command = ecSelLeft
          end
          item
            ShortCut = 16421
            ShortCut2 = 0
            Command = ecWordLeft
          end
          item
            ShortCut = 24613
            ShortCut2 = 0
            Command = ecSelWordLeft
          end
          item
            ShortCut = 39
            ShortCut2 = 0
            Command = ecRight
          end
          item
            ShortCut = 8231
            ShortCut2 = 0
            Command = ecSelRight
          end
          item
            ShortCut = 16423
            ShortCut2 = 0
            Command = ecWordRight
          end
          item
            ShortCut = 24615
            ShortCut2 = 0
            Command = ecSelWordRight
          end
          item
            ShortCut = 34
            ShortCut2 = 0
            Command = ecPageDown
          end
          item
            ShortCut = 8226
            ShortCut2 = 0
            Command = ecSelPageDown
          end
          item
            ShortCut = 16418
            ShortCut2 = 0
            Command = ecPageBottom
          end
          item
            ShortCut = 24610
            ShortCut2 = 0
            Command = ecSelPageBottom
          end
          item
            ShortCut = 33
            ShortCut2 = 0
            Command = ecPageUp
          end
          item
            ShortCut = 8225
            ShortCut2 = 0
            Command = ecSelPageUp
          end
          item
            ShortCut = 16417
            ShortCut2 = 0
            Command = ecPageTop
          end
          item
            ShortCut = 24609
            ShortCut2 = 0
            Command = ecSelPageTop
          end
          item
            ShortCut = 36
            ShortCut2 = 0
            Command = ecLineStart
          end
          item
            ShortCut = 8228
            ShortCut2 = 0
            Command = ecSelLineStart
          end
          item
            ShortCut = 16420
            ShortCut2 = 0
            Command = ecEditorTop
          end
          item
            ShortCut = 24612
            ShortCut2 = 0
            Command = ecSelEditorTop
          end
          item
            ShortCut = 35
            ShortCut2 = 0
            Command = ecLineEnd
          end
          item
            ShortCut = 8227
            ShortCut2 = 0
            Command = ecSelLineEnd
          end
          item
            ShortCut = 16419
            ShortCut2 = 0
            Command = ecEditorBottom
          end
          item
            ShortCut = 24611
            ShortCut2 = 0
            Command = ecSelEditorBottom
          end
          item
            ShortCut = 45
            ShortCut2 = 0
            Command = ecToggleMode
          end
          item
            ShortCut = 16429
            ShortCut2 = 0
            Command = ecCopy
          end
          item
            ShortCut = 8237
            ShortCut2 = 0
            Command = ecPaste
          end
          item
            ShortCut = 46
            ShortCut2 = 0
            Command = ecDeleteChar
          end
          item
            ShortCut = 8238
            ShortCut2 = 0
            Command = ecCut
          end
          item
            ShortCut = 8
            ShortCut2 = 0
            Command = ecDeleteLastChar
          end
          item
            ShortCut = 16392
            ShortCut2 = 0
            Command = ecDeleteLastWord
          end
          item
            ShortCut = 32776
            ShortCut2 = 0
            Command = ecUndo
          end
          item
            ShortCut = 40968
            ShortCut2 = 0
            Command = ecRedo
          end
          item
            ShortCut = 13
            ShortCut2 = 0
            Command = ecLineBreak
          end
          item
            ShortCut = 16449
            ShortCut2 = 0
            Command = ecSelectAll
          end
          item
            ShortCut = 16451
            ShortCut2 = 0
            Command = ecCopy
          end
          item
            ShortCut = 24649
            ShortCut2 = 0
            Command = ecBlockIndent
          end
          item
            ShortCut = 16461
            ShortCut2 = 0
            Command = ecLineBreak
          end
          item
            ShortCut = 16462
            ShortCut2 = 0
            Command = ecInsertLine
          end
          item
            ShortCut = 16468
            ShortCut2 = 0
            Command = ecDeleteWord
          end
          item
            ShortCut = 24661
            ShortCut2 = 0
            Command = ecBlockUnindent
          end
          item
            ShortCut = 16470
            ShortCut2 = 0
            Command = ecPaste
          end
          item
            ShortCut = 16472
            ShortCut2 = 0
            Command = ecCut
          end
          item
            ShortCut = 16473
            ShortCut2 = 0
            Command = ecDeleteLine
          end
          item
            ShortCut = 24665
            ShortCut2 = 0
            Command = ecDeleteEOL
          end
          item
            ShortCut = 16474
            ShortCut2 = 0
            Command = ecUndo
          end
          item
            ShortCut = 24666
            ShortCut2 = 0
            Command = ecRedo
          end
          item
            ShortCut = 16432
            ShortCut2 = 0
            Command = ecGotoMarker0
          end
          item
            ShortCut = 16433
            ShortCut2 = 0
            Command = ecGotoMarker1
          end
          item
            ShortCut = 16434
            ShortCut2 = 0
            Command = ecGotoMarker2
          end
          item
            ShortCut = 16435
            ShortCut2 = 0
            Command = ecGotoMarker3
          end
          item
            ShortCut = 16436
            ShortCut2 = 0
            Command = ecGotoMarker4
          end
          item
            ShortCut = 16437
            ShortCut2 = 0
            Command = ecGotoMarker5
          end
          item
            ShortCut = 16438
            ShortCut2 = 0
            Command = ecGotoMarker6
          end
          item
            ShortCut = 16439
            ShortCut2 = 0
            Command = ecGotoMarker7
          end
          item
            ShortCut = 16440
            ShortCut2 = 0
            Command = ecGotoMarker8
          end
          item
            ShortCut = 16441
            ShortCut2 = 0
            Command = ecGotoMarker9
          end
          item
            ShortCut = 24624
            ShortCut2 = 0
            Command = ecSetMarker0
          end
          item
            ShortCut = 24625
            ShortCut2 = 0
            Command = ecSetMarker1
          end
          item
            ShortCut = 24626
            ShortCut2 = 0
            Command = ecSetMarker2
          end
          item
            ShortCut = 24627
            ShortCut2 = 0
            Command = ecSetMarker3
          end
          item
            ShortCut = 24628
            ShortCut2 = 0
            Command = ecSetMarker4
          end
          item
            ShortCut = 24629
            ShortCut2 = 0
            Command = ecSetMarker5
          end
          item
            ShortCut = 24630
            ShortCut2 = 0
            Command = ecSetMarker6
          end
          item
            ShortCut = 24631
            ShortCut2 = 0
            Command = ecSetMarker7
          end
          item
            ShortCut = 24632
            ShortCut2 = 0
            Command = ecSetMarker8
          end
          item
            ShortCut = 24633
            ShortCut2 = 0
            Command = ecSetMarker9
          end
          item
            ShortCut = 24654
            ShortCut2 = 0
            Command = ecNormalSelect
          end
          item
            ShortCut = 24643
            ShortCut2 = 0
            Command = ecColumnSelect
          end
          item
            ShortCut = 24652
            ShortCut2 = 0
            Command = ecLineSelect
          end
        >
        Lines.Strings = ['mw']
        MaxUndo = 10
        ReadOnly = False
        WantTabs = False
      end
    end
  end
  object dockBottom: TTBDock
    Left = 0
    Top = 386
    Width = 826
    Height = 127
    Position = dpBottom
    object tb: TTBToolWindow
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'tb'
      CloseButtonWhenDocked = True
      ClientAreaHeight = 123
      ClientAreaWidth = 808
      DragHandleStyle = dhDouble
      FullSize = True
      TabOrder = 0
      Visible = False
      OnDockChanged = tbDockChanged
      OnVisibleChanged = tbDockChanged
      object LinksTL: TdxTreeList
        Left = 0
        Top = 18
        Width = 808
        Height = 105
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
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowButtons = False
        ShowLines = False
        ShowRoot = False
        GridLineColor = clSilver
        OnDblClick = LinksTLDblClick
        object tlcTitle: TdxTreeListColumn
          Caption = 'Title'
          DisableEditor = True
          Sorted = csUp
          Width = 305
          BandIndex = 0
          RowIndex = 0
        end
        object tlcMainTitle: TdxTreeListColumn
          Caption = 'Location'
          Width = 450
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFile: TdxTreeListColumn
          Visible = False
          Width = 162
          BandIndex = 0
          RowIndex = 0
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 808
        Height = 18
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = ' Index results'
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = ['fsBold']
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object hkHTMLSyn1: ThkHTMLSyn
    DefaultFilter = 'HTML Document (*.htm,*.html)|*.htm;*.html'
    AndAttri.Background = clWindow
    AndAttri.Foreground = clMaroon
    AndAttri.Style = ['fsBold']
    ASPAttri.Background = clYellow
    ASPAttri.Foreground = clBlack
    ASPAttri.Style = []
    CommentAttri.Background = clWindow
    CommentAttri.Foreground = clWindowText
    CommentAttri.Style = []
    IdentifierAttri.Background = clWindow
    IdentifierAttri.Foreground = clWindowText
    IdentifierAttri.Style = ['fsBold']
    KeyAttri.Background = clWindow
    KeyAttri.Foreground = 16711808
    KeyAttri.Style = ['fsBold']
    SpaceAttri.Background = clWindow
    SpaceAttri.Foreground = clWindowText
    SpaceAttri.Style = []
    SymbolAttri.Background = clWindow
    SymbolAttri.Foreground = clWindowText
    SymbolAttri.Style = ['fsBold']
    TextAttri.Background = clWindow
    TextAttri.Foreground = clWindowText
    TextAttri.Style = []
    UndefKeyAttri.Background = clWindow
    UndefKeyAttri.Foreground = clRed
    UndefKeyAttri.Style = ['fsBold']
    ValueAttri.Background = clWindow
    ValueAttri.Foreground = 16744448
    ValueAttri.Style = []
    Left = 136
    Top = 39
  end
  object bm: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        Caption = 'Navigation'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Navigation'
        NotDocking = ['dsNone', 'dsLeft', 'dsRight', 'dsBottom']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRecentItems = False
        UseRestSpace = True
        Visible = True
        WholeRow = True
      end
    >
    Categories.Strings = ['Default']
    Categories.ItemsVisibles = [2]
    Categories.Visibles = [True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 288
    Top = 111
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = actNavigateBack
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actNavigateForward
      Category = 0
    end
    object cbHelpHistory: TdxBarCombo
      Align = iaClient
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      OnChange = cbHelpHistoryChange
      Width = 600
      DropDownCount = 20
      ItemIndex = -1
    end
    object dxBarButton3: TdxBarButton
      Action = actStop
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    Left = 448
    Top = 81
    object actNavigateBack: TAction
      Caption = 'actNavigateBack'
      ImageIndex = 12
      OnExecute = actNavigateBackExecute
    end
    object actNavigateForward: TAction
      Caption = 'actNavigateForward'
      ImageIndex = 13
      OnExecute = actNavigateForwardExecute
    end
    object actReturn: TAction
      Caption = 'actReturn'
      ShortCut = 112
      OnExecute = actReturnExecute
    end
    object actStop: TAction
      Caption = 'Stop'
      Hint = 'Stop'
      ImageIndex = 147
      OnExecute = actStopExecute
    end
  end
end
