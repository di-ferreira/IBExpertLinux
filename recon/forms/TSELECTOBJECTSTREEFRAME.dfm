object SelectObjectsTreeFrame: TSelectObjectsTreeFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 16600
  Align = alClient
  TabOrder = 0
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 268
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 0
    object ATL: TdxTreeList
      Tag = -1000
      Left = 0
      Top = 0
      Width = 256
      Height = 268
      Bands = <
        item
        end
      >
      DefaultLayout = True
      HeaderPanelRowCount = 1
      Align = alLeft
      DragMode = dmAutomatic
      TabOrder = 0
      DblClkExpanding = False
      HideSelection = False
      Images = IBEMainForm.ImageList
      LookAndFeel = lfFlat
      Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
      OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
      TreeLineColor = clGrayText
      GridLineColor = clSilver
      OnDblClick = ATLDblClick
      OnDragDrop = ATLDragDrop
      OnDragOver = ATLDragOver
      OnKeyPress = ATLKeyPress
      OnCustomDrawCell = ATLCustomDrawCell
      Constraints.MinWidth = 100
      object tlcAvailable: TdxTreeListColumn
        Caption = 'Available Objects'
        DisableCustomizing = True
        DisableDragging = True
        DisableEditor = True
        MinWidth = 100
        ReadOnly = True
        VertAlignment = tlCenter
        Width = 236
        BandIndex = 0
        RowIndex = 0
      end
    end
    object pButtons: TPanel
      Left = 256
      Top = 0
      Width = 37
      Height = 268
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 5
        Height = 268
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object TBDock1: TTBDock
        Left = 5
        Top = 0
        Width = 27
        Height = 268
        Position = dpLeft
        object TBToolbar2: TTBToolbar
          Left = 0
          Top = 0
          BorderStyle = bsNone
          Caption = 'TBToolbar1'
          DockMode = dmCannotFloat
          DockPos = 0
          DragHandleStyle = dhNone
          Images = IBEMainForm.MenuImages
          TabOrder = 0
          object TBControlItem1: TTBControlItem
            Control = Panel6
          end
          object _Panel1: TTBControlItem
          end
          object bSelect: TTBItem
            ImageIndex = 58
            Images = IBEMainForm.MenuImages
            OnClick = bSelectClick
          end
          object bSelectAll: TTBItem
            ImageIndex = 59
            Images = IBEMainForm.MenuImages
            OnClick = bSelectAllClick
          end
          object TBSeparatorItem2: TTBSeparatorItem
          end
          object TBSeparatorItem3: TTBSeparatorItem
          end
          object bRemove: TTBItem
            ImageIndex = 60
            OnClick = bRemoveClick
          end
          object bRemoveAll: TTBItem
            ImageIndex = 61
            OnClick = bRemoveAllClick
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 23
            Height = 17
            BevelOuter = bvNone
            TabOrder = 0
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 293
      Top = 0
      Width = 142
      Height = 268
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 2
      object ITL: TdxTreeList
        Tag = -1000
        Left = 0
        Top = 0
        Width = 142
        Height = 160
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        DragMode = dmAutomatic
        TabOrder = 0
        DblClkExpanding = False
        HideSelection = False
        Images = IBEMainForm.ImageList
        LookAndFeel = lfFlat
        Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
        TreeLineColor = clGrayText
        GridLineColor = clSilver
        OnDblClick = ITLDblClick
        OnDragDrop = ITLDragDrop
        OnDragOver = ITLDragOver
        OnKeyPress = ITLKeyPress
        OnCustomDrawCell = ATLCustomDrawCell
        OnChangeNode = ITLChangeNode
        OnDeletion = ITLDeletion
        OnSelectedCountChange = ITLSelectedCountChange
        Constraints.MinWidth = 100
        object tlcSelected: TdxTreeListColumn
          Caption = 'Selected Objects'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          MinWidth = 100
          ReadOnly = True
          VertAlignment = tlCenter
          Width = 236
          BandIndex = 0
          RowIndex = 0
        end
      end
      object pPrintOptions: TPanel
        Left = 0
        Top = 160
        Width = 142
        Height = 108
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        Visible = False
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 140
          Height = 18
          Align = alTop
          BevelOuter = bvNone
          Caption = ' Printing Options'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object cbFields: TdxCheckEdit
          Left = 5
          Top = 24
          Width = 88
          TabOrder = 1
          OnClick = cbFieldsClick
          Caption = '&Fields'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbConstraints: TdxCheckEdit
          Left = 5
          Top = 48
          Width = 88
          TabOrder = 2
          OnClick = cbConstraintsClick
          Caption = '&Constraints'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbIndices: TdxCheckEdit
          Left = 5
          Top = 72
          Width = 88
          TabOrder = 3
          OnClick = cbIndicesClick
          Caption = 'I&ndices'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbOnDepend: TdxCheckEdit
          Left = 101
          Top = 24
          Width = 137
          TabOrder = 4
          OnClick = cbOnDependClick
          Caption = 'Dependent O&bjects'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbDependOn: TdxCheckEdit
          Left = 101
          Top = 48
          Width = 138
          TabOrder = 5
          OnClick = cbDependOnClick
          Caption = 'Depend On Ob&jects'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbParameters: TdxCheckEdit
          Left = 101
          Top = 72
          Width = 115
          TabOrder = 6
          OnClick = cbParametersClick
          Caption = 'Para&meters'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbDDL: TdxCheckEdit
          Left = 236
          Top = 24
          Width = 95
          TabOrder = 7
          OnClick = cbDDLClick
          Caption = 'DD&L'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbDescription: TdxCheckEdit
          Left = 236
          Top = 48
          Width = 95
          TabOrder = 8
          OnClick = cbDescriptionClick
          Caption = 'Descr&iption'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
      end
    end
  end
end
