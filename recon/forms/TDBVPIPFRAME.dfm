object DBVPIPFrame: TDBVPIPFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  Align = alClient
  TabOrder = 0
  object Pages: TIBEPageControl
    Left = 0
    Top = 0
    Width = 435
    Height = 268
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsEdit
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    PageMargin = 0
    TabPosition = tpBottom
    TabSettings.RightMargin = 2
    TabSettings.Height = 24
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsEdit: TAdvOfficePage
      Left = 0
      Top = 1
      Width = 435
      Height = 243
      Caption = 'tsEdit'
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
      object dfsSplitter1: TdfsSplitter
        Left = 221
        Top = 2
        Height = 239
        Cursor = crHSplit
        Align = alLeft
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object pRecords: TPanel
        Left = 231
        Top = 2
        Width = 202
        Height = 239
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pRecords'
        TabOrder = 1
        object GR: TdxDBGrid
          Left = 0
          Top = 0
          Width = 202
          Height = 239
          Bands = <
            item
            end
          >
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'PageIndex'
          SummaryGroups = []
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          DataSource = DataSource1
          Filter.Criteria = {4 bytes}
          LookAndFeel = lfFlat
          OptionsBehavior = ['edgoAutoSort', 'edgoDragScroll', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
          OptionsDB = ['edgoCancelOnExit', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoUseBookmarks']
          OptionsView = ['edgoBandHeaderWidth', 'edgoRowSelect', 'edgoUseBitmap']
          OnCustomDrawCell = GRCustomDrawCell
          object gcPageIndex: TdxDBGridColumn
            Caption = 'Page Index'
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PageIndex'
          end
          object gcPageType: TdxDBGridColumn
            Caption = 'Page Type'
            Width = 196
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PageType'
          end
          object gcAllocated: TdxDBGridColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Allocated'
          end
        end
      end
      object tlHeaders: TdxTreeList
        Left = 2
        Top = 2
        Width = 219
        Height = 239
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
        Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoStoreToRegistry']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowHeader = False
        GridLineColor = clSilver
        object tlHeadersColumn1: TdxTreeListColumn
          BandIndex = 0
          RowIndex = 0
        end
        object tlHeadersColumn2: TdxTreeListColumn
          Alignment = taRightJustify
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsHex: TAdvOfficePage
      Left = 0
      Top = 1
      Width = 435
      Height = 243
      Caption = 'tsHex'
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
      object HexEditor2: THexEditor
        Left = 2
        Top = 2
        Width = 431
        Height = 239
        SPColorPDividerF = clBtnFace
        UseFastBlockTransfers = False
        OPFont.Charset = DEFAULT_CHARSET
        OPFont.Color = clWindowText
        OPFont.Height = -13
        OPFont.Name = 'Courier'
        OPFont.Style = ['fsBold']
        HPFont.Charset = DEFAULT_CHARSET
        HPFont.Color = clWindowText
        HPFont.Height = -13
        HPFont.Name = 'Courier'
        HPFont.Style = []
        SPFont.Charset = DEFAULT_CHARSET
        SPFont.Color = clWindowText
        SPFont.Height = -13
        SPFont.Name = 'Courier'
        SPFont.Style = []
        ReadOnly = False
        Align = alClient
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = mt
    Left = 357
    Top = 88
  end
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    Left = 325
    Top = 88
    object mtPageIndex: TIntegerField
      FieldName = 'PageIndex'
    end
    object mtPageType: TSmallintField
      FieldName = 'PageType'
    end
    object mtAllocated: TSmallintField
      FieldName = 'Allocated'
    end
  end
end
