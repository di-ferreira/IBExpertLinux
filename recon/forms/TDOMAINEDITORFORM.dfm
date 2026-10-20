object DomainEditorForm: TDomainEditorForm
  Left = 292
  Top = 224
  Width = 745
  Height = 540
  HelpContext = 11300
  Caption = 'DomainEditorForm'
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
    Top = 44
    Width = 729
    Height = 460
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsDomains
    ButtonSettings.PageListButtonHint = 'Page List'
    ShowShortCutHints = False
    OnChange = PagesChange
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsDomains: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 727
      Height = 432
      HelpContext = 26
      Caption = 'Domains'
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
        Top = 317
        Width = 723
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        ResizeStyle = rsUpdate
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object pFieldComment: TPanel
        Left = 2
        Top = 321
        Width = 723
        Height = 109
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object pDesc: TPanel
          Left = 0
          Top = 0
          Width = 723
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
        object DescFM2: TEditFrame
          Top = 18
          Width = 723
          Height = 91
          TabOrder = 1
          object EditM: TSQLMemo
            Width = 723
            Height = 73
            OnExit = DescFM2EditMExit
          end
          object pIncSearch: TPanel
            Top = 73
            Width = 723
          end
        end
      end
      object Grid: TdxDBGrid
        Left = 2
        Top = 2
        Width = 723
        Height = 315
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
        TabOrder = 0
        OnDblClick = GridDblClick
        OnDragDrop = GridDragDrop
        OnDragOver = GridDragOver
        OnExit = GridExit
        OnKeyPress = GridKeyPress
        DataSource = DS
        Filter.Criteria = {4 bytes}
        LookAndFeel = lfFlat
        OptionsDB = ['edgoCanAppend', 'edgoCancelOnExit', 'edgoCanInsert', 'edgoCanNavigation', 'edgoConfirmDelete', 'edgoLoadAllRecords', 'edgoUseBookmarks']
        OnChangeColumn = GridChangeColumn
        OnChangeNode = GridChangeNode
        OnCustomDrawCell = GridCustomDrawCell
        OnEdited = GridEdited
        OnEditing = GridEditing
        object gcName: TdxDBGridColumn
          Width = 169
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Name'
        end
        object gcType: TdxDBGridPickColumn
          CharCase = ecUpperCase
          Width = 117
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Type'
          DropDownListStyle = True
          Items.Strings = ['RAW', 'NUMBER', 'LONG', 'VARCHAR2', 'DATE']
          DropDownRows = 20
        end
        object gcPrecision: TdxDBGridSpinColumn
          Caption = 'Size/Prec'
          Width = 56
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Prec'
        end
        object gcScale: TdxDBGridSpinColumn
          Width = 38
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Scale'
          MaxValue = 18
        end
        object gcNotNull: TdxDBGridColumn
          Alignment = taCenter
          Caption = 'Not null'
          DisableEditor = True
          HeaderAlignment = taCenter
          ReadOnly = True
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NotNull'
        end
        object gcSubType: TdxDBGridPickColumn
          BandIndex = 0
          RowIndex = 0
          DisableGrouping = True
          FieldName = 'SubType'
          Items.Strings = ['Binary', 'Text']
        end
        object gcCharset: TdxDBGridPickColumn
          Width = 102
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Charset'
          DropDownListStyle = True
          DropDownRows = 20
        end
        object gcCollate: TdxDBGridPickColumn
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Collate'
          DropDownListStyle = True
          DropDownRows = 20
        end
        object gcDefault: TdxDBGridColumn
          Width = 81
          BandIndex = 0
          RowIndex = 0
          HeaderMaxLineCount = 0
          FieldName = 'Default'
          DisableFilter = True
        end
        object gcCheck: TdxDBGridBlobColumn
          Width = 106
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Check'
          BlobPaintStyle = bpsText
        end
        object gcArray: TdxDBGridColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Array'
        end
        object gcIsNew: TdxDBGridColumn
          Visible = False
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'IsNew'
        end
        object gcComment: TdxDBGridBlobColumn
          Width = 250
          BandIndex = 0
          RowIndex = 0
          HeaderMaxLineCount = 0
          DisableGrouping = True
          FieldName = 'Description'
          BlobPaintStyle = bpsText
        end
      end
    end
    object tsDescription: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 727
      Height = 432
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
        Width = 723
        Height = 428
        object EditM: TSQLMemo
          Width = 723
          Height = 410
          OnExit = DescFmEditMExit
        end
        object pIncSearch: TPanel
          Top = 410
          Width = 723
        end
      end
    end
    object tsDependencies: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 727
      Height = 432
      HelpContext = 30
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
        Width = 723
        Height = 428
        Align = alClient
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
      end
    end
    object tsDDL: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 727
      Height = 432
      HelpContext = 31
      Caption = 'DDL'
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
      object DDLFm: TEditFrame
        Left = 2
        Top = 2
        Width = 723
        Height = 428
        object EditM: TSQLMemo
          Width = 723
          Height = 410
        end
        object pIncSearch: TPanel
          Top = 410
          Width = 723
        end
      end
    end
    object tsCompare: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 727
      Height = 432
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
      Left = 1
      Top = 26
      Width = 727
      Height = 432
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
  object p1: TPanel
    Left = 0
    Top = 26
    Width = 729
    Height = 18
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clBtnShadow
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMenu
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = ['fsBold']
    ParentFont = False
    TabOrder = 5
  end
  object DS: TDataSource
    DataSet = mt
    OnDataChange = DSDataChange
    Left = 304
    Top = 176
  end
  object mt: TkbmMemTable
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    BeforeInsert = mtBeforeInsert
    AfterPost = mtAfterPost
    BeforeDelete = mtBeforeDelete
    BeforeScroll = mtBeforeScroll
    OnNewRecord = mtNewRecord
    Left = 336
    Top = 176
    object mtName: TStringField
      FieldName = 'Name'
      Size = 31
    end
    object mtType: TStringField
      FieldName = 'Type'
      OnChange = mtTypeChange
      Size = 35
    end
    object mtNotNull: TSmallintField
      FieldName = 'NotNull'
    end
    object mtPrec: TIntegerField
      FieldName = 'Prec'
      OnChange = mtPrecChange
    end
    object mtScale: TSmallintField
      FieldName = 'Scale'
    end
    object mtPointer: TIntegerField
      FieldName = 'Pointer'
    end
    object mtIsNew: TSmallintField
      FieldName = 'IsNew'
    end
    object mtArray: TStringField
      FieldName = 'Array'
      Size = 300
    end
    object mtCheck: TMemoField
      FieldName = 'Check'
      BlobType = ftMemo
    end
    object mtDescription: TMemoField
      FieldName = 'Description'
      BlobType = ftMemo
    end
    object mtCharset: TStringField
      FieldName = 'Charset'
      OnChange = mtCharsetChange
      Size = 31
    end
    object mtCollate: TStringField
      FieldName = 'Collate'
      Size = 31
    end
    object mtKey: TIntegerField
      FieldName = 'Key'
    end
    object mtSubType: TStringField
      FieldName = 'SubType'
      Size = 8
    end
    object mtDefault: TStringField
      FieldName = 'Default'
      Size = 200
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        Caption = 'Domains'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Domains toolbar'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = True
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
    Left = 452
    Top = 168
    DockControlHeights = [0, 0, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = actCompile
      Category = 0
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Action = actFirstDomain
      Category = 1
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev1: TdxBarDBNavButton
      Action = actPrevDomain
      Category = 1
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Action = actNextDomain
      Category = 1
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Action = actLastDomain
      Category = 1
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnLast
    end
    object cbGroupBy: TdxBarCombo
      Caption = 'Group by:'
      Category = 0
      Hint = 'Group by:'
      Visible = ivAlways
      Text = 'None'
      OnChange = cbGroupByChange
      ShowCaption = True
      Width = 100
      Items.Strings = ['None', 'Type', 'Charset']
      ItemIndex = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actShowAll
      Category = 0
    end
    object pb: TdxBarProgressItem
      Caption = 'Loading domains...'
      Category = 0
      Hint = 'Loading domains'
      Visible = ivNever
      Width = 230
      Smooth = True
    end
    object dxBarButton3: TdxBarButton
      Action = actDuplicate
      Category = 0
    end
    object dxBarDBNavDelete1: TdxBarDBNavButton
      Action = actDropDomain
      Category = 1
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnDelete
    end
    object dxBarDBNavInsert1: TdxBarDBNavButton
      Action = actNewDomain
      Category = 1
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnInsert
    end
    object bsiDomains: TdxBarSubItem
      Caption = 'Domains'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton1
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton3
          Visible = True
        end
        item
          Item = dxBarDBNavFirst1
          Visible = True
        end
        item
          Item = dxBarDBNavPrev1
          Visible = True
        end
        item
          Item = dxBarDBNavNext1
          Visible = True
        end
        item
          Item = dxBarDBNavLast1
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarDBNavDelete1
          Visible = True
        end
        item
          Item = dxBarDBNavInsert1
          Visible = True
        end
        item
          BeginGroup = True
          Item = cbGroupBy
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton2
          Visible = True
        end
      >
    end
    object dxBarButton4: TdxBarButton
      Action = actSystemTablesModifying
      Category = 0
      Hint = 'Enable direct system tables modifying'
      ButtonStyle = bsChecked
      UnclickAfterDoing = False
    end
  end
  object DomainActions: TActionList
    OnUpdate = DomainActionsUpdate
    Left = 484
    Top = 170
    object actCompile: TAction
      Caption = 'Compile'
      Hint = 'Compile'
      ImageIndex = 28
      ShortCut = 16504
      OnExecute = actCompileExecute
    end
    object actFirstDomain: TAction
      Caption = 'Goto first domain'
      Hint = 'Goto first domain'
      OnExecute = actFirstDomainExecute
    end
    object actLastDomain: TAction
      Caption = 'Goto last domain'
      Hint = 'Goto last domain'
      OnExecute = actLastDomainExecute
    end
    object actPrevDomain: TAction
      Caption = 'Goto previous domain'
      Hint = 'Goto previous domain'
      OnExecute = actPrevDomainExecute
    end
    object actNextDomain: TAction
      Caption = 'Goto next domain'
      Hint = 'Goto next domain'
      OnExecute = actNextDomainExecute
    end
    object actDuplicate: TAction
      Caption = 'Duplicate domain'
      Hint = 'Duplicate domain'
      ImageIndex = 131
      OnExecute = actDuplicateExecute
    end
    object actNewDomain: TAction
      Caption = 'New domain'
      Hint = 'New domain'
      OnExecute = actNewDomainExecute
    end
    object actDropDomain: TAction
      Caption = 'Drop/delete domain'
      Hint = 'Drop/delete domain'
      OnExecute = actDropDomainExecute
    end
    object actLocalize: TAction
      Caption = 'actLocalize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actShowAll: TAction
      Caption = 'Show all'
      Hint = 'Show all domains'
      OnExecute = actShowAllExecute
    end
    object actSystemTablesModifying: TAction
      Caption = 'Enable direct system tables modifying'
      Hint = 'Direct system tables modifying'
      ImageIndex = 156
      OnExecute = actSystemTablesModifyingExecute
    end
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
    end
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DS
    DBCheckLinks = []
    VisibleButtons = ['dxbnFirst', 'dxbnPrior', 'dxbnNext', 'dxbnLast', 'dxbnInsert', 'dxbnDelete']
    Left = 172
    Top = 122
  end
end
