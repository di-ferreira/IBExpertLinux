object dxfmDefinePrintStyles: TdxfmDefinePrintStyles
  Left = 327
  Top = 176
  ActiveControl = lbxPrintStyles
  BorderStyle = bsDialog
  Caption = 'Define Print Styles'
  ClientHeight = 184
  ClientWidth = 281
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {318 bytes}
  KeyPreview = True
  Position = poScreenCenter
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel: TBevel
    Left = 0
    Top = 0
    Width = 281
    Height = 24
    Align = alTop
    Visible = False
  end
  object btnEdit: TButton
    Left = 198
    Top = 25
    Width = 79
    Height = 23
    Caption = '&Edit ...'
    TabOrder = 0
    OnClick = EditClick
  end
  object btnCopy: TButton
    Left = 198
    Top = 51
    Width = 79
    Height = 23
    Caption = '&Copy ...'
    TabOrder = 1
    OnClick = CopyClick
  end
  object btnReset: TButton
    Left = 198
    Top = 77
    Width = 79
    Height = 23
    Caption = '&Reset ...'
    TabOrder = 2
    OnClick = ResetClick
  end
  object btnClose: TButton
    Left = 198
    Top = 114
    Width = 79
    Height = 23
    Cancel = True
    Caption = 'Close'
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object btnHelp: TButton
    Left = 198
    Top = 140
    Width = 79
    Height = 23
    Cancel = True
    Caption = '&Help'
    ModalResult = 1
    TabOrder = 4
  end
  object lbxPrintStyles: TListBox
    Left = 0
    Top = 24
    Width = 191
    Height = 160
    ItemHeight = 34
    PopupMenu = pmPrintStyles
    Style = lbOwnerDrawFixed
    TabOrder = 5
    OnClick = lbxPrintStylesClick
    OnDblClick = EditClick
    OnDrawItem = lbxPrintStylesDrawItem
  end
  object pmPrintStyles: TPopupMenu
    OnPopup = pmPrintStylesPopup
    Left = 4
    Top = 33
    object miEdit: TMenuItem
      Caption = '&Edit ...'
      Default = True
      ShortCut = 16397
      OnClick = EditClick
    end
    object miLine1: TMenuItem
      Caption = '-'
    end
    object miCopy: TMenuItem
      Caption = '&Copy ...'
      ShortCut = 45
      OnClick = CopyClick
    end
    object miReset: TMenuItem
      Caption = '&Reset ...'
      OnClick = ResetClick
    end
    object miClear: TMenuItem
      Caption = 'C&lear ...'
      OnClick = ClearClick
    end
  end
  object ilPrintStyles: TImageList
    AllocBy = 2
    Left = 32
    Top = 33
    Bitmap = {2312 bytes}
  end
end
