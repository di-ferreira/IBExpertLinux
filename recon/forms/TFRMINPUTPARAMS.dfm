object frmInputParams: TfrmInputParams
  Left = 493
  Top = 240
  Width = 595
  Height = 469
  HelpContext = 5200
  BorderIcons = ['biSystemMenu', 'biMaximize']
  Caption = 'Input Parameters '
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TdfsSplitter
    Left = 0
    Top = 264
    Width = 579
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel2: TPanel
    Left = 0
    Top = 397
    Width = 579
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object OkB: TButton
      Left = 419
      Top = 6
      Width = 75
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object CancelB: TButton
      Left = 502
      Top = 6
      Width = 75
      Height = 25
      Anchors = ['akTop', 'akRight']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object pHistory: TPanel
    Left = 0
    Top = 268
    Width = 579
    Height = 129
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pHistory'
    TabOrder = 1
    object TL: TdxTreeList
      Left = 0
      Top = 18
      Width = 579
      Height = 111
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
      Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoHideFocusRect']
      OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoFullSizing', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
      TreeLineColor = clGrayText
      ShowGrid = True
      ShowRoot = False
      GridLineColor = clSilver
      OnClick = TLClick
      OnDblClick = TLDblClick
      OnKeyUp = TLKeyUp
      OnMouseUp = TLMouseUp
      OnCustomDrawCell = TLCustomDrawCell
      OnChangeNode = TLChangeNode
      OnDeletion = TLDeletion
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 579
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Parameters History'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 1
    end
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 26
    Width = 579
    Height = 238
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsParams
    ButtonSettings.PageListButtonHint = 'Page List'
    ShowShortCutHints = False
    OnChange = PagesChange
    TabOrder = 6
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsParams: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 577
      Height = 210
      Caption = 'Parameters'
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
      object Panel1: TPanel
        Left = 2
        Top = 2
        Width = 573
        Height = 206
        Align = alClient
        BevelOuter = bvLowered
        Caption = 'Panel1'
        TabOrder = 0
        object pHeader: TPanel
          Left = 1
          Top = 1
          Width = 571
          Height = 17
          Align = alTop
          BevelOuter = bvNone
          Caption = 'pHeader'
          TabOrder = 0
          OnResize = pHeaderResize
          object HC: THeaderControl
            Left = 0
            Top = 0
            Width = 568
            Height = 17
            Align = alNone
            DragReorder = False
            Sections = <
              item
                ImageIndex = -1
                MinWidth = 100
                Text = 'Name'
                Width = 150
              end
              item
                ImageIndex = -1
                MinWidth = 50
                Text = 'Type'
                Width = 70
              end
              item
                Alignment = taCenter
                ImageIndex = -1
                MinWidth = 30
                Text = 'Null'
                Width = 40
              end
              item
                ImageIndex = -1
                MinWidth = 100
                Text = 'Value'
                Width = 300
              end
              item
                ImageIndex = -1
                Text = 'Description'
                Width = 200
              end
            >
            OnSectionEndDrag = HCSectionEndDrag
            OnSectionResize = HCSectionResize
          end
        end
      end
    end
    object tsSQL: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 577
      Height = 210
      Caption = '  SQL  '
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
      object EditFm: TEditFrame
        Left = 2
        Top = 2
        Width = 573
        Height = 206
        object EditM: TSQLMemo
          Width = 573
          Height = 188
        end
        object pIncSearch: TPanel
          Top = 188
          Width = 573
        end
      end
    end
  end
  object od: TOpenDialog
    DefaultExt = 'prm'
    Filter = 'Parameter''s files (*.prm)|*.prm'
    Left = 57
    Top = 105
  end
  object sd: TSaveDialog
    DefaultExt = 'prm'
    Filter = 'Parameter''s files (*.prm)|*.prm'
    Left = 89
    Top = 105
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionList1Update
    Left = 305
    Top = 57
    object actSaveToFile: TAction
      Caption = 'Save to file'
      Hint = 'Save Parameters to File'
      ImageIndex = 29
      ShortCut = 16467
      OnExecute = actSaveToFileExecute
    end
    object actLoadFromFile: TAction
      Caption = 'Load from file'
      Hint = 'Load Parameters from File'
      ImageIndex = 41
      ShortCut = 16460
      OnExecute = actLoadFromFileExecute
    end
    object actExecute: TAction
      Caption = 'Execute'
      Hint = 'Execute'
      ImageIndex = 56
      ShortCut = 120
      OnExecute = actExecuteExecute
    end
    object actCreateHistoryTable: TAction
      Caption = 'Create Parameters History Table'
      OnExecute = actCreateHistoryTableExecute
    end
    object actDeleteParams: TAction
      Caption = 'Delete'
      ShortCut = 46
      OnExecute = actDeleteParamsExecute
    end
    object actClearAllHistory: TAction
      Caption = 'Clear All History'
      ShortCut = 24622
      OnExecute = actClearAllHistoryExecute
    end
    object actLocalize: TAction
      Caption = 'actLocalize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actCopyToClipboard: TAction
      Caption = 'Copy to clipboard'
      ImageIndex = 48
      ShortCut = 24643
      OnExecute = actCopyToClipboardExecute
    end
    object actPasteFromClipboard: TAction
      Caption = 'Paste from clipboard'
      ImageIndex = 49
      ShortCut = 24662
      OnExecute = actPasteFromClipboardExecute
      OnUpdate = actPasteFromClipboardUpdate
    end
    object actExecute2: TAction
      Caption = 'actExecute2'
      ShortCut = 16397
      OnExecute = actExecuteExecute
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
        Caption = 'Input Parameters'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Input Parameters'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default']
    Categories.ItemsVisibles = [2]
    Categories.Visibles = [True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 393
    Top = 65
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = actLoadFromFile
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton2: TdxBarButton
      Action = actSaveToFile
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton3: TdxBarButton
      Action = actExecute
      Category = 0
      UnclickAfterDoing = False
    end
    object bbCreatePHTable: TdxBarButton
      Action = actCreateHistoryTable
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton5: TdxBarButton
      Action = actClearAllHistory
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actDeleteParams
      Category = 0
    end
    object bsiParameters: TdxBarSubItem
      Caption = 'Parameters'
      Category = 0
      Visible = ivAlways
      ImageIndex = 135
      ItemLinks = <
        item
          Item = dxBarButton1
          Visible = True
        end
        item
          Item = dxBarButton2
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton4
          Visible = True
        end
        item
          Item = dxBarButton7
          Visible = True
        end
      >
    end
    object dxBarButton4: TdxBarButton
      Action = actCopyToClipboard
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actPasteFromClipboard
      Category = 0
    end
  end
  object pm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton6
        Visible = True
      end
      item
        Item = dxBarButton5
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 288
    Top = 337
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 264
    Top = 194
  end
end
