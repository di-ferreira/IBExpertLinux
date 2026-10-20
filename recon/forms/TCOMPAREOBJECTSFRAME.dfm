object CompareObjectsFrame: TCompareObjectsFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  Align = alClient
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  OnResize = FrameResize
  object TBDock1: TTBDock
    Left = 0
    Top = 0
    Width = 435
    Height = 26
    object tbCompareObjects: TTBToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'tbCompareObjects'
      CloseButton = False
      DockMode = dmCannotFloat
      DragHandleStyle = dhNone
      FullSize = True
      Images = IBEMainForm.MenuImages
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object tbiRefresh: TTBItem
        Action = actRefresh
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object TBItem1: TTBItem
        Action = actHorzTile
      end
      object tbiSep2: TTBSeparatorItem
      end
      object TBControlItem1: TTBControlItem
        Control = lProgress
      end
      object tbiCompDB: TTBControlItem
        Control = lCompDB
      end
      object tbiDatabase: TTBControlItem
        Control = cbDatabase
      end
      object tbiSep: TTBSeparatorItem
      end
      object tbiCompObj: TTBControlItem
        Control = lCompObj
      end
      object tbiObjects: TTBControlItem
        Control = cbObjects
      end
      object TBControlItem2: TTBControlItem
        Control = Panel5
      end
      object TBControlItem3: TTBControlItem
        Control = cbIgnoreBlanks
      end
      object lCompDB: TLabel
        Left = 61
        Top = 4
        Width = 90
        Height = 13
        Caption = '  Comparative DB: '
      end
      object lCompObj: TLabel
        Left = 431
        Top = 22
        Width = 107
        Height = 13
        Caption = '  Comparative object: '
      end
      object lProgress: TLabel
        Left = 58
        Top = 4
        Width = 3
        Height = 13
        Visible = False
      end
      object cbDatabase: TdxPopupEdit
        Left = 151
        Top = 0
        Width = 210
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        OnChange = cbDatabaseChange
        HideEditCursor = True
        PopupControl = IBEMainForm.DBTL
        PopupFormBorderStyle = pbsSysPanel
        OnInitPopup = cbDatabaseInitPopup
        OnPopup = cbDatabasePopup
      end
      object cbObjects: TdxPickEdit
        Left = 431
        Top = 22
        Width = 200
        TabOrder = 1
        StyleController = IBEMainForm.MainSC
        OnChange = cbObjectsChange
        DropDownRows = 40
        DropDownListStyle = True
      end
      object Panel5: TPanel
        Left = 431
        Top = 22
        Width = 9
        Height = 21
        BevelOuter = bvNone
        TabOrder = 2
      end
      object cbIgnoreBlanks: TdxCheckEdit
        Left = 431
        Top = 22
        Width = 99
        TabOrder = 3
        Caption = 'Ignore blanks'
        StyleController = IBEMainForm.MainCheckSC
        OnChange = cbIgnoreBlanksChange
        State = cbsChecked
      end
    end
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 52
    Width = 435
    Height = 216
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsDiff
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    PageMargin = 0
    TabPosition = tpBottom
    TabSettings.RightMargin = 2
    TabSettings.Height = 24
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    TabOrder = 1
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsDiff: TAdvOfficePage
      Left = 0
      Top = 1
      Width = 435
      Height = 191
      Caption = 'Comparison results'
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
      object SplitterVert: TdfsSplitter
        Left = 347
        Top = 2
        Height = 168
        Cursor = crHSplit
        Align = alLeft
        OnMoved = SplitterVertMoved
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object Panel1: TPanel
        Left = 2
        Top = 2
        Width = 345
        Height = 168
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 0
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 345
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' This database'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 0
        end
        object DDLFm1: TEditFrame
          Top = 39
          Width = 345
          Height = 129
          TabOrder = 1
          object lBookmark: TLabel
            Width = 46
          end
          object EditM: TSQLMemo
            Width = 345
            Height = 111
          end
          object pIncSearch: TPanel
            Top = 111
            Width = 345
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 18
          Width = 345
          Height = 21
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          Caption = 'Panel6'
          TabOrder = 2
          Visible = False
          object cbVersion1: TdxPickEdit
            Left = 0
            Top = 0
            Width = 233
            TabOrder = 0
            StyleController = IBEMainForm.MainSC
            OnChange = cbVersion1Change
            DropDownRows = 40
            DropDownListStyle = True
          end
        end
      end
      object StatusBar1: TStatusBar
        Left = 2
        Top = 170
        Width = 431
        Height = 19
        Panels = <
          item
            Alignment = taCenter
            Style = psOwnerDraw
            Text = 'Added'
            Width = 80
          end
          item
            Alignment = taCenter
            Style = psOwnerDraw
            Text = 'Modified'
            Width = 80
          end
          item
            Alignment = taCenter
            Style = psOwnerDraw
            Text = 'Deleted'
            Width = 80
          end
          item
            Width = 50
          end
        >
        SimplePanel = False
        SizeGrip = False
        OnDrawPanel = StatusBar1DrawPanel
      end
      object Panel2: TPanel
        Left = 357
        Top = 2
        Width = 76
        Height = 168
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 2
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 76
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
        object DDLFm2: TEditFrame
          Top = 39
          Width = 76
          Height = 129
          TabOrder = 1
          object lBookmark: TLabel
            Width = 46
          end
          object EditM: TSQLMemo
            Width = 76
            Height = 111
          end
          object pIncSearch: TPanel
            Top = 111
            Width = 76
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 18
          Width = 76
          Height = 21
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 2
          Visible = False
          object cbVersion2: TdxPickEdit
            Left = 0
            Top = 0
            Width = 233
            TabOrder = 0
            StyleController = IBEMainForm.MainSC
            OnChange = cbVersion2Change
            DropDownRows = 40
            DropDownListStyle = True
          end
        end
      end
    end
    object tsDiffScript1: TAdvOfficePage
      Left = 0
      Top = 1
      Width = 435
      Height = 191
      Caption = 'Script: This to Comparative DB'
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
      object ScriptFm1: TEditFrame
        Left = 2
        Top = 2
        Width = 431
        Height = 187
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 431
          Height = 169
        end
        object pIncSearch: TPanel
          Top = 169
          Width = 431
        end
      end
    end
    object tsDiffScript2: TAdvOfficePage
      Left = 0
      Top = 1
      Width = 435
      Height = 191
      Caption = 'Script: Comparative DB to This'
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
      object ScriptFm2: TEditFrame
        Left = 2
        Top = 2
        Width = 431
        Height = 187
        object lBookmark: TLabel
          Width = 46
        end
        object EditM: TSQLMemo
          Width = 431
          Height = 169
        end
        object pIncSearch: TPanel
          Top = 169
          Width = 431
        end
      end
    end
  end
  object TBDock2: TTBDock
    Left = 0
    Top = 26
    Width = 435
    Height = 26
    object tbBrowseVersions: TTBToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'tbBrowseVersions'
      CloseButton = False
      DockMode = dmCannotFloat
      DragHandleStyle = dhNone
      FullSize = True
      Images = IBEMainForm.MenuImages
      TabOrder = 0
      Visible = False
      object TBItem2: TTBItem
        Action = actHorzTile
      end
      object TBSeparatorItem2: TTBSeparatorItem
      end
      object TBControlItem5: TTBControlItem
        Control = Label1
      end
      object TBControlItem4: TTBControlItem
        Control = cbVersionObjects
      end
      object TBControlItem6: TTBControlItem
        Control = lVersionNum
      end
      object Label1: TLabel
        Left = 29
        Top = 4
        Width = 45
        Height = 13
        Caption = ' Object:  '
      end
      object lVersionNum: TLabel
        Left = 431
        Top = 22
        Width = 58
        Height = 13
        Caption = 'lVersionNum'
        Visible = False
      end
      object cbVersionObjects: TdxPopupEdit
        Left = 74
        Top = 0
        Width = 345
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        OnChange = cbVersionObjectsChange
        HideEditCursor = True
        PopupControl = ObjTL
        PopupFormBorderStyle = pbsSysPanel
        OnInitPopup = cbVersionObjectsInitPopup
        OnPopup = cbVersionObjectsPopup
      end
    end
  end
  object ObjTL: TdxTreeList
    Tag = -1000
    Left = 563
    Top = 232
    Width = 265
    Height = 299
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    DragMode = dmAutomatic
    TabOrder = 3
    Visible = False
    HideSelection = False
    Images = IBEMainForm.ImageList
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowHeader = False
    GridLineColor = clSilver
    OnDblClick = ObjTLDblClick
    OnKeyPress = ObjTLKeyPress
    OnCustomDrawCell = ObjTLCustomDrawCell
    Constraints.MinWidth = 100
    object tlcObject: TdxTreeListColumn
      BandIndex = 0
      RowIndex = 0
    end
  end
  object MasterSE: TIBScriptExtract
    DBStructure = MDBStruc
    OnErrorMessage = MDBExtractErrorMessage
    Left = 48
    Top = 169
  end
  object TargetSE: TIBScriptExtract
    DBStructure = TDBStruc
    OnErrorMessage = MDBExtractErrorMessage
    Left = 48
    Top = 209
  end
  object MDBExtract: TIBDBExtract
    DBStructure = MDBStruc
    OnErrorMessage = MDBExtractErrorMessage
    Left = 88
    Top = 168
  end
  object TDBExtract: TIBDBExtract
    DBStructure = TDBStruc
    OnErrorMessage = MDBExtractErrorMessage
    Left = 88
    Top = 208
  end
  object MDBStruc: TDBStructure
    Left = 128
    Top = 168
  end
  object TDBStruc: TDBStructure
    Left = 128
    Top = 208
  end
  object DBComparer: TDBComparer
    DatabaseType = dbInterBase
    DBStructureMaster = MDBStruc
    DBStructureTarget = TDBStruc
    SQLExec = SQLExec
    OnErrorMessage = DBComparerErrorMessage
    Left = 168
    Top = 192
  end
  object SQLExec: TIBSQLExec
    Left = 208
    Top = 193
  end
  object ActionList1: TActionList
    Images = IBEMainForm.MenuImages
    Left = 491
    Top = 129
    object actRefresh: TAction
      Caption = 'Refresh'
      Hint = 'Compare again'
      ImageIndex = 220
      OnExecute = actRefreshExecute
    end
    object actHorzTile: TAction
      Caption = 'Tile horizontal'
      Hint = 'Tile horizontal'
      ImageIndex = 214
      OnExecute = actHorzTileExecute
    end
    object actNextObject: TAction
      Caption = 'Next Object'
      ShortCut = 40
      OnExecute = actNextObjectExecute
      OnUpdate = actNextObjectUpdate
    end
    object actPrevObject: TAction
      Caption = 'Prior Object'
      ShortCut = 38
      OnExecute = actPrevObjectExecute
      OnUpdate = actPrevObjectUpdate
    end
  end
  object ObjectsTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = ObjectsTimerTimer
    Left = 555
    Top = 114
  end
  object TR: TpFIBTransaction
    Active = False
    Timeout = 200250236
    TimeoutAction = TARollback
    Left = 403
    Top = 292
  end
  object Q: TpFIBQuery
    ParamCheck = False
    Transaction = TR
    Left = 435
    Top = 292
  end
end
