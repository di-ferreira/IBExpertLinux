object PEDBGridColumnsForm: TPEDBGridColumnsForm
  Left = 435
  Top = 272
  Width = 374
  Height = 381
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSizeToolWin
  Caption = 'PEDBGridColumnsForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TBDock1: TTBDock
    Left = 0
    Top = 0
    Width = 366
    Height = 26
    object TBToolbar1: TTBToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'TBToolbar1'
      DockMode = dmCannotFloat
      DragHandleStyle = dhNone
      Images = IBEMainForm.MenuImages
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object TBItem4: TTBItem
        ImageIndex = 116
        OnClick = TBItem4Click
      end
      object TBItem2: TTBItem
      end
      object TBItem3: TTBItem
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object TBItem1: TTBItem
      end
      object TBItem5: TTBItem
      end
    end
  end
  object TL: TdxTreeList
    Left = 0
    Top = 26
    Width = 366
    Height = 321
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alClient
    DragMode = dmAutomatic
    TabOrder = 1
    HideSelection = False
    Images = IBEMainForm.MenuImages
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowRoot = False
    GridLineColor = clSilver
    OnCustomDrawCell = TLCustomDrawCell
    OnChangeNode = TLChangeNode
    OnSelectedCountChange = TLSelectedCountChange
    object tlcNum: TdxTreeListColumn
      Alignment = taRightJustify
      Caption = '#'
      HeaderAlignment = taRightJustify
      Width = 26
      BandIndex = 0
      RowIndex = 0
    end
    object tlcDisplayName: TdxTreeListColumn
      Caption = 'Display Name'
      DisableCustomizing = True
      DisableDragging = True
      MaxLength = 1000
      Width = 106
      BandIndex = 0
      RowIndex = 0
    end
    object tlcCaption: TdxTreeListColumn
      Caption = 'Caption'
      Width = 99
      BandIndex = 0
      RowIndex = 0
    end
    object tlcFieldName: TdxTreeListColumn
      Caption = 'Field Name'
      Width = 108
      BandIndex = 0
      RowIndex = 0
    end
  end
end
