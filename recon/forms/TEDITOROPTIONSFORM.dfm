object EditorOptionsForm: TEditorOptionsForm
  Left = 400
  Top = 208
  Width = 533
  Height = 580
  HelpContext = 6700
  BorderIcons = ['biSystemMenu']
  Caption = 'Editor Properties'
  Color = clBtnFace
  Constraints.MinHeight = 580
  Constraints.MinWidth = 530
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TIBEPageControl
    Left = 0
    Top = 0
    Width = 517
    Height = 510
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsCodeInsight
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
    object tsGeneral: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 517
      Height = 485
      Caption = 'General'
      PageAppearance.BorderColor = clNone
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      UsePageAppearance = True
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
      object lTabStops: TLabel
        Left = 111
        Top = 260
        Width = 326
        Height = 13
        Alignment = taRightJustify
        Anchors = ['akTop', 'akRight']
        AutoSize = False
        Caption = 'Tab Stops:'
      end
      object lUndoLimit: TLabel
        Left = 111
        Top = 289
        Width = 327
        Height = 13
        Alignment = taRightJustify
        Anchors = ['akTop', 'akRight']
        AutoSize = False
        Caption = 'Undo Limit:'
      end
      object Label1: TLabel
        Left = 6
        Top = 241
        Width = 72
        Height = 13
        Caption = 'Open links with'
      end
      object gbEditorOptions: TGroupBox
        Left = 5
        Top = 9
        Width = 508
        Height = 221
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Editor Options '
        TabOrder = 0
        object cbAutoIndent: TdxCheckEdit
          Left = 12
          Top = 16
          Width = 350
          TabOrder = 0
          Caption = 'Auto Indent'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbInsertMode: TdxCheckEdit
          Left = 12
          Top = 35
          Width = 350
          TabOrder = 1
          Caption = 'Insert Mode'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbSyntaxHighlight: TdxCheckEdit
          Left = 12
          Top = 73
          Width = 350
          TabOrder = 2
          Caption = 'Use Syntax Highlight'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbFindTextAtCursor: TdxCheckEdit
          Left = 12
          Top = 113
          Width = 350
          TabOrder = 3
          Caption = 'Find Text at Cursor'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbShowHyperlinks: TdxCheckEdit
          Left = 12
          Top = 132
          Width = 350
          TabOrder = 4
          Caption = 'Always Show Hyperlinks'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbShowLinesNumbers: TdxCheckEdit
          Left = 12
          Top = 152
          Width = 350
          TabOrder = 5
          Caption = 'Show lines number'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbSmartTab: TdxCheckEdit
          Left = 12
          Top = 54
          Width = 350
          TabOrder = 6
          Caption = 'Smart Tab'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbScrollPastEol: TdxCheckEdit
          Left = 12
          Top = 172
          Width = 350
          TabOrder = 7
          Caption = 'Scroll past end of line'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbHighlightCurrentLine: TdxCheckEdit
          Left = 12
          Top = 93
          Width = 350
          TabOrder = 8
          Caption = 'Highlight Current Line'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbEditorGroupUndo: TdxCheckEdit
          Left = 12
          Top = 193
          Width = 350
          TabOrder = 9
          Caption = 'Group undo'
          StyleController = IBEMainForm.MainCheckSC
        end
      end
      object seTabStops: TdxSpinEdit
        Left = 440
        Top = 258
        Width = 73
        TabOrder = 1
        Anchors = ['akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        MaxValue = 100
        MinValue = 1
        Value = 1
        StoredValues = 48
      end
      object seUndoLimit: TdxSpinEdit
        Left = 440
        Top = 286
        Width = 73
        TabOrder = 2
        Anchors = ['akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        MaxValue = 10000
        StoredValues = 16
      end
      object cbOpenLinksKind: TdxPickEdit
        Left = 5
        Top = 258
        Width = 130
        TabOrder = 3
        StyleController = IBEMainForm.MainSC
        OnChange = cbEditFontSizeChange
        DropDownListStyle = True
        Items.Strings = ['Single click', 'Double click']
      end
    end
    object tsDisplay: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 517
      Height = 485
      Caption = 'Display'
      ImageIndex = 1
      PageAppearance.BorderColor = clNone
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      UsePageAppearance = True
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
      object lEditorFont: TLabel
        Left = 7
        Top = 79
        Width = 54
        Height = 13
        Caption = 'Editor Font:'
        FocusControl = cbEditFont
      end
      object lSize: TLabel
        Left = 313
        Top = 78
        Width = 23
        Height = 13
        Anchors = ['akTop', 'akRight']
        Caption = 'Size:'
        FocusControl = cbEditFontSize
      end
      object lPrintFontSize: TLabel
        Left = 424
        Top = 78
        Width = 45
        Height = 13
        Anchors = ['akTop', 'akRight']
        Caption = 'Print size:'
        FocusControl = cbPrintFontSize
      end
      object gbMarginAndGutter: TGroupBox
        Left = 5
        Top = 8
        Width = 506
        Height = 62
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Margin and Gutter '
        TabOrder = 0
        object lRightMargin: TLabel
          Left = 307
          Top = 16
          Width = 63
          Height = 13
          Anchors = ['akTop', 'akRight']
          Caption = 'Right Margin:'
          FocusControl = seRightMargin
        end
        object lGutterWidth: TLabel
          Left = 418
          Top = 16
          Width = 63
          Height = 13
          Anchors = ['akTop', 'akRight']
          Caption = 'Gutter Width:'
          FocusControl = seGutterWidth
        end
        object cbRightMarginVisible: TdxCheckEdit
          Left = 7
          Top = 15
          Width = 250
          TabOrder = 0
          Caption = 'Visible Right Margin'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbGutterVisible: TdxCheckEdit
          Left = 7
          Top = 35
          Width = 164
          TabOrder = 1
          Caption = 'Visible Gutter'
          StyleController = IBEMainForm.MainCheckSC
        end
        object seRightMargin: TdxSpinEdit
          Left = 307
          Top = 33
          Width = 70
          TabOrder = 2
          Anchors = ['akTop', 'akRight']
          StyleController = IBEMainForm.MainSC
          MaxValue = 1000
          MinValue = 1
          Value = 80
          StoredValues = 48
        end
        object seGutterWidth: TdxSpinEdit
          Left = 418
          Top = 33
          Width = 70
          TabOrder = 3
          Anchors = ['akTop', 'akRight']
          StyleController = IBEMainForm.MainSC
          Value = 30
        end
      end
      object cbEditFont: TFontComboBox
        Left = 7
        Top = 95
        Width = 241
        Height = 20
        Options = ['foFixedPitchOnly', 'foNoOEMFonts']
        TabOrder = 1
        OnChange = cbEditFontChange
      end
      object cbEditFontSize: TdxPickEdit
        Left = 313
        Top = 94
        Width = 70
        TabOrder = 2
        Anchors = ['akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        Text = '10'
        OnChange = cbEditFontSizeChange
        Items.Strings = ['8', '10', '11', '12', '14', '16', '18', '20', '22', '26']
      end
      object SampleP: TPanel
        Left = 7
        Top = 125
        Width = 503
        Height = 248
        Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
        BevelInner = bvLowered
        Caption = 'Sample Text 12345'
        Color = clWindow
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object cbPrintFontSize: TdxPickEdit
        Left = 424
        Top = 94
        Width = 69
        TabOrder = 4
        Anchors = ['akTop', 'akRight']
        StyleController = IBEMainForm.MainSC
        Text = '10'
        OnChange = cbEditFontSizeChange
        Items.Strings = ['8', '10', '11', '12', '14', '16', '18', '20', '22', '26']
      end
    end
    object tsColor: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 517
      Height = 485
      Caption = 'Color'
      ImageIndex = 2
      PageAppearance.BorderColor = clNone
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      UsePageAppearance = True
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
      object lFColor: TLabel
        Left = 218
        Top = 9
        Width = 81
        Height = 13
        Anchors = ['akTop', 'akRight']
        Caption = 'Foreground Color'
      end
      object lBColor: TLabel
        Left = 219
        Top = 56
        Width = 85
        Height = 13
        Anchors = ['akTop', 'akRight']
        Caption = 'Background Color'
      end
      object lElement: TLabel
        Left = 6
        Top = 9
        Width = 41
        Height = 13
        Caption = 'Element:'
      end
      object ElementL: TListBox
        Left = 5
        Top = 26
        Width = 209
        Height = 138
        Anchors = ['akLeft', 'akTop', 'akRight']
        ItemHeight = 13
        Items.Strings = ['Default', 'Comment', 'String', 'SQL Keyword', 'Number', 'Link', 'Wrong Symbols', 'Identifier', 'Symbol', 'Selected Text', 'Current Line', 'Double-quoted String', 'Conditional Directive', 'Variable', 'IBEBlock function', 'Pairing brackets']
        TabOrder = 0
        OnClick = ElementLClick
      end
      object gbTextAttributes: TGroupBox
        Left = 354
        Top = 21
        Width = 160
        Height = 81
        Anchors = ['akTop', 'akRight']
        Caption = ' Text attributes '
        TabOrder = 1
        object BoldC: TdxCheckEdit
          Left = 9
          Top = 13
          Width = 136
          TabOrder = 0
          OnClick = BoldCChange
          Caption = '&Bold'
          StyleController = IBEMainForm.MainCheckSC
        end
        object ItalicC: TdxCheckEdit
          Left = 9
          Top = 34
          Width = 136
          TabOrder = 1
          OnClick = ItalicCChange
          Caption = '&Italic'
          StyleController = IBEMainForm.MainCheckSC
        end
        object UnderlineC: TdxCheckEdit
          Left = 9
          Top = 55
          Width = 136
          TabOrder = 2
          OnClick = UnderlineCChange
          Caption = '&Underline'
          StyleController = IBEMainForm.MainCheckSC
        end
      end
      object gbUseDefs: TGroupBox
        Left = 354
        Top = 106
        Width = 160
        Height = 57
        Anchors = ['akTop', 'akRight']
        Caption = ' Use defaults for '
        TabOrder = 2
        object ForC: TdxCheckEdit
          Left = 9
          Top = 13
          Width = 136
          TabOrder = 0
          OnClick = ForCChange
          Caption = 'Foreground'
          StyleController = IBEMainForm.MainCheckSC
        end
        object BackC: TdxCheckEdit
          Left = 9
          Top = 34
          Width = 136
          TabOrder = 1
          OnClick = BackCChange
          Caption = 'Background'
          StyleController = IBEMainForm.MainCheckSC
        end
      end
      object SampleM: TSQLMemo
        Left = 5
        Top = 168
        Width = 509
        Height = 286
        Cursor = crIBeam
        Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        HighlightCurrentLine = False
        CurrentLineColor = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        HighLighter = TempPars
        Keystrokes = <
          item
            ShortCut = 38
            ShortCut2 = 0
            Command = ecUp
          end
          item
            ShortCut = 8230
            ShortCut2 = 0
            Command = ecSelUp
          end
          item
            ShortCut = 16422
            ShortCut2 = 0
            Command = ecScrollUp
          end
          item
            ShortCut = 40
            ShortCut2 = 0
            Command = ecDown
          end
          item
            ShortCut = 8232
            ShortCut2 = 0
            Command = ecSelDown
          end
          item
            ShortCut = 16424
            ShortCut2 = 0
            Command = ecScrollDown
          end
          item
            ShortCut = 37
            ShortCut2 = 0
            Command = ecLeft
          end
          item
            ShortCut = 8229
            ShortCut2 = 0
            Command = ecSelLeft
          end
          item
            ShortCut = 16421
            ShortCut2 = 0
            Command = ecWordLeft
          end
          item
            ShortCut = 24613
            ShortCut2 = 0
            Command = ecSelWordLeft
          end
          item
            ShortCut = 39
            ShortCut2 = 0
            Command = ecRight
          end
          item
            ShortCut = 8231
            ShortCut2 = 0
            Command = ecSelRight
          end
          item
            ShortCut = 16423
            ShortCut2 = 0
            Command = ecWordRight
          end
          item
            ShortCut = 24615
            ShortCut2 = 0
            Command = ecSelWordRight
          end
          item
            ShortCut = 34
            ShortCut2 = 0
            Command = ecPageDown
          end
          item
            ShortCut = 8226
            ShortCut2 = 0
            Command = ecSelPageDown
          end
          item
            ShortCut = 16418
            ShortCut2 = 0
            Command = ecPageBottom
          end
          item
            ShortCut = 24610
            ShortCut2 = 0
            Command = ecSelPageBottom
          end
          item
            ShortCut = 33
            ShortCut2 = 0
            Command = ecPageUp
          end
          item
            ShortCut = 8225
            ShortCut2 = 0
            Command = ecSelPageUp
          end
          item
            ShortCut = 16417
            ShortCut2 = 0
            Command = ecPageTop
          end
          item
            ShortCut = 24609
            ShortCut2 = 0
            Command = ecSelPageTop
          end
          item
            ShortCut = 36
            ShortCut2 = 0
            Command = ecLineStart
          end
          item
            ShortCut = 8228
            ShortCut2 = 0
            Command = ecSelLineStart
          end
          item
            ShortCut = 16420
            ShortCut2 = 0
            Command = ecEditorTop
          end
          item
            ShortCut = 24612
            ShortCut2 = 0
            Command = ecSelEditorTop
          end
          item
            ShortCut = 35
            ShortCut2 = 0
            Command = ecLineEnd
          end
          item
            ShortCut = 8227
            ShortCut2 = 0
            Command = ecSelLineEnd
          end
          item
            ShortCut = 16419
            ShortCut2 = 0
            Command = ecEditorBottom
          end
          item
            ShortCut = 24611
            ShortCut2 = 0
            Command = ecSelEditorBottom
          end
          item
            ShortCut = 45
            ShortCut2 = 0
            Command = ecToggleMode
          end
          item
            ShortCut = 16429
            ShortCut2 = 0
            Command = ecCopy
          end
          item
            ShortCut = 8237
            ShortCut2 = 0
            Command = ecPaste
          end
          item
            ShortCut = 46
            ShortCut2 = 0
            Command = ecDeleteChar
          end
          item
            ShortCut = 8238
            ShortCut2 = 0
            Command = ecCut
          end
          item
            ShortCut = 8
            ShortCut2 = 0
            Command = ecDeleteLastChar
          end
          item
            ShortCut = 16392
            ShortCut2 = 0
            Command = ecDeleteLastWord
          end
          item
            ShortCut = 32776
            ShortCut2 = 0
            Command = ecUndo
          end
          item
            ShortCut = 40968
            ShortCut2 = 0
            Command = ecRedo
          end
          item
            ShortCut = 13
            ShortCut2 = 0
            Command = ecLineBreak
          end
          item
            ShortCut = 16449
            ShortCut2 = 0
            Command = ecSelectAll
          end
          item
            ShortCut = 16451
            ShortCut2 = 0
            Command = ecCopy
          end
          item
            ShortCut = 24649
            ShortCut2 = 0
            Command = ecBlockIndent
          end
          item
            ShortCut = 16461
            ShortCut2 = 0
            Command = ecLineBreak
          end
          item
            ShortCut = 16462
            ShortCut2 = 0
            Command = ecInsertLine
          end
          item
            ShortCut = 16468
            ShortCut2 = 0
            Command = ecDeleteWord
          end
          item
            ShortCut = 24661
            ShortCut2 = 0
            Command = ecBlockUnindent
          end
          item
            ShortCut = 16470
            ShortCut2 = 0
            Command = ecPaste
          end
          item
            ShortCut = 16472
            ShortCut2 = 0
            Command = ecCut
          end
          item
            ShortCut = 16473
            ShortCut2 = 0
            Command = ecDeleteLine
          end
          item
            ShortCut = 24665
            ShortCut2 = 0
            Command = ecDeleteEOL
          end
          item
            ShortCut = 16474
            ShortCut2 = 0
            Command = ecUndo
          end
          item
            ShortCut = 24666
            ShortCut2 = 0
            Command = ecRedo
          end
          item
            ShortCut = 16432
            ShortCut2 = 0
            Command = ecGotoMarker0
          end
          item
            ShortCut = 16433
            ShortCut2 = 0
            Command = ecGotoMarker1
          end
          item
            ShortCut = 16434
            ShortCut2 = 0
            Command = ecGotoMarker2
          end
          item
            ShortCut = 16435
            ShortCut2 = 0
            Command = ecGotoMarker3
          end
          item
            ShortCut = 16436
            ShortCut2 = 0
            Command = ecGotoMarker4
          end
          item
            ShortCut = 16437
            ShortCut2 = 0
            Command = ecGotoMarker5
          end
          item
            ShortCut = 16438
            ShortCut2 = 0
            Command = ecGotoMarker6
          end
          item
            ShortCut = 16439
            ShortCut2 = 0
            Command = ecGotoMarker7
          end
          item
            ShortCut = 16440
            ShortCut2 = 0
            Command = ecGotoMarker8
          end
          item
            ShortCut = 16441
            ShortCut2 = 0
            Command = ecGotoMarker9
          end
          item
            ShortCut = 24624
            ShortCut2 = 0
            Command = ecSetMarker0
          end
          item
            ShortCut = 24625
            ShortCut2 = 0
            Command = ecSetMarker1
          end
          item
            ShortCut = 24626
            ShortCut2 = 0
            Command = ecSetMarker2
          end
          item
            ShortCut = 24627
            ShortCut2 = 0
            Command = ecSetMarker3
          end
          item
            ShortCut = 24628
            ShortCut2 = 0
            Command = ecSetMarker4
          end
          item
            ShortCut = 24629
            ShortCut2 = 0
            Command = ecSetMarker5
          end
          item
            ShortCut = 24630
            ShortCut2 = 0
            Command = ecSetMarker6
          end
          item
            ShortCut = 24631
            ShortCut2 = 0
            Command = ecSetMarker7
          end
          item
            ShortCut = 24632
            ShortCut2 = 0
            Command = ecSetMarker8
          end
          item
            ShortCut = 24633
            ShortCut2 = 0
            Command = ecSetMarker9
          end
        >
        Lines.Strings = ['{$IfNotExists PROCEDURE SET_STOCK_LEVELS}', 'create procedure set_stock_levels(', ' stock_nb varchar(15),', ' level numeric(15, 2))', 'as', '  declare variable "Temp" varchar(15);', '  declare variable ID integer;', 'begin', '  /* comment */', '  if (:ID is NULL) then', '    exception wrong_id;', ' ', '  "Temp" = ''STOCK0123456789'';', '  ', '  suspend;', 'end;', '{$EndIf}', 'îøèáî÷íûå ñèìâîëû']
        MaxUndo = 10
        ReadOnly = True
        ScrollBars = ssVertical
        WantTabs = False
        OnStatusChange = SampleMStatusChange
        ErrorLine = -1
      end
      object cbForeColor: TdxButtonEdit
        Left = 218
        Top = 26
        Width = 131
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Anchors = ['akTop', 'akRight']
        ReadOnly = False
        StyleController = IBEMainForm.MainSC
        Buttons = <
          item
            Default = True
          end
        >
        ViewStyle = vsHideCursor
        OnButtonClick = cbForeColorButtonClick
        StoredValues = 64
        ExistButtons = True
      end
      object cbBackColor: TdxButtonEdit
        Left = 218
        Top = 74
        Width = 131
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Anchors = ['akTop', 'akRight']
        ReadOnly = False
        StyleController = IBEMainForm.MainSC
        Buttons = <
          item
            Default = True
          end
        >
        ViewStyle = vsHideCursor
        OnButtonClick = cbBackColorButtonClick
        StoredValues = 64
        ExistButtons = True
      end
      object cbBlackWhitePrinting: TdxCheckEdit
        Left = 9
        Top = 460
        Width = 472
        TabOrder = 6
        OnClick = UnderlineCChange
        Anchors = ['akLeft', 'akBottom']
        Caption = 'Use Black and White when printing'
        StyleController = IBEMainForm.MainCheckSC
        State = cbsChecked
      end
    end
    object tsCodeInsight: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 517
      Height = 485
      Caption = 'Code Insight'
      ImageIndex = 3
      PageAppearance.BorderColor = clNone
      PageAppearance.Color = clBtnFace
      PageAppearance.ColorTo = clBtnFace
      PageAppearance.ColorMirror = clBtnFace
      PageAppearance.ColorMirrorTo = clBtnFace
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      UsePageAppearance = True
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
      object lCustomCodeInsightItems: TLabel
        Left = 6
        Top = 332
        Width = 125
        Height = 13
        Caption = 'Custom Code Insight Items'
      end
      object gbAutomaticFeatures: TGroupBox
        Left = 5
        Top = 8
        Width = 508
        Height = 319
        Anchors = ['akLeft', 'akTop', 'akRight']
        Caption = ' Automatic Features '
        TabOrder = 0
        object lDelay: TLabel
          Left = 282
          Top = 23
          Width = 156
          Height = 13
          Alignment = taRightJustify
          Anchors = ['akTop', 'akRight']
          AutoSize = False
          Caption = '&Delay (sec):'
          FocusControl = seCodeDelay
        end
        object lCodeCase: TLabel
          Left = 9
          Top = 100
          Width = 209
          Height = 13
          AutoSize = False
          Caption = 'Code Case:'
          FocusControl = CodeCaseC
        end
        object lSQLCase: TLabel
          Left = 227
          Top = 100
          Width = 239
          Height = 13
          Anchors = ['akLeft', 'akTop', 'akRight']
          AutoSize = False
          Caption = 'SQL Keywords Case'
          FocusControl = cbSQLCase
        end
        object lCPMaxDescLinesToShow: TLabel
          Left = 30
          Top = 261
          Width = 212
          Height = 13
          Anchors = ['akTop', 'akRight']
          Caption = 'Maximum number of description lines to show'
          FocusControl = seCPMaxDescLinesToShow
        end
        object Bevel1: TBevel
          Left = 8
          Top = 92
          Width = 491
          Height = 3
          Anchors = ['akLeft', 'akTop', 'akRight']
          Shape = bsTopLine
        end
        object Bevel2: TBevel
          Left = 8
          Top = 171
          Width = 491
          Height = 3
          Anchors = ['akLeft', 'akTop', 'akRight']
          Shape = bsTopLine
        end
        object Bevel4: TBevel
          Left = 8
          Top = 285
          Width = 491
          Height = 3
          Anchors = ['akLeft', 'akTop', 'akRight']
          Shape = bsTopLine
        end
        object CodeComplC: TdxCheckEdit
          Left = 8
          Top = 19
          Width = 233
          TabOrder = 0
          OnClick = CodeComplCChange
          Caption = 'Code &Completion'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object CodeCaseC: TdxPickEdit
          Left = 10
          Top = 117
          Width = 208
          TabOrder = 4
          StyleController = IBEMainForm.MainSC
          DropDownListStyle = True
          Items.Strings = ['Lower', 'Upper', 'First Upper', 'NameCase']
        end
        object CodeParamsC: TdxCheckEdit
          Left = 8
          Top = 178
          Width = 490
          TabOrder = 7
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Code Parameters'
          StyleController = IBEMainForm.MainCheckSC
          OnChange = CodeParamsCChange
          State = cbsChecked
        end
        object seCodeDelay: TdxSpinEdit
          Left = 442
          Top = 20
          Width = 53
          TabOrder = 3
          Anchors = ['akTop', 'akRight']
          StyleController = IBEMainForm.MainSC
          Increment = -9.255963134931784e+61
          MaxValue = -2.0
          MinValue = -9.255963134931784e+61
          Value = 1
          ValueType = vtFloat
          StoredValues = 56
        end
        object cbSQLCase: TdxPickEdit
          Left = 226
          Top = 117
          Width = 208
          TabOrder = 5
          StyleController = IBEMainForm.MainSC
          DropDownListStyle = True
          Items.Strings = ['Lower', 'Upper', 'First Upper', 'NameCase']
        end
        object cbAlwaysInsertVarsAsIs: TdxCheckEdit
          Left = 8
          Top = 143
          Width = 465
          TabOrder = 6
          OnClick = CodeComplCChange
          Alignment = taLeftJustify
          Caption = 'Don''t format local variables of SP/triggers'
          StyleController = IBEMainForm.MainCheckSC
          StoredValues = 1
        end
        object cbDisableCCInDescriptions: TdxCheckEdit
          Left = 25
          Top = 43
          Width = 448
          TabOrder = 1
          OnClick = CodeComplCChange
          Caption = 'Disable Code Completion in descriptions'
          StyleController = IBEMainForm.MainCheckSC
        end
        object cbEnableSpaceAsSelect: TdxCheckEdit
          Left = 25
          Top = 66
          Width = 448
          TabOrder = 2
          OnClick = CodeComplCChange
          Caption = 'Enable SPACE as select button'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbCPShowParamDesc: TdxCheckEdit
          Left = 25
          Top = 200
          Width = 481
          TabOrder = 8
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Show current parameter/field description'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
        object cbCPShowParentDesc: TdxCheckEdit
          Left = 25
          Top = 224
          Width = 481
          TabOrder = 9
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Show parent object description if there is no description for current parameter/field'
          StyleController = IBEMainForm.MainCheckSC
          MultiLine = True
          State = cbsChecked
        end
        object seCPMaxDescLinesToShow: TdxSpinEdit
          Left = 188
          Top = 258
          Width = 53
          TabOrder = 10
          Anchors = ['akTop', 'akRight']
          StyleController = IBEMainForm.MainSC
          MaxValue = 500
          MinValue = 1
          Value = 1
          ValueType = vtInt
          StoredValues = 56
        end
        object KeyTemplateC: TdxCheckEdit
          Left = 7
          Top = 290
          Width = 501
          TabOrder = 11
          Anchors = ['akLeft', 'akTop', 'akRight']
          Caption = 'Use &Keyboard Templates'
          StyleController = IBEMainForm.MainCheckSC
          State = cbsChecked
        end
      end
      object mCustomCIItems: TdxMemo
        Tag = 1000
        Left = 5
        Top = 351
        Width = 508
        TabOrder = 1
        Anchors = ['akLeft', 'akTop', 'akRight', 'akBottom']
        StyleController = IBEMainForm.MainSC
        ScrollBars = ssBoth
        Height = 129
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 510
    Width = 517
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 517
      Height = 9
      Align = alTop
      Shape = bsTopLine
    end
    object OkB: TButton
      Left = 279
      Top = 7
      Width = 75
      Height = 24
      Anchors = ['akTop', 'akRight']
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object CancelB: TButton
      Left = 359
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
      Left = 439
      Top = 7
      Width = 75
      Height = 24
      Anchors = ['akTop', 'akRight']
      Caption = 'Help'
      TabOrder = 2
    end
  end
  object TempPars: TIBwmSQLSyn
    DefaultFilter = 'SQL files (*.sql)|*.SQL'
    Separators = ' ,.:;'
    CommentAttri.Background = clWindow
    CommentAttri.Foreground = clWindowText
    CommentAttri.Style = ['fsItalic']
    IdentifierAttri.Background = clWindow
    IdentifierAttri.Foreground = clWindowText
    IdentifierAttri.Style = []
    LinkAttri.Background = clRed
    LinkAttri.Foreground = clYellow
    LinkAttri.Style = []
    KeyAttri.Background = clWindow
    KeyAttri.Foreground = clWindowText
    KeyAttri.Style = ['fsBold']
    NumberAttri.Background = clWindow
    NumberAttri.Foreground = clWindowText
    NumberAttri.Style = []
    StringAttri.Background = clWindow
    StringAttri.Foreground = clWindowText
    StringAttri.Style = []
    DQStringAttri.Background = clWindow
    DQStringAttri.Foreground = clWindowText
    DQStringAttri.Style = []
    SymbolAttri.Background = clWindow
    SymbolAttri.Foreground = clWindowText
    SymbolAttri.Style = []
    WrongAttri.Background = clWindow
    WrongAttri.Foreground = clWindowText
    WrongAttri.Style = []
    ConditionalAttri.Background = clWindow
    ConditionalAttri.Foreground = clWindowText
    ConditionalAttri.Style = []
    VariableAttri.Background = clWindow
    VariableAttri.Foreground = clWindowText
    VariableAttri.Style = []
    UserIdent1Attri.Background = clWindow
    UserIdent1Attri.Foreground = clWindowText
    UserIdent1Attri.Style = []
    Left = 440
    Top = 304
  end
  object ColorD: TColorDialog
    Ctl3D = True
    Left = 238
    Top = 249
  end
  object ActionList1: TActionList
    Left = 406
    Top = 305
    object actExit: TAction
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
  end
end
