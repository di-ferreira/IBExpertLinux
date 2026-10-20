object DesignerLayersForm: TDesignerLayersForm
  Left = 666
  Top = 220
  Width = 257
  Height = 417
  HelpContext = 14300
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSizeToolWin
  Caption = 'Layers'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 217
    Width = 241
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel1: TPanel
    Left = 0
    Top = 221
    Width = 241
    Height = 160
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object pMembers: TPanel
      Left = 0
      Top = 0
      Width = 241
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Members'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 0
    end
    object OTL: TdxTreeList
      Left = 0
      Top = 18
      Width = 241
      Height = 142
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
      Images = IBEMainForm.ImageList
      LookAndFeel = lfFlat
      Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
      OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
      TreeLineColor = clGrayText
      ShowRoot = False
      GridLineColor = clSilver
      OnClick = OTLClick
      OnDblClick = OTLDblClick
      OnKeyPress = OTLKeyPress
      OnCustomDrawCell = OTLCustomDrawCell
      object tlcObject: TdxTreeListColumn
        Caption = 'Object'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        MaxLength = 1000
        Sorted = csUp
        Width = 231
        BandIndex = 0
        RowIndex = 0
      end
      object tlcOn: TdxTreeListColumn
        Caption = 'M'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 28
        BandIndex = 0
        RowIndex = 0
      end
    end
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 22
    Width = 241
    Height = 195
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsLayers
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    PageMargin = 0
    TabSettings.RightMargin = 2
    TabSettings.Height = 24
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    TabOrder = 5
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsLayers: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 241
      Height = 170
      Caption = 'Layers'
      PageAppearance.BorderColor = 12697533
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = 15195349
      PageAppearance.ColorMirror = 15195349
      PageAppearance.ColorMirrorTo = 16513776
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clWhite
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object TL: TdxTreeList
        Left = 2
        Top = 2
        Width = 237
        Height = 166
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
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowRoot = False
        GridLineColor = clSilver
        OnClick = TLClick
        OnKeyPress = TLKeyPress
        OnMouseUp = TLMouseUp
        OnCustomDrawCell = TLCustomDrawCell
        OnChangeNode = TLChangeNode
        OnEdited = TLEdited
        object tlcVisible: TdxTreeListColumn
          Caption = 'V'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 28
          BandIndex = 0
          RowIndex = 0
        end
        object tlcLayer: TdxTreeListColumn
          Caption = 'Layer name'
          DisableCustomizing = True
          DisableDragging = True
          MaxLength = 1000
          Sorted = csDown
          Width = 231
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsSubjectAreas: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 241
      Height = 170
      Caption = 'Subject Areas'
      PageAppearance.BorderColor = 12697533
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = 15195349
      PageAppearance.ColorMirror = 15195349
      PageAppearance.ColorMirrorTo = 16513776
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = clNone
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clWhite
      TabAppearance.ColorMirrorDisabledTo = clSilver
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Segoe UI'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggRadial
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = 6050636
      TabAppearance.TextColorSelected = 6050636
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = 14077385
      TabAppearance.HighLightColor = 16775871
      TabAppearance.HighLightColorHot = 16250099
      TabAppearance.HighLightColorSelected = 6540536
      TabAppearance.HighLightColorSelectedHot = 12451839
      TabAppearance.HighLightColorDown = 16776144
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = 14537936
      TabAppearance.BackGround.Direction = gdHorizontal
      object AreasTL: TdxTreeList
        Left = 2
        Top = 2
        Width = 237
        Height = 166
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
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowHeader = False
        ShowRoot = False
        GridLineColor = clSilver
        OnMouseUp = AreasTLMouseUp
        OnChangeNode = AreasTLChangeNode
        OnEdited = AreasTLEdited
        OnEditing = AreasTLEditing
        object tlcArea: TdxTreeListColumn
          Caption = 'Subject Areas'
          DisableCustomizing = True
          DisableDragging = True
          MaxLength = 1000
          Width = 231
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object bm: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'Layers / Subject Areas'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Layers'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = True
      end
    >
    Categories.Strings = ['Default', 'Subject Areas']
    Categories.ItemsVisibles = [2, 2]
    Categories.Visibles = [True, True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 136
    Top = 64
    DockControlHeights = [0, 0, 22, 0]
    object dxBarButton1: TdxBarButton
      Action = actNewLayer
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actHideLayer
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actShowLayer
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actAddSelectionToLayer
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actRemoveSelectionFromLayer
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actRemoveLayer
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actShowAll
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton7: TdxBarButton
      Action = actNewSubjectArea
      Category = 1
    end
    object dxBarButton9: TdxBarButton
      Action = actAddSelectionToArea
      Category = 1
      Hint = 'Add Selection to Area'
    end
    object dxBarButton10: TdxBarButton
      Action = actRemoveSelectionFromArea
      Category = 1
    end
    object dxBarButton11: TdxBarButton
      Action = actRemoveCurrentArea
      Category = 1
      Hint = 'Remove Current Area'
    end
    object dxBarButton12: TdxBarButton
      Action = actMoveAreaUp
      Category = 1
    end
    object dxBarButton13: TdxBarButton
      Action = actMoveAreaDown
      Category = 1
    end
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionList1Update
    Left = 144
    Top = 112
    object actNewLayer: TAction
      Caption = 'New layer'
      OnExecute = actNewLayerExecute
    end
    object actHideLayer: TAction
      Caption = 'Hide layer'
      OnExecute = actHideLayerExecute
    end
    object actShowLayer: TAction
      Caption = 'Show layer'
      OnExecute = actShowLayerExecute
    end
    object actAddSelectionToLayer: TAction
      Caption = 'Add selection to layer'
      OnExecute = actAddSelectionToLayerExecute
    end
    object actRemoveSelectionFromLayer: TAction
      Caption = 'Remove selection from layer'
      OnExecute = actRemoveSelectionFromLayerExecute
    end
    object actRemoveLayer: TAction
      Caption = 'Remove layer'
      OnExecute = actRemoveLayerExecute
    end
    object actShowAll: TAction
      Caption = 'Show all'
      Hint = 'Show all'
      ImageIndex = 158
      OnExecute = actShowAllExecute
    end
    object actNewSubjectArea: TAction
      Caption = 'New Subject Area'
      ImageIndex = 195
      OnExecute = actNewSubjectAreaExecute
    end
    object actAddSelectionToArea: TAction
      Caption = 'Add Selection to Area'
      Visible = False
      OnExecute = actAddSelectionToAreaExecute
    end
    object actRemoveSelectionFromArea: TAction
      Caption = 'Remove selection from area'
      Visible = False
      OnExecute = actRemoveSelectionFromAreaExecute
    end
    object actRemoveCurrentArea: TAction
      Caption = 'Remove Current Area'
      ImageIndex = 196
      OnExecute = actRemoveCurrentAreaExecute
    end
    object actMoveAreaUp: TAction
      Caption = 'Move area up'
      Hint = 'Move area up'
      ImageIndex = 101
      OnExecute = actMoveAreaUpExecute
    end
    object actMoveAreaDown: TAction
      Caption = 'Move area down'
      Hint = 'Move area down'
      ImageIndex = 102
      OnExecute = actMoveAreaDownExecute
    end
  end
  object pm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton1
        Visible = True
      end
      item
        Item = dxBarButton6
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton4
        Visible = True
      end
      item
        Item = dxBarButton5
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton3
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton2
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 40
    Top = 72
  end
  object pmAreas: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton7
        Visible = True
      end
      item
        Item = dxBarButton11
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton9
        Visible = True
      end
      item
        Item = dxBarButton10
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 40
    Top = 112
  end
end
