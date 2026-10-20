object fmZoom: TfmZoom
  Left = 341
  Top = 192
  BorderStyle = bsDialog
  Caption = 'Zoom'
  ClientHeight = 263
  ClientWidth = 428
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TButton
    Left = 187
    Top = 235
    Width = 75
    Height = 23
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object btnCancel: TButton
    Left = 268
    Top = 235
    Width = 75
    Height = 23
    Cancel = True
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object gbxPreview: TGroupBox
    Left = 193
    Top = 4
    Width = 230
    Height = 223
    Caption = ' Preview '
    TabOrder = 1
    object bvlFontPreviewHolder: TBevel
      Left = 8
      Top = 176
      Width = 214
      Height = 39
      Visible = False
    end
    object bvlPreviewHolder: TBevel
      Left = 24
      Top = 23
      Width = 183
      Height = 123
      Visible = False
    end
    object Panel1: TPanel
      Left = 2
      Top = 162
      Width = 226
      Height = 2
      BevelOuter = bvLowered
      TabOrder = 0
    end
    object stxtFontPreview: TStaticText
      Left = 9
      Top = 157
      Width = 125
      Height = 17
      Caption = ' 10 pt Times New Roman '
      TabOrder = 1
    end
  end
  object btnHelp: TButton
    Left = 349
    Top = 235
    Width = 75
    Height = 23
    Caption = '&Help'
    TabOrder = 4
  end
  object gbxZoomTo: TGroupBox
    Left = 5
    Top = 4
    Width = 185
    Height = 223
    Caption = ' &Zoom To '
    TabOrder = 0
    object lblPercent: TLabel
      Left = 9
      Top = 198
      Width = 47
      Height = 13
      Caption = 'P&ercent : '
      OnClick = lblPercentClick
    end
    object bvlPercentHolder: TBevel
      Left = 58
      Top = 195
      Width = 87
      Height = 21
      Visible = False
    end
    object rbtn500: TRadioButton
      Left = 8
      Top = 21
      Width = 49
      Height = 17
      Caption = '500 %'
      TabOrder = 0
      OnClick = rbtnClick
    end
    object rbtn200: TRadioButton
      Tag = 1
      Left = 8
      Top = 40
      Width = 49
      Height = 17
      Caption = '&200 %'
      TabOrder = 1
      OnClick = rbtnClick
    end
    object rbtn150: TRadioButton
      Tag = 2
      Left = 8
      Top = 60
      Width = 49
      Height = 17
      Caption = '150 %'
      TabOrder = 2
      OnClick = rbtnClick
    end
    object rbtn100: TRadioButton
      Tag = 3
      Left = 8
      Top = 79
      Width = 49
      Height = 17
      Caption = '&100 %'
      TabOrder = 3
      OnClick = rbtnClick
    end
    object rbtn75: TRadioButton
      Tag = 4
      Left = 8
      Top = 99
      Width = 49
      Height = 17
      Caption = '&75 %'
      TabOrder = 4
      OnClick = rbtnClick
    end
    object rbtn50: TRadioButton
      Tag = 5
      Left = 8
      Top = 118
      Width = 49
      Height = 17
      Caption = '&50 %'
      TabOrder = 5
      OnClick = rbtnClick
    end
    object rbtn10: TRadioButton
      Tag = 7
      Left = 8
      Top = 157
      Width = 49
      Height = 17
      Caption = '10 %'
      TabOrder = 7
      OnClick = rbtnClick
    end
    object rbtn25: TRadioButton
      Tag = 6
      Left = 8
      Top = 138
      Width = 49
      Height = 17
      Caption = '25 %'
      TabOrder = 6
      OnClick = rbtnClick
    end
    object rbtnTwoPages: TRadioButton
      Tag = 10
      Left = 76
      Top = 60
      Width = 81
      Height = 17
      Caption = '&Two Pages'
      TabOrder = 10
      OnClick = rbtnClick
    end
    object rbtnWholePage: TRadioButton
      Tag = 9
      Left = 76
      Top = 41
      Width = 81
      Height = 17
      Caption = 'W&hole Page'
      TabOrder = 9
      OnClick = rbtnClick
    end
    object rbtnPageWidth: TRadioButton
      Tag = 8
      Left = 76
      Top = 22
      Width = 81
      Height = 17
      Caption = 'Page &Width'
      TabOrder = 8
      OnClick = rbtnClick
    end
    object rbtnFourPages: TRadioButton
      Tag = 11
      Left = 76
      Top = 79
      Width = 81
      Height = 17
      Caption = '&Four Pages'
      TabOrder = 11
      OnClick = rbtnClick
    end
    object rbtnManyPages: TRadioButton
      Tag = 12
      Left = 76
      Top = 98
      Width = 91
      Height = 17
      Caption = '&Many Pages:'
      TabOrder = 12
      OnClick = rbtnClick
    end
    object btnManyPages: TBitBtn
      Left = 122
      Top = 119
      Width = 45
      Height = 44
      TabOrder = 13
      OnClick = btnManyPagesClick
      Glyph.Data = {802 bytes}
      Layout = blGlyphBottom
      Spacing = 0
    end
  end
  object ilStub: TImageList
    Left = 5
    Top = 233
    Bitmap = {712 bytes}
  end
end
