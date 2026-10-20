object DBVDataPageFrame: TDBVDataPageFrame
  Left = 0
  Top = 0
  Width = 1520
  Height = 546
  HelpContext = 15200
  Align = alClient
  TabOrder = 0
  object dxPageControl1: TIBEPageControl
    Left = 0
    Top = 0
    Width = 1520
    Height = 546
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsEdit
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
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsEdit: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 1520
      Height = 521
      Caption = 'Record segments'
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
        Left = 219
        Top = 1
        Height = 520
        Cursor = crHSplit
        Align = alLeft
        Visible = False
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object pRecords: TPanel
        Left = 229
        Top = 1
        Width = 1291
        Height = 520
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pRecords'
        TabOrder = 1
        object dfsSplitter2: TdfsSplitter
          Left = 0
          Top = 310
          Width = 1291
          Height = 10
          Cursor = crVSplit
          Align = alBottom
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object tlRecs: TdxTreeList
          Left = 0
          Top = 0
          Width = 1291
          Height = 310
          Bands = <
            item
              Alignment = taLeftJustify
              Caption = 'Record'
              Width = 220
            end
            item
              Caption = 'Record flags'
            end
            item
              Caption = 'Blob'
              Width = 394
            end
            item
              Caption = 'Fragmented'
            end
          >
          DefaultLayout = False
          HeaderPanelRowCount = 1
          Align = alClient
          DragMode = dmAutomatic
          TabOrder = 0
          HideSelection = False
          LookAndFeel = lfFlat
          Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort']
          OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSortRefresh']
          TreeLineColor = clGrayText
          ShowBands = True
          ShowGrid = True
          ShowRoot = False
          GridLineColor = clSilver
          OnCustomDrawCell = tlRecsCustomDrawCell
          OnChangeNode = tlRecsChangeNode
          OnCompare = tlRecsCompare
          object tlcNum: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = '#'
            HeaderAlignment = taRightJustify
            Width = 30
            BandIndex = 0
            RowIndex = 0
          end
          object tlcOffset: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Offset'
            Width = 52
            BandIndex = 0
            RowIndex = 0
          end
          object tlcLength: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Length'
            Width = 57
            BandIndex = 0
            RowIndex = 0
          end
          object tlcFormatID: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Format ID'
            Width = 61
            BandIndex = 0
            RowIndex = 0
          end
          object tlcTransactionID: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Transaction ID'
            Width = 81
            BandIndex = 0
            RowIndex = 0
          end
          object tlcDeleted: TdxTreeListColumn
            Caption = 'Del'
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
          end
          object tlcOldVersion: TdxTreeListColumn
            Caption = 'OV'
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
          end
          object tlcFragment: TdxTreeListColumn
            Caption = 'Frag'
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
          end
          object tlcInCompleted: TdxTreeListColumn
            Caption = 'InComp'
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
          end
          object tlcBlob: TdxTreeListColumn
            Caption = 'Blob'
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
          end
          object tlcStreamBlob: TdxTreeListColumn
            Caption = 'SBlob'
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
          end
          object tlcDelta: TdxTreeListColumn
            Alignment = taCenter
            Caption = 'Delta'
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
          end
          object tlcLarge: TdxTreeListColumn
            Alignment = taCenter
            Caption = 'Large'
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
          end
          object tlcDamaged: TdxTreeListColumn
            Alignment = taCenter
            Caption = 'Damaged'
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
          end
          object tlcGarbageCollected: TdxTreeListColumn
            Alignment = taCenter
            Caption = 'GC'
            HeaderAlignment = taCenter
            Width = 50
            BandIndex = 1
            RowIndex = 0
          end
          object tlcBlobLeadPage: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Lead Page'
            Width = 68
            BandIndex = 2
            RowIndex = 0
          end
          object tlcBlobNumberDP: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'DP Count'
            Width = 62
            BandIndex = 2
            RowIndex = 0
          end
          object tlcBlobLongestSegment: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Longest Seg'
            Width = 75
            BandIndex = 2
            RowIndex = 0
          end
          object tlcBlobAddressLevels: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Addr.Levels'
            Width = 63
            BandIndex = 2
            RowIndex = 0
          end
          object tlcBlobSegmentCount: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Seg.Count'
            Width = 61
            BandIndex = 2
            RowIndex = 0
          end
          object tlcBlobDataLength: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Data Length'
            Width = 96
            BandIndex = 2
            RowIndex = 0
          end
        end
        object dxPageControl2: TIBEPageControl
          Left = 0
          Top = 320
          Width = 1291
          Height = 200
          AdvOfficePagerStyler = IBEMainForm.PCStyler
          Align = alBottom
          ActivePage = tsPacked
          AntiAlias = aaNone
          ButtonSettings.PageListButtonHint = 'Page List'
          Glow = False
          PageMargin = 0
          TabPosition = tpBottom
          TabSettings.LeftMargin = 2
          TabSettings.RightMargin = 2
          TabSettings.Height = 24
          TabSettings.Spacing = 2
          TabSettings.Shape = tsRightRamp
          TabSettings.Rounding = 3
          ShowShortCutHints = False
          TabOrder = 1
          TabStop = True
          NextPictureChanged = True
          PrevPictureChanged = True
          object tsPacked: TAdvOfficePage
            Left = 0
            Top = 1
            Width = 1291
            Height = 175
            Caption = 'Packed'
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
            object heRecPacked: THexEditor
              Left = 0
              Top = 0
              Width = 1291
              Height = 174
              SPColorPDividerF = clBtnFace
              HPPaintCompleteLines = True
              UseFastBlockTransfers = False
              OPFont.Charset = DEFAULT_CHARSET
              OPFont.Color = clWindowText
              OPFont.Height = -13
              OPFont.Name = 'Courier New'
              OPFont.Style = ['fsBold']
              HPFont.Charset = RUSSIAN_CHARSET
              HPFont.Color = clWindowText
              HPFont.Height = -13
              HPFont.Name = 'Courier New'
              HPFont.Style = []
              SPFont.Charset = RUSSIAN_CHARSET
              SPFont.Color = clWindowText
              SPFont.Height = -13
              SPFont.Name = 'Courier New'
              SPFont.Style = []
              ReadOnly = False
              Align = alClient
            end
          end
          object tsUnpacked: TAdvOfficePage
            Left = 0
            Top = 1
            Width = 1291
            Height = 175
            Caption = 'Unpacked'
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
            object heRecUnpacked: THexEditor
              Left = 0
              Top = 0
              Width = 1291
              Height = 174
              SPColorPDividerF = clBtnFace
              SPPaintCompleteLines = True
              HPPaintCompleteLines = True
              UseFastBlockTransfers = False
              OPFont.Charset = RUSSIAN_CHARSET
              OPFont.Color = clWindowText
              OPFont.Height = -13
              OPFont.Name = 'Courier New'
              OPFont.Style = ['fsBold']
              HPFont.Charset = RUSSIAN_CHARSET
              HPFont.Color = clWindowText
              HPFont.Height = -13
              HPFont.Name = 'Courier New'
              HPFont.Style = []
              SPFont.Charset = RUSSIAN_CHARSET
              SPFont.Color = clWindowText
              SPFont.Height = -13
              SPFont.Name = 'Courier New'
              SPFont.Style = []
              ReadOnly = False
              Align = alClient
            end
          end
        end
      end
      object tlHeaders: TdxTreeList
        Left = 0
        Top = 1
        Width = 219
        Height = 520
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alLeft
        DragMode = dmAutomatic
        TabOrder = 0
        Visible = False
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoStoreToRegistry']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
        TreeLineColor = clGrayText
        GridLineColor = clSilver
        OnCustomDrawCell = tlHeadersCustomDrawCell
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
      Top = 24
      Width = 1520
      Height = 521
      Caption = 'Hex editor'
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
      object hePage: THexEditor
        Left = 0
        Top = 1
        Width = 1520
        Height = 520
        SPColorPDividerF = clBtnFace
        UseFastBlockTransfers = False
        OPFont.Charset = RUSSIAN_CHARSET
        OPFont.Color = clWindowText
        OPFont.Height = -13
        OPFont.Name = 'Courier New'
        OPFont.Style = ['fsBold']
        HPFont.Charset = RUSSIAN_CHARSET
        HPFont.Color = clWindowText
        HPFont.Height = -13
        HPFont.Name = 'Courier New'
        HPFont.Style = []
        SPFont.Charset = RUSSIAN_CHARSET
        SPFont.Color = clWindowText
        SPFont.Height = -13
        SPFont.Name = 'Courier New'
        SPFont.Style = []
        ReadOnly = False
        Align = alClient
      end
    end
    object tsPageHeader: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 1520
      Height = 521
      Caption = 'Page header'
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
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 1
        Width = 1520
        Height = 520
        Align = alClient
        TabOrder = 0
      end
    end
  end
end
