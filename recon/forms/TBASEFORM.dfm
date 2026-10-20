object BaseForm: TBaseForm
  Left = 605
  Top = 294
  Width = 634
  Height = 437
  Caption = 'BaseForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object BaseActions: TActionList
    Left = 432
    Top = 56
    object actNextPage: TAction
      Caption = 'Next page'
      ShortCut = 16418
      OnExecute = actNextPageExecute
    end
    object actPrevPage: TAction
      Caption = 'Previous page'
      ShortCut = 16417
      OnExecute = actPrevPageExecute
    end
  end
end
