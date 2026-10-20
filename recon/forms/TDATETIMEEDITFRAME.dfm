object DateTimeEditFrame: TDateTimeEditFrame
  Left = 0
  Top = 0
  Width = 188
  Height = 21
  HelpContext = 5300
  AutoSize = True
  TabOrder = 0
  object DateEdit: TdxDateEdit
    Left = 0
    Top = 0
    Width = 105
    TabOrder = 0
    StyleController = IBEMainForm.MainSC
    OnChange = DateEditChange
    Date = -700000
    SaveTime = False
    OnDateChange = DateEditDateChange
  end
  object TimeEdit: TdxTimeEdit
    Left = 104
    Top = 0
    Width = 84
    TabOrder = 1
    StyleController = IBEMainForm.MainSC
    OnChange = DateEditChange
    StoredValues = 4
  end
end
