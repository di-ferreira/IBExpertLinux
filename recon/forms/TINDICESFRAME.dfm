object IndicesFrame: TIndicesFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 6100
  Align = alClient
  TabOrder = 0
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 75
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
  object Grid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 435
    Height = 75
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
    TabOrder = 0
    OnDblClick = GridDblClick
    OnKeyPress = GridKeyPress
    OnKeyUp = GridKeyUp
    OnMouseUp = GridMouseUp
    DataSource = DS
    Filter.Criteria = {4 bytes}
    LookAndFeel = lfFlat
    OptionsBehavior = ['edgoAutoSearch', 'edgoAutoSort', 'edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoStoreToRegistry', 'edgoTabThrough', 'edgoVertThrough']
    OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
    OptionsView = ['edgoAutoWidth', 'edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoUseBitmap']
    OnCustomDrawCell = GridCustomDrawCell
    OnEdited = GridEdited
    OnEditing = GridEditing
    object gcPK_FK: TdxDBGridColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 46
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PK_FK'
    end
    object gcName: TdxDBGridColumn
      Width = 101
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
    end
    object gcFields: TdxDBGridPopupColumn
      Width = 186
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fields'
      PopupControl = faf
      PopupFormBorderStyle = pbsSysPanel
      OnCloseUp = gcFieldsCloseUp
      OnPopup = gcFieldsPopup
    end
    object gcExpression: TdxDBGridButtonColumn
      Visible = False
      Width = 186
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Expression'
      Buttons = <
        item
          Default = True
        end
      >
      OnButtonClick = gcExpressionButtonClick
    end
    object gcUnique: TdxDBGridColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 36
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Unique'
    end
    object gcFullText: TdxDBGridColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FullText'
    end
    object gcActive: TdxDBGridColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 34
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Active'
    end
    object gcSorting: TdxDBGridPickColumn
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Sorting'
      DropDownListStyle = True
    end
    object gcIsNew: TdxDBGridColumn
      Visible = False
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'IsNew'
    end
    object gcStat: TdxDBGridColumn
      Alignment = taRightJustify
      Caption = 'Statistics'
      DisableEditor = True
      Width = 46
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Stat'
    end
  end
  object faf: TFieldsAddFrame
    Left = 181
    Top = 88
    Font.Charset = RUSSIAN_CHARSET
    Font.Name = 'Tahoma'
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  object pDesc: TPanel
    Left = 0
    Top = 79
    Width = 435
    Height = 189
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pDesc'
    TabOrder = 2
    object Pages: TIBEPageControl
      Left = 0
      Top = 0
      Width = 435
      Height = 189
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
        Height = 164
        Caption = 'Description'
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
        object IndexDescFm: TEditFrame
          Left = 2
          Top = 2
          Width = 431
          Height = 160
          object EditM: TSQLMemo
            Width = 431
            Height = 142
            OnExit = IndexDescFmEditMExit
          end
          object pIncSearch: TPanel
            Top = 142
            Width = 431
          end
        end
      end
      object tsDependencies: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 435
        Height = 164
        Caption = 'Dependencies'
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
  object DS: TDataSource
    DataSet = mt
    Left = 144
    Top = 192
  end
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    BeforeInsert = mtBeforeInsert
    AfterPost = mtAfterPost
    BeforeDelete = mtBeforeDelete
    AfterScroll = mtAfterScroll
    OnNewRecord = mtNewRecord
    Left = 176
    Top = 192
    object mtIsNew: TSmallintField
      FieldName = 'IsNew'
    end
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtName: TStringField
      DisplayWidth = 31
      FieldName = 'Name'
      OnChange = mtNameChange
      Size = 31
    end
    object mtFields: TStringField
      FieldName = 'Fields'
      Size = 1000
    end
    object mtOldFields: TStringField
      FieldName = 'OldFields'
      Size = 1000
    end
    object mtUnique: TSmallintField
      FieldName = 'Unique'
    end
    object mtOldUnique: TSmallintField
      FieldName = 'OldUnique'
    end
    object mtActive: TSmallintField
      FieldName = 'Active'
    end
    object mtOldActive: TSmallintField
      FieldName = 'OldActive'
    end
    object mtSorting: TStringField
      FieldName = 'Sorting'
      Size = 30
    end
    object mtOldSorting: TStringField
      FieldName = 'OldSorting'
      Size = 30
    end
    object mtStat: TFloatField
      FieldName = 'Stat'
      DisplayFormat = '0.#########################################'
    end
    object mtPK_FK: TSmallintField
      FieldName = 'PK_FK'
    end
    object mtExpression: TStringField
      FieldName = 'Expression'
      Size = 500
    end
    object mtOldExpression: TStringField
      FieldName = 'OldExpression'
      Size = 500
    end
    object mtFullText: TSmallintField
      FieldName = 'FullText'
    end
    object mtOldFullText: TSmallintField
      FieldName = 'OldFullText'
    end
    object mtDesc: TBlobField
      FieldName = 'Desc'
      BlobType = ftBlob
    end
    object mtOldDesc: TBlobField
      FieldName = 'OldDesc'
      BlobType = ftBlob
    end
  end
  object pm: TdxBarPopupMenu
    BarManager = IBEMainForm.bm
    ItemLinks = <
      item
        Item = IBEMainForm.dxBarButton25
        Visible = True
      end
      item
        Item = IBEMainForm.dxBarButton26
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton27
        Visible = True
      end
      item
        Item = IBEMainForm.dxBarButton28
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton29
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton129
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = pmPopup
    Left = 88
    Top = 96
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 400
    OnTimer = Timer1Timer
    Left = 296
    Top = 48
  end
end
