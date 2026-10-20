object MonitorOptionsForm: TMonitorOptionsForm
  Left = 414
  Top = 226
  HelpContext = 8900
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Monitor Trace Options'
  ClientHeight = 240
  ClientWidth = 184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object bOk: TButton
    Left = 8
    Top = 209
    Width = 79
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object bCancel: TButton
    Left = 96
    Top = 209
    Width = 79
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object cbConnect: TCheckBox
    Left = 8
    Top = 8
    Width = 163
    Height = 17
    Caption = 'Connect / Disconnect'
    TabOrder = 2
  end
  object cbPrepare: TCheckBox
    Left = 8
    Top = 40
    Width = 169
    Height = 17
    Caption = 'Prepare'
    TabOrder = 3
  end
  object cbExecute: TCheckBox
    Left = 8
    Top = 64
    Width = 169
    Height = 17
    Caption = 'Execute'
    TabOrder = 4
  end
  object cbFetch: TCheckBox
    Left = 8
    Top = 88
    Width = 169
    Height = 17
    Caption = 'Fetch'
    TabOrder = 5
  end
  object cbTransactions: TCheckBox
    Left = 8
    Top = 120
    Width = 169
    Height = 17
    Caption = 'Transactions'
    TabOrder = 6
  end
  object cbServices: TCheckBox
    Left = 8
    Top = 152
    Width = 169
    Height = 17
    Caption = 'Services'
    TabOrder = 7
  end
  object cbAPICalls: TCheckBox
    Left = 8
    Top = 183
    Width = 169
    Height = 17
    Caption = 'API Calls'
    TabOrder = 8
  end
  object ActionList1: TActionList
    Left = 128
    Top = 72
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
end
