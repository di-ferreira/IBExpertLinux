object dxfmPreviewWdxBar: TdxfmPreviewWdxBar
  Left = 310
  Top = 140
  Width = 779
  Height = 463
  Caption = 'Print Preview'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {318 bytes}
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poDefault
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarManager: TdxBarManager
    AutoHideEmptyBars = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        Caption = 'MenuBar'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 0
        FloatTop = 0
        FloatClientWidth = 0
        FloatClientHeight = 0
        IsMainMenu = True
        ItemLinks = None
        MultiLine = True
        Name = 'Build-In Menus'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'Standard'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 23
        DockingStyle = dsTop
        FloatLeft = 332
        FloatTop = 321
        FloatClientWidth = 554
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Standard'
        OneOnRow = True
        Row = 1
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        AllowClose = False
        Caption = 'Header and Footer'
        DockedDockingStyle = dsTop
        DockedLeft = 50
        DockedTop = 0
        DockingStyle = dsNone
        FloatLeft = 411
        FloatTop = 266
        FloatClientWidth = 461
        FloatClientHeight = 49
        Hidden = True
        ItemLinks = None
        Name = 'Header and Footer'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'Shortcut Menus'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsNone
        FloatLeft = 293
        FloatTop = 319
        FloatClientWidth = 237
        FloatClientHeight = 19
        Hidden = True
        ItemLinks = None
        Name = 'Shortcut Menus'
        NotDocking = ['dsLeft', 'dsTop', 'dsRight', 'dsBottom']
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        Visible = False
        WholeRow = False
      end
    >
    Categories.Strings = ['File', 'Edit', 'Insert', 'View', 'Format', 'Zoom', 'Tools', 'Go', 'Help', 'Built-in Menus', 'Shortcut Menus', 'New Menu']
    Categories.ItemsVisibles = [2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
    Categories.Visibles = [True, True, True, True, True, True, True, True, True, True, False, True]
    Images = ilToolBar
    LargeImages = ilToolBar
    MenusShowRecentItemsFirst = False
    PopupMenuLinks = <
      item
        PopupMenu = pmPreview
      end
    >
    ShowShortCutInHint = True
    StoreInRegistry = True
    StretchGlyphs = False
    Style = bmsFlat
    UseSystemFont = True
    OnBarVisibleChange = dxBarManagerBarVisibleChange
    OnHideCustomizingForm = dxBarManagerHideCustomizingForm
    OnShowCustomizingForm = dxBarManagerShowCustomizingForm
    Left = 63
    Top = 197
    DockControlHeights = [0, 0, 49, 0]
    object bbFile: TdxBarSubItem
      Caption = '&File'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = bbFileDesign
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbFilePrintDialog
          Visible = True
        end
        item
          Item = bbFilePageSetup
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbFileExit
          Visible = True
        end
      >
    end
    object bbFileDesign: TdxBarButton
      Caption = '&Design...'
      Category = 0
      Hint = 'ReportDesign|'
      Visible = ivNever
      ImageIndex = 0
      ShortCut = 16452
      OnClick = DesignClick
    end
    object bbFilePrint: TdxBarButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivNever
      ImageIndex = 1
      OnClick = PrintClick
    end
    object bbEdit: TdxBarSubItem
      Caption = '&Edit'
      Category = 9
      Visible = ivNever
      ItemLinks = <
        item
          Item = bbEditFind
          Visible = True
        end
        item
          Item = bbEditFindNext
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbEditReplace
          Visible = True
        end
      >
    end
    object bbViewMargins: TdxBarButton
      Caption = '&Margins'
      Category = 3
      Hint = 'Margins'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      ShortCut = 16461
      OnClick = bbViewMarginsClick
    end
    object bbZoomPercent100: TdxBarButton
      Caption = '&Percent 100'
      Category = 5
      Hint = 'Zoom 100 %'
      Visible = ivAlways
      ImageIndex = 5
      ShortCut = 16604
      OnClick = ZoomClick
    end
    object bbZoomPageWidth: TdxBarButton
      Tag = 1
      Caption = '&Fit To Window'
      Category = 5
      Hint = 'Zoom Page Width'
      Visible = ivAlways
      ImageIndex = 6
      ShortCut = 16432
      OnClick = ZoomClick
    end
    object bbZoomWholePage: TdxBarButton
      Tag = 2
      Caption = '&One Page'
      Category = 5
      Hint = 'Zoom One Page'
      Visible = ivAlways
      ImageIndex = 7
      ShortCut = 16433
      OnClick = ZoomClick
    end
    object bbZoomTwoPages: TdxBarButton
      Tag = 3
      Caption = '&Two Page'
      Category = 5
      Hint = 'Zoom Two Page'
      Visible = ivAlways
      ImageIndex = 8
      ShortCut = 16434
      OnClick = ZoomClick
    end
    object bbInsert: TdxBarSubItem
      Caption = '&Insert'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = bsiInsertHFAutoText
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbInsertHFPageNumber
          Visible = True
        end
        item
          Item = bbInsertHFTotalPages
          Visible = True
        end
        item
          Item = bbInsertHFPageOfPages
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbInsertHFDateTime
          Visible = True
        end
        item
          Item = bbInsertHFDate
          Visible = True
        end
        item
          Item = bbInsertHFTime
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbInsertHFUserName
          Visible = True
        end
        item
          Item = bbInsertHFMachineName
          Visible = True
        end
      >
    end
    object bbGoToFirstPage: TdxBarButton
      Caption = '&First Page'
      Category = 7
      Hint = 'Go to First Page'
      Visible = ivAlways
      ImageIndex = 13
      ShortCut = 36
      OnClick = GoToPageClick
    end
    object bbGoToPrevPage: TdxBarButton
      Tag = 1
      Caption = '&Previous Page'
      Category = 7
      Hint = 'Go to Prev Page'
      Visible = ivAlways
      ImageIndex = 14
      ShortCut = 33
      OnClick = GoToPageClick
    end
    object bbGoToNextPage: TdxBarButton
      Tag = 2
      Caption = '&Next Page'
      Category = 7
      Hint = 'Go to Next Page'
      Visible = ivAlways
      ImageIndex = 15
      ShortCut = 34
      OnClick = GoToPageClick
    end
    object bbGoToLastPage: TdxBarButton
      Tag = 3
      Caption = '&Last Page'
      Category = 7
      Hint = 'Go to Last Page'
      Visible = ivAlways
      ImageIndex = 16
      ShortCut = 35
      OnClick = GoToPageClick
    end
    object bbView: TdxBarSubItem
      Caption = '&View'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = bbViewMargins
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbViewMarginBar
          Visible = True
        end
        item
          Item = bbViewStatusBar
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbViewToolbars
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbViewZoom
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbViewPageHeaders
          Visible = True
        end
        item
          Item = bbViewPageFooters
          Visible = True
        end
      >
    end
    object bbZoomFourPages: TdxBarButton
      Tag = 4
      Caption = 'Four Page'
      Category = 5
      Hint = 'Zoom Four Page'
      Visible = ivAlways
      ImageIndex = 9
      ShortCut = 16436
      OnClick = ZoomClick
    end
    object bbZoomMultiplePages: TdxBarButton
      Caption = '&Multiple Pages'
      Category = 5
      Hint = 'Multiple Pages'
      Visible = ivAlways
      ImageIndex = 10
      OnClick = bbZoomMultiplePagesClick
    end
    object bbZoomWidenToSourceWidth: TdxBarButton
      Tag = 5
      Caption = 'Widen To Source Width'
      Category = 5
      Hint = 'Widen to source width'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = ZoomClick
    end
    object seActivePage: TdxBarSpinEdit
      Caption = '&Active Page :'
      Category = 7
      Hint = 'Active Page :'
      Visible = ivAlways
      OnChange = seActivePageChange
      Width = 100
      OnButtonClick = seActivePageButtonClick
    end
    object cbxPredefinedZoom: TdxBarImageCombo
      Caption = '&Zoom :'
      Category = 5
      Hint = 'Zoom :'
      Visible = ivAlways
      Text = '100%'
      OnChange = cbxPredefinedZoomChange
      Glyph.Data = {250 bytes}
      Width = 100
      OnClick = cbxPredefinedZoomClick
      ShowEditor = True
      Images = ilToolBar
      Items.Strings = ['500%', '200%', '150%', '100%', '75%', '50%', '25%', '10%', 'Page Width', 'Whole Page', 'Two Pages', 'Four Pages', 'Widen To Source Width']
      ItemIndex = 3
      ImageIndexes = [-1, -1, -1, 5, -1, -1, -1, -1, 6, 7, 8, 9, 11]
    end
    object bbFilePrintDialog: TdxBarButton
      Tag = 1
      Caption = '&Print...'
      Category = 0
      Hint = 'Print Dialog'
      Visible = ivNever
      ImageIndex = 2
      ShortCut = 16464
      OnClick = PrintClick
    end
    object bbZoomSetup: TdxBarButton
      Caption = '&Setup ...'
      Category = 5
      Hint = 'Setup '
      Visible = ivAlways
      PaintStyle = psCaption
      OnClick = bbZoomSetupClick
    end
    object bbFilePageSetup: TdxBarButton
      Tag = 2
      Caption = 'Page set&up...'
      Category = 0
      Hint = 'Page Setup '
      Visible = ivNever
      ButtonStyle = bsDropDown
      DropDownMenu = pmPrintStyles
      ImageIndex = 3
      OnClick = PageSetupClick
    end
    object bbToolsOptions: TdxBarButton
      Caption = '&Options...'
      Category = 6
      Hint = 'Options'
      Visible = ivAlways
      OnClick = bbToolsOptionsClick
    end
    object bbViewMarginBar: TdxBarButton
      Caption = 'Margins &Status Bar'
      Category = 3
      Hint = 'Margins Status Bar'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbViewMarginBarClick
    end
    object bliPrintStyles: TdxBarListItem
      Caption = 'Print Styles'
      Category = 0
      Visible = ivAlways
      ShowCheck = True
      ShowNumbers = False
    end
    object bbViewStatusBar: TdxBarButton
      Caption = '&Pages StatusBar'
      Category = 3
      Hint = 'Pages StatusBar'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbViewStatusBarClick
    end
    object bbHelpTopics: TdxBarButton
      Caption = '&Help Topics...'
      Category = 8
      Hint = 'Help'
      Visible = ivAlways
      ImageIndex = 17
      OnClick = HelpClick
    end
    object bbViewToolbars: TdxBarToolbarsListItem
      Caption = '&Toolbars'
      Category = 3
      Visible = ivAlways
    end
    object bsiShortcutPreview: TdxBarSubItem
      Caption = 'Preview'
      Category = 10
      Visible = ivInCustomizing
      ItemLinks = []
    end
    object bsiInsertHFAutoText: TdxBarSubItem
      Caption = 'AutoText'
      Category = 2
      Visible = ivNever
      ItemLinks = <
        item
          Item = bbInsertEditAutoText
          Visible = True
        end
        item
          BeginGroup = True
          Item = bliInsertAutoTextEntries
          Visible = True
        end
      >
    end
    object bbInsertEditAutoText: TdxBarButton
      Caption = 'Edit AutoTe&xt Entries ...'
      Category = 2
      Hint = 'Edit AutoText Entries '
      Visible = ivNever
      ImageIndex = 33
    end
    object bliInsertAutoTextEntries: TdxBarListItem
      Caption = 'AutoText Entries'
      Category = 2
      Visible = ivNever
      OnClick = bliInsertAutoTextEntriesClick
    end
    object bbInsertHFPageNumber: TdxBarButton
      Caption = '&Page Number'
      Category = 2
      Hint = 'Insert Page Number'
      Visible = ivAlways
      ImageIndex = 19
      ShortCut = 41040
      OnClick = InsertHFClick
    end
    object bbInsertHFTotalPages: TdxBarButton
      Tag = 1
      Caption = '&Number of Pages'
      Category = 2
      Hint = 'Insert Number of Pages'
      Visible = ivAlways
      ImageIndex = 21
      OnClick = InsertHFClick
    end
    object bbInsertHFPageOfPages: TdxBarButton
      Tag = 2
      Caption = 'Page Number Of Pages'
      Category = 2
      Hint = 'Insert Page Number Of Pages'
      Visible = ivAlways
      ImageIndex = 20
      OnClick = InsertHFClick
    end
    object bbInsertHFDateTime: TdxBarButton
      Tag = 3
      Caption = 'Date and Time'
      Category = 2
      Hint = 'Insert Date and Time'
      Visible = ivAlways
      ImageIndex = 23
      OnClick = InsertHFClick
    end
    object bbInsertHFDate: TdxBarButton
      Tag = 4
      Caption = '&Date'
      Category = 2
      Hint = 'Insert Date'
      Visible = ivAlways
      ImageIndex = 24
      ShortCut = 41028
      OnClick = InsertHFClick
    end
    object bbInsertHFTime: TdxBarButton
      Tag = 5
      Caption = '&Time'
      Category = 2
      Hint = 'Insert Time'
      Visible = ivAlways
      ImageIndex = 25
      ShortCut = 41044
      OnClick = InsertHFClick
    end
    object bbInsertHFUserName: TdxBarButton
      Tag = 6
      Caption = '&User Name'
      Category = 2
      Hint = 'Insert User Name'
      Visible = ivAlways
      ImageIndex = 27
      OnClick = InsertHFClick
    end
    object bbInsertHFMachineName: TdxBarButton
      Tag = 7
      Caption = '&Machine Name'
      Category = 2
      Hint = 'Insert Machine Name'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = InsertHFClick
    end
    object bbViewZoom: TdxBarSubItem
      Caption = 'Zoom'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = bbZoomPercent100
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbZoomPageWidth
          Visible = True
        end
        item
          Item = bbZoomWholePage
          Visible = True
        end
        item
          Item = bbZoomTwoPages
          Visible = True
        end
        item
          Item = bbZoomFourPages
          Visible = True
        end
        item
          Item = bbZoomMultiplePages
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbZoomWidenToSourceWidth
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbZoomSetup
          Visible = True
        end
      >
    end
    object bbViewPages: TdxBarSubItem
      Caption = 'Pages'
      Category = 9
      Visible = ivNever
      ItemLinks = []
    end
    object bbFormat: TdxBarSubItem
      Caption = '&Format'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = bbFormatHeaderAndFooter
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbFormatPageNumbering
          Visible = True
        end
        item
          Item = bbFormatDateTime
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbFormatShrinkToPageWidth
          Visible = True
        end
        item
          Item = bbFormatShowHideEmptyPages
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbFormatPageBackground
          Visible = True
        end
      >
    end
    object bbFormatHeaderAndFooter: TdxBarButton
      Caption = '&Header and Footer'
      Category = 4
      Hint = 'Header and Footer'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      OnClick = bbFormatHeaderAndFooterClick
    end
    object bbFormatDateTime: TdxBarButton
      Caption = 'Date and &Time...'
      Category = 4
      Hint = 'Date and Time'
      Visible = ivAlways
      ImageIndex = 26
      OnClick = bbFormatDateTimeClick
    end
    object bbFormatPageNumbering: TdxBarButton
      Caption = 'Page &Numbering...'
      Category = 4
      Hint = 'Page Numbering'
      Visible = ivAlways
      ImageIndex = 22
      OnClick = bbFormatPageNumbersClick
    end
    object bbEditFind: TdxBarButton
      Caption = 'Find...'
      Category = 1
      Hint = 'Find'
      Visible = ivNever
      ShortCut = 16454
    end
    object bbFormatPageBackground: TdxBarButton
      Caption = 'Page Bac&kground...'
      Category = 4
      Hint = 'Background'
      Visible = ivAlways
      ImageIndex = 4
      ShortCut = 16459
      OnClick = PageBackgroundClick
    end
    object bbFormatShrinkToPageWidth: TdxBarButton
      Caption = '&Shrink To Page'
      Category = 4
      Hint = 'Shrink To Page'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      ImageIndex = 12
      OnClick = bbFormatShrinkToPageWidthClick
    end
    object bbEditFindNext: TdxBarButton
      Caption = 'Find &Next'
      Category = 1
      Hint = 'Find Next'
      Visible = ivNever
      ShortCut = 114
    end
    object bbEditReplace: TdxBarButton
      Caption = '&Replace...'
      Category = 1
      Hint = 'Replace'
      Visible = ivNever
      ShortCut = 16466
    end
    object bbFormatShowHideEmptyPages: TdxBarButton
      Caption = 'Show/Hide EmptyPages'
      Category = 4
      Hint = 'Show/Hide Empty Pages'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbFormatShowHideEmptyPagesClick
    end
    object bbViewPageHeaders: TdxBarButton
      Caption = 'Page &Headers'
      Category = 3
      Hint = 'Page Headers'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbViewPageHeadersClick
    end
    object bbFormatHFBackground: TdxBarButton
      Caption = 'Header and Footer Background ...'
      Category = 4
      Hint = 'Header and Footer Background '
      Visible = ivAlways
      ImageIndex = 34
      OnClick = bbFormatHFBackgroundClick
    end
    object bbViewPageFooters: TdxBarButton
      Caption = 'Page &Footers'
      Category = 3
      Hint = 'Page Footers'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbViewPageFootersClick
    end
    object bbToolsCustomize: TdxBarButton
      Caption = '&Customize...'
      Category = 6
      Hint = 'Customize'
      Visible = ivAlways
      OnClick = bbToolsCustomizeClick
    end
    object bbViewSwitchToLeftPart: TdxBarButton
      Caption = 'Switch To Left Part'
      Category = 3
      Hint = 'Switch To Left Part'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      ImageIndex = 30
      OnClick = SwitchPartClick
    end
    object bbGoToPage: TdxBarSubItem
      Caption = '&Go'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = bbGoToFirstPage
          Visible = True
        end
        item
          Item = bbGoToPrevPage
          Visible = True
        end
        item
          BeginGroup = True
          Item = seActivePage
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbGoToNextPage
          Visible = True
        end
        item
          Item = bbGoToLastPage
          Visible = True
        end
      >
    end
    object bbViewSwitchToCenterPart: TdxBarButton
      Tag = 1
      Caption = 'Switch To Center Part'
      Category = 3
      Hint = 'Switch To Center Part'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 31
      OnClick = SwitchPartClick
    end
    object bbHelpAbout: TdxBarButton
      Caption = '&About...'
      Category = 8
      Hint = 'About'
      Visible = ivNever
    end
    object bbViewSwitchToRightPart: TdxBarButton
      Tag = 2
      Caption = 'Switch To Right Part'
      Category = 3
      Hint = 'Switch To Right Part'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 32
      OnClick = SwitchPartClick
    end
    object bbViewHFSwitchHeaderFooter: TdxBarButton
      Caption = '&Show Header/Footer'
      Category = 3
      Hint = 'Show Header/Footer'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      ImageIndex = 29
      OnClick = bbViewHFSwitchHeaderFooterClick
    end
    object bbViewHFClose: TdxBarButton
      Caption = '&Close'
      Category = 3
      Hint = 'Close Header and Footer'
      Visible = ivAlways
      OnClick = bbViewHFCloseClick
    end
    object bbTools: TdxBarSubItem
      Caption = '&Tools'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = bbToolsCustomize
          Visible = True
        end
        item
          Item = bbToolsOptions
          Visible = True
        end
      >
    end
    object bbHelp: TdxBarSubItem
      Caption = '&Help'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = bbHelpTopics
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbHelpAbout
          Visible = True
        end
      >
    end
    object bbFormatHFClear: TdxBarButton
      Caption = 'Clea&r Text'
      Category = 4
      Hint = 'Clear Text'
      Visible = ivAlways
      OnClick = bbFormatHFClearClick
    end
    object bsiNewMenuNewMenu: TdxBarSubItem
      Caption = 'New Item'
      Category = 11
      Visible = ivAlways
      ItemLinks = []
    end
    object bbDefinePrintStyles: TdxBarButton
      Caption = 'Define Print Styles...'
      Category = 0
      Hint = 'Define Print Styles'
      Visible = ivAlways
    end
    object bbFileExit: TdxBarButton
      Caption = '&Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      OnClick = CloseClick
    end
  end
  object ilToolBar: TImageList
    Left = 35
    Top = 197
    Bitmap = {42406 bytes}
  end
  object pmPreview: TdxBarPopupMenu
    BarManager = dxBarManager
    ItemLinks = <
      item
        Item = bbFileDesign
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbFilePageSetup
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbFormatShrinkToPageWidth
        Visible = True
      end
      item
        BeginGroup = True
        Item = cbxPredefinedZoom
        Visible = True
      end
      item
        Item = bbZoomWholePage
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbGoToFirstPage
        Visible = True
      end
      item
        Item = bbGoToPrevPage
        Visible = True
      end
      item
        BeginGroup = True
        Item = seActivePage
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbGoToNextPage
        Visible = True
      end
      item
        Item = bbGoToLastPage
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 91
    Top = 197
  end
  object MainMenu1: TMainMenu
    Left = 7
    Top = 197
  end
  object pmPrintStyles: TdxBarPopupMenu
    BarManager = dxBarManager
    ItemLinks = <
      item
        Item = bliPrintStyles
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbDefinePrintStyles
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 119
    Top = 197
  end
end
