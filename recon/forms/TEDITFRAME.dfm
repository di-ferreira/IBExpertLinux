object EditFrame: TEditFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 265
  HelpContext = 6400
  Align = alClient
  TabOrder = 0
  OnResize = FrameResize
  object lBookmark: TLabel
    Left = 200
    Top = 104
    Width = 48
    Height = 13
    Caption = 'Bookmark'
    Visible = False
  end
  object EditM: TSQLMemo
    Left = 0
    Top = 0
    Width = 435
    Height = 247
    Cursor = crIBeam
    Align = alClient
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    HighlightCurrentLine = False
    CurrentLineColor = clWindow
    ExtraLineSpacing = 1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Gutter.DigitCount = 6
    Keystrokes = <
      item
        ShortCut = 38
        ShortCut2 = 0
        Command = ecUp
      end
      item
        ShortCut = 8230
        ShortCut2 = 0
        Command = ecSelUp
      end
      item
        ShortCut = 16422
        ShortCut2 = 0
        Command = ecScrollUp
      end
      item
        ShortCut = 40
        ShortCut2 = 0
        Command = ecDown
      end
      item
        ShortCut = 8232
        ShortCut2 = 0
        Command = ecSelDown
      end
      item
        ShortCut = 16424
        ShortCut2 = 0
        Command = ecScrollDown
      end
      item
        ShortCut = 37
        ShortCut2 = 0
        Command = ecLeft
      end
      item
        ShortCut = 8229
        ShortCut2 = 0
        Command = ecSelLeft
      end
      item
        ShortCut = 16421
        ShortCut2 = 0
        Command = ecWordLeft
      end
      item
        ShortCut = 24613
        ShortCut2 = 0
        Command = ecSelWordLeft
      end
      item
        ShortCut = 39
        ShortCut2 = 0
        Command = ecRight
      end
      item
        ShortCut = 8231
        ShortCut2 = 0
        Command = ecSelRight
      end
      item
        ShortCut = 16423
        ShortCut2 = 0
        Command = ecWordRight
      end
      item
        ShortCut = 24615
        ShortCut2 = 0
        Command = ecSelWordRight
      end
      item
        ShortCut = 34
        ShortCut2 = 0
        Command = ecPageDown
      end
      item
        ShortCut = 8226
        ShortCut2 = 0
        Command = ecSelPageDown
      end
      item
        ShortCut = 16418
        ShortCut2 = 0
        Command = ecPageBottom
      end
      item
        ShortCut = 24610
        ShortCut2 = 0
        Command = ecSelPageBottom
      end
      item
        ShortCut = 33
        ShortCut2 = 0
        Command = ecPageUp
      end
      item
        ShortCut = 8225
        ShortCut2 = 0
        Command = ecSelPageUp
      end
      item
        ShortCut = 16417
        ShortCut2 = 0
        Command = ecPageTop
      end
      item
        ShortCut = 24609
        ShortCut2 = 0
        Command = ecSelPageTop
      end
      item
        ShortCut = 36
        ShortCut2 = 0
        Command = ecLineStart
      end
      item
        ShortCut = 8228
        ShortCut2 = 0
        Command = ecSelLineStart
      end
      item
        ShortCut = 16420
        ShortCut2 = 0
        Command = ecEditorTop
      end
      item
        ShortCut = 24612
        ShortCut2 = 0
        Command = ecSelEditorTop
      end
      item
        ShortCut = 35
        ShortCut2 = 0
        Command = ecLineEnd
      end
      item
        ShortCut = 8227
        ShortCut2 = 0
        Command = ecSelLineEnd
      end
      item
        ShortCut = 16419
        ShortCut2 = 0
        Command = ecEditorBottom
      end
      item
        ShortCut = 24611
        ShortCut2 = 0
        Command = ecSelEditorBottom
      end
      item
        ShortCut = 45
        ShortCut2 = 0
        Command = ecToggleMode
      end
      item
        ShortCut = 16429
        ShortCut2 = 0
        Command = ecCopy
      end
      item
        ShortCut = 8237
        ShortCut2 = 0
        Command = ecPaste
      end
      item
        ShortCut = 46
        ShortCut2 = 0
        Command = ecDeleteChar
      end
      item
        ShortCut = 8238
        ShortCut2 = 0
        Command = ecCut
      end
      item
        ShortCut = 8
        ShortCut2 = 0
        Command = ecDeleteLastChar
      end
      item
        ShortCut = 16392
        ShortCut2 = 0
        Command = ecDeleteLastWord
      end
      item
        ShortCut = 32776
        ShortCut2 = 0
        Command = ecUndo
      end
      item
        ShortCut = 40968
        ShortCut2 = 0
        Command = ecRedo
      end
      item
        ShortCut = 16449
        ShortCut2 = 0
        Command = ecSelectAll
      end
      item
        ShortCut = 16451
        ShortCut2 = 0
        Command = ecCopy
      end
      item
        ShortCut = 24649
        ShortCut2 = 0
        Command = ecBlockIndent
      end
      item
        ShortCut = 16461
        ShortCut2 = 0
        Command = ecLineBreak
      end
      item
        ShortCut = 16462
        ShortCut2 = 0
        Command = ecInsertLine
      end
      item
        ShortCut = 16468
        ShortCut2 = 0
        Command = ecDeleteWord
      end
      item
        ShortCut = 24661
        ShortCut2 = 0
        Command = ecBlockUnindent
      end
      item
        ShortCut = 16470
        ShortCut2 = 0
        Command = ecPaste
      end
      item
        ShortCut = 16472
        ShortCut2 = 0
        Command = ecCut
      end
      item
        ShortCut = 16473
        ShortCut2 = 0
        Command = ecDeleteLine
      end
      item
        ShortCut = 24665
        ShortCut2 = 0
        Command = ecDeleteEOL
      end
      item
        ShortCut = 16474
        ShortCut2 = 0
        Command = ecUndo
      end
      item
        ShortCut = 24666
        ShortCut2 = 0
        Command = ecRedo
      end
      item
        ShortCut = 16432
        ShortCut2 = 0
        Command = ecGotoMarker0
      end
      item
        ShortCut = 16433
        ShortCut2 = 0
        Command = ecGotoMarker1
      end
      item
        ShortCut = 16434
        ShortCut2 = 0
        Command = ecGotoMarker2
      end
      item
        ShortCut = 16435
        ShortCut2 = 0
        Command = ecGotoMarker3
      end
      item
        ShortCut = 16436
        ShortCut2 = 0
        Command = ecGotoMarker4
      end
      item
        ShortCut = 16437
        ShortCut2 = 0
        Command = ecGotoMarker5
      end
      item
        ShortCut = 16438
        ShortCut2 = 0
        Command = ecGotoMarker6
      end
      item
        ShortCut = 16439
        ShortCut2 = 0
        Command = ecGotoMarker7
      end
      item
        ShortCut = 16440
        ShortCut2 = 0
        Command = ecGotoMarker8
      end
      item
        ShortCut = 16441
        ShortCut2 = 0
        Command = ecGotoMarker9
      end
      item
        ShortCut = 24624
        ShortCut2 = 0
        Command = ecSetMarker0
      end
      item
        ShortCut = 24625
        ShortCut2 = 0
        Command = ecSetMarker1
      end
      item
        ShortCut = 24626
        ShortCut2 = 0
        Command = ecSetMarker2
      end
      item
        ShortCut = 24627
        ShortCut2 = 0
        Command = ecSetMarker3
      end
      item
        ShortCut = 24628
        ShortCut2 = 0
        Command = ecSetMarker4
      end
      item
        ShortCut = 24629
        ShortCut2 = 0
        Command = ecSetMarker5
      end
      item
        ShortCut = 24630
        ShortCut2 = 0
        Command = ecSetMarker6
      end
      item
        ShortCut = 24631
        ShortCut2 = 0
        Command = ecSetMarker7
      end
      item
        ShortCut = 24632
        ShortCut2 = 0
        Command = ecSetMarker8
      end
      item
        ShortCut = 24633
        ShortCut2 = 0
        Command = ecSetMarker9
      end
      item
        ShortCut = 13
        ShortCut2 = 0
        Command = ecLineBreak
      end
      item
        ShortCut = 8200
        ShortCut2 = 0
        Command = ecDeleteLastChar
      end
      item
        ShortCut = 16430
        ShortCut2 = 0
        Command = ecDeleteWord
      end
    >
    Lines.WideStrings = ['', '']
    MaxUndo = 10
    Options = ['mweoAutoIndent', 'mweoDragDropEditing', 'mweoScrollPastEol', 'mweoShowScrollHint', 'mweoTabsToSpaces']
    ReadOnly = False
    TabWidth = 4
    WantTabs = True
    OnClick = EditMClick
    OnDragDrop = EditMDragDrop
    OnDragOver = EditMDragOver
    OnEnter = EditMEnter
    OnExit = EditMExit
    OnKeyDown = EditMKeyDown
    OnKeyPress = EditMKeyPress
    OnKeyUp = EditMKeyUp
    OnMouseDown = EditMMouseDown
    OnMouseUp = EditMMouseUp
    OnPaint = EditMPaint
    OnSelectionChange = EditMSelectionChange
    OnStatusChange = EditMStatusChange
    ErrorLine = -1
    Exclude.Strings = ['	']
    OnLink = EditMLink
  end
  object pIncSearch: TPanel
    Left = 0
    Top = 247
    Width = 435
    Height = 18
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clBtnShadow
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = ['fsBold']
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  object EditActions: TActionList
    OnExecute = EditActionsExecute
    OnUpdate = EditActionsUpdate
    Left = 40
    Top = 8
    object aInsertTemplate: TAction
      Caption = 'aInsertTemplate'
      ShortCut = 16458
      OnExecute = aInsertTemplateExecute
    end
    object actCommonCI: TAction
      Category = 'CodeInsight'
      Caption = 'List of All Objects'
      ShortCut = 16416
      OnExecute = actCommonCIExecute
    end
    object actDomainsCI: TAction
      Category = 'CodeInsight'
      Caption = 'List of Domains'
      ShortCut = 49220
      OnExecute = actDomainsCIExecute
    end
    object actExceptionsCI: TAction
      Category = 'CodeInsight'
      Caption = 'List of Exceptions'
      ShortCut = 49221
      OnExecute = actExceptionsCIExecute
    end
    object actFieldsCI: TAction
      Category = 'CodeInsight'
      Caption = 'List of Fields'
      ShortCut = 49222
      OnExecute = actFieldsCIExecute
    end
    object actGeneratorsCI: TAction
      Category = 'CodeInsight'
      Caption = 'List of Generators'
      ShortCut = 49223
      OnExecute = actGeneratorsCIExecute
    end
    object actProcVarsCI: TAction
      Category = 'CodeInsight'
      Caption = 'List of Procedure Variables'
      ShortCut = 49228
      OnExecute = actProcVarsCIExecute
    end
    object actProcParamsCI: TAction
      Category = 'CodeInsight'
      Caption = 'List of Procedure Parameters'
      ShortCut = 49229
      OnExecute = actProcParamsCIExecute
    end
    object actProceduresCI: TAction
      Category = 'CodeInsight'
      Caption = 'List of Procedures'
      ShortCut = 49232
      OnExecute = actProceduresCIExecute
    end
    object actSQLCI: TAction
      Category = 'CodeInsight'
      Caption = 'List of SQL Keywords'
      ShortCut = 49235
      OnExecute = actSQLCIExecute
    end
    object actTablesCI: TAction
      Category = 'CodeInsight'
      Caption = 'List of Tables'
      ShortCut = 49236
      OnExecute = actTablesCIExecute
    end
    object actUDFsCI: TAction
      Category = 'CodeInsight'
      Caption = 'List of UDFs'
      ShortCut = 49237
      OnExecute = actUDFsCIExecute
    end
    object actViewsCI: TAction
      Category = 'CodeInsight'
      Caption = 'List of Views'
      ShortCut = 49238
      OnExecute = actViewsCIExecute
    end
    object actInsertFields: TAction
      Category = 'Edit'
      Caption = 'Insert fields list'
      ShortCut = 16502
      OnExecute = actInsertFieldsExecute
    end
    object actBeginEndClause: TAction
      Caption = 'Navigate BEGIN...END'
      ShortCut = 16495
      OnExecute = actBeginEndClauseExecute
    end
    object actOpenCloseBrackets: TAction
      Caption = 'Navigate brackets'
      ShortCut = 24629
      OnExecute = actOpenCloseBracketsExecute
    end
    object actGotoLeftBracket: TAction
      Caption = 'Goto left bracket'
      ShortCut = 32805
      OnExecute = actGotoLeftBracketExecute
    end
    object actGotoRightBracket: TAction
      Caption = 'Goto right bracket'
      ShortCut = 32807
      OnExecute = actGotoRightBracketExecute
    end
    object actContextMenu: TAction
      Caption = 'actContextMenu'
      ShortCut = 8313
      OnExecute = actContextMenuExecute
    end
    object actSelectCurrentWord: TAction
      Caption = 'Select Current Word'
      ShortCut = 16471
      OnExecute = actSelectCurrentWordExecute
    end
    object actDuplicateSelection: TAction
      Caption = 'Duplicate Selection'
      ShortCut = 16452
      OnExecute = actDuplicateSelectionExecute
      OnUpdate = actDuplicateSelectionUpdate
    end
    object actTriggersCI: TAction
      Category = 'CodeInsight'
      Caption = 'actTriggersCI'
      ShortCut = 49234
      OnExecute = actTriggersCIExecute
    end
    object actIndicesCI: TAction
      Category = 'CodeInsight'
      Caption = 'actIndicesCI'
      ShortCut = 49225
      OnExecute = actIndicesCIExecute
    end
    object actAltX: TAction
      Category = 'Edit'
      Caption = 'actAltX'
      ShortCut = 32856
      OnExecute = actAltXExecute
      OnUpdate = actAltXUpdate
    end
    object actQuickComment: TAction
      Category = 'Edit'
      Caption = 'actQuickComment'
      ShortCut = 16495
      OnExecute = actQuickCommentExecute
      OnUpdate = actQuickCommentUpdate
    end
  end
  object OpenD: TExtOpenDialog
    DefaultExt = 'SQL'
    Filter = 'SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|Stored Procedure File (*.sp)|*.sp|Trigger File (*.trg)|*.trg|All files (*.*)|*.*'
    Options = ['ofReadOnly', 'ofHideReadOnly', 'ofFileMustExist', 'ofEnableSizing']
    Title = 'Open SQL File'
    Left = 40
    Top = 78
  end
  object SaveD: TExtSaveDialog
    DefaultExt = 'SQL'
    Filter = 'SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|Rich Text Files (*.rtf)|*.rtf|All Files (*.*)|*.*'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofPathMustExist', 'ofEnableSizing']
    Left = 72
    Top = 78
  end
  object RtfExp: TmwRtfExport
    Title = '(Untitled)'
    UseBackGround = False
    Left = 72
    Top = 8
  end
  object EditTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = EditTimerTimer
    Left = 112
    Top = 8
  end
end
