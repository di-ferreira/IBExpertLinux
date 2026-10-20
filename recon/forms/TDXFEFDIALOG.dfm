object dxFEFDialog: TdxFEFDialog
  Left = 296
  Top = 121
  ActiveControl = sbxPicture
  BorderStyle = bsDialog
  Caption = 'Fill Effects'
  ClientHeight = 301
  ClientWidth = 387
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object lblSample: TLabel
    Left = 305
    Top = 214
    Width = 44
    Height = 13
    Caption = 'Sample : '
  end
  object PageControl1: TPageControl
    Left = 1
    Top = 5
    Width = 297
    Height = 296
    ActivePage = tshPicture
    TabOrder = 0
    OnChange = PageControl1Change
    object tshTexture: TTabSheet
      Caption = '&Texture'
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 289
        Height = 268
        Align = alClient
      end
      object dgTexture: TDrawGrid
        Left = 4
        Top = 4
        Width = 280
        Height = 198
        BorderStyle = bsNone
        ColCount = 4
        Ctl3D = True
        DefaultColWidth = 65
        DefaultRowHeight = 65
        DefaultDrawing = False
        FixedCols = 0
        RowCount = 6
        FixedRows = 0
        Options = ['goFixedVertLine', 'goFixedHorzLine', 'goVertLine', 'goHorzLine', 'goThumbTracking']
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 0
        OnClick = dgTextureClick
        OnDblClick = dgTextureDblClick
        OnDrawCell = dgTextureDrawCell
        OnMouseMove = dgTextureMouseMove
      end
      object pnlTextureName: TPanel
        Left = 4
        Top = 205
        Width = 280
        Height = 24
        BevelOuter = bvLowered
        TabOrder = 1
      end
      object btnOtherTexture: TButton
        Left = 151
        Top = 233
        Width = 134
        Height = 23
        Caption = '&Other Texture ...'
        TabOrder = 2
        OnClick = btnOtherTextureClick
      end
    end
    object tshPattern: TTabSheet
      Caption = '&Pattern'
      object Bevel2: TBevel
        Left = 0
        Top = 0
        Width = 289
        Height = 268
        Align = alClient
      end
      object lblForeground: TLabel
        Left = 5
        Top = 201
        Width = 66
        Height = 13
        Caption = '&Foreground : '
        OnClick = lblForegroundClick
      end
      object lblBackground: TLabel
        Left = 160
        Top = 201
        Width = 66
        Height = 13
        Caption = '&Background : '
        OnClick = lblForegroundClick
      end
      object bvlForeColorHolder: TBevel
        Left = 4
        Top = 215
        Width = 124
        Height = 21
        Visible = False
      end
      object bvlBackColorHolder: TBevel
        Left = 160
        Top = 215
        Width = 124
        Height = 21
        Visible = False
      end
      object dgPattern: TDrawGrid
        Left = 4
        Top = 4
        Width = 280
        Height = 156
        BorderStyle = bsNone
        ColCount = 8
        DefaultColWidth = 34
        DefaultRowHeight = 25
        DefaultDrawing = False
        FixedCols = 0
        RowCount = 6
        FixedRows = 0
        Options = ['goFixedVertLine', 'goFixedHorzLine', 'goVertLine', 'goHorzLine']
        ParentShowHint = False
        ScrollBars = ssNone
        ShowHint = True
        TabOrder = 0
        OnClick = dgPatternClick
        OnDblClick = dgPatternDblClick
        OnDrawCell = dgPatternDrawCell
        OnMouseMove = dgPatternMouseMove
      end
      object pnlPatternName: TPanel
        Left = 4
        Top = 175
        Width = 281
        Height = 23
        BevelOuter = bvLowered
        TabOrder = 1
      end
      object btnInvert: TButton
        Left = 4
        Top = 242
        Width = 282
        Height = 22
        Caption = 'I&nvert colors'
        TabOrder = 2
        OnClick = btnInvertClick
      end
    end
    object tshPicture: TTabSheet
      Caption = 'P&icture'
      object Bevel3: TBevel
        Left = 0
        Top = 0
        Width = 289
        Height = 268
        Align = alClient
      end
      object lblPaintMode: TLabel
        Left = 7
        Top = 210
        Width = 53
        Height = 13
        Caption = 'Paint &mode'
        FocusControl = cbxPaintMode
        OnClick = lblPaintModeClick
      end
      object Bevel4: TBevel
        Left = 64
        Top = 216
        Width = 217
        Height = 3
        Shape = bsBottomLine
      end
      object sbxPicture: TScrollBox
        Left = 4
        Top = 4
        Width = 280
        Height = 145
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        PopupMenu = pmPicture
        TabOrder = 0
        TabStop = True
        object pnlPicture: TPanel
          Left = 0
          Top = 0
          Width = 209
          Height = 113
          BevelOuter = bvNone
          TabOrder = 0
          object pbxPicture: TPaintBox
            Left = 0
            Top = 0
            Width = 209
            Height = 113
            Align = alClient
            OnPaint = pbxPicturePaint
          end
        end
      end
      object pnlPictureName: TPanel
        Left = 4
        Top = 152
        Width = 280
        Height = 24
        BevelOuter = bvLowered
        TabOrder = 1
      end
      object btnSelectPicture: TButton
        Left = 146
        Top = 181
        Width = 138
        Height = 23
        Caption = 'Se&lect Picture ...'
        TabOrder = 3
        OnClick = SelectPictureClick
      end
      object cbxPaintMode: TComboBox
        Left = 6
        Top = 225
        Width = 129
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        Items.Strings = ['Center', 'Stretch', 'Tile', 'Proportional']
        TabOrder = 4
        OnChange = cbxPaintModeChange
      end
      object btnPreview: TButton
        Left = 4
        Top = 181
        Width = 137
        Height = 23
        Caption = 'Pre&view ...'
        TabOrder = 2
        OnClick = PicturePreviewClick
      end
    end
  end
  object pnlPreview: TPanel
    Left = 312
    Top = 229
    Width = 65
    Height = 65
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 5
    object pbxPreview: TPaintBox
      Left = 0
      Top = 0
      Width = 61
      Height = 61
      Align = alClient
      OnPaint = pbxPreviewPaint
    end
  end
  object btnHelp: TButton
    Left = 304
    Top = 106
    Width = 80
    Height = 23
    Caption = '&Help'
    TabOrder = 4
  end
  object btnApply: TButton
    Left = 304
    Top = 79
    Width = 80
    Height = 23
    Caption = '&Apply'
    TabOrder = 3
    OnClick = btnApplyClick
  end
  object btnCancel: TButton
    Left = 304
    Top = 52
    Width = 80
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 304
    Top = 25
    Width = 80
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object pmPicture: TPopupMenu
    OnPopup = pmPicturePopup
    Left = 340
    Top = 146
    object miLoad: TMenuItem
      Caption = '&Load...'
      ShortCut = 45
      OnClick = SelectPictureClick
    end
    object miPreview: TMenuItem
      Caption = 'Pre&view...'
      Default = True
      OnClick = PicturePreviewClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object miCut: TMenuItem
      Caption = 'Cu&t'
      ShortCut = 16472
      OnClick = miCutClick
    end
    object miCopy: TMenuItem
      Caption = '&Copy'
      ShortCut = 16451
      OnClick = miCopyClick
    end
    object miPaste: TMenuItem
      Caption = '&Paste'
      ShortCut = 16470
      OnClick = miPasteClick
    end
    object miDelete: TMenuItem
      Caption = '&Delete'
      ShortCut = 46
      OnClick = miDeleteClick
    end
  end
  object ilMenu: TImageList
    Left = 312
    Top = 146
    Bitmap = {4488 bytes}
  end
end
