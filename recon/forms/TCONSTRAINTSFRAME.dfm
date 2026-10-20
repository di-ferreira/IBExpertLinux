object ConstraintsFrame: TConstraintsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 6200
  Align = alClient
  TabOrder = 0
  object Pages: TIBEPageControl
    Left = 0
    Top = 0
    Width = 435
    Height = 268
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsPrimary
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
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsPrimary: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 435
      Height = 243
      Caption = '&1.Primary key'
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
      object tlPK: TdxTreeList
        Left = 2
        Top = 2
        Width = 431
        Height = 239
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
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoEnterShowEditor', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnEnter = tlPKEnter
        OnKeyUp = tlPKKeyUp
        OnMouseUp = tlPKMouseUp
        OnDeletion = tlPKDeletion
        OnEdited = tlPKEdited
        object tlcPKName: TdxTreeListColumn
          Caption = 'Name'
          MaxLength = 31
          Width = 178
          BandIndex = 0
          RowIndex = 0
        end
        object tlcPKFields: TdxTreeListPopupColumn
          Caption = 'Fields'
          Width = 224
          BandIndex = 0
          RowIndex = 0
          PopupControl = faf
          PopupFormBorderStyle = pbsSysPanel
          OnCloseUp = tlcPKFieldsCloseUp
          OnPopup = tlcPKFieldsPopup
        end
        object tlcPKIndexName: TdxTreeListColumn
          Caption = 'Index Name'
          Visible = False
          Width = 157
          BandIndex = 0
          RowIndex = 0
        end
        object tlcPKIndexSorting: TdxTreeListPickColumn
          Caption = 'Sorting'
          Visible = False
          Width = 94
          BandIndex = 0
          RowIndex = 0
          DropDownListStyle = True
          Items.Strings = ['Ascending', 'Descending']
        end
        object tlcPKOldName: TdxTreeListColumn
          Visible = False
          Width = 64
          BandIndex = 0
          RowIndex = 0
        end
        object tlcPKOldFields: TdxTreeListColumn
          Visible = False
          Width = 64
          BandIndex = 0
          RowIndex = 0
        end
        object tlcPKOldIndexName: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcPKOldIndexSorting: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsForeign: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 435
      Height = 243
      Caption = '&2.Foreign keys'
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
      object tlFK: TdxTreeList
        Left = 2
        Top = 2
        Width = 431
        Height = 239
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
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoEnterShowEditor', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnEnter = tlPKEnter
        OnKeyUp = tlPKKeyUp
        OnMouseUp = tlPKMouseUp
        OnDeletion = tlPKDeletion
        OnEdited = tlFKEdited
        OnEditing = tlFKEditing
        object tlcFKName: TdxTreeListColumn
          Caption = 'Name'
          MaxLength = 31
          Width = 141
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFKFields: TdxTreeListPopupColumn
          Caption = 'Fields'
          Width = 187
          BandIndex = 0
          RowIndex = 0
          PopupControl = faf
          PopupFormBorderStyle = pbsSysPanel
          OnCloseUp = tlcFKFieldsCloseUp
          OnPopup = tlcPKFieldsPopup
        end
        object tlcFKTable: TdxTreeListPickColumn
          Caption = 'FK Table'
          Width = 139
          BandIndex = 0
          RowIndex = 0
          DropDownListStyle = True
          DropDownRows = 20
          OnCloseUp = tlcFKTableCloseUp
        end
        object tlcFKForeignFields: TdxTreeListPopupColumn
          Caption = 'FK Fields'
          Width = 159
          BandIndex = 0
          RowIndex = 0
          PopupControl = faf
          PopupFormBorderStyle = pbsSysPanel
          OnCloseUp = tlcFKForeignFieldsCloseUp
          OnPopup = tlcFKFieldsPopup
        end
        object tlcFKUpdateRule: TdxTreeListPickColumn
          Caption = 'Update Rule'
          Width = 107
          BandIndex = 0
          RowIndex = 0
          DropDownListStyle = True
          Items.Strings = ['NO ACTION', 'CASCADE', 'SET NULL', 'SET DEFAULT']
        end
        object tlcFKDeleteRule: TdxTreeListPickColumn
          Caption = 'Delete Rule'
          Width = 107
          BandIndex = 0
          RowIndex = 0
          DropDownListStyle = True
          Items.Strings = ['NO ACTION', 'CASCADE', 'SET NULL', 'SET DEFAULT']
        end
        object tlcFKIndexName: TdxTreeListColumn
          Caption = 'Index Name'
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFKIndexSorting: TdxTreeListPickColumn
          Caption = 'Sorting'
          Visible = False
          BandIndex = 0
          RowIndex = 0
          Items.Strings = ['Ascending', 'Descending']
        end
        object tlcFKOldName: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFKOldFields: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFKOldTable: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFKOldForeignFields: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFKOldUpdateRule: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFKOldDeleteRule: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFKOldIndexName: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcFKOldIndexSorting: TdxTreeListPickColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsCheck: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 435
      Height = 243
      Caption = '&3.Checks'
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
      object tlChecks: TdxTreeList
        Left = 2
        Top = 2
        Width = 431
        Height = 239
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
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort', 'aoStoreToRegistry']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoEnterShowEditor', 'aoDragScroll', 'aoDragExpand', 'aoRowAutoHeight', 'aoRowSizing', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnEnter = tlPKEnter
        OnKeyDown = tlPKKeyUp
        OnMouseUp = tlPKMouseUp
        OnDeletion = tlPKDeletion
        OnEdited = tlChecksEdited
        object tlcCheckName: TdxTreeListColumn
          Caption = 'Name'
          MaxLength = 31
          Width = 179
          BandIndex = 0
          RowIndex = 0
        end
        object tlcCheckSource: TdxTreeListMemoColumn
          Caption = 'Source'
          Width = 275
          BandIndex = 0
          RowIndex = 0
          HeaderMaxLineCount = 1
        end
        object tlcCheckOldName: TdxTreeListColumn
          Visible = False
          Width = 65
          BandIndex = 0
          RowIndex = 0
        end
        object tlcCheckOldSource: TdxTreeListColumn
          Visible = False
          Width = 65
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsUnique: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 435
      Height = 243
      Caption = '&4.Uniques'
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
      object tlUniques: TdxTreeList
        Left = 2
        Top = 2
        Width = 431
        Height = 239
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
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoEnterShowEditor', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
        TreeLineColor = clGrayText
        ShowGrid = True
        ShowRoot = False
        GridLineColor = clSilver
        OnEnter = tlPKEnter
        OnKeyDown = tlPKKeyUp
        OnMouseUp = tlPKMouseUp
        OnDeletion = tlPKDeletion
        OnEdited = tlUniquesEdited
        object tlcUniqueName: TdxTreeListColumn
          Caption = 'Name'
          MaxLength = 31
          Width = 178
          BandIndex = 0
          RowIndex = 0
        end
        object tlcUniqueFields: TdxTreeListPopupColumn
          Caption = 'Fields'
          Width = 278
          BandIndex = 0
          RowIndex = 0
          PopupControl = faf
          PopupFormBorderStyle = pbsSysPanel
          OnCloseUp = tlcUniqueFieldsCloseUp
          OnPopup = tlcPKFieldsPopup
        end
        object tlcUniqueOldName: TdxTreeListColumn
          Visible = False
          Width = 65
          BandIndex = 0
          RowIndex = 0
        end
        object tlcUniqueOldFields: TdxTreeListColumn
          Visible = False
          Width = 65
          BandIndex = 0
          RowIndex = 0
        end
        object tlcUniqueIndexName: TdxTreeListColumn
          Caption = 'Index Name'
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcUniqueIndexSorting: TdxTreeListPickColumn
          Caption = 'Sorting'
          Visible = False
          BandIndex = 0
          RowIndex = 0
          Items.Strings = ['Ascending', 'Descending']
        end
        object tlcUniqueOldIndexName: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
        object tlcUniqueOldIndexSorting: TdxTreeListColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object faf: TFieldsAddFrame
    Left = 95
    Top = 188
    Font.Charset = RUSSIAN_CHARSET
    Font.Name = 'Tahoma'
    ParentFont = False
    TabOrder = 1
    Visible = False
    object tlAvailableFields: TdxTreeList
      OnKeyDown = faftlAvailableFieldsKeyDown
    end
    object tlIncludedFields: TdxTreeList
      OnKeyDown = faftlAvailableFieldsKeyDown
    end
  end
  object pm: TdxBarPopupMenu
    BarManager = IBEMainForm.bm
    ItemLinks = <
      item
        Item = IBEMainForm.dxBarButton35
        Visible = True
      end
      item
        Item = IBEMainForm.dxBarButton36
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.dxBarButton121
        Visible = True
      end
      item
        BeginGroup = True
        Item = IBEMainForm.miConstrAutowidth
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = pmPopup
    Left = 136
    Top = 111
  end
  object ConstraintsActions: TActionList
    OnUpdate = ConstraintsActionsUpdate
    Left = 208
    Top = 79
    object actNewConstraint: TAction
      Caption = 'New constraint'
      ShortCut = 45
      OnExecute = actNewConstraintExecute
    end
    object actDropConstraint: TAction
      Caption = 'Drop constraint'
      ShortCut = 46
      OnExecute = actDropConstraintExecute
    end
    object actOpenForeignTable: TAction
      Caption = 'Open foreign table...'
      Hint = 'Open foreign table...'
      OnUpdate = actOpenForeignTableUpdate
    end
  end
end
