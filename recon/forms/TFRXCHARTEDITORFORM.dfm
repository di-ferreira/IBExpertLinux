object frxChartEditorForm: TfrxChartEditorForm
  Left = 196
  Top = 106
  BorderStyle = bsDialog
  Caption = 'Chart Editor'
  ClientHeight = 554
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OkB: TButton
    Left = 352
    Top = 521
    Width = 75
    Height = 25
    HelpContext = 40
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 2
    Top = 2
    Width = 217
    Height = 551
    BevelOuter = bvNone
    TabOrder = 1
    object InspSite: TPanel
      Left = 0
      Top = 88
      Width = 217
      Height = 463
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Image1: TImage
        Left = 28
        Top = 168
        Width = 160
        Height = 16
        AutoSize = True
        Picture.Data = {1410 bytes}
        Visible = False
      end
    end
    object ChartTree: TTreeView
      Left = 0
      Top = 0
      Width = 217
      Height = 85
      Align = alTop
      HideSelection = False
      Images = ChartImages
      Indent = 19
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 1
      OnClick = ChartTreeClick
      Items.Data = {38 bytes}
    end
    object Panel2: TPanel
      Left = 0
      Top = 85
      Width = 217
      Height = 3
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
    end
    object TreePanel: TPanel
      Left = 186
      Top = 1
      Width = 30
      Height = 83
      BevelOuter = bvNone
      TabOrder = 3
      object AddB: TSpeedButton
        Left = 4
        Top = 4
        Width = 23
        Height = 22
        Hint = 'Add Series'
        Flat = True
        Glyph.Data = {250 bytes}
        OnClick = AddBClick
      end
      object DeleteB: TSpeedButton
        Left = 4
        Top = 28
        Width = 23
        Height = 22
        Hint = 'Delete Series'
        Flat = True
        Glyph.Data = {250 bytes}
        OnClick = DeleteBClick
      end
    end
  end
  object SourcePanel: TPanel
    Left = 224
    Top = 4
    Width = 289
    Height = 517
    BevelOuter = bvNone
    TabOrder = 2
    object DBSourceRB: TRadioButton
      Tag = 1
      Left = 4
      Top = 0
      Width = 241
      Height = 17
      Caption = 'Data Source'
      TabOrder = 0
      OnClick = DoClick
    end
    object FixedDataRB: TRadioButton
      Tag = 9
      Left = 4
      Top = 256
      Width = 253
      Height = 17
      Caption = 'Fixed Data'
      TabOrder = 2
      OnClick = DoClick
    end
    object DBSourceP: TGroupBox
      Left = 4
      Top = 20
      Width = 281
      Height = 101
      TabOrder = 3
      object DatasetLbl: TLabel
        Left = 12
        Top = 12
        Width = 38
        Height = 13
        Caption = 'Dataset'
      end
      object X1Lbl: TLabel
        Left = 12
        Top = 52
        Width = 40
        Height = 13
        Caption = 'X Values'
      end
      object Y1Lbl: TLabel
        Left = 144
        Top = 52
        Width = 40
        Height = 13
        Caption = 'Y Values'
      end
      object InsExpressionB1: TSpeedButton
        Left = 122
        Top = 70
        Width = 17
        Height = 17
        Glyph.Data = {218 bytes}
        OnClick = InsExpressionB1Click
      end
      object InsExpressionB2: TSpeedButton
        Left = 254
        Top = 70
        Width = 17
        Height = 17
        Glyph.Data = {218 bytes}
        OnClick = InsExpressionB2Click
      end
      object DatasetsCB: TComboBox
        Tag = 2
        Left = 12
        Top = 28
        Width = 257
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnClick = DoClick
      end
      object X1ValuesCB: TComboBox
        Tag = 3
        Left = 12
        Top = 68
        Width = 109
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        OnExit = DoClick
      end
      object Y1ValuesCB: TComboBox
        Tag = 4
        Left = 144
        Top = 68
        Width = 109
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        OnExit = DoClick
      end
    end
    object FixedDataP: TGroupBox
      Left = 4
      Top = 276
      Width = 281
      Height = 101
      TabOrder = 4
      object X3Lbl: TLabel
        Left = 12
        Top = 12
        Width = 140
        Height = 13
        Caption = 'X Values (for example, a;b;c)'
      end
      object Y3Lbl: TLabel
        Left = 12
        Top = 52
        Width = 161
        Height = 13
        Caption = 'Y Values (for example, 1;2;3.5;5)'
      end
      object XValuesE: TEdit
        Tag = 10
        Left = 12
        Top = 28
        Width = 257
        Height = 21
        TabOrder = 0
        OnExit = DoClick
      end
      object YValuesE: TEdit
        Tag = 11
        Left = 12
        Top = 68
        Width = 257
        Height = 21
        TabOrder = 1
        OnExit = DoClick
      end
    end
    object OtherLbl: TGroupBox
      Left = 4
      Top = 384
      Width = 281
      Height = 125
      Caption = 'Other'
      TabOrder = 6
      object ShowTopLbl: TLabel
        Left = 12
        Top = 44
        Width = 59
        Height = 13
        Caption = 'TopN values'
      end
      object CaptionLbl: TLabel
        Left = 12
        Top = 68
        Width = 63
        Height = 13
        Caption = 'TopN caption'
      end
      object SortLbl: TLabel
        Left = 12
        Top = 20
        Width = 49
        Height = 13
        Caption = 'Sort order'
      end
      object XLbl: TLabel
        Left = 12
        Top = 92
        Width = 28
        Height = 13
        Caption = 'X axis'
      end
      object TopNE: TEdit
        Tag = 12
        Left = 196
        Top = 40
        Width = 33
        Height = 21
        TabOrder = 0
        Text = '0'
        OnExit = DoClick
      end
      object TopNCaptionE: TEdit
        Tag = 13
        Left = 112
        Top = 64
        Width = 133
        Height = 21
        TabOrder = 1
        OnExit = DoClick
      end
      object SortCB: TComboBox
        Tag = 14
        Left = 112
        Top = 16
        Width = 133
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        OnClick = DoClick
      end
      object UpDown1: TUpDown
        Tag = 12
        Left = 229
        Top = 40
        Width = 16
        Height = 21
        Associate = TopNE
        Min = 0
        Position = 0
        TabOrder = 3
        Wrap = False
        OnClick = UpDown1Click
      end
      object XTypeCB: TComboBox
        Tag = 15
        Left = 112
        Top = 88
        Width = 133
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 4
        OnChange = DoClick
      end
    end
    object BandSourceP: TGroupBox
      Left = 4
      Top = 148
      Width = 281
      Height = 101
      TabOrder = 5
      object BandLbl: TLabel
        Left = 12
        Top = 12
        Width = 50
        Height = 13
        Caption = 'Data band'
      end
      object X2Lbl: TLabel
        Left = 12
        Top = 52
        Width = 40
        Height = 13
        Caption = 'X Values'
      end
      object Y2Lbl: TLabel
        Left = 144
        Top = 52
        Width = 40
        Height = 13
        Caption = 'Y Values'
      end
      object InsExpressionB3: TSpeedButton
        Left = 122
        Top = 70
        Width = 17
        Height = 17
        Glyph.Data = {218 bytes}
        OnClick = InsExpressionB3Click
      end
      object InsExpressionB4: TSpeedButton
        Left = 254
        Top = 70
        Width = 17
        Height = 17
        Glyph.Data = {218 bytes}
        OnClick = InsExpressionB4Click
      end
      object DatabandsCB: TComboBox
        Tag = 6
        Left = 12
        Top = 28
        Width = 257
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnClick = DoClick
      end
      object X2ValuesCB: TComboBox
        Tag = 7
        Left = 12
        Top = 68
        Width = 109
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        OnExit = DoClick
      end
      object Y2ValuesCB: TComboBox
        Tag = 8
        Left = 144
        Top = 68
        Width = 109
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        OnExit = DoClick
      end
    end
    object BandSourceRB: TRadioButton
      Tag = 5
      Left = 4
      Top = 128
      Width = 241
      Height = 17
      Caption = 'Band Source'
      TabOrder = 1
      OnClick = DoClick
    end
  end
  object CancelB: TButton
    Left = 432
    Top = 521
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object ChartImages: TImageList
    Left = 86
    Top = 250
  end
  object Popup: TPopupMenu
    Images = ChartImages
    Left = 148
    Top = 132
    object LineMI: TMenuItem
      Caption = 'Line'
      ImageIndex = 1
      OnClick = AddClick
    end
    object AreaMI: TMenuItem
      Tag = 1
      Caption = 'Area'
      ImageIndex = 2
      OnClick = AddClick
    end
    object PointMI: TMenuItem
      Tag = 2
      Caption = 'Point'
      ImageIndex = 3
      OnClick = AddClick
    end
    object BarMI: TMenuItem
      Tag = 3
      Caption = 'Bar'
      ImageIndex = 4
      OnClick = AddClick
    end
    object HorizBarMI: TMenuItem
      Tag = 4
      Caption = 'Horiz. Bar'
      ImageIndex = 5
      OnClick = AddClick
    end
    object PieMI: TMenuItem
      Tag = 5
      Caption = 'Pie'
      ImageIndex = 6
      OnClick = AddClick
    end
    object GanttMI: TMenuItem
      Tag = 6
      Caption = 'Gantt'
      ImageIndex = 7
      OnClick = AddClick
    end
    object FastLineMI: TMenuItem
      Tag = 7
      Caption = 'Fast Line'
      ImageIndex = 8
      OnClick = AddClick
    end
  end
end
