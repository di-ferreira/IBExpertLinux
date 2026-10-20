object frxDesignerForm: TfrxDesignerForm
  Left = 51
  Top = 130
  Width = 1031
  Height = 478
  ActiveControl = ScrollBox
  Caption = 'Designer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 1023
    Height = 1
    Align = alTop
    Style = bsRaised
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 405
    Width = 1023
    Height = 19
    Panels = <
      item
        Width = 75
      end
      item
        Style = psOwnerDraw
        Width = 230
      end
      item
        Width = 50
      end
    >
    OnDblClick = StatusBarDblClick
    OnMouseDown = StatusBarMouseDown
    OnDrawPanel = StatusBarDrawPanel
  end
  object DockBottom: TfrxDock
    Left = 0
    Top = 404
    Width = 1023
    Height = 1
    Align = alBottom
    TabOrder = 1
    RowSize = 27
  end
  object Tab: TTabControl
    Left = 53
    Top = 56
    Width = 969
    Height = 348
    Align = alClient
    Constraints.MinWidth = 100
    MultiLine = True
    TabOrder = 2
    Tabs.Strings = ['Page1', 'Page2']
    TabIndex = 0
    TabStop = False
    OnChange = TabChange
    OnChanging = TabChanging
    OnDragDrop = TabDragDrop
    OnDragOver = TabDragOver
    OnMouseDown = TabMouseDown
    OnMouseMove = TabMouseMove
    OnMouseUp = TabMouseUp
    object LeftDockSite2: TfrxDockSite
      Left = 4
      Top = 24
      Width = 9
      Height = 320
      Align = alLeft
      AutoSize = True
      BevelOuter = bvNone
      Caption = ' '
      DockSite = True
      TabOrder = 0
    end
    object RightDockSite: TfrxDockSite
      Left = 957
      Top = 24
      Width = 8
      Height = 320
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      Caption = ' '
      DockSite = True
      TabOrder = 1
    end
    object ScrollBoxPanel: TPanel
      Left = 16
      Top = 36
      Width = 297
      Height = 297
      BevelOuter = bvNone
      TabOrder = 2
      object Splitter1: TSplitter
        Left = 0
        Top = 237
        Width = 297
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object ScrollBox: TfrxScrollBox
        Left = 21
        Top = 22
        Width = 276
        Height = 215
        HorzScrollBar.Margin = 10
        HorzScrollBar.Tracking = True
        VertScrollBar.Margin = 10
        VertScrollBar.Tracking = True
        Align = alClient
        Color = clGray
        ParentColor = False
        TabOrder = 0
        OnMouseWheelDown = ScrollBoxMouseWheelDown
        OnMouseWheelUp = ScrollBoxMouseWheelUp
        OnResize = ScrollBoxResize
      end
      object LeftRuler: TfrxRuler
        Left = 0
        Top = 22
        Width = 21
        Height = 215
        Align = alLeft
        DragCursor = crHSplit
        DragMode = dmAutomatic
        TabOrder = 1
        OnDragOver = TopRulerDragOver
        Offset = 0
        Scale = -0.0
        Start = 0
        Units = ruCM
      end
      object TopRuler: TfrxRuler
        Left = 0
        Top = 0
        Width = 297
        Height = 22
        Align = alTop
        DragCursor = crVSplit
        DragMode = dmAutomatic
        TabOrder = 2
        OnDragOver = TopRulerDragOver
        Offset = 22
        Scale = -0.0
        Start = 0
        Units = ruCM
      end
      object DataLV: TListView
        Left = 0
        Top = 240
        Width = 297
        Height = 57
        Align = alBottom
        Columns = []
        IconOptions.WrapText = False
        MultiSelect = True
        TabOrder = 3
        OnChange = DataLVChange
        OnClick = DataLVClick
        OnDblClick = DataLVDblClick
        OnKeyDown = DataLVKeyDown
      end
    end
    object CodePanel: TPanel
      Left = 372
      Top = 40
      Width = 377
      Height = 289
      BevelOuter = bvNone
      TabOrder = 3
      object CodeTB: TToolBar
        Left = 0
        Top = 0
        Width = 377
        Height = 33
        BorderWidth = 1
        ButtonHeight = 23
        EdgeBorders = ['ebLeft', 'ebTop', 'ebRight']
        Flat = True
        TabOrder = 0
        object frTBPanel1: TfrxTBPanel
          Left = 0
          Top = 0
          Width = 169
          Height = 23
          Align = alLeft
          TabOrder = 0
          object LangL: TLabel
            Left = 4
            Top = 4
            Width = 51
            Height = 13
            Caption = 'Language:'
          end
          object LangCB: TfrxComboBox
            Left = 60
            Top = 2
            Width = 100
            Height = 19
            ItemHeight = 13
            ListWidth = 0
            TabOrder = 0
            ItemIndex = -1
            OnClick = LangCBClick
          end
        end
        object OpenScriptB: TToolButton
          Left = 169
          Top = 0
          ImageIndex = 1
          OnClick = OpenScriptBClick
        end
        object SaveScriptB: TToolButton
          Left = 192
          Top = 0
          ImageIndex = 2
          OnClick = SaveScriptBClick
        end
        object SepTB19: TToolButton
          Left = 215
          Top = 0
          Width = 8
          ImageIndex = 73
          Style = tbsSeparator
        end
        object RunScriptB: TToolButton
          Left = 223
          Top = 0
          ImageIndex = 90
          OnClick = RunScriptBClick
        end
        object StepScriptB: TToolButton
          Left = 246
          Top = 0
          ImageIndex = 91
          OnClick = RunScriptBClick
        end
        object StopScriptB: TToolButton
          Left = 269
          Top = 0
          ImageIndex = 93
          OnClick = StopScriptBClick
        end
        object EvaluateB: TToolButton
          Left = 292
          Top = 0
          ImageIndex = 92
          OnClick = EvaluateBClick
        end
      end
    end
  end
  object DockRight: TfrxDock
    Left = 1022
    Top = 56
    Width = 1
    Height = 348
    Align = alRight
    TabOrder = 3
    RowSize = 27
  end
  object DockTop: TfrxDock
    Left = 0
    Top = 1
    Width = 1023
    Height = 55
    Align = alTop
    TabOrder = 4
    RowSize = 27
    object TextTB: TfrxToolBar
      Left = 0
      Top = 27
      Width = 651
      Height = 27
      Caption = 'Text'
      FullRepaint = False
      TabOrder = 0
      Orientation = toHorzOnly
      object TextTB1: TToolBar
        Left = 10
        Top = 2
        Width = 639
        Height = 23
        Align = alLeft
        AutoSize = True
        ButtonHeight = 23
        EdgeBorders = []
        Flat = True
        TabOrder = 0
        object PanelTB1: TfrxTBPanel
          Left = 0
          Top = 0
          Width = 293
          Height = 23
          Align = alLeft
          TabOrder = 0
          object FontSizeCB: TfrxComboBox
            Tag = 1
            Left = 248
            Top = 2
            Width = 40
            Height = 19
            ItemHeight = 13
            Items.Strings = ['5', '6', '7', '8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '26', '28', '36', '48', '72']
            ListWidth = 0
            TabOrder = 0
            Text = ' '
            ItemIndex = -1
            OnClick = ToolButtonClick
          end
          object FontNameCB: TfrxFontComboBox
            Left = 98
            Top = 2
            Width = 145
            Height = 19
            MRURegKey = '\Software\Fast Reports\MRUFont'
            Text = ' '
            DropDownCount = 12
            ItemHeight = 13
            TabOrder = 1
            OnClick = ToolButtonClick
          end
          object StyleCB: TfrxComboBox
            Tag = 33
            Left = 0
            Top = 2
            Width = 93
            Height = 19
            ItemHeight = 13
            ListWidth = 120
            TabOrder = 2
            ItemIndex = -1
            OnClick = ToolButtonClick
            OnDblClick = ReportStylesMIClick
          end
        end
        object BoldB: TToolButton
          Tag = 2
          Left = 293
          Top = 0
          AllowAllUp = True
          ImageIndex = 20
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object ItalicB: TToolButton
          Tag = 3
          Left = 316
          Top = 0
          AllowAllUp = True
          ImageIndex = 21
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object UnderlineB: TToolButton
          Tag = 4
          Left = 339
          Top = 0
          AllowAllUp = True
          ImageIndex = 22
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object SepTB8: TToolButton
          Left = 362
          Top = 0
          Width = 8
          ImageIndex = 0
          Style = tbsSeparator
        end
        object FontB: TToolButton
          Tag = 43
          Left = 370
          Top = 0
          ImageIndex = 59
        end
        object FontColorB: TToolButton
          Tag = 5
          Left = 393
          Top = 0
          ImageIndex = 23
          OnClick = FontColorBClick
        end
        object HighlightB: TToolButton
          Tag = 6
          Left = 416
          Top = 0
          ImageIndex = 24
          OnClick = HighlightBClick
        end
        object RotateB: TToolButton
          Left = 439
          Top = 0
          DropdownMenu = RotationPopup
          ImageIndex = 64
        end
        object SepTB9: TToolButton
          Left = 462
          Top = 0
          Width = 8
          ImageIndex = 0
          Style = tbsSeparator
        end
        object TextAlignLeftB: TToolButton
          Tag = 7
          Left = 470
          Top = 0
          Grouped = True
          ImageIndex = 25
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object TextAlignCenterB: TToolButton
          Tag = 8
          Left = 493
          Top = 0
          Grouped = True
          ImageIndex = 26
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object TextAlignRightB: TToolButton
          Tag = 9
          Left = 516
          Top = 0
          Grouped = True
          ImageIndex = 27
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object TextAlignBlockB: TToolButton
          Tag = 10
          Left = 539
          Top = 0
          Grouped = True
          ImageIndex = 28
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object SepTB10: TToolButton
          Left = 562
          Top = 0
          Width = 8
          ImageIndex = 0
          Style = tbsSeparator
        end
        object TextAlignTopB: TToolButton
          Tag = 11
          Left = 570
          Top = 0
          Grouped = True
          ImageIndex = 29
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object TextAlignMiddleB: TToolButton
          Tag = 12
          Left = 593
          Top = 0
          Grouped = True
          ImageIndex = 30
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object TextAlignBottomB: TToolButton
          Tag = 13
          Left = 616
          Top = 0
          Grouped = True
          ImageIndex = 31
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
      end
    end
    object FrameTB: TfrxToolBar
      Left = 651
      Top = 27
      Width = 305
      Height = 27
      Caption = 'Frame'
      FullRepaint = False
      TabOrder = 1
      Orientation = toHorzOnly
      object FrameTB1: TToolBar
        Left = 10
        Top = 2
        Width = 293
        Height = 23
        Align = alLeft
        AutoSize = True
        ButtonHeight = 23
        EdgeBorders = []
        Flat = True
        TabOrder = 0
        object FrameTopB: TToolButton
          Tag = 20
          Left = 0
          Top = 0
          AllowAllUp = True
          ImageIndex = 32
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object FrameBottomB: TToolButton
          Tag = 21
          Left = 23
          Top = 0
          AllowAllUp = True
          ImageIndex = 33
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object FrameLeftB: TToolButton
          Tag = 22
          Left = 46
          Top = 0
          AllowAllUp = True
          ImageIndex = 34
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object FrameRightB: TToolButton
          Tag = 23
          Left = 69
          Top = 0
          AllowAllUp = True
          ImageIndex = 35
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object SepTB11: TToolButton
          Left = 92
          Top = 0
          Width = 8
          ImageIndex = 0
          Style = tbsSeparator
        end
        object FrameAllB: TToolButton
          Tag = 24
          Left = 100
          Top = 0
          ImageIndex = 36
          OnClick = ToolButtonClick
        end
        object FrameNoB: TToolButton
          Tag = 25
          Left = 123
          Top = 0
          ImageIndex = 37
          OnClick = ToolButtonClick
        end
        object ShadowB: TToolButton
          Tag = 32
          Left = 146
          Top = 0
          AllowAllUp = True
          ImageIndex = 60
          Style = tbsCheck
          OnClick = ToolButtonClick
        end
        object SepTB12: TToolButton
          Left = 169
          Top = 0
          Width = 8
          ImageIndex = 0
          Style = tbsSeparator
        end
        object FillColorB: TToolButton
          Tag = 26
          Left = 177
          Top = 0
          ImageIndex = 38
          OnClick = FontColorBClick
        end
        object FrameColorB: TToolButton
          Tag = 27
          Left = 200
          Top = 0
          ImageIndex = 39
          OnClick = FontColorBClick
        end
        object FrameStyleB: TToolButton
          Tag = 28
          Left = 223
          Top = 0
          ImageIndex = 40
          OnClick = FrameStyleBClick
        end
        object PanelTB2: TfrxTBPanel
          Left = 246
          Top = 0
          Width = 47
          Height = 23
          Align = alLeft
          TabOrder = 0
          object FrameWidthCB: TfrxComboBox
            Tag = 29
            Left = 5
            Top = 2
            Width = 40
            Height = 19
            ItemHeight = 13
            Items.Strings = ['0,1', '0,5', '1', '1,5', '2', '3', '4', '5', '6', '7', '8', '9', '10']
            ListWidth = 0
            TabOrder = 0
            Text = ' '
            ItemIndex = -1
            OnClick = ToolButtonClick
          end
        end
      end
    end
    object StandardTB: TfrxToolBar
      Left = 0
      Top = 0
      Width = 576
      Height = 27
      Caption = 'Standard'
      FullRepaint = False
      TabOrder = 2
      Orientation = toAny
      object StandardTB1: TToolBar
        Left = 10
        Top = 2
        Width = 564
        Height = 23
        Align = alLeft
        AutoSize = True
        ButtonHeight = 23
        EdgeBorders = []
        Flat = True
        TabOrder = 0
        object NewB: TToolButton
          Tag = 40
          Left = 0
          Top = 0
          Action = NewReportCmd
        end
        object OpenB: TToolButton
          Tag = 41
          Left = 23
          Top = 0
          Action = OpenCmd
        end
        object SaveB: TToolButton
          Tag = 42
          Left = 46
          Top = 0
          Action = SaveCmd
        end
        object PreviewB: TToolButton
          Tag = 43
          Left = 69
          Top = 0
          Action = PreviewCmd
        end
        object SepTB4: TToolButton
          Left = 92
          Top = 0
          Width = 8
          ImageIndex = 0
          Style = tbsSeparator
        end
        object NewPageB: TToolButton
          Tag = 52
          Left = 100
          Top = 0
          Action = NewPageCmd
        end
        object NewDialogB: TToolButton
          Tag = 70
          Left = 123
          Top = 0
          Action = NewDialogCmd
        end
        object DeletePageB: TToolButton
          Tag = 53
          Left = 146
          Top = 0
          Action = DeletePageCmd
        end
        object PageSettingsB: TToolButton
          Tag = 54
          Left = 169
          Top = 0
          Action = PageSettingsCmd
        end
        object SepTB13: TToolButton
          Left = 192
          Top = 0
          Width = 8
          ImageIndex = 21
          Style = tbsSeparator
        end
        object VariablesB: TToolButton
          Left = 200
          Top = 0
          Action = VariablesCmd
        end
        object SepTB1: TToolButton
          Left = 223
          Top = 0
          Width = 8
          ImageIndex = 0
          Style = tbsSeparator
        end
        object CutB: TToolButton
          Tag = 44
          Left = 231
          Top = 0
          Action = CutCmd
        end
        object CopyB: TToolButton
          Tag = 45
          Left = 254
          Top = 0
          Action = CopyCmd
        end
        object PasteB: TToolButton
          Tag = 46
          Left = 277
          Top = 0
          Action = PasteCmd
        end
        object SampleFormatB: TToolButton
          Left = 300
          Top = 0
          ImageIndex = 58
          OnClick = SampleFormatBClick
        end
        object SepTB2: TToolButton
          Left = 323
          Top = 0
          Width = 8
          ImageIndex = 0
          Style = tbsSeparator
        end
        object UndoB: TToolButton
          Tag = 47
          Left = 331
          Top = 0
          Action = UndoCmd
        end
        object RedoB: TToolButton
          Tag = 48
          Left = 354
          Top = 0
          Action = RedoCmd
        end
        object SepTB3: TToolButton
          Left = 377
          Top = 0
          Width = 8
          ImageIndex = 0
          Style = tbsSeparator
        end
        object GroupB: TToolButton
          Left = 385
          Top = 0
          Action = GroupCmd
        end
        object UngroupB: TToolButton
          Left = 408
          Top = 0
          Action = UngroupCmd
        end
        object SepTB20: TToolButton
          Left = 431
          Top = 0
          Width = 8
          ImageIndex = 60
          Style = tbsSeparator
        end
        object ShowGridB: TToolButton
          Tag = 55
          Left = 439
          Top = 0
          AllowAllUp = True
          ImageIndex = 17
          Style = tbsCheck
          OnClick = ShowGridBClick
        end
        object AlignToGridB: TToolButton
          Tag = 56
          Left = 462
          Top = 0
          AllowAllUp = True
          ImageIndex = 18
          Style = tbsCheck
          OnClick = AlignToGridBClick
        end
        object SetToGridB: TToolButton
          Tag = 31
          Left = 485
          Top = 0
          ImageIndex = 57
          OnClick = ToolButtonClick
        end
        object PanelTB3: TfrxTBPanel
          Left = 508
          Top = 0
          Width = 56
          Height = 23
          Align = alLeft
          TabOrder = 0
          object ScaleCB: TfrxComboBox
            Left = 5
            Top = 2
            Width = 49
            Height = 19
            Hint = 'Scale'
            ItemHeight = 13
            Items.Strings = ['25%', '50%', '75%', '100%', '150%', '200%', 'Page width', 'Whole page']
            ListWidth = 100
            TabOrder = 0
            Text = '100%'
            ItemIndex = -1
            OnClick = ScaleCBClick
          end
        end
      end
    end
    object ExtraToolsTB: TfrxToolBar
      Left = 951
      Top = 0
      Width = 19
      Height = 18
      Caption = 'Extra Tools'
      FullRepaint = False
      TabOrder = 3
      Orientation = toAny
      object ExtraToolsTB1: TToolBar
        Left = 10
        Top = 2
        Width = 7
        Height = 14
        Align = alLeft
        AutoSize = True
        ButtonHeight = 23
        EdgeBorders = []
        Flat = True
        TabOrder = 0
      end
    end
    object AlignTB: TfrxToolBar
      Left = 628
      Top = 0
      Width = 320
      Height = 27
      Caption = 'Align'
      FullRepaint = False
      TabOrder = 4
      Orientation = toAny
      object AlignTB1: TToolBar
        Left = 10
        Top = 2
        Width = 308
        Height = 23
        Align = alLeft
        AutoSize = True
        ButtonHeight = 23
        EdgeBorders = []
        Flat = True
        TabOrder = 0
        object AlignLeftsB: TToolButton
          Tag = 60
          Left = 0
          Top = 0
          Caption = 'AlignLeftsB'
          ImageIndex = 41
          OnClick = AlignLeftsBClick
        end
        object AlignHorzCentersB: TToolButton
          Tag = 60
          Left = 23
          Top = 0
          Caption = 'AlignHorzCentersB'
          ImageIndex = 42
          OnClick = AlignHorzCentersBClick
        end
        object AlignRightsB: TToolButton
          Tag = 60
          Left = 46
          Top = 0
          Caption = 'AlignRightsB'
          ImageIndex = 45
          OnClick = AlignRightsBClick
        end
        object SepTB15: TToolButton
          Left = 69
          Top = 0
          Width = 8
          ImageIndex = 85
          Style = tbsSeparator
        end
        object AlignTopsB: TToolButton
          Tag = 60
          Left = 77
          Top = 0
          Caption = 'AlignTopsB'
          ImageIndex = 46
          OnClick = AlignTopsBClick
        end
        object AlignVertCentersB: TToolButton
          Tag = 60
          Left = 100
          Top = 0
          Caption = 'AlignVertCentersB'
          ImageIndex = 47
          OnClick = AlignVertCentersBClick
        end
        object AlignBottomsB: TToolButton
          Tag = 60
          Left = 123
          Top = 0
          Caption = 'AlignBottomsB'
          ImageIndex = 50
          OnClick = AlignBottomsBClick
        end
        object SepTB16: TToolButton
          Left = 146
          Top = 0
          Width = 8
          ImageIndex = 85
          Style = tbsSeparator
        end
        object SpaceHorzB: TToolButton
          Tag = 60
          Left = 154
          Top = 0
          Caption = 'SpaceHorzB'
          ImageIndex = 44
          OnClick = SpaceHorzBClick
        end
        object SpaceVertB: TToolButton
          Tag = 60
          Left = 177
          Top = 0
          Caption = 'SpaceVertB'
          ImageIndex = 49
          OnClick = SpaceVertBClick
        end
        object SepTB17: TToolButton
          Left = 200
          Top = 0
          Width = 8
          ImageIndex = 86
          Style = tbsSeparator
        end
        object CenterHorzB: TToolButton
          Tag = 60
          Left = 208
          Top = 0
          Caption = 'CenterHorzB'
          ImageIndex = 43
          OnClick = CenterHorzBClick
        end
        object CenterVertB: TToolButton
          Tag = 60
          Left = 231
          Top = 0
          Caption = 'CenterVertB'
          ImageIndex = 48
          OnClick = CenterVertBClick
        end
        object SepTB18: TToolButton
          Left = 254
          Top = 0
          Width = 8
          ImageIndex = 85
          Style = tbsSeparator
        end
        object SameWidthB: TToolButton
          Left = 262
          Top = 0
          Caption = 'SameWidthB'
          ImageIndex = 83
          OnClick = SameWidthBClick
        end
        object SameHeightB: TToolButton
          Left = 285
          Top = 0
          Caption = 'SameHeightB'
          ImageIndex = 84
          OnClick = SameHeightBClick
        end
      end
    end
  end
  object LeftDockSite1: TfrxDockSite
    Left = 0
    Top = 56
    Width = 17
    Height = 348
    Align = alLeft
    AutoSize = True
    BevelOuter = bvNone
    Caption = ' '
    DockSite = True
    TabOrder = 6
  end
  object ObjectsTB1: TToolBar
    Left = 20
    Top = 56
    Width = 33
    Height = 348
    Align = alLeft
    ButtonHeight = 29
    ButtonWidth = 29
    EdgeBorders = ['ebLeft', 'ebRight']
    Flat = True
    TabOrder = 5
    Wrapable = False
  end
  object PagePopup: TPopupMenu
    AutoPopup = False
    OnPopup = PagePopupPopup
    Left = 166
    Top = 268
    object EditMI1: TMenuItem
      Action = EditCmd
    end
    object SepMI12: TMenuItem
      Caption = '-'
    end
    object SepMI8: TMenuItem
      Caption = '-'
    end
    object CutMI1: TMenuItem
      Action = CutCmd
    end
    object CopyMI1: TMenuItem
      Action = CopyCmd
    end
    object PasteMI1: TMenuItem
      Action = PasteCmd
    end
    object DeleteMI1: TMenuItem
      Action = DeleteCmd
    end
    object SelectAllMI1: TMenuItem
      Action = SelectAllCmd
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object BringtoFrontMI1: TMenuItem
      Action = BringToFrontCmd
    end
    object SendtoBackMI1: TMenuItem
      Action = SendToBackCmd
    end
    object TabOrderMI: TMenuItem
      Caption = 'Tab Order...'
      OnClick = TabOrderMIClick
    end
  end
  object MainMenu: TMainMenu
    Left = 132
    Top = 268
    object FileMenu: TMenuItem
      Caption = '&File'
      object NewMI: TMenuItem
        Action = NewItemCmd
      end
      object NewReportMI: TMenuItem
        Action = NewReportCmd
      end
      object NewPageMI: TMenuItem
        Action = NewPageCmd
      end
      object NewDialogMI: TMenuItem
        Action = NewDialogCmd
      end
      object SepMI1: TMenuItem
        Caption = '-'
      end
      object OpenMI: TMenuItem
        Action = OpenCmd
      end
      object SaveMI: TMenuItem
        Action = SaveCmd
      end
      object SaveAsMI: TMenuItem
        Action = SaveAsCmd
      end
      object SepMI3: TMenuItem
        Caption = '-'
      end
      object PreviewMI: TMenuItem
        Action = PreviewCmd
      end
      object PageSettingsMI: TMenuItem
        Action = PageSettingsCmd
      end
      object SepMI11: TMenuItem
        Caption = '-'
        Visible = False
      end
      object SepMI4: TMenuItem
        Caption = '-'
      end
      object ExitMI: TMenuItem
        Action = ExitCmd
      end
    end
    object EditMenu: TMenuItem
      Caption = '&Edit'
      object UndoMI: TMenuItem
        Action = UndoCmd
      end
      object RedoMI: TMenuItem
        Action = RedoCmd
      end
      object SepMI5: TMenuItem
        Caption = '-'
      end
      object CutMI: TMenuItem
        Action = CutCmd
      end
      object CopyMI: TMenuItem
        Action = CopyCmd
      end
      object PasteMI: TMenuItem
        Action = PasteCmd
      end
      object DeleteMI: TMenuItem
        Action = DeleteCmd
      end
      object DeletePageMI: TMenuItem
        Action = DeletePageCmd
      end
      object SelectAllMI: TMenuItem
        Action = SelectAllCmd
      end
      object GroupMI: TMenuItem
        Action = GroupCmd
      end
      object UngroupMI: TMenuItem
        Action = UngroupCmd
      end
      object EditMI: TMenuItem
        Action = EditCmd
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object FindMI: TMenuItem
        Caption = 'Find...'
        ShortCut = 16454
        OnClick = FindMIClick
      end
      object ReplaceMI: TMenuItem
        Caption = 'Replace...'
        ShortCut = 16466
        OnClick = FindMIClick
      end
      object FindNextMI: TMenuItem
        Caption = 'Find Next'
        Enabled = False
        ShortCut = 114
        OnClick = FindNextMIClick
      end
      object SepMI6: TMenuItem
        Caption = '-'
      end
      object BringtoFrontMI: TMenuItem
        Action = BringToFrontCmd
      end
      object SendtoBackMI: TMenuItem
        Action = SendToBackCmd
      end
    end
    object ReportMenu: TMenuItem
      Caption = '&Report'
      object ReportDataMI: TMenuItem
        Caption = 'Data...'
        ImageIndex = 53
        OnClick = ReportDataMIClick
      end
      object VariablesMI: TMenuItem
        Action = VariablesCmd
      end
      object ReportStylesMI: TMenuItem
        Caption = 'Styles...'
        ImageIndex = 87
        OnClick = ReportStylesMIClick
      end
      object ReportSettingsMI: TMenuItem
        Caption = 'Options...'
        OnClick = ReportSettingsMIClick
      end
    end
    object ViewMenu: TMenuItem
      Caption = '&View'
      object ToolbarsMI: TMenuItem
        Caption = 'Toolbars'
        OnClick = ToolbarsMIOpen
        object StandardMI: TMenuItem
          Caption = 'Standard'
          GroupIndex = 1
          OnClick = ToolbarsMIClick
        end
        object TextMI: TMenuItem
          Tag = 1
          Caption = 'Text'
          GroupIndex = 1
          OnClick = ToolbarsMIClick
        end
        object FrameMI: TMenuItem
          Tag = 2
          Caption = 'Frame'
          GroupIndex = 1
          OnClick = ToolbarsMIClick
        end
        object AlignmentMI: TMenuItem
          Tag = 3
          Caption = 'Alignment palette'
          GroupIndex = 1
          OnClick = ToolbarsMIClick
        end
        object ToolsMI: TMenuItem
          Tag = 4
          Caption = 'Extra tools'
          GroupIndex = 1
          OnClick = ToolbarsMIClick
        end
        object InspectorMI: TMenuItem
          Tag = 5
          Caption = 'Object Inspector'
          GroupIndex = 1
          ShortCut = 122
          OnClick = ToolbarsMIClick
        end
        object DataTreeMI: TMenuItem
          Tag = 6
          Caption = 'Data Tree'
          GroupIndex = 1
          OnClick = ToolbarsMIClick
        end
        object ReportTreeMI: TMenuItem
          Tag = 7
          Caption = 'Report Tree'
          GroupIndex = 1
          OnClick = ToolbarsMIClick
        end
      end
      object SepMI9: TMenuItem
        Caption = '-'
      end
      object ShowRulersMI: TMenuItem
        Caption = 'Rulers'
        OnClick = ShowRulersMIClick
      end
      object ShowGuidesMI: TMenuItem
        Caption = 'Guides'
        OnClick = ShowGuidesMIClick
      end
      object DeleteGuidesMI: TMenuItem
        Caption = 'Delete Guides'
        OnClick = DeleteGuidesMIClick
      end
      object SepMI10: TMenuItem
        Caption = '-'
      end
      object OptionsMI: TMenuItem
        Caption = 'Options...'
        OnClick = OptionsMIClick
      end
      object ConnectionsMI: TMenuItem
        Caption = 'Connections...'
        OnClick = ConnectionsMIClick
      end
    end
    object HelpMenu: TMenuItem
      Caption = '&Help'
      object HelpContentsMI: TMenuItem
        Caption = 'Help Contents...'
        Enabled = False
        ShortCut = 112
        Visible = False
      end
      object SepMI7: TMenuItem
        Caption = '-'
        Visible = False
      end
      object AboutMI: TMenuItem
        Caption = 'About FastReport...'
        OnClick = AboutMIClick
      end
    end
  end
  object OpenDialog: TOpenDialog
    Left = 310
    Top = 268
  end
  object SaveDialog: TSaveDialog
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofEnableSizing']
    Left = 310
    Top = 300
  end
  object TabPopup: TPopupMenu
    Left = 200
    Top = 268
    object NewPageMI1: TMenuItem
      Action = NewPageCmd
    end
    object NewDialogMI1: TMenuItem
      Action = NewDialogCmd
    end
    object DeletePageMI1: TMenuItem
      Action = DeletePageCmd
    end
    object PageSettingsMI1: TMenuItem
      Action = PageSettingsCmd
    end
  end
  object ActionList: TActionList
    Left = 98
    Top = 268
    object UndoCmd: TAction
      Category = 'Edit'
      Caption = 'Undo'
      ImageIndex = 8
      ShortCut = 16474
      OnExecute = UndoCmdExecute
    end
    object RedoCmd: TAction
      Category = 'Edit'
      Caption = 'Redo'
      ImageIndex = 9
      OnExecute = RedoCmdExecute
    end
    object CutCmd: TAction
      Category = 'Edit'
      Caption = 'Cut'
      ImageIndex = 5
      ShortCut = 16472
      OnExecute = CutCmdExecute
    end
    object CopyCmd: TAction
      Category = 'Edit'
      Caption = 'Copy'
      ImageIndex = 6
      ShortCut = 16451
      OnExecute = CopyCmdExecute
    end
    object PasteCmd: TAction
      Category = 'Edit'
      Caption = 'Paste'
      Enabled = False
      ImageIndex = 7
      ShortCut = 16470
      OnExecute = PasteCmdExecute
    end
    object DeleteCmd: TAction
      Category = 'Edit'
      Caption = 'Delete'
      ImageIndex = 51
      OnExecute = DeleteCmdExecute
    end
    object DeletePageCmd: TAction
      Category = 'Edit'
      Caption = 'Delete Page'
      ImageIndex = 12
      OnExecute = DeletePageCmdExecute
    end
    object SelectAllCmd: TAction
      Category = 'Edit'
      Caption = 'Select All'
      ShortCut = 16449
      OnExecute = SelectAllCmdExecute
    end
    object EditCmd: TAction
      Category = 'Edit'
      Caption = 'Edit...'
      OnExecute = EditCmdExecute
    end
    object BringToFrontCmd: TAction
      Category = 'Edit'
      Caption = 'Bring to Front'
      ImageIndex = 14
      OnExecute = BringToFrontCmdExecute
    end
    object SendToBackCmd: TAction
      Category = 'Edit'
      Caption = 'Send to Back'
      ImageIndex = 15
      OnExecute = SendToBackCmdExecute
    end
    object NewItemCmd: TAction
      Category = 'File'
      Caption = 'New...'
      OnExecute = NewItemCmdExecute
    end
    object NewReportCmd: TAction
      Category = 'File'
      Caption = 'New Report'
      ImageIndex = 0
      OnExecute = NewReportCmdExecute
    end
    object NewPageCmd: TAction
      Category = 'File'
      Caption = 'New Page'
      ImageIndex = 10
      OnExecute = NewPageCmdExecute
    end
    object NewDialogCmd: TAction
      Category = 'File'
      Caption = 'New Dialog'
      ImageIndex = 11
      OnExecute = NewDialogCmdExecute
    end
    object OpenCmd: TAction
      Category = 'File'
      Caption = 'Open...'
      ImageIndex = 1
      ShortCut = 16463
      OnExecute = OpenCmdExecute
    end
    object SaveCmd: TAction
      Category = 'File'
      Caption = 'Save'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = SaveCmdExecute
    end
    object SaveAsCmd: TAction
      Category = 'File'
      Caption = 'Save As...'
      OnExecute = SaveAsCmdExecute
    end
    object VariablesCmd: TAction
      Category = 'File'
      Caption = 'Variables...'
      ImageIndex = 52
      OnExecute = VariablesCmdExecute
    end
    object PageSettingsCmd: TAction
      Category = 'File'
      Caption = 'Page Settings...'
      ImageIndex = 13
      OnExecute = PageSettingsCmdExecute
    end
    object PreviewCmd: TAction
      Category = 'File'
      Caption = 'Preview'
      ImageIndex = 3
      ShortCut = 16464
      OnExecute = PreviewCmdExecute
    end
    object ExitCmd: TAction
      Category = 'File'
      Caption = 'Exit'
      ShortCut = 32856
      OnExecute = ExitCmdExecute
    end
    object GroupCmd: TAction
      Category = 'Edit'
      Caption = 'Group'
      ImageIndex = 94
      OnExecute = GroupCmdExecute
    end
    object UngroupCmd: TAction
      Category = 'Edit'
      Caption = 'Ungroup'
      ImageIndex = 16
      OnExecute = UngroupCmdExecute
    end
  end
  object BandsPopup: TPopupMenu
    OnPopup = BandsPopupPopup
    Left = 234
    Top = 268
    object ReportTitleMI: TMenuItem
      Caption = 'Report Title'
      OnClick = InsertBandClick
    end
    object ReportSummaryMI: TMenuItem
      Tag = 1
      Caption = 'Report Summary'
      OnClick = InsertBandClick
    end
    object PageHeaderMI: TMenuItem
      Tag = 2
      Caption = 'Page Header'
      OnClick = InsertBandClick
    end
    object PageFooterMI: TMenuItem
      Tag = 3
      Caption = 'Page Footer'
      OnClick = InsertBandClick
    end
    object HeaderMI: TMenuItem
      Tag = 4
      Caption = 'Header'
      OnClick = InsertBandClick
    end
    object FooterMI: TMenuItem
      Tag = 5
      Caption = 'Footer'
      OnClick = InsertBandClick
    end
    object MasterDataMI: TMenuItem
      Tag = 6
      Caption = 'Master Data'
      ImageIndex = 53
      OnClick = InsertBandClick
    end
    object DetailDataMI: TMenuItem
      Tag = 7
      Caption = 'Detail Data'
      ImageIndex = 53
      OnClick = InsertBandClick
    end
    object SubdetailDataMI: TMenuItem
      Tag = 8
      Caption = 'Subdetail Data'
      ImageIndex = 53
      OnClick = InsertBandClick
    end
    object Data4levelMI: TMenuItem
      Tag = 9
      Caption = 'Data 4th level'
      ImageIndex = 53
      OnClick = InsertBandClick
    end
    object Data5levelMI: TMenuItem
      Tag = 10
      Caption = 'Data 5th level'
      ImageIndex = 53
      OnClick = InsertBandClick
    end
    object Data6levelMI: TMenuItem
      Tag = 11
      Caption = 'Data 6th level'
      ImageIndex = 53
      OnClick = InsertBandClick
    end
    object GroupHeaderMI: TMenuItem
      Tag = 12
      Caption = 'Group Header'
      ImageIndex = 61
      OnClick = InsertBandClick
    end
    object GroupFooterMI: TMenuItem
      Tag = 13
      Caption = 'Group Footer'
      OnClick = InsertBandClick
    end
    object ChildMI: TMenuItem
      Tag = 14
      Caption = 'Child'
      OnClick = InsertBandClick
    end
    object ColumnHeaderMI: TMenuItem
      Tag = 15
      Caption = 'Column Header'
      OnClick = InsertBandClick
    end
    object ColumnFooterMI: TMenuItem
      Tag = 16
      Caption = 'Column Footer'
      OnClick = InsertBandClick
    end
    object OverlayMI: TMenuItem
      Tag = 17
      Caption = 'Overlay'
      OnClick = InsertBandClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object VerticalbandsMI: TMenuItem
      Caption = 'Vertical bands'
      object HeaderMI1: TMenuItem
        Tag = 104
        Caption = 'Header'
        OnClick = InsertBandClick
      end
      object FooterMI1: TMenuItem
        Tag = 105
        Caption = 'Footer'
        OnClick = InsertBandClick
      end
      object MasterDataMI1: TMenuItem
        Tag = 106
        Caption = 'Master Data'
        ImageIndex = 53
        OnClick = InsertBandClick
      end
      object DetailDataMI1: TMenuItem
        Tag = 107
        Caption = 'Detail Data'
        ImageIndex = 53
        OnClick = InsertBandClick
      end
      object SubdetailDataMI1: TMenuItem
        Tag = 108
        Caption = 'Subdetail Data'
        ImageIndex = 53
        OnClick = InsertBandClick
      end
      object GroupHeaderMI1: TMenuItem
        Tag = 112
        Caption = 'Group Header'
        ImageIndex = 61
        OnClick = InsertBandClick
      end
      object GroupFooterMI1: TMenuItem
        Tag = 113
        Caption = 'Group Footer'
        OnClick = InsertBandClick
      end
      object ChildMI1: TMenuItem
        Tag = 114
        Caption = 'Child'
        OnClick = InsertBandClick
      end
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 367
    Top = 288
  end
  object RotationPopup: TPopupMenu
    Left = 268
    Top = 268
    object R0MI: TMenuItem
      Tag = 30
      Caption = '0°'
      OnClick = ToolButtonClick
    end
    object R45MI: TMenuItem
      Tag = 30
      Caption = '45°'
      HelpContext = 45
      OnClick = ToolButtonClick
    end
    object R90MI: TMenuItem
      Tag = 30
      Caption = '90°'
      HelpContext = 90
      OnClick = ToolButtonClick
    end
    object R180MI: TMenuItem
      Tag = 30
      Caption = '180°'
      HelpContext = 180
      OnClick = ToolButtonClick
    end
    object R270MI: TMenuItem
      Tag = 30
      Caption = '270°'
      HelpContext = 270
      OnClick = ToolButtonClick
    end
  end
  object OpenScriptDialog: TOpenDialog
    Left = 378
    Top = 96
  end
  object SaveScriptDialog: TSaveDialog
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofEnableSizing']
    Left = 378
    Top = 128
  end
  object ObjectsPopup: TPopupMenu
    Left = 253
    Top = 228
  end
  object DMPPopup: TPopupMenu
    Left = 286
    Top = 228
    object BoldMI: TMenuItem
      Tag = 34
      Caption = 'Bold'
      OnClick = ToolButtonClick
    end
    object ItalicMI: TMenuItem
      Tag = 35
      Caption = 'Italic'
      OnClick = ToolButtonClick
    end
    object UnderlineMI: TMenuItem
      Tag = 36
      Caption = 'Underline'
      OnClick = ToolButtonClick
    end
    object SuperScriptMI: TMenuItem
      Tag = 37
      Caption = 'SuperScript'
      OnClick = ToolButtonClick
    end
    object SubScriptMI: TMenuItem
      Tag = 38
      Caption = 'SubScript'
      OnClick = ToolButtonClick
    end
    object CondensedMI: TMenuItem
      Tag = 39
      Caption = 'Condensed'
      OnClick = ToolButtonClick
    end
    object WideMI: TMenuItem
      Tag = 40
      Caption = 'Wide'
      OnClick = ToolButtonClick
    end
    object N12cpiMI: TMenuItem
      Tag = 41
      Caption = '12 cpi'
      OnClick = ToolButtonClick
    end
    object N15cpiMI: TMenuItem
      Tag = 42
      Caption = '15 cpi'
      OnClick = ToolButtonClick
    end
  end
end
