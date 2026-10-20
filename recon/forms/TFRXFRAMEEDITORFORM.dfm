object frxFrameEditorForm: TfrxFrameEditorForm
  Left = 179
  Top = 110
  BorderStyle = bsDialog
  Caption = 'Edit Frame'
  ClientHeight = 147
  ClientWidth = 223
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FrameL: TLabel
    Left = 8
    Top = 12
    Width = 54
    Height = 13
    Caption = 'Frame lines'
  end
  object LineL: TLabel
    Left = 8
    Top = 44
    Width = 45
    Height = 13
    Caption = 'Line style'
  end
  object ShadowL: TLabel
    Left = 8
    Top = 76
    Width = 38
    Height = 13
    Caption = 'Shadow'
  end
  object Bevel1: TBevel
    Left = 4
    Top = 108
    Width = 215
    Height = 2
  end
  object OkB: TButton
    Left = 60
    Top = 116
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelB: TButton
    Left = 140
    Top = 116
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object ToolBar1: TToolBar
    Left = 72
    Top = 8
    Width = 149
    Height = 22
    Align = alNone
    ButtonWidth = 22
    EdgeBorders = []
    Flat = True
    TabOrder = 2
    object FrameTopB: TToolButton
      Tag = 1
      Left = 0
      Top = 0
      AllowAllUp = True
      ImageIndex = 32
      Style = tbsCheck
      OnClick = BClick
    end
    object FrameBottomB: TToolButton
      Tag = 2
      Left = 22
      Top = 0
      AllowAllUp = True
      ImageIndex = 33
      Style = tbsCheck
      OnClick = BClick
    end
    object FrameLeftB: TToolButton
      Tag = 3
      Left = 44
      Top = 0
      AllowAllUp = True
      ImageIndex = 34
      Style = tbsCheck
      OnClick = BClick
    end
    object FrameRightB: TToolButton
      Tag = 4
      Left = 66
      Top = 0
      AllowAllUp = True
      ImageIndex = 35
      Style = tbsCheck
      OnClick = BClick
    end
    object Sep1: TToolButton
      Left = 88
      Top = 0
      Width = 8
      ImageIndex = 0
      Style = tbsSeparator
    end
    object FrameAllB: TToolButton
      Tag = 5
      Left = 96
      Top = 0
      ImageIndex = 36
      OnClick = BClick
    end
    object FrameNoB: TToolButton
      Tag = 6
      Left = 118
      Top = 0
      ImageIndex = 37
      OnClick = BClick
    end
  end
  object ToolBar2: TToolBar
    Left = 72
    Top = 40
    Width = 93
    Height = 23
    Align = alNone
    ButtonHeight = 23
    EdgeBorders = []
    Flat = True
    TabOrder = 3
    object FrameColorB: TToolButton
      Tag = 7
      Left = 0
      Top = 0
      ImageIndex = 39
      OnClick = BClick
    end
    object FrameStyleB: TToolButton
      Tag = 8
      Left = 23
      Top = 0
      ImageIndex = 40
      OnClick = BClick
    end
    object Sep2: TfrxTBPanel
      Left = 46
      Top = 0
      Width = 47
      Height = 23
      Align = alLeft
      TabOrder = 0
      object FrameWidthCB: TfrxComboBox
        Tag = 9
        Left = 5
        Top = 2
        Width = 40
        Height = 19
        ItemHeight = 13
        Items.Strings = ['0,1', '0,5', '1', '1,5', '2', '3', '4', '5', '6', '7', '8', '9', '10']
        ListWidth = 0
        TabOrder = 0
        Text = ' '
        ItemIndex = -1
        OnClick = BClick
      end
    end
  end
  object ToolBar3: TToolBar
    Left = 72
    Top = 72
    Width = 93
    Height = 23
    Align = alNone
    ButtonHeight = 23
    EdgeBorders = []
    Flat = True
    TabOrder = 4
    object ShadowB: TToolButton
      Tag = 10
      Left = 0
      Top = 0
      AllowAllUp = True
      ImageIndex = 60
      Style = tbsCheck
      OnClick = BClick
    end
    object ShadowColorB: TToolButton
      Tag = 11
      Left = 23
      Top = 0
      ImageIndex = 39
      OnClick = BClick
    end
    object Sep3: TfrxTBPanel
      Left = 46
      Top = 0
      Width = 47
      Height = 23
      Align = alLeft
      TabOrder = 0
      object ShadowWidthCB: TfrxComboBox
        Tag = 12
        Left = 5
        Top = 2
        Width = 40
        Height = 19
        ItemHeight = 13
        Items.Strings = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']
        ListWidth = 0
        TabOrder = 0
        Text = ' '
        ItemIndex = -1
        OnClick = BClick
      end
    end
  end
end
