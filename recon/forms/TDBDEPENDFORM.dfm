object DBDependForm: TDBDependForm
  Left = 622
  Top = 303
  Width = 634
  Height = 437
  HelpContext = 5600
  Caption = 'DBDependForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbdfCMLeftPanel: TPanel
    Left = 0
    Top = 2
    Width = 2
    Height = 397
    Align = alLeft
    BevelOuter = bvNone
    Color = clRed
    TabOrder = 0
    Visible = False
  end
  object dbdfCMRightPanel: TPanel
    Left = 616
    Top = 2
    Width = 2
    Height = 397
    Align = alRight
    BevelOuter = bvNone
    Color = clRed
    TabOrder = 1
    Visible = False
  end
  object dbdfCMTopPanel: TPanel
    Left = 0
    Top = 0
    Width = 618
    Height = 2
    Align = alTop
    BevelOuter = bvNone
    Color = clRed
    TabOrder = 2
    Visible = False
  end
  object dbdfCMBottomPanel: TPanel
    Left = 0
    Top = 399
    Width = 618
    Height = 2
    Align = alBottom
    BevelOuter = bvNone
    Color = clRed
    TabOrder = 3
    Visible = False
  end
  object ActionList1: TActionList
    Left = 568
    Top = 32
    object aResize: TAction
      Caption = 'aResize'
      OnExecute = aResizeExecute
    end
  end
end
