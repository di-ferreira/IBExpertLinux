object dxfmPrintDialog: TdxfmPrintDialog
  Left = 312
  Top = 206
  BorderStyle = bsDialog
  Caption = 'Print'
  ClientHeight = 444
  ClientWidth = 484
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 413
    Width = 484
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object btnPreview: TBitBtn
      Left = 103
      Top = 2
      Width = 95
      Height = 23
      Caption = 'Print Pre&view'
      TabOrder = 1
      OnClick = btnPreviewClick
    end
    object btnOK: TButton
      Left = 234
      Top = 2
      Width = 79
      Height = 23
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 2
    end
    object btnCancel: TButton
      Left = 318
      Top = 2
      Width = 79
      Height = 23
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 3
    end
    object btnHelp: TButton
      Left = 402
      Top = 2
      Width = 79
      Height = 23
      Caption = '&Help'
      TabOrder = 4
    end
    object btnPageSetup: TBitBtn
      Left = 3
      Top = 2
      Width = 95
      Height = 23
      Caption = 'Page Set&up...'
      TabOrder = 0
      OnClick = btnPageSetupClick
      Layout = blGlyphRight
    end
  end
  object pnlPrintStyles: TPanel
    Left = 0
    Top = 304
    Width = 484
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 2
    object gbxPrintStyles: TGroupBox
      Left = 3
      Top = 3
      Width = 478
      Height = 99
      Align = alClient
      Caption = ' Print Styles '
      TabOrder = 0
      object lbxPrintStyles: TListBox
        Left = 8
        Top = 15
        Width = 349
        Height = 78
        ItemHeight = 34
        PopupMenu = pmPrintStyles
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = lbxPrintStylesClick
        OnDblClick = PageSetup2Click
        OnDrawItem = lbxPrintStylesDrawItem
      end
      object btnPageSetup2: TButton
        Left = 363
        Top = 15
        Width = 107
        Height = 23
        Caption = 'Page Set&up...'
        Default = True
        TabOrder = 1
        OnClick = PageSetup2Click
      end
      object btnDefineStyles: TButton
        Left = 363
        Top = 42
        Width = 107
        Height = 23
        Caption = 'Define S&tyles...'
        TabOrder = 2
        OnClick = DefineStylesClick
      end
      object btnStyleOptions: TButton
        Left = 363
        Top = 69
        Width = 107
        Height = 23
        Caption = 'Style Options...'
        TabOrder = 3
        Visible = False
        OnClick = StyleOptionsClick
      end
    end
  end
  object pnlMiddle: TPanel
    Left = 0
    Top = 164
    Width = 484
    Height = 140
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 1
    object gbxPageRange: TGroupBox
      Left = 3
      Top = 3
      Width = 244
      Height = 134
      Align = alLeft
      Caption = ' Page ra&nge '
      TabOrder = 0
      object lblDescription: TLabel
        Left = 6
        Top = 101
        Width = 223
        Height = 26
        Caption = 'Enter page number and/or page ranges\r\nseparated by commes. For example : 1,3,5-12'
      end
      object bvlPRWarningHolder: TBevel
        Left = 80
        Top = 12
        Width = 157
        Height = 30
        Visible = False
      end
      object rbtnAllPages: TRadioButton
        Left = 9
        Top = 23
        Width = 58
        Height = 17
        Caption = '&All'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbtnPagesClick
      end
      object rbtnCurrentPage: TRadioButton
        Tag = 1
        Left = 9
        Top = 48
        Width = 104
        Height = 17
        Caption = 'Curr&ent page'
        TabOrder = 1
        OnClick = rbtnPagesClick
      end
      object rbtnPageRanges: TRadioButton
        Tag = 2
        Left = 9
        Top = 72
        Width = 67
        Height = 17
        Caption = 'Pa&ges: '
        TabOrder = 2
        OnClick = rbtnPagesClick
      end
      object edPageRanges: TEdit
        Left = 80
        Top = 70
        Width = 157
        Height = 21
        AutoSelect = False
        TabOrder = 3
        OnChange = edPageRangesChange
        OnExit = edPageRangesExit
        OnKeyPress = edPageRangesKeyPress
      end
      object rbtnSelection: TRadioButton
        Tag = 3
        Left = 116
        Top = 48
        Width = 113
        Height = 17
        Caption = '&Selection'
        TabOrder = 4
        OnClick = rbtnPagesClick
      end
    end
    object gbxCopies: TGroupBox
      Left = 251
      Top = 3
      Width = 230
      Height = 134
      Align = alRight
      Caption = ' C&opies '
      TabOrder = 1
      object lblNumberOfCopies: TLabel
        Left = 11
        Top = 48
        Width = 90
        Height = 13
        Caption = 'Number of &copies :'
        OnClick = lblNumberOfCopiesClick
      end
      object bvlCopiesHolder: TBevel
        Left = 122
        Top = 43
        Width = 101
        Height = 22
        Visible = False
      end
      object lblNumberOfPages: TLabel
        Left = 11
        Top = 21
        Width = 89
        Height = 13
        Caption = 'Number of pa&ges :'
        FocusControl = cbxNumberOfPages
        OnClick = lblNumberOfPagesClick
      end
      object pbxCollate: TPaintBox
        Left = 62
        Top = 86
        Width = 118
        Height = 44
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnDblClick = pbxCollateDblClick
        OnPaint = pbxCollatePaint
      end
      object chbxCollate: TCheckBox
        Left = 9
        Top = 69
        Width = 96
        Height = 17
        Caption = 'Co&llate copies'
        TabOrder = 1
        OnClick = chbxCollateClick
      end
      object cbxNumberOfPages: TComboBox
        Left = 122
        Top = 17
        Width = 101
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        Items.Strings = ['All', 'Even', 'Odd']
        TabOrder = 0
        OnChange = cbxNumberOfPagesChange
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 484
    Height = 164
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 0
    object gbxPrinter: TGroupBox
      Left = 3
      Top = 3
      Width = 478
      Height = 158
      Align = alClient
      Caption = ' &Printer '
      TabOrder = 0
      object lblName: TLabel
        Left = 8
        Top = 20
        Width = 31
        Height = 13
        Caption = '&Name:'
        FocusControl = cbxPrinters
        OnClick = lblNameClick
      end
      object lblStatus: TLabel
        Left = 8
        Top = 48
        Width = 35
        Height = 13
        Caption = 'Status:'
      end
      object lblType: TLabel
        Left = 8
        Top = 67
        Width = 28
        Height = 13
        Caption = 'Type:'
      end
      object lblWhere: TLabel
        Left = 8
        Top = 86
        Width = 36
        Height = 13
        Caption = 'Where:'
      end
      object lblComment: TLabel
        Left = 8
        Top = 105
        Width = 49
        Height = 13
        Caption = 'Comment:'
      end
      object lStatus: TLabel
        Left = 68
        Top = 49
        Width = 3
        Height = 13
      end
      object lType: TLabel
        Left = 68
        Top = 68
        Width = 3
        Height = 13
      end
      object lWhere: TLabel
        Left = 68
        Top = 87
        Width = 3
        Height = 13
      end
      object lComment: TLabel
        Left = 68
        Top = 106
        Width = 3
        Height = 13
      end
      object cbxPrinters: TComboBox
        Left = 68
        Top = 15
        Width = 300
        Height = 26
        Style = csOwnerDrawFixed
        ItemHeight = 20
        TabOrder = 0
        OnChange = cbxPrintersChange
        OnDrawItem = cbxPrintersDrawItem
      end
      object btnPrinterProperties: TButton
        Left = 376
        Top = 15
        Width = 95
        Height = 26
        Caption = 'P&roperties...'
        TabOrder = 1
        OnClick = btnPrinterPropertiesClick
      end
      object btnNetwork: TButton
        Left = 376
        Top = 45
        Width = 95
        Height = 26
        Caption = 'Net&work...'
        TabOrder = 2
        OnClick = btnNetworkClick
      end
      object pnlPrintToFile: TPanel
        Left = 2
        Top = 121
        Width = 474
        Height = 35
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        object chbxPrintToFile: TCheckBox
          Left = 8
          Top = 10
          Width = 85
          Height = 15
          Caption = 'Print to &file'
          TabOrder = 0
          OnClick = chbxPrintToFileClick
        end
        object cbxFileName: TComboBox
          Left = 96
          Top = 7
          Width = 270
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Text = 'cbxFileName'
          OnExit = cbxFileNameExit
          OnKeyDown = cbxFileNameKeyDown
        end
        object btnBrowse: TButton
          Left = 374
          Top = 6
          Width = 95
          Height = 23
          Caption = '&Browse...'
          TabOrder = 2
          OnClick = btnBrowseClick
        end
      end
    end
  end
  object ilPrinters: TImageList
    AllocBy = 9
    Left = 46
    Top = 326
    Bitmap = {6664 bytes}
  end
  object pmPrintStyles: TPopupMenu
    OnPopup = pmPrintStylesPopup
    Left = 15
    Top = 326
    object miPageSetup: TMenuItem
      Caption = 'Page Set&up...'
      Default = True
      ShortCut = 16397
      OnClick = PageSetup2Click
    end
    object miStyleOptions: TMenuItem
      Caption = 'Style Options...'
      Visible = False
      OnClick = StyleOptionsClick
    end
    object miLine1: TMenuItem
      Caption = '-'
    end
    object miDefineStyles: TMenuItem
      Caption = 'Define Styles...'
      OnClick = DefineStylesClick
    end
  end
end
