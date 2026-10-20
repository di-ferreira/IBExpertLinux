object CreateProcFromTableForm: TCreateProcFromTableForm
  Left = 384
  Top = 282
  Width = 704
  Height = 504
  HelpContext = 12500
  Caption = 'Create Procedure'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TIBEPageControl
    Left = 0
    Top = 97
    Width = 688
    Height = 371
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsSelect
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
    OnChange = PagesChange
    OnChanging = PagesChanging
    TabOrder = 1
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsSelect: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 688
      Height = 346
      Caption = 'Select'
      ImageIndex = 1
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
      object Splitter1: TdfsSplitter
        Left = 2
        Top = 152
        Width = 684
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object SelectFm: TEditFrame
        Left = 2
        Top = 155
        Width = 684
        Height = 189
        object EditM: TSQLMemo
          Width = 684
          Height = 171
        end
        object pIncSearch: TPanel
          Top = 171
          Width = 684
        end
      end
      object SelectFieldsTL: TdxTreeList
        Left = 2
        Top = 2
        Width = 684
        Height = 150
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alTop
        DragMode = dmAutomatic
        TabOrder = 1
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnClick = SelectFieldsTLClick
        OnDblClick = SelectFieldsTLDblClick
        OnKeyPress = SelectFieldsTLKeyPress
        OnCustomDrawCell = SelectFieldsTLCustomDrawCell
        OnColumnClick = SelectFieldsTLColumnClick
        object tlcCheck: TdxTreeListColumn
          Caption = 'S'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 25
          BandIndex = 0
          RowIndex = 0
        end
        object tlcSField: TdxTreeListColumn
          Caption = 'Name'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          MaxLength = 31
          Width = 238
          BandIndex = 0
          RowIndex = 0
        end
        object tlcSType: TdxTreeListColumn
          Caption = 'Type'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Width = 222
          BandIndex = 0
          RowIndex = 0
        end
        object tlcSKey: TdxTreeListColumn
          Caption = 'Key'
          Visible = False
          Width = 68
          BandIndex = 0
          RowIndex = 0
        end
        object tlcSDomain: TdxTreeListColumn
          Caption = 'Domain'
          Visible = False
          Width = 200
          BandIndex = 0
          RowIndex = 0
        end
        object tlcSIndex: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
      end
      object cbOldVersion: TdxCheckEdit
        Left = 280
        Top = 40
        Width = 281
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Caption = 'Use old version of SUID blocks '
        StyleController = IBEMainForm.MainCheckSC
        OnChange = cbOldVersionChange
      end
    end
    object tsInsert: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 688
      Height = 346
      Caption = 'Insert'
      ImageIndex = 2
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
      object Splitter2: TdfsSplitter
        Left = 2
        Top = 152
        Width = 684
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object InsertFm: TEditFrame
        Left = 2
        Top = 155
        Width = 684
        Height = 189
        object EditM: TSQLMemo
          Width = 684
          Height = 171
        end
        object pIncSearch: TPanel
          Top = 171
          Width = 684
        end
      end
      object InsertFieldsTL: TdxTreeList
        Left = 2
        Top = 2
        Width = 684
        Height = 150
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alTop
        DragMode = dmAutomatic
        TabOrder = 1
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnClick = InsertFieldsTLClick
        OnDblClick = InsertFieldsTLDblClick
        OnKeyPress = InsertFieldsTLKeyPress
        OnCustomDrawCell = SelectFieldsTLCustomDrawCell
        OnColumnClick = SelectFieldsTLColumnClick
        object tlcICheck: TdxTreeListColumn
          Caption = 'I'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 21
          BandIndex = 0
          RowIndex = 0
        end
        object tlcIField: TdxTreeListColumn
          Caption = 'Name'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          MaxLength = 31
          Width = 198
          BandIndex = 0
          RowIndex = 0
        end
        object tlcIType: TdxTreeListColumn
          Caption = 'Type'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Width = 259
          BandIndex = 0
          RowIndex = 0
        end
        object tlcIKey: TdxTreeListColumn
          Caption = 'Key'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          Width = 39
          BandIndex = 0
          RowIndex = 0
        end
        object tlcIDomain: TdxTreeListColumn
          Caption = 'Domain'
          Visible = False
          Width = 200
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsUpdate: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 688
      Height = 346
      Caption = 'Update'
      ImageIndex = 3
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
      object Splitter3: TdfsSplitter
        Left = 2
        Top = 152
        Width = 684
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object UpdateFm: TEditFrame
        Left = 2
        Top = 155
        Width = 684
        Height = 189
        object EditM: TSQLMemo
          Width = 684
          Height = 171
        end
        object pIncSearch: TPanel
          Top = 171
          Width = 684
        end
      end
      object UpdateFieldsTL: TdxTreeList
        Left = 2
        Top = 2
        Width = 684
        Height = 150
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alTop
        DragMode = dmAutomatic
        TabOrder = 1
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnClick = UpdateFieldsTLClick
        OnDblClick = UpdateFieldsTLDblClick
        OnKeyPress = UpdateFieldsTLKeyPress
        OnCustomDrawCell = SelectFieldsTLCustomDrawCell
        OnColumnClick = SelectFieldsTLColumnClick
        object tlcUCheck: TdxTreeListColumn
          Caption = 'U'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 21
          BandIndex = 0
          RowIndex = 0
        end
        object tlcUField: TdxTreeListColumn
          Caption = 'Name'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          MaxLength = 31
          Width = 198
          BandIndex = 0
          RowIndex = 0
        end
        object tlcUType: TdxTreeListColumn
          Caption = 'Type'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Width = 259
          BandIndex = 0
          RowIndex = 0
        end
        object tlcUKey: TdxTreeListColumn
          Caption = 'Key'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          Width = 39
          BandIndex = 0
          RowIndex = 0
        end
        object tlcUDomain: TdxTreeListColumn
          Caption = 'Domain'
          DisableEditor = True
          Visible = False
          Width = 200
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsDelete: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 688
      Height = 346
      Caption = 'Delete'
      ImageIndex = 4
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
      object DeleteFm: TEditFrame
        Left = 2
        Top = 2
        Width = 684
        Height = 342
        object EditM: TSQLMemo
          Width = 684
          Height = 324
        end
        object pIncSearch: TPanel
          Top = 324
          Width = 684
        end
      end
    end
    object tsInsertUpdate: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 688
      Height = 346
      Caption = 'Insert/Update'
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
      object Splitter4: TdfsSplitter
        Left = 2
        Top = 152
        Width = 684
        Height = 4
        Cursor = crVSplit
        Align = alTop
        ResizeStyle = rsUpdate
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object InsertUpdateFieldsTL: TdxTreeList
        Left = 2
        Top = 2
        Width = 684
        Height = 150
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alTop
        DragMode = dmAutomatic
        TabOrder = 0
        HideSelection = False
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnClick = InsertUpdateFieldsTLClick
        OnCustomDrawCell = SelectFieldsTLCustomDrawCell
        OnColumnClick = SelectFieldsTLColumnClick
        object tlcUICheckI: TdxTreeListColumn
          Caption = 'I'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 29
          BandIndex = 0
          RowIndex = 0
        end
        object tlcUICheckU: TdxTreeListColumn
          Caption = 'U'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 30
          BandIndex = 0
          RowIndex = 0
        end
        object dxTreeListColumn2: TdxTreeListColumn
          Caption = 'Name'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          MaxLength = 31
          Width = 275
          BandIndex = 0
          RowIndex = 0
        end
        object dxTreeListColumn3: TdxTreeListColumn
          Caption = 'Type'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Width = 360
          BandIndex = 0
          RowIndex = 0
        end
        object dxTreeListColumn4: TdxTreeListColumn
          Caption = 'Key'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          Visible = False
          Width = 45
          BandIndex = 0
          RowIndex = 0
        end
        object tlcUIDomain: TdxTreeListColumn
          Caption = 'Domain'
          DisableEditor = True
          Visible = False
          Width = 200
          BandIndex = 0
          RowIndex = 0
        end
      end
      object InsertUpdateFm: TEditFrame
        Left = 2
        Top = 156
        Width = 684
        Height = 188
        TabOrder = 1
        object EditM: TSQLMemo
          Width = 684
          Height = 170
        end
        object pIncSearch: TPanel
          Top = 170
          Width = 684
        end
      end
    end
    object tsBlocks: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 688
      Height = 346
      Caption = 'SUID Blocks'
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
      object Splitter: TdfsSplitter
        Left = 2
        Top = 215
        Width = 684
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clBtnShadow
        ParentColor = False
        ResizeStyle = rsUpdate
        OnCanResize = SplitterCanResize
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object BlockFm: TEditFrame
        Left = 2
        Top = 27
        Width = 684
        Height = 188
        object EditM: TSQLMemo
          Width = 684
          Height = 170
        end
        object pIncSearch: TPanel
          Top = 170
          Width = 684
        end
      end
      object TBDock1: TTBDock
        Left = 2
        Top = 2
        Width = 684
        Height = 25
        object tbBlocks: TTBToolbar
          Left = 0
          Top = 0
          BorderStyle = bsNone
          Caption = 'tbBlocks'
          CloseButton = False
          DragHandleStyle = dhNone
          TabOrder = 0
          object TBControlItem1: TTBControlItem
            Control = cbBlocks
          end
          object cbBlocks: TdxPickEdit
            Left = 0
            Top = 0
            Width = 243
            TabOrder = 0
            StyleController = IBEMainForm.MainSC
            Text = 'cbBlocks'
            OnChange = cbBlocksChange
            DropDownListStyle = True
            Items.Strings = ['SELECT procedure block', 'INSERT procedure block', 'UPDATE procedure block', 'DELETE procedure block', 'INSERT/UPDATE procedure block']
          end
        end
      end
      object DockBottom: TTBDock
        Left = 2
        Top = 218
        Width = 684
        Height = 126
        Position = dpBottom
        object twError: TTBToolWindow
          Left = 0
          Top = 0
          BorderStyle = bsNone
          Caption = 'Messages'
          CloseButtonWhenDocked = True
          ClientAreaHeight = 122
          ClientAreaWidth = 666
          DockableTo = ['dpTop', 'dpBottom']
          DockPos = 0
          DragHandleStyle = dhDouble
          FullSize = True
          TabOrder = 0
          OnDockChanged = twErrorDockChanged
          OnVisibleChanged = twErrorVisibleChanged
          object MesPages: TIBEPageControl
            Left = 0
            Top = 0
            Width = 666
            Height = 122
            AdvOfficePagerStyler = IBEMainForm.PCStyler
            Align = alClient
            ActivePage = tsServerMes
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
            object tsServerMes: TAdvOfficePage
              Left = 0
              Top = 24
              Width = 666
              Height = 97
              Caption = 'Messages'
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
              object ErrorM: TdxMemo
                Tag = 1000
                Left = 2
                Top = 2
                Width = 662
                Align = alClient
                TabOrder = 0
                StyleController = IBEMainForm.MainSC
                ScrollBars = ssVertical
                Height = 93
              end
            end
            object tsParserMes: TAdvOfficePage
              Left = 0
              Top = 24
              Width = 666
              Height = 97
              Caption = 'Pa&rser Messages'
              ImageIndex = 1
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
              object MessagesTL: TdxTreeList
                Left = 2
                Top = 2
                Width = 662
                Height = 93
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
                Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
                OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
                TreeLineColor = clGrayText
                ShowGrid = True
                ShowRoot = False
                GridLineColor = clSilver
                OnDblClick = MessagesTLDblClick
                object tlcNumber: TdxTreeListColumn
                  Caption = '#'
                  DisableCustomizing = True
                  DisableDragging = True
                  DisableEditor = True
                  Width = 30
                  BandIndex = 0
                  RowIndex = 0
                end
                object tlcType: TdxTreeListColumn
                  Caption = 'Type'
                  DisableCustomizing = True
                  DisableDragging = True
                  DisableEditor = True
                  Width = 97
                  BandIndex = 0
                  RowIndex = 0
                end
                object tlcText: TdxTreeListColumn
                  Caption = 'Text'
                  DisableCustomizing = True
                  DisableDragging = True
                  DisableEditor = True
                  Width = 760
                  BandIndex = 0
                  RowIndex = 0
                end
              end
            end
          end
        end
      end
    end
    object tsSUIDBlock: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 688
      Height = 346
      Caption = 'SUID Block'
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
      object BlockEditFm: TBlockEditFrame
        Left = 2
        Top = 2
        Width = 684
        Height = 342
        Align = alClient
        object SplitterBottom: TdfsSplitter
          Top = 145
          Width = 684
        end
        object DockBottom: TTBDock
          Top = 148
          Width = 684
          object twResults: TTBToolWindow
            ClientAreaWidth = 671
            object Pages: TIBEPageControl
              Width = 671
              NextPictureChanged = True
              PrevPictureChanged = True
              object tsParams: TAdvOfficePage
                Width = 671
                object tlParams: TdxTreeList
                  Width = 667
                end
              end
              object tsWatches: TAdvOfficePage
                Width = 671
                object tlWatches: TdxTreeList
                  Width = 667
                end
              end
              object tsLastStmt: TAdvOfficePage
                Width = 671
                object LastStmtFm: TEditFrame
                  Width = 667
                  object EditM: TSQLMemo
                    Width = 667
                  end
                  object pIncSearch: TPanel
                    Width = 667
                  end
                end
              end
              object tsBreakpoints: TAdvOfficePage
                Width = 671
                object tlBreakPoints: TdxTreeList
                  Width = 667
                end
              end
              object tsMessages: TAdvOfficePage
                Width = 671
                object Splitter1: TdfsSplitter
                  Width = 667
                end
                object tlMessages: TdxTreeList
                  Width = 667
                end
                object MessagesM: TdxMemo
                  Width = 667
                  Height = 89
                  StoredValues = 64
                end
              end
              object tsResults: TAdvOfficePage
                Width = 671
                object tlResult: TdxTreeList
                  Width = 667
                end
              end
              object tsSQLMessages: TAdvOfficePage
                Width = 671
                object ErrorM: TdxMemo
                  Width = 667
                  Height = 161
                end
              end
            end
          end
        end
        object TBDock1: TTBDock
          Width = 684
          object MainToolbar: TTBToolbar
            object eBlockPath: TdxButtonEdit
              StoredValues = 64
              ExistButtons = True
            end
            object cbEvents: TdxPickEdit
              StoredValues = 64
            end
          end
        end
        object MainBlockFm: TEditFrame
          Width = 684
          Height = 101
          object EditM: TSQLMemo
            Width = 684
            Height = 83
          end
          object pIncSearch: TPanel
            Top = 83
            Width = 684
          end
        end
        object pProgress: TPanel
          Width = 684
        end
        object ts2: TFIBTransaction
          Timeout = 236699312
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 22
    Width = 688
    Height = 75
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 72
      Width = 688
      Height = 3
      Align = alBottom
      Shape = bsTopLine
      Style = bsRaised
    end
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 688
      Height = 5
      Align = alTop
      Shape = bsTopLine
      Style = bsRaised
    end
    object cbSelect: TdxCheckEdit
      Left = 7
      Top = 4
      Width = 254
      TabOrder = 0
      OnClick = cbSelectChange
      Caption = 'Create SELECT procedure'
      StyleController = IBEMainForm.MainCheckSC
      OnChange = cbSelectChange
      State = cbsChecked
    end
    object cbInsert: TdxCheckEdit
      Left = 7
      Top = 26
      Width = 254
      TabOrder = 1
      OnClick = cbInsertChange
      Caption = 'Create INSERT procedure'
      StyleController = IBEMainForm.MainCheckSC
      OnChange = cbInsertChange
      State = cbsChecked
    end
    object cbUpdate: TdxCheckEdit
      Left = 7
      Top = 48
      Width = 254
      TabOrder = 2
      OnClick = cbUpdateChange
      Caption = 'Create UPDATE procedure'
      StyleController = IBEMainForm.MainCheckSC
      OnChange = cbUpdateChange
      State = cbsChecked
    end
    object cbDelete: TdxCheckEdit
      Left = 271
      Top = 4
      Width = 254
      TabOrder = 3
      OnClick = cbDeleteChange
      Caption = 'Create DELETE procedure'
      StyleController = IBEMainForm.MainCheckSC
      OnChange = cbDeleteChange
      State = cbsChecked
    end
    object cbGrants: TdxCheckEdit
      Left = 271
      Top = 48
      Width = 498
      TabOrder = 4
      OnClick = cbDeleteChange
      Caption = 'Grant execute to PUBLIC after creating'
      StyleController = IBEMainForm.MainCheckSC
      OnChange = cbSelectChange
      State = cbsChecked
    end
    object cbInsertUpdate: TdxCheckEdit
      Left = 271
      Top = 26
      Width = 254
      TabOrder = 5
      OnClick = cbInsertUpdateClick
      Caption = 'Create INSERT/UPDATE procedure'
      StyleController = IBEMainForm.MainCheckSC
      OnChange = cbInsertUpdateClick
      State = cbsChecked
    end
  end
  object Actions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionsUpdate
    Left = 404
    Top = 48
    object actCompile: TAction
      Caption = 'Compile'
      Hint = 'Compile'
      ImageIndex = 28
      ShortCut = 120
      OnExecute = actCompileExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
  end
  object bm: TdxBarManager
    AlwaysSaveText = True
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
        BorderStyle = bbsNone
        Caption = 'Main'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Main'
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
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    Style = bmsFlat
    UseSystemFont = True
    Left = 240
    Top = 74
    DockControlHeights = [0, 0, 22, 0]
    object dxBarButton1: TdxBarButton
      Tag = 1000
      Action = actCompile
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Align = iaRight
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cbOldVersion
    end
    object cbTableName: TdxBarCombo
      Caption = 'Table:'
      Category = 0
      Hint = 'Table name'
      Visible = ivAlways
      OnChange = cbTableNameChange
      ShowCaption = True
      Width = 100
      ShowEditor = False
      DropDownCount = 40
      ItemIndex = -1
    end
  end
  object CompareTimer: TTimer
    Interval = 500
    OnTimer = CompareTimerTimer
    Left = 520
    Top = 70
  end
  object Tr: TpFIBTransaction
    Active = False
    Timeout = 334937588
    TimeoutAction = TARollback
    Left = 352
    Top = 176
  end
end
