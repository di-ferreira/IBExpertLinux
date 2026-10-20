object frxVarEditorForm: TfrxVarEditorForm
  Left = 200
  Top = 108
  Width = 640
  Height = 550
  BorderIcons = ['biSystemMenu', 'biMinimize', 'biMaximize', 'biHelp']
  Caption = 'Edit Variables'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  ShowHint = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnHide = FormHide
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 437
    Width = 632
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Splitter2: TSplitter
    Left = 629
    Top = 33
    Width = 3
    Height = 387
    Cursor = crHSplit
    Align = alRight
  end
  object VarTree: TTreeView
    Left = 0
    Top = 33
    Width = 629
    Height = 387
    HelpContext = 78
    Align = alClient
    HideSelection = False
    Indent = 19
    ShowRoot = False
    TabOrder = 0
    OnChange = VarTreeChange
    OnChanging = VarTreeChanging
    OnEdited = VarTreeEdited
    OnKeyDown = VarTreeKeyDown
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 632
    Height = 33
    AutoSize = True
    BorderWidth = 2
    ButtonHeight = 21
    ButtonWidth = 52
    EdgeBorders = ['ebTop', 'ebBottom']
    Flat = True
    ShowCaptions = True
    TabOrder = 1
    object NewCategoryB: TToolButton
      Left = 0
      Top = 0
      Caption = 'Category'
      ImageIndex = 65
      OnClick = NewCategoryBClick
    end
    object NewVarB: TToolButton
      Left = 52
      Top = 0
      Caption = 'Variable'
      ImageIndex = 67
      OnClick = NewVarBClick
    end
    object EditB: TToolButton
      Left = 104
      Top = 0
      Caption = 'Edit'
      ImageIndex = 68
      OnClick = EditBClick
    end
    object DeleteB: TToolButton
      Left = 156
      Top = 0
      Caption = 'Delete'
      ImageIndex = 81
      OnClick = DeleteBClick
    end
    object EditListB: TToolButton
      Left = 208
      Top = 0
      Caption = 'List'
      ImageIndex = 69
      OnClick = EditListBClick
    end
    object Sep2: TToolButton
      Left = 260
      Top = 0
      Width = 8
      ImageIndex = 59
      Style = tbsSeparator
    end
    object LoadB: TToolButton
      Left = 268
      Top = 0
      Caption = 'Load'
      ImageIndex = 1
      OnClick = LoadBClick
    end
    object SaveB: TToolButton
      Left = 320
      Top = 0
      Caption = 'Save'
      ImageIndex = 2
      OnClick = SaveBClick
    end
    object Sep1: TToolButton
      Left = 372
      Top = 0
      Width = 8
      ImageIndex = 7
      Style = tbsSeparator
    end
    object CancelB: TToolButton
      Left = 380
      Top = 0
      Caption = 'Cancel'
      ImageIndex = 55
      OnClick = CancelBClick
    end
    object OkB: TToolButton
      Left = 432
      Top = 0
      Caption = 'OK'
      ImageIndex = 56
      OnClick = OkBClick
    end
  end
  object ExprMemo: TMemo
    Left = 0
    Top = 440
    Width = 632
    Height = 76
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    WantReturns = False
    OnDragDrop = ExprMemoDragDrop
    OnDragOver = ExprMemoDragOver
  end
  object ExprPanel: TPanel
    Left = 0
    Top = 420
    Width = 632
    Height = 17
    Align = alBottom
    Alignment = taLeftJustify
    Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
    BevelOuter = bvNone
    Caption = ' Expression:'
    Constraints.MaxHeight = 17
    Constraints.MinHeight = 17
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.fd3'
    Left = 80
    Top = 128
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.fd3'
    Left = 116
    Top = 128
  end
end
