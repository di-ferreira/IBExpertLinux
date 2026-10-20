object frxPageEditorForm: TfrxPageEditorForm
  Left = 256
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Page options'
  ClientHeight = 410
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OKB: TButton
    Left = 144
    Top = 380
    Width = 75
    Height = 25
    HelpContext = 40
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelB: TButton
    Left = 226
    Top = 380
    Width = 75
    Height = 25
    HelpContext = 50
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 293
    Height = 361
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Paper'
      object Label11: TGroupBox
        Left = 4
        Top = 4
        Width = 277
        Height = 101
        Caption = 'Size'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Width'
          FocusControl = WidthE
        end
        object Label2: TLabel
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
      object Label14: TGroupBox
        Left = 4
        Top = 252
        Width = 277
        Height = 73
        Caption = 'Trays'
        TabOrder = 1
        object Label9: TLabel
          Left = 8
          Top = 20
          Width = 48
          Height = 13
          Caption = 'First page'
        end
        object Label10: TLabel
          Left = 8
          Top = 44
          Width = 60
          Height = 13
          Caption = 'Other pages'
        end
        object Tray1CB: TComboBox
          Left = 128
          Top = 18
          Width = 141
          Height = 21
          ItemHeight = 13
          TabOrder = 0
        end
        object Tray2CB: TComboBox
          Left = 128
          Top = 42
          Width = 141
          Height = 21
          ItemHeight = 13
          TabOrder = 1
        end
      end
      object Label12: TGroupBox
        Left = 4
        Top = 108
        Width = 277
        Height = 65
        Caption = 'Orientation'
        TabOrder = 2
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
      object Label13: TGroupBox
        Left = 4
        Top = 176
        Width = 277
        Height = 73
        Caption = 'Margins'
        TabOrder = 3
        object Label3: TLabel
          Left = 8
          Top = 20
          Width = 19
          Height = 13
          Caption = 'Left'
          FocusControl = MarginLeftE
        end
        object Label4: TLabel
          Left = 8
          Top = 44
          Width = 18
          Height = 13
          Caption = 'Top'
          FocusControl = MarginTopE
        end
        object Label5: TLabel
          Left = 152
          Top = 20
          Width = 25
          Height = 13
          Caption = 'Right'
          FocusControl = MarginRightE
        end
        object Label6: TLabel
          Left = 152
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
          Left = 252
          Top = 20
          Width = 13
          Height = 13
          Caption = 'cm'
        end
        object UnitL6: TLabel
          Left = 252
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
          Left = 208
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
          Left = 208
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
    end
    object TabSheet3: TTabSheet
      Caption = 'Other Options'
      object Label7: TGroupBox
        Left = 4
        Top = 4
        Width = 277
        Height = 149
        Caption = 'Columns'
        TabOrder = 0
        object Label8: TLabel
          Left = 8
          Top = 20
          Width = 37
          Height = 13
          Caption = 'Number'
          FocusControl = ColumnsNumberE
        end
        object Label15: TLabel
          Left = 8
          Top = 44
          Width = 28
          Height = 13
          Caption = 'Width'
          FocusControl = ColumnWidthE
        end
        object Label16: TLabel
          Left = 8
          Top = 68
          Width = 42
          Height = 13
          Caption = 'Positions'
        end
        object UnitL7: TLabel
          Left = 136
          Top = 44
          Width = 13
          Height = 13
          Caption = 'cm'
        end
        object ColumnsNumberE: TEdit
          Left = 88
          Top = 18
          Width = 29
          Height = 21
          HelpContext = 140
          AutoSize = False
          Ctl3D = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          Text = '0'
        end
        object ColumnWidthE: TEdit
          Left = 88
          Top = 42
          Width = 45
          Height = 21
          HelpContext = 140
          AutoSize = False
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 1
        end
        object ColumnPositionsM: TMemo
          Left = 88
          Top = 66
          Width = 113
          Height = 71
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 2
        end
        object UpDown1: TUpDown
          Left = 117
          Top = 18
          Width = 16
          Height = 21
          Associate = ColumnsNumberE
          TabOrder = 3
          OnClick = UpDown1Click
        end
      end
      object Label17: TGroupBox
        Left = 4
        Top = 156
        Width = 277
        Height = 117
        Caption = 'Other'
        TabOrder = 1
        object Label18: TLabel
          Left = 8
          Top = 84
          Width = 33
          Height = 13
          Caption = 'Duplex'
        end
        object PrintOnPrevCB: TCheckBox
          Left = 8
          Top = 20
          Width = 261
          Height = 17
          HelpContext = 160
          Caption = 'Print to previous page'
          TabOrder = 0
        end
        object MirrorMarginsCB: TCheckBox
          Left = 8
          Top = 40
          Width = 261
          Height = 17
          Caption = 'Mirror margins'
          TabOrder = 1
        end
        object LargeHeightCB: TCheckBox
          Left = 8
          Top = 60
          Width = 261
          Height = 17
          Caption = 'Large height in design mode'
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 2
        end
        object DuplexCB: TComboBox
          Left = 88
          Top = 82
          Width = 141
          Height = 21
          ItemHeight = 13
          TabOrder = 3
          Items.Strings = ['No', 'Vertical', 'Horizontal']
        end
      end
    end
  end
end
