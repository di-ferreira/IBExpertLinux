object frxNewItemForm: TfrxNewItemForm
  Left = 190
  Top = 113
  BorderStyle = bsDialog
  Caption = 'New Items'
  ClientHeight = 334
  ClientWidth = 285
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TPageControl
    Left = 4
    Top = 4
    Width = 277
    Height = 293
    ActivePage = ItemsTab
    TabOrder = 2
    object ItemsTab: TTabSheet
      Caption = 'Items'
      object ItemsLB: TListBox
        Left = 0
        Top = 0
        Width = 269
        Height = 265
        Align = alClient
        ItemHeight = 30
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnDblClick = ItemsLBDblClick
        OnDrawItem = ItemsLBDrawItem
      end
    end
    object TemplatesTab: TTabSheet
      Caption = 'Templates'
      ImageIndex = 1
      TabVisible = False
      object TemplatesLV: TListView
        Left = 0
        Top = 0
        Width = 269
        Height = 265
        Align = alClient
        Columns = []
        TabOrder = 0
      end
    end
  end
  object OkB: TButton
    Left = 126
    Top = 304
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelB: TButton
    Left = 206
    Top = 304
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
end
