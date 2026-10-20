object frxDataBandEditorForm: TfrxDataBandEditorForm
  Left = 200
  Top = 108
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsDialog
  Caption = 'Select DataSet'
  ClientHeight = 182
  ClientWidth = 261
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
  object Image1: TImage
    Left = 24
    Top = 156
    Width = 16
    Height = 16
    AutoSize = True
    Picture.Data = {258 bytes}
    Visible = False
  end
  object OkB: TButton
    Left = 102
    Top = 152
    Width = 75
    Height = 25
    HelpContext = 40
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelB: TButton
    Left = 182
    Top = 152
    Width = 75
    Height = 25
    HelpContext = 50
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object DatasetsLB: TListBox
    Left = 4
    Top = 4
    Width = 253
    Height = 141
    HelpContext = 88
    ItemHeight = 16
    Style = lbOwnerDrawFixed
    TabOrder = 2
    OnDblClick = DatasetsLBDblClick
    OnDrawItem = DatasetsLBDrawItem
  end
end
