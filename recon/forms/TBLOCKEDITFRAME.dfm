object BlockEditFrame: TBlockEditFrame
  Left = 0
  Top = 0
  Width = 1260
  Height = 595
  TabOrder = 0
  OnResize = FrameResize
  object SplitterBottom: TdfsSplitter
    Left = 0
    Top = 398
    Width = 1260
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    Visible = False
    OnCanResize = SplitterBottomCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object DockBottom: TTBDock
    Left = 0
    Top = 401
    Width = 1260
    Height = 194
    Position = dpBottom
    object twResults: TTBToolWindow
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'Debugging results'
      CloseButton = False
      ClientAreaHeight = 190
      ClientAreaWidth = 1247
      DockPos = 0
      DragHandleStyle = dhDouble
      FullSize = True
      TabOrder = 0
      Visible = False
      OnDockChanged = twResultsDockChanged
      object Pages: TIBEPageControl
        Left = 0
        Top = 0
        Width = 1247
        Height = 190
        AdvOfficePagerStyler = IBEMainForm.PCStyler
        Align = alClient
        ActivePage = tsParams
        ButtonSettings.PageListButtonHint = 'Page List'
        ShowShortCutHints = False
        OnChange = PagesChange
        TabOrder = 0
        TabStop = True
        NextPictureChanged = True
        PrevPictureChanged = True
        object tsParams: TAdvOfficePage
          Left = 1
          Top = 26
          Width = 1245
          Height = 162
          Caption = '&Parameters and Variables'
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
          object tlParams: TdxTreeList
            Left = 2
            Top = 2
            Width = 1241
            Height = 158
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
            Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
            OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
            TreeLineColor = clGrayText
            ShowGrid = True
            ShowRoot = False
            GridLineColor = clSilver
            OnClick = tlParamsClick
            OnDblClick = tlParamsDblClick
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
          end
        end
        object tsWatches: TAdvOfficePage
          Left = 1
          Top = 26
          Width = 1245
          Height = 162
          Caption = '&Watches'
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
          object tlWatches: TdxTreeList
            Left = 2
            Top = 2
            Width = 1241
            Height = 158
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
            OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
            TreeLineColor = clGrayText
            ShowGrid = True
            ShowRoot = False
            GridLineColor = clSilver
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
          end
        end
        object tsLastStmt: TAdvOfficePage
          Left = 1
          Top = 26
          Width = 1245
          Height = 162
          Caption = 'Last &Statement'
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
          object LastStmtFm: TEditFrame
            Left = 2
            Top = 2
            Width = 1241
            Height = 158
            object EditM: TSQLMemo
              Width = 1241
              Height = 140
            end
            object pIncSearch: TPanel
              Top = 140
              Width = 1241
            end
          end
        end
        object tsBreakpoints: TAdvOfficePage
          Left = 1
          Top = 26
          Width = 1245
          Height = 162
          Caption = '&Breakpoints'
          ImageIndex = 3
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
          object tlBreakPoints: TdxTreeList
            Left = 2
            Top = 2
            Width = 1241
            Height = 158
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
            Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
            OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
            TreeLineColor = clGrayText
            ShowGrid = True
            ShowRoot = False
            GridLineColor = clSilver
            OnDblClick = tlBreakPointsDblClick
            OnKeyPress = tlBreakPointsKeyPress
            object tlcBPLine: TdxTreeListColumn
              Caption = 'Line'
              Width = 51
              BandIndex = 0
              RowIndex = 0
            end
            object tlcBPStatement: TdxTreeListColumn
              Caption = 'Statement'
              Width = 301
              BandIndex = 0
              RowIndex = 0
            end
            object tlcBPPasses: TdxTreeListColumn
              Alignment = taRightJustify
              Caption = 'Passes'
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
          Left = 1
          Top = 26
          Width = 1245
          Height = 162
          Caption = '&Messages'
          ImageIndex = 4
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
            Top = 67
            Width = 1241
            Height = 4
            Cursor = crVSplit
            Align = alBottom
            Maximized = False
            Minimized = False
            ButtonCursor = crDefault
          end
          object tlMessages: TdxTreeList
            Left = 2
            Top = 2
            Width = 1241
            Height = 65
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
            Left = 2
            Top = 71
            Width = 1241
            Align = alBottom
            TabOrder = 0
            ReadOnly = True
            StyleController = IBEMainForm.MainSC
            Height = 89
            StoredValues = 64
          end
        end
        object tsResults: TAdvOfficePage
          Left = 1
          Top = 26
          Width = 1245
          Height = 162
          Caption = '&Results'
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
          object tlResult: TdxTreeList
            Left = 2
            Top = 2
            Width = 1241
            Height = 158
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
          end
        end
        object tsSQLMessages: TAdvOfficePage
          Left = 1
          Top = 26
          Width = 1245
          Height = 162
          Caption = 'SQL Editor Messages'
          PageAppearance.BorderColor = 12697533
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
          TabAppearance.BackGround.ColorTo = 14537936
          TabAppearance.BackGround.Direction = gdHorizontal
          object ErrorM: TdxMemo
            Tag = 1000
            Left = 2
            Top = 2
            Width = 1241
            Align = alClient
            TabOrder = 0
            StyleController = IBEMainForm.MainSC
            Height = 158
          end
        end
      end
    end
  end
  object TBDock1: TTBDock
    Left = 0
    Top = 0
    Width = 1260
    Height = 26
    object MainToolbar: TTBToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'MainToolbar'
      DockMode = dmCannotFloat
      DragHandleStyle = dhNone
      FullSize = True
      Images = IBEMainForm.MenuImages
      Options = ['tboShowHint']
      ParentShowHint = False
      ShowHint = True
      ShrinkMode = tbsmNone
      TabOrder = 0
      object TBControlItem3: TTBControlItem
        Control = cbEvents
      end
      object tbEventsSeparator: TTBSeparatorItem
      end
      object TBControlItem1: TTBControlItem
        Control = cbUseDefaultBlock
      end
      object TBSeparatorItem3: TTBSeparatorItem
      end
      object TBItem1: TTBItem
        Action = actBlockSave
      end
      object TBSeparatorItem4: TTBSeparatorItem
      end
      object TBItem3: TTBItem
        Action = actToggleBreakpoint
      end
      object TBSeparatorItem5: TTBSeparatorItem
      end
      object TBItem7: TTBItem
        Action = actReset
      end
      object TBSeparatorItem7: TTBSeparatorItem
      end
      object TBItem5: TTBItem
        Action = actRun
      end
      object TBItem6: TTBItem
        Action = actPause
      end
      object TBSeparatorItem6: TTBSeparatorItem
      end
      object TBItem4: TTBItem
        Action = actStepOver
      end
      object TBItem8: TTBItem
        Action = actTraceInto
      end
      object TBItem2: TTBItem
        Action = actSkip
      end
      object TBItem9: TTBItem
        Action = actRunToCursor
      end
      object TBSeparatorItem2: TTBSeparatorItem
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object TBControlItem2: TTBControlItem
        Control = eBlockPath
      end
      object cbUseDefaultBlock: TdxCheckEdit
        Left = 207
        Top = 0
        Width = 121
        TabOrder = 0
        Visible = False
        Caption = 'Use default block'
        StyleController = IBEMainForm.MainCheckSC
        OnChange = cbUseDefaultBlockChange
      end
      object eBlockPath: TdxButtonEdit
        Left = 363
        Top = 0
        Width = 472
        TabOrder = 1
        OnKeyPress = eBlockPathKeyPress
        Anchors = ['akLeft', 'akTop', 'akRight']
        ReadOnly = False
        StyleController = IBEMainForm.MainSC
        Buttons = <
          item
            Default = True
            Glyph.Data = {36030000424d36030000000000003600000028000000100000001000000001001800000000000003000000000000000000000000000000000000e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e62b6870004b55004b55004b55004b55004b55004b55004b55004b55004b55004b55004b552b6870e6e6e6e6e6e6e6e6e6135861cae1e6d9f6ffc9f1ffbbecfface6ff9fe0ff92d9ff85d1ff79c8ff6dbfff62b6ff176072bac8cae6e6e6e6e6e6497e86558890d8f7ffc8f3ffbaeeffabe8ff9de2ff90dbff83d3ff77ccff6bc3ff5fb9ff3180a6648e94e6e6e6e6e6e6477d841b616abbdde3c8f4ffb9efffaaeaff9ce4ff8eddff81d6ff75ceff68c6ff5dbdff4aa5e31c5e67e6e6e6e6e6e611576082b7bf4e858dc7f5ffb8f0ffa8ecff9ae6ff8de0ff7fd9ff73d1ff67c9ff5bc0ff50b7ff06576bbbc9cbe6e6e6004b55caf5ff185f6aacd8e0b7f2ffa7edff99e8ff8ee2fe8addfc83d7fb79d1fb6fcafb65c2fb3587ab7a9da1e6e6e6004b55caf6ff7bb2bf48828ab6f3ffa6efff98eaff94e5fca3e1f5a3d5e191c7d08cc4cf88c0cf79b4c4789d99acc1b5004b55c8f6ffc2efff185f6a9dd5dea4eaf695ddec6ec2d583bcc97dadaa05592f025629005527005426005425005523004b55c6f7ffbcf1ff7eb9c9004b550a535f2a6d7f296d814b8da677afc175aca400582800863700c65200c652005523004b55c5f8ffb6f4ffaeeeffa9e6ffa3dfff9ad9ff8bd5ff79d6fe79dcf9a2e2ee28765200863700c65200c652005523004b55c5f8ffb2edf5a3e4ef74c3d46aaebe5ba3b6539aac5b97a281adb560928000552400b74c007f34007f340055232b6870004b551c5e6739717939717967919687a6aaacbfc18eae9f347550005523006a2b0063280e5e2f005523005523e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6568b6c0055230055232b7047649478c9d3cd8faf9c005523e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e69eb8a9}
            Kind = bkGlyph
            Width = 21
          end
        >
        OnButtonClick = eBlockPathButtonClick
        StoredValues = 64
        ExistButtons = True
      end
      object cbEvents: TdxPickEdit
        Left = 0
        Top = 0
        Width = 201
        TabOrder = 2
        Visible = False
        ReadOnly = False
        StyleController = IBEMainForm.MainSC
        Text = 'cbEvents'
        OnChange = cbEventsChange
        DropDownRows = 40
        DropDownListStyle = True
        StoredValues = 64
      end
    end
  end
  object MainBlockFm: TEditFrame
    Top = 44
    Width = 1260
    Height = 354
    TabOrder = 2
    object EditM: TSQLMemo
      Width = 1260
      Height = 336
      BookMarkOptions.BookmarkImages = IBEMainForm.DebugImages
      OnClick = MainBlockFmEditMClick
      OnMouseMove = MainBlockFmEditMMouseMove
    end
    object pIncSearch: TPanel
      Top = 336
      Width = 1260
    end
  end
  object pProgress: TPanel
    Left = 0
    Top = 26
    Width = 1260
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
    TabOrder = 3
    Visible = False
  end
  object ActionList: TActionList
    Images = IBEMainForm.MenuImages
    Left = 400
    Top = 139
    object actStepOver: TAction
      Caption = 'Step Over'
      Enabled = False
      Hint = 'Step Over'
      ImageIndex = 55
      ShortCut = 119
      Visible = False
      OnExecute = actStepOverExecute
      OnUpdate = actStepOverUpdate
    end
    object actRun: TAction
      Caption = 'Run'
      Enabled = False
      Hint = 'Run'
      ImageIndex = 56
      ShortCut = 120
      Visible = False
      OnExecute = actRunExecute
    end
    object actToggleBreakpoint: TAction
      Caption = 'Toggle breakpoint'
      Hint = 'Toggle breakpoint'
      ImageIndex = 136
      ShortCut = 116
      Visible = False
      OnExecute = actToggleBreakpointExecute
      OnUpdate = actToggleBreakpointUpdate
    end
    object actReset: TAction
      Caption = 'Reset'
      Hint = 'Reset'
      ImageIndex = 134
      ShortCut = 16497
      Visible = False
      OnExecute = actResetExecute
      OnUpdate = actResetUpdate
    end
    object actPause: TAction
      Caption = 'Pause'
      Enabled = False
      Hint = 'Pause'
      ImageIndex = 57
      ShortCut = 16464
      Visible = False
      OnExecute = actPauseExecute
    end
    object aCloseDebugger: TAction
      Caption = 'aCloseDebugger'
      ShortCut = 16499
    end
    object aCommit: TAction
      Caption = 'Commit Retaining'
    end
    object aParameters: TAction
      Caption = 'Parameters'
      Hint = 'Parameters'
      ImageIndex = 135
      ShortCut = 24656
    end
    object actTraceInto: TAction
      Caption = 'Trace Into'
      ImageIndex = 54
      ShortCut = 118
      Visible = False
      OnExecute = actTraceIntoExecute
      OnUpdate = actTraceIntoUpdate
    end
    object actInitNewVars: TAction
      Caption = 'Init NEW variables'
      ShortCut = 24654
    end
    object actInitOldVars: TAction
      Caption = 'Init OLD variables'
      ShortCut = 24655
    end
    object actSkip: TAction
      Caption = 'Skip'
      Hint = 'Skip statement'
      ImageIndex = 256
      Visible = False
      OnExecute = actSkipExecute
    end
    object actRunToCursor: TAction
      Caption = 'Run to cursor'
      Hint = 'Run to cursor'
      ImageIndex = 273
      ShortCut = 115
      Visible = False
      OnExecute = actRunToCursorExecute
      OnUpdate = actRunToCursorUpdate
    end
    object actBlockSave: TAction
      Category = 'Block'
      Caption = 'Save'
      ImageIndex = 29
      OnExecute = actBlockSaveExecute
      OnUpdate = actBlockSaveUpdate
    end
    object actBlockSaveAs: TAction
      Category = 'Block'
      Caption = 'Save block as...'
      ImageIndex = 250
      Visible = False
    end
    object actDebugMode: TAction
      Caption = 'actDebugMode'
      ImageIndex = 55
      OnExecute = actDebugModeExecute
      OnUpdate = actDebugModeUpdate
    end
  end
  object OpenD: TOpenDialog
    DefaultExt = 'ibeblock'
    Filter = 'IBEBlock Files (*.sql)|*.ibeblock|All files (*.*)|*.*'
    Options = ['ofReadOnly', 'ofHideReadOnly', 'ofFileMustExist', 'ofEnableSizing']
    Title = 'Open IBEBlock'
    Left = 304
    Top = 198
  end
  object ImageListParams: TImageList
    Left = 560
    Top = 248
    Bitmap = {21286 bytes}
  end
  object ts2: TFIBTransaction
    Active = False
    Timeout = 293153068
    TimeoutAction = TARollback
    Left = 504
    Top = 160
  end
end
