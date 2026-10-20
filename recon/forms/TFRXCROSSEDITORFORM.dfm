object frxCrossEditorForm: TfrxCrossEditorForm
  Left = 190
  Top = 183
  BorderStyle = bsDialog
  Caption = 'Cross-tab Editor'
  ClientHeight = 502
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 249
    Width = 703
    Height = 253
    Align = alBottom
    Color = clWindow
    ParentColor = False
    TabOrder = 0
    object PaintBox: TPaintBox
      Left = 0
      Top = 0
      Width = 699
      Height = 249
      Align = alClient
      OnDblClick = PaintBoxDblClick
      OnMouseDown = PaintBoxMouseDown
      OnPaint = PaintBoxPaint
    end
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 216
    Width = 703
    Height = 33
    Align = alBottom
    BorderWidth = 2
    ButtonHeight = 23
    ButtonWidth = 22
    Flat = True
    TabOrder = 1
    Wrapable = False
    object frTBPanel1: TfrxTBPanel
      Left = 0
      Top = 0
      Width = 157
      Height = 23
      Align = alLeft
      TabOrder = 0
      object StyleCB: TfrxComboBox
        Left = 4
        Top = 2
        Width = 146
        Height = 19
        ItemHeight = 13
        Items.Strings = ['Standard']
        ListWidth = 0
        TabOrder = 0
        ItemIndex = -1
        OnClick = StyleCBClick
      end
    end
    object FontB: TToolButton
      Tag = 1
      Left = 157
      Top = 0
      ImageIndex = 59
      OnClick = ToolButtonClick
    end
    object AlignLeftB: TToolButton
      Tag = 2
      Left = 179
      Top = 0
      Grouped = True
      ImageIndex = 25
      Style = tbsCheck
      OnClick = ToolButtonClick
    end
    object AlignCenterB: TToolButton
      Tag = 4
      Left = 201
      Top = 0
      Grouped = True
      ImageIndex = 26
      Style = tbsCheck
      OnClick = ToolButtonClick
    end
    object AlignRightB: TToolButton
      Tag = 3
      Left = 223
      Top = 0
      Grouped = True
      ImageIndex = 27
      Style = tbsCheck
      OnClick = ToolButtonClick
    end
    object Sep3: TToolButton
      Left = 245
      Top = 0
      Width = 8
      ImageIndex = 15
      Style = tbsSeparator
    end
    object RotationB: TToolButton
      Tag = 5
      Left = 253
      Top = 0
      DropdownMenu = RotationPopup
      ImageIndex = 64
    end
    object HighlightB: TToolButton
      Tag = 6
      Left = 275
      Top = 0
      ImageIndex = 24
      OnClick = ToolButtonClick
    end
    object FormatB: TToolButton
      Tag = 7
      Left = 297
      Top = 0
      ImageIndex = 86
      OnClick = ToolButtonClick
    end
    object Sep1: TToolButton
      Left = 319
      Top = 0
      Width = 8
      ImageIndex = 12
      Style = tbsSeparator
    end
    object FrameB: TToolButton
      Tag = 8
      Left = 327
      Top = 0
      ImageIndex = 36
      OnClick = ToolButtonClick
    end
    object FillColorB: TToolButton
      Tag = 9
      Left = 349
      Top = 0
      ImageIndex = 38
      OnClick = ToolButtonClick
    end
    object Sep2: TToolButton
      Left = 371
      Top = 0
      Width = 8
      ImageIndex = 12
      Style = tbsSeparator
    end
    object CancelB: TToolButton
      Left = 379
      Top = 0
      ImageIndex = 55
      OnClick = CancelBClick
    end
    object OkB: TToolButton
      Left = 401
      Top = 0
      ImageIndex = 56
      OnClick = OkBClick
    end
  end
  object DatasetL: TGroupBox
    Left = 4
    Top = 4
    Width = 165
    Height = 205
    Caption = 'Dataset'
    TabOrder = 2
    Visible = False
    object DatasetCB: TComboBox
      Left = 8
      Top = 20
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnClick = DatasetCBClick
      OnDrawItem = DatasetCBDrawItem
    end
    object FieldsLB: TListBox
      Left = 8
      Top = 48
      Width = 145
      Height = 145
      DragMode = dmAutomatic
      ItemHeight = 16
      Style = lbOwnerDrawFixed
      TabOrder = 1
      OnClick = LBClick
      OnDragDrop = LBDragDrop
      OnDragOver = LBDragOver
      OnDrawItem = FieldsLBDrawItem
    end
  end
  object DimensionsL: TGroupBox
    Left = 4
    Top = 4
    Width = 165
    Height = 205
    Caption = 'Dimensions'
    TabOrder = 3
    Visible = False
    object RowsL: TLabel
      Left = 12
      Top = 20
      Width = 26
      Height = 13
      Caption = 'Rows'
    end
    object ColumnsL: TLabel
      Left = 12
      Top = 48
      Width = 40
      Height = 13
      Caption = 'Columns'
    end
    object CellsL: TLabel
      Left = 12
      Top = 76
      Width = 22
      Height = 13
      Caption = 'Cells'
    end
    object RowsE: TEdit
      Left = 100
      Top = 16
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
      OnChange = DimesionsChange
    end
    object ColumnsE: TEdit
      Tag = 1
      Left = 100
      Top = 44
      Width = 33
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = DimesionsChange
    end
    object CellsE: TEdit
      Tag = 2
      Left = 100
      Top = 72
      Width = 33
      Height = 21
      TabOrder = 2
      Text = '1'
      OnChange = DimesionsChange
    end
    object UpDown1: TUpDown
      Left = 133
      Top = 16
      Width = 15
      Height = 21
      Associate = RowsE
      Min = 0
      Position = 0
      TabOrder = 3
      Wrap = False
    end
    object UpDown2: TUpDown
      Left = 133
      Top = 44
      Width = 15
      Height = 21
      Associate = ColumnsE
      Min = 0
      Position = 0
      TabOrder = 4
      Wrap = False
    end
    object UpDown3: TUpDown
      Left = 133
      Top = 72
      Width = 15
      Height = 21
      Associate = CellsE
      Min = 1
      Position = 1
      TabOrder = 5
      Wrap = False
    end
  end
  object StructureL: TGroupBox
    Left = 176
    Top = 4
    Width = 521
    Height = 205
    Caption = 'Cross-tab structure'
    TabOrder = 4
    object Shape1: TShape
      Left = 12
      Top = 104
      Width = 497
      Height = 1
      Brush.Color = clBtnFace
      Pen.Style = psDot
    end
    object Shape2: TShape
      Left = 260
      Top = 16
      Width = 1
      Height = 177
      Brush.Color = clBtnFace
      Pen.Style = psDot
    end
    object SwapB: TSpeedButton
      Left = 226
      Top = 70
      Width = 27
      Height = 26
      Glyph.Data = {350 bytes}
      OnClick = SwapBClick
    end
    object RowsLB: TListBox
      Left = 12
      Top = 112
      Width = 241
      Height = 81
      DragMode = dmAutomatic
      ExtendedSelect = False
      ItemHeight = 16
      Style = lbOwnerDrawFixed
      TabOrder = 0
      OnClick = LBClick
      OnDblClick = LBDblClick
      OnDragDrop = LBDragDrop
      OnDragOver = LBDragOver
      OnDrawItem = LBDrawItem
      OnMouseDown = LBMouseDown
    end
    object ColumnsLB: TListBox
      Left = 268
      Top = 16
      Width = 241
      Height = 81
      DragMode = dmAutomatic
      ExtendedSelect = False
      ItemHeight = 16
      Style = lbOwnerDrawFixed
      TabOrder = 1
      OnClick = LBClick
      OnDblClick = LBDblClick
      OnDragDrop = LBDragDrop
      OnDragOver = LBDragOver
      OnDrawItem = LBDrawItem
      OnMouseDown = LBMouseDown
    end
    object CellsLB: TListBox
      Left = 268
      Top = 112
      Width = 241
      Height = 81
      DragMode = dmAutomatic
      ExtendedSelect = False
      ItemHeight = 16
      Style = lbOwnerDrawFixed
      TabOrder = 2
      OnClick = LBClick
      OnDblClick = LBDblClick
      OnDragDrop = LBDragDrop
      OnDragOver = LBDragOver
      OnDrawItem = CellsLBDrawItem
      OnMouseUp = CellsLBMouseUp
    end
    object RowHeaderCB: TCheckBox
      Left = 12
      Top = 20
      Width = 185
      Height = 17
      Caption = 'Row header'
      TabOrder = 3
      OnClick = CBClick
    end
    object ColumnHeaderCB: TCheckBox
      Tag = 1
      Left = 12
      Top = 40
      Width = 185
      Height = 17
      Caption = 'Column header'
      TabOrder = 4
      OnClick = CBClick
    end
    object RowTotalCB: TCheckBox
      Tag = 2
      Left = 12
      Top = 60
      Width = 185
      Height = 17
      Caption = 'Row grand total'
      TabOrder = 5
      OnClick = CBClick
    end
    object ColumnTotalCB: TCheckBox
      Tag = 3
      Left = 12
      Top = 80
      Width = 185
      Height = 17
      Caption = 'Column grand total'
      TabOrder = 6
      OnClick = CBClick
    end
  end
  object RotationPopup: TPopupMenu
    Left = 42
    Top = 274
    object R0MI: TMenuItem
      Tag = 5
      Caption = '0°'
      OnClick = ToolButtonClick
    end
    object R90MI: TMenuItem
      Tag = 5
      Caption = '90°'
      HelpContext = 90
      OnClick = ToolButtonClick
    end
    object R180MI: TMenuItem
      Tag = 5
      Caption = '180°'
      HelpContext = 180
      OnClick = ToolButtonClick
    end
    object R270MI: TMenuItem
      Tag = 5
      Caption = '270°'
      HelpContext = 270
      OnClick = ToolButtonClick
    end
  end
  object FuncPopup: TPopupMenu
    Left = 74
    Top = 274
    object Func1MI: TMenuItem
      Caption = 'None'
      Checked = True
      GroupIndex = 1
      RadioItem = True
      OnClick = FuncMIClick
    end
    object Func2MI: TMenuItem
      Tag = 1
      Caption = 'Sum'
      GroupIndex = 1
      RadioItem = True
      OnClick = FuncMIClick
    end
    object Func3MI: TMenuItem
      Tag = 2
      Caption = 'Min'
      GroupIndex = 1
      RadioItem = True
      OnClick = FuncMIClick
    end
    object Func4MI: TMenuItem
      Tag = 3
      Caption = 'Max'
      GroupIndex = 1
      RadioItem = True
      OnClick = FuncMIClick
    end
    object Func5MI: TMenuItem
      Tag = 4
      Caption = 'Avg'
      GroupIndex = 1
      RadioItem = True
      OnClick = FuncMIClick
    end
    object Func6MI: TMenuItem
      Tag = 5
      Caption = 'Count'
      GroupIndex = 1
      RadioItem = True
      OnClick = FuncMIClick
    end
  end
  object SortPopup: TPopupMenu
    Left = 106
    Top = 274
    object Sort1MI: TMenuItem
      Caption = 'Asc'
      GroupIndex = 1
      RadioItem = True
      OnClick = SortMIClick
    end
    object Sort2MI: TMenuItem
      Tag = 1
      Caption = 'Desc'
      GroupIndex = 1
      RadioItem = True
      OnClick = SortMIClick
    end
    object Sort3MI: TMenuItem
      Tag = 2
      Caption = 'None'
      GroupIndex = 1
      RadioItem = True
      OnClick = SortMIClick
    end
  end
  object DMPPopup: TPopupMenu
    Left = 138
    Top = 274
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
      Caption = '12 cpi'
      OnClick = ToolButtonClick
    end
    object N15cpiMI: TMenuItem
      Caption = '15 cpi'
      OnClick = ToolButtonClick
    end
  end
end
