object frmSMIProcess: TfrmSMIProcess
  Left = 210
  Top = 192
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsDialog
  ClientHeight = 130
  ClientWidth = 442
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel: TBevel
    Left = 0
    Top = 0
    Width = 442
    Height = 130
    Shape = bsFrame
    Style = bsRaised
  end
  object lblStatus: TLabel
    Left = 8
    Top = 56
    Width = 339
    Height = 13
    AutoSize = False
    Transparent = True
  end
  object ProgressBar: TProgressBar
    Left = 10
    Top = 70
    Width = 337
    Height = 10
    Min = 0
    Max = 100
    TabOrder = 0
    Visible = False
  end
  object btnCancel: TButton
    Left = 355
    Top = 70
    Width = 75
    Height = 25
    Cursor = crArrow
    Cancel = True
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object pnlCounters: TPanel
    Left = 10
    Top = 83
    Width = 337
    Height = 43
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object lblProcessed: TLabel
      Left = 200
      Top = 15
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Processed:'
      Transparent = True
    end
    object lblTotalImported: TLabel
      Left = 272
      Top = 15
      Width = 57
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblAdded: TLabel
      Left = 8
      Top = 1
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Added:'
      Transparent = True
    end
    object lblTotalAdded: TLabel
      Left = 80
      Top = 1
      Width = 57
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblTotalDeleted: TLabel
      Left = 80
      Top = 29
      Width = 57
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblDeleted: TLabel
      Left = 8
      Top = 29
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Deleted:'
      Transparent = True
    end
    object lblUpdated: TLabel
      Left = 8
      Top = 15
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Updated:'
      Transparent = True
    end
    object lblTotalUpdated: TLabel
      Left = 80
      Top = 15
      Width = 57
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblErrors: TLabel
      Left = 200
      Top = 1
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Errors:'
      Transparent = True
    end
    object lblTotalErrors: TLabel
      Left = 272
      Top = 1
      Width = 57
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblSkipped: TLabel
      Left = 200
      Top = 29
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Skipped:'
      Transparent = True
    end
    object lblTotalSkipped: TLabel
      Left = 272
      Top = 29
      Width = 57
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object btnPause: TButton
    Left = 355
    Top = 100
    Width = 75
    Height = 25
    Caption = 'Pause'
    TabOrder = 3
    OnClick = btnPauseClick
  end
end
