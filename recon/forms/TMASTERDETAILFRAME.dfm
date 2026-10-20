object MasterDetailFrame: TMasterDetailFrame
  Left = 0
  Top = 0
  Width = 431
  Height = 195
  HelpContext = 14700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  OnResize = FrameResize
  object GR: TdxDBGrid
    Tag = 1
    Left = 0
    Top = 49
    Width = 431
    Height = 146
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = []
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    OnKeyUp = GRKeyUp
    AutoSearchColor = 6986751
    DataSource = DS
    Filter.Criteria = {4 bytes}
    LookAndFeel = lfFlat
    OptionsBehavior = ['edgoAutoCopySelectedToClipboard', 'edgoAutoSearch', 'edgoAutoSort', 'edgoDragScroll', 'edgoEnterShowEditor', 'edgoTabThrough', 'edgoVertThrough']
    OptionsCustomize = ['edgoBandMoving', 'edgoBandSizing', 'edgoColumnMoving', 'edgoColumnSizing', 'edgoRowSizing']
    OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanDelete', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoUseBookmarks']
    OptionsView = ['edgoBandHeaderWidth', 'edgoHotTrack', 'edgoIndicator', 'edgoUseBitmap']
    OnChangeColumn = GRChangeColumn
    OnChangeNode = GRChangeNode
    OnCustomDrawCell = GRCustomDrawCell
    OnCustomDrawColumnHeader = GRCustomDrawColumnHeader
    OnColumnClick = GRColumnClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 18
    Width = 431
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lFetched: TLabel
      Left = 836
      Top = 9
      Width = 3
      Height = 13
      Alignment = taRightJustify
      Anchors = ['akTop', 'akRight']
    end
    object Label1: TLabel
      Left = 428
      Top = 9
      Width = 3
      Height = 13
      Alignment = taRightJustify
      Anchors = ['akTop', 'akRight']
    end
    object DBNavigator: TDBNavigator
      Left = 3
      Top = 3
      Width = 100
      Height = 25
      DataSource = DS
      VisibleButtons = ['nbFirst', 'nbPrior', 'nbNext', 'nbLast']
      Flat = True
      Hints.Strings = ['First', 'Previous', 'Next', 'Last', 'Insert', 'Delete', 'Edit', 'Save Updates', 'Cancel Updates', 'Refresh']
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 0
    end
    object bAbortFetch: TButton
      Left = 103
      Top = 3
      Width = 89
      Height = 25
      Caption = 'Abort fetching'
      TabOrder = 1
      Visible = False
      OnClick = bAbortFetchClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 431
    Height = 18
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clBtnShadow
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = ['fsBold']
    ParentFont = False
    TabOrder = 2
  end
  object DS: TDataSource
    DataSet = DataD
    Left = 234
    Top = 78
  end
  object DataD: TpFIBDataSet
    BufferChunks = 32
    CachedUpdates = False
    UniDirectional = False
    UpdateRecordTypes = ['cusUnmodified', 'cusModified', 'cusInserted']
    Options = ['poTrimCharFields', 'poAllowChangeSqls', 'poRefreshAfterPost']
    AfterOpen = DataDAfterOpen
    AfterScroll = DataDAfterScroll
    ObjectView = False
    PrepareOptions = []
    DefaultFormats.DateTimeDisplayFormat = 'dd MM yyyy'
    DefaultFormats.NumericEditFormat = '0'
    DefaultFormats.DisplayFormatDate = 'dd/MM/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 234
    Top = 110
  end
end
