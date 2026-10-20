object VarViewForm: TVarViewForm
  Left = 1006
  Top = 318
  Width = 322
  Height = 408
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSizeToolWin
  Caption = 'VarViewForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter: TdfsSplitter
    Left = 0
    Top = 174
    Width = 306
    Height = 10
    Cursor = crVSplit
    Align = alBottom
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object tlArray: TdxTreeList
    Left = 0
    Top = 0
    Width = 306
    Height = 174
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alClient
    DragMode = dmAutomatic
    TabOrder = 0
    HideSelection = False
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
    TreeLineColor = clGrayText
    ShowGrid = True
    ShowRoot = False
    GridLineColor = clSilver
    OnCustomDrawCell = tlArrayCustomDrawCell
    OnChangeNode = tlArrayChangeNode
    OnCompare = tlArrayCompare
    object tlcIndex: TdxTreeListColumn
      Alignment = taRightJustify
      Caption = '#'
      HeaderAlignment = taRightJustify
      Width = 36
      BandIndex = 0
      RowIndex = 0
    end
    object tlcName: TdxTreeListColumn
      Caption = 'Named index'
      Width = 165
      BandIndex = 0
      RowIndex = 0
    end
    object tlcValue: TdxTreeListColumn
      Caption = 'Value'
      Width = 139
      BandIndex = 0
      RowIndex = 0
    end
  end
  object pValues: TPanel
    Left = 0
    Top = 184
    Width = 306
    Height = 188
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pValues'
    TabOrder = 1
    object tlValues: TdxTreeList
      Left = 0
      Top = 18
      Width = 306
      Height = 140
      Bands = <
        item
        end
      >
      DefaultLayout = True
      HeaderPanelRowCount = 1
      Align = alClient
      DragMode = dmAutomatic
      TabOrder = 0
      HideSelection = False
      LookAndFeel = lfFlat
      Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
      OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
      TreeLineColor = clGrayText
      ShowGrid = True
      ShowHeader = False
      ShowRoot = False
      GridLineColor = clSilver
      OnClick = tlValuesClick
      OnKeyPress = tlValuesKeyPress
      OnCustomDrawCell = tlValuesCustomDrawCell
      OnChangeNode = tlValuesChangeNode
      OnEdited = tlValuesEdited
      OnEditing = tlValuesEditing
      object tlcAs: TdxTreeListColumn
        Alignment = taLeftJustify
        Caption = '¹'
        DisableEditor = True
        Width = 169
        BandIndex = 0
        RowIndex = 0
      end
      object tlcValue2: TdxTreeListColumn
        Caption = 'Type'
        Width = 171
        BandIndex = 0
        RowIndex = 0
      end
      object tlcAsType: TdxTreeListColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
      object tlcDefault: TdxTreeListColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
      end
    end
    object pValuesHeader: TPanel
      Left = 0
      Top = 0
      Width = 306
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Values representation of'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 0
      Top = 158
      Width = 306
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object Button1: TButton
        Left = 4
        Top = 4
        Width = 101
        Height = 24
        Caption = 'Set as &NULL'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 111
        Top = 4
        Width = 111
        Height = 24
        Action = actLoadFromFile
        TabOrder = 1
      end
    end
  end
  object ActionList1: TActionList
    Left = 72
    Top = 40
    object actClose2: TAction
      Caption = 'Close'
      ShortCut = 27
      OnExecute = aV
    end
    object actLoadFromFile: TAction
      Caption = 'Load from file'
      Enabled = False
      Visible = False
      OnExecute = actLoadFromFileExecute
    end
  end
  object od: TOpenDialog
    DefaultExt = 'prm'
    Filter = 'All files (*.*)|*.*'
    Left = 113
    Top = 233
  end
end
