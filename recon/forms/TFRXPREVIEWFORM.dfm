object frxPreviewForm: TfrxPreviewForm
  Left = 146
  Top = 150
  AutoScroll = False
  Caption = 'Preview'
  ClientHeight = 584
  ClientWidth = 803
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = RightMenu
  Position = poScreenCenter
  Scaled = False
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnMouseWheel = FormMouseWheel
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 176
    Top = 40
    Width = 400
    Height = 16
    AutoSize = True
    Picture.Data = {6686 bytes}
    Visible = False
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 803
    Height = 33
    AutoSize = True
    BorderWidth = 2
    ButtonHeight = 23
    Flat = True
    Images = MainImages
    TabOrder = 0
    Wrapable = False
    object PrintB: TToolButton
      Left = 0
      Top = 0
      Hint = 'Print'
      Caption = 'Print'
      ImageIndex = 2
      OnClick = PrintBClick
    end
    object OpenB: TToolButton
      Left = 23
      Top = 0
      Hint = 'Open'
      Caption = 'Open'
      ImageIndex = 0
      OnClick = OpenBClick
    end
    object SaveB: TToolButton
      Left = 46
      Top = 0
      Hint = 'Save'
      Caption = 'Save'
      ImageIndex = 1
      OnClick = SaveBClick
    end
    object ExportB: TToolButton
      Left = 69
      Top = 0
      Hint = 'Export'
      Caption = 'Export'
      DropdownMenu = ExportPopup
      ImageIndex = 3
    end
    object PdfB: TToolButton
      Left = 92
      Top = 0
      Hint = 'Export to PDF'
      Caption = 'PdfB'
      ImageIndex = 24
      Visible = False
      OnClick = PdfBClick
    end
    object EmailB: TToolButton
      Left = 115
      Top = 0
      Hint = 'Send by E-mail'
      Caption = 'EmailB'
      ImageIndex = 23
      Visible = False
      OnClick = EmailBClick
    end
    object FindB: TToolButton
      Left = 138
      Top = 0
      Hint = 'Find'
      Caption = 'Find'
      ImageIndex = 4
      OnClick = FindBClick
    end
    object Sep1: TToolButton
      Left = 161
      Top = 0
      Width = 8
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ZoomWholePageB: TToolButton
      Left = 169
      Top = 0
      Hint = 'Whole Page'
      Caption = 'Whole Page'
      ImageIndex = 12
      OnClick = ZoomWholePageBClick
    end
    object ZoomPageWidthB: TToolButton
      Left = 192
      Top = 0
      Hint = 'Page Width'
      Caption = 'Page Width'
      ImageIndex = 13
      OnClick = ZoomPageWidthBClick
    end
    object Zoom100B: TToolButton
      Left = 215
      Top = 0
      Hint = '100%'
      Caption = '100%'
      ImageIndex = 14
      OnClick = Zoom100BClick
    end
    object Zoom50B: TToolButton
      Left = 238
      Top = 0
      Hint = 'Two Pages'
      Caption = 'Two Pages'
      ImageIndex = 15
      OnClick = Zoom50BClick
    end
    object Sep3: TfrxTBPanel
      Left = 261
      Top = 0
      Width = 56
      Height = 23
      Align = alLeft
      TabOrder = 0
      object ZoomCB: TfrxComboBox
        Left = 4
        Top = 2
        Width = 49
        Height = 19
        Hint = 'Zoom'
        ItemHeight = 13
        ListWidth = 100
        TabOrder = 0
        Text = '100%'
        ItemIndex = -1
        OnClick = ZoomCBClick
      end
    end
    object FullScreenBtn: TToolButton
      Left = 317
      Top = 0
      Hint = 'Full Screen'
      Caption = 'F'
      ImageIndex = 22
      OnClick = FullScreenBtnClick
    end
    object Sep2: TToolButton
      Left = 340
      Top = 0
      Width = 8
      ImageIndex = 6
      Style = tbsSeparator
    end
    object PageSettingsB: TToolButton
      Left = 348
      Top = 0
      Hint = 'Margins'
      Caption = 'Margins'
      ImageIndex = 7
      OnClick = PageSettingsBClick
    end
    object OutlineB: TToolButton
      Left = 371
      Top = 0
      Hint = 'Outline'
      Caption = 'Outline'
      ImageIndex = 5
      Style = tbsCheck
      OnClick = OutlineBClick
    end
    object Sep5: TToolButton
      Left = 394
      Top = 0
      Width = 8
      ImageIndex = 11
      Style = tbsSeparator
    end
    object HandToolB: TToolButton
      Left = 402
      Top = 0
      Hint = 'Drag Tool'
      Caption = 'Drag'
      Down = True
      Grouped = True
      ImageIndex = 16
      Style = tbsCheck
      OnClick = SelectToolBClick
    end
    object ZoomToolB: TToolButton
      Left = 425
      Top = 0
      Hint = 'Zoom Tool'
      Caption = 'Zoom'
      Grouped = True
      ImageIndex = 17
      Style = tbsCheck
      OnClick = SelectToolBClick
    end
    object Sep7: TToolButton
      Left = 448
      Top = 0
      Width = 8
      ImageIndex = 12
      Style = tbsSeparator
    end
    object NewPageB: TToolButton
      Left = 456
      Top = 0
      Hint = 'Add Page'
      Caption = 'Add Page'
      ImageIndex = 19
      OnClick = NewPageBClick
    end
    object DelPageB: TToolButton
      Left = 479
      Top = 0
      Hint = 'Delete Page'
      Caption = 'Delete'
      ImageIndex = 20
      OnClick = DelPageBClick
    end
    object DesignerB: TToolButton
      Left = 502
      Top = 0
      Hint = 'Edit Page'
      Caption = 'Edit'
      ImageIndex = 21
      OnClick = DesignerBClick
      OnMouseUp = DesignerBMouseUp
    end
    object Sep6: TToolButton
      Left = 525
      Top = 0
      Width = 8
      ImageIndex = 19
      Style = tbsSeparator
    end
    object FirstB: TToolButton
      Left = 533
      Top = 0
      Hint = 'First Page'
      Caption = 'First'
      ImageIndex = 8
      OnClick = FirstBClick
    end
    object PriorB: TToolButton
      Left = 556
      Top = 0
      Hint = 'Prior Page'
      Caption = 'Prior'
      ImageIndex = 9
      OnClick = PriorBClick
    end
    object Sep4: TfrxTBPanel
      Left = 579
      Top = 0
      Width = 47
      Height = 23
      Align = alLeft
      TabOrder = 1
      object PageE: TEdit
        Left = 4
        Top = 4
        Width = 37
        Height = 15
        Hint = 'Page Number'
        BorderStyle = bsNone
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        Text = '1'
      end
    end
    object NextB: TToolButton
      Left = 626
      Top = 0
      Hint = 'Next Page'
      Caption = 'Next'
      ImageIndex = 10
      OnClick = NextBClick
    end
    object LastB: TToolButton
      Left = 649
      Top = 0
      Hint = 'Last Page'
      Caption = 'Last'
      ImageIndex = 11
      OnClick = LastBClick
    end
    object frTBPanel1: TfrxTBPanel
      Left = 672
      Top = 0
      Width = 35
      Height = 23
      Align = alLeft
      TabOrder = 2
    end
    object CancelB: TSpeedButton
      Left = 707
      Top = 0
      Width = 68
      Height = 23
      Caption = 'Close'
      Spacing = 2
      OnClick = CancelBClick
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 565
    Width = 803
    Height = 19
    Panels = <
      item
        Text = 'Page 1 of 1000'
        Width = 200
      end
      item
        Width = 50
      end
    >
  end
  object MainImages: TImageList
    Left = 60
    Top = 36
  end
  object ExportPopup: TPopupMenu
    Left = 92
    Top = 84
  end
  object HiddenMenu: TPopupMenu
    Left = 228
    Top = 96
    object Showtemplate1: TMenuItem
      Caption = 'Show template'
      OnClick = Showtemplate1Click
    end
  end
  object RightMenu: TPopupMenu
    Images = MainImages
    Left = 304
    Top = 92
  end
end
