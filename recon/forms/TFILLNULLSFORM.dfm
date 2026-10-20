object FillNullsForm: TFillNullsForm
  Left = 416
  Top = 274
  HelpContext = 8800
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Fill NOT NULL Field'
  ClientHeight = 330
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 292
    Width = 362
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 362
      Height = 5
      Align = alTop
      Shape = bsBottomLine
    end
    object bOk: TButton
      Left = 196
      Top = 9
      Width = 75
      Height = 25
      Action = actOK
      ModalResult = 1
      TabOrder = 0
    end
    object bCancel: TButton
      Left = 280
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object m: TMemo
    Tag = 1000
    Left = 0
    Top = 0
    Width = 362
    Height = 81
    TabStop = False
    Align = alTop
    Alignment = taCenter
    BorderStyle = bsNone
    Color = clBtnFace
    Lines.Strings = ['', 'You have added NOT NULL field(s) to the existing table.', 'Because table %s has some records already you should', 'fill new field(s) with some value.', 'Please enter neccessary values and press OK.']
    ReadOnly = True
    TabOrder = 1
  end
  object pString: TPanel
    Left = 0
    Top = 81
    Width = 362
    Height = 211
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object tlFields: TdxTreeList
      Left = 0
      Top = 38
      Width = 362
      Height = 173
      Bands = <
        item
        end
      >
      DefaultLayout = True
      HeaderPanelRowCount = 1
      Align = alClient
      TabOrder = 0
      Options = ['aoColumnSizing', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoAutoWidth']
      OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoEnterShowEditor', 'aoDragScroll', 'aoDragExpand']
      TreeLineColor = clGrayText
      ShowButtons = False
      ShowGrid = True
      ShowLines = False
      ShowRoot = False
      object tlcField: TdxTreeListColumn
        Caption = 'Field'
        DisableEditor = True
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
      end
      object tlcValue: TdxTreeListColumn
        Caption = 'Value'
        BandIndex = 0
        RowIndex = 0
      end
    end
    object mNote: TMemo
      Tag = 1000
      Left = 0
      Top = 0
      Width = 362
      Height = 38
      TabStop = False
      Align = alTop
      Alignment = taCenter
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = ['', 'Note: String and date/time values must be quoted!']
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Left = 264
    Top = 24
    object actOK: TAction
      Caption = 'OK'
      OnExecute = actOKExecute
      OnUpdate = actOKUpdate
    end
  end
end
