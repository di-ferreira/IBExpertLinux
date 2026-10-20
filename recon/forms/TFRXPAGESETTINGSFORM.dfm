object frxPageSettingsForm: TfrxPageSettingsForm
  Left = 179
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Page Settings'
  ClientHeight = 359
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OKB: TButton
    Left = 126
    Top = 328
    Width = 75
    Height = 25
    HelpContext = 40
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelB: TButton
    Left = 206
    Top = 328
    Width = 75
    Height = 25
    HelpContext = 50
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object SizeL: TGroupBox
    Left = 4
    Top = 4
    Width = 277
    Height = 101
    Caption = 'Size'
    TabOrder = 2
    object WidthL: TLabel
      Left = 8
      Top = 48
      Width = 28
      Height = 13
      Caption = 'Width'
      FocusControl = WidthE
    end
    object HeightL: TLabel
      Left = 8
      Top = 72
      Width = 31
      Height = 13
      Caption = 'Height'
      FocusControl = HeightE
    end
    object UnitL1: TLabel
      Left = 112
      Top = 48
      Width = 13
      Height = 13
      Caption = 'cm'
    end
    object UnitL2: TLabel
      Left = 112
      Top = 72
      Width = 13
      Height = 13
      Caption = 'cm'
    end
    object WidthE: TEdit
      Left = 64
      Top = 46
      Width = 45
      Height = 21
      HelpContext = 140
      AutoSize = False
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      OnChange = WidthEChange
    end
    object HeightE: TEdit
      Left = 64
      Top = 70
      Width = 45
      Height = 21
      HelpContext = 150
      AutoSize = False
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      OnChange = WidthEChange
    end
    object SizeCB: TComboBox
      Left = 8
      Top = 18
      Width = 261
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnClick = SizeCBClick
    end
  end
  object OrientationL: TGroupBox
    Left = 4
    Top = 108
    Width = 277
    Height = 65
    Caption = 'Orientation'
    TabOrder = 3
    object PortraitImg: TImage
      Left = 148
      Top = 21
      Width = 26
      Height = 32
      AutoSize = True
      Picture.Data = {642 bytes}
    end
    object LandscapeImg: TImage
      Left = 145
      Top = 25
      Width = 32
      Height = 26
      AutoSize = True
      Picture.Data = {546 bytes}
    end
    object PortraitRB: TRadioButton
      Left = 8
      Top = 20
      Width = 109
      Height = 17
      HelpContext = 111
      Caption = 'Portrait'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = PortraitRBClick
    end
    object LandscapeRB: TRadioButton
      Left = 8
      Top = 40
      Width = 109
      Height = 17
      HelpContext = 120
      Caption = 'Landscape'
      TabOrder = 1
      OnClick = PortraitRBClick
    end
  end
  object MarginsL: TGroupBox
    Left = 4
    Top = 176
    Width = 277
    Height = 73
    Caption = 'Margins'
    TabOrder = 4
    object LeftL: TLabel
      Left = 8
      Top = 20
      Width = 19
      Height = 13
      Caption = 'Left'
      FocusControl = MarginLeftE
    end
    object TopL: TLabel
      Left = 8
      Top = 44
      Width = 18
      Height = 13
      Caption = 'Top'
      FocusControl = MarginTopE
    end
    object RightL: TLabel
      Left = 156
      Top = 20
      Width = 25
      Height = 13
      Caption = 'Right'
      FocusControl = MarginRightE
    end
    object BottomL: TLabel
      Left = 156
      Top = 44
      Width = 34
      Height = 13
      Caption = 'Bottom'
      FocusControl = MarginBottomE
    end
    object UnitL3: TLabel
      Left = 108
      Top = 20
      Width = 13
      Height = 13
      Caption = 'cm'
    end
    object UnitL4: TLabel
      Left = 108
      Top = 44
      Width = 13
      Height = 13
      Caption = 'cm'
    end
    object UnitL5: TLabel
      Left = 256
      Top = 20
      Width = 13
      Height = 13
      Caption = 'cm'
    end
    object UnitL6: TLabel
      Left = 256
      Top = 44
      Width = 13
      Height = 13
      Caption = 'cm'
    end
    object MarginLeftE: TEdit
      Left = 64
      Top = 18
      Width = 40
      Height = 21
      HelpContext = 72
      AutoSize = False
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
    end
    object MarginTopE: TEdit
      Left = 64
      Top = 42
      Width = 40
      Height = 21
      HelpContext = 81
      AutoSize = False
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
    end
    object MarginRightE: TEdit
      Left = 212
      Top = 18
      Width = 40
      Height = 21
      HelpContext = 91
      AutoSize = False
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 2
    end
    object MarginBottomE: TEdit
      Left = 212
      Top = 42
      Width = 40
      Height = 21
      HelpContext = 101
      AutoSize = False
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 3
    end
  end
  object OtherL: TGroupBox
    Left = 4
    Top = 252
    Width = 277
    Height = 65
    Caption = 'Other'
    TabOrder = 5
    object ApplyToCurRB: TRadioButton
      Left = 8
      Top = 20
      Width = 261
      Height = 17
      Caption = 'Apply to the current page'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object ApplyToAllRB: TRadioButton
      Left = 8
      Top = 40
      Width = 261
      Height = 17
      Caption = 'Apply to all pages'
      TabOrder = 1
    end
  end
end
