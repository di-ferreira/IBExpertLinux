object frmParamsWarning: TfrmParamsWarning
  Left = 372
  Top = 245
  HelpContext = 4900
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Warning!'
  ClientHeight = 148
  ClientWidth = 371
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 1
    Width = 360
    Height = 40
    AutoSize = False
    Caption = 'The number/order of input/output parameters was changed!\r\nDon''t forget to correct the appropriate references in procedures/triggers listed below.'
    WordWrap = True
  end
  object bCopy: TButton
    Left = 241
    Top = 44
    Width = 128
    Height = 24
    Caption = 'C&opy list to clipboard'
    TabOrder = 0
    OnClick = bCopyClick
  end
  object bCompile: TButton
    Left = 241
    Top = 94
    Width = 128
    Height = 24
    Caption = 'Compile anyway'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object bRollback: TButton
    Left = 242
    Top = 121
    Width = 127
    Height = 24
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object lvObjects: TListView
    Left = 2
    Top = 44
    Width = 235
    Height = 101
    Columns = <
      item
        Caption = 'Procedure/Trigger'
        Width = 210
      end
    >
    ColumnClick = False
    HideSelection = False
    ReadOnly = True
    RowSelect = True
    SmallImages = IBEMainForm.ImageList
    TabOrder = 3
    ViewStyle = vsReport
  end
  object ActionList1: TActionList
    Left = 160
    Top = 80
    object actCancel: TAction
      Caption = 'Cancel'
      ShortCut = 27
      OnExecute = actCancelExecute
    end
  end
end
