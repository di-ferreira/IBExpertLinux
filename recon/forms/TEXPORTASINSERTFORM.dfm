object ExportAsInsertForm: TExportAsInsertForm
  Left = 474
  Top = 216
  HelpContext = 7100
  AutoScroll = False
  Caption = 'Export data into script'
  ClientHeight = 527
  ClientWidth = 675
  Color = clBtnFace
  Constraints.MinHeight = 356
  Constraints.MinWidth = 418
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TIBEPageControl
    Left = 0
    Top = 0
    Width = 675
    Height = 488
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsScript
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
    object tsScript: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 675
      Height = 463
      Caption = 'Export into a script'
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
      object lExportInto: TLabel
        Left = 7
        Top = 8
        Width = 206
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Export Into'
        Transparent = True
      end
      object lExportAs: TLabel
        Left = 7
        Top = 36
        Width = 206
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Export As'
        Transparent = True
      end
      object lFieldName: TLabel
        Left = 5
        Top = 65
        Width = 95
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'File &Name'
        Transparent = True
      end
      object lTableName: TLabel
        Left = 5
        Top = 92
        Width = 95
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '&Table Name'
        FocusControl = eTableName
        Transparent = True
      end
      object cbExportInto: TdxPickEdit
        Left = 217
        Top = 5
        Width = 453
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        ReadOnly = False
        StyleController = IBEMainForm.MainSC
        OnChange = cbExportIntoChange
        DropDownListStyle = True
        Items.Strings = ['File', 'Clipboard', 'Script Executive']
        Revertable = True
        StoredValues = 64
      end
      object cbExportType: TdxPickEdit
        Left = 217
        Top = 33
        Width = 453
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight']
        ReadOnly = False
        StyleController = IBEMainForm.MainSC
        OnChange = cbExportTypeChange
        DropDownListStyle = True
        Items.Strings = ['INSERT Statements', 'UPDATE Statements', 'UPDATE OR INSERT Statements', 'EXECUTE PROCEDURE Statements']
        Revertable = True
        StoredValues = 64
      end
      object feExportFile: TdxButtonEdit
        Left = 104
        Top = 61
        Width = 566
        TabOrder = 2
        Anchors = ['akLeft', 'akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        OnChange = feExportFileChange
        Buttons = <
          item
            Default = True
            Glyph.Data = {3e020000424d3e0200000000000036000000280000000d0000000d00000001001800000000000802000000000000000000000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00000000000000000000000000000000000000000000000000000000000000ff00ffff00ffff00ff00000000000000408080408080408080408080408080408080408080408080000000ff00ffff00ff0000000080ffff000000408080408080408080408080408080408080408080408080000000ff00ff0000000080ffff80ffff0000004080804080804080804080804080804080804080804080800000000000000080ffff80ffff80ffff0000000000000000000000000000000000000000000000000000000000000080ffff80ffff80ffff80ffff80ffff80ffff80ffff80ffff000000ff00ffff00ffff00ff0000000080ffff80ffff80ffff000000000000000000000000000000000000ff00ffff00ffff00ff00ff00ff000000000000000000ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ffff00ff000000000000ff00ff00ff00ffff00ffff00ffff00ffff00ff000000ff00ffff00ffff00ff000000ff00ff000000ff00ff00ff00ffff00ffff00ffff00ffff00ffff00ff000000000000000000ff00ffff00ffff00ffff00ff00}
            Kind = bkGlyph
            Width = 21
          end
        >
        OnButtonClick = feExportFileButtonClick
        ExistButtons = True
      end
      object eTableName: TdxEdit
        Left = 104
        Top = 89
        Width = 566
        TabOrder = 3
        Anchors = ['akLeft', 'akTop', 'akRight']
        MaxLength = 31
        StyleController = IBEMainForm.MainSC
        StoredValues = 2
      end
      object PageControl1: TIBEPageControl
        Left = 2
        Top = 120
        Width = 671
        Height = 341
        AdvOfficePagerStyler = IBEMainForm.PCStyler
        Align = alBottom
        Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
        ActivePage = tsFields
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
        TabOrder = 4
        TabStop = True
        NextPictureChanged = True
        PrevPictureChanged = True
        object tsFields: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 671
          Height = 316
          Caption = '&Fields'
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
          object FieldsTL: TdxTreeList
            Left = 2
            Top = 2
            Width = 667
            Height = 312
            Bands = <
              item
                Caption = 'Source fields'
              end
            >
            DefaultLayout = False
            HeaderPanelRowCount = 1
            Align = alClient
            DragMode = dmAutomatic
            PopupMenu = pMenu
            TabOrder = 0
            HideSelection = False
            LookAndFeel = lfFlat
            Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect']
            OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
            TreeLineColor = clGrayText
            ShowGrid = True
            ShowRoot = False
            GridLineColor = clSilver
            OnClick = FieldsTLClick
            OnKeyPress = FieldsTLKeyPress
            OnCustomDrawCell = FieldsTLCustomDrawCell
            OnEdited = FieldsTLEdited
            object tlcPK: TdxTreeListColumn
              Caption = 'PK'
              HeaderAlignment = taCenter
              Width = 22
              BandIndex = 0
              RowIndex = 0
            end
            object tlcInsert: TdxTreeListColumn
              Caption = 'I'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 22
              BandIndex = 0
              RowIndex = 0
            end
            object tlcUpdate: TdxTreeListColumn
              Caption = 'U'
              HeaderAlignment = taCenter
              Visible = False
              Width = 22
              BandIndex = 0
              RowIndex = 0
            end
            object tlcWhere: TdxTreeListColumn
              Caption = 'W'
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 22
              BandIndex = 0
              RowIndex = 0
            end
            object tlcField: TdxTreeListColumn
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              MaxLength = 31
              Width = 182
              BandIndex = 0
              RowIndex = 0
            end
            object tlcType: TdxTreeListColumn
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Width = 198
              BandIndex = 0
              RowIndex = 0
            end
          end
        end
        object tsOptions: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 671
          Height = 316
          Caption = '&Options'
          ImageIndex = 1
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
          object lCommit: TLabel
            Left = 9
            Top = 259
            Width = 171
            Height = 13
            Caption = 'Insert ''COMMIT'' after each (records)'
            Transparent = True
          end
          object lDateFormat: TLabel
            Left = 9
            Top = 68
            Width = 141
            Height = 13
            AutoSize = False
            Caption = 'Date Format'
            Transparent = True
          end
          object lDateTimeFormat: TLabel
            Left = 163
            Top = 68
            Width = 141
            Height = 13
            AutoSize = False
            Caption = 'DateTime Format'
            Transparent = True
          end
          object seCommitRecs: TdxSpinEdit
            Left = 185
            Top = 256
            Width = 73
            TabOrder = 9
            StyleController = IBEMainForm.MainSC
            Increment = 50
            MaxValue = 1000000
            Value = 500
            StoredValues = 16
          end
          object cbReplaceNonPrint: TIBECheckBox
            Left = 5
            Top = 10
            Width = 444
            Height = 20
            TabOrder = 0
            TabStop = True
            Alignment = taLeftJustify
            Caption = '&Replace non-print characters in strings with spaces'
            ReturnIsTab = False
            Themed = True
            Version = '1.3.2.0'
          end
          object eDateFormat: TdxEdit
            Left = 9
            Top = 86
            Width = 142
            TabOrder = 2
            StyleController = IBEMainForm.MainSC
          end
          object eDateTimeFormat: TdxEdit
            Left = 163
            Top = 86
            Width = 142
            TabOrder = 3
            StyleController = IBEMainForm.MainSC
          end
          object cbCreateTable: TIBECheckBox
            Left = 5
            Top = 145
            Width = 440
            Height = 20
            Anchors = ['akLeft', 'akTop', 'akRight']
            TabOrder = 4
            TabStop = True
            Alignment = taLeftJustify
            Caption = 'Add CREATE TABLE statement'
            ReturnIsTab = False
            Themed = True
            Version = '1.3.2.0'
          end
          object cbANSIPrefix: TIBECheckBox
            Left = 5
            Top = 120
            Width = 440
            Height = 20
            Anchors = ['akLeft', 'akTop', 'akRight']
            TabOrder = 7
            TabStop = True
            Alignment = taLeftJustify
            Caption = 'Use ANSI prefix for date/time values'
            ReturnIsTab = False
            Themed = True
            Version = '1.3.2.0'
          end
          object cbTrim: TIBECheckBox
            Left = 5
            Top = 36
            Width = 444
            Height = 20
            TabOrder = 1
            TabStop = True
            Alignment = taLeftJustify
            Caption = 'Remove trailing spaces and control characters from string values'
            ReturnIsTab = False
            Themed = True
            Version = '1.3.2.0'
          end
          object cbMemoAsString: TIBECheckBox
            Left = 5
            Top = 195
            Width = 440
            Height = 20
            Anchors = ['akLeft', 'akTop', 'akRight']
            TabOrder = 6
            TabStop = True
            Alignment = taLeftJustify
            Caption = 'Export values of MEMO fields as strings'
            ReturnIsTab = False
            Themed = True
            Version = '1.3.2.0'
          end
          object cbDontFormat: TIBECheckBox
            Left = 5
            Top = 220
            Width = 624
            Height = 20
            Anchors = ['akLeft', 'akTop', 'akRight']
            TabOrder = 8
            TabStop = True
            Alignment = taLeftJustify
            Caption = 'Do not put linefeeds and extra spaces between statement parts'
            ReturnIsTab = False
            Themed = True
            Version = '1.3.2.0'
          end
          object cbDeleteFromTable: TIBECheckBox
            Left = 5
            Top = 170
            Width = 440
            Height = 20
            Anchors = ['akLeft', 'akTop', 'akRight']
            TabOrder = 5
            TabStop = True
            Alignment = taLeftJustify
            Caption = 'Add DELETE FROM [table] statement'
            ReturnIsTab = False
            Themed = True
            Version = '1.3.2.0'
          end
        end
        object tsCondition: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 671
          Height = 316
          Caption = 'Additional'
          ImageIndex = 2
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
          object Label4: TLabel
            Left = 2
            Top = 2
            Width = 667
            Height = 35
            Align = alTop
            AutoSize = False
            Caption = ' Here you can define additional conditions for query. \r\n For example, ORDER BY or WHERE clause.'
          end
          object EditFm: TEditFrame
            Left = 2
            Top = 37
            Width = 667
            Height = 277
            object EditM: TSQLMemo
              Width = 667
              Height = 259
            end
            object pIncSearch: TPanel
              Top = 259
              Width = 667
            end
          end
        end
      end
    end
    object tsTable: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 675
      Height = 463
      Caption = 'Export into a table'
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
      object dxPageControl2: TIBEPageControl
        Left = 2
        Top = 107
        Width = 671
        Height = 354
        AdvOfficePagerStyler = IBEMainForm.PCStyler
        Align = alClient
        ActivePage = tsFields2
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
        object tsFields2: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 671
          Height = 329
          Caption = '&Fields'
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
          object TableFieldsTL: TdxTreeList
            Left = 2
            Top = 2
            Width = 667
            Height = 325
            Bands = <
              item
                Alignment = taLeftJustify
                Caption = 'Source fields'
                Width = 385
              end
              item
                Alignment = taLeftJustify
                Caption = 'Target fields'
                Width = 310
              end
            >
            DefaultLayout = False
            HeaderPanelRowCount = 1
            Align = alClient
            DragMode = dmAutomatic
            PopupMenu = pMenu
            TabOrder = 0
            HideSelection = False
            LookAndFeel = lfFlat
            Options = ['aoColumnSizing', 'aoColumnMoving', 'aoEditing', 'aoTabThrough', 'aoImmediateEditor', 'aoDrawEndEllipsis', 'aoHideFocusRect']
            OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
            TreeLineColor = clGrayText
            ShowBands = True
            ShowGrid = True
            ShowRoot = False
            GridLineColor = clSilver
            OnClick = TableFieldsTLClick
            OnKeyPress = TableFieldsTLKeyPress
            OnCustomDrawCell = FieldsTLCustomDrawCell
            OnEdited = TableFieldsTLEdited
            object tlcSFName: TdxTreeListColumn
              Caption = 'Name'
              DisableEditor = True
              Width = 135
              BandIndex = 0
              RowIndex = 0
            end
            object tlcSFType: TdxTreeListColumn
              Caption = 'Type'
              DisableEditor = True
              Width = 174
              BandIndex = 0
              RowIndex = 0
            end
            object tlcSExport: TdxTreeListColumn
              Caption = 'Export'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 50
              BandIndex = 0
              RowIndex = 0
            end
            object tlcTFName: TdxTreeListPickColumn
              Caption = 'Name'
              Width = 155
              BandIndex = 1
              RowIndex = 0
              DropDownListStyle = True
              DropDownRows = 40
            end
            object tlcTFType: TdxTreeListColumn
              Caption = 'Type'
              DisableEditor = True
              Width = 155
              BandIndex = 1
              RowIndex = 0
            end
          end
        end
        object tsOptions2: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 671
          Height = 329
          Caption = '&Options'
          ImageIndex = 1
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
          object lCommitAfter: TLabel
            Left = 9
            Top = 18
            Width = 191
            Height = 13
            Caption = 'Commit after specified number of records'
            Transparent = True
          end
          object seCommitRecs2: TdxSpinEdit
            Left = 209
            Top = 16
            Width = 73
            TabOrder = 0
            StyleController = IBEMainForm.MainSC
            Increment = 50
            MaxValue = 1000000
            Value = 500
            StoredValues = 16
          end
        end
      end
      object Panel2: TPanel
        Left = 2
        Top = 2
        Width = 671
        Height = 105
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lTargetDB: TLabel
          Left = 6
          Top = 7
          Width = 78
          Height = 13
          Caption = 'Target database'
        end
        object lExportInto2: TLabel
          Left = 7
          Top = 52
          Width = 50
          Height = 13
          Caption = 'Export into'
        end
        object lTableName2: TLabel
          Left = 190
          Top = 53
          Width = 56
          Height = 13
          Caption = 'Table name'
        end
        object peTargetDB: TdxPopupEdit
          Left = 5
          Top = 24
          Width = 665
          TabOrder = 0
          Anchors = ['akLeft', 'akTop', 'akRight']
          StyleController = IBEMainForm.MainSC
          OnChange = peTargetDBChange
          HideEditCursor = True
          PopupControl = IBEMainForm.DBTL
          PopupFormBorderStyle = pbsSysPanel
          OnInitPopup = peTargetDBInitPopup
          OnPopup = peTargetDBPopup
        end
        object cbExportInto2: TdxPickEdit
          Left = 6
          Top = 71
          Width = 172
          Enabled = False
          TabOrder = 1
          ReadOnly = False
          StyleController = IBEMainForm.MainSC
          OnChange = cbExportInto2Change
          DropDownListStyle = True
          Items.Strings = ['Existing table', 'New table']
          Revertable = True
          StoredValues = 64
        end
        object cbTables: TdxPickEdit
          Left = 190
          Top = 71
          Width = 479
          Enabled = False
          TabOrder = 2
          Anchors = ['akLeft', 'akTop', 'akRight']
          ReadOnly = False
          StyleController = IBEMainForm.MainSC
          OnChange = cbTablesChange
          DropDownRows = 40
          DropDownListStyle = True
          Items.Strings = ['Existing table', 'New table']
          Revertable = True
          StoredValues = 64
        end
        object eNewTableName: TdxEdit
          Left = 190
          Top = 70
          Width = 121
          Enabled = False
          TabOrder = 3
          Visible = False
          Anchors = ['akLeft', 'akTop', 'akRight']
          StyleController = IBEMainForm.MainSC
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 488
    Width = 675
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 675
      Height = 5
      Align = alTop
      Shape = bsBottomLine
    end
    object CountP: TPanel
      Left = 4
      Top = 10
      Width = 127
      Height = 22
      Anchors = ['akLeft', 'akBottom']
      BevelOuter = bvLowered
      TabOrder = 0
      Visible = False
    end
    object ExportB: TButton
      Left = 409
      Top = 9
      Width = 91
      Height = 24
      Action = aExport
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      TabOrder = 1
    end
    object Button1: TButton
      Left = 506
      Top = 9
      Width = 85
      Height = 24
      Action = actExit
      Anchors = ['akRight', 'akBottom']
      Cancel = True
      ModalResult = 2
      TabOrder = 2
    end
    object HelpB: TButton
      Left = 597
      Top = 9
      Width = 73
      Height = 24
      Anchors = ['akRight', 'akBottom']
      Caption = '&Help'
      TabOrder = 3
    end
  end
  object Tr: TFIBTransaction
    Active = False
    Timeout = 113146720
    TimeoutAction = TARollback
    Left = 496
    Top = 328
  end
  object Q: TpFIBDataSet
    BufferChunks = 32
    CachedUpdates = False
    UniDirectional = True
    UpdateRecordTypes = ['cusUnmodified', 'cusModified', 'cusInserted']
    Transaction = Tr
    Options = ['poAllowChangeSqls', 'poRefreshAfterPost', 'poAutoFormatFields']
    ObjectView = False
    Left = 456
    Top = 328
  end
  object Actions: TActionList
    OnUpdate = ActionsUpdate
    Left = 536
    Top = 304
    object aExport: TAction
      Caption = '&Export'
      OnExecute = aExportExecute
      OnUpdate = aExportUpdate
    end
    object actSelectAll: TAction
      Caption = 'Select All'
      OnExecute = actSelectAllExecute
    end
    object actUnselectAll: TAction
      Caption = 'Unselect All'
      OnExecute = actUnselectAllExecute
    end
    object actInvertSelection: TAction
      Caption = 'Invert Selection'
      OnExecute = actInvertSelectionExecute
    end
    object actEditFieldName: TAction
      Caption = 'Edit Field Name'
      ShortCut = 113
      OnExecute = actEditFieldNameExecute
    end
    object actExit: TAction
      Caption = 'Cancel'
      ShortCut = 27
      OnExecute = actExitExecute
      OnUpdate = actExitUpdate
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
  end
  object pMenu: TPopupMenu
    Left = 415
    Top = 328
    object SelectAll1: TMenuItem
      Action = actSelectAll
    end
    object UnselectAll1: TMenuItem
      Action = actUnselectAll
    end
    object InvertSelection1: TMenuItem
      Action = actInvertSelection
    end
  end
  object SD: TSaveDialog
    DefaultExt = 'sql'
    Filter = 'SQL Script (*.sql)|*.sql|All files (*.*)|*.*'
    Options = ['ofHideReadOnly', 'ofNoChangeDir', 'ofEnableSizing']
    Left = 375
    Top = 336
  end
  object ODBCQ: TmQuery
    Left = 456
    Top = 261
  end
  object TT: TpFIBTransaction
    Active = False
    Timeout = 147829212
    TimeoutAction = TARollback
    Left = 232
    Top = 231
  end
  object QQ: TpFIBQuery
    GoToFirstRecordOnExecute = False
    ParamCheck = True
    Transaction = TT
    Left = 264
    Top = 231
  end
end
