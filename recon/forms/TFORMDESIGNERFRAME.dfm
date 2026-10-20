object FormDesignerFrame: TFormDesignerFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  Align = alClient
  TabOrder = 0
  object sbForm: TScrollBox
    Left = 0
    Top = 44
    Width = 435
    Height = 224
    Align = alClient
    Color = clAppWorkSpace
    ParentColor = False
    TabOrder = 0
  end
  object Palette: TIBEPageControl
    Left = 0
    Top = 0
    Width = 435
    Height = 44
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alTop
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    PageMargin = 0
    TabPosition = tpBottom
    TabSettings.RightMargin = 2
    TabSettings.Height = 24
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    TabOrder = 1
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
  end
  object pmObject: TPopupMenu
    OnPopup = pmObjectPopup
    Left = 130
    Top = 123
    object Newpage1: TMenuItem
      Action = actPCNewPage
    end
    object Deletepage1: TMenuItem
      Action = actPCDeletePage
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FirstItem1: TMenuItem
      Action = actBringToFront
    end
    object SecondItem1: TMenuItem
      Action = actSendToBack
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Cut1: TMenuItem
      Action = actCut
    end
    object Copy1: TMenuItem
      Action = actCopy
    end
    object Paste1: TMenuItem
      Action = actPaste
    end
  end
  object ActionList1: TActionList
    Left = 258
    Top = 99
    object actBringToFront: TAction
      Caption = 'Bring to Front'
      ImageIndex = 172
      OnExecute = actBringToFrontExecute
    end
    object actSendToBack: TAction
      Caption = 'Send to Back'
      ImageIndex = 173
      OnExecute = actSendToBackExecute
    end
    object actPCNewPage: TAction
      Caption = 'New page'
      Visible = False
      OnExecute = actPCNewPageExecute
    end
    object actPCDeletePage: TAction
      Caption = 'Delete page'
      Visible = False
      OnExecute = actPCDeletePageExecute
    end
    object actCopy: TAction
      Caption = 'Copy'
      ShortCut = 16451
      OnExecute = actCopyExecute
    end
    object actCut: TAction
      Caption = 'Cut'
      ShortCut = 16472
      OnExecute = actCutExecute
    end
    object actPaste: TAction
      Caption = 'Paste'
      ShortCut = 16470
      OnExecute = actPasteExecute
    end
  end
end
