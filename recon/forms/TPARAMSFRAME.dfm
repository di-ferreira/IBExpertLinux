object ParamsFrame: TParamsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 9800
  Align = alClient
  TabOrder = 0
  object Bevel1: TBevel
    Left = 0
    Top = 266
    Width = 435
    Height = 2
    Align = alBottom
    Shape = bsBottomLine
  end
  object pCursors: TPanel
    Left = 0
    Top = 18
    Width = 435
    Height = 216
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    Visible = False
    object Splitter3: TdfsSplitter
      Left = 144
      Top = 0
      Width = 3
      Height = 216
      Cursor = crHSplit
      Align = alLeft
      ResizeStyle = rsUpdate
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object CTL: TdxTreeList
      Left = 0
      Top = 0
      Width = 144
      Height = 216
      Bands = <
        item
        end
      >
      DefaultLayout = True
      HeaderPanelRowCount = 1
      Align = alLeft
      DragMode = dmAutomatic
      TabOrder = 0
      HideSelection = False
      LookAndFeel = lfFlat
      Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
      OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
      TreeLineColor = clGrayText
      ShowGrid = True
      ShowRoot = False
      GridLineColor = clSilver
      OnKeyPress = CTLKeyPress
      OnChangeNode = CTLChangeNode
      OnEdited = CTLEdited
      object tlcCName: TdxTreeListColumn
        Caption = 'Cursor name'
        DisableCustomizing = True
        DisableDragging = True
        Width = 149
        BandIndex = 0
        RowIndex = 0
      end
      object tlcCSQL: TdxTreeListColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
      object tlcCOldName: TdxTreeListColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
      object tlcCOldSQL: TdxTreeListColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
    end
    object CursorFm: TEditFrame
      Left = 147
      Width = 288
      Height = 216
      TabOrder = 1
      object EditM: TSQLMemo
        Width = 288
        Height = 198
        OnEnter = CursorFmEditMEnter
      end
      object pIncSearch: TPanel
        Top = 198
        Width = 288
      end
    end
  end
  object GR: TdxDBGrid
    Left = 0
    Top = 18
    Width = 435
    Height = 216
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
    DragMode = dmAutomatic
    TabOrder = 3
    Visible = False
    OnDblClick = GRDblClick
    OnDragDrop = GRDragDrop
    OnDragOver = GRDragOver
    OnKeyDown = GRKeyDown
    OnKeyPress = GRKeyPress
    AutoSearchColor = 6986751
    DataSource = DS
    Filter.Criteria = {4 bytes}
    HideFocusRect = True
    HideSelectionColor = clBtnFace
    HideSelectionTextColor = clBtnText
    LookAndFeel = lfFlat
    OptionsBehavior = ['edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
    OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
    OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoUseBitmap']
    OnChangeColumn = GRChangeColumn
    OnCustomDrawCell = GRCustomDrawCell
    OnCustomDrawColumnHeader = GRCustomDrawColumnHeader
    OnEdited = GREdited
    OnEditing = GREditing
    OnCustomDraw = GRCustomDraw
    object gcName: TdxDBGridColumn
      Width = 154
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
    end
    object gcVarName: TdxDBGridColumn
      Caption = 'Name'
      Visible = False
      Width = 181
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VarName'
    end
    object gcType: TdxDBGridPickColumn
      Width = 94
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Type'
      DropDownRows = 20
      OnCloseUp = gcTypeCloseUp
    end
    object gcTypeOf: TdxDBGridColumn
      Alignment = taCenter
      Caption = 'TYPE OF'
      DisableEditor = True
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TypeOf'
    end
    object gcDomain: TdxDBGridPopupColumn
      Visible = False
      Width = 120
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
      Width = 41
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Length'
    end
    object gcScale: TdxDBGridSpinColumn
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Scale'
    end
    object gcDefault: TdxDBGridColumn
      Width = 121
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Default'
    end
    object gcSubType: TdxDBGridPickColumn
      Width = 61
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SubType'
      Items.Strings = ['BINARY', 'TEXT']
      ImmediateDropDown = False
    end
    object gcCharset: TdxDBGridPickColumn
      Width = 77
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Charset'
      DropDownRows = 20
    end
    object gcNotNull: TdxDBGridColumn
      Alignment = taCenter
      Caption = 'Not Null'
      DisableEditor = True
      HeaderAlignment = taCenter
      Visible = False
      Width = 55
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NotNull'
    end
    object gcCollate: TdxDBGridPickColumn
      Width = 184
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Collate'
    end
    object gcHighLight: TdxDBGridColumn
      Visible = False
      Width = 76
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Highlight'
    end
    object gcDesc: TdxDBGridMemoColumn
      Width = 263
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Description'
      MaxDisplayLength = 1000
      WordWrap = False
    end
  end
  object Tabs: TTabControl
    Left = 0
    Top = 240
    Width = 435
    Height = 26
    Align = alBottom
    Style = tsFlatButtons
    TabOrder = 0
    Tabs.Strings = ['Input Parameters', 'Output Parameters', '&Variables']
    TabIndex = 0
    OnChange = TabsChange
    OnChanging = TabsChanging
    OnDragDrop = TabsDragDrop
    OnDragOver = TabsDragOver
  end
  object Panel1: TPanel
    Left = 0
    Top = 234
    Width = 435
    Height = 6
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
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
    TabOrder = 2
  end
  object SelDomFm: TSelectDomainFrame
    Left = 120
    Top = 51
    Width = 522
    Height = 185
    Align = alNone
    TabOrder = 5
    Visible = False
    object tl: TdxTreeList
      Width = 522
      Height = 185
      OnDblClick = SelDomFmtlDblClick
      OnKeyPress = SelDomFmtlKeyPress
      object tlcCharset: TdxTreeListColumn
        Sorted = csUp
      end
    end
  end
  object SelectPages: TIBEPageControl
    Left = 112
    Top = 112
    Width = 521
    Height = 223
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    ActivePage = tsDomain
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
    Visible = False
    TabOrder = 6
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsDomain: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 521
      Height = 198
      Caption = 'Domain'
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
    object tsColumn: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 521
      Height = 198
      Caption = 'Table column'
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
      object tlColumns: TdxTreeList
        Left = 2
        Top = 2
        Width = 517
        Height = 194
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        HideSelection = False
        Images = IBEMainForm.ImageList
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        TreeLineColor = clGrayText
        GridLineColor = clSilver
        OnDblClick = tlColumnsDblClick
        OnKeyPress = tlColumnsKeyPress
        OnCustomDrawCell = tlColumnsCustomDrawCell
        OnExpanding = tlColumnsExpanding
        object tlColumnsColumn1: TdxTreeListColumn
          Caption = 'Table/Column'
          Width = 174
          BandIndex = 0
          RowIndex = 0
        end
        object tlColumnsColumn2: TdxTreeListColumn
          Caption = 'Column Type'
          Width = 161
          BandIndex = 0
          RowIndex = 0
        end
        object tlColumnsColumn4: TdxTreeListColumn
          Caption = 'Description'
          Width = 204
          BandIndex = 0
          RowIndex = 0
        end
        object tlColumnsColumn3: TdxTreeListColumn
          Visible = False
          Width = 235
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    AfterPost = mtAfterPost
    OnNewRecord = mtNewRecord
    Left = 8
    Top = 40
    object mtName: TStringField
      FieldName = 'Name'
      OnChange = mtNameChange
      Size = 31
    end
    object mtType: TStringField
      DisplayWidth = 15
      FieldName = 'Type'
      OnChange = mtTypeChange
      Size = 18
    end
    object mtLength: TIntegerField
      FieldName = 'Length'
      OnChange = mtLengthChange
    end
    object mtScale: TSmallintField
      FieldName = 'Scale'
      OnChange = mtScaleChange
    end
    object mtSubType: TStringField
      FieldName = 'SubType'
      OnChange = mtSubTypeChange
      Size = 10
    end
    object mtCharset: TStringField
      FieldName = 'Charset'
      OnChange = mtCharsetChange
      Size = 15
    end
    object mtScope: TSmallintField
      FieldName = 'Scope'
    end
    object mtDescription: TMemoField
      FieldName = 'Description'
      BlobType = ftMemo
    end
    object mtOldDescription: TMemoField
      FieldName = 'OldDescription'
      BlobType = ftMemo
    end
    object mtTypeID: TIntegerField
      FieldName = 'TypeID'
    end
    object mtVarName: TStringField
      FieldName = 'VarName'
      OnChange = mtVarNameChange
      Size = 100
    end
    object mtHighlight: TSmallintField
      FieldName = 'Highlight'
    end
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtDefault: TStringField
      FieldName = 'Default'
      Size = 200
    end
    object mtDomain: TStringField
      FieldName = 'Domain'
      OnChange = mtDomainChange
      Size = 64
    end
    object mtTypeOf: TSmallintField
      FieldName = 'TypeOf'
    end
    object mtNotNull: TSmallintField
      FieldName = 'NotNull'
    end
    object mtTable: TStringField
      FieldName = 'Table'
      Size = 64
    end
    object mtCollate: TStringField
      FieldName = 'Collate'
      Size = 30
    end
    object mtColumn: TStringField
      FieldName = 'Column'
      Size = 64
    end
    object mtDomainCollate: TStringField
      FieldName = 'DomainCollate'
      Size = 30
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 40
    Top = 40
  end
  object mtm: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    Left = 312
    Top = 40
    object mtmName: TStringField
      FieldName = 'Name'
      OnChange = mtNameChange
      Size = 31
    end
    object mtmType: TStringField
      DisplayWidth = 15
      FieldName = 'Type'
      OnChange = mtTypeChange
      Size = 18
    end
    object mtmLength: TIntegerField
      FieldName = 'Length'
      OnChange = mtLengthChange
    end
    object mtmScale: TSmallintField
      FieldName = 'Scale'
      OnChange = mtScaleChange
    end
    object mtmSubType: TStringField
      FieldName = 'SubType'
      Size = 10
    end
    object mtmCharset: TStringField
      FieldName = 'Charset'
      Size = 15
    end
    object mtmScope: TSmallintField
      FieldName = 'Scope'
    end
    object mtmDescription: TMemoField
      FieldName = 'Description'
      BlobType = ftMemo
    end
    object mtmOldDescription: TMemoField
      FieldName = 'OldDescription'
      BlobType = ftMemo
    end
    object mtmTypeID: TIntegerField
      FieldName = 'TypeID'
    end
    object mtmVarName: TStringField
      FieldName = 'VarName'
      Size = 100
    end
    object mtmHighlight: TSmallintField
      FieldName = 'Highlight'
    end
    object mtmDefault: TStringField
      FieldName = 'Default'
      Size = 200
    end
    object mtmDomain: TStringField
      FieldName = 'Domain'
      Size = 64
    end
    object mtmTypeOf: TSmallintField
      FieldName = 'TypeOf'
    end
    object mtmNotNull: TSmallintField
      FieldName = 'NotNull'
    end
    object mtmTable: TStringField
      FieldName = 'Table'
      Size = 64
    end
    object mtmCollate: TStringField
      FieldName = 'Collate'
      Size = 30
    end
    object mtmColumn: TStringField
      FieldName = 'Column'
      Size = 64
    end
    object mtmDomainCollate: TStringField
      FieldName = 'DomainCollate'
      Size = 30
    end
  end
  object ParamsActions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ParamsActionsUpdate
    Left = 120
    Top = 72
    object actRemoveParam: TAction
      Caption = 'Remove parameter/variable'
      Hint = 'Remove parameter/variable'
      ImageIndex = 112
      ShortCut = 16430
      OnExecute = actRemoveParamExecute
    end
    object actInsertParam: TAction
      Caption = 'Insert parameter/variable'
      Hint = 'Insert parameter/variable'
      ImageIndex = 115
      OnExecute = actInsertParamExecute
    end
    object actAppendParam: TAction
      Caption = 'Append parameter/variable'
      Hint = 'Append parameter/variable'
      ImageIndex = 116
      OnExecute = actAppendParamExecute
    end
    object actMoveParamUp: TAction
      Caption = 'Move parameter/variable up'
      Hint = 'Move parameter/variable up'
      ImageIndex = 114
      OnExecute = actMoveParamUpExecute
    end
    object actMoveParamDown: TAction
      Caption = 'Move parameter/variable down'
      Hint = 'Move parameter/variable down'
      ImageIndex = 113
      OnExecute = actMoveParamDownExecute
    end
    object actIncrementalSearch: TAction
      Caption = 'Incremental Search'
      ShortCut = 24646
      OnExecute = actIncrementalSearchExecute
    end
    object actCopyParams: TAction
      Caption = 'Copy Parameters/Variables List to Clipboard'
      OnExecute = actCopyParamsExecute
    end
  end
end
