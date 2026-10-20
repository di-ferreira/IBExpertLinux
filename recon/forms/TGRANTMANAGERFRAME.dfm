object GrantManagerFrame: TGrantManagerFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 348
  HelpContext = 15600
  Align = alClient
  TabOrder = 0
  OnResize = FrameResize
  object Splitter1: TdfsSplitter
    Left = 185
    Top = 0
    Width = 4
    Height = 348
    Cursor = crHSplit
    Align = alLeft
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel25: TPanel
    Left = 189
    Top = 0
    Width = 246
    Height = 348
    Align = alClient
    BevelOuter = bvNone
    Caption = 'THIS TRIAL VERSION OF IBEXPERT IS FOR EVALUATION PURPOSES ONLY'
    TabOrder = 0
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 246
      Height = 348
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel5'
      TabOrder = 0
      object Splitter2: TdfsSplitter
        Left = 0
        Top = 149
        Width = 246
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        ResizeStyle = rsUpdate
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object pGrantsOn: TPanel
        Left = 0
        Top = 0
        Width = 246
        Height = 20
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = ' Grants on'
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = ['fsBold']
        ParentFont = False
        TabOrder = 0
      end
      object pFilter: TPanel
        Left = 0
        Top = 46
        Width = 246
        Height = 51
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lFilter: TLabel
          Left = 280
          Top = 9
          Width = 50
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '&Filter'
          FocusControl = eFilter
        end
        object Bevel1: TBevel
          Left = 0
          Top = 0
          Width = 246
          Height = 25
          Align = alTop
          Shape = bsTopLine
        end
        object cbGrantsOn: TdxPickEdit
          Left = 2
          Top = 5
          Width = 137
          TabOrder = 0
          StyleController = IBEMainForm.MainSC
          OnChange = cbGrantsOnChange
          DropDownListStyle = True
          Items.Strings = ['All Objects', 'Tables', 'Views', 'Procedures']
        end
        object eFilter: TdxEdit
          Left = 334
          Top = 5
          Width = 3211
          TabOrder = 2
          StyleController = IBEMainForm.MainSC
          OnChange = eFilterChange
        end
        object cbGranted: TdxPickEdit
          Left = 142
          Top = 5
          Width = 123
          TabOrder = 1
          StyleController = IBEMainForm.MainSC
          OnChange = cbGrantedChange
          DropDownListStyle = True
          Items.Strings = ['Show all', 'Granted only', 'Non-granted only']
        end
        object cbShowSystemTables: TdxCheckEdit
          Left = -2
          Top = 27
          Width = 266
          TabOrder = 3
          Caption = 'Show s&ystem tables'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbShowSystemTablesChange
        end
        object cbInvertFilter: TdxCheckEdit
          Left = 330
          Top = 27
          Width = 14739
          TabOrder = 4
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = '&Invert filter'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbInvertFilterChange
        end
      end
      object TCGFm: TTableColumnsGrantsFrame
        Top = 153
        Width = 246
        Height = 195
        Align = alBottom
        TabOrder = 2
        object pGrantsOn: TPanel
          Width = 246
          Font.Style = ['fsBold']
        end
        object tl: TdxTreeList
          Width = 246
          Height = 149
        end
        object TBDock1: TTBDock
          Width = 246
        end
        object Tr: TFIBTransaction
          Timeout = 177558908
        end
      end
      object GR: TdxDBGrid
        Left = 0
        Top = 97
        Width = 246
        Height = 52
        Bands = <
          item
          end
        >
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'Key'
        SummaryGroups = []
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 3
        OnDblClick = GRDblClick
        OnKeyPress = GRKeyPress
        OnKeyUp = GRKeyUp
        OnMouseUp = GRMouseUp
        DataSource = DS
        Filter.Criteria = {4 bytes}
        HideSelectionColor = clBtnFace
        HideSelectionTextColor = clWindowText
        LookAndFeel = lfFlat
        OptionsBehavior = ['edgoAutoSearch', 'edgoAutoSort', 'edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoStoreToRegistry', 'edgoTabThrough', 'edgoVertThrough']
        OptionsDB = ['edgoCancelOnExit', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoSmartRefresh', 'edgoSmartReload', 'edgoUseBookmarks']
        OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoUseBitmap']
        OnChangeColumn = GRChangeColumn
        OnCustomDrawCell = GRCustomDrawCell
        object gcObjectName: TdxDBGridColumn
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          TabStop = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ObjectName'
        end
        object gcSelect: TdxDBGridColumn
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Select'
        end
        object gcUpdate: TdxDBGridColumn
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Update'
        end
        object gcDelete: TdxDBGridColumn
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Delete'
        end
        object gcInsert: TdxDBGridColumn
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Insert'
        end
        object gcExecute: TdxDBGridColumn
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Execute'
        end
        object gcReference: TdxDBGridColumn
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Reference'
        end
        object gcType: TdxDBGridColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ObjectType'
        end
        object gcDesc: TdxDBGridMemoColumn
          Caption = 'Description'
          DisableDragging = True
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
          HeaderMaxLineCount = 1
          FieldName = 'Desc'
        end
        object gcMissing: TdxDBGridColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Missing'
        end
        object GRColumn11: TdxDBGridColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ColumnUpdate'
        end
        object GRColumn12: TdxDBGridColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ColumnReference'
        end
        object gcIsTrial: TdxDBGridColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IsTrial'
        end
      end
      object TBDock1: TTBDock
        Left = 0
        Top = 20
        Width = 246
        Height = 26
        object TBToolbar1: TTBToolbar
          Left = 0
          Top = 0
          BorderStyle = bsNone
          Caption = 'tbGrants'
          DragHandleStyle = dhNone
          Images = IBEMainForm.MenuImages
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object TBItem2: TTBItem
            Action = actGrantAll
          end
          object TBItem8: TTBItem
            Action = actGrantAllGO
          end
          object TBSeparatorItem3: TTBSeparatorItem
          end
          object TBItem1: TTBItem
            Action = actGrantToAll
          end
          object TBItem5: TTBItem
            Action = actGrantToAllGO
          end
          object TBSeparatorItem4: TTBSeparatorItem
          end
          object TBItem10: TTBItem
            Action = actGrantAllToAll
          end
          object TBSeparatorItem2: TTBSeparatorItem
          end
          object TBItem9: TTBItem
            Action = actRevokeAll
          end
          object TBItem4: TTBItem
            Action = actRevokeFromAll
          end
          object TBSeparatorItem5: TTBSeparatorItem
          end
          object TBItem11: TTBItem
            Action = actRevokeAllFromAll
          end
          object TBSeparatorItem1: TTBSeparatorItem
          end
          object siSave: TTBSubmenuItem
            Action = actSaveToScript
            Options = ['tboDropdownArrow']
            object TBItem6: TTBItem
              Action = actSaveIntoNew
            end
            object TBItem7: TTBItem
              Action = actAppendToFile
            end
            object TBItem3: TTBItem
              Action = actAppendToLast
            end
            object TBSeparatorItem6: TTBSeparatorItem
            end
            object TBItem13: TTBItem
              Action = actSaveToScriptExecutive
            end
            object TBItem12: TTBItem
              Action = actSaveToClipboard
            end
          end
          object TBSeparatorItem7: TTBSeparatorItem
          end
          object TBControlItem1: TTBControlItem
            Control = pb
          end
          object pb: TProgressBar
            Left = 242
            Top = 22
            Width = 150
            Height = 16
            Min = 0
            Max = 100
            Smooth = True
            TabOrder = 0
            Visible = False
          end
        end
      end
    end
  end
  object LeftP: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 348
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'LeftP'
    TabOrder = 1
    object pPrivilegesFor: TPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 20
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Privileges for'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 0
    end
    object Panel8: TPanel
      Left = 0
      Top = 20
      Width = 185
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object ViewTypeC: TdxPickEdit
        Left = 1
        Top = 3
        Width = 183
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = ViewTypeCChange
        DropDownListStyle = True
        Items.Strings = ['Users', 'Roles', 'Views', 'Triggers', 'Procedures']
      end
    end
    object ObjectsTL: TdxTreeList
      Left = 0
      Top = 47
      Width = 185
      Height = 301
      Bands = <
        item
        end
      >
      DefaultLayout = True
      HeaderPanelRowCount = 1
      Align = alClient
      DragMode = dmAutomatic
      TabOrder = 2
      HideSelection = False
      LookAndFeel = lfFlat
      Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
      OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
      TreeLineColor = clGrayText
      ShowHeader = False
      ShowRoot = False
      GridLineColor = clSilver
      OnCustomDrawCell = ObjectsTLCustomDrawCell
      OnChangeNode = ObjectsTLChangeNode
      object tlColumn1: TdxTreeListColumn
        Sorted = csUp
        BandIndex = 0
        RowIndex = 0
      end
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 33
    Top = 99
  end
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    Persistent = True
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    OnFilterRecord = mtFilterRecord
    OnNewRecord = mtNewRecord
    Left = 65
    Top = 99
    object mtObjectType: TIntegerField
      FieldName = 'ObjectType'
      Visible = False
    end
    object mtObjectName: TStringField
      DisplayLabel = 'Object Name'
      DisplayWidth = 31
      FieldName = 'ObjectName'
      Size = 64
    end
    object mtSelect: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'SEL'
      FieldName = 'Select'
    end
    object mtUpdate: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'UPD'
      FieldName = 'Update'
    end
    object mtDelete: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'DEL'
      FieldName = 'Delete'
    end
    object mtInsert: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'INS'
      FieldName = 'Insert'
    end
    object mtExecute: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'EXEC'
      FieldName = 'Execute'
    end
    object mtReference: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'REF'
      FieldName = 'Reference'
    end
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtMissing: TBooleanField
      FieldName = 'Missing'
    end
    object mtDesc: TMemoField
      FieldName = 'Desc'
      BlobType = ftMemo
    end
    object mtColumnUpdate: TIntegerField
      FieldName = 'ColumnUpdate'
    end
    object mtColumnReference: TIntegerField
      FieldName = 'ColumnReference'
    end
    object mtIsTrial: TIntegerField
      FieldName = 'IsTrial'
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 300
    OnTimer = TimerTimer
    Left = 88
    Top = 190
  end
  object ChangeTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = ChangeTimerTimer
    Left = 349
    Top = 174
  end
  object q: TFIBQuery
    ParamCheck = True
    Transaction = Tr
    Left = 281
    Top = 211
  end
  object Tr: TFIBTransaction
    Active = False
    Timeout = 176765140
    TimeoutAction = TARollback
    Left = 313
    Top = 211
  end
  object SS: TpFIBSecurityService
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    SecurityAction = ActionDisplayUser
    UserID = 0
    GroupID = 0
    Left = 407
    Top = 141
  end
  object Actions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 445
    Top = 214
    object actGrantToAll: TAction
      Caption = 'Grant to all'
      Hint = 'Grant to All'
      ImageIndex = 166
      OnExecute = actGrantToAllExecute
    end
    object actGrantToAllGO: TAction
      Caption = 'Grant to all WITH GRANT OPTION'
      ImageIndex = 222
      OnExecute = actGrantToAllGOExecute
    end
    object actRevokeFromAll: TAction
      Caption = 'Revoke from all'
      ImageIndex = 221
      OnExecute = actRevokeFromAllExecute
    end
    object actGrantAll: TAction
      Caption = 'Grant all'
      ImageIndex = 165
      OnExecute = actGrantAllExecute
    end
    object actGrantAllGO: TAction
      Caption = 'Grant All with GO'
      ImageIndex = 223
      OnExecute = actGrantAllGOExecute
    end
    object actRevokeAll: TAction
      Caption = 'Revoke All'
      ImageIndex = 224
      OnExecute = actRevokeAllExecute
    end
    object actGrantAllToAll: TAction
      Caption = 'Grant all privileges on all objects'
      ImageIndex = 225
      OnExecute = actGrantAllToAllExecute
    end
    object actRevokeAllFromAll: TAction
      Caption = 'Revoke all privileges on all objects'
      ImageIndex = 226
      OnExecute = actRevokeAllFromAllExecute
    end
    object actSaveToScript: TAction
      Caption = 'Save Privileges To Script'
      Hint = 'Save Privileges to Script'
      ImageIndex = 29
      OnExecute = actSaveToScriptExecute
    end
    object actSaveIntoNew: TAction
      Caption = 'Save into New File'
      Hint = 'Save into New File'
      ShortCut = 16467
      OnExecute = actSaveIntoNewExecute
    end
    object actAppendToFile: TAction
      Caption = 'Append to Existing File'
      Hint = 'Append to Existing File'
      ShortCut = 24659
      OnExecute = actAppendToFileExecute
    end
    object actAppendToLast: TAction
      Caption = 'Append to [%s]'
      OnExecute = actAppendToLastExecute
      OnUpdate = actAppendToLastUpdate
    end
    object actSaveToScriptExecutive: TAction
      Caption = 'Save to Script Executive'
      OnExecute = actSaveToScriptExecutiveExecute
    end
    object actSaveToClipboard: TAction
      Caption = 'Save to Clipboard'
      OnExecute = actSaveToClipboardExecute
    end
  end
  object SD: TSaveDialog
    DefaultExt = 'sql'
    Filter = 'SQL Script (*.sql)|*.sql|All Files (*.*)|*.*'
    FilterIndex = 0
    Left = 493
    Top = 317
  end
end
