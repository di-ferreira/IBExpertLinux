object CViewFrame: TCViewFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 250
  HelpContext = 17700
  Align = alClient
  TabOrder = 0
  object dfsSplitter1: TdfsSplitter
    Left = 169
    Top = 0
    Width = 6
    Height = 250
    Cursor = crHSplit
    Align = alLeft
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Pages: TIBEPageControl
    Left = 175
    Top = 0
    Width = 260
    Height = 250
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsGeneral
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
    OnExit = PagesExit
    TabOrder = 0
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsGeneral: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 260
      Height = 225
      Caption = 'General'
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
      object Panel1: TPanel
        Left = 2
        Top = 2
        Width = 256
        Height = 221
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 60
          Width = 47
          Height = 13
          Caption = 'Comment:'
        end
        object Label1: TLabel
          Left = 8
          Top = 11
          Width = 31
          Height = 13
          Caption = 'Name:'
        end
        object cbGenerate: TdxCheckEdit
          Left = 5
          Top = 202
          Width = 220
          TabOrder = 0
          Anchors = ['akLeft', 'akBottom']
          Caption = 'Generate'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object mViewDesc: TdxMemo
          Left = 8
          Top = 77
          Width = 242
          TabOrder = 1
          Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
          StyleController = IBEMainForm.MainSC
          Lines.Strings = ['']
          Height = 120
        end
        object eViewName: TdxEdit
          Left = 8
          Top = 29
          Width = 242
          Enabled = False
          TabOrder = 2
          Anchors = ['akLeft', 'akTop', 'akRight']
          ReadOnly = False
          StyleController = IBEMainForm.MainSC
          StoredValues = 64
        end
      end
    end
    object tsSQL: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 260
      Height = 225
      Caption = 'SQL'
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
      object SQLFm: TEditFrame
        Left = 2
        Top = 2
        Width = 256
        Height = 221
        object EditM: TSQLMemo
          Width = 256
          Height = 203
        end
        object pIncSearch: TPanel
          Top = 203
          Width = 256
        end
      end
    end
    object tsTriggers: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 260
      Height = 225
      Caption = 'Triggers'
      ImageIndex = 5
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
      object TriggersFm: TCTriggersFrame
        Left = 2
        Top = 2
        Width = 256
        Height = 221
        object Splitter1: TSplitter
          Top = 118
          Width = 256
        end
        object pEdit: TPanel
          Top = 122
          Width = 256
          Height = 99
          object Bevel1: TBevel
            Width = 256
          end
          object Tabs: TTabControl
            Width = 256
          end
          object dbmDesc: TdxMemo
            Width = 256
            Height = 66
          end
          object EditFm: TEditFrame
            Width = 256
            Height = 66
            object EditM: TSQLMemo
              Width = 256
              Height = 48
            end
            object pIncSearch: TPanel
              Top = 48
              Width = 256
            end
          end
        end
        object Grid: TdxDBGrid
          Width = 256
          Height = 90
          Filter.Criteria = {4 bytes}
        end
        object Panel3: TPanel
          Width = 256
        end
        object TBToolbar1: TTBToolbar
          Width = 256
        end
        object Panel4: TPanel
          Width = 256
        end
      end
    end
    object tsPreview: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 260
      Height = 225
      Caption = 'Preview'
      ImageIndex = 6
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
      object PreviewFm: TEditFrame
        Left = 2
        Top = 2
        Width = 256
        Height = 221
        object EditM: TSQLMemo
          Width = 256
          Height = 203
        end
        object pIncSearch: TPanel
          Top = 203
          Width = 256
        end
      end
    end
  end
  object ViewPropsTL: TdxTreeList
    Tag = -1000
    Left = 0
    Top = 0
    Width = 169
    Height = 250
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alLeft
    DragMode = dmAutomatic
    TabOrder = 1
    HideSelection = False
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoStoreToRegistry']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSearch']
    PaintStyle = psOutlook
    TreeLineColor = clGrayText
    ShowButtons = False
    ShowHeader = False
    ShowLines = False
    GridLineColor = clSilver
    OnChangeNode = ViewPropsTLChangeNode
    Constraints.MinWidth = 50
    Data = {164 bytes}
    object ObjectsTLColumn1: TdxTreeListColumn
      BandIndex = 0
      RowIndex = 0
    end
  end
end
