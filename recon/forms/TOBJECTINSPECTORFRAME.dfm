object ObjectInspectorFrame: TObjectInspectorFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  Align = alClient
  TabOrder = 0
  OnResize = FrameResize
  object dxPageControl1: TIBEPageControl
    Left = 0
    Top = 33
    Width = 435
    Height = 235
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsProperties
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
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsProperties: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 435
      Height = 210
      Caption = 'Properties'
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
      object PTL: TdxTreeList
        Left = 2
        Top = 2
        Width = 431
        Height = 206
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        TabOrder = 0
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoHideFocusRect']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoRowAutoHeight', 'aoAutoSortRefresh']
        PaintStyle = psOutlook
        TreeLineColor = clGrayText
        ScrollBars = ssVertical
        ShowButtons = False
        ShowGrid = True
        ShowHeader = False
        ShowLines = False
        GridLineColor = clSilver
        OnClick = PTLClick
        OnDblClick = PTLDblClick
        OnEnter = PTLEnter
        OnMouseDown = PTLMouseDown
        OnMouseMove = PTLMouseMove
        OnMouseUp = PTLMouseUp
        OnCustomDrawCell = PTLCustomDrawCell
        OnChangeNode = PTLChangeNode
        OnDeletion = PTLDeletion
        OnEdited = PTLEdited
        object tlcProperty: TdxTreeListColumn
          Caption = 'Property'
          DisableEditor = True
          ReadOnly = True
          Width = 109
          BandIndex = 0
          RowIndex = 0
        end
        object tlcValue: TdxTreeListColumn
          Caption = 'Value'
          Width = 129
          BandIndex = 0
          RowIndex = 0
        end
        object tlcOldValue: TdxTreeListColumn
          Visible = False
          Width = 93
          BandIndex = 0
          RowIndex = 0
        end
      end
      object ColorPanel: TPanel
        Left = 112
        Top = 9
        Width = 182
        Height = 288
        BevelOuter = bvNone
        Caption = 'ColorPanel'
        TabOrder = 1
        Visible = False
        object ColorTL: TdxTreeList
          Left = 0
          Top = 0
          Width = 182
          Height = 260
          Bands = <
            item
            end
          >
          DefaultLayout = True
          HeaderPanelRowCount = 1
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 0
          HideSelection = False
          Images = ColorImages
          LookAndFeel = lfFlat
          Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
          OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoRowAutoHeight', 'aoAutoSortRefresh', 'aoAutoSearch']
          PaintStyle = psOutlook
          TreeLineColor = clGrayText
          ScrollBars = ssVertical
          ShowButtons = False
          ShowHeader = False
          ShowLines = False
          GridLineColor = clBtnFace
          OnDblClick = ColorTLDblClick
          object tlcColor: TdxTreeListColumn
            BandIndex = 0
            RowIndex = 0
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 260
          Width = 182
          Height = 28
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Button1: TButton
            Left = 113
            Top = 3
            Width = 66
            Height = 22
            Anchors = ['akTop', 'akRight']
            Caption = 'More...'
            TabOrder = 0
          end
        end
      end
    end
    object tsEvents: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 435
      Height = 210
      Caption = 'Events'
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
      object ETL: TdxTreeList
        Left = 2
        Top = 2
        Width = 431
        Height = 206
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        TabOrder = 0
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoHideFocusRect']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoRowAutoHeight', 'aoAutoSortRefresh']
        PaintStyle = psOutlook
        TreeLineColor = clGrayText
        ScrollBars = ssVertical
        ShowButtons = False
        ShowGrid = True
        ShowHeader = False
        ShowLines = False
        GridLineColor = clSilver
        OnClick = PTLClick
        OnDblClick = ETLDblClick
        OnEnter = ETLEnter
        OnMouseDown = PTLMouseDown
        OnMouseMove = PTLMouseMove
        OnMouseUp = PTLMouseUp
        OnCustomDrawCell = PTLCustomDrawCell
        OnDeletion = PTLDeletion
        OnEdited = PTLEdited
        object tlcEvent: TdxTreeListColumn
          Caption = 'Property'
          DisableEditor = True
          ReadOnly = True
          Width = 109
          BandIndex = 0
          RowIndex = 0
        end
        object tlcEventProc: TdxTreeListColumn
          Caption = 'Value'
          Width = 129
          BandIndex = 0
          RowIndex = 0
        end
        object dxTreeListColumn3: TdxTreeListColumn
          Visible = False
          Width = 93
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    object cbComponents: TdxPickEdit
      Left = 0
      Top = 0
      Width = 321
      TabOrder = 0
      ReadOnly = False
      OnChange = cbComponentsChange
      DropDownRows = 30
      DropDownListStyle = True
      Sorted = True
      StoredValues = 64
    end
  end
  object Images: TImageList
    Height = 11
    Width = 11
    Left = 16
    Top = 64
    Bitmap = {2190 bytes}
  end
  object ColorImages: TImageList
    Height = 14
    Width = 14
    Left = 16
    Top = 96
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 200
    Top = 105
  end
end
