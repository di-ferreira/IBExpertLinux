object dxfmPageSetupDialog: TdxfmPageSetupDialog
  Left = 268
  Top = 105
  BorderStyle = bsDialog
  Caption = 'Page Setup'
  ClientHeight = 435
  ClientWidth = 526
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnActivate = AutoTextClick
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlStyleName: TPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblStyleName: TLabel
      Left = 4
      Top = 9
      Width = 61
      Height = 13
      Caption = 'Style &Name: '
      FocusControl = edStyleName
    end
    object edStyleName: TEdit
      Left = 66
      Top = 6
      Width = 259
      Height = 21
      MaxLength = 31
      TabOrder = 0
      OnChange = edStyleNameChange
      OnExit = edStyleNameExit
    end
    object btnOptions: TButton
      Left = 331
      Top = 5
      Width = 88
      Height = 24
      Caption = '&Options ...'
      TabOrder = 1
      OnClick = btnOptionsClick
    end
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 399
    Width = 526
    Height = 36
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnPrintPreview: TButton
      Left = 105
      Top = 7
      Width = 94
      Height = 23
      Caption = 'Print Preview...'
      TabOrder = 1
      OnClick = btnPrintPreviewClick
    end
    object btnPrint: TButton
      Left = 5
      Top = 7
      Width = 94
      Height = 23
      Caption = 'Print...'
      TabOrder = 0
      OnClick = btnPrintClick
    end
    object btnOK: TButton
      Left = 273
      Top = 7
      Width = 79
      Height = 23
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 2
    end
    object btnCancel: TButton
      Left = 358
      Top = 7
      Width = 79
      Height = 23
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 3
    end
    object btnHelp: TButton
      Left = 443
      Top = 7
      Width = 79
      Height = 23
      Caption = '&Help'
      TabOrder = 4
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 31
    Width = 526
    Height = 368
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object pgctrlMain: TPageControl
      Left = 5
      Top = 3
      Width = 517
      Height = 365
      ActivePage = tshPage
      MultiLine = True
      TabOrder = 0
      OnChange = pgctrlMainChange
      OnChanging = pgctrlMainChanging
      object tshPage: TTabSheet
        Caption = '&Page'
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 509
          Height = 337
          Align = alClient
          BevelOuter = bvLowered
          Caption = 'Panel5'
          TabOrder = 0
          object gbxPaper: TGroupBox
            Left = 6
            Top = 5
            Width = 231
            Height = 326
            Caption = ' Paper '
            TabOrder = 0
            object lblPaperType: TLabel
              Left = 4
              Top = 15
              Width = 24
              Height = 13
              Caption = 'T&ype'
              FocusControl = lbxPaperType
            end
            object lblPaperDimension: TLabel
              Left = 4
              Top = 186
              Width = 52
              Height = 13
              Caption = 'Dimentions'
            end
            object lblPaperSource: TLabel
              Left = 4
              Top = 272
              Width = 63
              Height = 13
              Caption = 'Paper so&urce'
              FocusControl = cbxPaperSource
              OnClick = lblPaperSourceClick
            end
            object lblPaperWidth: TLabel
              Left = 18
              Top = 208
              Width = 32
              Height = 13
              Caption = '&Width:'
              OnClick = lblMarginTopClick
            end
            object lblPaperHeight: TLabel
              Left = 18
              Top = 234
              Width = 35
              Height = 13
              Caption = 'H&eight:'
              OnClick = lblMarginTopClick
            end
            object Bevel4: TBevel
              Left = 64
              Top = 193
              Width = 157
              Height = 2
              Shape = bsBottomLine
            end
            object Bevel5: TBevel
              Left = 74
              Top = 278
              Width = 147
              Height = 3
              Shape = bsBottomLine
            end
            object Bevel6: TBevel
              Left = 36
              Top = 22
              Width = 185
              Height = 2
              Shape = bsBottomLine
            end
            object bvlPaperWidthHolder: TBevel
              Left = 81
              Top = 204
              Width = 100
              Height = 22
              Visible = False
            end
            object bvlPaperHeightHolder: TBevel
              Left = 81
              Top = 230
              Width = 100
              Height = 22
              Visible = False
            end
            object lbxPaperType: TListBox
              Left = 12
              Top = 31
              Width = 208
              Height = 148
              IntegralHeight = True
              ItemHeight = 18
              Style = lbOwnerDrawFixed
              TabOrder = 0
              OnClick = lbxPaperTypeClick
              OnDrawItem = lbxPaperTypeDrawItem
            end
            object cbxPaperSource: TComboBox
              Left = 12
              Top = 289
              Width = 208
              Height = 24
              Style = csOwnerDrawFixed
              ItemHeight = 18
              TabOrder = 1
              OnChange = cbxPaperSourceChange
              OnDrawItem = cbxPaperSourceDrawItem
            end
          end
          object Panel1: TPanel
            Left = 238
            Top = 1
            Width = 270
            Height = 335
            Align = alRight
            BevelOuter = bvNone
            BorderWidth = 4
            Caption = 'Panel1'
            TabOrder = 1
            object gbxOrientation: TGroupBox
              Left = 4
              Top = 4
              Width = 262
              Height = 187
              Align = alTop
              Caption = ' Orientation '
              TabOrder = 0
              object bvlOrientationHolder: TBevel
                Left = 8
                Top = 20
                Width = 145
                Height = 159
                Visible = False
              end
              object rBtnLandscape: TRadioButton
                Tag = 1
                Left = 178
                Top = 109
                Width = 73
                Height = 17
                Caption = '&Landscape'
                TabOrder = 1
                OnClick = OrientationClick
                OnDblClick = OrientationDblClick
              end
              object rBtnPortrait: TRadioButton
                Left = 178
                Top = 62
                Width = 57
                Height = 17
                Caption = 'P&ortrait'
                Checked = True
                TabOrder = 0
                TabStop = True
                OnClick = OrientationClick
                OnDblClick = OrientationDblClick
              end
            end
            object gbxPrintOrder: TGroupBox
              Left = 4
              Top = 191
              Width = 262
              Height = 80
              Align = alTop
              Caption = ' Print Order '
              TabOrder = 1
              object pbxPageOrder: TPaintBox
                Left = 10
                Top = 20
                Width = 74
                Height = 49
                OnDblClick = pbxPageOrderDblClick
                OnPaint = pbxPageOrderPaint
              end
              object rbtnOverThenDown: TRadioButton
                Left = 145
                Top = 47
                Width = 105
                Height = 17
                Caption = 'O&ver, then down'
                TabOrder = 0
                OnClick = PageOrderClick
              end
              object rbtnDownThenOver: TRadioButton
                Tag = 1
                Left = 145
                Top = 24
                Width = 105
                Height = 17
                Caption = '&Down, then over'
                Checked = True
                TabOrder = 1
                TabStop = True
                OnClick = PageOrderClick
              end
            end
            object gbxShading: TGroupBox
              Left = 4
              Top = 271
              Width = 262
              Height = 59
              Align = alTop
              Caption = ' Shading '
              TabOrder = 2
              object chbxShading: TCheckBox
                Left = 11
                Top = 25
                Width = 181
                Height = 17
                Caption = 'Print using &gray shading'
                TabOrder = 0
                OnClick = chbxShadingClick
              end
            end
          end
        end
      end
      object tshMargins: TTabSheet
        Caption = '&Margins'
        object pnlInMargins: TPanel
          Left = 0
          Top = 0
          Width = 509
          Height = 337
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object lblPreview: TLabel
            Left = 252
            Top = 3
            Width = 38
            Height = 13
            Caption = 'Preview'
          end
          object Bevel12: TBevel
            Left = 294
            Top = 7
            Width = 204
            Height = 5
            Shape = bsBottomLine
          end
          object bvlPreviewHolder: TBevel
            Left = 252
            Top = 18
            Width = 246
            Height = 310
            Visible = False
          end
          object Panel14: TPanel
            Left = 1
            Top = 1
            Width = 225
            Height = 335
            Align = alLeft
            BevelOuter = bvNone
            BorderWidth = 5
            TabOrder = 0
            object bvlMarginsWarningHolder: TBevel
              Left = 6
              Top = 296
              Width = 215
              Height = 31
              Visible = False
            end
            object gbxMargins: TGroupBox
              Left = 5
              Top = 5
              Width = 215
              Height = 223
              Align = alTop
              TabOrder = 0
              object pnlMargins: TPanel
                Left = 2
                Top = 15
                Width = 211
                Height = 106
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object lblMarginTop: TLabel
                  Left = 13
                  Top = 8
                  Width = 22
                  Height = 13
                  Caption = '&Top:'
                  OnClick = lblMarginTopClick
                end
                object lblMarginBottom: TLabel
                  Left = 13
                  Top = 34
                  Width = 41
                  Height = 13
                  Caption = '&Bottom: '
                  OnClick = lblMarginTopClick
                end
                object lblMarginLeft: TLabel
                  Left = 13
                  Top = 60
                  Width = 26
                  Height = 13
                  Caption = 'Le&ft: '
                  OnClick = lblMarginTopClick
                end
                object lblMarginRight: TLabel
                  Left = 13
                  Top = 86
                  Width = 32
                  Height = 13
                  Caption = 'Ri&ght: '
                  OnClick = lblMarginTopClick
                end
                object bvlMarginTopHolder: TBevel
                  Left = 87
                  Top = 3
                  Width = 117
                  Height = 22
                  Visible = False
                end
                object bvlMarginBottomHolder: TBevel
                  Left = 87
                  Top = 29
                  Width = 117
                  Height = 22
                  Visible = False
                end
                object bvlMarginLeftHolder: TBevel
                  Left = 87
                  Top = 55
                  Width = 117
                  Height = 22
                  Visible = False
                end
                object bvlMarginRightHolder: TBevel
                  Left = 87
                  Top = 81
                  Width = 117
                  Height = 22
                  Visible = False
                end
              end
              object pnlHFMargins: TPanel
                Left = 2
                Top = 121
                Width = 211
                Height = 58
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                object lblMarginHeader: TLabel
                  Left = 13
                  Top = 11
                  Width = 42
                  Height = 13
                  Caption = 'H&eader: '
                  OnClick = lblMarginTopClick
                end
                object lblMarginFooter: TLabel
                  Left = 13
                  Top = 38
                  Width = 36
                  Height = 13
                  Caption = 'Foote&r:'
                  OnClick = lblMarginTopClick
                end
                object bvlMarginHeaderHolder: TBevel
                  Left = 87
                  Top = 6
                  Width = 117
                  Height = 22
                  Visible = False
                end
                object bvlMarginFooterHolder: TBevel
                  Left = 87
                  Top = 33
                  Width = 117
                  Height = 22
                  Visible = False
                end
              end
              object Panel3: TPanel
                Left = 2
                Top = 179
                Width = 211
                Height = 39
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 2
                object btnFix: TButton
                  Left = 6
                  Top = 13
                  Width = 95
                  Height = 23
                  Caption = 'Fi&x'
                  TabOrder = 0
                  OnClick = btnFixClick
                end
                object btnRestoreOriginalMargins: TButton
                  Left = 109
                  Top = 13
                  Width = 95
                  Height = 23
                  Caption = 'Restore &Original'
                  TabOrder = 1
                  OnClick = btnRestoreOriginalMarginsClick
                end
              end
            end
            object pnlCenterOnPage: TPanel
              Left = 5
              Top = 228
              Width = 215
              Height = 54
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object lblCenterOnPage: TLabel
                Left = 1
                Top = 13
                Width = 78
                Height = 13
                Caption = 'Center on page '
              end
              object Bevel1: TBevel
                Left = 83
                Top = 16
                Width = 132
                Height = 5
                Shape = bsBottomLine
              end
              object chbxCenterHorz: TCheckBox
                Left = 13
                Top = 33
                Width = 77
                Height = 17
                Caption = 'Hori&zontaly'
                Color = clBtnFace
                ParentColor = False
                TabOrder = 0
                OnClick = CenterOnPageClick
              end
              object chbxCenterVert: TCheckBox
                Tag = 1
                Left = 133
                Top = 33
                Width = 65
                Height = 17
                Caption = '&Verticaly'
                TabOrder = 1
                OnClick = CenterOnPageClick
              end
            end
          end
        end
      end
      object tshHeaderFooter: TTabSheet
        Caption = '&Header\Footer'
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 509
          Height = 337
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object pnlBottom: TPanel
            Left = 1
            Top = 237
            Width = 507
            Height = 67
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object pnlHFOpt: TPanel
              Left = 0
              Top = 0
              Width = 507
              Height = 67
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 4
              TabOrder = 0
              object gbxFunctions: TGroupBox
                Left = 129
                Top = 4
                Width = 374
                Height = 59
                Align = alClient
                TabOrder = 0
                object pnlToolBar: TPanel
                  Left = 2
                  Top = 15
                  Width = 370
                  Height = 42
                  Align = alClient
                  BevelOuter = bvNone
                  Caption = 'Panel1'
                  TabOrder = 0
                  object tbPredefined: TToolBar
                    Left = 88
                    Top = 8
                    Width = 204
                    Height = 30
                    Align = alNone
                    ButtonHeight = 24
                    ButtonWidth = 25
                    EdgeBorders = ['ebLeft', 'ebTop', 'ebRight', 'ebBottom']
                    EdgeInner = esLowered
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    Wrapable = False
                  end
                end
              end
              object pnlVertAlignment: TPanel
                Left = 4
                Top = 4
                Width = 125
                Height = 59
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                object gbxVertAlignment: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 122
                  Height = 59
                  Caption = ' Vertical Alignment '
                  TabOrder = 0
                  object tbTAVert: TToolBar
                    Left = 21
                    Top = 24
                    Width = 79
                    Height = 30
                    Align = alNone
                    ButtonHeight = 24
                    ButtonWidth = 25
                    EdgeBorders = ['ebLeft', 'ebTop', 'ebRight', 'ebBottom']
                    EdgeInner = esLowered
                    Images = ilPaperTypes
                    TabOrder = 0
                    Wrapable = False
                    object ToolButton12: TToolButton
                      Left = 0
                      Top = 2
                      Width = 23
                      Height = 22
                      Caption = 'ToolButton9'
                      Down = True
                      Grouped = True
                      ImageIndex = 4
                      Style = tbsCheck
                      OnClick = VertTextAlignClick
                    end
                    object ToolButton13: TToolButton
                      Tag = 1
                      Left = 25
                      Top = 2
                      Width = 23
                      Height = 22
                      Caption = 'ToolButton10'
                      Grouped = True
                      ImageIndex = 5
                      Style = tbsCheck
                      OnClick = VertTextAlignClick
                    end
                    object ToolButton14: TToolButton
                      Tag = 2
                      Left = 50
                      Top = 2
                      Width = 23
                      Height = 22
                      Caption = 'ToolButton11'
                      Grouped = True
                      ImageIndex = 6
                      Style = tbsCheck
                      OnClick = VertTextAlignClick
                    end
                  end
                end
              end
            end
          end
          object pnlHeader: TPanel
            Left = 1
            Top = 1
            Width = 507
            Height = 118
            Align = alTop
            BevelOuter = bvNone
            Caption = 'pnlHeader'
            TabOrder = 1
            object pnlHeaderMemos: TPanel
              Left = 0
              Top = 46
              Width = 507
              Height = 72
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 4
              TabOrder = 2
              object memHeaderLeft: TMemo
                Left = 4
                Top = 4
                Width = 169
                Height = 64
                Align = alClient
                ScrollBars = ssVertical
                TabOrder = 0
                OnChange = MemoChange
                OnEnter = MemoEnter
                OnExit = MemoExit
              end
              object memHeaderCenter: TMemo
                Tag = 1
                Left = 173
                Top = 4
                Width = 165
                Height = 64
                Align = alRight
                Alignment = taCenter
                ScrollBars = ssVertical
                TabOrder = 1
                OnChange = MemoChange
                OnEnter = MemoEnter
                OnExit = MemoExit
              end
              object memHeaderRight: TMemo
                Tag = 2
                Left = 338
                Top = 4
                Width = 165
                Height = 64
                Align = alRight
                Alignment = taRightJustify
                ScrollBars = ssVertical
                TabOrder = 2
                OnChange = MemoChange
                OnEnter = MemoEnter
                OnExit = MemoExit
              end
            end
            object pnlHeaderFont: TPanel
              Left = 0
              Top = 16
              Width = 507
              Height = 30
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object btnHeaderFont: TButton
                Left = 4
                Top = 3
                Width = 72
                Height = 26
                Caption = '&Font ...'
                TabOrder = 0
                OnClick = btnHFFontClick
              end
              object edHeaderFontInfo: TEdit
                Left = 80
                Top = 6
                Width = 272
                Height = 21
                TabStop = False
                Color = clBtnFace
                ReadOnly = True
                TabOrder = 1
              end
              object btnHeaderBackground: TBitBtn
                Left = 358
                Top = 3
                Width = 144
                Height = 26
                Caption = '&Background'
                TabOrder = 2
                OnClick = BackgroundClick
                Layout = blGlyphRight
              end
            end
            object pnlHeaderTitle: TPanel
              Left = 0
              Top = 0
              Width = 507
              Height = 16
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object lblHeader: TLabel
                Left = 6
                Top = 2
                Width = 35
                Height = 13
                Caption = 'Header'
              end
              object Bevel2: TBevel
                Left = 48
                Top = 6
                Width = 446
                Height = 5
                Shape = bsBottomLine
              end
            end
          end
          object pnlFooter: TPanel
            Left = 1
            Top = 119
            Width = 507
            Height = 118
            Align = alTop
            BevelOuter = bvNone
            Caption = 'pnlFooter'
            TabOrder = 2
            object pnlFooterTitle: TPanel
              Left = 0
              Top = 0
              Width = 507
              Height = 16
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object lblFooter: TLabel
                Left = 6
                Top = 3
                Width = 32
                Height = 13
                Caption = 'Footer'
              end
              object Bevel3: TBevel
                Left = 48
                Top = 8
                Width = 446
                Height = 4
                Shape = bsBottomLine
              end
            end
            object pnlFooterFont: TPanel
              Left = 0
              Top = 16
              Width = 507
              Height = 30
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object btnFooterFont: TButton
                Tag = 1
                Left = 4
                Top = 3
                Width = 72
                Height = 26
                Caption = 'Fo&nt ...'
                TabOrder = 0
                OnClick = btnHFFontClick
              end
              object edFooterFontInfo: TEdit
                Left = 80
                Top = 6
                Width = 272
                Height = 21
                TabStop = False
                Color = clBtnFace
                ReadOnly = True
                TabOrder = 1
              end
              object btnFooterBackGround: TBitBtn
                Tag = 1
                Left = 358
                Top = 3
                Width = 144
                Height = 26
                Caption = 'Back&ground'
                TabOrder = 2
                OnClick = BackgroundClick
                Layout = blGlyphRight
              end
            end
            object pnlFooterMemos: TPanel
              Left = 0
              Top = 46
              Width = 507
              Height = 72
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 4
              TabOrder = 2
              object memFooterLeft: TMemo
                Tag = 3
                Left = 4
                Top = 4
                Width = 171
                Height = 64
                Align = alClient
                ScrollBars = ssVertical
                TabOrder = 0
                OnChange = MemoChange
                OnEnter = MemoEnter
                OnExit = MemoExit
              end
              object memFooterCenter: TMemo
                Tag = 4
                Left = 175
                Top = 4
                Width = 164
                Height = 64
                Align = alRight
                Alignment = taCenter
                ScrollBars = ssVertical
                TabOrder = 1
                OnChange = MemoChange
                OnEnter = MemoEnter
                OnExit = MemoExit
              end
              object memFooterRight: TMemo
                Tag = 5
                Left = 339
                Top = 4
                Width = 164
                Height = 64
                Align = alRight
                Alignment = taRightJustify
                ScrollBars = ssVertical
                TabOrder = 2
                OnChange = MemoChange
                OnEnter = MemoEnter
                OnExit = MemoExit
              end
            end
          end
          object pnlReverse: TPanel
            Left = 1
            Top = 304
            Width = 507
            Height = 28
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
            object chbxReverseOnEvenPages: TCheckBox
              Left = 7
              Top = 8
              Width = 137
              Height = 17
              Caption = '&Reverse on even pages'
              TabOrder = 0
              OnClick = chbxReverseOnEvenPagesClick
            end
          end
        end
      end
      object tshScaling: TTabSheet
        Caption = '&Scaling'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 509
          Height = 337
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object bvlAdjustToHolder: TBevel
            Left = 35
            Top = 32
            Width = 75
            Height = 22
            Visible = False
          end
          object bvlFitToPageHolder: TBevel
            Left = 35
            Top = 84
            Width = 75
            Height = 22
            Visible = False
          end
          object lblPagesWideBy: TLabel
            Left = 119
            Top = 91
            Width = 77
            Height = 13
            Caption = 'page(s) &wide by'
          end
          object lblPercentOfNormalSize: TLabel
            Left = 118
            Top = 39
            Width = 67
            Height = 13
            Caption = '% normal size'
          end
          object bvlFitToPageTallHolder: TBevel
            Left = 204
            Top = 84
            Width = 75
            Height = 22
            Visible = False
          end
          object lblTall: TLabel
            Left = 286
            Top = 91
            Width = 14
            Height = 13
            Caption = '&tall'
          end
          object rbtnAdjustTo: TRadioButton
            Left = 12
            Top = 9
            Width = 69
            Height = 17
            Caption = '&Adjust To:'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = ScalingClick
          end
          object rbtnFitTo: TRadioButton
            Tag = 1
            Left = 12
            Top = 62
            Width = 51
            Height = 17
            Caption = '&Fit To:'
            TabOrder = 1
            OnClick = ScalingClick
          end
        end
      end
    end
  end
  object ilPageOrder: TImageList
    BkColor = clWhite
    AllocBy = 2
    Height = 49
    Masked = False
    Width = 74
    Left = 180
    Top = 4
    Bitmap = {14578 bytes}
  end
  object fdHeaderFooter: TFontDialog
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Modern'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Options = ['fdEffects', 'fdScalableOnly']
    Left = 208
    Top = 4
  end
  object ilPaperTypes: TImageList
    AllocBy = 8
    Left = 152
    Top = 4
    Bitmap = {4488 bytes}
  end
  object pmAutoText: TPopupMenu
    Left = 124
    Top = 4
    object miAutoPage: TMenuItem
      Caption = '- Page # -'
      OnClick = AutoTextClick
    end
    object miAutoUserPageDate: TMenuItem
      Tag = 1
      Caption = 'User, Page #, Date'
      OnClick = AutoTextClick
    end
    object miAutoConfidentialPageDate: TMenuItem
      Tag = 2
      Caption = 'Confidential, Page #, Date'
      OnClick = AutoTextClick
    end
    object miAutoCreatedBy: TMenuItem
      Tag = 3
      Caption = 'Created By '
      OnClick = AutoTextClick
    end
    object miAutoCreatedOn: TMenuItem
      Tag = 4
      Caption = 'Create On'
      OnClick = AutoTextClick
    end
    object miAutoLastPrinted: TMenuItem
      Tag = 4
      Caption = 'Last Printed'
      OnClick = AutoTextClick
    end
  end
end
