object SQLBuilderForm: TSQLBuilderForm
  Left = 283
  Top = 241
  Width = 785
  Height = 596
  HelpContext = 4300
  Caption = 'SQL builder'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter: TdfsSplitter
    Left = 536
    Top = 26
    Width = 3
    Height = 534
    Cursor = crHSplit
    Align = alRight
    ResizeStyle = rsUpdate
    OnCanResize = SplitterCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 26
    Width = 536
    Height = 534
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsBuilder
    ButtonSettings.PageListButtonHint = 'Page List'
    Constraints.MinHeight = 100
    Constraints.MinWidth = 50
    ShowShortCutHints = False
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsBuilder: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 534
      Height = 506
      Caption = 'Builder'
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
      object QBW: TemsQueryBuilder
        Left = 2
        Top = 2
        Width = 530
        Height = 502
        Hint = 'work area'
        Align = alClient
        TabsHeight = 100
        WorkAreaOptions.HideSelection = True
        WorkAreaOptions.DragFieldName = False
        WorkAreaOptions.Flat = True
        WorkAreaOptions.ShowFieldsType = True
        WorkAreaOptions.FlatCaptionBtns = True
        WorkAreaOptions.TableBorder = edgeSunken
        WorkAreaOptions.Font.Charset = DEFAULT_CHARSET
        WorkAreaOptions.Font.Color = clWindowText
        WorkAreaOptions.Font.Height = -11
        WorkAreaOptions.Font.Name = 'Arial'
        WorkAreaOptions.Font.Style = []
        ConditionOptions.SelectRow = True
        ConditionOptions.BtnsStyle = btnFlat
        ConditionOptions.ActiveRowColor = clSilver
        Operators.OperatorsList = ['=', '=', '', '', '', 1, '<>', '<>', '', '', '', 1, '<', '<', '', '', '', 1, '>', '>', '', '', '', 1, '<=', '<=', '', '', '', 1, '>=', '>=', '', '', '', 1, 'LIKE', 'LIKE', '', '', '', 1, 'NOT LIKE', 'NOT LIKE', '', '', '', 1, 'IN', 'IN', '', '', '', 1, 'NOT IN', 'NOT IN', '', '', '', 1, 'BETWEEN', 'BETWEEN', ' and ', '', '', 2, 'NOT BETWEEN', 'NOT BETWEEN', ' and ', '', '', 2, 'IS NULL', 'IS NULL', '', '', '', 0, 'IS NOT NULL', 'IS NOT NULL', '', '', '', 0, 'CONTAINING', 'CONTAINING', '', '', '', 1, 'STARTING WITH', 'STARTING WITH', '', '', '', 1]
        OnGetTableFields = QBWGetTableFields
        OnDragOver = QBWDragOver
        OnDragDrop = QBWDragDrop
      end
      object cbAutolink: TdxCheckEdit
        Left = 312
        Top = 32
        Width = 121
        TabOrder = 1
        Visible = False
        Caption = 'Autolink tables'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsEdit: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 534
      Height = 506
      Caption = 'Edit'
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
        Top = 438
        Width = 530
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        ResizeStyle = rsUpdate
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object EditFm: TEditFrame
        Left = 2
        Top = 2
        Width = 530
        Height = 436
        object EditM: TSQLMemo
          Width = 530
          Height = 418
        end
        object pIncSearch: TPanel
          Top = 418
          Width = 530
        end
      end
      object ErrorM: TdxMemo
        Tag = 1000
        Left = 2
        Top = 442
        Width = 530
        Align = alBottom
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        Height = 62
      end
    end
    object tsResult: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 534
      Height = 506
      Caption = 'Result'
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
    end
    object tsPerformance: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 534
      Height = 506
      Caption = 'Performance Analysis'
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
      object PerformanceFm: TPerformanceFrame
        Left = 2
        Top = 2
        Width = 530
        Height = 502
        object Pages: TIBEPageControl
          Width = 530
          Height = 493
          NextPictureChanged = True
          PrevPictureChanged = True
          object tsGraphicalSummary: TAdvOfficePage
            Width = 528
            Height = 465
            object Panel4: TPanel
              Width = 524
              Height = 461
              object Panel3: TPanel
                Width = 524
                Height = 461
                object Bevel1: TBevel
                  Width = 524
                end
                object Chart: TChart
                  Width = 524
                  Height = 431
                end
                object TBDock2: TTBDock
                  Width = 524
                end
              end
            end
          end
          object tsSummary: TAdvOfficePage
            Width = 528
            Height = 465
            object Panel2: TPanel
              Height = 461
            end
            object Panel5: TPanel
              Width = 329
              Height = 461
              object Panel6: TPanel
                Width = 329
              end
              object TL: TdxTreeList
                Width = 329
                Height = 440
              end
            end
          end
        end
        object Panel7: TPanel
          Width = 772
        end
        object TBDock1: TTBDock
          Width = 530
        end
      end
    end
  end
  object dockRight: TTBDock
    Left = 539
    Top = 26
    Width = 230
    Height = 534
    Position = dpRight
    object twListTables: TTBToolWindow
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'Tables'
      CloseButtonWhenDocked = True
      ClientAreaHeight = 516
      ClientAreaWidth = 226
      DockableTo = ['dpLeft', 'dpRight']
      DockPos = 0
      DragHandleStyle = dhDouble
      FullSize = True
      TabOrder = 0
      OnClose = twListTablesClose
      OnDockChanged = twListTablesDockChanged
      OnVisibleChanged = twListTablesDockChanged
      object TL: TdxTreeList
        Left = 0
        Top = 0
        Width = 226
        Height = 516
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
        Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
        OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh', 'aoAutoSearch']
        TreeLineColor = clGrayText
        ShowHeader = False
        ShowRoot = False
        GridLineColor = clSilver
        OnDblClick = TLDblClick
        OnKeyPress = TLKeyPress
        OnCustomDrawCell = TLCustomDrawCell
        object PrintObjectsTLColumn1: TdxTreeListColumn
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object Actions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = ActionsUpdate
    Left = 688
    Top = 51
    object aCommitTransaction: TAction
      Caption = 'Commit transaction'
      Enabled = False
      Hint = 'Commit Transaction'
      ImageIndex = 36
      ShortCut = 49219
      OnExecute = aCommitTransactionExecute
    end
    object aRollbackTransaction: TAction
      Caption = 'Rollback transaction'
      Enabled = False
      Hint = 'Rollback Transaction'
      ImageIndex = 38
      ShortCut = 49234
      OnExecute = aRollbackTransactionExecute
    end
    object aRunQuery: TAction
      Caption = 'Execute query'
      Hint = 'Execute'
      ImageIndex = 56
      ShortCut = 120
      OnExecute = aRunQueryExecute
    end
    object aPrepareQuery: TAction
      Caption = 'Prepare query'
      Hint = 'Prepare Query'
      ImageIndex = 39
      ShortCut = 16504
      OnExecute = aPrepareQueryExecute
    end
    object aExportData: TAction
      Caption = 'Export data'
      Hint = 'Export Data'
      ImageIndex = 73
      ShortCut = 16453
    end
    object actShowTables: TAction
      Caption = 'Show tables'
      Checked = True
      ImageIndex = 17
      OnExecute = actShowTablesExecute
      OnUpdate = actShowTablesUpdate
    end
    object actCreateView: TAction
      Caption = 'Create View from SELECT'
      Hint = 'Create View from SELECT'
      ImageIndex = 18
      OnExecute = actCreateViewExecute
    end
    object actCreateProcedure: TAction
      Caption = 'Create Procedure from SELECT'
      Hint = 'Create Procedure from SELECT'
      ImageIndex = 19
      OnExecute = actCreateProcedureExecute
    end
    object actExport: TAction
      Caption = 'Export data'
      ImageIndex = 73
      OnExecute = actExportExecute
    end
    object actExportAsInsert: TAction
      Caption = 'Export into script'
      ImageIndex = 74
      OnExecute = actExportAsInsertExecute
    end
  end
  object Tr: TFIBTransaction
    Active = False
    Timeout = 329761724
    TimeoutAction = TARollback
    Left = 718
    Top = 82
  end
  object Tr2: TFIBTransaction
    Active = False
    Timeout = 330518256
    TimeoutAction = TARollback
    Left = 718
    Top = 114
  end
  object Query: TFIBQuery
    ParamCheck = True
    Transaction = Tr
    Left = 718
    Top = 162
  end
  object bm: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        Caption = 'Query Builder'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Query Builder'
        NotDocking = ['dsLeft', 'dsRight']
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
    Left = 228
    Top = 74
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = actShowTables
      Category = 0
      Hint = 'Show tables'
      ButtonStyle = bsChecked
    end
    object dxBarButton2: TdxBarButton
      Action = aRunQuery
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = aPrepareQuery
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = aCommitTransaction
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = aRollbackTransaction
      Category = 0
    end
    object bliDatabases: TdxBarSubItem
      Caption = '(No active connection)'
      Category = 0
      Visible = ivAlways
      OnClick = bliDatabasesClick
      ItemLinks = []
    end
    object dxBarButton6: TdxBarButton
      Action = actCreateView
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actCreateProcedure
      Category = 0
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cbAutolink
    end
    object dxBarButton8: TdxBarButton
      Action = actExport
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actExportAsInsert
      Category = 0
    end
  end
end
