object DBViewerForm: TDBViewerForm
  Left = 445
  Top = 179
  Width = 950
  Height = 785
  HelpContext = 15100
  Caption = 'DBViewerForm'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 934
    Height = 720
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 4
    object Splitter1: TSplitter
      Left = 0
      Top = 252
      Width = 934
      Height = 4
      Cursor = crVSplit
      Align = alBottom
      Color = clBtnShadow
      ParentColor = False
      ResizeStyle = rsUpdate
      Visible = False
      OnCanResize = Splitter1CanResize
    end
    object TBDock1: TTBDock
      Left = 0
      Top = 256
      Width = 934
      Height = 464
      Position = dpBottom
      object twHex: TTBToolWindow
        Left = 0
        Top = 0
        BorderStyle = bsNone
        Caption = 'tb'
        CloseButtonWhenDocked = True
        ClientAreaHeight = 460
        ClientAreaWidth = 916
        DragHandleStyle = dhDouble
        FullSize = True
        TabOrder = 0
        Visible = False
        OnDockChanged = twHexVisibleChanged
        OnVisibleChanged = twHexVisibleChanged
        object EditPages: TIBEPageControl
          Left = 0
          Top = 3
          Width = 916
          Height = 457
          AdvOfficePagerStyler = IBEMainForm.PCStyler
          Align = alClient
          AntiAlias = aaNone
          ButtonSettings.PageListButtonHint = 'Page List'
          Glow = False
          Images = IBEMainForm.ImageList
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
        end
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 916
          Height = 3
          Align = dalTop
        end
      end
    end
    object Pages: TIBEPageControl
      Left = 0
      Top = 0
      Width = 934
      Height = 252
      AdvOfficePagerStyler = IBEMainForm.PCStyler
      Align = alClient
      ActivePage = tsAllPages
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
      TabOrder = 1
      TabStop = True
      NextPictureChanged = True
      PrevPictureChanged = True
      object tsAllPages: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 934
        Height = 227
        Caption = 'All Pages'
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
        object Splitter3: TSplitter
          Left = 297
          Top = 1
          Width = 5
          Height = 226
          Cursor = crHSplit
          Color = clBtnFace
          ParentColor = False
          ResizeStyle = rsUpdate
        end
        object AllGR: TdxDBGrid
          Left = 0
          Top = 1
          Width = 297
          Height = 226
          Bands = <
            item
            end
          >
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'PageNo'
          SummaryGroups = []
          SummarySeparator = ', '
          Align = alLeft
          TabOrder = 0
          DataSource = dsAll
          Filter.Criteria = {4 bytes}
          LookAndFeel = lfFlat
          OptionsBehavior = ['edgoAutoSearch', 'edgoDragScroll', 'edgoEnterShowEditor', 'edgoTabThrough', 'edgoVertThrough']
          OptionsDB = ['edgoCancelOnExit', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoUseBookmarks']
          OptionsView = ['edgoAutoWidth', 'edgoBandHeaderWidth', 'edgoRowSelect', 'edgoUseBitmap']
          OnChangeNode = AllGRChangeNode
          OnCustomDrawCell = AllGRCustomDrawCell
          object dxDBGridColumn1: TdxDBGridColumn
            Alignment = taLeftJustify
            Caption = 'Page'
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PageNo'
          end
          object dbcAllPageType: TdxDBGridColumn
            Caption = 'Type'
            Width = 205
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PageType'
          end
          object AllGRColumn3: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RelationID'
          end
        end
        object AllPanel: TPanel
          Left = 302
          Top = 1
          Width = 632
          Height = 226
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object AllCaptionPanel: TPanel
            Left = 0
            Top = 0
            Width = 632
            Height = 18
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = ' Hex representation'
            Color = clBtnShadow
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = ['fsBold']
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object tsHeader: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 934
        Height = 227
        Caption = 'Header'
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
        object Splitter2: TSplitter
          Left = 433
          Top = 1
          Width = 5
          Height = 226
          Cursor = crHSplit
          Color = clBtnFace
          ParentColor = False
          ResizeStyle = rsUpdate
        end
        object Panel2: TPanel
          Left = 0
          Top = 1
          Width = 433
          Height = 226
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          TabOrder = 0
          object HTL: TdxTreeList
            Left = 0
            Top = 0
            Width = 433
            Height = 226
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
            Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoStoreToRegistry']
            OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
            TreeLineColor = clGrayText
            GridLineColor = clSilver
            OnCustomDrawCell = HTLCustomDrawCell
            OnChangeNode = HTLChangeNode
            OnDeletion = HTLDeletion
            object tlcHdrPropName: TdxTreeListColumn
              Caption = 'Property'
              Width = 316
              BandIndex = 0
              RowIndex = 0
            end
            object tlcHdrPropValue: TdxTreeListColumn
              Alignment = taCenter
              Caption = 'Value'
              HeaderAlignment = taCenter
              Width = 115
              BandIndex = 0
              RowIndex = 0
            end
          end
        end
        object Panel3: TPanel
          Left = 438
          Top = 1
          Width = 496
          Height = 226
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel3'
          TabOrder = 1
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 496
            Height = 18
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = ' Hex representation'
            Color = clBtnShadow
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clCaptionText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = ['fsBold']
            ParentFont = False
            TabOrder = 0
          end
          object HdrHE: THexEditor
            Left = 0
            Top = 18
            Width = 496
            Height = 208
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
      end
      object tsPIPs: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 934
        Height = 227
        Caption = 'PIPs'
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
          Left = 297
          Top = 1
          Height = 226
          Cursor = crHSplit
          Align = alLeft
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object dxDBGrid1: TdxDBGrid
          Left = 0
          Top = 1
          Width = 297
          Height = 226
          Bands = <
            item
            end
          >
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'PageIndex'
          SummaryGroups = []
          SummarySeparator = ', '
          Align = alLeft
          TabOrder = 0
          OnClick = dxDBGrid1Click
          DataSource = DSPIPS
          Filter.Criteria = {4 bytes}
          LookAndFeel = lfFlat
          OptionsBehavior = ['edgoAutoSort', 'edgoDragScroll', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
          OptionsDB = ['edgoCancelOnExit', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
          OptionsView = ['edgoBandHeaderWidth', 'edgoRowSelect', 'edgoUseBitmap']
          object gcPIPPageIndex: TdxDBGridColumn
            Caption = 'Page Index'
            Sorted = csUp
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PageIndex'
          end
          object gcPIPNextPIP: TdxDBGridColumn
            Caption = 'Next PIP'
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NextPIP'
          end
        end
        object DBVPIPFm: TDBVPIPFrame
          Left = 307
          Top = 1
          Width = 627
          Height = 226
          TabOrder = 1
          object Pages: TIBEPageControl
            Width = 627
            Height = 226
            NextPictureChanged = True
            PrevPictureChanged = True
            object tsEdit: TAdvOfficePage
              Width = 627
              Height = 201
              object dfsSplitter1: TdfsSplitter
                Height = 200
                Visible = False
              end
              object pRecords: TPanel
                Width = 398
                Height = 200
                object GR: TdxDBGrid
                  Width = 398
                  Height = 200
                  OnDblClick = DBVPIPFmGRDblClick
                  Filter.Criteria = {4 bytes}
                end
              end
              object tlHeaders: TdxTreeList
                Height = 200
                Visible = False
              end
            end
            object tsHex: TAdvOfficePage
              Width = 627
              Height = 201
              object HexEditor2: THexEditor
                Width = 627
                Height = 200
              end
            end
          end
        end
      end
      object tsTIPs: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 934
        Height = 227
        Caption = 'TIPs'
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
        object GRTips: TdxDBGrid
          Left = 0
          Top = 1
          Width = 934
          Height = 226
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
          DataSource = DSTIPS
          Filter.Criteria = {4 bytes}
          LookAndFeel = lfFlat
          OptionsBehavior = ['edgoAutoSort', 'edgoDragScroll', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
          OptionsDB = ['edgoCancelOnExit', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
          OptionsView = ['edgoBandHeaderWidth', 'edgoRowSelect', 'edgoUseBitmap']
          object GRTipsColumn6: TdxDBGridColumn
            Sorted = csUp
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SeqNo'
          end
          object grcTIP_PageIndex: TdxDBGridColumn
            Caption = 'Page Index'
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PageIndex'
          end
          object GRTipsColumn2: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NextTip'
          end
          object GRTipsColumn3: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PrevTip'
          end
          object GRTipsColumn4: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Min TID'
          end
          object GRTipsColumn5: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Max TID'
          end
        end
      end
      object tsPointers: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 934
        Height = 227
        Caption = 'Pointer Pages'
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
        object PointerPagesFm: TDBVPointerPagesFrame
          Top = 1
          Width = 934
          Height = 226
          object Splitter1: TSplitter
            Left = 814
            Height = 226
          end
          object VPanel1: TVPanel
            Width = 814
            Height = 226
            object Grid: TdxDBGrid
              Width = 814
              Height = 226
              Filter.Criteria = {4 bytes}
            end
          end
          object Panel1: TPanel
            Left = 818
            Height = 226
            object tl: TdxTreeList
              Height = 226
              OnDblClick = PointerPagesFmtlDblClick
            end
          end
          object mt: TkbmMemTable
            Left = 5
            Top = 53
          end
          object DS: TDataSource
            Left = 37
            Top = 53
          end
        end
      end
      object AdvOfficePage1: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 934
        Height = 227
        Caption = 'AdvOfficePage1'
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
        object mDebug: TMemo
          Left = 0
          Top = 1
          Width = 934
          Height = 226
          Align = alClient
          Lines.Strings = ['']
          TabOrder = 0
        end
      end
    end
  end
  object Actions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 520
    Top = 155
    object actShowScriptExplorer: TAction
      Category = 'ScriptActions'
      Caption = 'Show script explorer'
      Checked = True
      Hint = 'Show script explorer'
      ImageIndex = 146
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
    end
    object actOpenDBFile: TAction
      Category = 'ScriptActions'
      Caption = 'Open Database File'
      ImageIndex = 41
      OnExecute = actOpenDBFileExecute
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
        AllowQuickCustomizing = False
        Caption = 'DB Editor'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 97
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Script'
        NotDocking = ['dsLeft', 'dsRight']
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
    Style = bmsFlat
    UseSystemFont = True
    Left = 503
    Top = 48
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = actOpenDBFile
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton2: TdxBarButton
      Action = actShowScriptExplorer
      Category = 0
      ButtonStyle = bsChecked
    end
    object pb: TdxBarProgressItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivNever
      ShowCaption = False
      Width = 120
      Smooth = True
    end
    object bsTimeLeft: TdxBarStatic
      Caption = 'Time left:'
      Category = 0
      Hint = 'Time left:'
      Visible = ivNever
      BorderStyle = sbsEtched
    end
  end
  object OP: TOpenDialog
    DefaultExt = 'gdb'
    Filter = 'InterBase database (*.gdb)|*.gdb|All files (*.*)|*.*'
    FilterIndex = 2
    Left = 332
    Top = 128
  end
  object mtTIPS: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    Left = 4
    Top = 145
    object mtTIPSPageIndex: TIntegerField
      FieldName = 'PageIndex'
    end
    object mtTIPSNextTip: TIntegerField
      FieldName = 'NextTip'
    end
    object mtTIPSPrevTip: TIntegerField
      FieldName = 'PrevTip'
    end
    object mtTIPSMinTID: TIntegerField
      FieldName = 'Min TID'
    end
    object mtTIPSMaxTID: TIntegerField
      FieldName = 'Max TID'
    end
    object mtTIPSSeqNo: TIntegerField
      FieldName = 'SeqNo'
    end
  end
  object DSTIPS: TDataSource
    DataSet = mtTIPS
    Left = 36
    Top = 145
  end
  object mtPIPS: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    Left = 4
    Top = 177
    object mtPIPSPageIndex: TIntegerField
      FieldName = 'PageIndex'
    end
    object mtPIPSNextPIP: TIntegerField
      FieldName = 'NextPIP'
    end
  end
  object DSPIPS: TDataSource
    DataSet = mtPIPS
    OnDataChange = DSPIPSDataChange
    Left = 36
    Top = 177
  end
  object PIPTimer: TTimer
    Enabled = False
    Interval = 400
    OnTimer = PIPTimerTimer
    Left = 88
    Top = 177
  end
  object mtAll: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    Left = 8
    Top = 89
    object mtAllPageNo: TIntegerField
      FieldName = 'PageNo'
    end
    object mtAllPageType: TSmallintField
      FieldName = 'PageType'
    end
    object mtAllRelationID: TWordField
      FieldName = 'RelationID'
    end
  end
  object dsAll: TDataSource
    DataSet = mtAll
    Left = 40
    Top = 89
  end
  object AllTimer: TTimer
    Enabled = False
    Interval = 400
    OnTimer = AllTimerTimer
    Left = 128
    Top = 177
  end
end
