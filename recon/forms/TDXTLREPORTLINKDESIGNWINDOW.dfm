object dxTLReportLinkDesignWindow: TdxTLReportLinkDesignWindow
  Left = 286
  Top = 131
  ActiveControl = chbxShowBands
  BorderStyle = bsDialog
  Caption = 'dxTLReportLinkDesigner'
  ClientHeight = 421
  ClientWidth = 582
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 4
    Top = 4
    Width = 574
    Height = 381
    ActivePage = tshOptions
    TabOrder = 0
    object tshOptions: TTabSheet
      Caption = '&Options'
      object Bevel5: TBevel
        Left = 0
        Top = 0
        Width = 566
        Height = 353
        Align = alClient
      end
      object Bevel9: TBevel
        Left = 79
        Top = 261
        Width = 192
        Height = 7
        Shape = bsBottomLine
      end
      object Bevel11: TBevel
        Left = 40
        Top = 6
        Width = 230
        Height = 4
        Shape = bsBottomLine
      end
      object lblPreviewLineCount: TLabel
        Left = 80
        Top = 124
        Width = 99
        Height = 13
        Caption = 'Preview &Line Count: '
        OnClick = lblExpandLevelClick
      end
      object bvlPreviewLineCountHolder: TBevel
        Left = 188
        Top = 120
        Width = 82
        Height = 21
        Visible = False
      end
      object Image6: TImage
        Left = 8
        Top = 24
        Width = 32
        Height = 32
        Center = True
        Picture.Data = {642 bytes}
        Transparent = True
      end
      object lblShow: TLabel
        Left = 7
        Top = 3
        Width = 26
        Height = 13
        Caption = 'Show'
      end
      object lblMiscellaneous: TLabel
        Left = 7
        Top = 260
        Width = 65
        Height = 13
        Caption = 'Miscellaneous'
      end
      object Bevel16: TBevel
        Left = 36
        Top = 144
        Width = 235
        Height = 4
        Shape = bsBottomLine
      end
      object bvlShowImages: TBevel
        Left = 48
        Top = 209
        Width = 222
        Height = 4
        Shape = bsBottomLine
      end
      object imgGrid: TImage
        Left = 13
        Top = 170
        Width = 16
        Height = 16
        Picture.Data = {258 bytes}
        Transparent = True
        Visible = False
      end
      object imgImages: TImage
        Left = 14
        Top = 229
        Width = 16
        Height = 16
        Picture.Data = {258 bytes}
        Transparent = True
        Visible = False
      end
      object lblDrawMode: TLabel
        Left = 64
        Top = 323
        Width = 58
        Height = 13
        Caption = 'Draw &Mode:'
        FocusControl = cbxDrawMode
        OnClick = lblDrawModeClick
      end
      object lblGrid: TLabel
        Left = 7
        Top = 140
        Width = 19
        Height = 13
        Caption = 'Grid'
      end
      object lblImages: TLabel
        Left = 7
        Top = 204
        Width = 35
        Height = 13
        Caption = 'Images'
      end
      object chbxShowGrid: TCheckBox
        Tag = 6
        Left = 62
        Top = 153
        Width = 97
        Height = 17
        Caption = '&Grid'
        TabOrder = 6
        OnClick = chbxShowClick
      end
      object chbxShowNodeGrid: TCheckBox
        Tag = 5
        Left = 79
        Top = 171
        Width = 97
        Height = 17
        Caption = 'Nodes Grid'
        TabOrder = 7
        OnClick = chbxShowClick
      end
      object chbxShowGroupFooterGrid: TCheckBox
        Tag = 14
        Left = 79
        Top = 188
        Width = 117
        Height = 17
        Caption = 'Group Footers Grid'
        TabOrder = 8
        OnClick = chbxShowClick
      end
      object chbxShowBands: TCheckBox
        Left = 62
        Top = 15
        Width = 97
        Height = 17
        Caption = 'Ba&nds'
        TabOrder = 0
        OnClick = chbxShowClick
      end
      object chbxShowHeaders: TCheckBox
        Tag = 1
        Left = 62
        Top = 32
        Width = 97
        Height = 17
        Caption = '&Headers'
        TabOrder = 1
        OnClick = chbxShowClick
      end
      object chbxShowFooters: TCheckBox
        Tag = 2
        Left = 62
        Top = 49
        Width = 97
        Height = 17
        Caption = 'Foo&ters'
        TabOrder = 2
        OnClick = chbxShowClick
      end
      object chbxShowPreview: TCheckBox
        Tag = 4
        Left = 62
        Top = 83
        Width = 97
        Height = 17
        Caption = 'Pre&view'
        TabOrder = 4
        OnClick = chbxShowClick
      end
      object chbxShowGroupFooters: TCheckBox
        Tag = 3
        Left = 62
        Top = 66
        Width = 97
        Height = 17
        Caption = 'G&roup Footers'
        TabOrder = 3
        OnClick = chbxShowClick
      end
      object chbxFlatCheckMarks: TCheckBox
        Tag = 7
        Left = 62
        Top = 278
        Width = 117
        Height = 17
        Caption = 'Flat Check &Marks'
        TabOrder = 11
        OnClick = chbxShowClick
      end
      object chbxAutoCalcPreviewLines: TCheckBox
        Left = 79
        Top = 102
        Width = 169
        Height = 17
        Caption = '&Auto Calc Preview Lines'
        TabOrder = 5
        OnClick = chbxAutoCalcPreviewLinesClick
      end
      object chbxShowStateImages: TCheckBox
        Tag = 9
        Left = 62
        Top = 220
        Width = 113
        Height = 17
        Caption = 'State Images'
        TabOrder = 9
        OnClick = chbxShowClick
      end
      object chbxShowImages: TCheckBox
        Tag = 8
        Left = 62
        Top = 237
        Width = 113
        Height = 17
        Caption = 'Images'
        TabOrder = 10
        OnClick = chbxShowClick
      end
      object cbxDrawMode: TComboBox
        Left = 130
        Top = 320
        Width = 144
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        Items.Strings = ['Simpe', 'Odd\Even Rows Mode', 'Borrow From Source']
        TabOrder = 13
        OnChange = cbxDrawModeChange
      end
      object chbxCheckMarksAsText: TCheckBox
        Tag = 15
        Left = 62
        Top = 298
        Width = 157
        Height = 17
        Caption = 'Display Check Marks as Text'
        TabOrder = 12
        OnClick = chbxShowClick
      end
    end
    object tshColors: TTabSheet
      Caption = '&Color'
      object Bevel2: TBevel
        Left = 0
        Top = 0
        Width = 566
        Height = 353
        Align = alClient
      end
      object lblGridlineColor: TLabel
        Left = 11
        Top = 255
        Width = 74
        Height = 13
        Caption = '&Grid Line color :'
        OnClick = lblColorClick
      end
      object bvlGridLineColorHolder: TBevel
        Left = 124
        Top = 250
        Width = 145
        Height = 22
        Visible = False
      end
      object gbxFixedTransparent: TGroupBox
        Left = 6
        Top = 121
        Width = 269
        Height = 121
        Caption = '   '
        TabOrder = 3
        object lblBandColor: TLabel
          Left = 5
          Top = 23
          Width = 60
          Height = 13
          Caption = '&Band color : '
          OnClick = lblColorClick
        end
        object lblHeaderColor: TLabel
          Left = 5
          Top = 47
          Width = 71
          Height = 13
          Caption = '&Header color : '
          OnClick = lblColorClick
        end
        object lblRowFooterColor: TLabel
          Left = 5
          Top = 96
          Width = 94
          Height = 13
          Caption = 'Gro&upFooter color :'
          OnClick = lblColorClick
        end
        object bvlBandColorHolder: TBevel
          Tag = 2
          Left = 118
          Top = 17
          Width = 145
          Height = 22
          Visible = False
        end
        object bvlHeaderColorHolder: TBevel
          Left = 118
          Top = 42
          Width = 145
          Height = 22
          Visible = False
        end
        object bvlRowFooterColorHolder: TBevel
          Left = 118
          Top = 92
          Width = 145
          Height = 22
          Visible = False
        end
        object lblGroupNodeColor: TLabel
          Left = 5
          Top = 72
          Width = 87
          Height = 13
          Caption = 'Group&Node color :'
          OnClick = lblColorClick
        end
        object bvlGroupNodeColorHolder: TBevel
          Left = 118
          Top = 67
          Width = 145
          Height = 22
          Visible = False
        end
      end
      object gbxTransparent: TGroupBox
        Left = 6
        Top = 10
        Width = 269
        Height = 104
        Caption = '   '
        TabOrder = 1
        object lblColor: TLabel
          Left = 5
          Top = 23
          Width = 29
          Height = 13
          Caption = 'C&olor:'
          OnClick = lblColorClick
        end
        object bvlColorHolder: TBevel
          Left = 118
          Top = 18
          Width = 145
          Height = 22
          Visible = False
        end
        object lblPreviewColor: TLabel
          Left = 5
          Top = 77
          Width = 71
          Height = 13
          Caption = '&Preview color :'
          OnClick = lblColorClick
        end
        object bvlPreviewColorHolder: TBevel
          Tag = 1
          Left = 118
          Top = 72
          Width = 145
          Height = 22
          Visible = False
        end
        object lblEvenColor: TLabel
          Left = 5
          Top = 47
          Width = 59
          Height = 13
          Caption = 'Even Color :'
          OnClick = lblColorClick
        end
        object bvlEvenColorHolder: TBevel
          Left = 118
          Top = 43
          Width = 145
          Height = 22
          Visible = False
        end
      end
      object chbxTransparent: TCheckBox
        Left = 23
        Top = 8
        Width = 83
        Height = 17
        Caption = ' Tr&ansparent  '
        TabOrder = 0
        OnClick = chbxTransparentClick
      end
      object chbxFixedTransparent: TCheckBox
        Tag = 1
        Left = 19
        Top = 118
        Width = 107
        Height = 17
        Caption = ' Fi&xed transparent  '
        TabOrder = 2
        OnClick = chbxTransparentClick
      end
    end
    object tshFonts: TTabSheet
      Caption = '&Font'
      object Bevel3: TBevel
        Left = 0
        Top = 0
        Width = 566
        Height = 353
        Align = alClient
      end
      object btnChangeFont: TButton
        Left = 6
        Top = 189
        Width = 116
        Height = 23
        Caption = 'Change Fo&nt ...'
        TabOrder = 0
        OnClick = btnChangeFontClick
      end
      object lbxFonts: TListBox
        Left = 6
        Top = 16
        Width = 268
        Height = 167
        ItemHeight = 16
        MultiSelect = True
        ParentShowHint = False
        PopupMenu = pmChangeFont
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 1
        OnClick = lbxFontsClick
        OnDblClick = lbxFontsDblClick
        OnDrawItem = lbxFontsDrawItem
        OnKeyDown = FontsKeyDown
        OnMouseMove = FontsMouseMove
      end
    end
    object tshBeh: TTabSheet
      Caption = '&Behaviors'
      object Bevel6: TBevel
        Left = 0
        Top = 0
        Width = 566
        Height = 353
        Align = alClient
      end
      object Bevel10: TBevel
        Left = 89
        Top = 8
        Width = 181
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel12: TBevel
        Left = 57
        Top = 88
        Width = 213
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel13: TBevel
        Left = 92
        Top = 155
        Width = 177
        Height = 4
        Shape = bsBottomLine
      end
      object Image1: TImage
        Left = 26
        Top = 26
        Width = 32
        Height = 32
        Picture.Data = {642 bytes}
        Transparent = True
      end
      object Image3: TImage
        Left = 9
        Top = 106
        Width = 64
        Height = 32
        Picture.Data = {1154 bytes}
        Transparent = True
      end
      object Image4: TImage
        Left = 9
        Top = 174
        Width = 64
        Height = 32
        Picture.Data = {1154 bytes}
        Transparent = True
      end
      object lblExpandLevel: TLabel
        Left = 90
        Top = 194
        Width = 68
        Height = 13
        Caption = 'Expand &level: '
        OnClick = lblExpandLevelClick
      end
      object bvlExpandLevelHolder: TBevel
        Left = 185
        Top = 190
        Width = 82
        Height = 21
        Visible = False
      end
      object lblSelection: TLabel
        Left = 6
        Top = 84
        Width = 43
        Height = 13
        Caption = 'Selection'
      end
      object lblExpanding: TLabel
        Left = 6
        Top = 151
        Width = 78
        Height = 13
        Caption = 'Node Expanding'
      end
      object lblOnEveryPage: TLabel
        Left = 7
        Top = 4
        Width = 72
        Height = 13
        Caption = 'On Every Page'
      end
      object lblGraphics: TLabel
        Left = 7
        Top = 277
        Width = 41
        Height = 13
        Caption = 'Graphics'
      end
      object bvlGraphic: TBevel
        Left = 55
        Top = 281
        Width = 214
        Height = 4
        Shape = bsBottomLine
      end
      object imgGraphics: TImage
        Left = 9
        Top = 300
        Width = 64
        Height = 32
        Picture.Data = {1154 bytes}
        Transparent = True
      end
      object lbl3DEffects: TLabel
        Left = 6
        Top = 217
        Width = 50
        Height = 13
        Caption = '3D Effects'
      end
      object Image8: TImage
        Left = 9
        Top = 239
        Width = 64
        Height = 32
        Picture.Data = {1154 bytes}
        Transparent = True
      end
      object Bevel15: TBevel
        Left = 62
        Top = 221
        Width = 206
        Height = 4
        Shape = bsBottomLine
      end
      object chbxTransparentColumnGraphic: TCheckBox
        Tag = 10
        Left = 90
        Top = 298
        Width = 167
        Height = 17
        Caption = 'Transparent Column &Graphics'
        TabOrder = 8
        OnClick = chbxShowClick
      end
      object chbxDisplayGraphicsAsText: TCheckBox
        Tag = 11
        Left = 90
        Top = 317
        Width = 169
        Height = 17
        Caption = 'Display Graphics As &Text'
        TabOrder = 9
        OnClick = chbxShowClick
      end
      object chbxBandsOnEveryPage: TCheckBox
        Left = 90
        Top = 23
        Width = 165
        Height = 17
        Caption = 'Ba&nds On Every Page'
        TabOrder = 0
        OnClick = chbxBandsOnEveryPageClick
      end
      object chbxHeadersOnEveryPage: TCheckBox
        Left = 90
        Top = 42
        Width = 165
        Height = 17
        Caption = 'Headers On Every &Page'
        TabOrder = 1
        OnClick = chbxHeadersOnEveryPageClick
      end
      object chbxFootersOnEveryPage: TCheckBox
        Left = 90
        Top = 61
        Width = 165
        Height = 17
        Caption = 'Footers On E&very Page'
        TabOrder = 2
        OnClick = chbxFootersOnEveryPageClick
      end
      object chbxOnlySelected: TCheckBox
        Left = 90
        Top = 105
        Width = 162
        Height = 17
        Caption = 'Only &selected'
        TabOrder = 3
        OnClick = chbxOnlySelectedClick
      end
      object chbxExtendedSelect: TCheckBox
        Left = 90
        Top = 124
        Width = 162
        Height = 17
        Caption = '&Extended select'
        TabOrder = 4
        OnClick = chbxExtendedSelectClick
      end
      object chbxAutoNodesExpand: TCheckBox
        Left = 90
        Top = 168
        Width = 130
        Height = 17
        Caption = '&Auto Node Expanded'
        TabOrder = 5
        OnClick = chbxAutoNodesExpandClick
      end
      object chbxUse3DEffects: TCheckBox
        Tag = 12
        Left = 90
        Top = 237
        Width = 107
        Height = 17
        Caption = '&Use 3D Effects'
        TabOrder = 6
        OnClick = chbxShowClick
      end
      object chbxUseSoft3D: TCheckBox
        Tag = 13
        Left = 90
        Top = 256
        Width = 97
        Height = 17
        Caption = 'Soft &3D'
        TabOrder = 7
        OnClick = chbxShowClick
      end
    end
  end
  object pnlPreview: TPanel
    Left = 287
    Top = 44
    Width = 282
    Height = 331
    BevelOuter = bvLowered
    Color = clWindow
    TabOrder = 1
    object dxTLPreview: TdxTreeList
      Left = 7
      Top = 4
      Width = 268
      Height = 323
      Bands = <
        item
          Caption = 'Item Data'
          Width = 201
        end
      >
      DefaultLayout = False
      HeaderPanelRowCount = 1
      BorderStyle = bsNone
      Ctl3D = True
      Enabled = False
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
      Images = ilTLImages
      LookAndFeel = lfFlat
      Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoRowSelect', 'aoPreview', 'aoAutoWidth']
      OptionsEx = ['aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand']
      PaintStyle = psOutlook
      StateImages = ilTLImages
      TreeLineColor = clGrayText
      ScrollBars = ssNone
      ShowBands = True
      ShowButtons = False
      ShowGrid = True
      ShowRowFooter = True
      ShowFooter = True
      OnCustomDrawBand = dxTLPreviewCustomDrawBand
      OnCustomDrawColumnHeader = dxTLPreviewCustomDrawColumnHeader
      OnCustomDrawCell = dxTLPreviewCustomDrawCell
      OnCustomDrawFooterNode = dxTLPreviewCustomDrawFooterNode
      OnCustomDrawFooter = dxTLPreviewCustomDrawFooter
      OnCustomDrawPreviewCell = dxTLPreviewCustomDrawPreviewCell
      OnGetFooterCellText = dxTLPreviewGetFooterCellText
      OnGetPreviewLineCount = dxTLPreviewGetPreviewLineCount
      OnGetPreviewText = dxTLPreviewGetPreviewText
      OnIsExistRowFooterCell = dxTLPreviewIsExistRowFooterCell
      OnIsExistFooterCell = dxTLPreviewIsExistFooterCell
      OnIsLevelFooter = dxTLPreviewIsLevelFooter
      Data = {316 bytes}
      object dxTLPreviewColumn1: TdxTreeListColumn
        Alignment = taLeftJustify
        Width = 92
        BandIndex = 0
        RowIndex = 0
      end
      object dxTLPreviewColumn3: TdxTreeListCheckColumn
        Caption = 'Axisymmetric'
        Width = 97
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = dxTLPreviewColumn3CustomDrawCell
        AllowGrayed = True
        ShowNullFieldStyle = nsInactive
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dxTLPreviewColumn4: TdxTreeListImageColumn
        Alignment = taLeftJustify
        Caption = 'Shape'
        MinWidth = 16
        Width = 79
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = dxTLPreviewColumn4CustomDrawCell
        Images = ilTLImages
        ImageIndexes.Strings = ['0', '1', '2', '3', '4', '5', '6']
        Values.Strings = ['', '', '2', '3', '4', '5', '6']
      end
    end
  end
  object lblPreview: TStaticText
    Left = 288
    Top = 30
    Width = 42
    Height = 12
    AutoSize = False
    Caption = 'Preview'
    TabOrder = 2
  end
  object Panel5: TPanel
    Left = 332
    Top = 37
    Width = 238
    Height = 2
    BevelOuter = bvLowered
    TabOrder = 3
  end
  object FD: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Device = fdPrinter
    MinFontSize = 0
    MaxFontSize = 0
    Left = 296
    Top = 315
  end
  object ilTLImages: TImageList
    Left = 324
    Top = 315
    Bitmap = {6524 bytes}
  end
  object pmChangeFont: TPopupMenu
    OnPopup = pmChangeFontPopup
    Left = 352
    Top = 315
    object miChangeFont: TMenuItem
      Caption = 'Change Fo&nt ...'
      Default = True
      ShortCut = 16454
      OnClick = btnChangeFontClick
    end
  end
end
