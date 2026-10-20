object DatabaseDesignerForm: TDatabaseDesignerForm
  Left = 218
  Top = 198
  Width = 1146
  Height = 668
  HelpContext = 3700
  Caption = 'Database designer'
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
  object SplitterBottom: TdfsSplitter
    Left = 0
    Top = 306
    Width = 1130
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Color = clBtnShadow
    ParentColor = False
    ResizeStyle = rsUpdate
    OnCanResize = SplitterBottomCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Edit1: TEdit
    Left = 64
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object TBDock1: TTBDock
    Left = 0
    Top = 309
    Width = 1130
    Height = 323
    Position = dpBottom
    object PropsBar: TTBToolWindow
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'Properties'
      CloseButtonWhenDocked = True
      ClientAreaHeight = 319
      ClientAreaWidth = 1112
      DockableTo = ['dpTop', 'dpBottom']
      DockPos = 0
      DragHandleStyle = dhDouble
      FullSize = True
      TabOrder = 0
      Visible = False
      OnDockChanged = PropsBarDockChanged
      OnVisibleChanged = PropsBarVisibleChanged
      object Pages: TIBEPageControl
        Left = 0
        Top = 0
        Width = 1112
        Height = 319
        AdvOfficePagerStyler = IBEMainForm.PCStyler
        Align = alClient
        ActivePage = tsModel
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
        object tsModel: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 1112
          Height = 294
          Caption = 'Model Options'
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
          object ModelOptionsFm: TCModelOptionsFrame
            Left = 2
            Top = 2
            Width = 1108
            Height = 290
            object dfsSplitter1: TdfsSplitter
              Height = 290
            end
            object TablePropsTL: TdxTreeList
              Height = 290
              Data = {245 bytes}
            end
            object Pages: TIBEPageControl
              Width = 933
              Height = 290
              NextPictureChanged = True
              PrevPictureChanged = True
              object tsGeneral: TAdvOfficePage
                Width = 933
                Height = 265
              end
              object tsTables: TAdvOfficePage
                Width = 933
                Height = 265
                object Panel3: TPanel
                  Width = 929
                end
              end
              object tsLinks: TAdvOfficePage
                Width = 933
                Height = 265
                object cbLinksShowNames: TIBECheckBox
                  Width = 2198
                end
                object cbLinksAutotrace: TIBECheckBox
                  Width = 2198
                end
              end
              object tsPreScript: TAdvOfficePage
                Width = 933
                Height = 265
                object PreScriptFm: TEditFrame
                  Width = 929
                  Height = 261
                  object EditM: TSQLMemo
                    Width = 929
                    Height = 243
                  end
                  object pIncSearch: TPanel
                    Top = 243
                    Width = 929
                  end
                end
              end
              object tsPostScript: TAdvOfficePage
                Width = 933
                Height = 265
                object PostScriptFm: TEditFrame
                  Width = 929
                  Height = 261
                  object EditM: TSQLMemo
                    Width = 929
                    Height = 243
                  end
                  object pIncSearch: TPanel
                    Top = 243
                    Width = 929
                  end
                end
              end
              object tsBlocks: TAdvOfficePage
                Width = 933
                Height = 265
                object BlockFm: TEditFrame
                  Width = 929
                  Height = 228
                  object EditM: TSQLMemo
                    Width = 929
                    Height = 210
                  end
                  object pIncSearch: TPanel
                    Top = 210
                    Width = 929
                  end
                end
                object Panel1: TPanel
                  Width = 929
                end
              end
            end
          end
        end
        object tsDomains: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 1112
          Height = 294
          Caption = 'Domains'
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
          object DomainsFm: TCDomainsFrame
            Left = 2
            Top = 2
            Width = 1108
            Height = 290
            object Splitter1: TdfsSplitter
              Top = 176
              Width = 1108
            end
            object pDescMemo: TPanel
              Top = 180
              Width = 1108
              object pDesc: TPanel
                Width = 1108
              end
              object dbmDesc: TdxMemo
                Width = 1108
                Height = 92
              end
            end
            object Grid: TdxDBGrid
              Width = 1108
              Height = 154
              Filter.Criteria = {4 bytes}
            end
            object TBToolbar1: TTBToolbar
              Width = 1108
            end
            object mt: TkbmMemTable
              AfterPost = None
            end
          end
        end
        object tsExceptions: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 1112
          Height = 294
          Caption = 'Exceptions'
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
          object ExceptionsFm: TCExceptionsFrame
            Left = 2
            Top = 2
            Width = 1108
            Height = 290
            object Splitter1: TdfsSplitter
              Top = 176
              Width = 1108
            end
            object pDescMemo: TPanel
              Top = 180
              Width = 1108
              object pDesc: TPanel
                Width = 1108
              end
              object dbmDesc: TdxMemo
                Width = 1108
                Height = 92
              end
            end
            object Grid: TdxDBGrid
              Width = 1108
              Height = 154
              Filter.Criteria = {4 bytes}
            end
            object TBToolbar1: TTBToolbar
              Width = 1108
            end
          end
        end
        object tsProcs: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 1112
          Height = 294
          Caption = 'Procedures'
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
          object ProceduresFm: TCProceduresFrame
            Left = 2
            Top = 2
            Width = 1108
            Height = 290
            object TBToolbar1: TTBToolbar
              Width = 1108
              object cbProcedures: TdxPopupEdit
                StoredValues = 64
              end
            end
            object Pages: TIBEPageControl
              Width = 1108
              Height = 264
              NextPictureChanged = True
              PrevPictureChanged = True
              object tsText: TAdvOfficePage
                Width = 1108
                Height = 239
                object EditFm: TEditFrame
                  Width = 1104
                  Height = 235
                  object EditM: TSQLMemo
                    Width = 1104
                    Height = 217
                  end
                  object pIncSearch: TPanel
                    Top = 217
                    Width = 1104
                  end
                end
              end
              object tsDesc: TAdvOfficePage
                Width = 1108
                Height = 239
                object DescFm: TEditFrame
                  Width = 1104
                  Height = 235
                  object EditM: TSQLMemo
                    Width = 1104
                    Height = 217
                  end
                  object pIncSearch: TPanel
                    Top = 217
                    Width = 1104
                  end
                end
              end
            end
            object Panel1: TPanel
              Width = 1108
            end
            object Panel2: TPanel
              Width = 1108
            end
          end
        end
        object tsGenerators: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 1112
          Height = 294
          Caption = 'Generators'
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
          object GeneratorsFm: TCGeneratorsFrame
            Left = 2
            Top = 2
            Width = 1108
            Height = 290
            object Splitter1: TdfsSplitter
              Top = 176
              Width = 1108
            end
            object pDescMemo: TPanel
              Top = 180
              Width = 1108
              object pDesc: TPanel
                Width = 1108
              end
              object dbmDesc: TdxMemo
                Width = 1108
                Height = 92
              end
            end
            object Grid: TdxDBGrid
              Width = 1108
              Height = 154
              Filter.Criteria = {4 bytes}
            end
            object TBToolbar1: TTBToolbar
              Width = 1108
            end
          end
        end
        object tsTable: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 1112
          Height = 294
          Caption = 'Table'
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
        end
        object tsCommentBox: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 1112
          Height = 294
          Caption = 'Comment Box'
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
          object mCommentBox: TdxMemo
            Tag = 1000
            Left = 2
            Top = 2
            Width = 1108
            Align = alClient
            TabOrder = 0
            OnExit = mCommentBoxExit
            StyleController = IBEMainForm.MainSC
            Height = 290
          end
        end
        object tsView: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 1112
          Height = 294
          Caption = 'View'
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
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 1103
    Height = 280
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 6
    object AreasTabs: TTabControl
      Left = 0
      Top = 258
      Width = 1103
      Height = 22
      Align = alBottom
      RaggedRight = True
      Style = tsFlatButtons
      TabOrder = 0
      Tabs.Strings = ['Main Subject Area']
      TabIndex = 0
      TabStop = False
      OnChange = AreasTabsChange
    end
    object CE: TCaseEditor
      Left = 0
      Top = 0
      Width = 1103
      Height = 255
      HorzScrollBar.Range = 9999
      HorzScrollBar.Smooth = True
      HorzScrollBar.Tracking = True
      VertScrollBar.Range = 9999
      VertScrollBar.Smooth = True
      VertScrollBar.Tracking = True
      AllowRMBSelect = True
      TriangleWidth = 13
      TriangleHalfHeight = 3
      DocumentWidth = 10000
      DocumentHeight = 10000
      DefaultDocumentWidth = 30000
      DefaultDocumentHeight = 30000
      MaskTables = False
      MaskLinks = False
      MaskNotes = False
      MaskViews = False
      ShortView = False
      NoAutoSelect = False
      MaximalDescriptionLength = 50
      TableDrawMode = 0
      TableHeaderGradient = False
      OnBeforeDeleteObject = CEBeforeDeleteObject
      OnAfterAddObject = CEAfterAddObject
      OnSelectionChanged = CESelectionChanged
      OnScaleChanged = CEScaleChanged
      AfterRecreateDocument = CEAfterRecreateDocument
      OnRepainted = CERepainted
      KeysImgList = PKImages
      PPGColor = 0
      PPGStyle = 0
      Align = alClient
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      OnClick = CEClick
      OnDblClick = CEDblClick
      OnDragDrop = CEDragDrop
      OnDragOver = CEDragOver
      OnEnter = CEEnter
      OnMouseDown = CEMouseDown
      OnMouseUp = CEMouseUp
      OnKeyUp = CEKeyUp
      ParentFont = False
    end
    object Panel5: TPanel
      Left = 0
      Top = 255
      Width = 1103
      Height = 3
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
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
        Caption = 'Main'
        DockedDockingStyle = dsTop
        DockedLeft = 78
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Main'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Palette'
        DockedDockingStyle = dsTop
        DockedLeft = 947
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Design'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        AllowCustomizing = False
        AllowQuickCustomizing = False
        Caption = 'Menu'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 61
        FloatClientHeight = 19
        ItemLinks = None
        Name = 'Menu'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'Font & Colors'
        DockedDockingStyle = dsTop
        DockedLeft = 478
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Font_Color'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'Layout'
        DockedDockingStyle = dsRight
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsRight
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Layout'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default', 'Table', 'Edit', 'Designer Menu', 'Link', 'Font & Colors', 'Colors', 'Layout', 'Points', 'Format', 'Recent']
    Categories.ItemsVisibles = [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
    Categories.Visibles = [True, True, True, True, True, True, True, True, True, True, True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 408
    Top = 88
    DockControlHeights = [0, 27, 26, 0]
    object dxBarButton1: TdxBarButton
      Action = actZoomIn
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton2: TdxBarButton
      Action = actZoomOut
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton3: TdxBarButton
      Action = actNewDiagram
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton4: TdxBarButton
      Action = actOpenDigram
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = bpmRecentLoad
    end
    object dxBarButton5: TdxBarButton
      Action = actSaveAsDiagram
      Caption = 'Save diagram'
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = bpmRecentSave
    end
    object dxBarButton6: TdxBarButton
      Action = actPointer
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton7: TdxBarButton
      Action = actTable
      Category = 0
      ButtonStyle = bsChecked
    end
    object cbScale: TdxBarCombo
      Caption = 'Scale'
      Category = 0
      Hint = 'Scale'
      Visible = ivAlways
      Text = '100%'
      OnChange = cbScaleChange
      Width = 100
      DropDownCount = 20
      Items.Strings = ['300%', '200%', '150%', '100%', '75%', '50%', '25%', '10%']
      ItemIndex = 3
    end
    object dxBarButton8: TdxBarButton
      Action = actLink
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton9: TdxBarButton
      Action = actTableColumns
      Category = 1
    end
    object dxBarButton10: TdxBarButton
      Action = actTableIndexes
      Category = 1
    end
    object dxBarButton11: TdxBarButton
      Action = actTableKeys
      Category = 1
    end
    object dxBarButton12: TdxBarButton
      Action = actCut
      Category = 2
    end
    object dxBarButton13: TdxBarButton
      Action = actCopy
      Category = 2
    end
    object dxBarButton14: TdxBarButton
      Action = actPaste
      Category = 2
    end
    object dxBarButton15: TdxBarButton
      Action = actTableChecks
      Category = 1
    end
    object dxBarButton16: TdxBarButton
      Action = actTableTriggers
      Category = 1
    end
    object dxBarButton17: TdxBarButton
      Action = actTablePreview
      Category = 1
    end
    object dxBarButton18: TdxBarButton
      Action = actShadow
      Category = 1
      ButtonStyle = bsChecked
    end
    object dxBarButton19: TdxBarButton
      Action = actPrintDiagram
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Designer'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton21
          Visible = True
        end
        item
          Item = dxBarButton22
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton3
          Visible = True
        end
        item
          Item = dxBarButton4
          Visible = True
        end
        item
          Item = dxBarButton5
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton56
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton19
          Visible = True
        end
        item
          BeginGroup = True
          Item = bbManageSubjectAreas
          Visible = True
        end
        item
          Item = bbManageLayers
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton53
          Visible = True
        end
      >
    end
    object dxBarButton21: TdxBarButton
      Action = actReverseEngineer
      Category = 3
    end
    object dxBarButton22: TdxBarButton
      Action = actGenerateScript
      Category = 3
    end
    object dxBarButton23: TdxBarButton
      Action = actLinkGotoChild
      Category = 4
    end
    object dxBarButton24: TdxBarButton
      Action = actLinkGotoParent
      Category = 4
    end
    object cbFontName: TdxBarFontNameCombo
      Caption = 'Font Name'
      Category = 5
      Hint = 'Font Name'
      Visible = ivAlways
      OnChange = cbFontNameChange
      Glyph.Data = {250 bytes}
      Width = 160
      ShowEditor = True
      DropDownCount = 20
    end
    object bb: TdxBarButton
      Caption = 'Fill Color'
      Category = 5
      Hint = 'Fill Color'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmFillColor
      Glyph.Data = {826 bytes}
      OnClick = bbClick
    end
    object bbBlack: TdxBarButton
      Caption = 'Black'
      Category = 6
      Hint = 'Black'
      Visible = ivAlways
      ImageIndex = 149
      OnClick = SelectColor
    end
    object bbMaroon: TdxBarButton
      Caption = 'Maroon'
      Category = 6
      Hint = 'Maroon'
      Visible = ivAlways
      ImageIndex = 150
      OnClick = SelectColor
    end
    object bbGreen: TdxBarButton
      Caption = 'Green'
      Category = 6
      Hint = 'Green'
      Visible = ivAlways
      ImageIndex = 151
      OnClick = SelectColor
    end
    object bbOlive: TdxBarButton
      Caption = 'Olive'
      Category = 6
      Hint = 'Olive'
      Visible = ivAlways
      ImageIndex = 152
      OnClick = SelectColor
    end
    object bbNavy: TdxBarButton
      Caption = 'Navy'
      Category = 6
      Hint = 'Navy'
      Visible = ivAlways
      ImageIndex = 153
      OnClick = SelectColor
    end
    object bbPurple: TdxBarButton
      Caption = 'Purple'
      Category = 6
      Hint = 'Purple'
      Visible = ivAlways
      ImageIndex = 154
      OnClick = SelectColor
    end
    object bbTeal: TdxBarButton
      Caption = 'Teal'
      Category = 6
      Hint = 'Teal'
      Visible = ivAlways
      ImageIndex = 155
      OnClick = SelectColor
    end
    object bbGray: TdxBarButton
      Caption = 'Gray'
      Category = 6
      Hint = 'Gray'
      Visible = ivAlways
      ImageIndex = 156
      OnClick = SelectColor
    end
    object bbSilver: TdxBarButton
      Caption = 'Silver'
      Category = 6
      Hint = 'Silver'
      Visible = ivAlways
      OnClick = SelectColor
    end
    object bbRed: TdxBarButton
      Caption = 'Red'
      Category = 6
      Hint = 'Red'
      Visible = ivAlways
      OnClick = SelectColor
    end
    object bbLime: TdxBarButton
      Caption = 'Lime'
      Category = 6
      Hint = 'Lime'
      Visible = ivAlways
      OnClick = SelectColor
    end
    object bbYellow: TdxBarButton
      Caption = 'Yellow'
      Category = 6
      Hint = 'Yellow'
      Visible = ivAlways
      OnClick = SelectColor
    end
    object bbBlue: TdxBarButton
      Caption = 'Blue'
      Category = 6
      Hint = 'Blue'
      Visible = ivAlways
      OnClick = SelectColor
    end
    object bbFuchsia: TdxBarButton
      Caption = 'Fuchsia'
      Category = 6
      Hint = 'Fuchsia'
      Visible = ivAlways
      OnClick = SelectColor
    end
    object bbAqua: TdxBarButton
      Caption = 'Aqua'
      Category = 6
      Hint = 'Aqua'
      Visible = ivAlways
      OnClick = SelectColor
    end
    object bbCustom: TdxBarButton
      Caption = 'Custom color...'
      Category = 6
      Hint = 'Custom color'
      Visible = ivAlways
      OnClick = bbCustomClick
    end
    object bbWhite: TdxBarButton
      Caption = 'White'
      Category = 6
      Hint = 'White'
      Visible = ivAlways
      OnClick = SelectColor
    end
    object bbFontColor: TdxBarButton
      Caption = 'Font color'
      Category = 5
      Hint = 'Font color'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmFontColor
      Glyph.Data = {826 bytes}
      UnclickAfterDoing = False
      OnClick = bbFontColorClick
    end
    object bbBold: TdxBarButton
      Action = actBold
      Category = 5
      ButtonStyle = bsChecked
    end
    object bbItalic: TdxBarButton
      Action = actItalic
      Category = 5
      ButtonStyle = bsChecked
    end
    object bbUnderline: TdxBarButton
      Action = actUnderlined
      Category = 5
      ButtonStyle = bsChecked
    end
    object cbFontSize: TdxBarCombo
      Caption = 'Font Size'
      Category = 5
      Hint = 'Font Size'
      Visible = ivAlways
      OnChange = cbFontSizeChange
      Width = 100
      DropDownCount = 20
      Items.Strings = ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '26', '28', '36', '48', '72']
      ItemIndex = -1
    end
    object bbLineColor: TdxBarButton
      Caption = 'Line color'
      Category = 5
      Hint = 'Line color'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmLineColor
      Glyph.Data = {826 bytes}
      UnclickAfterDoing = False
      OnClick = bbLineColorClick
    end
    object bbManageLayers: TdxBarButton
      Action = actManageLayers
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbManageSubjectAreas: TdxBarButton
      Action = actManageSubjectAreas
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton27: TdxBarButton
      Action = actBringToFront
      Category = 7
    end
    object dxBarButton28: TdxBarButton
      Action = actSendToBack
      Category = 7
    end
    object dxBarButton29: TdxBarButton
      Action = actAlignToGrid
      Category = 7
    end
    object dxBarButton30: TdxBarButton
      Action = actAlignLefts
      Category = 7
    end
    object dxBarButton31: TdxBarButton
      Action = actAlignRights
      Category = 7
    end
    object dxBarButton32: TdxBarButton
      Action = actAlignCenters
      Category = 7
    end
    object dxBarButton25: TdxBarButton
      Action = actAlignTops
      Category = 7
    end
    object dxBarButton26: TdxBarButton
      Action = actAlignMiddles
      Category = 7
    end
    object dxBarButton33: TdxBarButton
      Action = actAlignBottoms
      Category = 7
    end
    object dxBarButton34: TdxBarButton
      Action = actMakeSameSize
      Category = 7
    end
    object dxBarButton35: TdxBarButton
      Action = actMakeSameHeight
      Category = 7
    end
    object dxBarButton36: TdxBarButton
      Action = actMakeSameWidth
      Category = 7
    end
    object dxBarButton37: TdxBarButton
      Action = actSizeToGrid
      Category = 7
    end
    object dxBarButton38: TdxBarButton
      Action = actMakeHorizontalSpacingEqual
      Category = 7
    end
    object dxBarButton39: TdxBarButton
      Action = actIncreaseHorizontalSpacing
      Category = 7
    end
    object dxBarButton40: TdxBarButton
      Action = actDecreaseHorizontalSpacing
      Category = 7
    end
    object dxBarButton41: TdxBarButton
      Action = actRemoveHorizontalSpacing
      Category = 7
    end
    object dxBarButton42: TdxBarButton
      Action = actMakeVerticalSpacingEqual
      Category = 7
    end
    object dxBarButton43: TdxBarButton
      Action = actDecreaseVerticalSpacing
      Category = 7
    end
    object dxBarButton44: TdxBarButton
      Action = actIncreaseVerticalSpacing
      Category = 7
    end
    object dxBarButton45: TdxBarButton
      Action = actRemoveVerticalSpacing
      Category = 7
    end
    object dxBarButton46: TdxBarButton
      Action = actCenterHorizontally
      Category = 7
    end
    object dxBarButton47: TdxBarButton
      Action = actCenterVertically
      Category = 7
    end
    object dxBarButton48: TdxBarButton
      Action = actAdjustToText
      Category = 7
    end
    object dxBarButton20: TdxBarButton
      Action = actAddPoint
      Category = 8
    end
    object dxBarButton49: TdxBarButton
      Action = actRemovePoint
      Category = 8
    end
    object dxBarButton50: TdxBarButton
      Action = actEditPoints
      Category = 8
      ButtonStyle = bsChecked
    end
    object dxBarButton51: TdxBarButton
      Action = actCommentBox
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton52: TdxBarButton
      Action = actView
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton53: TdxBarButton
      Action = actModelOptions
      Category = 3
    end
    object dxBarButton54: TdxBarButton
      Action = actFormat
      Category = 9
    end
    object bliRecentLoad: TdxBarListItem
      Caption = 'New Item'
      Category = 10
      Visible = ivAlways
      OnClick = bliRecentLoadClick
    end
    object bliRecentSave: TdxBarListItem
      Caption = 'New Item'
      Category = 10
      Visible = ivAlways
      OnClick = bliRecentSaveClick
    end
    object dxBarButton55: TdxBarButton
      Action = actUndo
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton56: TdxBarButton
      Action = actExport
      Category = 0
    end
    object dxBarButton57: TdxBarButton
      Action = actSelectAll
      Category = 2
    end
    object dxBarButton58: TdxBarButton
      Action = actSaveDiagram
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton59: TdxBarButton
      Action = actLock
      Category = 2
    end
    object dxBarButton60: TdxBarButton
      Action = actUnlock
      Category = 2
    end
    object siAddToLayer: TdxBarSubItem
      Caption = 'Add to layer'
      Category = 2
      Visible = ivAlways
      ItemLinks = []
    end
    object siAddToSubjectArea: TdxBarSubItem
      Caption = 'Add to subject area'
      Category = 2
      Visible = ivAlways
      ItemLinks = []
    end
  end
  object DesignerActions: TActionList
    Images = IBEMainForm.MenuImages
    OnUpdate = DesignerActionsUpdate
    Left = 480
    Top = 72
    object actZoomIn: TAction
      Caption = 'Zoom In'
      Hint = 'Zoom in'
      ImageIndex = 139
      OnExecute = actZoomInExecute
    end
    object actZoomOut: TAction
      Caption = 'ZoomOut'
      Hint = 'Zoom out'
      ImageIndex = 140
      OnExecute = actZoomOutExecute
    end
    object actOpenDigram: TAction
      Caption = 'Load Diagram from File...'
      Hint = 'Open diagram from file'
      ImageIndex = 41
      ShortCut = 16460
      OnExecute = actOpenDigramExecute
    end
    object actSaveAsDiagram: TAction
      Caption = 'actSaveDiagram'
      Hint = 'Save diagram as...'
      ImageIndex = 250
      OnExecute = actSaveAsDiagramExecute
    end
    object actNewDiagram: TAction
      Caption = 'New Diagram'
      Hint = 'New diagram'
      ImageIndex = 40
      OnExecute = actNewDiagramExecute
    end
    object actPointer: TAction
      Caption = 'Pointer'
      Hint = 'Pointer'
      ImageIndex = 141
      OnExecute = actPointerExecute
    end
    object actTable: TAction
      Caption = 'Table'
      Hint = 'Table'
      ImageIndex = 142
      OnExecute = actTableExecute
    end
    object actLink: TAction
      Caption = 'Link'
      Hint = 'Reference'
      ImageIndex = 143
      OnExecute = actLinkExecute
    end
    object actTableColumns: TAction
      Category = 'Table'
      Caption = 'Columns...'
      OnExecute = actTableColumnsExecute
    end
    object actTableIndexes: TAction
      Category = 'Table'
      Caption = 'Indexes...'
      OnExecute = actTableIndexesExecute
    end
    object actTableKeys: TAction
      Category = 'Table'
      Caption = 'Keys...'
      OnExecute = actTableKeysExecute
    end
    object actCut: TAction
      Category = 'Edit'
      Caption = 'Cut'
      ImageIndex = 50
      ShortCut = 16472
      Visible = False
      OnUpdate = actCutUpdate
    end
    object actCopy: TAction
      Category = 'Edit'
      Caption = 'Copy'
      Hint = 'Copy'
      ImageIndex = 48
      ShortCut = 16451
      OnExecute = actCopyExecute
      OnUpdate = actCopyUpdate
    end
    object actPaste: TAction
      Category = 'Edit'
      Caption = 'Paste'
      Hint = 'Paste'
      ImageIndex = 49
      ShortCut = 16470
      OnExecute = actPasteExecute
      OnUpdate = actPasteUpdate
    end
    object actTableChecks: TAction
      Category = 'Table'
      Caption = 'Checks...'
      OnExecute = actTableChecksExecute
    end
    object actTableTriggers: TAction
      Category = 'Table'
      Caption = 'Triggers...'
      OnExecute = actTableTriggersExecute
    end
    object actTablePreview: TAction
      Category = 'Table'
      Caption = 'SQL Preview'
      OnExecute = actTablePreviewExecute
    end
    object actShadow: TAction
      Category = 'Table'
      Caption = 'Shadow'
      Checked = True
      OnExecute = actShadowExecute
    end
    object actPrintDiagram: TAction
      Caption = 'Print'
      Hint = 'Print diagram'
      ImageIndex = 53
      OnExecute = actPrintDiagramExecute
    end
    object actAdjustToText: TAction
      Category = 'Layout'
      Caption = 'Adjust to Text'
      Hint = 'Adjust to Text'
      ImageIndex = 145
      OnExecute = actAdjustToTextExecute
    end
    object actReverseEngineer: TAction
      Caption = 'Reverse Engineer...'
      Hint = 'Reverse engineer'
      OnExecute = actReverseEngineerExecute
    end
    object actGenerateScript: TAction
      Caption = 'Generate Script...'
      Hint = 'Generate script'
      OnExecute = actGenerateScriptExecute
    end
    object actLinkGotoParent: TAction
      Category = 'Link'
      Caption = 'Go to Parent'
      OnExecute = actLinkGotoParentExecute
    end
    object actLinkGotoChild: TAction
      Category = 'Link'
      Caption = 'Go to Child'
      OnExecute = actLinkGotoChildExecute
    end
    object actBold: TAction
      Caption = 'Bold'
      Hint = 'Bold'
      ImageIndex = 149
      OnExecute = actBoldExecute
    end
    object actItalic: TAction
      Caption = 'Italic'
      Hint = 'Italic'
      ImageIndex = 150
      OnExecute = actItalicExecute
    end
    object actUnderlined: TAction
      Caption = 'actUnderlined'
      Hint = 'Underline'
      ImageIndex = 151
      OnExecute = actUnderlinedExecute
    end
    object actBringToFront: TAction
      Category = 'Layout'
      Caption = 'Bring to Front'
      Hint = 'Bring to Front'
      ImageIndex = 172
      OnExecute = actBringToFrontExecute
    end
    object actSendToBack: TAction
      Category = 'Layout'
      Caption = 'Send to Back'
      Hint = 'Send to Back'
      ImageIndex = 173
      OnExecute = actSendToBackExecute
    end
    object actManageLayers: TAction
      Caption = 'Manage Layers'
      Hint = 'Manage Layers'
      ImageIndex = 171
      OnExecute = actManageLayersExecute
    end
    object actManageSubjectAreas: TAction
      Caption = 'Manage Subject Areas'
      Hint = 'Manage Subject Areas'
      ImageIndex = 170
      OnExecute = actManageSubjectAreasExecute
    end
    object actAlignToGrid: TAction
      Category = 'Layout'
      Caption = 'Align to Grid'
      Hint = 'Align to Grid'
      ImageIndex = 174
      Visible = False
    end
    object actAlignLefts: TAction
      Category = 'Layout'
      Caption = 'Align Lefts'
      Hint = 'Align Lefts'
      ImageIndex = 178
      OnExecute = actAlignLeftsExecute
    end
    object actAlignCenters: TAction
      Category = 'Layout'
      Caption = 'Align Centers'
      Hint = 'Align Centers'
      ImageIndex = 177
      OnExecute = actAlignCentersExecute
    end
    object actAlignRights: TAction
      Category = 'Layout'
      Caption = 'Align Rights'
      Hint = 'Align Rights'
      ImageIndex = 179
      OnExecute = actAlignRightsExecute
    end
    object actAlignTops: TAction
      Category = 'Layout'
      Caption = 'Align Tops'
      Hint = 'Align Tops'
      ImageIndex = 176
      OnExecute = actAlignTopsExecute
    end
    object actAlignMiddles: TAction
      Category = 'Layout'
      Caption = 'Align Middles'
      Hint = 'Align Middles'
      ImageIndex = 175
      OnExecute = actAlignMiddlesExecute
    end
    object actAlignBottoms: TAction
      Category = 'Layout'
      Caption = 'Align Bottoms'
      Hint = 'Align Bottoms'
      ImageIndex = 180
      OnExecute = actAlignBottomsExecute
    end
    object actMakeSameSize: TAction
      Category = 'Layout'
      Caption = 'Make Same Size'
      Hint = 'Make Same Size'
      ImageIndex = 188
      OnExecute = actMakeSameSizeExecute
    end
    object actMakeSameHeight: TAction
      Category = 'Layout'
      Caption = 'Make Same Height'
      Hint = 'Make Same Height'
      ImageIndex = 187
      OnExecute = actMakeSameHeightExecute
    end
    object actMakeSameWidth: TAction
      Category = 'Layout'
      Caption = 'Make Same Width'
      Hint = 'Make Same Width'
      ImageIndex = 189
      OnExecute = actMakeSameWidthExecute
    end
    object actSizeToGrid: TAction
      Category = 'Layout'
      Caption = 'Size to Grid'
      Hint = 'Size to Grid'
      ImageIndex = 181
    end
    object actMakeHorizontalSpacingEqual: TAction
      Category = 'Layout'
      Caption = 'Make Horizontal Spacing Equal'
      Hint = 'Make Horizontal Spacing Equal'
      ImageIndex = 186
      Visible = False
    end
    object actIncreaseHorizontalSpacing: TAction
      Category = 'Layout'
      Caption = 'Increase Horizontal Spacing'
      Hint = 'Increase Horizontal Spacing'
      ImageIndex = 184
      Visible = False
    end
    object actDecreaseHorizontalSpacing: TAction
      Category = 'Layout'
      Caption = 'Decrease Horizontal Spacing'
      Hint = 'Decrease Horizontal Spacing'
      ImageIndex = 182
      Visible = False
    end
    object actRemoveHorizontalSpacing: TAction
      Category = 'Layout'
      Caption = 'Remove Horizontal Spacing'
      Hint = 'Remove Horizontal Spacing'
      ImageIndex = 191
      Visible = False
    end
    object actMakeVerticalSpacingEqual: TAction
      Category = 'Layout'
      Caption = 'Make Vertical Spacing Equal'
      Hint = 'Make Vertical Spacing Equal'
      ImageIndex = 190
      Visible = False
    end
    object actDecreaseVerticalSpacing: TAction
      Category = 'Layout'
      Caption = 'Decrease Vertical Spacing'
      Hint = 'Decrease Vertical Spacing'
      ImageIndex = 183
      Visible = False
    end
    object actIncreaseVerticalSpacing: TAction
      Category = 'Layout'
      Caption = 'Increase Vertical Spacing'
      Hint = 'Increase Vertical Spacing'
      ImageIndex = 185
      Visible = False
    end
    object actRemoveVerticalSpacing: TAction
      Category = 'Layout'
      Caption = 'Remove Vertical Spacing'
      Hint = 'Remove Vertical Spacing'
      ImageIndex = 192
      Visible = False
    end
    object actCenterHorizontally: TAction
      Category = 'Layout'
      Caption = 'Center Horizontally'
      Hint = 'Center Horizontally'
      ImageIndex = 193
      OnExecute = actCenterHorizontallyExecute
    end
    object actCenterVertically: TAction
      Category = 'Layout'
      Caption = 'Center Vertically'
      Hint = 'Center Vertically'
      ImageIndex = 194
      OnExecute = actCenterVerticallyExecute
    end
    object actAddPoint: TAction
      Caption = 'Add Point'
      ImageIndex = 198
      OnExecute = actAddPointExecute
      OnUpdate = actAddPointUpdate
    end
    object actRemovePoint: TAction
      Caption = 'Remove Point'
      ImageIndex = 199
      OnExecute = actRemovePointExecute
      OnUpdate = actRemovePointUpdate
    end
    object actEditPoints: TAction
      Caption = 'Edit Points'
      ImageIndex = 200
      OnExecute = actEditPointsExecute
      OnUpdate = actEditPointsUpdate
    end
    object actCommentBox: TAction
      Caption = 'Comment Box'
      Hint = 'Comment Box'
      ImageIndex = 207
      OnExecute = actCommentBoxExecute
    end
    object actView: TAction
      Caption = 'New View'
      Hint = 'New View'
      ImageIndex = 208
      OnExecute = actViewExecute
    end
    object actModelOptions: TAction
      Caption = 'Model Options...'
      OnExecute = actModelOptionsExecute
    end
    object actFormat: TAction
      Caption = 'Format...'
      OnExecute = actFormatExecute
      OnUpdate = actFormatUpdate
    end
    object actUndo: TAction
      Caption = 'Undo'
      ImageIndex = 97
      ShortCut = 16474
      OnExecute = actUndoExecute
      OnUpdate = actUndoUpdate
    end
    object actExport: TAction
      Caption = 'Export...'
      OnExecute = actExportExecute
    end
    object actSelectAll: TAction
      Category = 'Edit'
      Caption = 'Select All'
      ShortCut = 16449
      OnExecute = actSelectAllExecute
    end
    object actSaveDiagram: TAction
      Caption = 'Save Diagram'
      Hint = 'Save diagram'
      ImageIndex = 29
      ShortCut = 16467
      OnExecute = actSaveDiagramExecute
      OnUpdate = actSaveDiagramUpdate
    end
    object actLock: TAction
      Caption = 'Lock'
      OnExecute = actLockExecute
    end
    object actUnlock: TAction
      Caption = 'Unlock'
      OnExecute = actUnlockExecute
    end
    object actEscape: TAction
      OnExecute = actEscapeExecute
    end
  end
  object OD: TOpenDialog
    DefaultExt = 'grc'
    Filter = 'IBExpert data model (*.grc)|*.grc|All files (*.*)|*.*'
    Left = 8
    Top = 48
  end
  object SD: TSaveDialog
    DefaultExt = 'grc'
    Filter = 'IBExpert data model (*.grc)|*.grc|All files (*.*)|*.*'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofEnableSizing']
    Left = 40
    Top = 48
  end
  object pm: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton57
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton12
        Visible = True
      end
      item
        Item = dxBarButton13
        Visible = True
      end
      item
        Item = dxBarButton14
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton9
        Visible = True
      end
      item
        Item = dxBarButton10
        Visible = True
      end
      item
        Item = dxBarButton11
        Visible = True
      end
      item
        Item = dxBarButton15
        Visible = True
      end
      item
        Item = dxBarButton16
        Visible = True
      end
      item
        Item = dxBarButton17
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton18
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton24
        Visible = True
      end
      item
        Item = dxBarButton23
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton54
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton59
        Visible = True
      end
      item
        Item = dxBarButton60
        Visible = True
      end
      item
        BeginGroup = True
        Item = siAddToLayer
        Visible = True
      end
      item
        Item = siAddToSubjectArea
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = pmPopup
    Left = 88
    Top = 144
  end
  object sds: TSaveDialog
    DefaultExt = 'sql'
    Filter = 'SQL Script (*.sql)|*.sql|All files (*.*)|*.*'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofEnableSizing']
    Left = 120
    Top = 48
  end
  object CP: TdxComponentPrinter
    CurrentLink = CPCaseLink
    PreviewOptions.RegistryPath = 'Software\Developer Express\PrintingSystem\DesignTime'
    PreviewOptions.SaveZoomPosition = False
    Left = 528
    Top = 120
    object CPCaseLink: TdxCaseEditReportLink
      Active = True
      Component = CE
      DateTime = -5.948400710025435e-150
      DesignerHelpContext = 0
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = ['fsBold']
      ShowPageFooter = False
      ShowPageHeader = False
      StyleManager = PSM
    end
  end
  object pmFillColor: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = bbCustom
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbBlack
        Visible = True
      end
      item
        Item = bbMaroon
        Visible = True
      end
      item
        Item = bbGreen
        Visible = True
      end
      item
        Item = bbOlive
        Visible = True
      end
      item
        Item = bbNavy
        Visible = True
      end
      item
        Item = bbPurple
        Visible = True
      end
      item
        Item = bbTeal
        Visible = True
      end
      item
        Item = bbGray
        Visible = True
      end
      item
        Item = bbSilver
        Visible = True
      end
      item
        Item = bbRed
        Visible = True
      end
      item
        Item = bbLime
        Visible = True
      end
      item
        Item = bbYellow
        Visible = True
      end
      item
        Item = bbBlue
        Visible = True
      end
      item
        Item = bbFuchsia
        Visible = True
      end
      item
        Item = bbAqua
        Visible = True
      end
      item
        Item = bbWhite
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = pmFillColorPopup
    Left = 120
    Top = 144
  end
  object ColorD: TColorDialog
    Ctl3D = True
    Options = ['cdFullOpen']
    Left = 240
    Top = 200
  end
  object pmFontColor: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = bbCustom
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbBlack
        Visible = True
      end
      item
        Item = bbMaroon
        Visible = True
      end
      item
        Item = bbGreen
        Visible = True
      end
      item
        Item = bbOlive
        Visible = True
      end
      item
        Item = bbNavy
        Visible = True
      end
      item
        Item = bbPurple
        Visible = True
      end
      item
        Item = bbTeal
        Visible = True
      end
      item
        Item = bbGray
        Visible = True
      end
      item
        Item = bbSilver
        Visible = True
      end
      item
        Item = bbRed
        Visible = True
      end
      item
        Item = bbLime
        Visible = True
      end
      item
        Item = bbYellow
        Visible = True
      end
      item
        Item = bbBlue
        Visible = True
      end
      item
        Item = bbFuchsia
        Visible = True
      end
      item
        Item = bbAqua
        Visible = True
      end
      item
        Item = bbWhite
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = pmFontColorPopup
    Left = 160
    Top = 144
  end
  object pmLineColor: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = bbCustom
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbBlack
        Visible = True
      end
      item
        Item = bbMaroon
        Visible = True
      end
      item
        Item = bbGreen
        Visible = True
      end
      item
        Item = bbOlive
        Visible = True
      end
      item
        Item = bbNavy
        Visible = True
      end
      item
        Item = bbPurple
        Visible = True
      end
      item
        Item = bbTeal
        Visible = True
      end
      item
        Item = bbGray
        Visible = True
      end
      item
        Item = bbSilver
        Visible = True
      end
      item
        Item = bbRed
        Visible = True
      end
      item
        Item = bbLime
        Visible = True
      end
      item
        Item = bbYellow
        Visible = True
      end
      item
        Item = bbBlue
        Visible = True
      end
      item
        Item = bbFuchsia
        Visible = True
      end
      item
        Item = bbAqua
        Visible = True
      end
      item
        Item = bbWhite
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = pmLineColorPopup
    Left = 200
    Top = 144
  end
  object PKImages: TImageList
    BkColor = 6956042
    DrawingStyle = dsTransparent
    Height = 12
    Width = 12
    Left = 416
    Top = 288
    Bitmap = {19366 bytes}
  end
  object bpmRecentLoad: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Visible = True
      end
      item
        Item = bliRecentLoad
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 208
    Top = 280
  end
  object bpmRecentSave: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Visible = True
      end
      item
        Item = bliRecentSave
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 240
    Top = 280
  end
  object PropsTimer: TTimer
    Enabled = False
    OnTimer = PropsTimerTimer
    Left = 392
    Top = 218
  end
  object SPD: TSavePictureDialog
    DefaultExt = 'emf'
    Filter = 'Enhanced Metafiles (*.emf)|*.emf|Bitmaps (*.bmp)|*.bmp'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofEnableSizing']
    OnTypeChange = SPDTypeChange
    Left = 248
    Top = 74
  end
  object PSM: TdxPrintStyleManager
    CurrentStyle = psAVX
    HelpContext = 0
    Version = 0
    Left = 560
    Top = 122
    object psAVX: TdxPSPrintStyle
      ImageIndex = -1
      IsCurrentStyle = True
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.CenterTitle.Strings = ['[Page #]']
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageFooter.RightTitle.Strings = ['[Date Printed]']
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      StyleCaption = 'Standard Style'
      StyleGlyph.Data = {634 bytes}
      BuiltInStyle = True
    end
  end
end
