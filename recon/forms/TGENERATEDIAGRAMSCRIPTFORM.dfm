object GenerateDiagramScriptForm: TGenerateDiagramScriptForm
  Left = 438
  Top = 259
  Width = 497
  Height = 500
  HelpContext = 16100
  BorderIcons = ['biSystemMenu']
  Caption = 'Generate Script'
  Color = clBtnFace
  Constraints.MinHeight = 470
  Constraints.MinWidth = 470
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 47
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lExportInto: TLabel
      Left = 6
      Top = 4
      Width = 147
      Height = 13
      AutoSize = False
      Caption = 'Generate Into'
    end
    object Label1: TLabel
      Left = 174
      Top = 4
      Width = 303
      Height = 13
      AutoSize = False
      Caption = 'Script Type'
    end
    object cbGenerateInto: TdxPickEdit
      Left = 6
      Top = 22
      Width = 153
      TabOrder = 0
      ReadOnly = False
      StyleController = IBEMainForm.MainSC
      OnChange = cbGenerateIntoChange
      DropDownListStyle = True
      Items.Strings = ['File', 'Clipboard', 'Script Executive']
      Revertable = True
      StoredValues = 64
    end
    object cbScriptType: TdxPickEdit
      Left = 174
      Top = 22
      Width = 302
      TabOrder = 1
      Anchors = ['akLeft', 'akTop', 'akRight']
      ReadOnly = False
      StyleController = IBEMainForm.MainSC
      OnChange = cbScriptTypeChange
      DropDownListStyle = True
      Items.Strings = ['Create new database', 'Update existing database', 'Difference script (for testing only)']
      Revertable = True
      StoredValues = 64
    end
  end
  object pFileName: TPanel
    Left = 0
    Top = 47
    Width = 481
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lFieldName: TLabel
      Left = 6
      Top = 2
      Width = 338
      Height = 13
      AutoSize = False
      Caption = 'File &Name'
    end
    object lFileEncoding: TLabel
      Left = 382
      Top = 3
      Width = 94
      Height = 13
      Anchors = ['akTop', 'akRight']
      AutoSize = False
      Caption = 'Encoding'
    end
    object feScriptFile: TdxButtonEdit
      Left = 6
      Top = 20
      Width = 366
      TabOrder = 0
      Anchors = ['akLeft', 'akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
      Buttons = <
        item
          Default = True
          Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
          Kind = bkGlyph
          Width = 21
        end
      >
      OnButtonClick = feScriptFileButtonClick
      ExistButtons = True
    end
    object cbFileEncoding: TdxPickEdit
      Left = 381
      Top = 20
      Width = 94
      TabOrder = 1
      Anchors = ['akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
      DropDownListStyle = True
      Items.Strings = ['ANSI', 'UTF8']
    end
  end
  object pDatabase: TPanel
    Left = 0
    Top = 96
    Width = 481
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label2: TLabel
      Left = 7
      Top = -1
      Width = 80
      Height = 13
      Caption = 'Target Database'
    end
    object cbDatabases: TdxPickEdit
      Left = 6
      Top = 17
      Width = 470
      TabOrder = 0
      Anchors = ['akLeft', 'akTop', 'akRight']
      ReadOnly = False
      StyleController = IBEMainForm.MainSC
      OnChange = cbDatabasesChange
      DropDownRows = 30
      DropDownListStyle = True
      Revertable = True
      StoredValues = 64
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 425
    Width = 481
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 481
      Height = 9
      Align = alTop
      Shape = bsTopLine
    end
    object OkB: TButton
      Left = 240
      Top = 7
      Width = 75
      Height = 24
      Action = actGenerate
      Anchors = ['akTop', 'akRight']
      Default = True
      TabOrder = 0
    end
    object CancelB: TButton
      Left = 320
      Top = 7
      Width = 75
      Height = 24
      Anchors = ['akTop', 'akRight']
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object sohoBitBtn1: TButton
      Left = 400
      Top = 7
      Width = 75
      Height = 24
      Anchors = ['akTop', 'akRight']
      Caption = 'Help'
      TabOrder = 2
    end
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 141
    Width = 481
    Height = 284
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsOptions
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    PageMargin = 0
    TabSettings.LeftMargin = 2
    TabSettings.RightMargin = 2
    TabSettings.Height = 24
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    TabOrder = 3
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsOptions: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 481
      Height = 259
      Caption = 'Options'
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
      TabAppearance.BackGround.ColorTo = 14342874
      TabAppearance.BackGround.Direction = gdHorizontal
      object Panel3: TPanel
        Left = 0
        Top = 1
        Width = 481
        Height = 258
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object cbUppercaseIdentifiers: TdxCheckEdit
          Left = 5
          Top = 8
          Width = 465
          TabOrder = 0
          Caption = 'Don''t quote identifiers if possible'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbDontAnalyzeIBE: TdxCheckEdit
          Left = 5
          Top = 34
          Width = 478
          TabOrder = 1
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Don''t analyze IBExpert (IBE$*) objects'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbSetGenerators: TdxCheckEdit
          Left = 5
          Top = 60
          Width = 478
          TabOrder = 2
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Set generators'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbIncludeDescriptionsChange
        end
        object GroupBox1: TGroupBox
          Left = 9
          Top = 121
          Width = 457
          Height = 121
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = '  Object descriptions  '
          TabOrder = 3
          object cbIncludeDescriptions: TdxCheckEdit
            Left = 4
            Top = 16
            Width = 443
            TabOrder = 0
            Anchors = ['akLeft', 'akTop', 'akRight']
            Caption = 'Include object descriptions'
            StyleController = IBEMainForm.MainCheckSC
            OnChange = cbIncludeDescriptionsChange
            State = cbsChecked
          end
          object rbDescribe: TRadioButton
            Left = 30
            Top = 44
            Width = 419
            Height = 17
            Anchors = ['akLeft', 'akTop', 'akRight']
            Caption = 'DESCRIBE statement (IBExpert only)'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
          object rbUpdate: TRadioButton
            Left = 30
            Top = 68
            Width = 419
            Height = 17
            Anchors = ['akLeft', 'akTop', 'akRight']
            Caption = 'UPDATE of system tables'
            TabOrder = 2
          end
          object rbComment: TRadioButton
            Left = 30
            Top = 92
            Width = 419
            Height = 17
            Anchors = ['akLeft', 'akTop', 'akRight']
            Caption = 'COMMENT ON statement (Firebird 2.x)'
            TabOrder = 3
          end
        end
      end
    end
    object tsCompare: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 481
      Height = 259
      Caption = 'Objects to compare'
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
      TabAppearance.BackGround.ColorTo = 14342874
      TabAppearance.BackGround.Direction = gdHorizontal
      object Panel4: TPanel
        Left = 0
        Top = 1
        Width = 481
        Height = 258
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel1: TBevel
          Left = 4
          Top = 106
          Width = 471
          Height = 6
          Anchors = ['akLeft', 'akTop', 'akRight']
          Shape = bsBottomLine
        end
        object Bevel2: TBevel
          Left = 4
          Top = 142
          Width = 471
          Height = 6
          Anchors = ['akLeft', 'akTop', 'akRight']
          Shape = bsBottomLine
        end
        object cbDomains: TdxCheckEdit
          Left = 6
          Top = 3
          Width = 220
          TabOrder = 0
          Caption = 'Domains'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbTables: TdxCheckEdit
          Left = 6
          Top = 23
          Width = 220
          TabOrder = 1
          Caption = 'Tables'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbViews: TdxCheckEdit
          Left = 6
          Top = 43
          Width = 220
          TabOrder = 2
          Caption = 'Views'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbProcedures: TdxCheckEdit
          Left = 6
          Top = 63
          Width = 220
          Enabled = False
          TabOrder = 3
          Caption = 'Procedures'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbTriggers: TdxCheckEdit
          Left = 6
          Top = 83
          Width = 220
          TabOrder = 4
          Caption = 'Triggers'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbGenerators: TdxCheckEdit
          Left = 242
          Top = 7
          Width = 220
          TabOrder = 5
          Caption = 'Generators'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbExceptions: TdxCheckEdit
          Left = 242
          Top = 28
          Width = 220
          Enabled = False
          TabOrder = 6
          Caption = 'Exceptions'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbUDFs: TdxCheckEdit
          Left = 242
          Top = 48
          Width = 220
          Enabled = False
          TabOrder = 7
          Caption = 'UDFs'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbRoles: TdxCheckEdit
          Left = 242
          Top = 68
          Width = 220
          Enabled = False
          TabOrder = 8
          Caption = 'Roles'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbIndices: TdxCheckEdit
          Left = 242
          Top = 87
          Width = 220
          TabOrder = 9
          Caption = 'Indices'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbGrants: TdxCheckEdit
          Left = 6
          Top = 118
          Width = 220
          Enabled = False
          TabOrder = 10
          Caption = 'Grants'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbDescriptions: TdxCheckEdit
          Left = 242
          Top = 119
          Width = 220
          TabOrder = 11
          Caption = 'Descriptions'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbPKs: TdxCheckEdit
          Left = 6
          Top = 151
          Width = 220
          TabOrder = 12
          Caption = 'Primary keys'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbFKs: TdxCheckEdit
          Left = 6
          Top = 175
          Width = 220
          TabOrder = 13
          Caption = 'Foreign keys'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbUniques: TdxCheckEdit
          Left = 242
          Top = 151
          Width = 220
          TabOrder = 14
          Caption = 'Uniques'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbChecks: TdxCheckEdit
          Left = 242
          Top = 175
          Width = 220
          TabOrder = 15
          Caption = 'Checks'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
      end
    end
    object tsOutput: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 481
      Height = 259
      Caption = 'Output'
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
      TabAppearance.BackGround.ColorTo = 14342874
      TabAppearance.BackGround.Direction = gdHorizontal
      object p: TPanel
        Left = 0
        Top = 1
        Width = 481
        Height = 18
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = ['fsBold']
        ParentFont = False
        TabOrder = 0
      end
      object M: TdxMemo
        Tag = 1000
        Left = 0
        Top = 19
        Width = 481
        Align = alClient
        TabOrder = 1
        ReadOnly = True
        StyleController = IBEMainForm.MainSC
        ScrollBars = ssBoth
        Height = 240
        StoredValues = 64
      end
    end
  end
  object SD: TSaveDialog
    DefaultExt = 'sql'
    Filter = 'SQL Script (*.sql)|*.sql|All files (*.*)|*.*'
    Left = 303
    Top = 168
  end
  object ActionList1: TActionList
    Left = 336
    Top = 172
    object actGenerate: TAction
      Caption = 'Run'
      OnExecute = actGenerateExecute
      OnUpdate = actGenerateUpdate
    end
  end
  object DBStruc: TDBStructure
    Left = 216
    Top = 324
  end
  object DBExtract: TIBDBExtract
    DBCConnection = Conn
    DBStructure = DBStruc
    OnLogNextLine = DBExtractLogNextLine
    OnErrorMessage = DBExtractErrorMessage
    Left = 176
    Top = 324
  end
  object Comparer: TDBComparer
    DatabaseType = dbInterBase
    CompareObjects = ['coDomain', 'coGenerator', 'coTable', 'coView', 'coTrigger', 'coIndex', 'coPrimaryKey', 'coForeignKey', 'coUnique', 'coCheck', 'coDescription']
    DBStructureMaster = ScriptStruc
    DBStructureTarget = DBStruc
    SQLExec = SQLExec
    Left = 288
    Top = 348
  end
  object ScriptExtract: TIBScriptExtract
    DBStructure = ScriptStruc
    OnErrorMessage = ScriptExtractErrorMessage
    Left = 176
    Top = 372
  end
  object ScriptStruc: TDBStructure
    Left = 216
    Top = 372
  end
  object SQLExec: TIBSQLExec
    Left = 344
    Top = 353
  end
  object DB: TpFIBDatabase
    ClientLibName = 'gds32.dll'
    SQLDialect = 1
    SQLDAVersion = 1
    Timeout = 177757604
    WaitForRestoreConnect = 177757604
    Left = 32
    Top = 380
  end
  object Conn: TDBCConnectionFIB
    Database = DB
    Left = 72
    Top = 380
  end
end
