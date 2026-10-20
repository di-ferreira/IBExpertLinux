object frmPrintTable: TfrmPrintTable
  Left = 417
  Top = 236
  Width = 399
  Height = 566
  HelpContext = 3300
  Caption = 'frmPrintTable'
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
  PixelsPerInch = 96
  TextHeight = 13
  object mPrint: TSQLMemo
    Left = 131
    Top = 384
    Width = 129
    Height = 113
    Cursor = crIBeam
    ParentColor = False
    ParentFont = False
    TabOrder = 14
    Visible = False
    HighlightCurrentLine = False
    CurrentLineColor = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    HighLighter = IBEMainForm.SQLPars
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
    Lines.Strings = ['mPrint']
    MaxUndo = 10
    ReadOnly = False
    WantTabs = True
    ErrorLine = -1
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 1
    Width = 273
    Height = 57
    Caption = 'Table Report Components '
    TabOrder = 11
  end
  object Button1: TButton
    Left = 304
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Tables'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 304
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Domains'
    TabOrder = 1
  end
  object Button4: TButton
    Left = 304
    Top = 193
    Width = 75
    Height = 25
    Caption = 'Views'
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 118
    Width = 273
    Height = 57
    Caption = 'View Report Components '
    TabOrder = 3
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 182
    Width = 273
    Height = 57
    Caption = 'Procedure Report Components '
    TabOrder = 4
  end
  object Button5: TButton
    Left = 304
    Top = 218
    Width = 75
    Height = 25
    Caption = 'Procedures'
    TabOrder = 5
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 246
    Width = 273
    Height = 59
    Caption = 'Trigger Report Components'
    TabOrder = 6
  end
  object Button6: TButton
    Left = 304
    Top = 243
    Width = 75
    Height = 25
    Caption = 'Triggers'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 304
    Top = 268
    Width = 75
    Height = 25
    Caption = 'Exceptions'
    TabOrder = 8
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 310
    Width = 273
    Height = 65
    Caption = 'Exception Report Components '
    TabOrder = 9
  end
  object Button8: TButton
    Left = 304
    Top = 293
    Width = 75
    Height = 25
    Caption = 'UDFs'
    TabOrder = 10
  end
  object GroupBox6: TGroupBox
    Left = 8
    Top = 382
    Width = 273
    Height = 65
    Caption = 'UDF Report Components '
    TabOrder = 12
  end
  object GroupBox7: TGroupBox
    Left = 8
    Top = 60
    Width = 273
    Height = 57
    Caption = 'Domain Report Components '
    TabOrder = 13
  end
  object ts: TFIBTransaction
    Active = False
    Timeout = 259342668
    TimeoutAction = TARollback
    Left = 312
    Top = 328
  end
  object q: TFIBQuery
    ParamCheck = True
    Transaction = ts
    Left = 344
    Top = 328
  end
  object RtfExp: TmwRtfExport
    Title = '(Untitled)'
    UseBackGround = False
    Left = 16
    Top = 456
  end
  object EM: TpFIBExtract
    Options = ['eopExtractDescriptions', 'eopExtractIndices', 'eopExtractReferences', 'eopExtractChecks', 'eopExtractData', 'eopIncludeComments']
    CommitAfter = 0
    ReplaceTabs = True
    TabWidth = 2
    ExtractBlobs = True
    DateFormat = 'YYYY-MM-DD'
    DateTimeFormat = 'YYYY-MM-DD HH:NN:SS'
    Left = 312
    Top = 360
  end
  object frxDomainRep: TfrxReport
    Version = '3.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -6.986070363569399e-199
    ReportOptions.LastChange = -8.031024679612723e-199
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['procedure DDLHeaderOnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DDLHeader, Engine do', '  begin', 'Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DDLDataOnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DDLData, Engine do', '  begin', 'Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DescriptionHeaderOnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DescriptionHeader, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DescriptionDataOnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DescriptionData, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DDLDataOnAfterCalcHeight(Sender: TfrxComponent);', 'var', '  iLines : integer;', 'begin', '  iLines := Trunc(DDLData.Height) div [DDL_LINE_HEIGHT];', '  DDLData.Height := iLines * [DDL_LINE_HEIGHT];', 'end;', '', 'begin', '', 'end.']
    OnBeginDoc = frxCompositeBeginDoc
    OnGetValue = frxDomainRepGetValue
    Left = 232
    Top = 81
    Datasets = <
      item
        DataSet = frxdDomains
        DataSetName = 'frxdDomains'
      end
      item
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
      end
    >
    Variables = []
    Style = []
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
      Columns = 1
      ColumnWidth = 204
      ColumnPositions.Strings = ['0']
      object PageHeader1: TfrxPageHeader
        Height = 43
        Top = 20
        Width = -5.769607014372014e-15
        object Memo30: TfrxMemoView
          Left = 38
          Top = 2
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = ['Date / Time:']
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 38
          Top = 17
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = ['Database:']
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 364
          Top = 2
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = ['User:']
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 143
          Top = 2
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATE_TIME]']
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 143
          Top = 17
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATABASE_NAME]']
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 469
          Top = 2
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[USER_NAME]']
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 364
          Top = 17
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = ['Domain:']
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 469
          Top = 17
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DOMAIN_NAME]']
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 38
          Top = 35
          Width = 679
          Frame.Typ = ['ftTop']
          Frame.Width = 2
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 40
        Top = 1008
        Width = -5.769607014372014e-15
        object Memo21: TfrxMemoView
          Left = -5.077221997948467e-197
          Top = 9
          Width = -5.49310346603433e-106
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = ['fsItalic']
          Frame.Typ = ['ftTop']
          HAlign = haRight
          Memo.UTF8 = ['[PAGE_NUMBER]']
          ParentFont = False
        end
      end
      object bDomainName: TfrxMasterData
        Height = -8.495403298563798e-223
        Top = 124
        Width = -5.769607014372014e-15
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdDomains
        DataSetName = 'frxdDomains'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo38: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 10
          Width = -5.493103467412138e-106
          Height = -9.723363289385874e+94
          StretchMode = smMaxHeight
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = [' Domain: [DOMAIN_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 320
          Top = 16
          Width = 321
          Height = 18
          Visible = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = ['fsBold']
          Frame.Width = -0.0
          Memo.UTF8 = ['[PRINT_DESCRIPTION] [PRINT_DDL][DDL_LINE_HEIGHT]']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DDLHeader: TfrxHeader
        Height = -3.479710724589588e+180
        Top = 196
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DDLHeaderOnBeforePrint'
        object Memo58: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 6
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          StretchMode = smMaxHeight
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' DDL']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DDLData: TfrxDetailData
        Height = 22
        Top = 267
        Width = -5.769607014372014e-15
        OnAfterCalcHeight = 'DDLDataOnAfterCalcHeight'
        OnBeforePrint = 'DDLDataOnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object DOMAIN_DDL: TfrxRichView
          Left = -1.4799228625798132e+22
          Top = 2
          Width = 668
          Height = 20
          StretchMode = smMaxHeight
          DataField = 'Line'
          DataSet = frxdRtf
          DataSetName = 'frxdRtf'
          GapX = 2
          GapY = 1
          RichEdit = {153 bytes}
        end
      end
      object DescriptionHeader: TfrxHeader
        Height = -1.3710758353193928e+296
        Top = 328
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DescriptionHeaderOnBeforePrint'
        object Memo57: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 9
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          StretchMode = smMaxHeight
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Description']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DescriptionData: TfrxDetailData
        Height = 24
        Top = 392
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DescriptionDataOnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        PrintIfDetailEmpty = True
        RowCount = 1
        Stretched = True
        object DOMAINDESCRIPTION: TfrxMemoView
          Left = -1.4799228625798132e+22
          Top = 6
          Width = 668
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['[DOMAIN_DESCRIPTION]']
          ParentFont = False
        end
      end
    end
  end
  object frxdDomains: TfrxUserDataSet
    UserName = 'frxdDomains'
    OnCheckEOF = frxdDomainsCheckEOF
    OnFirst = frxdDomainsFirst
    OnNext = frxdDomainsNext
    Left = 15
    Top = 79
  end
  object frxTriggerRep: TfrxReport
    Version = '3.17'
    DataSet = frxdTriggers
    DataSetName = 'frxdTriggers'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -6.73389328045324e-199
    ReportOptions.LastChange = -8.057809885889129e-199
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['procedure DetailHeader1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader1, Engine do', '  begin', 'Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DDLData, Engine do', '  begin', '    Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DetailHeader2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader2, Engine do', '  begin', '    Visible := [PRINT_DEPEND_ON];', '  end', 'end;', '', 'procedure DetailData2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData2, Engine do', '  begin', 'Visible := [PRINT_DEPEND_ON];', '  end', 'end;', '', 'procedure DetailHeader3OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader3, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DetailData3OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData3, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DetailData1OnAfterCalcHeight(Sender: TfrxComponent);', 'var', '  iLines : integer;', 'begin', '  iLines := Trunc(DDLData.Height) div [DDL_LINE_HEIGHT];', '  DDLData.Height := iLines * [DDL_LINE_HEIGHT];', 'end;', '', 'begin', '', 'end.']
    OnBeginDoc = frxCompositeBeginDoc
    OnGetValue = frxTriggerRepGetValue
    Left = 232
    Top = 262
    Datasets = <
      item
        DataSet = frxdDependOn
        DataSetName = 'frxdDependOn'
      end
      item
        DataSet = frxdOnDepend
        DataSetName = 'frxdOnDepend'
      end
      item
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
      end
      item
        DataSet = frxdTriggers
        DataSetName = 'frxdTriggers'
      end
    >
    Variables = []
    Style = []
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
      Columns = 1
      ColumnWidth = 204
      ColumnPositions.Strings = ['0']
      object PageHeader1: TfrxPageHeader
        Height = 42
        Top = -5.081401752486278e-197
        Width = -5.769607014372014e-15
        object Memo50: TfrxMemoView
          Left = 39
          Top = -9.426523754138139e-139
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Date / Time:']
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 39
          Top = -1.345149579576146e-150
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Database:']
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 365
          Top = -9.426523754138139e-139
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['User:']
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 144
          Top = -9.426523754138139e-139
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATE_TIME]']
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 144
          Top = -1.345149579576146e-150
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATABASE_NAME]']
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 470
          Top = -9.426523754138139e-139
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[USER_NAME]']
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 365
          Top = -1.345149579576146e-150
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Trigger:']
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 470
          Top = -1.345149579576146e-150
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[TRIGGER_NAME]']
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -5.077221997948467e-197
          Top = -4.349671954819364e-191
          Width = -5.49310346603433e-106
          Frame.Typ = ['ftTop']
          Frame.Width = 2
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 40
        Top = -2.7971247872345045e-265
        Width = -5.769607014372014e-15
        object Memo4: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -5.893661864440322e-29
          Width = -5.493103467412138e-106
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = ['fsItalic']
          Frame.Typ = ['ftTop']
          HAlign = haRight
          Memo.UTF8 = ['[PAGE_NUMBER]']
          ParentFont = False
        end
      end
      object DetailHeader1: TfrxHeader
        Height = -4.9849963881509865e-196
        Top = -7.971719033920267e-66
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader1OnBeforePrint'
        object Memo58: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -2.6044429561556503e-89
          Width = -5.493103467412138e-106
          Height = -2.2413341860207138e-51
          StretchMode = smMaxHeight
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' DDL']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DDLData: TfrxDetailData
        Height = -5.377277323589758e-258
        Top = -2.5537978441875467e+222
        Width = -5.769607014372014e-15
        OnAfterCalcHeight = 'DetailData1OnAfterCalcHeight'
        OnBeforePrint = 'DetailData1OnBeforePrint'
        AllowSplit = True
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object TRIGGER_DDL: TfrxRichView
          Left = 45
          Top = -6.5605760425281235e-149
          Width = 673
          Height = 17
          StretchMode = smMaxHeight
          DataField = 'Line'
          DataSet = frxdRtf
          DataSetName = 'frxdRtf'
          GapX = 2
          GapY = 1
          RichEdit = {153 bytes}
        end
      end
      object MasterData1: TfrxMasterData
        Height = -2.342974398842269e-227
        Top = -4.129901419148467e+240
        Width = -5.769607014372014e-15
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        PrintIfDetailEmpty = True
        RowCount = 1
        StartNewPage = True
        Stretched = True
        object Memo1: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -1.7245989034642514e-185
          Width = -5.493103467412138e-106
          Height = -9.723363289385874e+94
          StretchMode = smMaxHeight
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = [' Trigger: [TRIGGER_NAME]']
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = -2.155362320683683e-142
          Top = -3.348455123688904e+234
          Width = -8061787.83232
          Height = 18
          Visible = False
          StretchMode = smMaxHeight
          Color = clWhite
          Frame.Width = -0.0
          Memo.UTF8 = ['[PRINT_DDL] [PRINT_DESCRIPTION] [PRINT_DEPEND_ON][DDL_LINE_HEIGHT]']
        end
      end
      object DetailHeader2: TfrxHeader
        Height = -3.086395260505311e+211
        Top = -2.1701081552324122e-244
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader2OnBeforePrint'
        object Memo56: TfrxMemoView
          Left = -5.077221997948467e-197
          Top = -6.985364410522118e+146
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Objects, that trigger [TRIGGER_NAME] depends on']
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -5.0454108695900216e-136
          Width = 270
          Height = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Dependent']
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 308
          Top = -5.0454108695900216e-136
          Width = 270
          Height = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Field']
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 578
          Top = -5.0454108695900216e-136
          Width = 140
          Height = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Type ']
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        Height = 19
        Top = -2.2438394294166002e-51
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData2OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdDependOn
        DataSetName = 'frxdDependOn'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo54: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = 270
          Height = 19
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_NAME]']
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = -4.981133558097222e-183
          Width = 270
          Height = 19
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_FIELD]']
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = -1.4437911189030055e-228
          Width = -2.727932613007635e-253
          Height = 19
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_TYPE]']
          ParentFont = False
        end
      end
      object DetailHeader3: TfrxHeader
        Height = -5.074657675926134e-246
        Top = -2.9877302591759167e+49
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader3OnBeforePrint'
        object Memo57: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -2.945415608611715e-289
          Width = -5.493103467412138e-106
          Height = -2.2413341860207138e-51
          StretchMode = smMaxHeight
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Description']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData3: TfrxDetailData
        Height = 28
        Top = -9.905674276426973e+185
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData3OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        PrintIfDetailEmpty = True
        RowCount = 1
        Stretched = True
        object Memo59: TfrxMemoView
          Left = 46
          Top = -1.2901409343284925e-265
          Width = 671
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['[TRIGGER_DESCRIPTION]']
          ParentFont = False
        end
      end
    end
  end
  object frxdTriggers: TfrxUserDataSet
    UserName = 'frxdTriggers'
    OnCheckEOF = frxdTriggersCheckEOF
    OnFirst = frxdTriggersFirst
    OnNext = frxdTriggersNext
    Left = 16
    Top = 263
  end
  object frxRichObject1: TfrxRichObject
    Left = 312
    Top = 8
  end
  object frxdOnDepend: TfrxUserDataSet
    UserName = 'frxdOnDepend'
    OnCheckEOF = frxdOnDependCheckEOF
    Left = 320
    Top = 48
  end
  object frxdDependOn: TfrxUserDataSet
    UserName = 'frxdDependOn'
    OnCheckEOF = frxdDependOnCheckEOF
    Left = 352
    Top = 48
  end
  object mtRtf: TkbmMemTable
    Active = True
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    Left = 184
    Top = 486
    object mtRtfLine: TMemoField
      FieldName = 'Line'
      BlobType = ftMemo
    end
  end
  object frxdRtf: TfrxDBDataset
    UserName = 'frxdRtf'
    CloseDataSource = False
    DataSet = mtRtf
    Left = 216
    Top = 486
  end
  object frxExceptionRep: TfrxReport
    Version = '3.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -6.988043650758944e-199
    ReportOptions.LastChange = -8.060128110333319e-199
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['procedure DetailHeader1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader1, Engine do', '  begin', 'Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DDLData, Engine do', '  begin', 'Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DetailHeader2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader2, Engine do', '  begin', 'Visible := [PRINT_ON_DEPEND];', '  end', 'end;', '', 'procedure DetailData2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData2, Engine do', '  begin', 'Visible := [PRINT_ON_DEPEND];', '  end', 'end;', '', 'procedure DetailHeader3OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader3, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DetailData3OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData3, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DetailData1OnAfterCalcHeight(Sender: TfrxComponent);', 'var', '  iLines : integer;', 'begin', '  iLines := Trunc(DDLData.Height) div [DDL_LINE_HEIGHT];', '  DDLData.Height := iLines * [DDL_LINE_HEIGHT];', 'end;', '', 'begin', '', 'end.']
    OnBeginDoc = frxCompositeBeginDoc
    OnGetValue = frxExceptionRepGetValue
    Left = 232
    Top = 326
    Datasets = <
      item
        DataSet = frxdExceptions
        DataSetName = 'frxdExceptions'
      end
      item
        DataSet = frxdOnDepend
        DataSetName = 'frxdOnDepend'
      end
      item
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
      end
    >
    Variables = []
    Style = []
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
      Columns = 1
      ColumnWidth = 204
      ColumnPositions.Strings = ['0']
      object PageHeader1: TfrxPageHeader
        Height = 41
        Top = 24
        Width = -5.769607014372014e-15
        object Memo50: TfrxMemoView
          Left = 38
          Top = 4
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Date / Time:']
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 38
          Top = 19
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Database:']
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 364
          Top = 4
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['User:']
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 143
          Top = 4
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATE_TIME]']
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 143
          Top = 19
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATABASE_NAME]']
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 469
          Top = 4
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[USER_NAME]']
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 364
          Top = 19
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Exception:']
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 469
          Top = 19
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[EXCEPTION_NAME]']
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -5.077221903563677e-197
          Top = 37
          Width = -5.493103467412138e-106
          Frame.Typ = ['ftTop']
          Frame.Width = 2
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 40
        Top = 1008
        Width = -5.769607014372014e-15
        object Memo4: TfrxMemoView
          Left = 42
          Top = 12
          Width = 680
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = ['fsItalic']
          Frame.Typ = ['ftTop']
          HAlign = haRight
          Memo.UTF8 = ['[PAGE_NUMBER]']
          ParentFont = False
        end
      end
      object DetailHeader1: TfrxHeader
        Height = 38
        Top = 178
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader1OnBeforePrint'
        object Memo58: TfrxMemoView
          Left = -5.077221997948467e-197
          Top = 11
          Width = -5.493103467412138e-106
          Height = -2.2413341860207138e-51
          StretchMode = smMaxHeight
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' DDL']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DDLData: TfrxDetailData
        Height = 25
        Top = 239
        Width = -5.769607014372014e-15
        OnAfterCalcHeight = 'DetailData1OnAfterCalcHeight'
        OnBeforePrint = 'DetailData1OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object EXCEPTION_DDL: TfrxRichView
          Left = 45
          Top = 4
          Width = 672
          Height = 16
          StretchMode = smMaxHeight
          DataField = 'Line'
          DataSet = frxdRtf
          DataSetName = 'frxdRtf'
          GapX = 2
          GapY = 1
          RichEdit = {153 bytes}
        end
      end
      object DetailHeader2: TfrxHeader
        Height = 55
        Top = 288
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader2OnBeforePrint'
        object Memo9: TfrxMemoView
          Left = -5.077221997948467e-197
          Top = 9
          Width = -5.493103467412138e-106
          Height = -2.2413341860207138e-51
          StretchMode = smMaxHeight
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Object, that depend on exception [EXCEPTION_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = -5.077221997948467e-197
          Top = 37
          Width = 390
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Dependent']
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = -2.9356782284672915e+107
          Top = 37
          Width = 292
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Type']
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        Height = 18
        Top = 376
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData2OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdOnDepend
        DataSetName = 'frxdOnDepend'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo13: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = 390
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_NAME]']
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = -2.9356782284672915e+107
          Width = 291
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_TYPE]']
          ParentFont = False
        end
      end
      object DetailHeader3: TfrxHeader
        Height = 36
        Top = 422
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader3OnBeforePrint'
        object Memo6: TfrxMemoView
          Left = -5.077221997948467e-197
          Top = 8
          Width = -5.493103467412138e-106
          Height = -2.2413341860207138e-51
          StretchMode = smMaxHeight
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Description']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData3: TfrxDetailData
        Height = 27
        Top = 483
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData3OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        PrintIfDetailEmpty = True
        RowCount = 1
        Stretched = True
        object Memo59: TfrxMemoView
          Left = 45
          Top = 4
          Width = 672
          Height = 19
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Width = -0.0
          Memo.UTF8 = ['[EXCEPTION_DESCRIPTION]']
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 44
        Top = 112
        Width = -5.769607014372014e-15
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdExceptions
        DataSetName = 'frxdExceptions'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 12
          Width = -5.493103467412138e-106
          Height = -9.723363289385874e+94
          StretchMode = smMaxHeight
          Color = clGray
          DataSet = frxdExceptions
          DataSetName = 'frxdExceptions'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = [' Exception: [EXCEPTION_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 482
          Top = 16
          Width = 228
          Height = 18
          Visible = False
          StretchMode = smMaxHeight
          Color = clWhite
          Frame.Width = -0.0
          Memo.UTF8 = ['[PRINT_DDL] [PRINT_DESCRIPTION] [PRINT_ON_DEPEND][DDL_LINE_HEIGHT]']
        end
      end
    end
  end
  object frxViewRep: TfrxReport
    Version = '3.17'
    DataSet = frxdViews
    DataSetName = 'frxdViews'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -6.774477546840536e-199
    ReportOptions.LastChange = -8.047765692089094e-199
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['procedure DetailData1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData1, Engine do', '  begin', 'Visible := [PRINT_FIELDS];', '  end', 'end;', '', 'procedure DetailHeader1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader1, Engine do', '  begin', 'Visible := [PRINT_FIELDS];', '  end', 'end;', '', 'procedure DetailHeader2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader2, Engine do', '  begin', 'Visible := [PRINT_ON_DEPEND];', '  end', 'end;', '', 'procedure DetailData2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData2, Engine do', '  begin', 'Visible := [PRINT_ON_DEPEND];', '  end', 'end;', '', 'procedure DetailData3OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData3, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DetailData4OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DDLData, Engine do', '  begin', '    Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DetailHeader3OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader3, Engine do', '  begin', 'Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DetailHeader4OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader4, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DetailHeader5OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader5, Engine do', '  begin', 'Visible := [PRINT_DEPEND_ON];', '  end', 'end;', '', 'procedure DetailData5OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData5, Engine do', '  begin', 'Visible := [PRINT_DEPEND_ON];', '  end', 'end;', '', 'procedure Memo23OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with Memo23, Engine do', '  begin', '', '  end', 'end;', '', 'procedure DetailData4OnAfterCalcHeight(Sender: TfrxComponent);', 'var', '  iLines : integer;', 'begin', '  iLines := Trunc(DDLData.Height) div [DDL_LINE_HEIGHT];', '  DDLData.Height := iLines * [DDL_LINE_HEIGHT];', 'end;', '', 'begin', '', 'end.']
    OnBeginDoc = frxCompositeBeginDoc
    OnGetValue = frxViewRepGetValue
    Left = 232
    Top = 134
    Datasets = <
      item
        DataSet = frxdDependOn
        DataSetName = 'frxdDependOn'
      end
      item
        DataSet = frxdFields
        DataSetName = 'frxdFields'
      end
      item
        DataSet = frxdOnDepend
        DataSetName = 'frxdOnDepend'
      end
      item
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
      end
      item
        DataSet = frxdViews
        DataSetName = 'frxdViews'
      end
    >
    Variables = []
    Style = []
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
      object MasterData1: TfrxMasterData
        Height = -7484925406.08512
        Top = -4.129901419148467e+240
        Width = -5.769607014372014e-15
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        PrintIfDetailEmpty = True
        RowCount = 1
        StartNewPage = True
        object Memo1: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -5.064423427303914e-268
          Width = -5.49310346603433e-106
          Height = -9.723363289385874e+94
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = [' View: [VIEW_NAME]']
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 262
          Top = -6.790281658919248e-114
          Width = 447
          Height = 18
          Visible = False
          StretchMode = smMaxHeight
          Color = clWhite
          Frame.Width = -0.0
          Memo.UTF8 = ['[PRINT_DDL] [PRINT_DESCRIPTION] [PRINT_ON_DEPEND]', '[PRINT_FIELDS] [PRINT_DEPEND_ON][DDL_LINE_HEIGHT]']
        end
      end
      object DetailData1: TfrxDetailData
        Height = 19
        Top = -6.235435155899104e+153
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData1OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdFields
        DataSetName = 'frxdFields'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = 216
          Height = 19
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [FIELD_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 620
          Width = -562949953421312.0
          Height = 19
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [NOT_NULL]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 254
          Width = 190
          Height = 19
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [FIELD_TYPE]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 444
          Width = 176
          Height = 19
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [FIELD_DOMAIN]']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailHeader1: TfrxHeader
        Height = -4.988598449242927e+304
        Top = -1.8209668572838754e-93
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader1OnBeforePrint'
        object Memo8: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -1.2991651884270851e-100
          Width = 216
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Name']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 254
          Top = -1.2991651884270851e-100
          Width = 190
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Type']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 444
          Top = -1.2991651884270851e-100
          Width = 176
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Domain']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 620
          Top = -1.2991651884270851e-100
          Width = -562949953421312.0
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          HAlign = haCenter
          Memo.UTF8 = ['Not Null']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -2.8659462507404074e+49
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = 13619151
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Fields']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailHeader2: TfrxHeader
        Height = -2.1608534271551278e+238
        Top = -9.408182685341788e+265
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader2OnBeforePrint'
        object Memo13: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -3.4998250219831247e-50
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = 13619151
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Objects, that depend on view [VIEW_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = -1.8827498946116282e-183
          Top = -1.9149197653287616e-128
          Width = 225
          Height = 19
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Name']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = -1.2826677504057426e-290
          Top = -1.9149197653287616e-128
          Width = 228
          Height = 19
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Type']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = -1.5375394465392026e+259
          Top = -1.9149197653287616e-128
          Width = -2.9484081443918292e+166
          Height = 19
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Field']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData2: TfrxDetailData
        Height = 19
        Top = -1.4782883839425592e-223
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData2OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdOnDepend
        DataSetName = 'frxdOnDepend'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo17: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -3.0006885814788952e-77
          Width = 225
          Height = 19
          DataSet = frxdOnDepend
          DataSetName = 'frxdOnDepend'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 491
          Top = -3.0006885814788952e-77
          Width = 227
          Height = 19
          DataSet = frxdOnDepend
          DataSetName = 'frxdOnDepend'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_FIELD]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 263
          Top = -3.0006885814788952e-77
          Width = 228
          Height = 19
          DataSet = frxdOnDepend
          DataSetName = 'frxdOnDepend'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_TYPE]']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData3: TfrxDetailData
        Height = -1.9907390976819398e-223
        Top = -2.3531226659546522e+151
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData3OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo23: TfrxMemoView
          Left = 45
          Top = -5.677148659970655e+121
          Width = 674
          Height = 18
          OnBeforePrint = 'Memo23OnBeforePrint'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['[VIEW_DESCRIPTION]']
          ParentFont = False
        end
      end
      object DDLData: TfrxDetailData
        Height = -2.7611330585717167e-69
        Top = -3.031283979630572e-306
        Width = -5.769607014372014e-15
        OnAfterCalcHeight = 'DetailData4OnAfterCalcHeight'
        OnBeforePrint = 'DetailData4OnBeforePrint'
        AllowSplit = True
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object VIEW_DDL: TfrxRichView
          Left = 42
          Top = -1.921187298736972e+123
          Width = 676
          Height = 22
          DataField = 'Line'
          DataSet = frxdRtf
          DataSetName = 'frxdRtf'
          GapX = 2
          GapY = 1
          RichEdit = {153 bytes}
        end
      end
      object DetailHeader3: TfrxHeader
        Height = 41
        Top = -8982.36416
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader3OnBeforePrint'
        object Memo24: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -2.085370427727673e+250
          Width = -5.49310346603433e-106
          Height = -2.2413334452244175e-51
          Color = 13619151
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' DDL']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailHeader4: TfrxHeader
        Height = 41
        Top = -1.011552454571617e+74
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader4OnBeforePrint'
        object Memo22: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -1.0430675653624642e-41
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = 13619151
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Description']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 40
        Top = -1.6816697728599578e-289
        Width = -5.769607014372014e-15
        object Memo21: TfrxMemoView
          Left = -5.077221997948467e-197
          Top = -1.1136307560740843e-217
          Width = -5.49310346603433e-106
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = ['fsItalic']
          Frame.Typ = ['ftTop']
          HAlign = haRight
          Memo.UTF8 = ['[PAGE_NUMBER]']
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 40
        Top = -5.081401752486278e-197
        Width = -5.769607014372014e-15
        object Memo50: TfrxMemoView
          Left = 38
          Top = -4.076128900702785e-277
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Date / Time:']
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 38
          Top = -3.413911395453857e-266
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Database:']
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 364
          Top = -4.076128900702785e-277
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['User:']
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 143
          Top = -4.076128900702785e-277
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATE_TIME]']
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 143
          Top = -3.413911395453857e-266
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATABASE_NAME]']
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 469
          Top = -4.076128900702785e-277
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[USER_NAME]']
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 364
          Top = -3.413911395453857e-266
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['View:']
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 469
          Top = -3.413911395453857e-266
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[VIEW_NAME]']
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 38
          Top = -1.2782537027050746e-229
          Width = -5.49310346603433e-106
          Frame.Typ = ['ftTop']
          Frame.Width = 2
        end
      end
      object DetailHeader5: TfrxHeader
        Height = -1.545734877476127e+297
        Top = -7.010581095875934e-164
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader5OnBeforePrint'
        object Memo3: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -2.7603889235649182e+147
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = 13619151
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Objects, that view [VIEW_NAME] depends on']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = -1.8827498946116282e-183
          Top = -1.3698098314488646e-69
          Width = 225
          Height = 19
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Name']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = -1.2826677504057426e-290
          Top = -1.3698098314488646e-69
          Width = 228
          Height = 19
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Type']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = -1.5375394465392026e+259
          Top = -1.3698098314488646e-69
          Width = 226
          Height = 19
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Field']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData5: TfrxDetailData
        Height = -5.122467535143556e-170
        Top = -8.154900203715283e-48
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData5OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdDependOn
        DataSetName = 'frxdDependOn'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo27: TfrxMemoView
          Left = -1.8827498946116282e-183
          Top = -8.560628427062247e-188
          Width = 225
          Height = 19
          StretchMode = smMaxHeight
          DataSet = frxdDependOn
          DataSetName = 'frxdDependOn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = -1.5375394465392026e+259
          Top = -8.560628427062247e-188
          Width = -2.9484081443918292e+166
          Height = 19
          StretchMode = smMaxHeight
          DataSet = frxdDependOn
          DataSetName = 'frxdDependOn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_FIELD]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = -1.2826677504057426e-290
          Top = -8.560628427062247e-188
          Width = 228
          Height = 19
          StretchMode = smMaxHeight
          DataSet = frxdDependOn
          DataSetName = 'frxdDependOn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_TYPE]']
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdViews: TfrxUserDataSet
    UserName = 'frxdViews'
    OnCheckEOF = frxdViewsCheckEOF
    OnFirst = frxdViewsFirst
    OnNext = frxdViewsNext
    Left = 16
    Top = 134
  end
  object frxDesigner1: TfrxDesigner
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
    Restrictions = ['drDontPreviewReport']
    RTLLanguage = False
    Left = 344
    Top = 8
  end
  object frxdFields: TfrxUserDataSet
    UserName = 'frxdFields'
    OnCheckEOF = frxdFieldsCheckEOF
    OnFirst = frxdFieldsFirst
    OnNext = frxdFieldsNext
    Left = 48
    Top = 21
  end
  object frxProcedureRep: TfrxReport
    Version = '3.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -6.954481816205686e-199
    ReportOptions.LastChange = -8.055258801088882e-199
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['procedure DetailHeader1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader1, Engine do', '  begin', 'Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DDLData, Engine do', '  begin', '    Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DetailHeader2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader2, Engine do', '  begin', 'Visible := [PRINT_PARAMETERS];', '  end', 'end;', '', 'procedure DetailData2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData2, Engine do', '  begin', 'Visible := [PRINT_PARAMETERS];', '  end', 'end;', '', 'procedure DetailHeader3OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader3, Engine do', '  begin', 'Visible := [PRINT_DEPEND_ON];', '  end', 'end;', '', 'procedure DetailData3OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData3, Engine do', '  begin', 'Visible := [PRINT_DEPEND_ON];', '  end', 'end;', '', 'procedure DetailHeader4OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader4, Engine do', '  begin', 'Visible := [PRINT_ON_DEPEND];', '  end', 'end;', '', 'procedure DetailData4OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData4, Engine do', '  begin', 'Visible := [PRINT_ON_DEPEND];', '  end', 'end;', '', 'procedure DetailHeader5OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader5, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DetailData5OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData5, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure ParamsData_2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with ParamsData_2, Engine do', '  begin', 'Visible := [PRINT_PARAMETERS];', '  end', 'end;', '', 'procedure Memo16OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with Memo16, Engine do', '  begin', '', '  end', 'end;', '', 'procedure DDLDataOnAfterCalcHeight(Sender: TfrxComponent);', 'var', '  iLines : integer;', 'begin', '  iLines := Trunc(DDLData.Height) div [DDL_LINE_HEIGHT];', '  DDLData.Height := iLines * [DDL_LINE_HEIGHT];', 'end;', '', 'begin', '', 'end.']
    OnBeginDoc = frxCompositeBeginDoc
    OnGetValue = frxProcedureRepGetValue
    Left = 232
    Top = 201
    Datasets = <
      item
        DataSet = frxdDependOn
        DataSetName = 'frxdDependOn'
      end
      item
        DataSet = frxdOnDepend
        DataSetName = 'frxdOnDepend'
      end
      item
        DataSet = frxdParams
        DataSetName = 'frxdParams'
      end
      item
        DataSet = frxdParamsAdd
        DataSetName = 'frxdParamsAdd'
      end
      item
        DataSet = frxdProcedures
        DataSetName = 'frxdProcedures'
      end
      item
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
      end
    >
    Variables = []
    Style = []
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
      Columns = 1
      ColumnWidth = 204
      ColumnPositions.Strings = ['0']
      object PageHeader1: TfrxPageHeader
        Height = 49
        Top = 20
        Width = -5.769607014372014e-15
        object Memo50: TfrxMemoView
          Left = 40
          Top = 4
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Date / Time:']
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 40
          Top = 19
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Database:']
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 366
          Top = 4
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['User:']
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 145
          Top = 4
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATE_TIME]']
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 145
          Top = 19
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATABASE_NAME]']
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 471
          Top = 4
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[USER_NAME]']
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 366
          Top = 19
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Procedure:']
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 471
          Top = 19
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[PROCEDURE_NAME]']
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -5.077221997948467e-197
          Top = 37
          Width = -5.49310346603433e-106
          Frame.Typ = ['ftTop']
          Frame.Width = 2
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 40
        Top = 1008
        Width = -5.769607014372014e-15
        object Memo24: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 9
          Width = -5.493103467412138e-106
          Height = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = ['fsItalic']
          Frame.Typ = ['ftTop']
          HAlign = haRight
          Memo.UTF8 = ['[PAGE_NUMBER]']
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = -9.837004968542897e-146
        Top = 88
        Width = -5.769607014372014e-15
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdProcedures
        DataSetName = 'frxdProcedures'
        PrintIfDetailEmpty = True
        RowCount = 0
        StartNewPage = True
        object Memo18: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 12
          Width = -5.493103467412138e-106
          Height = -9.723363289385874e+94
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = [' Procedure: [PROCEDURE_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 461
          Top = 16
          Width = 228
          Height = 18
          Visible = False
          StretchMode = smMaxHeight
          Color = clWhite
          Frame.Width = -0.0
          Memo.UTF8 = ['[PRINT_DDL] [PRINT_DESCRIPTION] [PRINT_ON_DEPEND]', '[PRINT_DEPEND_ON] [PRINT_PARAMETERS][DDL_LINE_HEIGHT]']
        end
      end
      object DetailHeader1: TfrxHeader
        Height = 36
        Top = 153
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader1OnBeforePrint'
        object Memo58: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 11
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' DDL']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DDLData: TfrxDetailData
        Height = 18
        Top = 217
        Width = -5.769607014372014e-15
        OnAfterCalcHeight = 'DDLDataOnAfterCalcHeight'
        OnBeforePrint = 'DetailData1OnBeforePrint'
        AllowSplit = True
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object PROCEDURE_DDL: TfrxRichView
          Left = 46
          Width = 672
          Height = 18
          AllowExpressions = False
          DataField = 'Line'
          DataSet = frxdRtf
          DataSetName = 'frxdRtf'
          GapX = 2
          GapY = 1
          RichEdit = {153 bytes}
        end
      end
      object DetailHeader2: TfrxHeader
        Height = 54
        Top = 272
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader2OnBeforePrint'
        object Memo2: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 36
          Width = 262
          Height = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Name']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -4.383618698016806e-193
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['Parameters']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 300
          Top = 36
          Width = 284
          Height = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Type']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 584
          Top = 36
          Width = 134
          Height = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          HAlign = haCenter
          Memo.UTF8 = ['Input/Output']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData2: TfrxDetailData
        Height = 18
        Top = 356
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData2OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdParams
        DataSetName = 'frxdParams'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo16: TfrxMemoView
          Left = 300
          Width = 284
          Height = 18
          OnBeforePrint = 'Memo16OnBeforePrint'
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [PARAM_TYPE]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = 262
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [PARAM_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 584
          Width = 134
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          HAlign = haCenter
          Memo.UTF8 = ['[PARAM_SCOPE]']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailHeader3: TfrxHeader
        Height = 54
        Top = 444
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader3OnBeforePrint'
        object Memo52: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 36
          Width = 270
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Dependent']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 308
          Top = 36
          Width = 269
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Field']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 9
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Objects, that procedure [PROCEDURE_NAME] depends on']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 577
          Top = 36
          Width = 141
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Type']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData3: TfrxDetailData
        Height = 18
        Top = 520
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData3OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdDependOn
        DataSetName = 'frxdDependOn'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo54: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = 270
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 308
          Width = 269
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_FIELD]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 577
          Width = 141
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_TYPE]']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailHeader4: TfrxHeader
        Height = 55
        Top = 572
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader4OnBeforePrint'
        object Memo15: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 10
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Object, that depend on procedure [PROCEDURE_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 37
          Width = 270
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Dependent']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 308
          Top = 37
          Width = 269
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Field']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 577
          Top = 37
          Width = 141
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Type']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData4: TfrxDetailData
        Height = 18
        Top = 660
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData4OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdOnDepend
        DataSetName = 'frxdOnDepend'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo7: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = 270
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 308
          Width = 269
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_FIELD]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 577
          Width = 141
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_TYPE]']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailHeader5: TfrxHeader
        Height = 37
        Top = 732
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader5OnBeforePrint'
        object Memo57: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 10
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Description']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData5: TfrxDetailData
        Height = 26
        Top = 804
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData5OnBeforePrint'
        AllowSplit = True
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        PrintIfDetailEmpty = True
        RowCount = 1
        Stretched = True
        object Memo59: TfrxMemoView
          Left = 45
          Top = 4
          Width = 677
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['[PROCEDURE_DESCRIPTION]']
          ParentFont = False
        end
      end
      object ParamsData_2: TfrxSubdetailData
        Height = 18
        Top = 396
        Width = -5.769607014372014e-15
        OnBeforePrint = 'ParamsData_2OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdParamsAdd
        DataSetName = 'frxdParamsAdd'
        RowCount = 0
        Stretched = True
        object Memo25: TfrxMemoView
          Left = 171
          Width = 547
          Height = 18
          StretchMode = smMaxHeight
          Color = 14540253
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftRight']
          Memo.UTF8 = ['[PARAM_ADD]']
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = 133
          Height = 18
          StretchMode = smMaxHeight
          Color = 14540253
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft']
          Memo.UTF8 = ['[ADD_TYPE]:']
          ParentFont = False
        end
      end
    end
  end
  object frxdProcedures: TfrxUserDataSet
    UserName = 'frxdProcedures'
    OnCheckEOF = frxdProceduresCheckEOF
    OnFirst = frxdProceduresFirst
    OnNext = frxdProceduresNext
    Left = 16
    Top = 200
  end
  object frxdParams: TfrxUserDataSet
    UserName = 'frxdParams'
    OnCheckEOF = frxdParamsCheckEOF
    OnFirst = frxdParamsFirst
    OnNext = frxdParamsNext
    Left = 48
    Top = 200
  end
  object frxdParamsAdd: TfrxUserDataSet
    UserName = 'frxdParamsAdd'
    OnCheckEOF = frxdParamsAddCheckEOF
    OnFirst = frxdParamsAddFirst
    OnNext = frxdParamsAddNext
    Left = 80
    Top = 200
  end
  object frxTableRep: TfrxReport
    Version = '3.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -6.962801030336658e-199
    ReportOptions.LastChange = -1.2058970258306546e-197
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['procedure FieldsData_1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with FieldsData_1, Engine do', '  begin', 'Visible := [PRINT_FIELDS];', '  end', 'end;', '', 'procedure FieldsData_2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with FieldsData_2, Engine do', '  begin', 'Visible := [PRINT_FIELDS];', '  end', 'end;', '', 'procedure FieldsHeaderOnBeforePrint(Sender: TfrxComponent);', 'begin', '  with FieldsHeader, Engine do', '  begin', 'Visible := [PRINT_FIELDS];', '  end', 'end;', '', 'procedure OnDependHeaderOnBeforePrint(Sender: TfrxComponent);', 'begin', '  with OnDependHeader, Engine do', '  begin', 'Visible := [PRINT_ON_DEPEND];', '  end', 'end;', '', 'procedure OnDependDataOnBeforePrint(Sender: TfrxComponent);', 'begin', '  with OnDependData, Engine do', '  begin', 'Visible := [PRINT_ON_DEPEND];', '  end', 'end;', '', 'procedure DescriptionDataOnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DescriptionData, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DDLDataOnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DDLData, Engine do', '  begin', 'Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DDLHeaderOnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DDLHeader, Engine do', '  begin', 'Visible := [PRINT_DDL];', '', '  end', 'end;', '', 'procedure DescriptionHeaderOnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DescriptionHeader, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DetailHeader1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader1, Engine do', '  begin', 'Visible := [PRINT_CONSTRAINTS];', '  end', 'end;', '', 'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData1, Engine do', '  begin', 'Visible := [PRINT_CONSTRAINTS];', '  end', 'end;', '', 'procedure SubdetailData1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with SubdetailData1, Engine do', '  begin', 'Visible := [PRINT_CONSTRAINTS];', '  end', 'end;', '', 'procedure DetailFooter1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailFooter1, Engine do', '  begin', '    Visible := [PRINT_CONSTRAINTS];', '    DetailFooter1.Height := 0.1;', '  end', 'end;', '', 'procedure DetailHeader2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader2, Engine do', '  begin', 'Visible := [PRINT_INDICES];', '  end', 'end;', '', 'procedure DetailData2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData2, Engine do', '  begin', 'Visible := [PRINT_INDICES];', '  end', 'end;', '', 'procedure DetailFooter2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailFooter2, Engine do', '  begin', '    Visible := [PRINT_FIELDS];', '    DetailFooter2.Height := 0.1;', '  end', 'end;', '', 'procedure Memo23OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with Memo23, Engine do', '  begin', '', '  end', 'end;', '', 'procedure DDLDataOnAfterCalcHeight(Sender: TfrxComponent);', 'var', '  iLines : integer;', 'begin', '  iLines := Trunc(DDLData.Height) div [DDL_LINE_HEIGHT];', '  DDLData.Height := iLines * [DDL_LINE_HEIGHT];', 'end;', '', 'begin', '', 'end.']
    OnBeginDoc = frxCompositeBeginDoc
    OnGetValue = frxTableRepGetValue
    Left = 232
    Top = 21
    Datasets = <
      item
        DataSet = frxdConstraintAdd
        DataSetName = 'frxdConstraintAdd'
      end
      item
        DataSet = frxdConstraints
        DataSetName = 'frxdConstraints'
      end
      item
        DataSet = frxdDependOn
        DataSetName = 'frxdDependOn'
      end
      item
        DataSet = frxdFieldAdd
        DataSetName = 'frxdFieldAdd'
      end
      item
        DataSet = frxdFields
        DataSetName = 'frxdFields'
      end
      item
        DataSet = frxdIndices
        DataSetName = 'frxdIndices'
      end
      item
        DataSet = frxdOnDepend
        DataSetName = 'frxdOnDepend'
      end
      item
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
      end
      item
        DataSet = frxdTables
        DataSetName = 'frxdTables'
      end
    >
    Variables = []
    Style = []
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
      Columns = 1
      ColumnWidth = 204
      ColumnPositions.Strings = ['0']
      object MasterData1: TfrxMasterData
        Height = -5.077221997948467e-197
        Top = 80
        Width = -5.769607014372014e-15
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdTables
        DataSetName = 'frxdTables'
        PrintIfDetailEmpty = True
        RowCount = 0
        StartNewPage = True
        object Memo1: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 12
          Width = -5.493103467412138e-106
          Height = -9.723363289385874e+94
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = [' Table: [TABLE_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 270
          Top = 18
          Width = 442
          Height = 18
          Visible = False
          Color = clWhite
          Frame.Width = -0.0
          Memo.UTF8 = ['[PRINT_DDL] [PRINT_DESCRIPTION] [PRINT_ON_DEPEND]', '[PRINT_CONSTRAINTS] [PRINT_FIELDS] [PRINT_INDICES][DDL_LINE_HEIGHT]']
        end
      end
      object FieldsData_1: TfrxDetailData
        Height = 19
        Top = 220
        Width = -5.769607014372014e-15
        OnBeforePrint = 'FieldsData_1OnBeforePrint'
        Child = frxTableRep.DetailFooter2
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdFields
        DataSetName = 'frxdFields'
        KeepFooter = True
        KeepTogether = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = -5.744017116333078e+76
          Height = 19
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop']
          Memo.UTF8 = [' [FIELD_NAME]']
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = -6.567835911951192e+258
          Width = 202
          Height = 19
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop']
          Memo.UTF8 = [' [FIELD_TYPE]']
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = -1.6759759912428246e+153
          Width = 160
          Height = 19
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop']
          Memo.UTF8 = [' [FIELD_DOMAIN]']
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = -1.0959046745042015e-193
          Width = -9.526820527087379e+139
          Height = 19
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop']
          HAlign = haCenter
          Memo.UTF8 = ['[NOT_NULL]']
          ParentFont = False
        end
      end
      object FieldsData_2: TfrxSubdetailData
        Height = 18
        Top = 265
        Width = -5.769607014372014e-15
        OnBeforePrint = 'FieldsData_2OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdFieldAdd
        DataSetName = 'frxdFieldAdd'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Left = -5.5809931214954833e-104
          Width = -6.20260064581006e-266
          Height = 18
          StretchMode = smActualHeight
          Color = 14540253
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftRight']
          Memo.UTF8 = ['[FIELD_ADD]']
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = 133
          Height = 18
          StretchMode = smMaxHeight
          Color = 14540253
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft']
          Memo.UTF8 = ['[ADD_TYPE]:']
          ParentFont = False
        end
      end
      object FieldsHeader: TfrxHeader
        Height = 55
        Top = 141
        Width = -5.769607014372014e-15
        OnBeforePrint = 'FieldsHeaderOnBeforePrint'
        object Memo6: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -3.346932386851442e+197
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Fields']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 35
          Width = -5.744017116333078e+76
          Height = 20
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Name']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = -9.609621540870016e+257
          Top = 35
          Width = 202
          Height = 20
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Type']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = -1.6759759912428246e+153
          Top = 35
          Width = 160
          Height = 20
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Domain']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = -1.0959046745042015e-193
          Top = 35
          Width = -9.526820527087379e+139
          Height = 20
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          HAlign = haCenter
          Memo.UTF8 = ['Not Null']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object OnDependHeader: TfrxHeader
        Height = 55
        Top = 340
        Width = -5.769607014372014e-15
        OnBeforePrint = 'OnDependHeaderOnBeforePrint'
        object Memo13: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 7
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Objects, that depend on table [TABLE_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 35
          Width = -5.744017116333078e+76
          Height = 20
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Name']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = -9.609621540870016e+257
          Top = 35
          Width = 224
          Height = 20
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Type']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = -1.605266083236198e+206
          Top = 35
          Width = -2.704867999414606e+272
          Height = 20
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Field']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object OnDependData: TfrxDetailData
        Height = 19
        Top = 416
        Width = -5.769607014372014e-15
        OnBeforePrint = 'OnDependDataOnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdOnDepend
        DataSetName = 'frxdOnDepend'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo17: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = -5.744017116333078e+76
          Height = 19
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = -1.605266083236198e+206
          Width = -2.704867999414606e+272
          Height = 19
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_FIELD]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = -9.609621540870016e+257
          Width = 224
          Height = 19
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_TYPE]']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DescriptionData: TfrxDetailData
        Height = 24
        Top = 858
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DescriptionDataOnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        PrintIfDetailEmpty = True
        RowCount = 1
        Stretched = True
        object Memo23: TfrxMemoView
          Left = -4.656612873077393e-10
          Top = 3
          Width = -7.931068241611404e-118
          Height = 18
          OnBeforePrint = 'Memo23OnBeforePrint'
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['[TABLE_DESCRIPTION]']
          ParentFont = False
        end
      end
      object DDLData: TfrxDetailData
        Height = 20
        Top = 967
        Visible = False
        Width = -5.769607014372014e-15
        OnAfterCalcHeight = 'DDLDataOnAfterCalcHeight'
        OnBeforePrint = 'DDLDataOnBeforePrint'
        AllowSplit = True
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object TABLEDDL: TfrxRichView
          Left = 45
          Top = 1
          Width = 673
          Height = 19
          AllowExpressions = False
          DataField = 'Line'
          DataSet = frxdRtf
          DataSetName = 'frxdRtf'
          Frame.Style = fsDouble
          GapX = 2
          GapY = 1
          RichEdit = {153 bytes}
        end
      end
      object DDLHeader: TfrxHeader
        Height = 40
        Top = 906
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DDLHeaderOnBeforePrint'
        object Memo24: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 8
          Width = -5.493103467412138e-106
          Height = -2.2413341860207138e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' DDL']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DescriptionHeader: TfrxHeader
        Height = 33
        Top = 803
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DescriptionHeaderOnBeforePrint'
        object Memo22: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 6
          Width = -5.493103467412138e-106
          Height = -2.2413341860207138e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Description']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 40
        Top = 1017
        Width = -5.769607014372014e-15
        object Memo21: TfrxMemoView
          Left = -5.077221997948467e-197
          Top = 12
          Width = -5.49310346603433e-106
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = ['fsItalic']
          Frame.Typ = ['ftTop']
          HAlign = haRight
          Memo.UTF8 = ['[PAGE_NUMBER]']
          ParentFont = False
        end
      end
      object DetailHeader1: TfrxHeader
        Height = 53
        Top = 462
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader1OnBeforePrint'
        object Memo27: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 7
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Constraints']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = -5.077221997948467e-197
          Top = 35
          Width = 268
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Constraint Name']
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 306
          Top = 35
          Width = 164
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Type']
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 470
          Top = 35
          Width = 248
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' On Field']
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18
        Top = 536
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData1OnBeforePrint'
        Child = frxTableRep.DetailFooter1
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdConstraints
        DataSetName = 'frxdConstraints'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo33: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = 268
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop']
          Memo.UTF8 = [' [CONSTRAINT_NAME]']
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 306
          Width = 164
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop']
          Memo.UTF8 = [' [CONSTRAINT_TYPE]']
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 470
          Width = -2.704867999414606e+272
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop']
          Memo.UTF8 = [' [CONSTRAINT_ON_FIELD]']
          ParentFont = False
        end
      end
      object SubdetailData1: TfrxSubdetailData
        Height = 18
        Top = 575
        Width = -5.769607014372014e-15
        OnBeforePrint = 'SubdetailData1OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdConstraintAdd
        DataSetName = 'frxdConstraintAdd'
        RowCount = 0
        Stretched = True
        object Memo31: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = 92
          Height = 18
          StretchMode = smMaxHeight
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft']
          Memo.UTF8 = [' [C_ADD_TYPE_1]:']
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 305
          Width = 124
          Height = 18
          StretchMode = smMaxHeight
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' [C_ADD_TYPE_2]:']
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = -1.8665272370064378e-301
          Width = 176
          Height = 18
          StretchMode = smMaxHeight
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['[C_SOURCE_1]']
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = -2.9356782284672915e+107
          Width = -5.276589072053972e-228
          Height = 18
          StretchMode = smMaxHeight
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftRight']
          Memo.UTF8 = ['[C_SOURCE_2]']
          ParentFont = False
        end
      end
      object DetailFooter1: TfrxFooter
        Height = 13
        Top = 616
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailFooter1OnBeforePrint'
        object Memo38: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = -5.49310346603433e-106
          Height = 12
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftTop']
          ParentFont = False
        end
      end
      object DetailHeader2: TfrxHeader
        Height = 52
        Top = 656
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader2OnBeforePrint'
        object Memo39: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 8
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Indices']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = -5.077221997948467e-197
          Top = -2.1834706910940536e-274
          Width = 268
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Index Name']
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 306
          Top = 34
          Width = 228
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' On Field']
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 534
          Top = 34
          Width = 58
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          HAlign = haCenter
          Memo.UTF8 = [' Unique']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 592
          Top = 34
          Width = 58
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          HAlign = haCenter
          Memo.UTF8 = [' Active']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 650
          Top = 34
          Width = 68
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          HAlign = haCenter
          Memo.UTF8 = [' Sorting']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData2: TfrxDetailData
        Height = 18
        Top = 752
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData2OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdIndices
        DataSetName = 'frxdIndices'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo45: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = 268
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [INDEX_NAME]']
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 306
          Width = 228
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [INDEX_ON_FIELD]']
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 534
          Width = 58
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          HAlign = haCenter
          Memo.UTF8 = ['[INDEX_UNIQUE]']
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 592
          Width = 58
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          HAlign = haCenter
          Memo.UTF8 = ['[INDEX_ACTIVE]']
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 650
          Width = 68
          Height = 18
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          HAlign = haCenter
          Memo.UTF8 = ['[INDEX_SORTING]']
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 39
        Top = 19
        Width = -5.769607014372014e-15
        object Memo50: TfrxMemoView
          Left = 38
          Top = 3
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Date / Time:']
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 38
          Top = 18
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Database:']
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 364
          Top = 3
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['User:']
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 143
          Top = 3
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATE_TIME]']
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 143
          Top = 18
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATABASE_NAME]']
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 469
          Top = 3
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[USER_NAME]']
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 364
          Top = 18
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Table:']
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 469
          Top = 18
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[TABLE_NAME]']
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 38
          Top = 36
          Width = -5.49310346603433e-106
          Frame.Typ = ['ftTop']
          Frame.Width = 2
        end
      end
      object DetailFooter2: TfrxFooter
        Height = 6
        Top = 304
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailFooter2OnBeforePrint'
        object Memo7: TfrxMemoView
          Left = -5.077221903563677e-197
          Width = -5.49310346603433e-106
          Height = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftTop']
          ParentFont = False
        end
      end
    end
  end
  object frxdTables: TfrxUserDataSet
    UserName = 'frxdTables'
    OnCheckEOF = frxdTablesCheckEOF
    OnFirst = frxdTablesFirst
    OnNext = frxdTablesNext
    Left = 16
    Top = 21
  end
  object frxdFieldAdd: TfrxUserDataSet
    UserName = 'frxdFieldAdd'
    OnCheckEOF = frxdFieldAddCheckEOF
    OnFirst = frxdFieldAddFirst
    OnNext = frxdFieldAddNext
    Left = 80
    Top = 21
  end
  object frxdConstraints: TfrxUserDataSet
    UserName = 'frxdConstraints'
    OnCheckEOF = frxdConstraintsCheckEOF
    OnFirst = frxdConstraintsFirst
    OnNext = frxdConstraintsNext
    Left = 112
    Top = 22
  end
  object frxdConstraintAdd: TfrxUserDataSet
    UserName = 'frxdConstraintAdd'
    OnCheckEOF = frxdConstraintAddCheckEOF
    Left = 144
    Top = 22
  end
  object frxdIndices: TfrxUserDataSet
    UserName = 'frxdIndices'
    OnCheckEOF = frxdIndicesCheckEOF
    Left = 176
    Top = 23
  end
  object frxdExceptions: TfrxUserDataSet
    UserName = 'frxdExceptions'
    OnCheckEOF = frxdExceptionsCheckEOF
    OnFirst = frxdExceptionsFirst
    OnNext = frxdExceptionsNext
    Left = 16
    Top = 326
  end
  object frxdUDFs: TfrxUserDataSet
    UserName = 'frxdUDFs'
    OnCheckEOF = frxdUDFsCheckEOF
    OnFirst = frxdUDFsFirst
    OnNext = frxdUDFsNext
    Left = 16
    Top = 406
  end
  object frxUDFRep: TfrxReport
    Version = '3.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -8.062393222160715e-199
    ReportOptions.LastChange = -8.063676347533047e-199
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['procedure DetailHeader1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader1, Engine do', '  begin', 'Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DDLData, Engine do', '  begin', 'Visible := [PRINT_DDL];', '  end', 'end;', '', 'procedure DetailHeader2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader2, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DetailData2OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData2, Engine do', '  begin', 'Visible := [PRINT_DESCRIPTION];', '  end', 'end;', '', 'procedure DetailHeader3OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailHeader3, Engine do', '  begin', 'Visible := [PRINT_ON_DEPEND];', '  end', 'end;', '', 'procedure DetailData3OnBeforePrint(Sender: TfrxComponent);', 'begin', '  with DetailData3, Engine do', '  begin', 'Visible := [PRINT_ON_DEPEND];', '  end', 'end;', '', 'procedure DDLDataOnAfterCalcHeight(Sender: TfrxComponent);', 'var', '  iLines : integer;', 'begin', '  iLines := Trunc(DDLData.Height) div [DDL_LINE_HEIGHT];', '  DDLData.Height := iLines * [DDL_LINE_HEIGHT];', 'end;', '', 'begin', '', 'end.']
    OnBeginDoc = frxCompositeBeginDoc
    OnGetValue = frxUDFRepGetValue
    Left = 232
    Top = 403
    Datasets = <
      item
        DataSet = frxdOnDepend
        DataSetName = 'frxdOnDepend'
      end
      item
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
      end
      item
        DataSet = frxdUDFs
        DataSetName = 'frxdUDFs'
      end
    >
    Variables = []
    Style = []
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 5
      RightMargin = 5
      TopMargin = 5
      BottomMargin = 5
      Columns = 1
      ColumnWidth = 200
      ColumnPositions.Strings = ['0']
      object PageHeader1: TfrxPageHeader
        Height = 42
        Top = 24
        Width = -5.769607014372014e-15
        object Memo50: TfrxMemoView
          Left = 39
          Top = 4
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Date / Time:']
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 39
          Top = 19
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['Database:']
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 365
          Top = 4
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['User:']
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 144
          Top = 4
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATE_TIME]']
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 144
          Top = 19
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[DATABASE_NAME]']
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 470
          Top = 4
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[USER_NAME]']
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 365
          Top = 19
          Width = 96
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['UDF:']
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 470
          Top = 19
          Width = 200
          Height = 14
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = ['[UDF_NAME]']
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -5.077221903563677e-197
          Top = 38
          Width = -5.493103467412138e-106
          Frame.Typ = ['ftTop']
          Frame.Width = 2
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 34
        Top = 1008
        Width = -5.769607014372014e-15
        object Memo4: TfrxMemoView
          Left = 42
          Top = 8
          Width = 680
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = ['fsItalic']
          Frame.Typ = ['ftTop']
          HAlign = haRight
          Memo.UTF8 = ['[PAGE_NUMBER]']
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 41
        Top = 108
        Width = -5.769607014372014e-15
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdUDFs
        DataSetName = 'frxdUDFs'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -5.877471754111438e-39
          Width = -5.493103467412138e-106
          Height = -9.723363289385874e+94
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = [' UDF: [UDF_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 246
          Top = 13
          Width = 443
          Height = 18
          Visible = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['[PRINT_DDL] [PRINT_DESCRIPTION] [PRINT_ON_DEPEND][DDL_LINE_HEIGHT]']
          ParentFont = False
        end
      end
      object DetailHeader1: TfrxHeader
        Height = 36
        Top = 190
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader1OnBeforePrint'
        object Memo58: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = -5.877471754111438e-39
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' DDL']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DDLData: TfrxDetailData
        Height = 29
        Top = 256
        Width = -5.769607014372014e-15
        OnAfterCalcHeight = 'DDLDataOnAfterCalcHeight'
        OnBeforePrint = 'DetailData1OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdRtf
        DataSetName = 'frxdRtf'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object UDF_DDL: TfrxRichView
          Left = 51
          Width = 671
          Height = 19
          StretchMode = smMaxHeight
          DataField = 'Line'
          DataSet = frxdRtf
          DataSetName = 'frxdRtf'
          GapX = 2
          GapY = 1
          RichEdit = {153 bytes}
        end
      end
      object DetailHeader2: TfrxHeader
        Height = -3.531574631941889e-228
        Top = 452
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader2OnBeforePrint'
        object Memo57: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 11
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Description']
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData2: TfrxDetailData
        Height = 26
        Top = 528
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData2OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        PrintIfDetailEmpty = True
        RowCount = 1
        Stretched = True
        object Memo59: TfrxMemoView
          Left = 48
          Top = 4
          Width = 670
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = ['[UDF_DESCRIPTION]']
          ParentFont = False
        end
      end
      object DetailHeader3: TfrxHeader
        Height = -3.384606560206073e+125
        Top = 316
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailHeader3OnBeforePrint'
        object Memo9: TfrxMemoView
          Left = -5.077221903563677e-197
          Top = 10
          Width = -5.493103467412138e-106
          Height = -2.2413334452244175e-51
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Memo.UTF8 = [' Object, that depend on UDF [UDF_NAME]']
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = -5.077221997948467e-197
          Top = -5.5329046628180653e-222
          Width = 390
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Dependent']
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 428
          Top = -5.5329046628180653e-222
          Width = 290
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' Type']
          ParentFont = False
        end
      end
      object DetailData3: TfrxDetailData
        Height = 18
        Top = 404
        Width = -5.769607014372014e-15
        OnBeforePrint = 'DetailData3OnBeforePrint'
        Columns = 1
        ColumnWidth = 200
        ColumnGap = 20
        DataSet = frxdOnDepend
        DataSetName = 'frxdOnDepend'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo13: TfrxMemoView
          Left = -5.077221997948467e-197
          Width = 390
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_NAME]']
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 428
          Width = 290
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = ['ftLeft', 'ftRight', 'ftTop', 'ftBottom']
          Memo.UTF8 = [' [DEP_ON_TYPE]']
          ParentFont = False
        end
      end
    end
  end
  object frxComposite: TfrxReport
    Version = '3.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -7.036805753594978e-199
    ReportOptions.LastChange = -7.036805753594978e-199
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['begin', '', 'end.']
    OnBeginDoc = frxCompositeBeginDoc
    OnGetValue = frxCompositeGetValue
    OnProgress = frxCompositeProgress
    Left = 328
    Top = 472
    Datasets = []
    Variables = []
    Style = []
  end
end
