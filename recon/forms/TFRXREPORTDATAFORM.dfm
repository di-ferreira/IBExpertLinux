object frxReportDataForm: TfrxReportDataForm
  Left = 185
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Select Report Datasets'
  ClientHeight = 238
  ClientWidth = 229
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OKB: TButton
    Left = 68
    Top = 208
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 0
  end
  object CancelB: TButton
    Left = 148
    Top = 208
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object DatasetsLB: TCheckListBox
    Left = 4
    Top = 4
    Width = 221
    Height = 197
    OnClickCheck = DatasetsLBClickCheck
    ItemHeight = 16
    Style = lbOwnerDrawFixed
    TabOrder = 2
  end
end
