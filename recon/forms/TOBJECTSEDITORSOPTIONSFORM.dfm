object ObjectsEditorsOptionsForm: TObjectsEditorsOptionsForm
  Left = 273
  Top = 197
  HelpContext = 12900
  AutoScroll = False
  BorderIcons = ['biSystemMenu']
  Caption = 'Objects editors options'
  ClientHeight = 347
  ClientWidth = 612
  Color = clBtnFace
  Constraints.MinHeight = 280
  Constraints.MinWidth = 620
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TdfsSplitter
    Left = 160
    Top = 0
    Width = 4
    Height = 310
    Cursor = crHSplit
    Align = alLeft
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel1: TPanel
    Left = 0
    Top = 310
    Width = 612
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 612
      Height = 9
      Align = alTop
      Shape = bsTopLine
    end
    object Button1: TButton
      Left = 448
      Top = 8
      Width = 75
      Height = 25
      Anchors = ['akRight', 'akBottom']
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 534
      Top = 8
      Width = 75
      Height = 25
      Anchors = ['akRight', 'akBottom']
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object TL: TdxTreeList
    Left = 0
    Top = 0
    Width = 160
    Height = 310
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alLeft
    TabOrder = 1
    HideSelection = False
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoMultiSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowHeader = False
    GridLineColor = clSilver
    OnChangeNode = TLChangeNode
    Constraints.MinWidth = 150
    Data = {239 bytes}
    object dxTreeListColumn1: TdxTreeListColumn
      Caption = 'Object'
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
  object Pages: TIBEPageControl
    Left = 164
    Top = 0
    Width = 452
    Height = 310
    AdvOfficePagerStyler = IBEMainForm.NoGradientStyler
    Align = alClient
    ActivePage = tsProcedure
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Constraints.MinWidth = 452
    Glow = False
    PageMargin = 0
    TabSettings.RightMargin = 2
    TabSettings.Height = 24
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    TabOrder = 2
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsDomain: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 452
      Height = 285
      Caption = 'tsDomain'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
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
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object cbDomainOldStyledEditor: TdxCheckEdit
        Left = 7
        Top = 10
        Width = 438
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Use old-styled modal editor'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbDomainSysTablesModify: TdxCheckEdit
        Left = 7
        Top = 34
        Width = 438
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Enable direct modification of system tables'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsTable: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 452
      Height = 285
      Caption = 'tsTable'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
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
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object Label1: TLabel
        Left = 11
        Top = 38
        Width = 57
        Height = 13
        Caption = 'Active page'
      end
      object cbTableRestoreActivePage: TdxCheckEdit
        Left = 7
        Top = 10
        Width = 436
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Restore last active page when editor reopened'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbTableInitPage: TdxPickEdit
        Left = 10
        Top = 56
        Width = 169
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        Text = 'Fields'
        DropDownRows = 10
        DropDownListStyle = True
        Items.Strings = ['Fields', 'Contraints', 'Indices', 'Dependencies', 'Triggers', 'Data', 'Description', 'DDL', 'Grants']
      end
      object cbTableUseDBKey: TdxCheckEdit
        Left = 7
        Top = 98
        Width = 436
        TabOrder = 2
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Use RDB$DB_KEY instead of PK for modifying and deleting records'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbTableSortOnServer: TdxCheckEdit
        Left = 7
        Top = 121
        Width = 436
        TabOrder = 3
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Sort records on server'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbTableOrderByPK: TdxCheckEdit
        Left = 7
        Top = 144
        Width = 436
        TabOrder = 4
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Order data by primary key if exists'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbTableCopyDomainDesc: TdxCheckEdit
        Left = 7
        Top = 168
        Width = 434
        TabOrder = 5
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Use domain description as a description of a new domain-based column '
        StyleController = IBEMainForm.MainCheckSC
      end
    end
    object tsView: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 452
      Height = 285
      Caption = 'tsView'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
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
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object Label2: TLabel
        Left = 11
        Top = 41
        Width = 57
        Height = 13
        Caption = 'Active page'
      end
      object cbViewRestoreActivePage: TdxCheckEdit
        Left = 7
        Top = 10
        Width = 434
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Restore last active page when editor reopened'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbViewInitPage: TdxPickEdit
        Left = 10
        Top = 59
        Width = 169
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        Text = 'SQL'
        DropDownRows = 10
        DropDownListStyle = True
        Items.Strings = ['SQL', 'Fields', 'Dependencies', 'Triggers', 'Data', 'Description', 'Grants', 'DDL', 'Version history', 'Recreate script', 'Plan analyzer']
      end
    end
    object tsProcedure: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 452
      Height = 285
      Caption = 'tsProcedure'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
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
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object Label4: TLabel
        Left = 15
        Top = 9
        Width = 57
        Height = 13
        Caption = 'Editor Mode'
      end
      object cbSPPrecompile: TdxCheckEdit
        Left = 11
        Top = 56
        Width = 430
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Check syntax before compiling'
        StyleController = IBEMainForm.MainCheckSC
      end
      object gbSPRecompilingDependencies: TGroupBox
        Left = 5
        Top = 116
        Width = 440
        Height = 106
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Recompiling dependencies  '
        TabOrder = 1
        object cbSPAskForRecompiling: TdxCheckEdit
          Left = 6
          Top = 24
          Width = 423
          TabOrder = 0
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Recompile dependent procedures and triggers request'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = cbSPAskForRecompilingChange
        end
        object cbSPFirstWithEmptyBodies: TdxCheckEdit
          Left = 28
          Top = 52
          Width = 404
          TabOrder = 1
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'First recompile procedures with empty bodies'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbSPCommitAfterEachStatement: TdxCheckEdit
          Left = 28
          Top = 76
          Width = 404
          TabOrder = 2
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Commit after each statement'
          StyleController = IBEMainForm.MainCheckSC
        end
      end
      object cbProcedureEditorMode: TdxPickEdit
        Left = 15
        Top = 27
        Width = 130
        TabOrder = 2
        StyleController = IBEMainForm.MainSC
        OnChange = cbTriggerEditorModeChange
        DropDownRows = 10
        DropDownListStyle = True
        Items.Strings = ['Standard', 'Lazy']
      end
      object cbSPCheckChanges: TdxCheckEdit
        Left = 11
        Top = 253
        Width = 414
        TabOrder = 3
        Visible = False
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Check out changes'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbSPShowSizeInfo: TdxCheckEdit
        Left = 11
        Top = 80
        Width = 430
        TabOrder = 4
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Always display procedure DDL size '
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
    end
    object tsTrigger: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 452
      Height = 285
      Caption = 'tsTrigger'
      PageAppearance.BorderColor = clBtnFace
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabAppearance.BorderColor = clBtnFace
      TabAppearance.BorderColorHot = 12697277
      TabAppearance.BorderColorSelected = 12697533
      TabAppearance.BorderColorSelectedHot = 6277882
      TabAppearance.BorderColorDisabled = clBtnFace
      TabAppearance.BorderColorDown = clBtnFace
      TabAppearance.Color = clBtnFace
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16316660
      TabAppearance.ColorSelectedTo = 15722466
      TabAppearance.ColorDisabled = clWhite
      TabAppearance.ColorDisabledTo = clSilver
      TabAppearance.ColorHot = 13558249
      TabAppearance.ColorHotTo = 14669780
      TabAppearance.ColorMirror = clBtnFace
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 12966111
      TabAppearance.ColorMirrorHotTo = 9359081
      TabAppearance.ColorMirrorSelected = 15722466
      TabAppearance.ColorMirrorSelectedTo = 15722466
      TabAppearance.ColorMirrorDisabled = clBtnFace
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
      TabAppearance.BackGround.Color = clBtnFace
      TabAppearance.BackGround.ColorTo = clBtnFace
      TabAppearance.BackGround.Direction = gdHorizontal
      object Label3: TLabel
        Left = 15
        Top = 9
        Width = 57
        Height = 13
        Caption = 'Editor Mode'
      end
      object cbTriggerNoticePosition: TdxCheckEdit
        Left = 11
        Top = 80
        Width = 432
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Notice about triggers with same position'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbTriggerEditorMode: TdxPickEdit
        Left = 15
        Top = 27
        Width = 130
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        OnChange = cbTriggerEditorModeChange
        DropDownRows = 10
        DropDownListStyle = True
        Items.Strings = ['Standard', 'Lazy']
      end
      object cbTriggerVarsInGrid: TdxCheckEdit
        Left = 152
        Top = 27
        Width = 293
        TabOrder = 2
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Variables in grid'
        StyleController = IBEMainForm.MainCheckSC
      end
      object cbTriggerPrecompile: TdxCheckEdit
        Left = 11
        Top = 56
        Width = 251
        TabOrder = 3
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = 'Check syntax before compiling'
        StyleController = IBEMainForm.MainCheckSC
      end
    end
  end
  object ActionList1: TActionList
    Left = 372
    Top = 79
    object actExit: TAction
      Caption = 'actExit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
end
