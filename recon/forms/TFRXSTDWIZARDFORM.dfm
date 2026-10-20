object frxStdWizardForm: TfrxStdWizardForm
  Left = 202
  Top = 119
  BorderStyle = bsDialog
  Caption = 'Standard Report Wizard'
  ClientHeight = 317
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TPageControl
    Left = 4
    Top = 4
    Width = 435
    Height = 277
    ActivePage = DataTab
    TabOrder = 0
    OnChange = PagesChange
    object DataTab: TTabSheet
      Caption = 'Data'
      ImageIndex = 4
      object Step1L: TLabel
        Left = 4
        Top = 8
        Width = 31
        Height = 13
        Caption = 'Step 1'
      end
      object DatasetsCB: TComboBox
        Left = 4
        Top = 32
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnClick = DatasetsCBClick
      end
      object NewTableB: TButton
        Left = 4
        Top = 60
        Width = 145
        Height = 25
        Caption = 'New table...'
        TabOrder = 1
        OnClick = NewTableBClick
      end
      object NewQueryB: TButton
        Left = 4
        Top = 92
        Width = 145
        Height = 25
        Caption = 'New query...'
        TabOrder = 2
        OnClick = NewQueryBClick
      end
    end
    object FieldsTab: TTabSheet
      Caption = 'Fields'
      object AddFieldB: TSpeedButton
        Left = 164
        Top = 88
        Width = 100
        Height = 25
        Caption = 'Add  >'
        OnClick = AddFieldBClick
      end
      object AddAllFieldsB: TSpeedButton
        Left = 164
        Top = 116
        Width = 100
        Height = 25
        Caption = 'Add all >>'
        OnClick = AddAllFieldsBClick
      end
      object RemoveFieldB: TSpeedButton
        Left = 164
        Top = 156
        Width = 100
        Height = 25
        Caption = '<  Remove'
        OnClick = RemoveFieldBClick
      end
      object RemoveAllFieldsB: TSpeedButton
        Left = 164
        Top = 184
        Width = 100
        Height = 25
        Caption = '<< Remove all'
        OnClick = RemoveAllFieldsBClick
      end
      object SelectedFieldsL: TLabel
        Left = 276
        Top = 38
        Width = 73
        Height = 13
        Caption = 'Selected fields:'
      end
      object FieldUpB: TSpeedButton
        Left = 387
        Top = 36
        Width = 17
        Height = 17
        Glyph.Data = {418 bytes}
        OnClick = FieldUpBClick
      end
      object FieldDownB: TSpeedButton
        Left = 404
        Top = 36
        Width = 17
        Height = 17
        Glyph.Data = {418 bytes}
        OnClick = FieldDownBClick
      end
      object Step2L: TLabel
        Left = 4
        Top = 8
        Width = 31
        Height = 13
        Caption = 'Step 2'
      end
      object FieldsLB: TListBox
        Left = 4
        Top = 56
        Width = 145
        Height = 188
        ItemHeight = 13
        MultiSelect = True
        TabOrder = 0
      end
      object SelectedFieldsLB: TListBox
        Left = 276
        Top = 56
        Width = 145
        Height = 188
        ItemHeight = 13
        MultiSelect = True
        TabOrder = 1
      end
    end
    object GroupsTab: TTabSheet
      Caption = 'Groups'
      ImageIndex = 1
      OnShow = GroupsTabShow
      object AddGroupB: TSpeedButton
        Left = 164
        Top = 88
        Width = 100
        Height = 25
        Caption = 'Add  >'
        OnClick = AddGroupBClick
      end
      object RemoveGroupB: TSpeedButton
        Left = 164
        Top = 116
        Width = 100
        Height = 25
        Caption = '<  Remove'
        OnClick = RemoveGroupBClick
      end
      object GroupsL: TLabel
        Left = 276
        Top = 38
        Width = 38
        Height = 13
        Caption = 'Groups:'
      end
      object GroupUpB: TSpeedButton
        Left = 387
        Top = 36
        Width = 17
        Height = 17
        Glyph.Data = {418 bytes}
        OnClick = GroupUpBClick
      end
      object GroupDownB: TSpeedButton
        Left = 404
        Top = 36
        Width = 17
        Height = 17
        Glyph.Data = {418 bytes}
        OnClick = GroupDownBClick
      end
      object AvailableFieldsL: TLabel
        Left = 4
        Top = 38
        Width = 75
        Height = 13
        Caption = 'Available fields:'
      end
      object Step3L: TLabel
        Left = 4
        Top = 8
        Width = 31
        Height = 13
        Caption = 'Step 3'
      end
      object AvailableFieldsLB: TListBox
        Left = 4
        Top = 56
        Width = 145
        Height = 188
        ItemHeight = 13
        TabOrder = 0
      end
      object GroupsLB: TListBox
        Left = 276
        Top = 56
        Width = 145
        Height = 188
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object LayoutTab: TTabSheet
      Caption = 'Layout'
      ImageIndex = 2
      object Step4L: TLabel
        Left = 4
        Top = 8
        Width = 31
        Height = 13
        Caption = 'Step 4'
      end
      object FitWidthCB: TCheckBox
        Left = 4
        Top = 220
        Width = 209
        Height = 17
        Caption = 'Fit fields to page width'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object OrientationL: TGroupBox
        Left = 4
        Top = 28
        Width = 185
        Height = 65
        Caption = 'Orientation'
        TabOrder = 1
        object PortraitImg: TImage
          Left = 144
          Top = 19
          Width = 26
          Height = 32
          AutoSize = True
          Picture.Data = {642 bytes}
        end
        object LandscapeImg: TImage
          Left = 141
          Top = 23
          Width = 32
          Height = 26
          AutoSize = True
          Picture.Data = {546 bytes}
          Visible = False
        end
        object PortraitRB: TRadioButton
          Left = 8
          Top = 18
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
          Top = 38
          Width = 109
          Height = 17
          HelpContext = 120
          Caption = 'Landscape'
          TabOrder = 1
          OnClick = PortraitRBClick
        end
      end
      object LayoutL: TGroupBox
        Left = 4
        Top = 100
        Width = 185
        Height = 65
        Caption = 'Layout'
        TabOrder = 2
        object TabularRB: TRadioButton
          Left = 8
          Top = 18
          Width = 133
          Height = 17
          HelpContext = 111
          Caption = 'Tabular'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object ColumnarRB: TRadioButton
          Left = 8
          Top = 38
          Width = 133
          Height = 17
          HelpContext = 120
          Caption = 'Columnar'
          TabOrder = 1
        end
      end
    end
    object StyleTab: TTabSheet
      Caption = 'Style'
      ImageIndex = 3
      object Step5L: TLabel
        Left = 4
        Top = 8
        Width = 31
        Height = 13
        Caption = 'Step 5'
      end
      object ScrollBox1: TScrollBox
        Left = 140
        Top = 36
        Width = 281
        Height = 209
        AutoScroll = False
        Color = clGray
        ParentColor = False
        TabOrder = 0
        object PaintBox: TPaintBox
          Left = 12
          Top = 12
          Width = 267
          Height = 201
          OnPaint = PaintBoxPaint
        end
      end
      object StyleLB: TListBox
        Left = 4
        Top = 36
        Width = 129
        Height = 209
        ItemHeight = 13
        TabOrder = 1
        OnClick = StyleLBClick
      end
    end
  end
  object BackB: TButton
    Left = 196
    Top = 288
    Width = 75
    Height = 25
    Caption = '<< Back'
    Enabled = False
    TabOrder = 1
    OnClick = BackBClick
  end
  object NextB: TButton
    Left = 276
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Next >>'
    TabOrder = 2
    OnClick = NextBClick
  end
  object FinishB: TButton
    Left = 364
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Finish'
    ModalResult = 1
    TabOrder = 3
    OnClick = FinishBClick
  end
end
