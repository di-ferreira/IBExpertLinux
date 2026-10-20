object PerformanceFrame: TPerformanceFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 6300
  Align = alClient
  TabOrder = 0
  object Pages: TIBEPageControl
    Left = 0
    Top = 9
    Width = 435
    Height = 259
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsGraphicalSummary
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
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsGraphicalSummary: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 435
      Height = 234
      Caption = '&1.Graphical summary'
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
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 431
        Height = 230
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel4'
        TabOrder = 0
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 431
          Height = 230
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel3'
          TabOrder = 0
          object Bevel1: TBevel
            Left = 0
            Top = 26
            Width = 431
            Height = 4
            Align = alTop
            Shape = bsBottomLine
          end
          object Chart: TChart
            Left = 0
            Top = 30
            Width = 431
            Height = 200
            AnimatedZoom = True
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Foot.Text.Strings = ['']
            Foot.Visible = False
            Gradient.Direction = gdRightLeft
            Gradient.EndColor = clSilver
            LeftWall.Brush.Color = clWhite
            LeftWall.Color = 8421440
            MarginBottom = 1
            MarginLeft = 1
            MarginRight = 1
            MarginTop = 1
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.Text.Strings = ['']
            Title.Visible = False
            Legend.TextStyle = ltsPlain
            Legend.Visible = False
            View3D = False
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object lbReads: TLabel
              Left = 136
              Top = 88
              Width = 31
              Height = 13
              Caption = 'Reads'
              Visible = False
            end
            object lbUpdates: TLabel
              Left = 136
              Top = 112
              Width = 40
              Height = 13
              Caption = 'Updates'
              Visible = False
            end
            object lbDeletes: TLabel
              Left = 136
              Top = 136
              Width = 36
              Height = 13
              Caption = 'Deletes'
              Visible = False
            end
            object lbInserts: TLabel
              Left = 208
              Top = 88
              Width = 31
              Height = 13
              Caption = 'Inserts'
              Visible = False
            end
            object lbSummary: TLabel
              Left = 208
              Top = 120
              Width = 43
              Height = 13
              Caption = 'Summary'
              Visible = False
            end
            object INS: THorizBarSeries
              Active = False
              Marks.ArrowLength = 20
              Marks.BackColor = clTeal
              Marks.Font.Charset = RUSSIAN_CHARSET
              Marks.Font.Color = clWhite
              Marks.Font.Height = -11
              Marks.Font.Name = 'Tahoma'
              Marks.Font.Style = []
              Marks.Style = smsXValue
              Marks.Visible = True
              SeriesColor = clTeal
              BarStyle = bsCilinder
              XValues.DateTime = False
              XValues.Name = 'Bar'
              XValues.Multiplier = 1
              XValues.Order = loNone
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1
              YValues.Order = loNone
            end
            object DEL: THorizBarSeries
              Active = False
              Marks.ArrowLength = 20
              Marks.BackColor = clMaroon
              Marks.Font.Charset = DEFAULT_CHARSET
              Marks.Font.Color = clWhite
              Marks.Font.Height = -11
              Marks.Font.Name = 'Arial'
              Marks.Font.Style = []
              Marks.Style = smsXValue
              Marks.Visible = True
              SeriesColor = clMaroon
              BarStyle = bsCilinder
              XValues.DateTime = False
              XValues.Name = 'Bar'
              XValues.Multiplier = 1
              XValues.Order = loNone
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1
              YValues.Order = loNone
            end
            object UPD: THorizBarSeries
              Active = False
              Marks.ArrowLength = 20
              Marks.BackColor = clGreen
              Marks.Font.Charset = DEFAULT_CHARSET
              Marks.Font.Color = clWhite
              Marks.Font.Height = -11
              Marks.Font.Name = 'Arial'
              Marks.Font.Style = []
              Marks.Style = smsXValue
              Marks.Visible = True
              SeriesColor = clGreen
              Title = 'Updates'
              BarStyle = bsCilinder
              XValues.DateTime = False
              XValues.Name = 'Bar'
              XValues.Multiplier = 1
              XValues.Order = loNone
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1
              YValues.Order = loNone
            end
            object IR: THorizBarSeries
              Active = False
              Marks.ArrowLength = 20
              Marks.BackColor = clBlue
              Marks.Font.Charset = DEFAULT_CHARSET
              Marks.Font.Color = clWhite
              Marks.Font.Height = -11
              Marks.Font.Name = 'Arial'
              Marks.Font.Style = []
              Marks.Style = smsXValue
              Marks.Visible = True
              SeriesColor = clBlue
              ShowInLegend = False
              Title = 'IndexReads'
              BarStyle = bsCilinder
              XValues.DateTime = False
              XValues.Name = 'Bar'
              XValues.Multiplier = 1
              XValues.Order = loNone
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1
              YValues.Order = loNone
            end
            object NIR: THorizBarSeries
              Active = False
              Marks.ArrowLength = 20
              Marks.BackColor = clRed
              Marks.Font.Charset = DEFAULT_CHARSET
              Marks.Font.Color = clWhite
              Marks.Font.Height = -11
              Marks.Font.Name = 'Arial'
              Marks.Font.Style = []
              Marks.Style = smsXValue
              Marks.Visible = True
              SeriesColor = clRed
              ShowInLegend = False
              Title = 'NonIndexReads'
              BarStyle = bsCilinder
              XValues.DateTime = False
              XValues.Name = 'Bar'
              XValues.Multiplier = 1
              XValues.Order = loNone
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1
              YValues.Order = loNone
            end
            object RT1: THorizBarSeries
              Active = False
              Marks.ArrowLength = 20
              Marks.BackColor = clYellow
              Marks.Style = smsXValue
              Marks.Visible = True
              SeriesColor = clYellow
              ShowInLegend = False
              Title = 'RecordsTotal'
              BarStyle = bsCilinder
              XValues.DateTime = False
              XValues.Name = 'Bar'
              XValues.Multiplier = 1
              XValues.Order = loNone
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1
              YValues.Order = loNone
            end
          end
          object TBDock2: TTBDock
            Left = 0
            Top = 0
            Width = 431
            Height = 26
            object TBToolbar1: TTBToolbar
              Left = 0
              Top = 0
              BorderStyle = bsNone
              Caption = 'TBToolbar1'
              CloseButton = False
              DragHandleStyle = dhNone
              FullSize = True
              Images = ImageList1
              Resizable = False
              TabOrder = 0
              object TBItem2: TTBItem
                Action = actNIR
                DisplayMode = nbdmImageAndText
                Options = ['tboShowHint']
              end
              object TBSeparatorItem1: TTBSeparatorItem
              end
              object TBItem3: TTBItem
                Action = actIR
                DisplayMode = nbdmImageAndText
              end
              object TBSeparatorItem4: TTBSeparatorItem
              end
              object TBItem7: TTBItem
                Action = actUPD
                DisplayMode = nbdmImageAndText
              end
              object TBSeparatorItem3: TTBSeparatorItem
              end
              object TBItem6: TTBItem
                Action = actDEL
                DisplayMode = nbdmImageAndText
              end
              object TBSeparatorItem2: TTBSeparatorItem
              end
              object TBItem5: TTBItem
                Action = actINS
                DisplayMode = nbdmImageAndText
              end
              object TBSeparatorItem5: TTBSeparatorItem
              end
              object TBItem4: TTBItem
                Action = actTotal
                DisplayMode = nbdmImageAndText
              end
            end
          end
        end
      end
    end
    object tsSummary: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 435
      Height = 234
      Caption = '&2.Additional'
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
      object Panel2: TPanel
        Left = 2
        Top = 2
        Width = 195
        Height = 230
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 7
          Top = 5
          Width = 181
          Height = 22
          AutoSize = False
          Caption = 'Query Time'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = ['fsBold']
          ParentFont = False
        end
        object Bevel2: TBevel
          Left = 4
          Top = 25
          Width = 186
          Height = 6
          Shape = bsTopLine
        end
        object Label5: TLabel
          Left = 7
          Top = 33
          Width = 90
          Height = 22
          AutoSize = False
          Caption = 'Prepare'
          Transparent = True
        end
        object Label6: TLabel
          Left = 7
          Top = 56
          Width = 90
          Height = 22
          AutoSize = False
          Caption = 'Execute'
          Transparent = True
        end
        object Label7: TLabel
          Left = 7
          Top = 79
          Width = 90
          Height = 22
          AutoSize = False
          Caption = 'Avg Fetch Time'
          Transparent = True
        end
        object lPrepareTime: TLabel
          Left = 64
          Top = 33
          Width = 123
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Transparent = True
        end
        object lExecuteTime: TLabel
          Left = 64
          Top = 56
          Width = 123
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Transparent = True
        end
        object lAvgFetchTime: TLabel
          Left = 106
          Top = 79
          Width = 81
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Transparent = True
        end
        object Label11: TLabel
          Left = 6
          Top = 104
          Width = 181
          Height = 22
          AutoSize = False
          Caption = 'Memory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = ['fsBold']
          ParentFont = False
          Transparent = True
        end
        object Bevel3: TBevel
          Left = 1
          Top = 125
          Width = 186
          Height = 6
          Shape = bsTopLine
        end
        object Label12: TLabel
          Left = 7
          Top = 133
          Width = 90
          Height = 22
          AutoSize = False
          Caption = 'Current'
          Transparent = True
        end
        object Label13: TLabel
          Left = 7
          Top = 156
          Width = 90
          Height = 22
          AutoSize = False
          Caption = 'Max'
          Transparent = True
        end
        object Label14: TLabel
          Left = 7
          Top = 179
          Width = 90
          Height = 22
          AutoSize = False
          Caption = 'Buffers'
          Transparent = True
        end
        object lCurrent: TLabel
          Left = 106
          Top = 133
          Width = 81
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Transparent = True
        end
        object lMax: TLabel
          Left = 106
          Top = 156
          Width = 81
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Transparent = True
        end
        object lBuffers: TLabel
          Left = 106
          Top = 179
          Width = 81
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Transparent = True
        end
        object Label25: TLabel
          Left = 6
          Top = 206
          Width = 181
          Height = 22
          AutoSize = False
          Caption = 'Operations'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = ['fsBold']
          ParentFont = False
          Transparent = True
        end
        object Bevel5: TBevel
          Left = 1
          Top = 227
          Width = 186
          Height = 6
          Shape = bsTopLine
        end
        object Label26: TLabel
          Left = 7
          Top = 235
          Width = 90
          Height = 22
          AutoSize = False
          Caption = 'Reads'
          Transparent = True
        end
        object Label27: TLabel
          Left = 7
          Top = 258
          Width = 90
          Height = 22
          AutoSize = False
          Caption = 'Writes'
          Transparent = True
        end
        object Label28: TLabel
          Left = 7
          Top = 281
          Width = 90
          Height = 22
          AutoSize = False
          Caption = 'Fetches'
          Transparent = True
        end
        object lReads: TLabel
          Left = 106
          Top = 235
          Width = 81
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Transparent = True
        end
        object lWrites: TLabel
          Left = 106
          Top = 258
          Width = 81
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Transparent = True
        end
        object lFetches: TLabel
          Left = 106
          Top = 281
          Width = 81
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Transparent = True
        end
        object lMarksLabel: TLabel
          Left = 7
          Top = 305
          Width = 90
          Height = 22
          AutoSize = False
          Caption = 'Marks'
          Transparent = True
        end
        object lMarks: TLabel
          Left = 106
          Top = 305
          Width = 81
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Transparent = True
        end
        object CopyB: TButton
          Left = 4
          Top = 329
          Width = 187
          Height = 28
          Caption = '&Copy Analysis to Clipboard'
          TabOrder = 0
          OnClick = CopyBClick
        end
      end
      object Panel5: TPanel
        Left = 197
        Top = 2
        Width = 236
        Height = 230
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel5'
        TabOrder = 1
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 236
          Height = 21
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            Left = 1
            Top = 3
            Width = 84
            Height = 13
            Caption = 'Enhanced Info'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = ['fsBold']
            ParentFont = False
          end
        end
        object TL: TdxTreeList
          Left = 0
          Top = 21
          Width = 236
          Height = 209
          Bands = <
            item
            end
          >
          DefaultLayout = True
          HeaderPanelRowCount = 1
          Align = alClient
          DragMode = dmAutomatic
          TabOrder = 1
          HideSelection = False
          LookAndFeel = lfFlat
          Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort']
          OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
          TreeLineColor = clGrayText
          ShowGrid = True
          ShowRoot = False
          GridLineColor = clSilver
          OnDblClick = TLDblClick
          OnKeyPress = TLKeyPress
          OnCompare = TLCompare
          object tlcTableName: TdxTreeListColumn
            Caption = 'Table name'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            Sorted = csUp
            Width = 151
            BandIndex = 0
            RowIndex = 0
          end
          object tlcTotal: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Records Total'
            Width = 86
            BandIndex = 0
            RowIndex = 0
          end
          object tlcIR: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'IR'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taRightJustify
            Width = 58
            BandIndex = 0
            RowIndex = 0
          end
          object tlcNIR: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'NIR'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taRightJustify
            Width = 56
            BandIndex = 0
            RowIndex = 0
          end
          object tlcUPD: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'UPD'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taRightJustify
            Width = 54
            BandIndex = 0
            RowIndex = 0
          end
          object tlcDEL: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'DEL'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taRightJustify
            Width = 53
            BandIndex = 0
            RowIndex = 0
          end
          object tlcINS: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'INS'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taRightJustify
            Width = 56
            BandIndex = 0
            RowIndex = 0
          end
          object tlcBackout: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Backouts'
            HeaderAlignment = taRightJustify
            Width = 64
            BandIndex = 0
            RowIndex = 0
          end
          object tlcPurge: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Purges'
            HeaderAlignment = taRightJustify
            Width = 64
            BandIndex = 0
            RowIndex = 0
          end
          object tlcExpunge: TdxTreeListColumn
            Alignment = taRightJustify
            Caption = 'Expunges'
            HeaderAlignment = taRightJustify
            Width = 70
            BandIndex = 0
            RowIndex = 0
          end
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 2894
    Height = 2
    Anchors = ['akLeft', 'akTop', 'akRight']
    BevelOuter = bvNone
    TabOrder = 1
  end
  object TBDock1: TTBDock
    Left = 0
    Top = 0
    Width = 435
    Height = 9
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 416
    Top = 238
    object actNIR: TAction
      Caption = 'Non-Indexed Reads'
      Checked = True
      Hint = 'Non-Indexed Reads'
      ImageIndex = 0
      OnExecute = actNIRExecute
    end
    object actIR: TAction
      Caption = 'Indexed Reads'
      Checked = True
      Hint = 'Indexed Reads'
      ImageIndex = 1
      OnExecute = actIRExecute
    end
    object actUPD: TAction
      Caption = 'Updates'
      Checked = True
      Hint = 'Updates'
      ImageIndex = 2
      OnExecute = actUPDExecute
    end
    object actDEL: TAction
      Caption = 'Deletes'
      Checked = True
      Hint = 'Deletes'
      ImageIndex = 3
      OnExecute = actDELExecute
    end
    object actINS: TAction
      Caption = 'Inserts'
      Checked = True
      Hint = 'Inserts'
      ImageIndex = 4
      OnExecute = actINSExecute
    end
    object actTotal: TAction
      Caption = 'Total Records'
      Hint = 'Total Records'
      ImageIndex = 5
      OnExecute = actTotalExecute
    end
  end
  object ImageList1: TImageList
    Left = 376
    Top = 238
    Bitmap = {12838 bytes}
  end
end
