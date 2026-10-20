object frxSQLEditorForm: TfrxSQLEditorForm
  Left = 200
  Top = 107
  Width = 432
  Height = 307
  Caption = 'Lines'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 424
    Height = 35
    AutoSize = True
    BorderWidth = 2
    ButtonHeight = 23
    EdgeBorders = ['ebTop', 'ebBottom']
    Flat = True
    TabOrder = 0
    object QBB: TToolButton
      Left = 0
      Top = 0
      ImageIndex = 95
      Visible = False
      OnClick = QBBClick
    end
    object CancelB: TToolButton
      Left = 23
      Top = 0
      Hint = 'Cancel'
      ImageIndex = 55
      OnClick = CancelBClick
    end
    object OkB: TToolButton
      Left = 46
      Top = 0
      Hint = 'OK'
      ImageIndex = 56
      OnClick = OkBClick
    end
  end
end
