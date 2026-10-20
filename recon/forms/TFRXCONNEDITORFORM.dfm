object frxConnEditorForm: TfrxConnEditorForm
  Left = 191
  Top = 114
  BorderStyle = bsDialog
  Caption = 'Connections'
  ClientHeight = 241
  ClientWidth = 552
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
  object NewB: TButton
    Left = 468
    Top = 8
    Width = 75
    Height = 25
    Caption = 'New...'
    TabOrder = 0
    OnClick = NewBClick
  end
  object DeleteB: TButton
    Left = 468
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 1
    OnClick = DeleteBClick
  end
  object ConnLV: TListView
    Left = 4
    Top = 4
    Width = 454
    Height = 233
    Columns = <
      item
        Caption = 'Name'
        Width = 150
      end
      item
        Caption = 'Connection string'
        Width = 300
      end
    >
    RowSelect = True
    TabOrder = 4
    ViewStyle = vsReport
    OnSelectItem = ConnLVSelectItem
  end
  object OKB: TButton
    Left = 468
    Top = 72
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnClick = OKBClick
  end
  object Panel: TPanel
    Left = 5
    Top = 88
    Width = 452
    Height = 19
    BevelOuter = bvNone
    TabOrder = 5
    object ExpressionB: TSpeedButton
      Left = 434
      Top = 0
      Width = 17
      Height = 19
      Caption = '...'
      OnClick = ExpressionBClick
    end
    object NameE: TEdit
      Left = 0
      Top = 0
      Width = 151
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object ConnE: TEdit
      Left = 150
      Top = 0
      Width = 284
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object CancelB: TButton
    Left = 468
    Top = 104
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
end
