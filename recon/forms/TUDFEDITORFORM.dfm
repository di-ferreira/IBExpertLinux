object UDFEditorForm: TUDFEditorForm
  Left = 385
  Top = 249
  Width = 972
  Height = 633
  HelpContext = 15400
  Caption = 'UDFEditorForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TIBEPageControl
    Left = 0
    Top = 26
    Width = 956
    Height = 571
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsUDFs
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
    object tsUDFs: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 956
      Height = 546
      Caption = 'UDFs'
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
        Top = 376
        Width = 952
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        ResizeStyle = rsUpdate
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object pDDL: TPanel
        Left = 2
        Top = 380
        Width = 952
        Height = 164
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object pDesc: TPanel
          Left = 0
          Top = 0
          Width = 952
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Description'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 0
        end
        object DescFm2: TEditFrame
          Top = 18
          Width = 952
          Height = 146
          TabOrder = 1
          object EditM: TSQLMemo
            Width = 952
            Height = 128
            OnExit = DescFm2EditMExit
          end
          object pIncSearch: TPanel
            Top = 128
            Width = 952
          end
        end
      end
      object pName: TPanel
        Left = 2
        Top = 2
        Width = 952
        Height = 18
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = ' DDL'
        Color = clBtnShadow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = ['fsBold']
        ParentFont = False
        TabOrder = 1
      end
      object Grid: TdxDBGrid
        Left = 2
        Top = 20
        Width = 952
        Height = 356
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
        TabOrder = 2
        OnDblClick = GridDblClick
        OnExit = GridExit
        OnKeyPress = GridKeyPress
        DataSource = DS
        Filter.AutoDataSetFilter = True
        Filter.Criteria = {4 bytes}
        LookAndFeel = lfFlat
        OptionsBehavior = ['edgoAutoSearch', 'edgoAutoSort', 'edgoDragScroll', 'edgoEditing', 'edgoEnterShowEditor', 'edgoImmediateEditor', 'edgoTabThrough', 'edgoVertThrough']
        OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks', 'edgoUseLocate']
        OptionsView = ['edgoBandHeaderWidth', 'edgoDrawEndEllipsis', 'edgoUseBitmap']
        OnCustomDrawCell = GridCustomDrawCell
        OnEdited = GridEdited
        object gcName: TdxDBGridColumn
          Sorted = csUp
          Width = 151
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Name'
        end
        object gcLibraryName: TdxDBGridColumn
          Caption = 'Library Name'
          Width = 122
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LibraryName'
        end
        object gcEntryPoint: TdxDBGridColumn
          Caption = 'Entry Point'
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EntryPoint'
        end
        object gcInputParams: TdxDBGridColumn
          Caption = 'Input Arguments'
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'InputParams'
        end
        object gcReturns: TdxDBGridColumn
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Returns'
        end
        object gcReturnMechanism: TdxDBGridPickColumn
          Caption = 'Return Arg Mechanism'
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ReturnMechanism'
          DropDownListStyle = True
          Items.Strings = ['By Value', 'By Reference', 'By Descriptor']
        end
        object gcFreeIt: TdxDBGridColumn
          Caption = 'Free It'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FreeIt'
        end
        object gcDesc: TdxDBGridMemoColumn
          Caption = 'Description'
          Width = 200
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Desc'
        end
      end
    end
    object tsDescription: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 956
      Height = 546
      Caption = 'Description'
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
      object DescFm: TEditFrame
        Left = 2
        Top = 2
        Width = 952
        Height = 542
        object EditM: TSQLMemo
          Width = 952
          Height = 524
          OnExit = DescFmEditMExit
        end
        object pIncSearch: TPanel
          Top = 524
          Width = 952
        end
      end
    end
    object tsDependencies: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 956
      Height = 546
      Caption = 'Dependencies'
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
      object DepP: TPanel
        Left = 2
        Top = 2
        Width = 952
        Height = 542
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsDDL: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 956
      Height = 546
      Caption = 'DDL'
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
      object DDLFm: TEditFrame
        Left = 2
        Top = 2
        Width = 952
        Height = 542
        object EditM: TSQLMemo
          Width = 952
          Height = 524
        end
        object pIncSearch: TPanel
          Top = 524
          Width = 952
        end
      end
    end
    object tsCompare: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 956
      Height = 546
      Caption = 'Compare'
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
    object tsTodo: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 956
      Height = 546
      Caption = 'To-do'
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
  end
  object UDFActions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = UDFActionsUpdate
    Left = 512
    Top = 152
    object actCompile: TAction
      Caption = 'Compile'
      Hint = 'Compile'
      ImageIndex = 28
      ShortCut = 120
      OnExecute = actCompileExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actShowAll: TAction
      Caption = 'Show All'
      OnExecute = actShowAllExecute
    end
    object actFirstUDF: TAction
      Caption = 'First UDF'
      Hint = 'First UDF'
      OnExecute = actFirstUDFExecute
    end
    object actPrevUDF: TAction
      Caption = 'Previous UDF'
      Hint = 'Previous UDF'
      OnExecute = actPrevUDFExecute
    end
    object actNextUDF: TAction
      Caption = 'Next UDF'
      Hint = 'Next UDF'
      OnExecute = actNextUDFExecute
    end
    object actLastUDF: TAction
      Caption = 'Last UDF'
      Hint = 'Last UDF'
      OnExecute = actLastUDFExecute
    end
    object actDropUDF: TAction
      Caption = 'Drop/Delete UDF'
      Hint = 'Drop/Delete UDF'
      OnExecute = actDropUDFExecute
    end
    object actNewUDF: TAction
      Caption = 'New UDF'
      Hint = 'New UDF'
      OnExecute = actNewUDFExecute
    end
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 232
    Top = 136
  end
  object pm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton1
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton4
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 204
    Top = 202
  end
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    AfterPost = mtAfterPost
    BeforeDelete = mtBeforeDelete
    BeforeScroll = mtBeforeScroll
    OnFilterRecord = mtFilterRecord
    OnNewRecord = mtNewRecord
    Left = 264
    Top = 136
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtModified: TBooleanField
      FieldName = 'Modified'
    end
    object mtName: TStringField
      FieldName = 'Name'
      Required = True
      Size = 31
    end
    object mtInputParams: TStringField
      FieldName = 'InputParams'
      Size = 500
    end
    object mtReturns: TStringField
      FieldName = 'Returns'
      Size = 150
    end
    object mtReturnMechanism: TStringField
      FieldName = 'ReturnMechanism'
      Size = 15
    end
    object mtFreeIt: TSmallintField
      FieldName = 'FreeIt'
    end
    object mtEntryPoint: TStringField
      FieldName = 'EntryPoint'
      Size = 31
    end
    object mtLibraryName: TStringField
      FieldName = 'LibraryName'
      Size = 253
    end
    object mtDesc: TMemoField
      FieldName = 'Desc'
      BlobType = ftMemo
    end
    object mtPointer: TIntegerField
      FieldName = 'Pointer'
    end
    object mtFlag: TIntegerField
      FieldName = 'Flag'
    end
  end
  object bm: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        Caption = 'UDFs'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Exceptions'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        AllowClose = False
        Caption = 'Filter'
        DockedDockingStyle = dsTop
        DockedLeft = 415
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 404
        FloatTop = 344
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Filter'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default', 'DB Navigator']
    Categories.ItemsVisibles = [2, 2]
    Categories.Visibles = [True, True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    Style = bmsFlat
    UseSystemFont = True
    Left = 460
    Top = 130
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = actCompile
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Drop/Delete UDF'
      Visible = ivAlways
      ShortCut = 16430
    end
    object eFilter: TdxBarEdit
      Caption = 'Filter'
      Category = 0
      Hint = 'Filter'
      Visible = ivAlways
      OnChange = eFilterCurChange
      OnCurChange = eFilterCurChange
      ShowCaption = True
      Width = 100
    end
    object cbFilterBy: TdxBarCombo
      Caption = 'Filter by'
      Category = 0
      Hint = 'Filter by'
      Visible = ivAlways
      Text = 'Name'
      OnChange = cbFilterByChange
      ShowCaption = True
      Width = 100
      ShowEditor = False
      Items.Strings = ['Name', 'Library Name', 'Entry Point']
      ItemIndex = 0
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Action = actFirstUDF
      Category = 1
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev1: TdxBarDBNavButton
      Action = actPrevUDF
      Category = 1
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Action = actNextUDF
      Category = 1
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Action = actLastUDF
      Category = 1
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnLast
    end
    object dxBarDBNavInsert1: TdxBarDBNavButton
      Action = actNewUDF
      Category = 1
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnInsert
    end
    object dxBarDBNavDelete1: TdxBarDBNavButton
      Action = actDropUDF
      Category = 1
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnDelete
    end
    object dxBarButton5: TdxBarButton
      Action = actShowAll
      Category = 0
    end
    object pb: TdxBarProgressItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivNever
      ShowCaption = False
      Smooth = True
    end
    object cbGroupBy: TdxBarCombo
      Caption = 'Group By:'
      Category = 0
      Hint = 'Group By:'
      Visible = ivAlways
      Text = 'None'
      OnChange = cbGroupByChange
      ShowCaption = True
      Width = 100
      Items.Strings = ['None', 'Library Name', 'Return Mechanism']
      ItemIndex = 0
    end
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = bm
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DS
    DBCheckLinks = []
    VisibleButtons = ['dxbnFirst', 'dxbnPrior', 'dxbnNext', 'dxbnLast', 'dxbnInsert', 'dxbnDelete']
    Left = 356
    Top = 210
  end
end
