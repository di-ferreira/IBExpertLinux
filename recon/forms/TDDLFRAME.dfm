object DDLFrame: TDDLFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 6000
  Align = alClient
  TabOrder = 0
  object EditFm: TEditFrame
    Top = 27
    Height = 241
    object EditM: TSQLMemo
      Height = 223
    end
    object pIncSearch: TPanel
      Top = 223
    end
  end
  object pOptions: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object cbDecodeDomains: TdxCheckEdit
      Left = 3
      Top = 3
      Width = 430
      TabOrder = 0
      Anchors = ['akLeft', 'akTop', 'akRight']
      Caption = '&Decode domains'
      StyleController = IBEMainForm.MainCheckSC
      OnChange = cbDecodeDomainsChange
      State = cbsChecked
    end
  end
end
