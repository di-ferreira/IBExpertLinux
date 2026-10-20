object frmPrintMetadata: TfrmPrintMetadata
  Left = 234
  Top = 117
  Width = 733
  Height = 820
  HelpContext = 3500
  BorderIcons = ['biSystemMenu', 'biMinimize', 'biMaximize', 'biHelp']
  Caption = 'Print Metadata'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TIBEPageControl
    Left = 0
    Top = 26
    Width = 717
    Height = 758
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsSelect
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    PageMargin = 0
    TabSettings.RightMargin = 2
    TabSettings.Height = 0
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    TabOrder = 4
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsSelect: TAdvOfficePage
      Left = 0
      Top = 0
      Width = 717
      Height = 757
      Caption = 'tsSelect'
      PageAppearance.BorderColor = clNone
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
      object SelFm: TSelectObjectsTreeFrame
        Left = 2
        Top = 27
        Width = 713
        Height = 728
        object Panel4: TPanel
          Width = 713
          Height = 728
          object ATL: TdxTreeList
            Height = 728
          end
          object pButtons: TPanel
            Height = 728
            object Panel5: TPanel
              Height = 728
            end
            object TBDock1: TTBDock
              Height = 728
            end
          end
          object Panel1: TPanel
            Width = 420
            Height = 728
            object ITL: TdxTreeList
              Width = 420
              Height = 620
            end
            object pPrintOptions: TPanel
              Top = 620
              Width = 420
              object Panel2: TPanel
                Width = 418
              end
            end
          end
        end
      end
      object TBDock1: TTBDock
        Left = 2
        Top = 2
        Width = 713
        Height = 25
        object TBToolbar1: TTBToolbar
          Left = 0
          Top = 0
          Align = alTop
          BorderStyle = bsNone
          Caption = 'TBToolbar1'
          DragHandleStyle = dhNone
          FullSize = True
          Images = IBEMainForm.ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object TBControlItem1: TTBControlItem
            Control = SelAllC
          end
          object TBSeparatorItem1: TTBSeparatorItem
          end
          object TBItem1: TTBItem
            Action = actAddRelated
          end
          object SelAllC: TdxCheckEdit
            Left = 0
            Top = 0
            Width = 273
            TabOrder = 0
            Caption = 'Print &all'
            StyleController = IBEMainForm.MainCheckSC
            OnChange = SelAllCChange
          end
        end
      end
    end
    object tsCancel: TAdvOfficePage
      Left = 0
      Top = 0
      Width = 717
      Height = 757
      Caption = 'tsCancel'
      PageAppearance.BorderColor = clNone
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
      object pProgress: TPanel
        Left = 2
        Top = 2
        Width = 713
        Height = 753
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Building report... Press Escape to cancel'
        TabOrder = 0
      end
    end
  end
  object ActionList: TActionList
    Images = IBEMainForm.ImageList
    OnUpdate = ActionListUpdate
    Left = 683
    Top = 12
    object aPrint: TAction
      Caption = 'Print'
      Hint = 'Print'
      ImageIndex = 25
      OnExecute = aPrintExecute
    end
    object aPreview: TAction
      Caption = 'Preview'
      Hint = 'Preview'
      ImageIndex = 41
      OnExecute = aPreviewExecute
    end
    object actAddRelated: TAction
      Caption = 'Add related objects'
      OnExecute = actAddRelatedExecute
      OnUpdate = actAddRelatedUpdate
    end
    object actSelectAll: TAction
      Caption = 'Select All'
    end
    object actStop: TAction
      Caption = 'Cancel'
      Enabled = False
      Hint = 'Cancel report building'
      ImageIndex = 83
      ShortCut = 27
      Visible = False
      OnExecute = actStopExecute
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
        AllowReset = False
        Caption = 'Print metadata'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 127
        FloatClientHeight = 19
        ItemLinks = None
        Name = 'Print metadata'
        NotDocking = ['dsNone', 'dsLeft', 'dsRight', 'dsBottom']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end
    >
    Categories.Strings = ['Default']
    Categories.ItemsVisibles = [2]
    Categories.Visibles = [True]
    Images = IBEMainForm.ImageList
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 360
    Top = 96
    DockControlHeights = [0, 0, 26, 0]
    object bliDatabases: TdxBarSubItem
      Caption = '(No active connection)'
      Category = 0
      Visible = ivAlways
      ImageIndex = 0
      OnClick = bliDatabasesClick
      ItemLinks = []
    end
    object dxBarButton8: TdxBarButton
      Action = aPreview
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton9: TdxBarButton
      Action = aPrint
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton1: TdxBarButton
      Action = actStop
      Category = 0
      UnclickAfterDoing = False
    end
    object siProgress1: TdxBarStatic
      Caption = 'Pages prepared:'
      Category = 0
      Hint = 'Pages prepared:'
      Visible = ivNever
    end
    object siProgress2: TdxBarStatic
      Caption = '1'
      Category = 0
      Hint = '1'
      Visible = ivNever
    end
  end
end
