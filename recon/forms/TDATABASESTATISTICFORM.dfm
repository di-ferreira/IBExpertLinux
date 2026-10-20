object DatabaseStatisticForm: TDatabaseStatisticForm
  Left = 528
  Top = 230
  Width = 882
  Height = 549
  HelpContext = 7500
  Caption = 'Database Statistic'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TIBEPageControl
    Left = 0
    Top = 51
    Width = 866
    Height = 459
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsOutput
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
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsOutput: TAdvOfficePage
      Left = 0
      Top = 0
      Width = 866
      Height = 458
      Caption = '&Statistic'
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
      object PageControl1: TIBEPageControl
        Left = 0
        Top = 0
        Width = 866
        Height = 458
        AdvOfficePagerStyler = IBEMainForm.PCStyler
        Align = alClient
        ActivePage = tsAsText
        AntiAlias = aaNone
        ButtonSettings.PageListButtonHint = 'Page List'
        Glow = False
        PageMargin = 0
        TabSettings.LeftMargin = 2
        TabSettings.RightMargin = 2
        TabSettings.Height = 24
        TabSettings.Spacing = 2
        TabSettings.Shape = tsRightRamp
        TabSettings.Rounding = 3
        ShowShortCutHints = False
        OnChange = PageControl1Change
        TabOrder = 0
        TabStop = True
        NextPictureChanged = True
        PrevPictureChanged = True
        object tsAsText: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 866
          Height = 433
          Caption = 'Results'
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
          object StatTextFm: TEditFrame
            Top = 1
            Width = 866
            Height = 432
            object EditM: TSQLMemo
              Width = 866
              Height = 414
              OnDragDrop = StatTextFmEditMDragDrop
              OnDragOver = StatTextFmEditMDragOver
            end
            object pIncSearch: TPanel
              Top = 414
              Width = 866
            end
          end
          object cbGetVersions: TdxCheckEdit
            Left = 200
            Top = 88
            Width = 329
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
            Caption = 'Analyze average record and version length (FB 1.5, IB 7)'
            StyleController = IBEMainForm.MainCheckSC
          end
        end
        object tsTables: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 866
          Height = 433
          Caption = 'Tables'
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
          object Splitter1: TdfsSplitter
            Left = 0
            Top = 235
            Width = 866
            Height = 3
            Cursor = crVSplit
            Align = alBottom
            Maximized = False
            Minimized = False
            ButtonCursor = crDefault
          end
          object Panel2: TPanel
            Left = 0
            Top = 1
            Width = 866
            Height = 234
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel2'
            TabOrder = 0
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 866
              Height = 18
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = ' Tables'
              Color = clBtnShadow
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clCaptionText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Visible = False
            end
            object GRT: TdxDBGrid
              Left = 0
              Top = 18
              Width = 866
              Height = 216
              Bands = <
                item
                  Caption = 'General'
                  OnlyOwnColumns = True
                  Width = 470
                end
                item
                  Caption = 'Records'
                  OnlyOwnColumns = True
                end
                item
                  Caption = 'Versions'
                  OnlyOwnColumns = True
                end
                item
                  Caption = 'Fill distribution'
                  OnlyOwnColumns = True
                end
              >
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'Key'
              ShowGroupPanel = True
              ShowSummaryFooter = True
              SummaryGroups = []
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 1
              OnDblClick = gTablesDblClick
              OnMouseMove = GRTMouseMove
              DataSource = dsTables
              Filter.Criteria = {4 bytes}
              LookAndFeel = lfFlat
              OptionsBehavior = ['edgoAutoSearch', 'edgoAutoSort', 'edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
              OptionsDB = ['edgoCancelOnExit', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
              OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoHotTrack', 'edgoRowSelect', 'edgoUseBitmap']
              ShowBands = True
              OnChangedColumnsWidth = GRTChangedColumnsWidth
              OnChangeLeftCoord = GRTChangeLeftCoord
              OnCompare = GRTCompare
              OnCustomDrawCell = GRTCustomDrawCell
              OnDragEndBand = GRTDragEndBand
              OnDragEndHeader = GRTDragEndHeader
              OnEndDragGroupColumn = GRTEndDragGroupColumn
              OnReloadGroupList = GRTReloadGroupList
              OnColumnClick = GRTColumnClick
              object gcTName: TdxDBGridColumn
                Caption = 'Table Name'
                Width = 166
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TableName'
              end
              object gcTPages: TdxDBGridColumn
                Width = 65
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Pages'
                SummaryFormat = 'SUM = #######'
              end
              object gctRecords: TdxDBGridColumn
                BandIndex = 1
                RowIndex = 0
                FieldName = 'Records'
              end
              object gctRecLen: TdxDBGridColumn
                Caption = 'Record Len'
                BandIndex = 1
                RowIndex = 0
                FieldName = 'RecLen'
              end
              object gctVersions: TdxDBGridColumn
                BandIndex = 2
                RowIndex = 0
                FieldName = 'Versions'
              end
              object gctVerLen: TdxDBGridColumn
                Caption = 'Version Len'
                BandIndex = 2
                RowIndex = 0
                FieldName = 'VerLen'
              end
              object gctMaxVersions: TdxDBGridColumn
                Caption = 'Max Versions'
                BandIndex = 2
                RowIndex = 0
                FieldName = 'MaxVersions'
              end
              object gcTSize: TdxDBGridColumn
                Caption = 'Size, bytes'
                Width = 65
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Size'
              end
              object gcTSlots: TdxDBGridColumn
                Width = 55
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Slots'
              end
              object gcTFill: TdxDBGridColumn
                Caption = 'Fill, %'
                Width = 49
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Fill'
              end
              object gcTDPUsage: TdxDBGridColumn
                Caption = 'DP Usage, %'
                Width = 70
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DPUsage'
              end
              object gcTFD1: TdxDBGridColumn
                Caption = '0 - 19 %'
                HeaderAlignment = taCenter
                BandIndex = 3
                RowIndex = 0
                FieldName = 'fd1'
              end
              object gctFD2: TdxDBGridColumn
                Caption = '20 - 39 %'
                HeaderAlignment = taCenter
                BandIndex = 3
                RowIndex = 0
                FieldName = 'fd2'
              end
              object gctFD3: TdxDBGridColumn
                Caption = '40 - 59 %'
                HeaderAlignment = taCenter
                BandIndex = 3
                RowIndex = 0
                FieldName = 'fd3'
              end
              object gctFD4: TdxDBGridColumn
                Caption = '60 - 79 %'
                HeaderAlignment = taCenter
                BandIndex = 3
                RowIndex = 0
                FieldName = 'fd4'
              end
              object gctFD5: TdxDBGridColumn
                Caption = '80 - 99 %'
                HeaderAlignment = taCenter
                BandIndex = 3
                RowIndex = 0
                FieldName = 'fd5'
              end
              object gctTableProps: TdxDBGridColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TableProps'
              end
            end
            object pSummary: TPanel
              Left = 16
              Top = 145
              Width = 185
              Height = 25
              BevelInner = bvRaised
              BevelOuter = bvLowered
              TabOrder = 2
              Visible = False
            end
            object pIDXSummary1: TPanel
              Left = 16
              Top = 185
              Width = 185
              Height = 25
              BevelInner = bvRaised
              BevelOuter = bvLowered
              TabOrder = 3
              Visible = False
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 238
            Width = 866
            Height = 195
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Panel3'
            TabOrder = 1
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 866
              Height = 18
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = ' Indexes'
              Color = clBtnShadow
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clCaptionText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object GRI: TdxDBGrid
              Left = 0
              Top = 18
              Width = 866
              Height = 177
              Bands = <
                item
                  Caption = 'General'
                  Width = 531
                end
                item
                  Caption = 'Fill distribution'
                  Width = 331
                end
              >
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'Key'
              ShowSummaryFooter = True
              SummaryGroups = []
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 1
              DataSource = dsIndexes
              Filter.Criteria = {4 bytes}
              LookAndFeel = lfFlat
              OptionsBehavior = ['edgoAutoSearch', 'edgoAutoSort', 'edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
              OptionsDB = ['edgoCancelOnExit', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
              OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoRowSelect', 'edgoUseBitmap']
              ShowBands = True
              OnChangedColumnsWidth = GRIChangeLeftCoord
              OnChangeLeftCoord = GRIChangeLeftCoord
              OnCustomDrawCell = GRICustomDrawCell
              object gcIName: TdxDBGridColumn
                Caption = 'Index Name'
                Width = 164
                BandIndex = 0
                RowIndex = 0
                FieldName = 'IndexName'
              end
              object gclFields: TdxDBGridColumn
                Width = 200
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Fields'
              end
              object gclUnique: TdxDBGridColumn
                HeaderAlignment = taCenter
                Width = 48
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Unique'
              end
              object gclActive: TdxDBGridColumn
                HeaderAlignment = taCenter
                Width = 45
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Active'
              end
              object gclSorting: TdxDBGridColumn
                Alignment = taLeftJustify
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Sorting'
              end
              object gclStatistics: TdxDBGridColumn
                Width = 73
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Statistics'
              end
              object gcIDepth: TdxDBGridColumn
                Width = 66
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Depth'
              end
              object gcILeafBuckets: TdxDBGridColumn
                Caption = 'Leaf Buckets'
                Width = 66
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LeafBuckets'
              end
              object gcINodes: TdxDBGridColumn
                Width = 55
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Nodes'
              end
              object gcIDataLength: TdxDBGridColumn
                Caption = 'Avg Data Length'
                Width = 48
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DataLen'
              end
              object gcITotalDup: TdxDBGridColumn
                Caption = 'Total Dup'
                Width = 68
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TotalDup'
              end
              object gcIMaxDup: TdxDBGridColumn
                Caption = 'Max Dup'
                HeaderAlignment = taCenter
                Width = 65
                BandIndex = 0
                RowIndex = 0
                FieldName = 'MaxDup'
              end
              object GRIColumn12: TdxDBGridColumn
                Caption = '0 - 19 %'
                HeaderAlignment = taCenter
                Width = 66
                BandIndex = 1
                RowIndex = 0
                FieldName = 'fd1'
              end
              object dxDBGridColumn8: TdxDBGridColumn
                Caption = '20 - 39 %'
                HeaderAlignment = taCenter
                Width = 66
                BandIndex = 1
                RowIndex = 0
                FieldName = 'fd2'
              end
              object dxDBGridColumn9: TdxDBGridColumn
                Caption = '40 - 59 %'
                HeaderAlignment = taCenter
                Width = 66
                BandIndex = 1
                RowIndex = 0
                FieldName = 'fd3'
              end
              object dxDBGridColumn10: TdxDBGridColumn
                Caption = '60 - 79 %'
                HeaderAlignment = taCenter
                Width = 66
                BandIndex = 1
                RowIndex = 0
                FieldName = 'fd4'
              end
              object dxDBGridColumn11: TdxDBGridColumn
                Caption = '80 - 99 %'
                HeaderAlignment = taCenter
                Width = 68
                BandIndex = 1
                RowIndex = 0
                FieldName = 'fd5'
              end
            end
          end
        end
        object tsIndexes: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 866
          Height = 433
          Caption = 'Indexes'
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
          object GRI2: TdxDBGrid
            Left = 0
            Top = 26
            Width = 866
            Height = 407
            Bands = <
              item
                Caption = 'General'
                Width = 531
              end
              item
                Caption = 'Fill distribution'
                Width = 331
              end
            >
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'Key'
            ShowGroupPanel = True
            SummaryGroups = []
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 0
            OnMouseMove = GRTMouseMove
            DataSource = dsIndexes
            Filter.Criteria = {4 bytes}
            LookAndFeel = lfFlat
            OptionsBehavior = ['edgoAutoSearch', 'edgoAutoSort', 'edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
            OptionsDB = ['edgoCancelOnExit', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
            OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoHotTrack', 'edgoRowSelect', 'edgoUseBitmap']
            ShowBands = True
            OnCustomDrawCell = GRICustomDrawCell
            object gclName2: TdxDBGridColumn
              Caption = 'Index Name'
              Width = 164
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IndexName'
            end
            object gclTableName: TdxDBGridColumn
              Caption = 'Table'
              Width = 180
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TableName'
            end
            object gclFields2: TdxDBGridColumn
              Width = 200
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Fields'
            end
            object gclUnique2: TdxDBGridColumn
              HeaderAlignment = taCenter
              Width = 48
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Unique'
            end
            object gclActive2: TdxDBGridColumn
              HeaderAlignment = taCenter
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Active'
            end
            object gclSorting2: TdxDBGridColumn
              Alignment = taLeftJustify
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Sorting'
            end
            object gclStatistics2: TdxDBGridColumn
              Caption = 'Selectivity'
              Width = 73
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Statistics'
            end
            object gclRealSelectivity2: TdxDBGridColumn
              Alignment = taRightJustify
              Caption = 'Real Selectivity'
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RealSelectivity'
            end
            object gclDepth2: TdxDBGridColumn
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Depth'
            end
            object gclLeafBuckets2: TdxDBGridColumn
              Caption = 'Leaf Buckets'
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'LeafBuckets'
            end
            object gclNodes2: TdxDBGridColumn
              Width = 55
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Nodes'
            end
            object gclDataLen2: TdxDBGridColumn
              Caption = 'Avg Data Length'
              Width = 48
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DataLen'
            end
            object gclTotalDup2: TdxDBGridColumn
              Caption = 'Total Dup'
              Width = 68
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TotalDup'
            end
            object gclMaxDup2: TdxDBGridColumn
              Caption = 'Max Dup'
              HeaderAlignment = taCenter
              Width = 65
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MaxDup'
            end
            object gclFD1: TdxDBGridColumn
              Caption = '0 - 19 %'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 1
              RowIndex = 0
              FieldName = 'fd1'
            end
            object gclFD2: TdxDBGridColumn
              Caption = '20 - 39 %'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 1
              RowIndex = 0
              FieldName = 'fd2'
            end
            object gclFD3: TdxDBGridColumn
              Caption = '40 - 59 %'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 1
              RowIndex = 0
              FieldName = 'fd3'
            end
            object gclFD4: TdxDBGridColumn
              Caption = '60 - 79 %'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 1
              RowIndex = 0
              FieldName = 'fd4'
            end
            object gclFD5: TdxDBGridColumn
              Caption = '80 - 99 %'
              HeaderAlignment = taCenter
              Width = 68
              BandIndex = 1
              RowIndex = 0
              FieldName = 'fd5'
            end
            object gclIdxProps: TdxDBGridColumn
              Visible = False
              Width = 54
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IdxProps'
            end
          end
          object TBDock1: TTBDock
            Left = 0
            Top = 1
            Width = 866
            Height = 25
            object TBToolbar1: TTBToolbar
              Left = 0
              Top = 0
              BorderStyle = bsNone
              Caption = 'TBToolbar1'
              CloseButton = False
              DockMode = dmCannotFloat
              DragHandleStyle = dhNone
              TabOrder = 0
              object TBControlItem1: TTBControlItem
                Control = Label1
              end
              object TBControlItem2: TTBControlItem
                Control = cbDisplayIndices
              end
              object TBSeparatorItem2: TTBSeparatorItem
              end
              object TBItem2: TTBItem
                Action = actUpdateSelectivity
              end
              object Label1: TLabel
                Left = 0
                Top = 4
                Width = 40
                Height = 13
                Caption = 'Display: '
              end
              object cbDisplayIndices: TdxPickEdit
                Left = 40
                Top = 0
                Width = 268
                TabOrder = 0
                StyleController = IBEMainForm.MainSC
                OnChange = cbDisplayIndicesChange
                DropDownRows = 20
                DropDownListStyle = True
                Items.Strings = ['All indices', 'Bad indices', 'Useless indices', 'Too deep indices', 'Active indices', 'Inactive indices', 'Unique indices', 'Non-unique indices']
              end
            end
          end
        end
        object tsOptions: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 866
          Height = 433
          Caption = 'Options'
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
            Top = 1
            Width = 866
            Height = 65
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object cbTablesFD: TdxCheckEdit
              Left = 8
              Top = 11
              Width = 361
              TabOrder = 0
              Caption = 'Display "Fill distribution" for tables'
              StyleController = IBEMainForm.MainCheckSC
              OnChange = cbTablesFDChange
              State = cbsChecked
            end
            object cbIndexesFD: TdxCheckEdit
              Left = 8
              Top = 35
              Width = 361
              TabOrder = 1
              Caption = 'Display "Fill distribution" for indexes'
              StyleController = IBEMainForm.MainCheckSC
              OnChange = cbIndexesFDChange
              State = cbsChecked
            end
          end
          object BlockPages: TIBEPageControl
            Left = 0
            Top = 66
            Width = 866
            Height = 367
            AdvOfficePagerStyler = IBEMainForm.PCStyler
            Align = alClient
            ActivePage = tsTableBlock
            AntiAlias = aaNone
            ButtonSettings.PageListButtonHint = 'Page List'
            Glow = False
            PageMargin = 0
            TabSettings.LeftMargin = 2
            TabSettings.RightMargin = 2
            TabSettings.Height = 24
            TabSettings.Spacing = 2
            TabSettings.Shape = tsRightRamp
            TabSettings.Rounding = 3
            ShowShortCutHints = False
            OnChange = BlockPagesChange
            TabOrder = 1
            TabStop = True
            NextPictureChanged = True
            PrevPictureChanged = True
            object tsTableBlock: TAdvOfficePage
              Left = 0
              Top = 24
              Width = 866
              Height = 342
              Caption = 'Table analyser block'
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
              object TableFm: TEditFrame
                Top = 26
                Width = 866
                Height = 316
                object EditM: TSQLMemo
                  Width = 866
                  Height = 298
                  OnSelectionChange = TableFmEditMSelectionChange
                end
                object pIncSearch: TPanel
                  Top = 298
                  Width = 866
                end
              end
              object BlockDock: TTBDock
                Left = 0
                Top = 1
                Width = 866
                Height = 25
                object TBToolbar2: TTBToolbar
                  Left = 0
                  Top = 0
                  BorderStyle = bsNone
                  Caption = 'TBToolbar1'
                  CloseButton = False
                  DockMode = dmCannotFloat
                  DragHandleStyle = dhNone
                  TabOrder = 0
                  object TBControlItem3: TTBControlItem
                    Control = Label2
                  end
                  object TBControlItem5: TTBControlItem
                    Control = bColor
                  end
                  object TBSeparatorItem1: TTBSeparatorItem
                  end
                  object TBItem1: TTBItem
                    Caption = 'Insert color value into block text'
                    DisplayMode = nbdmTextOnly
                    Hint = 'Analyze from file'
                    ImageIndex = 41
                    OnClick = TBItem1Click
                  end
                  object Label2: TLabel
                    Left = 0
                    Top = 4
                    Width = 62
                    Height = 13
                    Caption = 'Color picker: '
                  end
                  object bColor: TdxButtonEdit
                    Left = 62
                    Top = 0
                    Width = 121
                    Color = clMenu
                    TabOrder = 0
                    StyleController = IBEMainForm.MainSC
                    OnChange = bColorChange
                    Buttons = <
                      item
                        Default = True
                      end
                    >
                    OnButtonClick = bColorButtonClick
                    ExistButtons = True
                  end
                end
              end
            end
            object tsIndexBlock: TAdvOfficePage
              Left = 0
              Top = 24
              Width = 866
              Height = 342
              Caption = 'Index analyser block'
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
              object IndexFm: TEditFrame
                Top = 1
                Width = 866
                Height = 341
                object EditM: TSQLMemo
                  Width = 866
                  Height = 323
                  OnSelectionChange = IndexFmEditMSelectionChange
                end
                object pIncSearch: TPanel
                  Top = 323
                  Width = 866
                end
              end
            end
          end
        end
      end
    end
  end
  object Actions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionsUpdate
    Left = 408
    Top = 16
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
    end
    object actPreview: TAction
      Caption = 'Preview Log Report'
      ImageIndex = 32
      Visible = False
    end
    object actPrint: TAction
      Caption = 'Print Log Report'
      ImageIndex = 53
      Visible = False
    end
    object actGetStatistic: TAction
      Caption = 'Retrieve Statistic'
      ImageIndex = 56
      OnExecute = actGetStatisticExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actAnalyzeFile: TAction
      Caption = 'Analyze from file'
      Hint = 'Analyze from file'
      ImageIndex = 41
      OnExecute = actAnalyzeFileExecute
    end
    object actExport: TAction
      Caption = 'Export'
      ImageIndex = 73
      OnExecute = actExportExecute
      OnUpdate = actExportUpdate
    end
    object actUpdateSelectivity: TAction
      Caption = 'Update selectivity (SET STATISTICS)'
      OnExecute = actUpdateSelectivityExecute
    end
  end
  object StatisticService: TpFIBStatisticalService
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    Options = []
    OnTextNotify = StatisticServiceTextNotify
    Left = 443
    Top = 13
  end
  object dsTables: TDataSource
    DataSet = mtTables
    Left = 296
    Top = 300
  end
  object mtTables: TkbmMemTable
    Active = True
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    BeforeDelete = mtTablesBeforeDelete
    OnNewRecord = mtTablesNewRecord
    Left = 328
    Top = 300
    object mtTablesTableName: TStringField
      FieldName = 'TableName'
      Size = 31
    end
    object mtTablesPages: TIntegerField
      FieldName = 'Pages'
    end
    object mtTablesSize: TLargeintField
      FieldName = 'Size'
      DisplayFormat = '###,###,###,###,##0'
    end
    object mtTablesSlots: TIntegerField
      FieldName = 'Slots'
    end
    object mtTablesFill: TIntegerField
      FieldName = 'Fill'
    end
    object mtTablesDBUsage: TFloatField
      FieldName = 'DPUsage'
      DisplayFormat = '0.0000'
    end
    object mtTablesfd1: TIntegerField
      DisplayLabel = 'FD 0-19%'
      FieldName = 'fd1'
    end
    object mtTablesfd2: TIntegerField
      DisplayLabel = 'FD 20-39%'
      FieldName = 'fd2'
    end
    object mtTablesfd3: TIntegerField
      DisplayLabel = 'FD 40-59%'
      FieldName = 'fd3'
    end
    object mtTablesfd4: TIntegerField
      DisplayLabel = 'FD 60-79%'
      FieldName = 'fd4'
    end
    object mtTablesfd5: TIntegerField
      DisplayLabel = 'FD 80-99%'
      FieldName = 'fd5'
    end
    object mtTablesKey: TIntegerField
      FieldName = 'Key'
      Visible = False
    end
    object mtTablesFlag: TBooleanField
      FieldName = 'Flag'
    end
    object mtTablesRecords: TIntegerField
      FieldName = 'Records'
    end
    object mtTablesRecLen: TFloatField
      FieldName = 'RecLen'
    end
    object mtTablesVerLen: TFloatField
      FieldName = 'VerLen'
    end
    object mtTablesVersions: TIntegerField
      FieldName = 'Versions'
    end
    object mtTablesMaxVersions: TIntegerField
      FieldName = 'MaxVersions'
    end
    object mtTablesTableProps: TIntegerField
      FieldName = 'TableProps'
    end
  end
  object dsIndexes: TDataSource
    DataSet = mtIndexes
    Left = 192
    Top = 306
  end
  object mtIndexes: TkbmMemTable
    Filtered = True
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    BeforeDelete = mtIndexesBeforeDelete
    OnFilterRecord = mtIndexesFilterRecord
    OnNewRecord = mtIndexesNewRecord
    Left = 232
    Top = 306
    object mtIndexesIndexName: TStringField
      FieldName = 'IndexName'
      Size = 64
    end
    object mtIndexesTableName: TStringField
      FieldName = 'TableName'
      Size = 64
    end
    object mtIndexesDepth: TIntegerField
      FieldName = 'Depth'
    end
    object mtIndexesLeafBuckets: TIntegerField
      FieldName = 'LeafBuckets'
    end
    object mtIndexesNodes: TIntegerField
      FieldName = 'Nodes'
    end
    object mtIndexesDataLen: TFloatField
      FieldName = 'DataLen'
      DisplayFormat = '0.00'
    end
    object mtIndexesTotalDup: TIntegerField
      FieldName = 'TotalDup'
    end
    object mtIndexesMaxDup: TIntegerField
      FieldName = 'MaxDup'
    end
    object mtIndexesfd11: TIntegerField
      FieldName = 'fd1'
    end
    object mtIndexesfd2: TSmallintField
      FieldName = 'fd2'
    end
    object mtIndexesfd3: TIntegerField
      FieldName = 'fd3'
    end
    object mtIndexesfd4: TIntegerField
      FieldName = 'fd4'
    end
    object mtIndexesfd5: TIntegerField
      FieldName = 'fd5'
    end
    object mtIndexesKey: TIntegerField
      FieldName = 'Key'
    end
    object mtIndexesFields: TStringField
      FieldName = 'Fields'
      Size = 300
    end
    object mtIndexesUnique: TSmallintField
      FieldName = 'Unique'
    end
    object mtIndexesActive: TSmallintField
      FieldName = 'Active'
    end
    object mtIndexesSorting: TSmallintField
      FieldName = 'Sorting'
    end
    object mtIndexesStatistics: TFloatField
      FieldName = 'Statistics'
      DisplayFormat = '0.00000'
    end
    object mtIndexesIdxProps: TIntegerField
      FieldName = 'IdxProps'
    end
    object mtIndexesRealSelectivity: TFloatField
      FieldName = 'RealSelectivity'
      DisplayFormat = '0.00000'
    end
  end
  object bm: TdxBarManager
    AllowReset = False
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
        Caption = 'DB Statistic'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'DB Statistic'
        NotDocking = ['dsNone', 'dsLeft', 'dsRight', 'dsBottom']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        Caption = 'Options'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 26
        DockingStyle = dsTop
        FloatLeft = 404
        FloatTop = 341
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Options'
        OneOnRow = True
        Row = 1
        UseOwnFont = False
        UseRestSpace = True
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
    Left = 512
    Top = 161
    DockControlHeights = [0, 0, 51, 0]
    object dxBarButton1: TdxBarButton
      Action = actGetStatistic
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actPreview
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actPrint
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actAnalyzeFile
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton5: TdxBarButton
      Action = actExport
      Category = 0
    end
    object cbOptions: TdxBarCombo
      Align = iaClient
      Caption = 'Options'
      Category = 0
      Hint = 'Options'
      Visible = ivAlways
      Text = 'Retrieve all statistics'
      Width = 100
      ShowEditor = False
      Items.Strings = ['Retrieve all statistics', 'Stop retrieving after header page statistics', 'Stop retrieving after log page statistics', 'Stop retrieving after user indexes statistics', 'Stop retrieving after data tables statistics', 'Stop retrieving after system tables and indexes statistics']
      ItemIndex = 0
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cbGetVersions
    end
    object bsProgress: TdxBarStatic
      Align = iaClient
      Category = 0
      Visible = ivNever
      Alignment = taLeftJustify
      Width = 100
    end
    object bliDatabases: TdxBarButton
      Caption = '(No active connection)'
      Category = 0
      Hint = 'Click to select database'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = bliDatabasesClick
    end
  end
  object OD: TOpenDialog
    Filter = 'All files (*.*)|*.*'
    Left = 288
    Top = 169
  end
  object ColorDlg: TColorDialog
    Ctl3D = True
    Options = ['cdFullOpen']
    Left = 264
    Top = 218
  end
  object TR: TpFIBTransaction
    Active = False
    Timeout = 177030752
    TimeoutAction = TARollback
    Left = 128
    Top = 202
  end
  object Q: TpFIBQuery
    GoToFirstRecordOnExecute = False
    ParamCheck = False
    Transaction = TR
    Left = 160
    Top = 202
  end
end
