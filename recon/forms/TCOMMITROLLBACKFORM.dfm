object CommitRollbackForm: TCommitRollbackForm
  Left = 774
  Top = 745
  HelpContext = 8500
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsToolWindow
  Caption = 'Active transaction found'
  ClientHeight = 84
  ClientWidth = 343
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 343
    Height = 51
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = '\r\nThere is active transaction.\r\nYou must commit or rollback it before closing form.'
  end
  object sohoBitBtn1: TButton
    Left = 3
    Top = 56
    Width = 109
    Height = 24
    Caption = 'Commit'
    ModalResult = 6
    TabOrder = 0
  end
  object sohoBitBtn2: TButton
    Left = 117
    Top = 56
    Width = 109
    Height = 24
    Caption = 'Rollback'
    ModalResult = 7
    TabOrder = 1
  end
  object sohoBitBtn3: TButton
    Left = 231
    Top = 56
    Width = 109
    Height = 24
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object ActionList1: TActionList
    Left = 288
    Top = 8
    object actCancel: TAction
      Caption = 'Cancel'
      ShortCut = 27
      OnExecute = actCancelExecute
    end
    object actLocalize: TAction
      Caption = 'actLocalize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
  end
end
