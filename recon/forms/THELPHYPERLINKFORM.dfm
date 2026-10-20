object HelpHyperlinkForm: THelpHyperlinkForm
  Left = 322
  Top = 120
  Width = 465
  Height = 632
  HelpContext = 13500
  Caption = 'Select topic'
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
  object HelpTL: TdxTreeList
    Left = 0
    Top = 0
    Width = 457
    Height = 598
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
    Images = IBEMainForm.ImageList
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoAutoSort']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoHorzThrough', 'aoDragExpand', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowHeader = False
    GridLineColor = clSilver
    OnDblClick = HelpTLDblClick
    object tlcHelpItem: TdxTreeListColumn
      Caption = 'Object'
      DisableCustomizing = True
      DisableDragging = True
      MinWidth = 100
      VertAlignment = tlCenter
      Width = 236
      BandIndex = 0
      RowIndex = 0
    end
    object tlcHelpFile: TdxTreeListColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
    end
    object tlcHelpOrder: TdxTreeListColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
    end
  end
end
