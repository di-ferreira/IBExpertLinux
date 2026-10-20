object frmDebugSP_new: TfrmDebugSP_new
  Left = 345
  Top = 198
  Width = 906
  Height = 674
  HelpContext = 3600
  Caption = 'Stored Procedure Debug'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 890
    Height = 609
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object SplitterLeft: TdfsSplitter
      Left = 9
      Top = 30
      Width = 3
      Height = 382
      Cursor = crHSplit
      Align = alLeft
      ResizeStyle = rsUpdate
      OnCanResize = SplitterLeftCanResize
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object SplitterRight: TdfsSplitter
      Left = 878
      Top = 30
      Width = 3
      Height = 382
      Cursor = crHSplit
      Align = alRight
      ResizeStyle = rsUpdate
      OnCanResize = SplitterRightCanResize
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object SplitterTop: TdfsSplitter
      Left = 0
      Top = 9
      Width = 890
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ResizeStyle = rsUpdate
      OnCanResize = SplitterTopCanResize
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object SplitterBottom: TdfsSplitter
      Left = 0
      Top = 412
      Width = 890
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ResizeStyle = rsUpdate
      OnCanResize = SplitterBottomCanResize
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object PageControl2: TIBEPageControl
      Left = 12
      Top = 30
      Width = 866
      Height = 382
      AdvOfficePagerStyler = IBEMainForm.PCStyler
      Align = alClient
      ActivePage = tsText
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
      OnChange = PageControl2Change
      TabOrder = 0
      TabStop = True
      NextPictureChanged = True
      PrevPictureChanged = True
      object tsText: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 866
        Height = 357
        Caption = 'tsText'
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
        object EditFm: TEditFrame
          Top = 1
          Width = 866
          Height = 356
          object EditM: TSQLMemo
            Width = 866
            Height = 338
            BookMarkOptions.BookmarkImages = IBEMainForm.DebugImages
            OnClick = EditFmEditMClick
            OnMouseMove = EditFmEditMMouseMove
            OnMouseLeave = EditFmEditMMouseLeave
          end
          object pIncSearch: TPanel
            Top = 338
            Width = 866
          end
        end
      end
      object tsDescription: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 866
        Height = 357
        Caption = 'Description'
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
        object DescFm: TEditFrame
          Top = 1
          Width = 866
          Height = 356
          object EditM: TSQLMemo
            Width = 866
            Height = 338
          end
          object pIncSearch: TPanel
            Top = 338
            Width = 866
          end
        end
      end
      object tsPerformance: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 866
        Height = 357
        Caption = 'Performance Analysis'
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
        object PerformanceFm: TPerformanceFrame
          Top = 1
          Width = 866
          Height = 356
          object Pages: TIBEPageControl
            Width = 866
            Height = 347
            NextPictureChanged = True
            PrevPictureChanged = True
            object tsGraphicalSummary: TAdvOfficePage
              Width = 866
              Height = 322
              object Panel4: TPanel
                Width = 866
                Height = 321
                object Panel3: TPanel
                  Width = 866
                  Height = 321
                  object Bevel1: TBevel
                    Width = 866
                  end
                  object Chart: TChart
                    Width = 866
                    Height = 291
                  end
                  object TBDock2: TTBDock
                    Width = 866
                  end
                end
              end
            end
            object tsSummary: TAdvOfficePage
              Width = 866
              Height = 322
              object Panel2: TPanel
                Height = 321
              end
              object Panel5: TPanel
                Width = 671
                Height = 321
                object Panel6: TPanel
                  Width = 671
                end
                object TL: TdxTreeList
                  Width = 671
                  Height = 300
                end
              end
            end
          end
          object Panel7: TPanel
            Width = 1612
          end
          object TBDock1: TTBDock
            Width = 866
          end
        end
      end
      object tsSQLEditor: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 866
        Height = 357
        Caption = 'SQL Editor'
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
        object SQLEditFm: TEditFrame
          Top = 1
          Width = 866
          Height = 356
          object EditM: TSQLMemo
            Width = 866
            Height = 338
          end
          object pIncSearch: TPanel
            Top = 338
            Width = 866
          end
        end
      end
      object tsResult: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 866
        Height = 357
        Caption = 'Results'
        PageAppearance.BorderColor = clNone
        PageAppearance.Color = clBtnFace
        PageAppearance.ColorTo = 15195349
        PageAppearance.ColorMirror = 15195349
        PageAppearance.ColorMirrorTo = 16513776
        PageAppearance.Gradient = ggVertical
        PageAppearance.GradientMirror = ggVertical
        TabVisible = False
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
      object tsEventBlocks: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 866
        Height = 357
        Caption = 'Event blocks'
        PageAppearance.BorderColor = clNone
        PageAppearance.Color = clBtnFace
        PageAppearance.ColorTo = 15195349
        PageAppearance.ColorMirror = 15195349
        PageAppearance.ColorMirrorTo = 16513776
        PageAppearance.Gradient = ggVertical
        PageAppearance.GradientMirror = ggVertical
        TabVisible = False
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
        object EventBlockFm: TBlockEditFrame
          Top = 1
          Width = 866
          Height = 356
          Align = alClient
          object SplitterBottom: TdfsSplitter
            Top = 159
            Width = 866
          end
          object DockBottom: TTBDock
            Top = 162
            Width = 866
            object twResults: TTBToolWindow
              ClientAreaWidth = 853
              object Pages: TIBEPageControl
                Width = 853
                NextPictureChanged = True
                PrevPictureChanged = True
                object tsParams: TAdvOfficePage
                  Width = 853
                  object tlParams: TdxTreeList
                    Width = 853
                  end
                end
                object tsWatches: TAdvOfficePage
                  Width = 853
                  object tlWatches: TdxTreeList
                    Width = 853
                  end
                end
                object tsLastStmt: TAdvOfficePage
                  Width = 853
                  object LastStmtFm: TEditFrame
                    Width = 853
                    object EditM: TSQLMemo
                      Width = 853
                    end
                    object pIncSearch: TPanel
                      Width = 853
                    end
                  end
                end
                object tsBreakpoints: TAdvOfficePage
                  Width = 853
                  object tlBreakPoints: TdxTreeList
                    Width = 853
                  end
                end
                object tsMessages: TAdvOfficePage
                  Width = 853
                  object Splitter1: TdfsSplitter
                    Width = 853
                  end
                  object tlMessages: TdxTreeList
                    Width = 853
                  end
                  object MessagesM: TdxMemo
                    Width = 853
                    Height = 89
                    StoredValues = 64
                  end
                end
                object tsResults: TAdvOfficePage
                  Width = 853
                  object tlResult: TdxTreeList
                    Width = 853
                  end
                end
                object tsSQLMessages: TAdvOfficePage
                  Width = 853
                  object ErrorM: TdxMemo
                    Width = 853
                    Height = 164
                  end
                end
              end
            end
          end
          object TBDock1: TTBDock
            Width = 866
            object MainToolbar: TTBToolbar
              object eBlockPath: TdxButtonEdit
                StoredValues = 64
                ExistButtons = True
              end
              object cbEvents: TdxPickEdit
                Visible = True
                Text = ''
                StoredValues = 64
              end
            end
          end
          object MainBlockFm: TEditFrame
            Width = 866
            Height = 115
            object EditM: TSQLMemo
              Width = 866
              Height = 97
            end
            object pIncSearch: TPanel
              Top = 97
              Width = 866
            end
          end
          object pProgress: TPanel
            Width = 866
          end
          object ts2: TFIBTransaction
            Timeout = 61881300
          end
        end
      end
      object tsEvent: TAdvOfficePage
        Left = 0
        Top = 24
        Width = 866
        Height = 357
        Caption = 'Event'
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
        object Panel2: TPanel
          Left = 0
          Top = 1
          Width = 866
          Height = 53
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Bevel1: TBevel
            Left = 0
            Top = 46
            Width = 866
            Height = 7
            Align = alBottom
            Shape = bsBottomLine
          end
          object Label1: TLabel
            Left = 7
            Top = 5
            Width = 132
            Height = 13
            Caption = 'Assigned to following event:'
          end
          object cbBlockEvent: TdxPopupEdit
            Left = 6
            Top = 23
            Width = 369
            TabOrder = 0
            StyleController = IBEMainForm.MainSC
            HideEditCursor = True
            PopupControl = EventsTL
            PopupFormBorderStyle = pbsSysPanel
            OnInitPopup = cbBlockEventInitPopup
            OnPopup = cbBlockEventPopup
          end
          object EventsTL: TdxTreeList
            Tag = -1000
            Left = 513
            Top = 8
            Width = 366
            Height = 137
            Bands = <
              item
              end
            >
            DefaultLayout = True
            HeaderPanelRowCount = 1
            DragMode = dmAutomatic
            TabOrder = 2
            Visible = False
            HideSelection = False
            Images = IBEMainForm.MenuImages
            LookAndFeel = lfFlat
            Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
            OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSearch']
            TreeLineColor = clGrayText
            ShowHeader = False
            GridLineColor = clSilver
            OnDblClick = EventsTLDblClick
            OnKeyPress = EventsTLKeyPress
            OnCustomDrawCell = EventsTLCustomDrawCell
            Constraints.MinWidth = 100
            object DBTLColumn1: TdxTreeListColumn
              BandIndex = 0
              RowIndex = 0
            end
          end
          object bClearEvent: TButton
            Left = 380
            Top = 22
            Width = 72
            Height = 21
            Caption = 'Clear'
            TabOrder = 1
            OnClick = bClearEventClick
          end
          object cbEventBlockDebug: TdxCheckEdit
            Left = 470
            Top = 23
            Width = 385
            TabOrder = 3
            Caption = 'Debug when fires'
            StyleController = IBEMainForm.MainCheckSC
            OnChange = cbEventBlockDebugChange
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 54
          Width = 866
          Height = 303
          Align = alClient
          BevelOuter = bvNone
          Caption = 'There is no event associated with this block'
          TabOrder = 1
          object EventFm: TEditFrame
            Width = 866
            Height = 303
            object EditM: TSQLMemo
              Width = 866
              Height = 285
            end
            object pIncSearch: TPanel
              Top = 285
              Width = 866
            end
          end
        end
      end
    end
    object DockLeft: TTBDock
      Left = 0
      Top = 30
      Width = 9
      Height = 382
      Position = dpLeft
    end
    object DockRight: TTBDock
      Left = 881
      Top = 30
      Width = 9
      Height = 382
      Position = dpRight
    end
    object DockBottom: TTBDock
      Left = 0
      Top = 415
      Width = 890
      Height = 194
      Position = dpBottom
      object twResults: TTBToolWindow
        Left = 0
        Top = 0
        BorderStyle = bsNone
        Caption = 'Debugging results'
        CloseButton = False
        ClientAreaHeight = 190
        ClientAreaWidth = 877
        DockPos = 0
        DragHandleStyle = dhDouble
        FullSize = True
        TabOrder = 0
        OnDockChanged = twResultsDockChanged
        OnDockChanging = twResultsDockChanging
        OnVisibleChanged = twResultsVisibleChanged
        object Pages: TIBEPageControl
          Left = 0
          Top = 0
          Width = 877
          Height = 190
          AdvOfficePagerStyler = IBEMainForm.PCStyler
          Align = alClient
          ActivePage = tsParams
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
          OnChange = PagesChange
          TabOrder = 0
          TabStop = True
          NextPictureChanged = True
          PrevPictureChanged = True
          object tsParams: TAdvOfficePage
            Left = 0
            Top = 24
            Width = 877
            Height = 165
            Caption = '&Parameters and Variables'
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
            object tlParams: TdxTreeList
              Left = 0
              Top = 1
              Width = 877
              Height = 164
              Bands = <
                item
                end
              >
              DefaultLayout = True
              HeaderPanelRowCount = 1
              Align = alClient
              DragMode = dmAutomatic
              TabOrder = 0
              HideSelection = False
              Images = ImageListParams
              LookAndFeel = lfFlat
              Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort', 'aoStoreToRegistry']
              OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
              TreeLineColor = clGrayText
              ShowGrid = True
              ShowRoot = False
              GridLineColor = clSilver
              OnClick = tlParamsClick
              OnDblClick = tlParamsDblClick
              OnDragDrop = tlParamsDragDrop
              OnDragOver = tlParamsDragOver
              OnKeyPress = tlParamsKeyPress
              OnCustomDrawCell = tlParamsCustomDrawCell
              OnChangeNode = tlParamsChangeNode
              object tlcParamName: TdxTreeListColumn
                Caption = 'Name'
                Width = 150
                BandIndex = 0
                RowIndex = 0
              end
              object tlcParamValue: TdxTreeListColumn
                Caption = 'Value'
                Width = 149
                BandIndex = 0
                RowIndex = 0
              end
              object tlcParamType: TdxTreeListColumn
                Caption = 'Type'
                Width = 293
                BandIndex = 0
                RowIndex = 0
              end
              object tlcParamWatch: TdxTreeListColumn
                Caption = 'Watch'
                HeaderAlignment = taCenter
                Width = 50
                BandIndex = 0
                RowIndex = 0
              end
              object tlcParamIsUtf8: TdxTreeListColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
              end
            end
          end
          object tsWatches: TAdvOfficePage
            Left = 0
            Top = 24
            Width = 877
            Height = 165
            Caption = '&Watches'
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
            object tlWatches: TdxTreeList
              Left = 0
              Top = 1
              Width = 877
              Height = 164
              Bands = <
                item
                end
              >
              DefaultLayout = True
              HeaderPanelRowCount = 1
              Align = alClient
              DragMode = dmAutomatic
              TabOrder = 0
              HideSelection = False
              Images = ImageListParams
              LookAndFeel = lfFlat
              Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort', 'aoStoreToRegistry']
              OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
              TreeLineColor = clGrayText
              ShowGrid = True
              ShowRoot = False
              GridLineColor = clSilver
              OnDblClick = tlWatchesDblClick
              OnKeyPress = tlWatchesKeyPress
              OnCustomDrawCell = tlParamsCustomDrawCell
              object tlcWParamName: TdxTreeListColumn
                Caption = 'Name'
                Width = 150
                BandIndex = 0
                RowIndex = 0
              end
              object tlcWParamValue: TdxTreeListColumn
                Caption = 'Value'
                Width = 149
                BandIndex = 0
                RowIndex = 0
              end
              object tlcWParamType: TdxTreeListColumn
                Caption = 'Type'
                Width = 293
                BandIndex = 0
                RowIndex = 0
              end
              object tlcWParamIsUTF8: TdxTreeListColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
              end
            end
          end
          object tsLastStmt: TAdvOfficePage
            Left = 0
            Top = 24
            Width = 877
            Height = 165
            Caption = 'Last &Statement'
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
            object LastStmtFm: TEditFrame
              Top = 1
              Width = 877
              Height = 164
              object EditM: TSQLMemo
                Width = 877
                Height = 146
              end
              object pIncSearch: TPanel
                Top = 146
                Width = 877
              end
            end
          end
          object tsBreakpoints: TAdvOfficePage
            Left = 0
            Top = 24
            Width = 877
            Height = 165
            Caption = '&Breakpoints'
            ImageIndex = 3
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
            object tlBreakPoints: TdxTreeList
              Left = 0
              Top = 1
              Width = 877
              Height = 164
              Bands = <
                item
                end
              >
              DefaultLayout = True
              HeaderPanelRowCount = 1
              Align = alClient
              DragMode = dmAutomatic
              TabOrder = 0
              HideSelection = False
              Images = ImageListParams
              LookAndFeel = lfFlat
              Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
              OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoEnterShowEditor', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
              TreeLineColor = clGrayText
              ShowGrid = True
              ShowRoot = False
              GridLineColor = clSilver
              OnDblClick = tlBreakPointsDblClick
              OnKeyDown = tlBreakPointsKeyDown
              object tlcBPLine: TdxTreeListColumn
                Caption = 'Line'
                DisableEditor = True
                ReadOnly = True
                Width = 51
                BandIndex = 0
                RowIndex = 0
              end
              object tlcBPStatement: TdxTreeListColumn
                Caption = 'Statement'
                DisableEditor = True
                ReadOnly = True
                Width = 301
                BandIndex = 0
                RowIndex = 0
              end
              object tlcBPPasses: TdxTreeListColumn
                Alignment = taRightJustify
                Caption = 'Passes'
                DisableEditor = True
                ReadOnly = True
                Width = 48
                BandIndex = 0
                RowIndex = 0
              end
              object tlcBPCondition: TdxTreeListColumn
                Caption = 'Condition'
                Width = 345
                BandIndex = 0
                RowIndex = 0
              end
            end
          end
          object tsMessages: TAdvOfficePage
            Left = 0
            Top = 24
            Width = 877
            Height = 165
            Caption = '&Messages'
            ImageIndex = 4
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
            object Splitter1: TdfsSplitter
              Left = 0
              Top = 72
              Width = 877
              Height = 4
              Cursor = crVSplit
              Align = alBottom
              Maximized = False
              Minimized = False
              ButtonCursor = crDefault
            end
            object tlMessages: TdxTreeList
              Left = 0
              Top = 1
              Width = 877
              Height = 71
              Bands = <
                item
                end
              >
              DefaultLayout = True
              HeaderPanelRowCount = 1
              Align = alClient
              DragMode = dmAutomatic
              TabOrder = 1
              HideSelection = False
              LookAndFeel = lfFlat
              Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
              OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
              TreeLineColor = clGrayText
              ShowGrid = True
              ShowRoot = False
              GridLineColor = clSilver
              OnClick = tlMessagesClick
              OnDblClick = tlWatchesDblClick
              OnKeyPress = tlWatchesKeyPress
              OnChangeNode = tlMessagesChangeNode
              object tlcMesNum: TdxTreeListColumn
                Alignment = taRightJustify
                Caption = '¹'
                Width = 36
                BandIndex = 0
                RowIndex = 0
              end
              object tlcMesType: TdxTreeListColumn
                Caption = 'Type'
                Width = 70
                BandIndex = 0
                RowIndex = 0
              end
              object tlcMesText: TdxTreeListColumn
                Caption = 'Text'
                Width = 639
                BandIndex = 0
                RowIndex = 0
              end
              object tlcMesLine: TdxTreeListColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
              end
            end
            object MessagesM: TdxMemo
              Tag = 1000
              Left = 0
              Top = 76
              Width = 877
              Align = alBottom
              TabOrder = 0
              ReadOnly = True
              StyleController = IBEMainForm.MainSC
              Height = 89
              StoredValues = 64
            end
          end
          object tsResults: TAdvOfficePage
            Left = 0
            Top = 24
            Width = 877
            Height = 165
            Caption = '&Results'
            ImageIndex = 5
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
            object tlResult: TdxTreeList
              Left = 0
              Top = 1
              Width = 877
              Height = 164
              Bands = <
                item
                end
              >
              DefaultLayout = True
              HeaderPanelRowCount = 1
              Align = alClient
              DragMode = dmAutomatic
              TabOrder = 0
              HideSelection = False
              LookAndFeel = lfFlat
              Options = ['aoColumnSizing', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoHideFocusRect']
              OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
              TreeLineColor = clGrayText
              ShowGrid = True
              ShowRoot = False
              GridLineColor = clSilver
              OnDblClick = tlWatchesDblClick
              OnKeyPress = tlWatchesKeyPress
              OnCustomDrawCell = tlResultCustomDrawCell
            end
          end
          object tsSQLMessages: TAdvOfficePage
            Left = 0
            Top = 24
            Width = 877
            Height = 165
            Caption = 'SQL Editor Messages'
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
            object ErrorM: TdxMemo
              Tag = 1000
              Left = 0
              Top = 1
              Width = 877
              Align = alClient
              TabOrder = 0
              StyleController = IBEMainForm.MainSC
              Height = 164
            end
          end
        end
      end
    end
    object DockTop: TTBDock
      Left = 0
      Top = 0
      Width = 890
      Height = 9
    end
    object pProgress: TPanel
      Left = 0
      Top = 12
      Width = 890
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
      TabOrder = 5
      Visible = False
    end
  end
  object ImageListParams: TImageList
    Left = 560
    Top = 248
    Bitmap = {21286 bytes}
  end
  object ActionList: TActionList
    Images = IBEMainForm.MenuImages
    OnExecute = ActionListExecute
    OnUpdate = ActionListUpdate
    Left = 400
    Top = 139
    object aStepOver: TAction
      Caption = 'Step Over'
      Hint = 'Step Over'
      ImageIndex = 55
      ShortCut = 119
      OnExecute = aStepOverExecute
      OnUpdate = aStepOverUpdate
    end
    object aRun: TAction
      Caption = 'Run'
      Hint = 'Run'
      ImageIndex = 56
      ShortCut = 120
      OnExecute = aRunExecute
    end
    object aToggleBreakpoint: TAction
      Caption = 'Toggle breakpoint'
      Hint = 'Toggle breakpoint'
      ImageIndex = 136
      ShortCut = 116
      OnExecute = aToggleBreakpointExecute
    end
    object aReset: TAction
      Caption = 'Reset'
      Hint = 'Reset'
      ImageIndex = 134
      ShortCut = 16497
      OnExecute = aResetExecute
    end
    object aPause: TAction
      Caption = 'Pause'
      Enabled = False
      Hint = 'Pause'
      ImageIndex = 57
      ShortCut = 16464
      OnExecute = aPauseExecute
    end
    object aCloseDebugger: TAction
      Caption = 'aCloseDebugger'
      ShortCut = 16499
      OnExecute = aCloseDebuggerExecute
    end
    object aCommit: TAction
      Caption = 'Commit Retaining'
    end
    object aParameters: TAction
      Caption = 'Parameters'
      Hint = 'Parameters'
      ImageIndex = 135
      ShortCut = 24656
      OnExecute = aParametersExecute
    end
    object actTraceInto: TAction
      Caption = 'Trace Into'
      ImageIndex = 54
      ShortCut = 118
      OnExecute = actTraceIntoExecute
      OnUpdate = actTraceIntoUpdate
    end
    object actInitNewVars: TAction
      Caption = 'Init NEW variables'
      ShortCut = 24654
      OnExecute = actInitNewVarsExecute
    end
    object actInitOldVars: TAction
      Caption = 'Init OLD variables'
      ShortCut = 24655
      OnExecute = actInitOldVarsExecute
    end
    object actSkip: TAction
      Caption = 'Skip'
      Hint = 'Skip statement'
      ImageIndex = 256
      OnExecute = actSkipExecute
      OnUpdate = actSkipUpdate
    end
    object actRunToCursor: TAction
      Caption = 'Run to cursor'
      Hint = 'Run to cursor'
      ImageIndex = 273
      ShortCut = 115
      OnExecute = actRunToCursorExecute
      OnUpdate = actRunToCursorUpdate
    end
    object actBlockSave: TAction
      Category = 'Block'
      Caption = 'Save'
      ImageIndex = 29
      Visible = False
      OnExecute = actBlockSaveExecute
      OnUpdate = actBlockSaveUpdate
    end
    object actBlockSaveAs: TAction
      Category = 'Block'
      Caption = 'Save block as...'
      ImageIndex = 250
      Visible = False
    end
    object actEscape: TAction
      Caption = 'actEscape'
      ShortCut = 27
      OnExecute = actEscapeExecute
    end
  end
  object ts2: TFIBTransaction
    Active = False
    Timeout = 61987624
    TimeoutAction = TARollback
    Left = 512
    Top = 80
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
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'SP Debugger'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'SP Debugger'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
    >
    Categories.Strings = ['Default', 'Block']
    Categories.ItemsVisibles = [2, 2]
    Categories.Visibles = [True, True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 164
    Top = 236
    DockControlHeights = [0, 0, 26, 0]
    object bliDatabases: TdxBarSubItem
      Caption = '(No active connection)'
      Category = 0
      Visible = ivAlways
      ImageIndex = 85
      OnClick = bliDatabasesClick
      ItemLinks = []
    end
    object dxBarButton1: TdxBarButton
      Action = aReset
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton2: TdxBarButton
      Action = aParameters
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton3: TdxBarButton
      Action = aRun
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton4: TdxBarButton
      Action = aStepOver
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton5: TdxBarButton
      Action = aPause
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton6: TdxBarButton
      Action = aToggleBreakpoint
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarButton7: TdxBarButton
      Action = actTraceInto
      Category = 0
      Hint = 'Trace Into'
      UnclickAfterDoing = False
    end
    object bsiDebugger: TdxBarSubItem
      Caption = 'Debugger'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton13
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton6
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton1
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton2
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton3
          Visible = True
        end
        item
          Item = dxBarButton5
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton4
          Visible = True
        end
        item
          Item = dxBarButton7
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton8
          Visible = True
        end
        item
          Item = dxBarButton9
          Visible = True
        end
      >
    end
    object dxBarButton8: TdxBarButton
      Action = actInitNewVars
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actInitOldVars
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actSkip
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = actRunToCursor
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = actBlockSave
      Category = 1
    end
    object beBlockName: TdxBarEdit
      Align = iaClient
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivNever
      Width = 100
    end
    object bcDebugMode: TdxBarCombo
      Caption = 'Debug mode:'
      Category = 0
      Visible = ivAlways
      Text = 'Careful'
      OnChange = bcDebugModeChange
      ImageIndex = 0
      ShowCaption = True
      Width = 100
      ShowEditor = False
      Items.Strings = ['Careful', 'Fast']
      ItemIndex = 0
    end
  end
  object Tm: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TmTimer
    Left = 316
    Top = 237
  end
  object Query: TpFIBQuery
    ParamCheck = True
    Transaction = ts2
    Left = 276
    Top = 237
  end
  object IBEBlock: TIBEBlock
    DebugMode = False
    OnSuspend = IBEBlockSuspend
    OnError = IBEBlockError
    Left = 276
    Top = 269
  end
end
