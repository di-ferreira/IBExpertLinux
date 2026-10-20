object TemplatesForm: TTemplatesForm
  Left = 368
  Top = 281
  HelpContext = 9600
  AutoScroll = False
  BorderIcons = ['biSystemMenu']
  Caption = 'Templates'
  ClientHeight = 379
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel4: TBevel
    Left = 0
    Top = 346
    Width = 632
    Height = 2
    Align = alBottom
    Shape = bsTopLine
  end
  object Splitter1: TdfsSplitter
    Left = 193
    Top = 0
    Width = 4
    Height = 346
    Cursor = crHSplit
    Align = alLeft
    Color = clBtnShadow
    ParentColor = False
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel1: TPanel
    Left = 0
    Top = 348
    Width = 632
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bOk: TButton
      Left = 554
      Top = 3
      Width = 75
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = 'Close'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object tv: TTreeView
    Left = 0
    Top = 0
    Width = 193
    Height = 346
    Align = alLeft
    HideSelection = False
    Indent = 19
    ReadOnly = True
    TabOrder = 1
    OnChange = tvChange
    OnChanging = tvChanging
  end
  object Panel2: TPanel
    Left = 197
    Top = 0
    Width = 435
    Height = 346
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Bevel1: TBevel
      Left = 0
      Top = 105
      Width = 435
      Height = 2
      Align = alTop
      Shape = bsTopLine
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 435
      Height = 105
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lHelp: TLabel
        Left = 7
        Top = 6
        Width = 421
        Height = 91
        Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
        AutoSize = False
        Caption = 'lHelp'
        WordWrap = True
      end
    end
    object M: TSQLMemo
      Left = 0
      Top = 107
      Width = 435
      Height = 239
      Cursor = crIBeam
      Align = alClient
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      Visible = False
      HighlightCurrentLine = False
      CurrentLineColor = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      HighLighter = IBEMainForm.SQLPars
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
          ShortCut = 13
          ShortCut2 = 0
          Command = ecLineBreak
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
      >
      Lines.Strings = ['', '', '', '', '', '', '', '']
      MaxUndo = 10
      ReadOnly = False
      WantTabs = True
      ErrorLine = -1
    end
    object E: TdxEdit
      Left = 8
      Top = 120
      Width = 420
      TabOrder = 2
      Visible = False
      Anchors = ['akLeft', 'akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
      OnChange = EChange
    end
    object Panel4: TPanel
      Left = 9
      Top = 142
      Width = 422
      Height = 113
      Anchors = ['akLeft', 'akTop', 'akRight']
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object Label1: TLabel
        Left = -1
        Top = 18
        Width = 254
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Update Rule'
      end
      object Label2: TLabel
        Left = -1
        Top = 52
        Width = 254
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Delete Rule'
      end
      object cbUpdateRule: TdxPickEdit
        Left = 257
        Top = 14
        Width = 161
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = cbUpdateRuleChange
        DropDownListStyle = True
        Items.Strings = ['NO ACTION', 'CASCADE', 'SET NULL', 'SET DEFAULT']
      end
      object cbDeleteRule: TdxPickEdit
        Left = 257
        Top = 48
        Width = 161
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = cbDeleteRuleChange
        DropDownListStyle = True
        Items.Strings = ['NO ACTION', 'CASCADE', 'SET NULL', 'SET DEFAULT']
      end
    end
  end
  object ActionList1: TActionList
    Left = 405
    Top = 48
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
end
