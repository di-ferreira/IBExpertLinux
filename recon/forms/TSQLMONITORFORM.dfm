object SQLMonitorForm: TSQLMonitorForm
  Left = 383
  Top = 281
  Width = 582
  Height = 503
  HelpContext = 1700
  Caption = 'SQL Monitor'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {766 bytes}
  OldCreateOrder = True
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TIBEPageControl
    Left = 0
    Top = 26
    Width = 566
    Height = 441
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsAsGrid
    ButtonSettings.PageListButtonHint = 'Page List'
    ShowShortCutHints = False
    TabOrder = 4
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsAsGrid: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 564
      Height = 413
      Caption = 'As Grid'
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
      object Splitter1: TdfsSplitter
        Left = 2
        Top = 231
        Width = 560
        Height = 4
        Cursor = crVSplit
        Align = alTop
        ResizeStyle = rsUpdate
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object Grid: TdxDBGrid
        Left = 2
        Top = 2
        Width = 560
        Height = 229
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
        Align = alTop
        TabOrder = 0
        DataSource = DS
        Filter.Criteria = {4 bytes}
        LookAndFeel = lfFlat
        OptionsBehavior = ['edgoAutoSearch', 'edgoAutoSort', 'edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoStoreToRegistry', 'edgoTabThrough', 'edgoVertThrough']
        OptionsDB = ['edgoCancelOnExit', 'edgoCanNavigation', 'edgoLoadAllRecords', 'edgoUseBookmarks']
        OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoRowSelect', 'edgoUseBitmap']
        object gcNum: TdxDBGridColumn
          Caption = '#'
          HeaderAlignment = taRightJustify
          Width = 37
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Key'
        end
        object gcTime: TdxDBGridColumn
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Timestamp'
        end
        object gcDelta: TdxDBGridColumn
          Width = 63
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Delta'
        end
        object gcTotalTime: TdxDBGridColumn
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TotalTime'
        end
        object gcAction: TdxDBGridColumn
          Width = 189
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Action'
        end
        object gcStatement: TdxDBGridMemoColumn
          DisableEditor = True
          Width = 415
          BandIndex = 0
          RowIndex = 0
          HeaderMaxLineCount = 1
          FieldName = 'Statement'
          MaxDisplayLength = 1000
          WordWrap = False
        end
      end
      object MonitorFm: TEditFrame
        Left = 2
        Top = 235
        Width = 560
        Height = 176
        TabOrder = 1
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 560
          Height = 158
        end
        object pIncSearch: TPanel
          Top = 158
          Width = 560
        end
      end
    end
    object tsAsText: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 564
      Height = 413
      Caption = 'As Text'
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
      object MonitorFm2: TEditFrame
        Left = 2
        Top = 2
        Width = 560
        Height = 409
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 560
          Height = 391
        end
        object pIncSearch: TPanel
          Top = 391
          Width = 560
        end
      end
    end
    object tsOptions: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 564
      Height = 413
      Caption = 'Monitor Options'
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
      object GroupBox1: TGroupBox
        Left = 8
        Top = 10
        Width = 549
        Height = 223
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Monitor following actions '
        TabOrder = 0
        object cbConnect: TdxCheckEdit
          Left = 8
          Top = 23
          Width = 325
          TabOrder = 0
          Caption = 'Connect / Disconnect'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbConnectChange
        end
        object cbPrepare: TdxCheckEdit
          Left = 8
          Top = 53
          Width = 229
          TabOrder = 1
          Caption = 'Prepare of statement'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbPrepareChange
        end
        object cbExecute: TdxCheckEdit
          Left = 8
          Top = 77
          Width = 229
          TabOrder = 2
          Caption = 'Execute of statement'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbExecuteChange
        end
        object cbFetch: TdxCheckEdit
          Left = 8
          Top = 101
          Width = 229
          TabOrder = 3
          Caption = 'Fetch record'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbFetchChange
        end
        object cbTransactions: TdxCheckEdit
          Left = 8
          Top = 132
          Width = 229
          TabOrder = 4
          Caption = 'Start/Commit/Rollback of transactions'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbTransactionsChange
        end
        object cbServices: TdxCheckEdit
          Left = 8
          Top = 156
          Width = 229
          TabOrder = 5
          Caption = 'Services Manager actions'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbServicesChange
        end
        object cbAPICalls: TdxCheckEdit
          Left = 8
          Top = 187
          Width = 229
          TabOrder = 6
          Caption = 'InterBase/Firebird API calls'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbAPICallsChange
        end
      end
    end
  end
  object MonitorActions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 472
    Top = 64
    object actClearOutput: TAction
      Caption = 'Clear Monitor Output'
      ImageIndex = 45
      OnExecute = actClearOutputExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actOptions: TAction
      Caption = 'SQL Monitor Options'
      Hint = 'Monitor Options'
      ImageIndex = 98
    end
    object actStartStop: TAction
      Caption = 'Start monitor'
      ImageIndex = 56
      OnExecute = actStartStopExecute
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
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'SQL Monitor'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'SQL Monitor'
        NotDocking = ['dsNone', 'dsLeft', 'dsRight', 'dsBottom']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default']
    Categories.ItemsVisibles = [2]
    Categories.Visibles = [True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 296
    Top = 96
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = actClearOutput
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actStartStop
      Category = 0
      ShortCut = 120
      UnclickAfterDoing = False
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 208
    Top = 104
  end
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    Left = 240
    Top = 104
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtTimestamp: TDateTimeField
      FieldName = 'Timestamp'
    end
    object mtStatement: TMemoField
      FieldName = 'Statement'
      BlobType = ftMemo
    end
    object mtAction: TStringField
      FieldName = 'Action'
      Size = 100
    end
    object mtDelta: TTimeField
      FieldName = 'Delta'
    end
    object mtTotalTime: TTimeField
      FieldName = 'TotalTime'
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 256
    Top = 153
  end
end
