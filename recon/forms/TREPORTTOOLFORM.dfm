object ReportToolForm: TReportToolForm
  Left = 334
  Top = 204
  Width = 910
  Height = 540
  HelpContext = 4400
  Caption = 'Report Manager'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {318 bytes}
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RightSplitter: TdfsSplitter
    Left = 882
    Top = 26
    Width = 3
    Height = 478
    Cursor = crHSplit
    Align = alRight
    ResizeStyle = rsUpdate
    OnCanResize = RightSplitterCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object LeftSplitter: TdfsSplitter
    Left = 248
    Top = 26
    Width = 3
    Height = 478
    Cursor = crHSplit
    Align = alLeft
    ResizeStyle = rsUpdate
    OnCanResize = LeftSplitterCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object PreviewP: TPanel
    Left = 251
    Top = 26
    Width = 631
    Height = 478
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Preview area'
    TabOrder = 0
  end
  object DockRight: TTBDock
    Left = 885
    Top = 26
    Width = 9
    Height = 478
    Position = dpRight
  end
  object DockLeft: TTBDock
    Left = 0
    Top = 26
    Width = 248
    Height = 478
    Position = dpLeft
    object twRepExplorer: TTBToolWindow
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'Reports Explorer'
      CloseButtonWhenDocked = True
      ClientAreaHeight = 460
      ClientAreaWidth = 244
      DockableTo = ['dpLeft', 'dpRight']
      DockPos = 0
      DragHandleStyle = dhDouble
      FullSize = True
      TabOrder = 0
      OnDockChanged = twRepExplorerDockChanged
      object TL: TdxTreeList
        Left = 0
        Top = 0
        Width = 244
        Height = 460
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
        Images = IBEMainForm.ImageList
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowHeader = False
        GridLineColor = clSilver
        OnDblClick = TLDblClick
        OnKeyUp = TLKeyUp
        OnMouseUp = TLMouseUp
        OnCustomDrawCell = TLCustomDrawCell
        OnChangeNode = TLChangeNode
        OnExpanding = TLExpanding
        object ObjectsTLColumn1: TdxTreeListColumn
          BandIndex = 0
          RowIndex = 0
        end
        object tlcTemp: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionList1Update
    Left = 755
    Top = 42
    object aOpenReportFromFile: TAction
      Caption = 'Open report from file'
      Hint = 'Open Report from File'
      ImageIndex = 41
      ShortCut = 16463
      OnExecute = aOpenReportFromFileExecute
    end
    object aDesignReport: TAction
      Caption = 'Design report'
      Hint = 'Design Report'
      ImageIndex = 75
      ShortCut = 16452
      OnExecute = aDesignReportExecute
    end
    object aNewFolder: TAction
      Caption = 'New folder'
      Hint = 'New Folder'
      OnExecute = aNewFolderExecute
    end
    object aShowReport: TAction
      Caption = 'Show report'
      Hint = 'Show Report'
      ImageIndex = 32
      OnExecute = aShowReportExecute
    end
    object aPrint: TAction
      Caption = 'Print Report'
      Hint = 'Print Report'
      ImageIndex = 53
      OnExecute = aPrintExecute
    end
    object aNewFileReport: TAction
      Caption = 'New report'
      Hint = 'New report'
      ImageIndex = 76
      OnExecute = aNewFileReportExecute
    end
    object actRepFirstPage: TAction
      Category = 'Navigate'
      Caption = 'First Page'
      Hint = 'First Page'
      ImageIndex = 86
      OnExecute = actRepFirstPageExecute
    end
    object actRepPrevPage: TAction
      Category = 'Navigate'
      Caption = 'Previous Page'
      Hint = 'Previous Page'
      ImageIndex = 87
      OnExecute = actRepPrevPageExecute
    end
    object actRepNextPage: TAction
      Category = 'Navigate'
      Caption = 'Next Page'
      Hint = 'Next Page'
      ImageIndex = 88
      OnExecute = actRepNextPageExecute
    end
    object actRepLastPage: TAction
      Category = 'Navigate'
      Caption = 'Last Page'
      Hint = 'Last Page'
      ImageIndex = 89
      OnExecute = actRepLastPageExecute
    end
    object actExportTXT: TAction
      Category = 'Export'
      Caption = 'Simple text file (*.txt)'
      ImageIndex = 0
      OnExecute = actExportTXTExecute
    end
    object actExportPrepared: TAction
      Category = 'Export'
      Caption = 'Prepared report (*.fp3)'
      OnExecute = actExportPreparedExecute
    end
    object actExportTextDot: TAction
      Category = 'Export'
      Caption = 'Text file for dot-matrix printers (*.txt)'
      ImageIndex = 0
      OnExecute = actExportTextDotExecute
    end
    object actExportExcel: TAction
      Category = 'Export'
      Caption = 'Excel file (*.xls)'
      OnExecute = actExportExcelExecute
    end
    object actExportXML: TAction
      Category = 'Export'
      Caption = 'XML Excel file (*.xls)'
      OnExecute = actExportXMLExecute
    end
    object actExportHTML: TAction
      Category = 'Export'
      Caption = 'HTML page (*.html)'
      OnExecute = actExportHTMLExecute
    end
    object actExportRTF: TAction
      Category = 'Export'
      Caption = 'RTF file (*.rtf)'
      OnExecute = actExportRTFExecute
    end
    object actExportPDF: TAction
      Category = 'Export'
      Caption = 'PDF file (*.pdf)'
      OnExecute = actExportPDFExecute
    end
    object actExportCSV: TAction
      Category = 'Export'
      Caption = 'CSV file (*.csv)'
      OnExecute = actExportCSVExecute
    end
    object actExportBMP: TAction
      Category = 'Export'
      Caption = 'BMP image (*.bmp)'
      OnExecute = actExportBMPExecute
    end
    object actExportJPG: TAction
      Category = 'Export'
      Caption = 'JPEG image (*.jpg)'
      OnExecute = actExportJPGExecute
    end
    object actExportTIFF: TAction
      Category = 'Export'
      Caption = 'TIFF image (*.tiff)'
      OnExecute = actExportTIFFExecute
    end
    object actExportGIF: TAction
      Category = 'Export'
      Caption = 'GIF image (*.gif)'
      OnExecute = actExportGIFExecute
    end
    object actExportEMail: TAction
      Category = 'Export'
      Caption = 'EMail'
      OnExecute = actExportEMailExecute
    end
    object actDeleteReport: TAction
      Caption = 'Delete report'
      Hint = 'Delete report'
      ShortCut = 46
      OnExecute = actDeleteReportExecute
      OnUpdate = actDeleteReportUpdate
    end
    object actRenameReport: TAction
      Caption = 'Rename Report'
      OnExecute = actRenameReportExecute
      OnUpdate = actRenameReportUpdate
    end
  end
  object OD: TOpenDialog
    DefaultExt = 'frf'
    Filter = 'Report (*.fr3)|*.fr3|Prepared Report (*.fp3)|*.fp3'
    Options = ['ofHideReadOnly', 'ofPathMustExist', 'ofFileMustExist', 'ofEnableSizing']
    Left = 304
    Top = 322
  end
  object Q: TFIBQuery
    ParamCheck = False
    Transaction = Tr
    Left = 432
    Top = 218
  end
  object Tr: TFIBTransaction
    Active = False
    Timeout = 147181392
    TimeoutAction = TARollback
    Left = 464
    Top = 218
  end
  object SD: TSaveDialog
    DefaultExt = 'frp'
    Filter = 'Prepared Report (*.fp3)|*.fp3'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofPathMustExist', 'ofEnableSizing']
    Title = 'Save Prepared Report'
    Left = 336
    Top = 322
  end
  object bm: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        Caption = 'Report Manager'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Report Manager'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default', 'Export']
    Categories.ItemsVisibles = [2, 2]
    Categories.Visibles = [True, True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 523
    Top = 170
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = aOpenReportFromFile
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = aNewFileReport
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton3: TdxBarButton
      Action = aShowReport
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = aDesignReport
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actRepFirstPage
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actRepLastPage
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actRepNextPage
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actRepPrevPage
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = aPrint
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = aNewFolder
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Caption = 'New database report'
      Category = 0
      Hint = 'New Report'
      Visible = ivAlways
    end
    object bsiSaveAs: TdxBarSubItem
      Caption = 'Save as'
      Category = 0
      Visible = ivAlways
      ImageIndex = 29
      ShowCaption = False
      ItemLinks = <
        item
          Item = dxBarButton13
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
          Item = dxBarButton16
          Visible = True
        end
        item
          Item = dxBarButton17
          Visible = True
        end
        item
          Item = dxBarButton21
          Visible = True
        end
        item
          Item = dxBarButton18
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton19
          Visible = True
        end
        item
          Item = dxBarButton20
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton22
          Visible = True
        end
        item
          Item = dxBarButton23
          Visible = True
        end
        item
          Item = dxBarButton24
          Visible = True
        end
        item
          Item = dxBarButton25
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton26
          Visible = True
        end
      >
    end
    object dxBarButton13: TdxBarButton
      Action = actExportPrepared
      Category = 1
    end
    object dxBarButton14: TdxBarButton
      Action = actExportTXT
      Category = 1
    end
    object dxBarButton15: TdxBarButton
      Action = actExportTextDot
      Category = 1
    end
    object dxBarButton16: TdxBarButton
      Action = actExportExcel
      Category = 1
    end
    object dxBarButton17: TdxBarButton
      Action = actExportXML
      Category = 1
    end
    object dxBarButton18: TdxBarButton
      Action = actExportHTML
      Category = 1
    end
    object dxBarButton19: TdxBarButton
      Action = actExportRTF
      Category = 1
    end
    object dxBarButton20: TdxBarButton
      Action = actExportPDF
      Category = 1
    end
    object dxBarButton21: TdxBarButton
      Action = actExportCSV
      Category = 1
    end
    object dxBarButton22: TdxBarButton
      Action = actExportBMP
      Category = 1
    end
    object dxBarButton23: TdxBarButton
      Action = actExportJPG
      Category = 1
    end
    object dxBarButton24: TdxBarButton
      Action = actExportTIFF
      Category = 1
    end
    object dxBarButton25: TdxBarButton
      Action = actExportGIF
      Category = 1
    end
    object dxBarButton26: TdxBarButton
      Action = actExportEMail
      Category = 1
    end
    object cbZoom: TdxBarCombo
      Caption = 'Scale: '
      Category = 0
      Hint = 'Scale: '
      Visible = ivAlways
      Text = 'Whole page'
      OnChange = cbZoomChange
      ShowCaption = True
      Width = 100
      ShowEditor = False
      DropDownCount = 20
      Items.Strings = ['200%', '150%', '100%', '75%', '50%', '25%', '10%', 'Page width', 'Whole page', 'Two pages']
      ItemIndex = 8
    end
    object dxBarButton9: TdxBarButton
      Action = actDeleteReport
      Category = 0
    end
    object dxBarButton27: TdxBarButton
      Action = actRenameReport
      Category = 0
    end
  end
  object pm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton11
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton27
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton9
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton4
        Visible = True
      end
      item
        Item = dxBarButton3
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 491
    Top = 170
  end
  object Rep: TfrxReport
    Version = '3.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -7.545186161616132e-199
    ReportOptions.LastChange = -7.545186161616132e-199
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['begin', '', 'end.']
    OnGetValue = RepGetValue
    Left = 283
    Top = 50
    Datasets = []
    Variables = []
    Style = []
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
    end
  end
  object frxDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10
    DefaultRightMargin = 10
    DefaultTopMargin = 10
    DefaultBottomMargin = 10
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    OnSaveReport = frxDesignerSaveReport
    OnShow = frxDesignerShow
    Left = 283
    Top = 82
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 331
    Top = 50
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 363
    Top = 50
  end
  object frxChartObject1: TfrxChartObject
    Left = 395
    Top = 50
  end
  object frxRichObject1: TfrxRichObject
    Left = 427
    Top = 50
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 459
    Top = 50
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 491
    Top = 50
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 523
    Top = 50
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 555
    Top = 50
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 587
    Top = 50
  end
  object frxTXTExport1: TfrxTXTExport
    UseFileCache = True
    ShowProgress = True
    ScaleWidth = 1
    ScaleHeight = 1
    Borders = False
    Pseudogrpahic = False
    PageBreaks = True
    OEMCodepage = False
    EmptyLines = False
    LeadSpaces = False
    PrintAfter = False
    PrinterDialog = True
    UseSavedProps = True
    Left = 283
    Top = 394
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    FixedWidth = True
    Background = False
    Left = 315
    Top = 394
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    Left = 347
    Top = 394
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    Background = True
    Creator = 'FastReport®'
    Left = 379
    Top = 394
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    Left = 411
    Top = 394
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    Left = 443
    Top = 394
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    Left = 475
    Top = 394
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    Left = 507
    Top = 394
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
    Left = 283
    Top = 426
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 283
    Top = 362
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    Separator = ';'
    OEMCodepage = False
    Left = 315
    Top = 362
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    Left = 315
    Top = 426
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    Left = 539
    Top = 394
  end
  object frxIBEComponents1: TfrxIBEComponents
    Left = 635
    Top = 130
  end
  object DesignRep: TfrxReport
    Version = '3.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -7.545186161616132e-199
    ReportOptions.LastChange = -7.988033008937396e-196
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['procedure Page1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  IBEDatabase1.Connected := TRUE;', '  mTitle.Text := ''List of database tables ('' + IBEDatabase1.DatabaseName + '')'';', 'end;', '', '', 'procedure MasterData1OnAfterCalcHeight(Sender: TfrxComponent);', 'begin', '   if Copy(Memo1.Memo.Text, 1, 4) = ''RDB$'' then', '    Memo1.Font.Color := clRed', '  else', '    Memo1.Font.Color := clBlack;', 'end;', '', 'begin', '', 'end.']
    Left = 283
    Top = 122
    Datasets = <
      item
        DataSet = DesignRep.MyQuery
        DataSetName = 'MyQuery'
      end
    >
    Variables = []
    Style = []
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      OnBeforePrint = 'Page1OnBeforePrint'
      object IBEDatabase1: TfrxIBEDatabase
        LoginPrompt = False
        Params.Strings = ['lc_ctype=WIN1251', 'user_name=SYSDBA', 'password=masterkey']
        SQLDialect = 3
        ClientLibName = 'C:\Program Files\Firebird\bin\fbclient.dll'
        AutoFillParams = True
      end
      object MyQuery: TfrxIBEQuery
        UserName = 'MyQuery'
        CloseDataSource = True
        Params = []
        SQL.Strings = ['select * from rdb$relations', 'order by rdb$relation_name']
        Database = DesignRep.IBEDatabase1
        Parameters = []
      end
      object MasterData1: TfrxMasterData
        Height = -5.081401752486278e-197
        Top = -2.0581381017216197e-32
        Width = -1.7957132885796112e-60
        OnAfterCalcHeight = 'MasterData1OnAfterCalcHeight'
        DataSet = DesignRep.MyQuery
        DataSetName = 'MyQuery'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 4
          Width = -1.6653593775356384e-68
          Height = -5.081401752486278e-197
          Color = clInfoBk
          DataField = 'RDB$RELATION_NAME'
          DataSet = DesignRep.MyQuery
          DataSetName = 'MyQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = ['[MyQuery."RDB$RELATION_NAME"]']
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = -2.2438394294166002e-51
        Top = -1.7681884765625e-06
        Width = -1.7957132885796112e-60
        Stretched = True
        object mTitle: TfrxMemoView
          Left = -1.468498815093499e-106
          Top = -1.2687124676827378e-211
          Width = -2.763397068898214e-73
          Height = -5.081401752486278e-197
          StretchMode = smActualHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          HAlign = haCenter
          Memo.UTF8 = ['List of tables']
          ParentFont = False
        end
      end
    end
  end
  object frxFIBComponents1: TfrxFIBComponents
    Left = 331
    Top = 114
  end
  object SD1: TSaveDialog
    DefaultExt = 'fr3'
    Filter = 'Fast Report (*.fr3)|*.fr3'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofPathMustExist', 'ofEnableSizing']
    Title = 'Save Report'
    Left = 368
    Top = 322
  end
end
