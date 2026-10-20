object IBEForm: TIBEForm
  Left = 610
  Top = 294
  Width = 634
  Height = 437
  HelpContext = 14400
  Caption = 'IBEForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object IBEFormActions: TActionList
    Left = 464
    Top = 40
    object actClose: TAction
      Caption = 'Close'
      ShortCut = 16499
      OnExecute = actCloseExecute
    end
  end
end
