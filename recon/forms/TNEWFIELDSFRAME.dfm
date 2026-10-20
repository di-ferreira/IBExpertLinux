object NewFieldsFrame: TNewFieldsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  Align = alClient
  TabOrder = 0
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 129
    Width = 435
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    Color = clBtnFace
    ParentColor = False
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object GR: TdxDBGrid
    Left = 0
    Top = 18
    Width = 435
    Height = 111
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Key'
    SummaryGroups = []
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 2
    OnDblClick = GRDblClick
    OnDragDrop = GRDragDrop
    OnDragOver = GRDragOver
    OnEnter = GREnter
    OnExit = GRExit
    OnKeyDown = GRKeyDown
    OnKeyPress = GRKeyPress
    OnKeyUp = GRKeyUp
    OnMouseUp = GRMouseUp
    DataSource = DS
    Filter.Criteria = {4 bytes}
    LookAndFeel = lfFlat
    OptionsBehavior = ['edgoAutoSort', 'edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoMultiSort', 'edgoTabThrough', 'edgoVertThrough']
    OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
    OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoUseBitmap']
    OnColumnSorting = GRColumnSorting
    OnCustomDrawCell = GRCustomDrawCell
    OnEdited = GREdited
    OnEditing = GREditing
    object gcNumber: TdxDBGridColumn
      Caption = '#'
      DisableEditor = True
      Width = 23
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Number'
    end
    object gcPK: TdxDBGridColumn
      DisableDragging = True
      DisableEditor = True
      Width = 21
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PK'
      DisableFilter = True
    end
    object gcFK: TdxDBGridColumn
      DisableDragging = True
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 21
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FK'
      DisableFilter = True
    end
    object gcUNQ: TdxDBGridColumn
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 30
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UNQ'
    end
    object gcName: TdxDBGridColumn
      MaxLength = 31
      Width = 170
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
    end
    object gcType: TdxDBGridPickColumn
      CharCase = ecUpperCase
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Type'
      DropDownListStyle = True
      DropDownRows = 20
      OnCloseUp = gcTypeCloseUp
    end
    object gcDomain: TdxDBGridPopupColumn
      Width = 102
      BandIndex = 0
      RowIndex = 0
      OnChange = gcDomainChange
      FieldName = 'Domain'
      PopupControl = SelDomFm
      PopupFormBorderStyle = pbsSysPanel
      OnInitPopup = gcDomainInitPopup
      OnPopup = gcDomainPopup
    end
    object gcLength: TdxDBGridSpinColumn
      Width = 45
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Length'
    end
    object gcScale: TdxDBGridSpinColumn
      Width = 37
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Scale'
    end
    object gcSubType: TdxDBGridPickColumn
      Width = 49
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SubType'
      Items.Strings = ['BINARY', 'TEXT']
    end
    object gcArray: TdxDBGridColumn
      Width = 52
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Array'
    end
    object gcNotNull: TdxDBGridColumn
      Caption = 'Not Null'
      DisableEditor = True
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NotNull'
      DisableFilter = True
    end
    object gcBinary: TdxDBGridColumn
      DisableEditor = True
      Visible = False
      Width = 40
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Binary'
    end
    object gcUnsigned: TdxDBGridColumn
      DisableEditor = True
      Visible = False
      Width = 54
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Unsigned'
    end
    object gcZeroFill: TdxDBGridColumn
      DisableEditor = True
      Visible = False
      Width = 42
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Zerofill'
    end
    object gcCharset: TdxDBGridPickColumn
      Width = 88
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Charset'
      DropDownListStyle = True
      DropDownRows = 20
    end
    object gcCollation: TdxDBGridPickColumn
      Width = 89
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Collation'
      DropDownListStyle = True
      DropDownRows = 20
    end
    object gcDesc: TdxDBGridBlobColumn
      Width = 246
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 0
      FieldName = 'Description'
      AlwaysSaveText = True
      BlobPaintStyle = bpsText
      MaxDisplayLength = 1000
    end
    object gcDescM: TdxDBGridMemoColumn
      Visible = False
      Width = 58
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Description'
      WordWrap = False
    end
    object gcAutoInc: TdxDBGridPopupColumn
      DisableEditor = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AutoInc'
    end
    object gcCheck: TdxDBGridBlobColumn
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Check'
      AlwaysSaveText = True
      BlobPaintStyle = bpsText
      ShowExPopupItems = True
      ShowPicturePopup = True
    end
    object gcNewModified: TdxDBGridColumn
      Visible = False
      Width = 66
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NewModified'
    end
    object gcPointer: TdxDBGridColumn
      Visible = False
      Width = 58
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Pointer'
    end
    object gcCanModify: TdxDBGridColumn
      Visible = False
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CanModify'
    end
    object gcComputedBy: TdxDBGridBlobColumn
      Width = 100
      BandIndex = 0
      RowIndex = 0
      HeaderMaxLineCount = 0
      FieldName = 'ComputedBy'
      AlwaysSaveText = True
      BlobPaintStyle = bpsText
    end
    object gcDefault: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Default'
    end
    object gcDomainNotNull: TdxDBGridColumn
      Visible = False
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DomainNotNull'
    end
    object gcFieldNotNull: TdxDBGridColumn
      Visible = False
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FieldNotNull'
    end
    object gcDomainCollate: TdxDBGridColumn
      Visible = False
      Width = 173
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DomainCollate'
    end
    object gcSetEnumValues: TdxDBGridMemoColumn
      Caption = 'SET / ENUM Values'
      Visible = False
      Width = 101
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SetEnum'
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 435
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
    TabOrder = 0
  end
  object pFieldDescription: TPanel
    Left = 0
    Top = 133
    Width = 435
    Height = 135
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pFieldDescription'
    TabOrder = 1
    object Pages: TIBEPageControl
      Left = 0
      Top = 0
      Width = 435
      Height = 135
      AdvOfficePagerStyler = IBEMainForm.PCStyler
      Align = alClient
      ActivePage = tsDescription
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
      object tsDescription: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 435
        Height = 110
        Caption = 'Field description'
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
        object FieldDescFm: TEditFrame
          Left = 2
          Top = 2
          Width = 431
          Height = 106
          object EditM: TSQLMemo
            Width = 431
            Height = 88
            OnExit = FieldDescFmEditMExit
          end
          object pIncSearch: TPanel
            Top = 88
            Width = 431
          end
        end
      end
      object tsDependencies: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 435
        Height = 110
        Caption = 'Field dependencies'
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
        object tl: TdxTreeList
          Tag = 321
          Left = 2
          Top = 2
          Width = 431
          Height = 106
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
          OnDblClick = tlDblClick
          OnKeyDown = tlKeyDown
          OnCustomDrawCell = tlCustomDrawCell
          object tlcObject: TdxTreeListColumn
            Caption = 'Object name'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            Width = 205
            BandIndex = 0
            RowIndex = 0
          end
          object tlcType: TdxTreeListColumn
            Caption = 'Object type'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            Width = 228
            BandIndex = 0
            RowIndex = 0
          end
          object tlcUpdate: TdxTreeListColumn
            Alignment = taLeftJustify
            Caption = 'Update'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 0
            RowIndex = 0
          end
          object tlcInsert: TdxTreeListColumn
            Alignment = taLeftJustify
            Caption = 'Insert'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 0
            RowIndex = 0
          end
        end
      end
    end
  end
  object SelDomFm: TSelectDomainFrame
    Left = 210
    Top = 53
    Width = 450
    Height = 211
    Align = alNone
    TabOrder = 3
    Visible = False
    object tl: TdxTreeList
      Width = 450
      Height = 211
      Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoSort']
      OnDblClick = SelDomFmtlDblClick
      OnKeyPress = SelDomFmtlKeyPress
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 268
    Top = 82
  end
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    AfterPost = mtAfterPost
    BeforeDelete = mtBeforeDelete
    OnNewRecord = mtNewRecord
    Left = 300
    Top = 82
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtPK: TIntegerField
      FieldName = 'PK'
      OnChange = mtPKChange
    end
    object mtName: TStringField
      FieldName = 'Name'
      OnChange = mtNameChange
      Size = 67
    end
    object mtType: TStringField
      FieldName = 'Type'
      OnChange = mtTypeChange
      Size = 100
    end
    object mtTypeID: TIntegerField
      FieldName = 'TypeID'
    end
    object mtDomain: TStringField
      FieldName = 'Domain'
      OnChange = mtDomainChange
      Size = 31
    end
    object mtIBType: TIntegerField
      FieldName = 'IBType'
    end
    object mtLength: TIntegerField
      FieldName = 'Length'
      OnChange = mtLengthChange
    end
    object mtScale: TSmallintField
      FieldName = 'Scale'
      OnChange = mtScaleChange
    end
    object mtComputedBy: TMemoField
      FieldName = 'ComputedBy'
      OnChange = mtComputedByChange
      BlobType = ftMemo
    end
    object mtCharset: TStringField
      FieldName = 'Charset'
      OnChange = mtCharsetChange
      Size = 31
    end
    object mtCharsetID: TIntegerField
      FieldName = 'CharsetID'
    end
    object mtCollation: TStringField
      FieldName = 'Collation'
      Size = 31
    end
    object mtCollationID: TIntegerField
      FieldName = 'CollationID'
    end
    object mtDefault: TStringField
      DisplayWidth = 10
      FieldName = 'Default'
      Size = 200
    end
    object mtNotNull: TIntegerField
      FieldName = 'NotNull'
      OnChange = mtNotNullChange
    end
    object mtDescription: TMemoField
      FieldName = 'Description'
      BlobType = ftMemo
    end
    object mtDomainNotNull: TBooleanField
      FieldName = 'DomainNotNull'
    end
    object mtFieldNotNull: TBooleanField
      FieldName = 'FieldNotNull'
    end
    object mtSubType: TStringField
      FieldName = 'SubType'
      OnChange = mtSubTypeChange
      Size = 6
    end
    object mtPosition: TSmallintField
      FieldName = 'Position'
    end
    object mtOldPK: TIntegerField
      FieldName = 'OldPK'
    end
    object mtOldName: TStringField
      FieldName = 'OldName'
      Size = 67
    end
    object mtOldTypeID: TIntegerField
      FieldName = 'OldTypeID'
    end
    object mtOldComputedBy: TMemoField
      FieldName = 'OldComputedBy'
      BlobType = ftMemo
    end
    object mtOldDomainNotNull: TBooleanField
      FieldName = 'OldDomainNotNull'
    end
    object mtOldDefault: TStringField
      FieldName = 'OldDefault'
      Size = 200
    end
    object mtOldDescription: TMemoField
      FieldName = 'OldDescription'
      BlobType = ftMemo
    end
    object mtOldDomain: TStringField
      FieldName = 'OldDomain'
      Size = 31
    end
    object mtOldPosition: TSmallintField
      FieldName = 'OldPosition'
    end
    object mtOldLength: TIntegerField
      FieldName = 'OldLength'
    end
    object mtOldScale: TSmallintField
      FieldName = 'OldScale'
    end
    object mtNewModified: TSmallintField
      FieldName = 'NewModified'
    end
    object mtCanModify: TBooleanField
      FieldName = 'CanModify'
    end
    object mtCheck: TMemoField
      FieldName = 'Check'
      BlobType = ftMemo
    end
    object mtGeneratorName: TMemoField
      FieldName = 'GeneratorName'
      BlobType = ftMemo
    end
    object mtGeneratorValue: TLargeintField
      FieldName = 'GeneratorValue'
    end
    object mtTriggerName: TMemoField
      FieldName = 'TriggerName'
      BlobType = ftMemo
    end
    object mtTriggerText: TMemoField
      FieldName = 'TriggerText'
      BlobType = ftMemo
    end
    object mtAutoIncProps: TIntegerField
      FieldName = 'AutoIncProps'
    end
    object mtAutoInc: TSmallintField
      FieldName = 'AutoInc'
    end
    object mtArray: TStringField
      FieldName = 'Array'
      Size = 50
    end
    object mtPointer: TIntegerField
      FieldName = 'Pointer'
    end
    object mtDomainCollate: TStringField
      FieldName = 'DomainCollate'
      Size = 31
    end
    object mtFK: TSmallintField
      FieldName = 'FK'
    end
    object mtNumber: TIntegerField
      FieldName = 'Number'
    end
    object mtSetEnum: TMemoField
      FieldName = 'SetEnum'
      BlobType = ftMemo
    end
    object mtUnsigned: TSmallintField
      FieldName = 'Unsigned'
    end
    object mtBinary: TSmallintField
      FieldName = 'Binary'
    end
    object mtZerofill: TSmallintField
      FieldName = 'Zerofill'
    end
    object mtData: TMemoField
      FieldName = 'Data'
      BlobType = ftMemo
    end
    object mtUNQ: TSmallintField
      FieldName = 'UNQ'
    end
    object mtFKName: TStringField
      FieldName = 'FKName'
      Size = 64
    end
  end
  object FieldsFrameActions: TActionList
    Left = 24
    Top = 72
    object actChangeReadOnly: TAction
      Caption = 'actChangeReadOnly'
      OnExecute = actChangeReadOnlyExecute
    end
    object actCloseDomainsList: TAction
      Caption = 'actCloseDomainsList'
      ShortCut = 27
    end
    object actPrevField: TAction
      Caption = 'actPrevField'
      ShortCut = 16422
      OnExecute = actPrevFieldExecute
      OnUpdate = actPrevFieldUpdate
    end
    object actNextField: TAction
      Caption = 'actNextField'
      ShortCut = 16424
      OnExecute = actNextFieldExecute
      OnUpdate = actNextFieldUpdate
    end
  end
  object FieldsTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = FieldsTimerTimer
    Left = 416
    Top = 64
  end
  object pm: TdxBarPopupMenu
    BarManager = IBEMainForm.bm
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
        BeginGroup = True
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
        Item = IBEMainForm.dxBarButton51
        Visible = True
      end
      item
        Item = IBEMainForm.dxBarButton52
        Visible = True
      end
      item
        Item = IBEMainForm.dxBarButton53
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton139
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton147
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton54
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton55
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton71
        Visible = True
      end
    >
    UseOwnFont = True
    OnPopup = pmPopup
    Left = 56
    Top = 72
  end
end
