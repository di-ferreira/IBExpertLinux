object frxMemoEditorForm: TfrxMemoEditorForm
  Left = 200
  Top = 107
  Width = 469
  Height = 176
  Caption = 'Memo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  ShowHint = True
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 461
    Height = 35
    AutoSize = True
    BorderWidth = 2
    ButtonHeight = 23
    EdgeBorders = ['ebTop', 'ebBottom']
    Flat = True
    TabOrder = 0
    object ExprB: TToolButton
      Left = 0
      Top = 0
      Hint = 'Insert Expression'
      ImageIndex = 70
      OnClick = ExprBClick
    end
    object AggregateB: TToolButton
      Left = 23
      Top = 0
      ImageIndex = 85
      OnClick = AggregateBClick
    end
    object LocalFormatB: TToolButton
      Left = 46
      Top = 0
      ImageIndex = 86
      OnClick = LocalFormatBClick
    end
    object WordWrapB: TToolButton
      Left = 69
      Top = 0
      Hint = 'Word Wrap'
      AllowAllUp = True
      ImageIndex = 25
      Style = tbsCheck
      OnClick = WordWrapBClick
    end
    object ToolButton2: TToolButton
      Left = 92
      Top = 0
      Width = 10
      ImageIndex = 87
      Style = tbsSeparator
    end
    object CancelB: TToolButton
      Left = 102
      Top = 0
      Hint = 'Cancel'
      ImageIndex = 55
      OnClick = CancelBClick
    end
    object OkB: TToolButton
      Left = 125
      Top = 0
      Hint = 'OK'
      ImageIndex = 56
      OnClick = OkBClick
    end
  end
end
