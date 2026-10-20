object IBEMainForm: TIBEMainForm
  Left = 365
  Top = 194
  HelpContext = 1000
  HorzScrollBar.Increment = 71
  HorzScrollBar.Tracking = True
  VertScrollBar.Increment = 44
  VertScrollBar.Tracking = True
  AutoScroll = False
  Caption = '\'
  ClientHeight = 700
  ClientWidth = 1006
  Color = clAppWorkSpace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClick = FormClick
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnDestroy = FormDestroy
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseWheel = FormMouseWheel
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SplitterLeft: TdfsSplitter
    Left = 278
    Top = 54
    Width = 3
    Height = 593
    Cursor = crHSplit
    Align = alLeft
    Color = clBtnFace
    MinSize = 120
    ParentColor = False
    ResizeStyle = rsUpdate
    OnCanResize = SplitterLeftCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
    ButtonHighlightColor = 12713921
  end
  object TopBevel: TBevel
    Left = 0
    Top = 52
    Width = 1006
    Height = 2
    Align = alTop
    Shape = bsBottomLine
    Style = bsRaised
    Visible = False
  end
  object SplitterRight: TdfsSplitter
    Left = 993
    Top = 54
    Width = 4
    Height = 593
    Cursor = crHSplit
    Align = alRight
    Color = clBtnFace
    ParentColor = False
    ResizeStyle = rsUpdate
    Visible = False
    OnCanResize = SplitterRightCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object SplitterBottom: TdfsSplitter
    Left = 0
    Top = 669
    Width = 1006
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Color = clBtnFace
    ParentColor = False
    ResizeStyle = rsUpdate
    Visible = False
    OnCanResize = SplitterBottomCanResize
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object BGImage: TImage
    Left = 880
    Top = 504
    Width = 105
    Height = 105
    Visible = False
  end
  object rightDock: TTBDock
    Left = 997
    Top = 54
    Width = 9
    Height = 593
    LimitToOneRow = True
    Position = dpRight
    OnInsertRemoveBar = rightDockInsertRemoveBar
  end
  object leftDock: TTBDock
    Left = 0
    Top = 54
    Width = 278
    Height = 593
    LimitToOneRow = True
    Position = dpLeft
    OnInsertRemoveBar = leftDockInsertRemoveBar
    object tbInspector: TTBToolWindow
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'DB Explorer'
      CloseButtonWhenDocked = True
      ClientAreaHeight = 575
      ClientAreaWidth = 274
      DockableTo = ['dpLeft', 'dpRight']
      DockPos = 0
      DragHandleStyle = dhDouble
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FullSize = True
      MinClientWidth = 100
      ParentFont = False
      TabOrder = 0
      OnDockChanged = tbInspectorDockChanged
      OnVisibleChanged = tbInspectorVisibleChanged
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 274
        Height = 575
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 0
        object ProcessP: TPanel
          Left = 0
          Top = 0
          Width = 274
          Height = 575
          Align = alClient
          BevelOuter = bvNone
          Color = clWindow
          TabOrder = 0
        end
        object InspectorFm: TInspectorFrame
          Width = 274
          Height = 575
          Align = alClient
          TabOrder = 1
          object Panel1: TPanel
            Width = 274
            Height = 575
            object SplitterSQLA: TdfsSplitter
              Top = 340
              Width = 274
            end
            object ProcessP: TPanel
              Width = 274
              Height = 340
            end
            object InspPages: TIBEPageControl
              Width = 274
              Height = 340
              AdvOfficePagerStyler = PCStyler
              AntiAlias = aaClearType
              NextPictureChanged = True
              PrevPictureChanged = True
              object tsDatabases: TAdvOfficePage
                Width = 274
                Height = 315
                PageAppearance.BorderColor = clNone
                PageAppearance.Color = clBtnFace
                PageAppearance.ColorTo = 15195349
                PageAppearance.ColorMirror = 15195349
                PageAppearance.ColorMirrorTo = 16513776
                TabAppearance.BorderColorHot = 12697277
                TabAppearance.BorderColorSelected = 12697533
                TabAppearance.BorderColorSelectedHot = 6277882
                TabAppearance.ColorSelected = 16316660
                TabAppearance.ColorSelectedTo = 15722466
                TabAppearance.ColorHot = 13558249
                TabAppearance.ColorHotTo = 14669780
                TabAppearance.ColorMirrorHot = 12966111
                TabAppearance.ColorMirrorHotTo = 9359081
                TabAppearance.ColorMirrorSelected = 15722466
                TabAppearance.ColorMirrorSelectedTo = 15722466
                TabAppearance.Font.Name = 'Segoe UI'
                TabAppearance.TextColor = clBlack
                TabAppearance.TextColorHot = 6050636
                TabAppearance.TextColorSelected = 6050636
                TabAppearance.ShadowColor = 14077385
                TabAppearance.HighLightColorHot = 16250099
                TabAppearance.BackGround.Color = clWhite
                TabAppearance.BackGround.ColorTo = 14342874
                object VSp: TdfsSplitter
                  Left = 270
                  Height = 293
                end
                object FilterP: TPanel
                  Width = 274
                  object cbFilter: TdxPickEdit
                    Width = 0
                  end
                end
                object ObjectsTL: TdxTreeList
                  Width = 270
                  Height = 293
                  OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSearch']
                end
              end
              object tsProject: TAdvOfficePage
                Width = 274
                Height = 315
                PageAppearance.BorderColor = clNone
                PageAppearance.Color = clBtnFace
                PageAppearance.ColorTo = 15195349
                PageAppearance.ColorMirror = 15195349
                PageAppearance.ColorMirrorTo = 16513776
                TabAppearance.BorderColorHot = 12697277
                TabAppearance.BorderColorSelected = 12697533
                TabAppearance.BorderColorSelectedHot = 6277882
                TabAppearance.ColorSelected = 16316660
                TabAppearance.ColorSelectedTo = 15722466
                TabAppearance.ColorHot = 13558249
                TabAppearance.ColorHotTo = 14669780
                TabAppearance.ColorMirrorHot = 12966111
                TabAppearance.ColorMirrorHotTo = 9359081
                TabAppearance.ColorMirrorSelected = 15722466
                TabAppearance.ColorMirrorSelectedTo = 15722466
                TabAppearance.Font.Name = 'Segoe UI'
                TabAppearance.TextColor = clBlack
                TabAppearance.TextColorHot = 6050636
                TabAppearance.TextColorSelected = 6050636
                TabAppearance.ShadowColor = 14077385
                TabAppearance.HighLightColorHot = 16250099
                TabAppearance.BackGround.Color = clWhite
                TabAppearance.BackGround.ColorTo = 14342874
                object ProjPanel: TPanel
                  Width = 274
                  Height = 314
                  object ProjectsTL: TdxTreeList
                    Width = 274
                    Height = 314
                    Constraints.MinWidth = 0
                  end
                end
              end
              object tsDiagrams: TAdvOfficePage
                Width = 274
                Height = 315
                PageAppearance.BorderColor = clNone
                PageAppearance.Color = clBtnFace
                PageAppearance.ColorTo = 15195349
                PageAppearance.ColorMirror = 15195349
                PageAppearance.ColorMirrorTo = 16513776
                TabAppearance.BorderColorHot = 12697277
                TabAppearance.BorderColorSelected = 12697533
                TabAppearance.BorderColorSelectedHot = 6277882
                TabAppearance.ColorSelected = 16316660
                TabAppearance.ColorSelectedTo = 15722466
                TabAppearance.ColorHot = 13558249
                TabAppearance.ColorHotTo = 14669780
                TabAppearance.ColorMirrorHot = 12966111
                TabAppearance.ColorMirrorHotTo = 9359081
                TabAppearance.ColorMirrorSelected = 15722466
                TabAppearance.ColorMirrorSelectedTo = 15722466
                TabAppearance.Font.Name = 'Segoe UI'
                TabAppearance.TextColor = clBlack
                TabAppearance.TextColorHot = 6050636
                TabAppearance.TextColorSelected = 6050636
                TabAppearance.ShadowColor = 14077385
                TabAppearance.HighLightColorHot = 16250099
                TabAppearance.BackGround.Color = clWhite
                TabAppearance.BackGround.ColorTo = 14342874
                object DiagramsTL: TdxTreeList
                  Width = 274
                  Height = 314
                  Constraints.MinWidth = 0
                end
              end
              object tsWindows: TAdvOfficePage
                Width = 274
                Height = 315
                PageAppearance.BorderColor = clNone
                PageAppearance.Color = clBtnFace
                PageAppearance.ColorTo = 15195349
                PageAppearance.ColorMirror = 15195349
                PageAppearance.ColorMirrorTo = 16513776
                TabAppearance.BorderColorHot = 12697277
                TabAppearance.BorderColorSelected = 12697533
                TabAppearance.BorderColorSelectedHot = 6277882
                TabAppearance.ColorSelected = 16316660
                TabAppearance.ColorSelectedTo = 15722466
                TabAppearance.ColorHot = 13558249
                TabAppearance.ColorHotTo = 14669780
                TabAppearance.ColorMirrorHot = 12966111
                TabAppearance.ColorMirrorHotTo = 9359081
                TabAppearance.ColorMirrorSelected = 15722466
                TabAppearance.ColorMirrorSelectedTo = 15722466
                TabAppearance.Font.Name = 'Segoe UI'
                TabAppearance.TextColor = clBlack
                TabAppearance.TextColorHot = 6050636
                TabAppearance.TextColorSelected = 6050636
                TabAppearance.ShadowColor = 14077385
                TabAppearance.HighLightColorHot = 16250099
                TabAppearance.BackGround.Color = clWhite
                TabAppearance.BackGround.ColorTo = 14342874
                object WindowsTL: TdxTreeList
                  Width = 274
                  Height = 314
                end
              end
              object tsRecent: TAdvOfficePage
                Width = 274
                Height = 315
                PageAppearance.BorderColor = clNone
                PageAppearance.Color = clBtnFace
                PageAppearance.ColorTo = 15195349
                PageAppearance.ColorMirror = 15195349
                PageAppearance.ColorMirrorTo = 16513776
                TabAppearance.BorderColorHot = 12697277
                TabAppearance.BorderColorSelected = 12697533
                TabAppearance.BorderColorSelectedHot = 6277882
                TabAppearance.ColorSelected = 16316660
                TabAppearance.ColorSelectedTo = 15722466
                TabAppearance.ColorHot = 13558249
                TabAppearance.ColorHotTo = 14669780
                TabAppearance.ColorMirrorHot = 12966111
                TabAppearance.ColorMirrorHotTo = 9359081
                TabAppearance.ColorMirrorSelected = 15722466
                TabAppearance.ColorMirrorSelectedTo = 15722466
                TabAppearance.Font.Name = 'Segoe UI'
                TabAppearance.TextColor = clBlack
                TabAppearance.TextColorHot = 6050636
                TabAppearance.TextColorSelected = 6050636
                TabAppearance.ShadowColor = 14077385
                TabAppearance.HighLightColorHot = 16250099
                TabAppearance.BackGround.Color = clWhite
                TabAppearance.BackGround.ColorTo = 14342874
                object RecentTL: TdxTreeList
                  Width = 274
                  Height = 314
                end
              end
              object tsBlocks: TAdvOfficePage
                Width = 274
                Height = 315
                PageAppearance.BorderColor = clNone
                PageAppearance.Color = clBtnFace
                PageAppearance.ColorTo = 15195349
                PageAppearance.ColorMirror = 15195349
                PageAppearance.ColorMirrorTo = 16513776
                TabAppearance.BorderColorHot = 12697277
                TabAppearance.BorderColorSelected = 12697533
                TabAppearance.BorderColorSelectedHot = 6277882
                TabAppearance.ColorSelected = 16316660
                TabAppearance.ColorSelectedTo = 15722466
                TabAppearance.ColorHot = 13558249
                TabAppearance.ColorHotTo = 14669780
                TabAppearance.ColorMirrorHot = 12966111
                TabAppearance.ColorMirrorHotTo = 9359081
                TabAppearance.ColorMirrorSelected = 15722466
                TabAppearance.ColorMirrorSelectedTo = 15722466
                TabAppearance.Font.Name = 'Segoe UI'
                TabAppearance.TextColor = clBlack
                TabAppearance.TextColorHot = 6050636
                TabAppearance.TextColorSelected = 6050636
                TabAppearance.ShadowColor = 14077385
                TabAppearance.HighLightColorHot = 16250099
                TabAppearance.BackGround.Color = clWhite
                TabAppearance.BackGround.ColorTo = 14342874
                object BlocksTL: TdxTreeList
                  Width = 274
                  Height = 314
                  Constraints.MinWidth = 0
                end
              end
              object tsHelp: TAdvOfficePage
                Width = 274
                Height = 315
                PageAppearance.BorderColor = clNone
                PageAppearance.Color = clBtnFace
                PageAppearance.ColorTo = 15195349
                PageAppearance.ColorMirror = 15195349
                PageAppearance.ColorMirrorTo = 16513776
                TabAppearance.BorderColorHot = 12697277
                TabAppearance.BorderColorSelected = 12697533
                TabAppearance.BorderColorSelectedHot = 6277882
                TabAppearance.ColorSelected = 16316660
                TabAppearance.ColorSelectedTo = 15722466
                TabAppearance.ColorHot = 13558249
                TabAppearance.ColorHotTo = 14669780
                TabAppearance.ColorMirrorHot = 12966111
                TabAppearance.ColorMirrorHotTo = 9359081
                TabAppearance.ColorMirrorSelected = 15722466
                TabAppearance.ColorMirrorSelectedTo = 15722466
                TabAppearance.Font.Name = 'Segoe UI'
                TabAppearance.TextColor = clBlack
                TabAppearance.TextColorHot = 6050636
                TabAppearance.TextColorSelected = 6050636
                TabAppearance.ShadowColor = 14077385
                TabAppearance.HighLightColorHot = 16250099
                TabAppearance.BackGround.Color = clWhite
                TabAppearance.BackGround.ColorTo = 14342874
                object HelpPages: TIBEPageControl
                  Top = 1
                  Width = 274
                  Height = 314
                  AdvOfficePagerStyler = PCStyler
                  NextPictureChanged = True
                  PrevPictureChanged = True
                  object tsContents: TAdvOfficePage
                    Width = 274
                    Height = 289
                    PageAppearance.BorderColor = clNone
                    PageAppearance.Color = clBtnFace
                    PageAppearance.ColorTo = 15195349
                    PageAppearance.ColorMirror = 15195349
                    PageAppearance.ColorMirrorTo = 16513776
                    TabAppearance.BorderColorHot = 12697277
                    TabAppearance.BorderColorSelected = 12697533
                    TabAppearance.BorderColorSelectedHot = 6277882
                    TabAppearance.ColorSelected = 16316660
                    TabAppearance.ColorSelectedTo = 15722466
                    TabAppearance.ColorHot = 13558249
                    TabAppearance.ColorHotTo = 14669780
                    TabAppearance.ColorMirrorHot = 12966111
                    TabAppearance.ColorMirrorHotTo = 9359081
                    TabAppearance.ColorMirrorSelected = 15722466
                    TabAppearance.ColorMirrorSelectedTo = 15722466
                    TabAppearance.Font.Name = 'Segoe UI'
                    TabAppearance.TextColor = clBlack
                    TabAppearance.TextColorHot = 6050636
                    TabAppearance.TextColorSelected = 6050636
                    TabAppearance.ShadowColor = 14077385
                    TabAppearance.HighLightColorHot = 16250099
                    TabAppearance.BackGround.Color = clWhite
                    TabAppearance.BackGround.ColorTo = 14342874
                    object HelpTL: TdxTreeList
                      Width = 274
                      Height = 288
                    end
                  end
                  object tsIndex: TAdvOfficePage
                    Width = 274
                    Height = 289
                    PageAppearance.BorderColor = clNone
                    PageAppearance.Color = clBtnFace
                    PageAppearance.ColorTo = 15195349
                    PageAppearance.ColorMirror = 15195349
                    PageAppearance.ColorMirrorTo = 16513776
                    TabAppearance.BorderColorHot = 12697277
                    TabAppearance.BorderColorSelected = 12697533
                    TabAppearance.BorderColorSelectedHot = 6277882
                    TabAppearance.ColorSelected = 16316660
                    TabAppearance.ColorSelectedTo = 15722466
                    TabAppearance.ColorHot = 13558249
                    TabAppearance.ColorHotTo = 14669780
                    TabAppearance.ColorMirrorHot = 12966111
                    TabAppearance.ColorMirrorHotTo = 9359081
                    TabAppearance.ColorMirrorSelected = 15722466
                    TabAppearance.ColorMirrorSelectedTo = 15722466
                    TabAppearance.Font.Name = 'Segoe UI'
                    TabAppearance.TextColor = clBlack
                    TabAppearance.TextColorHot = 6050636
                    TabAppearance.TextColorSelected = 6050636
                    TabAppearance.ShadowColor = 14077385
                    TabAppearance.HighLightColorHot = 16250099
                    TabAppearance.BackGround.Color = clWhite
                    TabAppearance.BackGround.ColorTo = 14342874
                    object tlKW: TdxTreeList
                      Width = 274
                      Height = 288
                    end
                  end
                end
              end
              object tsObjectInspector: TAdvOfficePage
                Width = 274
                Height = 315
                PageAppearance.BorderColor = clNone
                PageAppearance.Color = clBtnFace
                PageAppearance.ColorTo = 15195349
                PageAppearance.ColorMirror = 15195349
                PageAppearance.ColorMirrorTo = 16513776
                TabAppearance.BorderColorHot = 12697277
                TabAppearance.BorderColorSelected = 12697533
                TabAppearance.BorderColorSelectedHot = 6277882
                TabAppearance.ColorSelected = 16316660
                TabAppearance.ColorSelectedTo = 15722466
                TabAppearance.ColorHot = 13558249
                TabAppearance.ColorHotTo = 14669780
                TabAppearance.ColorMirrorHot = 12966111
                TabAppearance.ColorMirrorHotTo = 9359081
                TabAppearance.ColorMirrorSelected = 15722466
                TabAppearance.ColorMirrorSelectedTo = 15722466
                TabAppearance.Font.Name = 'Segoe UI'
                TabAppearance.TextColor = clBlack
                TabAppearance.TextColorHot = 6050636
                TabAppearance.TextColorSelected = 6050636
                TabAppearance.ShadowColor = 14077385
                TabAppearance.HighLightColorHot = 16250099
                TabAppearance.BackGround.Color = clWhite
                TabAppearance.BackGround.ColorTo = 14342874
                object OIFm: TObjectInspectorFrame
                  Width = 274
                  Height = 314
                  object dxPageControl1: TIBEPageControl
                    Width = 274
                    Height = 281
                    NextPictureChanged = True
                    PrevPictureChanged = True
                    object tsProperties: TAdvOfficePage
                      Width = 274
                      Height = 256
                      object PTL: TdxTreeList
                        Width = 274
                        Height = 255
                      end
                    end
                    object tsEvents: TAdvOfficePage
                      Width = 274
                      Height = 256
                      object ETL: TdxTreeList
                        Width = 274
                        Height = 255
                      end
                    end
                  end
                  object Panel1: TPanel
                    Width = 274
                    object cbComponents: TdxPickEdit
                      StoredValues = 64
                    end
                  end
                end
              end
              object tsSheduler: TAdvOfficePage
                Width = 274
                Height = 315
                PageAppearance.BorderColor = clNone
                PageAppearance.Color = clBtnFace
                PageAppearance.ColorTo = 15195349
                PageAppearance.ColorMirror = 15195349
                PageAppearance.ColorMirrorTo = 16513776
                TabAppearance.BorderColorHot = 12697277
                TabAppearance.BorderColorSelected = 12697533
                TabAppearance.BorderColorSelectedHot = 6277882
                TabAppearance.ColorSelected = 16316660
                TabAppearance.ColorSelectedTo = 15722466
                TabAppearance.ColorHot = 13558249
                TabAppearance.ColorHotTo = 14669780
                TabAppearance.ColorMirrorHot = 12966111
                TabAppearance.ColorMirrorHotTo = 9359081
                TabAppearance.ColorMirrorSelected = 15722466
                TabAppearance.ColorMirrorSelectedTo = 15722466
                TabAppearance.Font.Name = 'Segoe UI'
                TabAppearance.TextColor = clBlack
                TabAppearance.TextColorHot = 6050636
                TabAppearance.TextColorSelected = 6050636
                TabAppearance.ShadowColor = 14077385
                TabAppearance.HighLightColorHot = 16250099
                TabAppearance.BackGround.Color = clWhite
                TabAppearance.BackGround.ColorTo = 14342874
                object SETL: TdxTreeList
                  Width = 274
                  Height = 314
                end
              end
            end
            object pAssist: TPanel
              Top = 343
              Width = 274
              object AssistDock: TTBDock
                object twAssistant: TTBToolWindow
                  OnDockChanged = InspectorFmtwAssistantDockChanged
                  object SQLAPages: TIBEPageControl
                    AdvOfficePagerStyler = PCStyler
                    NextPictureChanged = True
                    PrevPictureChanged = True
                    object tsSQLAssistant: TAdvOfficePage
                      PageAppearance.BorderColor = clNone
                      PageAppearance.Color = clBtnFace
                      PageAppearance.ColorTo = 15195349
                      PageAppearance.ColorMirror = 15195349
                      PageAppearance.ColorMirrorTo = 16513776
                      TabAppearance.BorderColorHot = 12697277
                      TabAppearance.BorderColorSelected = 12697533
                      TabAppearance.BorderColorSelectedHot = 6277882
                      TabAppearance.ColorSelected = 16316660
                      TabAppearance.ColorSelectedTo = 15722466
                      TabAppearance.ColorHot = 13558249
                      TabAppearance.ColorHotTo = 14669780
                      TabAppearance.ColorMirrorHot = 12966111
                      TabAppearance.ColorMirrorHotTo = 9359081
                      TabAppearance.ColorMirrorSelected = 15722466
                      TabAppearance.ColorMirrorSelectedTo = 15722466
                      TabAppearance.Font.Name = 'Segoe UI'
                      TabAppearance.TextColor = clBlack
                      TabAppearance.TextColorHot = 6050636
                      TabAppearance.TextColorSelected = 6050636
                      TabAppearance.ShadowColor = 14077385
                      TabAppearance.HighLightColorHot = 16250099
                      TabAppearance.BackGround.Color = clWhite
                      TabAppearance.BackGround.ColorTo = 14342874
                    end
                    object tsDynamicHelp: TAdvOfficePage
                      PageAppearance.BorderColor = clNone
                      PageAppearance.Color = clBtnFace
                      PageAppearance.ColorTo = 15195349
                      PageAppearance.ColorMirror = 15195349
                      PageAppearance.ColorMirrorTo = 16513776
                      TabAppearance.BorderColorHot = 12697277
                      TabAppearance.BorderColorSelected = 12697533
                      TabAppearance.BorderColorSelectedHot = 6277882
                      TabAppearance.ColorSelected = 16316660
                      TabAppearance.ColorSelectedTo = 15722466
                      TabAppearance.ColorHot = 13558249
                      TabAppearance.ColorHotTo = 14669780
                      TabAppearance.ColorMirrorHot = 12966111
                      TabAppearance.ColorMirrorHotTo = 9359081
                      TabAppearance.ColorMirrorSelected = 15722466
                      TabAppearance.ColorMirrorSelectedTo = 15722466
                      TabAppearance.Font.Name = 'Segoe UI'
                      TabAppearance.TextColor = clBlack
                      TabAppearance.TextColorHot = 6050636
                      TabAppearance.TextColorSelected = 6050636
                      TabAppearance.ShadowColor = 14077385
                      TabAppearance.HighLightColorHot = 16250099
                      TabAppearance.BackGround.Color = clWhite
                      TabAppearance.BackGround.ColorTo = 14342874
                    end
                    object tsTips: TAdvOfficePage
                      PageAppearance.BorderColor = clNone
                      PageAppearance.Color = clBtnFace
                      PageAppearance.ColorTo = 15195349
                      PageAppearance.ColorMirror = 15195349
                      PageAppearance.ColorMirrorTo = 16513776
                      TabAppearance.BorderColorHot = 12697277
                      TabAppearance.BorderColorSelected = 12697533
                      TabAppearance.BorderColorSelectedHot = 6277882
                      TabAppearance.ColorSelected = 16316660
                      TabAppearance.ColorSelectedTo = 15722466
                      TabAppearance.ColorHot = 13558249
                      TabAppearance.ColorHotTo = 14669780
                      TabAppearance.ColorMirrorHot = 12966111
                      TabAppearance.ColorMirrorHotTo = 9359081
                      TabAppearance.ColorMirrorSelected = 15722466
                      TabAppearance.ColorMirrorSelectedTo = 15722466
                      TabAppearance.Font.Name = 'Segoe UI'
                      TabAppearance.TextColor = clBlack
                      TabAppearance.TextColorHot = 6050636
                      TabAppearance.TextColorSelected = 6050636
                      TabAppearance.ShadowColor = 14077385
                      TabAppearance.HighLightColorHot = 16250099
                      TabAppearance.BackGround.Color = clWhite
                      TabAppearance.BackGround.ColorTo = 14342874
                    end
                    object tsModelNavigator: TAdvOfficePage
                      PageAppearance.BorderColor = clNone
                      PageAppearance.Color = clBtnFace
                      PageAppearance.ColorTo = 15195349
                      PageAppearance.ColorMirror = 15195349
                      PageAppearance.ColorMirrorTo = 16513776
                      TabAppearance.BorderColorHot = 12697277
                      TabAppearance.BorderColorSelected = 12697533
                      TabAppearance.BorderColorSelectedHot = 6277882
                      TabAppearance.ColorSelected = 16316660
                      TabAppearance.ColorSelectedTo = 15722466
                      TabAppearance.ColorHot = 13558249
                      TabAppearance.ColorHotTo = 14669780
                      TabAppearance.ColorMirrorHot = 12966111
                      TabAppearance.ColorMirrorHotTo = 9359081
                      TabAppearance.ColorMirrorSelected = 15722466
                      TabAppearance.ColorMirrorSelectedTo = 15722466
                      TabAppearance.Font.Name = 'Segoe UI'
                      TabAppearance.TextColor = clBlack
                      TabAppearance.TextColorHot = 6050636
                      TabAppearance.TextColorSelected = 6050636
                      TabAppearance.ShadowColor = 14077385
                      TabAppearance.HighLightColorHot = 16250099
                      TabAppearance.BackGround.Color = clWhite
                      TabAppearance.BackGround.ColorTo = 14342874
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  object Status: TStatusBar
    Left = 0
    Top = 681
    Width = 1006
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Width = 65
      end
      item
        Width = 75
      end
      item
        Width = 230
      end
      item
        Style = psOwnerDraw
        Width = 400
      end
      item
        Style = psOwnerDraw
        Width = 300
      end
    >
    SimplePanel = False
    OnDrawPanel = StatusDrawPanel
  end
  object mPrint: TSQLMemo
    Left = 832
    Top = 176
    Width = 129
    Height = 113
    Cursor = crIBeam
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Visible = False
    HighlightCurrentLine = False
    CurrentLineColor = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    HighLighter = PrintPars
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
      item
        ShortCut = 24654
        ShortCut2 = 0
        Command = ecNormalSelect
      end
      item
        ShortCut = 24643
        ShortCut2 = 0
        Command = ecColumnSelect
      end
      item
        ShortCut = 24652
        ShortCut2 = 0
        Command = ecLineSelect
      end
    >
    Lines.WideStrings = ['mPrint']
    MaxUndo = 10
    ReadOnly = False
    WantTabs = True
    ErrorLine = -1
  end
  object bottomDock: TTBDock
    Left = 0
    Top = 672
    Width = 1006
    Height = 9
    LimitToOneRow = True
    Position = dpBottom
    OnInsertRemoveBar = rightDockInsertRemoveBar
  end
  object DBTL: TdxTreeList
    Tag = -1000
    Left = 611
    Top = 288
    Width = 265
    Height = 299
    Bands = <
      item
      end
    >
    DefaultLayout = True
    HeaderPanelRowCount = 1
    DragMode = dmAutomatic
    TabOrder = 9
    Visible = False
    HideSelection = False
    LookAndFeel = lfFlat
    Options = ['aoColumnSizing', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth']
    OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragExpand', 'aoAutoSearch']
    TreeLineColor = clGrayText
    ShowHeader = False
    GridLineColor = clSilver
    OnDblClick = DBTLDblClick
    OnKeyPress = DBTLKeyPress
    OnCustomDrawCell = DBTLCustomDrawCell
    Constraints.MinWidth = 100
    object DBTLColumn1: TdxTreeListColumn
      BandIndex = 0
      RowIndex = 0
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerTimer
    Left = 504
    Top = 136
  end
  object AutoSaveTimer: TTimer
    Enabled = False
    Interval = 300000
    OnTimer = AutoSaveTimerTimer
    Left = 539
    Top = 135
  end
  object SmartTimer: TTimer
    Enabled = False
    OnTimer = SmartTimerTimer
    Left = 544
    Top = 168
  end
  object ImageList1: TImageList
    Height = 13
    Width = 14
    Left = 417
    Top = 140
    Bitmap = {21278 bytes}
  end
  object SQLPars: TIBwmSQLSyn
    DefaultFilter = 'SQL files (*.sql)|*.SQL'
    Separators = ' ,.:;=()/[]<>'
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
    SymbolAttri.Style = ['fsBold']
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
    BracketPairAttri.Background = clWindow
    BracketPairAttri.Foreground = clWindowText
    BracketPairAttri.Style = []
    SelectedWordAttri.Background = clWindow
    SelectedWordAttri.Foreground = clWindowText
    SelectedWordAttri.Style = []
    Links.Strings = ['dsd']
    UserIdents1.Strings = ['__gfFullName', '__gfRecursiveSearch', 'ibec_filesize', 'ibec_getfiles', 'ibec_high', 'ibec_length', 'ibec_loadfromfile', 'ibec_progress']
    Left = 305
    Top = 75
  end
  object BlobMenu: TPopupMenu
    Left = 523
    Top = 67
    object SaveBlobM: TMenuItem
      Caption = '&Save to file'
      OnClick = SaveBlobMClick
    end
    object LoadBlobM: TMenuItem
      Caption = '&Load from file'
      OnClick = LoadBlobMClick
    end
  end
  object SaveD: TSaveDialog
    Filter = 'All Files (*.*)|*.*'
    Options = ['ofOverwritePrompt', 'ofHideReadOnly', 'ofPathMustExist']
    Title = 'Save Blob-Field To File'
    Left = 328
    Top = 377
  end
  object OpenD: TOpenDialog
    DefaultExt = '*'
    Filter = 'All Files (*.*)|*.*'
    Options = ['ofFileMustExist']
    Title = 'Load Blob-Field From File'
    Left = 296
    Top = 376
  end
  object AutohideTimer: TTimer
    Enabled = False
    Interval = 200
    OnTimer = AutohideTimerTimer
    Left = 504
    Top = 168
  end
  object MainActions: TActionList
    Images = MenuImages
    OnExecute = MainActionsExecute
    OnUpdate = MainActionsUpdate
    Left = 312
    Top = 232
    object aSQLEditor: TAction
      Category = 'Tools'
      Caption = 'SQL Editor'
      Hint = 'Show SQL Editor'
      ImageIndex = 70
      ShortCut = 123
      OnExecute = aSQLEditorExecute
    end
    object aNewSQLEditor: TAction
      Category = 'Tools'
      Caption = 'New SQL Editor'
      Hint = 'New SQL Editor'
      ImageIndex = 5
      ShortCut = 8315
      OnExecute = aNewSQLEditorExecute
    end
    object aSQLMonitor: TAction
      Category = 'Tools'
      Caption = 'SQL Monitor'
      Hint = 'SQL Monitor'
      ImageIndex = 6
      ShortCut = 16461
      OnExecute = aSQLMonitorExecute
      OnUpdate = aSQLMonitorUpdate
    end
    object aFindMetadata: TAction
      Category = 'Tools'
      Caption = 'Search in Metadata'
      Hint = 'Search text in Metadata'
      ImageIndex = 10
      ShortCut = 41030
      OnExecute = aFindMetadataExecute
    end
    object aCreateDatabase: TAction
      Tag = -27
      Category = 'Database'
      Caption = 'Create Database'
      ImageIndex = 289
      OnExecute = aCreateDatabaseExecute
      OnUpdate = aCreateDatabaseUpdate
    end
    object aDropDatabase: TAction
      Tag = -28
      Category = 'Database'
      Caption = 'Dr&op Database'
      Hint = 'Drop existing database'
      ImageIndex = 290
      OnExecute = aDropDatabaseExecute
    end
    object aExitProgram: TAction
      Tag = -29
      Category = 'Database'
      Caption = 'Exit'
      Hint = 'Exit from IBExpert'
      ImageIndex = 16
      ShortCut = 32883
      OnExecute = aExitProgramExecute
    end
    object aExtractMetadata: TAction
      Category = 'Tools'
      Caption = 'Extract Metadata'
      Hint = 'Extract Metadata'
      ImageIndex = 9
      OnExecute = aExtractMetadataExecute
    end
    object aPrintMetadata: TAction
      Category = 'Tools'
      Caption = 'Print Metadata'
      ImageIndex = 53
      OnExecute = aPrintMetadataExecute
    end
    object aUserManager: TAction
      Category = 'Tools'
      Caption = 'User Manager'
      Hint = 'User Manager'
      ImageIndex = 69
      OnExecute = aUserManagerExecute
    end
    object aGrantManager: TAction
      Category = 'Tools'
      Caption = 'Grant Manager'
      Hint = 'Grant Manager'
      ImageIndex = 33
      OnExecute = aGrantManagerExecute
    end
    object aLocalizeIBMes: TAction
      Category = 'Tools'
      Caption = 'Localize IB Messages'
      Hint = 'Localize Interbase messages file'
      OnExecute = aLocalizeIBMesExecute
      OnUpdate = aLocalizeIBMesUpdate
    end
    object aLocalizeIbExpert: TAction
      Category = 'Tools'
      Caption = 'Localize IBExpert'
      Hint = 'Localize IBExpert'
      OnExecute = aLocalizeIbExpertExecute
      OnUpdate = aLocalizeIbExpertUpdate
    end
    object aReportManager: TAction
      Category = 'Tools'
      Caption = 'Report Manager'
      Hint = 'Create and Manage Reports'
      ImageIndex = 77
      OnExecute = aReportManagerExecute
    end
    object aBackupDatabase: TAction
      Category = 'Services'
      Caption = 'Backup Database'
      OnExecute = aBackupDatabaseExecute
      OnUpdate = aBackupDatabaseUpdate
    end
    object aRestoreDatabase: TAction
      Category = 'Services'
      Caption = 'Restore Database'
      OnExecute = aRestoreDatabaseExecute
      OnUpdate = aRestoreDatabaseUpdate
    end
    object aServerProperties: TAction
      Category = 'Services'
      Caption = 'Server Properties/Log'
      Hint = 'Server Properties'
      OnExecute = aServerPropertiesExecute
      OnUpdate = aServerPropertiesUpdate
    end
    object aDatabaseValidation: TAction
      Category = 'Services'
      Caption = 'Database Validation'
      OnExecute = aDatabaseValidationExecute
      OnUpdate = aDatabaseValidationUpdate
    end
    object aDatabaseStatistic: TAction
      Category = 'Services'
      Caption = 'Database Statistic'
      OnExecute = aDatabaseStatisticExecute
      OnUpdate = aDatabaseStatisticUpdate
    end
    object aDatabaseProperties: TAction
      Category = 'Services'
      Caption = 'Database Properties'
      OnExecute = aDatabasePropertiesExecute
      OnUpdate = aDatabasePropertiesUpdate
    end
    object actWindowsManager: TAction
      Category = 'Windows'
      Caption = 'Windows Manager'
      Hint = 'Windows Manager'
      ImageIndex = 14
      ShortCut = 32816
      OnExecute = actWindowsManagerExecute
    end
    object actCloseAll: TAction
      Category = 'Windows'
      Caption = 'Close All'
      Hint = 'Close All'
      ImageIndex = 15
      OnExecute = actCloseAllExecute
    end
    object actWhatsNew: TAction
      Category = 'Help'
      Caption = 'What''s new?'
      ImageIndex = 27
      OnExecute = actWhatsNewExecute
      OnUpdate = actWhatsNewUpdate
    end
    object actContents: TAction
      Category = 'Help'
      Caption = 'Contents'
      ImageIndex = 25
      OnExecute = actContentsExecute
      OnUpdate = actContentsUpdate
    end
    object actAdditionalHelp: TAction
      Category = 'Help'
      Caption = 'Additional Help Files'
      OnExecute = actAdditionalHelpExecute
      OnUpdate = actAdditionalHelpUpdate
    end
    object actHomePage: TAction
      Category = 'Help'
      Caption = 'Product Home Page'
      OnExecute = actHomePageExecute
      OnUpdate = actHomePageUpdate
    end
    object actSendBugReports: TAction
      Category = 'Help'
      Caption = 'Send bug reports to'
      ImageIndex = 26
      OnExecute = actSendBugReportsExecute
      OnUpdate = actSendBugReportsUpdate
    end
    object actAbout: TAction
      Category = 'Help'
      Caption = 'About'
      OnExecute = actAboutExecute
    end
    object actEnvironmentOptions: TAction
      Tag = -40
      Category = 'Options'
      Caption = 'Environment Options'
      ImageIndex = 72
      OnExecute = actEnvironmentOptionsExecute
    end
    object actEditorOptions: TAction
      Tag = -41
      Category = 'Options'
      Caption = 'Editor Options'
      ImageIndex = 71
      OnExecute = actEditorOptionsExecute
    end
    object actKeyboardTemplates: TAction
      Tag = -42
      Category = 'Options'
      Caption = 'Keyboard Templates'
      ImageIndex = 79
      OnExecute = actKeyboardTemplatesExecute
    end
    object actPluginsOptions: TAction
      Tag = -43
      Category = 'Options'
      Caption = 'Plugins Options'
    end
    object actActivateMenu: TAction
      ShortCut = 121
    end
    object actRegisterDatabase: TAction
      Tag = -25
      Category = 'Database'
      Caption = 'Register Database'
      ImageIndex = 67
      ShortCut = 41042
      OnExecute = actRegisterDatabaseExecute
      OnUpdate = actRegisterDatabaseUpdate
    end
    object actUnregisterDatabase: TAction
      Tag = -26
      Category = 'Database'
      Caption = 'Unregister Database'
      ImageIndex = 68
      ShortCut = 41045
      OnExecute = actUnregisterDatabaseExecute
    end
    object actConnectToDatabase: TAction
      Tag = -114
      Category = 'Database'
      Caption = 'Connect to Database'
      ImageIndex = 1
      ShortCut = 24643
      OnExecute = actConnectToDatabaseExecute
      OnUpdate = actConnectToDatabaseUpdate
    end
    object actDisconnectFromDatabase: TAction
      Tag = -115
      Category = 'Database'
      Caption = 'Disconnect from Database'
      ImageIndex = 2
      ShortCut = 24644
      OnExecute = actDisconnectFromDatabaseExecute
    end
    object actJumpToDomains: TAction
      Category = 'Jumps'
      Caption = 'Domains'
      ImageIndex = 83
      ShortCut = 49220
      OnExecute = actJumpToDomainsExecute
    end
    object actCreateUserItemFromClipboard: TAction
      Category = 'UserItems'
      Caption = 'Create User Item from Clipboard'
      ImageIndex = 49
      ShortCut = 16470
      OnExecute = actCreateUserItemFromClipboardExecute
    end
    object actCopyUserItemToClipboard: TAction
      Category = 'UserItems'
      Caption = 'Copy User Item to Clipboard'
      ImageIndex = 48
      ShortCut = 16451
      OnExecute = actCopyUserItemToClipboardExecute
    end
    object actCloseWindow: TAction
      Category = 'WindowsManager'
      Caption = 'Close'
      OnExecute = actCloseWindowExecute
    end
    object actCloseAllDBWindows: TAction
      Category = 'WindowsManager'
      Caption = 'Close all Database Windows'
      OnExecute = actCloseAllDBWindowsExecute
    end
    object actNewObject: TAction
      Category = 'Objects'
      Caption = 'New Object'
      ShortCut = 16462
      OnExecute = actNewObjectExecute
    end
    object actDropObject: TAction
      Category = 'Objects'
      Caption = 'Drop Object'
      ShortCut = 16430
      OnExecute = actDropObjectExecute
    end
    object actEditObject: TAction
      Category = 'Objects'
      Caption = 'Edit Object'
      ShortCut = 16463
      OnExecute = actEditObjectExecute
    end
    object actInspectorPageMode: TAction
      Category = 'Inspector'
      Caption = 'Inspector Page Mode'
      ImageIndex = 51
      OnExecute = actInspectorPageModeExecute
    end
    object actRefresh: TAction
      Category = 'Inspector'
      Caption = 'Refresh'
      ImageIndex = 52
      ShortCut = 116
      OnExecute = actRefreshExecute
    end
    object actWindowsCascade: TWindowCascade
      Category = 'Window'
      Caption = '&Cascade'
      ImageIndex = 80
      OnExecute = actWindowsCascadeExecute
    end
    object actWindowsHorizontal: TWindowTileHorizontal
      Category = 'Window'
      Caption = 'Tile &Horizontally'
      ImageIndex = 81
    end
    object actWindowsVertical: TWindowTileVertical
      Category = 'Window'
      Caption = '&Tile Vertically'
      ImageIndex = 82
    end
    object actWindowsMinimize: TWindowMinimizeAll
      Category = 'Window'
      Caption = '&Minimize All'
    end
    object actWindowsArrange: TWindowArrange
      Category = 'Window'
      Caption = '&Arrange'
    end
    object actToggleInspector: TAction
      Category = 'View'
      Caption = 'DB Explorer'
      ShortCut = 122
      OnExecute = actToggleInspectorExecute
      OnUpdate = actToggleInspectorUpdate
    end
    object actJumpToTables: TAction
      Category = 'Jumps'
      Caption = 'Tables'
      ImageIndex = 17
      ShortCut = 49236
      OnExecute = actJumpToTablesExecute
    end
    object actJumpToViews: TAction
      Category = 'Jumps'
      Caption = 'Views'
      ImageIndex = 18
      ShortCut = 49238
      OnExecute = actJumpToViewsExecute
    end
    object actJumpToRoles: TAction
      Category = 'Jumps'
      Caption = 'Roles'
      ImageIndex = 69
      ShortCut = 49228
      OnExecute = actJumpToRolesExecute
    end
    object actJumpToProcedures: TAction
      Category = 'Jumps'
      Caption = 'Procedures'
      ImageIndex = 19
      ShortCut = 49232
      OnExecute = actJumpToProceduresExecute
    end
    object actJumpToTriggers: TAction
      Category = 'Jumps'
      Caption = 'Triggers'
      ImageIndex = 20
      ShortCut = 49234
      OnExecute = actJumpToTriggersExecute
    end
    object actJumpToGenerators: TAction
      Category = 'Jumps'
      Caption = 'Generators'
      ImageIndex = 21
      ShortCut = 49223
      OnExecute = actJumpToGeneratorsExecute
    end
    object actJumpToExceptions: TAction
      Category = 'Jumps'
      Caption = 'Exceptions'
      ImageIndex = 22
      ShortCut = 49221
      OnExecute = actJumpToExceptionsExecute
    end
    object actJumpToUDFs: TAction
      Category = 'Jumps'
      Caption = 'UDFs'
      ImageIndex = 23
      ShortCut = 49237
      OnExecute = actJumpToUDFsExecute
    end
    object actNewFolder: TAction
      Category = 'Inspector'
      Caption = 'New Folder'
      ImageIndex = 245
      ShortCut = 24646
      OnExecute = actNewFolderExecute
    end
    object actToggleSQLA: TAction
      Category = 'Inspector'
      Caption = 'Show SQL Assistant'
      ShortCut = 16449
      OnExecute = actToggleSQLAExecute
      OnUpdate = actToggleSQLAUpdate
    end
    object actToggleToolbar: TAction
      Category = 'Inspector'
      Caption = 'Show Toolbar'
      ShortCut = 16468
    end
    object actHideDisconnected: TAction
      Category = 'Inspector'
      Caption = 'Hide Disconnected Databases'
      OnExecute = actHideDisconnectedExecute
    end
    object actEditItem: TAction
      Category = 'Inspector'
      Caption = 'Edit Item'
      ShortCut = 113
    end
    object actDatabaseRegistrationInfo: TAction
      Category = 'Database'
      Caption = 'Database Registration Info'
      ImageIndex = 291
      OnExecute = actDatabaseRegistrationInfoExecute
    end
    object actLocalize: TAction
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actDatabaseShutdown: TAction
      Category = 'Services'
      Caption = 'Database Shutdown'
      OnExecute = actDatabaseShutdownExecute
      OnUpdate = actDatabaseShutdownUpdate
    end
    object actDatabaseOnline: TAction
      Category = 'Services'
      Caption = 'Database Online'
      OnExecute = actDatabaseOnlineExecute
      OnUpdate = actDatabaseOnlineUpdate
    end
    object actBlobEditor: TAction
      Category = 'Tools'
      Caption = 'Blob Viewer/Editor'
      ImageIndex = 92
      OnExecute = actBlobEditorExecute
    end
    object actCreateProcsForTable: TAction
      Category = 'Objects'
      Caption = 'Create SIUD procedures'
      OnExecute = actCreateProcsForTableExecute
    end
    object actToggleMainToolbar: TAction
      Category = 'View'
      Caption = 'Main toolbars'
    end
    object actAddObject: TAction
      Category = 'ProjectView'
      Caption = 'Add Object...'
      OnExecute = actAddObjectExecute
    end
    object actFocusInspector: TAction
      Category = 'Inspector'
      ShortCut = 32890
      OnExecute = actFocusInspectorExecute
    end
    object actNewDomain: TAction
      Category = 'NewObjects'
      Caption = 'New Domain'
      ImageIndex = 103
      OnExecute = actNewDomainExecute
    end
    object actNewTable: TAction
      Category = 'NewObjects'
      Caption = 'New Table'
      ImageIndex = 104
      OnExecute = actNewTableExecute
    end
    object actNewView: TAction
      Category = 'NewObjects'
      Caption = 'New View'
      ImageIndex = 106
      OnExecute = actNewViewExecute
    end
    object actNewProcedure: TAction
      Category = 'NewObjects'
      Caption = 'New Procedure'
      ImageIndex = 105
      OnExecute = actNewProcedureExecute
    end
    object actNewTrigger: TAction
      Category = 'NewObjects'
      Caption = 'New Trigger'
      ImageIndex = 107
      OnExecute = actNewTriggerExecute
    end
    object actNewGenerator: TAction
      Category = 'NewObjects'
      Caption = 'New Generator'
      ImageIndex = 108
      OnExecute = actNewGeneratorExecute
    end
    object actNewUDF: TAction
      Category = 'NewObjects'
      Caption = 'New UDF'
      ImageIndex = 109
      OnExecute = actNewUDFExecute
    end
    object actNewException: TAction
      Category = 'NewObjects'
      Caption = 'New Exception'
      ImageIndex = 110
      OnExecute = actNewExceptionExecute
    end
    object actNewRole: TAction
      Category = 'NewObjects'
      Caption = 'New Role'
      ImageIndex = 111
      OnExecute = actNewRoleExecute
    end
    object actAutoGrant: TAction
      Caption = 'Autogrant privileges'
      ImageIndex = 119
      ShortCut = 24641
      OnExecute = actAutoGrantExecute
    end
    object actDeleteFromRecent: TAction
      Category = 'RecentList'
      Caption = 'Delete object'
      ShortCut = 8238
      OnExecute = actDeleteFromRecentExecute
    end
    object actClearRecentList: TAction
      Category = 'RecentList'
      Caption = 'Clear recent list'
      OnExecute = actClearRecentListExecute
    end
    object actDBDesigner: TAction
      Category = 'Tools'
      Caption = 'Database designer'
      OnExecute = actDBDesignerExecute
      OnUpdate = actDBDesignerUpdate
    end
    object actShowDescriptions: TAction
      Caption = 'Show objects description'
      OnExecute = actShowDescriptionsExecute
      OnUpdate = actShowDescriptionsUpdate
    end
    object actEditorCut: TAction
      Category = 'Editor'
      Caption = 'Cut'
      ImageIndex = 50
      ShortCut = 16472
      OnExecute = actEditorCutExecute
      OnUpdate = actEditorCutUpdate
    end
    object actEditorCopy: TAction
      Category = 'Editor'
      Caption = 'Copy'
      ImageIndex = 48
      ShortCut = 16451
      OnExecute = actEditorCopyExecute
      OnUpdate = actEditorCopyUpdate
    end
    object actEditorPaste: TAction
      Category = 'Editor'
      Caption = 'Paste'
      ImageIndex = 49
      ShortCut = 16470
      OnExecute = actEditorPasteExecute
      OnUpdate = actEditorPasteUpdate
    end
    object actEditorSelectAll: TAction
      Category = 'Editor'
      Caption = 'SelectAll'
      ShortCut = 16449
      OnExecute = actEditorSelectAllExecute
      OnUpdate = actEditorSelectAllUpdate
    end
    object actEditorFind: TAction
      Category = 'Editor'
      Caption = 'Find'
      ImageIndex = 66
      ShortCut = 16454
      OnExecute = actEditorFindExecute
      OnUpdate = actEditorFindUpdate
    end
    object actEditorReplace: TAction
      Category = 'Editor'
      Caption = 'Replace'
      ImageIndex = 65
      ShortCut = 16466
      OnExecute = actEditorReplaceExecute
      OnUpdate = actEditorReplaceUpdate
    end
    object actEditorSearchAgain: TAction
      Category = 'Editor'
      Caption = 'Search again'
      ImageIndex = 62
      ShortCut = 114
      OnExecute = actEditorSearchAgainExecute
      OnUpdate = actEditorSearchAgainUpdate
    end
    object actEditorIncrementalSearch: TAction
      Category = 'Editor'
      Caption = 'Incremental search'
      ImageIndex = 64
      OnExecute = actEditorIncrementalSearchExecute
      OnUpdate = actEditorIncrementalSearchUpdate
    end
    object actEditorLoadFromFile: TAction
      Category = 'Editor'
      Caption = 'Load from file'
      ImageIndex = 41
      ShortCut = 16460
      OnExecute = actEditorLoadFromFileExecute
      OnUpdate = actEditorLoadFromFileUpdate
    end
    object actEditorSaveToFile: TAction
      Category = 'Editor'
      Caption = 'Save to file'
      ImageIndex = 29
      ShortCut = 16467
      OnExecute = actEditorSaveToFileExecute
      OnUpdate = actEditorSaveToFileUpdate
    end
    object actEditorPrint: TAction
      Category = 'Editor'
      Caption = 'Print'
      ImageIndex = 53
      OnExecute = actEditorPrintExecute
      OnUpdate = actEditorPrintUpdate
    end
    object actEditorPrintPreview: TAction
      Category = 'Editor'
      Caption = 'Print preview'
      ImageIndex = 32
      OnExecute = actEditorPrintPreviewExecute
      OnUpdate = actEditorPrintPreviewUpdate
    end
    object actEditorPageSetup: TAction
      Category = 'Editor'
      Caption = 'Page setup'
      ImageIndex = 99
      OnExecute = actEditorPageSetupExecute
    end
    object aDebug: TAction
      Caption = 'Memory'
      Visible = False
      OnExecute = aDebugExecute
    end
    object actGridSetEmptyString: TAction
      Category = 'Grid'
      Caption = 'Set empty string'
      OnExecute = actGridSetEmptyStringExecute
      OnUpdate = actGridSetEmptyStringUpdate
    end
    object actGridSetNull: TAction
      Category = 'Grid'
      Caption = 'Set NULL'
      OnExecute = actGridSetNullExecute
      OnUpdate = actGridSetNullUpdate
    end
    object actGridResetFieldsOrder: TAction
      Category = 'Grid'
      Caption = 'Reset fields order'
      OnExecute = actGridResetFieldsOrderExecute
      OnUpdate = actGridResetFieldsOrderUpdate
    end
    object actGridDuplicateRecord: TAction
      Category = 'Grid'
      Caption = 'Duplicate record'
      OnExecute = actGridDuplicateRecordExecute
      OnUpdate = actGridDuplicateRecordUpdate
    end
    object actGridCopyRecord: TAction
      Category = 'Grid'
      Caption = 'Copy records to clipboard'
      OnExecute = actGridCopyRecordExecute
      OnUpdate = actGridCopyRecordUpdate
    end
    object actGridCopyCurrentRecord: TAction
      Category = 'Grid'
      Caption = 'Copy current record to clipboard'
      OnExecute = actGridCopyCurrentRecordExecute
      OnUpdate = actGridCopyCurrentRecordUpdate
    end
    object actGridGroupFields: TAction
      Category = 'Grid'
      Caption = 'Group fields'
      OnExecute = actGridGroupFieldsExecute
      OnUpdate = actGridGroupFieldsUpdate
    end
    object actGridUngroupFields: TAction
      Category = 'Grid'
      Caption = 'Ungroup fields'
      OnExecute = actGridUngroupFieldsExecute
      OnUpdate = actGridUngroupFieldsUpdate
    end
    object actScriptExecutive: TAction
      Category = 'Tools'
      Caption = 'Script Executive'
      Hint = 'Script Executive'
      ImageIndex = 153
      ShortCut = 16507
      OnExecute = actScriptExecutiveExecute
      OnUpdate = actScriptExecutiveUpdate
    end
    object actVisualOptions: TAction
      Category = 'Options'
      Caption = 'Visual Options'
      OnExecute = actVisualOptionsExecute
    end
    object actShowMainForm: TAction
      Caption = 'actShowMainForm'
      ShortCut = 121
      OnExecute = actShowMainFormExecute
    end
    object actEditorQuickLoad: TAction
      Category = 'Editor'
      Caption = 'Quick Load'
      ShortCut = 24652
      OnExecute = actEditorQuickLoadExecute
      OnUpdate = actEditorQuickLoadUpdate
    end
    object actEditorQuickSave: TAction
      Category = 'Editor'
      Caption = 'Quick Save'
      ShortCut = 24659
      OnExecute = actEditorQuickSaveExecute
      OnUpdate = actEditorQuickSaveUpdate
    end
    object actShowStatusBar: TAction
      Category = 'View'
      Caption = 'Status bar'
      OnExecute = actShowStatusBarExecute
    end
    object actIndexNew: TAction
      Category = 'Indices'
      Caption = 'New index'
      ShortCut = 45
      OnExecute = actIndexNewExecute
      OnUpdate = actIndexNewUpdate
    end
    object actIndexDrop: TAction
      Category = 'Indices'
      Caption = 'Drop Index'
      ShortCut = 46
      OnExecute = actIndexDropExecute
      OnUpdate = actIndexDropUpdate
    end
    object actIndexRecompute: TAction
      Category = 'Indices'
      Caption = 'Recompute selectivity'
      OnExecute = actIndexRecomputeExecute
      OnUpdate = actIndexRecomputeUpdate
    end
    object actIndexRecomputeAll: TAction
      Category = 'Indices'
      Caption = 'Recompute all'
      OnExecute = actIndexRecomputeAllExecute
      OnUpdate = actIndexRecomputeAllUpdate
    end
    object actIndexShowStatistics: TAction
      Category = 'Indices'
      Caption = 'Show statistics'
      OnExecute = actIndexShowStatisticsExecute
      OnUpdate = actIndexShowStatisticsUpdate
    end
    object actDatabaseToolbar: TAction
      Category = 'View'
      Caption = 'Database'
      Checked = True
      OnExecute = actDatabaseToolbarExecute
      OnUpdate = actDatabaseToolbarUpdate
    end
    object actToolsToolbar: TAction
      Category = 'View'
      Caption = 'Tools'
      Checked = True
      OnExecute = actToolsToolbarExecute
      OnUpdate = actToolsToolbarUpdate
    end
    object actEditToolbars: TAction
      Category = 'View'
      Caption = 'Edit'
      Checked = True
      OnExecute = actEditToolbarsExecute
      OnUpdate = actEditToolbarsUpdate
    end
    object actNewDBObjectsToolbar: TAction
      Category = 'View'
      Caption = 'New DB objects'
      Checked = True
      OnExecute = actNewDBObjectsToolbarExecute
      OnUpdate = actNewDBObjectsToolbarUpdate
    end
    object actObjectsEditorsOptions: TAction
      Category = 'Options'
      Caption = 'Objects editors options'
      OnExecute = actObjectsEditorsOptionsExecute
    end
    object actConstraintNew: TAction
      Category = 'Constraints'
      Caption = 'New Constraint'
      ShortCut = 45
      OnExecute = actConstraintNewExecute
      OnUpdate = actConstraintNewUpdate
    end
    object actConstraintDrop: TAction
      Category = 'Constraints'
      Caption = 'Drop constraint'
      ShortCut = 46
      OnExecute = actConstraintDropExecute
      OnUpdate = actConstraintDropUpdate
    end
    object actDependenciesExpandAll: TAction
      Category = 'Dependencies'
      Caption = 'Expand all'
      OnExecute = actDependenciesExpandAllExecute
    end
    object actDependenciesCollapseAll: TAction
      Category = 'Dependencies'
      Caption = 'Collapse all'
      OnExecute = actDependenciesCollapseAllExecute
    end
    object actDependenciesRefresh: TAction
      Category = 'Dependencies'
      Caption = 'Refresh'
      OnExecute = actDependenciesRefreshExecute
    end
    object actConstraintAutoWidth: TAction
      Category = 'Constraints'
      Caption = 'Autowidth'
      OnExecute = actConstraintAutoWidthExecute
      OnUpdate = actConstraintAutoWidthUpdate
    end
    object actNextWindow: TAction
      Category = 'Windows'
      Caption = 'Next window'
      ShortCut = 117
      OnExecute = actNextWindowExecute
    end
    object actPrevWindow: TAction
      Category = 'Windows'
      Caption = 'Previous window'
      ShortCut = 16501
      OnExecute = actPrevWindowExecute
    end
    object actTestDataGenerator: TAction
      Category = 'Tools'
      Caption = 'Test data generator'
      OnExecute = actTestDataGeneratorExecute
      OnUpdate = actTestDataGeneratorUpdate
    end
    object actQueryBuilder: TAction
      Category = 'Tools'
      Caption = 'Query builder'
      Hint = 'Query builder'
      ImageIndex = 118
      OnExecute = actQueryBuilderExecute
    end
    object actRecomputeIndices: TAction
      Category = 'Database'
      Caption = 'Recompute selelectivity of all indices'
      OnExecute = actRecomputeIndicesExecute
      OnUpdate = actRecomputeIndicesUpdate
    end
    object actGridAdjustColumnsWidth: TAction
      Category = 'Grid'
      Caption = 'Adjust column widths'
      ShortCut = 16490
      OnExecute = actGridAdjustColumnsWidthExecute
      OnUpdate = actGridAdjustColumnsWidthUpdate
    end
    object actApplyBestFit: TAction
      Caption = 'Apply best fit'
      ShortCut = 16491
      OnExecute = actApplyBestFitExecute
      OnUpdate = actApplyBestFitUpdate
    end
    object actFindObjectInExplorer: TAction
      Caption = 'Find object in explorer tree'
      ShortCut = 49222
      OnExecute = actFindObjectInExplorerExecute
    end
    object actGridCopyCurrentRecordAsInsert: TAction
      Category = 'Grid'
      Caption = 'Copy selected record(s) as INSERT'
      OnExecute = actGridCopyCurrentRecordAsInsertExecute
      OnUpdate = actGridCopyCurrentRecordAsInsertUpdate
    end
    object actGridCut: TAction
      Category = 'Grid'
      Caption = 'Cut'
      ImageIndex = 50
      OnExecute = actGridCutExecute
      OnUpdate = actGridCutUpdate
    end
    object actGridCopy: TAction
      Category = 'Grid'
      Caption = 'Copy'
      ImageIndex = 48
      OnExecute = actGridCopyExecute
      OnUpdate = actGridCopyUpdate
    end
    object actGridPaste: TAction
      Category = 'Grid'
      Caption = 'Paste'
      ImageIndex = 49
      OnExecute = actGridPasteExecute
      OnUpdate = actGridPasteUpdate
    end
    object actCommDiagnostics: TAction
      Category = 'Services'
      Caption = 'Communication Diagnostics...'
      OnExecute = actCommDiagnosticsExecute
      OnUpdate = actCommDiagnosticsUpdate
    end
    object actRecentList: TAction
      Category = 'Inspector'
      Caption = 'Focus recent list'
      ShortCut = 8314
      OnExecute = actRecentListExecute
    end
    object actFieldNew: TAction
      Category = 'Fields'
      Caption = 'New field'
      ImageIndex = 116
      ShortCut = 45
      OnExecute = actFieldNewExecute
      OnUpdate = actFieldNewUpdate
    end
    object actFieldEdit: TAction
      Category = 'Fields'
      Caption = 'Edit field'
      ShortCut = 13
      OnExecute = actFieldEditExecute
      OnUpdate = actFieldEditUpdate
    end
    object actFieldDrop: TAction
      Category = 'Fields'
      Caption = 'Drop field'
      ImageIndex = 112
      ShortCut = 8238
      OnExecute = actFieldDropExecute
      OnUpdate = actFieldDropUpdate
    end
    object actFieldReorder: TAction
      Category = 'Fields'
      Caption = 'Reorder fields'
      OnExecute = actFieldReorderExecute
      OnUpdate = actFieldReorderUpdate
    end
    object actFieldCopyList: TAction
      Category = 'Fields'
      Caption = 'Copy fields list to clipboard'
      OnExecute = actFieldCopyListExecute
      OnUpdate = actFieldCopyListUpdate
    end
    object actEditorCommentSelected: TAction
      Category = 'Editor'
      Caption = 'Comment Selected'
      Hint = 'Comment selected text'
      ImageIndex = 167
      ShortCut = 49342
      OnExecute = actEditorCommentSelectedExecute
      OnUpdate = actEditorCommentSelectedUpdate
    end
    object actEditorUncommentSelected: TAction
      Category = 'Editor'
      Caption = 'Uncomment Selected'
      Hint = 'Uncomment selected text'
      ImageIndex = 168
      ShortCut = 49340
      OnExecute = actEditorUncommentSelectedExecute
      OnUpdate = actEditorUncommentSelectedUpdate
    end
    object actRecompileProcedures: TAction
      Category = 'Database'
      Caption = 'Recompile All Stored Procedures'
      Hint = 'Recompile All Stored Procedures'
      OnExecute = actRecompileProceduresExecute
      OnUpdate = actRecompileProceduresUpdate
    end
    object actGeneralTemplates: TAction
      Category = 'Options'
      Caption = 'General templates'
      OnExecute = actGeneralTemplatesExecute
    end
    object actEditorLowerCase: TAction
      Category = 'Editor'
      Caption = 'Convert to lowercase'
      Hint = 'Convert to lowercase'
      ShortCut = 32808
      OnExecute = actEditorLowerCaseExecute
    end
    object actEditorUpperCase: TAction
      Category = 'Editor'
      Caption = 'Convert to uppercase'
      Hint = 'Convert to uppercase'
      ShortCut = 32806
      OnExecute = actEditorUpperCaseExecute
    end
    object actEditorInvertCase: TAction
      Category = 'Editor'
      Caption = 'Invert case'
      Hint = 'Invert case'
      OnExecute = actEditorInvertCaseExecute
    end
    object actEditorNameCase: TAction
      Category = 'Editor'
      Caption = 'Convert to namecase'
      Hint = 'Convert to namecase'
      OnExecute = actEditorNameCaseExecute
    end
    object actEditorToggleCase: TAction
      Category = 'Editor'
      Caption = 'Toggle case'
      Hint = 'Toggle case'
      ShortCut = 8306
      OnExecute = actEditorToggleCaseExecute
    end
    object actPerfectLayout: TAction
      Caption = 'Perfect layout'
      ShortCut = 24694
      OnExecute = actPerfectLayoutExecute
    end
    object actGridReorderColumns: TAction
      Category = 'Grid'
      Caption = 'Reorder grid columns'
      OnExecute = actGridReorderColumnsExecute
    end
    object actAutoHideExplorer: TAction
      Category = 'View'
      Caption = 'Autohide DB Explorer'
      OnExecute = actAutoHideExplorerExecute
      OnUpdate = actAutoHideExplorerUpdate
    end
    object actAutoHideMainForm: TAction
      Category = 'View'
      Caption = 'Autohide main form'
      OnExecute = actAutoHideMainFormExecute
      OnUpdate = actAutoHideMainFormUpdate
    end
    object actBuyInterbase: TAction
      Category = 'Help'
      Caption = 'Buy Borland InterBase'
      OnExecute = actBuyInterbaseExecute
      OnUpdate = actBuyInterbaseUpdate
    end
    object actDownloadFBFromFB: TAction
      Category = 'Help'
      Caption = 'Download Firebird'
      OnExecute = actDownloadFBFromFBExecute
      OnUpdate = actDownloadFBFromFBUpdate
    end
    object actWindowsBar: TAction
      Category = 'View'
      Caption = 'Windows Bar'
      OnExecute = actWindowsBarExecute
      OnUpdate = actWindowsBarUpdate
    end
    object actFieldPopupDescEdit: TAction
      Category = 'Fields'
      Caption = 'Popup description editor'
      OnExecute = actFieldPopupDescEditExecute
      OnUpdate = actFieldPopupDescEditUpdate
    end
    object actDependenciesShowOperations: TAction
      Category = 'Dependencies'
      Caption = 'Show actions'
      OnExecute = actDependenciesShowOperationsExecute
      OnUpdate = actDependenciesShowOperationsUpdate
    end
    object actLicensingService: TAction
      Category = 'Services'
      Caption = 'Activation Certificates'
      Hint = 'Activation Certificates'
      OnExecute = actLicensingServiceExecute
      OnUpdate = actLicensingServiceUpdate
    end
    object actReconnect: TAction
      Category = 'Database'
      Caption = 'Reconnect'
      Hint = 'Reconnect'
      ImageIndex = 203
      OnExecute = actReconnectExecute
    end
    object actActivateTriggers: TAction
      Category = 'Objects'
      Caption = 'Activate All Triggers'
      OnExecute = actActivateTriggersExecute
    end
    object actDeactivateTriggers: TAction
      Category = 'Objects'
      Caption = 'Deactivate All Triggers'
      OnExecute = actDeactivateTriggersExecute
    end
    object actGenerateHTMLDoc: TAction
      Category = 'Tools'
      Caption = 'Generate HTML Documentation'
      ImageIndex = 204
      OnExecute = actGenerateHTMLDocExecute
    end
    object actActivateSP: TAction
      Category = 'Objects'
      Caption = 'Activate All Stored Procedures'
      OnExecute = actActivateSPExecute
    end
    object actDeactivateSP: TAction
      Category = 'Objects'
      Caption = 'Deactivate All Stored Procedures'
      OnExecute = actDeactivateSPExecute
    end
    object actSecondaryFileManager: TAction
      Category = 'Tools'
      Caption = 'Secondary Files Manager'
      OnExecute = actSecondaryFileManagerExecute
      OnUpdate = actSecondaryFileManagerUpdate
    end
    object actMoveToRoot: TAction
      Category = 'Objects'
      Caption = 'Move Node to Root'
      OnExecute = actMoveToRootExecute
      OnUpdate = actMoveToRootUpdate
    end
    object actCopyAsRTF: TAction
      Category = 'Editor'
      Caption = 'Copy Text as RTF'
      ShortCut = 16471
      OnExecute = actCopyAsRTFExecute
      OnUpdate = actCopyAsRTFUpdate
    end
    object actDBViewer: TAction
      Category = 'Tools'
      Caption = 'Database Editor'
      OnExecute = actDBViewerExecute
    end
    object actCloneRegInfo: TAction
      Category = 'Database'
      Caption = 'Clone Registration Info'
      Hint = 'Clone Registration Record'
      ImageIndex = 292
      OnExecute = actCloneRegInfoExecute
    end
    object actGridIncrementalSearch: TAction
      Category = 'Grid'
      Caption = 'Incremental Search'
      ImageIndex = 64
      ShortCut = 16454
      OnExecute = actGridIncrementalSearchExecute
      OnUpdate = actGridIncrementalSearchUpdate
    end
    object actGridFilterDataset: TAction
      Category = 'Grid'
      Caption = 'Apply Filter'
      ImageIndex = 210
      OnExecute = actGridFilterDatasetExecute
      OnUpdate = actGridFilterDatasetUpdate
    end
    object actGridShowFilterPanel: TAction
      Category = 'Grid'
      Caption = 'Show Filter Panel'
      ImageIndex = 209
      ShortCut = 49222
      OnExecute = actGridShowFilterPanelExecute
      OnUpdate = actGridShowFilterPanelUpdate
    end
    object actGridFilterAddCriteria: TAction
      Category = 'Grid'
      Caption = 'Quick Add Filter Criteria'
      Hint = 'Quick Add Filter Criteria'
      ImageIndex = 215
      OnExecute = actGridFilterAddCriteriaExecute
      OnUpdate = actGridFilterAddCriteriaUpdate
    end
    object actIBEDirect: TAction
      Category = 'Help'
      Caption = 'IBExpert Direct...'
      OnExecute = actIBEDirectExecute
      OnUpdate = actIBEDirectUpdate
    end
    object actGrantToAll: TAction
      Category = 'Grants'
      Caption = 'Grant to All'
      Hint = 'Grant to All'
      ImageIndex = 166
      OnExecute = actGrantToAllExecute
    end
    object actGrantToAllGO: TAction
      Category = 'Grants'
      Caption = 'Grant to All with GRANT OPTION'
      Hint = 'Grant to All with GRANT OPTION'
      ImageIndex = 222
      OnExecute = actGrantToAllGOExecute
    end
    object actGrantAll: TAction
      Category = 'Grants'
      Caption = 'Grant All'
      Hint = 'Grant All'
      ImageIndex = 165
      OnExecute = actGrantAllExecute
    end
    object actGrantAllGO: TAction
      Category = 'Grants'
      Caption = 'Grant All with GRANT OPTION'
      Hint = 'Grant All with GRANT OPTION'
      ImageIndex = 223
      OnExecute = actGrantAllGOExecute
    end
    object actRevokeFromAll: TAction
      Category = 'Grants'
      Caption = 'Revoke from All'
      Hint = 'Revoke from All'
      ImageIndex = 221
      OnExecute = actRevokeFromAllExecute
    end
    object actRevokeAll: TAction
      Category = 'Grants'
      Caption = 'Revoke All'
      Hint = 'Revoke All'
      ImageIndex = 224
      OnExecute = actRevokeAllExecute
    end
    object actGrantsShowColumnPrivileges: TAction
      Category = 'Grants'
      Caption = 'Show Column Privileges'
      Hint = 'Show Column Privileges'
      OnExecute = actGrantsShowColumnPrivilegesExecute
      OnUpdate = actGrantsShowColumnPrivilegesUpdate
    end
    object actRecompileTriggers: TAction
      Category = 'Database'
      Caption = 'Recompile All Triggers'
      Hint = 'Recompile All Triggers'
      OnExecute = actRecompileTriggersExecute
      OnUpdate = actRecompileTriggersUpdate
    end
    object actGrantAllToAll: TAction
      Category = 'Grants'
      Caption = 'Grant All to All'
      Hint = 'Grant All to All'
      ImageIndex = 225
      OnExecute = actGrantAllToAllExecute
    end
    object actRevokeAllFromAll: TAction
      Category = 'Grants'
      Caption = 'Revoke All from All'
      Hint = 'Revoke All from All'
      ImageIndex = 226
      OnExecute = actRevokeAllFromAllExecute
    end
    object actWindowClose: TAction
      Category = 'Windows'
      Caption = 'Close'
      OnExecute = actWindowCloseExecute
    end
    object actWindowMaximize: TAction
      Category = 'Windows'
      Caption = 'Maximize'
      OnExecute = actWindowMaximizeExecute
    end
    object actWindowRestore: TAction
      Category = 'Windows'
      Caption = 'Restore'
      OnExecute = actWindowRestoreExecute
    end
    object actWindowMinimize: TAction
      Category = 'Windows'
      Caption = 'Minimize'
      OnExecute = actWindowMinimizeExecute
    end
    object actDatabaseMonitor: TAction
      Category = 'Services'
      Caption = 'Database Monitoring'
      Hint = 'Database Monitoring'
      OnExecute = actDatabaseMonitorExecute
      OnUpdate = actDatabaseMonitorUpdate
    end
    object actRunProcedure: TAction
      Caption = 'Run Procedure...'
      Hint = 'Run Procedure'
      ImageIndex = 56
      OnExecute = actRunProcedureExecute
      OnUpdate = actRunProcedureUpdate
    end
    object actDependenciesViewer: TAction
      Category = 'Tools'
      Caption = 'Dependencies Viewer'
      ImageIndex = 227
      OnExecute = actDependenciesViewerExecute
      OnUpdate = actDependenciesViewerUpdate
    end
    object actDependenciesShowDepTree: TAction
      Category = 'Dependencies'
      Caption = 'Show Dependencies Tree...'
      Hint = 'Show Dependencies Tree'
      ImageIndex = 227
      OnExecute = actDependenciesShowDepTreeExecute
      OnUpdate = actDependenciesShowDepTreeUpdate
    end
    object actDependenciesPrint: TAction
      Category = 'Dependencies'
      Caption = 'Print...'
      Hint = 'Print dependencies tree'
      ImageIndex = 53
      OnExecute = actDependenciesPrintExecute
      OnUpdate = actDependenciesPrintUpdate
    end
    object actNewQueryBuilder: TAction
      Category = 'Tools'
      Caption = 'actNewQueryBuilder'
      ShortCut = 57410
      OnExecute = actNewQueryBuilderExecute
    end
    object actSPTriggerAnalyzer: TAction
      Category = 'Tools'
      Caption = 'SP/Triggers/Views Analyzer'
      OnExecute = actSPTriggerAnalyzerExecute
      OnUpdate = actSPTriggerAnalyzerUpdate
    end
    object actBugTrack: TAction
      Category = 'Help'
      Caption = 'Bug Track System'
      Hint = 'Bug Track System'
      ImageIndex = 232
      Visible = False
      OnExecute = actBugTrackExecute
      OnUpdate = actBugTrackUpdate
    end
    object actCompareDatabases: TAction
      Category = 'Tools'
      Caption = 'Database Comparer'
      OnExecute = actCompareDatabasesExecute
      OnUpdate = actCompareDatabasesUpdate
    end
    object actSaveGridData: TAction
      Caption = 'Save Grid Data as...'
      ShortCut = 24659
      OnExecute = actSaveGridDataExecute
      OnUpdate = actSaveGridDataUpdate
    end
    object actLogManager: TAction
      Category = 'Tools'
      Caption = 'Log Manager'
      ImageIndex = 132
      OnExecute = actLogManagerExecute
      OnUpdate = actLogManagerUpdate
    end
    object actSelectDBObject: TAction
      Category = 'Tools'
      Caption = 'Select Object'
      ShortCut = 24699
      OnExecute = actSelectDBObjectExecute
    end
    object actDependenciesDropObject: TAction
      Category = 'Dependencies'
      Caption = 'Drop object'
      ShortCut = 16430
      OnExecute = actDependenciesDropObjectExecute
      OnUpdate = actDependenciesDropObjectUpdate
    end
    object actEditorLoadIntoScriptExecutive: TAction
      Category = 'Editor'
      Caption = 'Load into Script Executive'
      ImageIndex = 153
      OnExecute = actEditorLoadIntoScriptExecutiveExecute
      OnUpdate = actEditorLoadIntoScriptExecutiveUpdate
    end
    object actMinimizeAllDBWindows: TAction
      Category = 'WindowsManager'
      Caption = 'Minimize all Database Windows'
      OnExecute = actMinimizeAllDBWindowsExecute
    end
    object actRestoreAllDBWindows: TAction
      Category = 'WindowsManager'
      Caption = 'Restore all Database Windows'
      OnExecute = actRestoreAllDBWindowsExecute
    end
    object actTreeListCopyCurrent: TAction
      Caption = 'Copy current record to clipboard'
      OnExecute = actTreeListCopyCurrentExecute
      OnUpdate = actTreeListCopyCurrentUpdate
    end
    object actTreeListCopyAll: TAction
      Caption = 'Copy all to clipboard'
      OnExecute = actTreeListCopyAllExecute
      OnUpdate = actTreeListCopyAllUpdate
    end
    object actGridCopyCurrentRecordAsUpdate: TAction
      Category = 'Grid'
      Caption = 'Copy selected record(s) as UPDATE'
      OnExecute = actGridCopyCurrentRecordAsUpdateExecute
      OnUpdate = actGridCopyCurrentRecordAsUpdateUpdate
    end
    object actSortProjectNodes: TAction
      Category = 'ProjectView'
      Caption = 'Sort child nodes alphabetically'
      OnExecute = actSortProjectNodesExecute
      OnUpdate = actSortProjectNodesUpdate
    end
    object actTableComparer: TAction
      Category = 'Tools'
      Caption = 'Table Data Comparer'
      OnExecute = actTableComparerExecute
      OnUpdate = actTableComparerUpdate
    end
    object actEditorSaveAs: TAction
      Category = 'Editor'
      Caption = 'Save As...'
      ImageIndex = 250
      OnExecute = actEditorSaveAsExecute
      OnUpdate = actEditorSaveAsUpdate
    end
    object actGridSetNow: TAction
      Category = 'Grid'
      Caption = 'Set as NOW'
      OnExecute = actGridSetNowExecute
      OnUpdate = actGridSetNowUpdate
    end
    object actConstraintOpenFKTable: TAction
      Category = 'Constraints'
      Caption = 'Open foreign table...'
      Hint = 'Open foreign table...'
      OnExecute = actConstraintOpenFKTableExecute
      OnUpdate = actConstraintOpenFKTableUpdate
    end
    object actRecreateDatabase: TAction
      Category = 'Database'
      Caption = 'Recreate Database'
      OnExecute = actRecreateDatabaseExecute
      OnUpdate = actRecreateDatabaseUpdate
    end
    object actDataAnalysis: TAction
      Category = 'Tools'
      Caption = 'Data Analysis'
      ImageIndex = 254
      OnExecute = actDataAnalysisExecute
      OnUpdate = actDataAnalysisUpdate
    end
    object actActivateSelectedSP: TAction
      Category = 'Objects'
      Caption = 'Activate selected procedures'
      OnExecute = actActivateSelectedSPExecute
    end
    object actDeactivateSelectedSP: TAction
      Category = 'Objects'
      Caption = 'Deactivate selected procedures'
      OnExecute = actDeactivateSelectedSPExecute
    end
    object actActivateSelectedTriggers: TAction
      Category = 'Objects'
      Caption = 'Activate selected triggers'
      OnExecute = actActivateSelectedTriggersExecute
    end
    object actDeactivateSelectedTriggers: TAction
      Category = 'Objects'
      Caption = 'Deactivate selected triggers'
      OnExecute = actDeactivateSelectedTriggersExecute
    end
    object actCustomerArea: TAction
      Category = 'Help'
      Caption = 'IBExpert Customer Area'
      Visible = False
      OnExecute = actCustomerAreaExecute
      OnUpdate = actCustomerAreaUpdate
    end
    object actIndexCopyName: TAction
      Category = 'Indices'
      Caption = 'Copy index name'
      ImageIndex = 48
      OnExecute = actIndexCopyNameExecute
      OnUpdate = actIndexCopyNameUpdate
    end
    object actSortChildsDesc: TAction
      Category = 'Objects'
      Caption = 'Sort child nodes descending'
      OnExecute = actSortChildsDescExecute
    end
    object actSortChildsAsc: TAction
      Category = 'Objects'
      Caption = 'Sort child nodes ascending'
      OnExecute = actSortChildsAscExecute
    end
    object actSortSiblingAsc: TAction
      Category = 'Objects'
      Caption = 'Sort sibling nodes ascending'
      OnExecute = actSortSiblingAscExecute
    end
    object actSortSiblingDesc: TAction
      Category = 'Objects'
      Caption = 'Sort sibling nodes descending'
      OnExecute = actSortSiblingDescExecute
    end
    object actFloatingWindowsManager: TAction
      Category = 'Windows'
      Caption = 'Floating Windows Manager'
      OnExecute = actFloatingWindowsManagerExecute
    end
    object actIBEScriptExecute: TAction
      Category = 'Blocks'
      Caption = 'Execute'
      ImageIndex = 56
      ShortCut = 120
      OnExecute = actIBEScriptExecuteExecute
      OnUpdate = actIBEScriptExecuteUpdate
    end
    object actWindowCloseExceptThis: TAction
      Category = 'Windows'
      Caption = 'Close all except this'
      OnExecute = actWindowCloseExceptThisExecute
    end
    object actControlCenter: TAction
      Category = 'Services'
      Caption = 'HK-Software Services Control Center'
      Visible = False
      OnExecute = actControlCenterExecute
    end
    object actEditorGoto: TAction
      Category = 'Editor'
      Caption = 'Go to...'
      ShortCut = 16455
      OnExecute = actEditorGotoExecute
      OnUpdate = actEditorGotoUpdate
    end
    object actShedulerNewObject: TAction
      Category = 'Sheduler'
      Caption = 'New task...'
      OnExecute = actShedulerNewObjectExecute
    end
    object actShedulerEditObject: TAction
      Category = 'Sheduler'
      Caption = 'Edit task...'
      OnExecute = actShedulerEditObjectExecute
    end
    object actShedulerDeleteObject: TAction
      Category = 'Sheduler'
      Caption = 'Delete task'
      OnExecute = actShedulerDeleteObjectExecute
    end
    object actShedulerNewFolder: TAction
      Category = 'Sheduler'
      Caption = 'New folder...'
      ImageIndex = 288
      OnExecute = actShedulerNewFolderExecute
    end
    object actShedulerEditFolder: TAction
      Category = 'Sheduler'
      Caption = 'Edit folder...'
      OnExecute = actShedulerEditFolderExecute
    end
    object actShedulerDeleteFolder: TAction
      Category = 'Sheduler'
      Caption = 'Delete folder'
      OnExecute = actShedulerDeleteFolderExecute
    end
    object actShedulerConnect: TAction
      Category = 'Sheduler'
      Caption = 'Connect to Sheduler Server'
      ImageIndex = 1
      OnExecute = actShedulerConnectExecute
    end
    object actShedulerDisconnect: TAction
      Category = 'Sheduler'
      Caption = 'Disconnect from Sheduler Server'
      ImageIndex = 2
      OnExecute = actShedulerDisconnectExecute
    end
    object actCopyDBObject: TAction
      Category = 'Tools'
      Caption = 'Copy database object'
      OnExecute = actCopyDBObjectExecute
    end
    object actCopyDBObjectMenu: TAction
      Category = 'Objects'
      Caption = 'Copy object...'
      OnExecute = actCopyDBObjectMenuExecute
    end
    object actEditorConvertToUnicode: TAction
      Category = 'Editor'
      Caption = 'Convert TO UTF8'
      OnExecute = actEditorConvertToUnicodeExecute
    end
    object actEditorConvertFromUnicode: TAction
      Category = 'Editor'
      Caption = 'Convert FROM UTF8'
      OnExecute = actEditorConvertFromUnicodeExecute
    end
    object actFieldCreateFK: TAction
      Category = 'Fields'
      Caption = 'Create Foreign Key...'
      OnExecute = actFieldCreateFKExecute
      OnUpdate = actFieldCreateFKUpdate
    end
    object actODBCViewer: TAction
      Category = 'Tools'
      Caption = 'ODBC Viewer'
      OnExecute = actODBCViewerExecute
    end
    object actContentsLocal: TAction
      Category = 'Help'
      Caption = 'Contents (local)'
      ImageIndex = 25
      OnExecute = actContentsLocalExecute
    end
    object actRecordDemo: TAction
      Caption = 'Start record'
      ImageIndex = 279
      OnExecute = actRecordDemoExecute
    end
    object actTodo: TAction
      Category = 'Tools'
      Caption = 'To-do List'
      ImageIndex = 293
      OnExecute = actTodoExecute
    end
    object actApplyBlock: TAction
      Category = 'Objects'
      Caption = 'Apply block to selected objects...'
      OnExecute = actApplyBlockExecute
      OnUpdate = actApplyBlockUpdate
    end
    object actCodeFormatOptions: TAction
      Category = 'Options'
      Caption = 'Code formatting options'
      OnExecute = actCodeFormatOptionsExecute
      OnUpdate = actCodeFormatOptionsUpdate
    end
    object actShowTableData: TAction
      Caption = 'Show data...'
      ShortCut = 120
      OnExecute = actShowTableDataExecute
      OnUpdate = actShowTableDataUpdate
    end
    object actNewUDBScript: TAction
      Category = 'Blocks'
      Caption = 'New block/script/webform...'
      ShortCut = 16462
      OnExecute = actNewUDBScriptExecute
      OnUpdate = actNewUDBScriptUpdate
    end
    object actTraceAndAudit: TAction
      Category = 'Services'
      Caption = 'Trace and audit'
      OnExecute = actTraceAndAuditExecute
    end
    object actImportData: TAction
      Category = 'Tools'
      Caption = 'Import data'
      OnExecute = actImportDataExecute
    end
    object actDependenciesApplyBlock: TAction
      Category = 'Dependencies'
      Caption = 'Apply block to selected objects...'
      OnExecute = actDependenciesApplyBlockExecute
      OnUpdate = actDependenciesApplyBlockUpdate
    end
    object actFieldDropFK: TAction
      Category = 'Fields'
      Caption = 'Drop Foreign Key'
      OnExecute = actFieldDropFKExecute
      OnUpdate = actFieldDropFKUpdate
    end
    object actToggleFullScreen: TAction
      Category = 'View'
      Caption = 'Fullscreen'
      Visible = False
      OnExecute = actToggleFullScreenExecute
    end
    object actCreateEditEventBlock: TAction
      Category = 'Blocks'
      Caption = 'Create/Edit event block...'
      OnExecute = actCreateEditEventBlockExecute
    end
    object actDependenciesRecompileAll: TAction
      Category = 'Dependencies'
      Caption = 'actDependenciesRecompileAll'
      OnExecute = actDependenciesRecompileAllExecute
      OnUpdate = actDependenciesRecompileAllUpdate
    end
    object actDependenciesRecompileSelected: TAction
      Category = 'Dependencies'
      Caption = 'actDependenciesRecompileSelected'
      OnExecute = actDependenciesRecompileSelectedExecute
      OnUpdate = actDependenciesRecompileSelectedUpdate
    end
    object actEditorFormatText: TAction
      Category = 'Editor'
      Caption = 'Format selected text'
      ImageIndex = 294
      OnExecute = actEditorFormatTextExecute
      OnUpdate = actEditorFormatTextUpdate
    end
    object actGetTableStatistics: TAction
      Category = 'Objects'
      Caption = 'Get statistics for selected table(s)'
      OnExecute = actGetTableStatisticsExecute
    end
  end
  object SelectImages: TImageList
    Width = 28
    Left = 416
    Top = 216
    Bitmap = {7590 bytes}
  end
  object FibEH: TpFibErrorHandler
    OnFIBErrorEvent = FibEHFIBErrorEvent
    Left = 664
    Top = 112
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
  object mtRtf: TkbmMemTable
    Active = True
    AutoSort = False
    SortOptions = []
    PersistentSaveOptions = ['mtfSaveData', 'mtfSaveNonVisible']
    PersistentSaveFormat = mtsfBinary
    DoBinaryLocate = False
    Version = '1.36'
    Left = 688
    Top = 270
    object mtRtfLine: TMemoField
      FieldName = 'Line'
      BlobType = ftMemo
    end
  end
  object RtfExp: TmwRtfExport
    Title = '(Untitled)'
    UseBackGround = False
    Left = 688
    Top = 240
  end
  object PrintPars: TIBwmSQLSyn
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
    SymbolAttri.Style = ['fsBold']
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
    BracketPairAttri.Background = clWindow
    BracketPairAttri.Foreground = clWindowText
    BracketPairAttri.Style = []
    SelectedWordAttri.Background = clWindow
    SelectedWordAttri.Foreground = clWindowText
    SelectedWordAttri.Style = []
    Left = 745
    Top = 235
  end
  object bm: TdxBarManager
    AllowCallFromAnotherForm = True
    AlwaysSaveText = True
    AutoDockColor = False
    Scaled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        Caption = 'Main Menu'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 0
        FloatTop = 0
        FloatClientWidth = 0
        FloatClientHeight = 0
        IsMainMenu = True
        ItemLinks = None
        MultiLine = True
        Name = 'Main Menu'
        NotDocking = ['dsNone']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end
      item
        AllowQuickCustomizing = False
        Caption = 'Database'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 26
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'tbDatabase'
        OneOnRow = False
        Row = 1
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        Caption = 'Tools'
        DockedDockingStyle = dsTop
        DockedLeft = 186
        DockedTop = 26
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'tbTools'
        OneOnRow = False
        Row = 1
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        Caption = 'New database objects'
        DockedDockingStyle = dsTop
        DockedLeft = 726
        DockedTop = 26
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'tbNewDBObjects'
        OneOnRow = False
        Row = 1
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        AllowQuickCustomizing = False
        Caption = 'Editor'
        DockedDockingStyle = dsTop
        DockedLeft = 497
        DockedTop = 26
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'tbEdit'
        OneOnRow = False
        Row = 1
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Windows Bar'
        DockedDockingStyle = dsBottom
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsBottom
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        MultiLine = True
        Name = 'Windows Bar'
        OneOnRow = True
        RotateWhenVertical = False
        Row = 0
        UseOwnFont = False
        UseRecentItems = False
        UseRestSpace = True
        Visible = True
        WholeRow = True
      end
    >
    Categories.Strings = ['Default', 'Database', 'View', 'Tools', 'Options', 'Services', 'Windows', 'Help', 'Menus', 'OperMenu', 'SQLAParamsFrame', 'ProjectPopup', 'RecentMenu', 'WindowsMenu', 'Editors actions', 'SP Editor', 'Insp', 'Status', 'Data Grids', 'Indices', 'Recent Load Save', 'Constraints', 'Dependencies', 'Designer', 'Fields', 'Grants', 'Grids', 'Blocks', 'Sheduler', 'Todo']
    Categories.ItemsVisibles = [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
    Categories.Visibles = [True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True]
    DockColor = clBtnFace
    Images = MenuImages
    IniFileName = 'IBExpert.tb'
    PopupMenuLinks = []
    ShowShortCutInHint = True
    StretchGlyphs = False
    Style = bmsFlat
    UseSystemFont = False
    OnBarDockingStyleChange = bmBarDockingStyleChange
    OnDocking = bmDocking
    OnShowToolbarsPopup = bmShowToolbarsPopup
    Left = 584
    Top = 80
    DockControlHeights = [0, 0, 52, 22]
    object miDatabase: TdxBarSubItem
      Caption = 'Database'
      Category = 8
      Visible = ivAlways
      ItemLinks = <
        item
          Item = miDBRegistrationInfo
          Visible = True
        end
        item
          BeginGroup = True
          Item = RegisterDatabase1
          Visible = True
        end
        item
          Item = UnregisterDatabase1
          Visible = True
        end
        item
          BeginGroup = True
          Item = ConnecttoDatabase1
          Visible = True
        end
        item
          Item = dxBarButton73
          Visible = True
        end
        item
          Item = DisconnectfromDatabase1
          Visible = True
        end
        item
          BeginGroup = True
          Item = CreateDatabase1
          Visible = True
        end
        item
          Item = DropDatabase1
          Visible = True
        end
        item
          Item = dxBarButton122
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton43
          Visible = True
        end
        item
          Item = dxBarButton58
          Visible = True
        end
        item
          Item = dxBarButton92
          Visible = True
        end
        item
          BeginGroup = True
          Item = NewDomain1
          Visible = True
        end
        item
          Item = miNewTable
          Visible = True
        end
        item
          Item = NewView1
          Visible = True
        end
        item
          Item = NewProcedure1
          Visible = True
        end
        item
          Item = NewTrigger1
          Visible = True
        end
        item
          Item = NewGenerator1
          Visible = True
        end
        item
          Item = NewException1
          Visible = True
        end
        item
          Item = NewUDF1
          Visible = True
        end
        item
          Item = NewRole1
          Visible = True
        end
        item
          BeginGroup = True
          Item = Exit1
          Visible = True
        end
      >
    end
    object RegisterDatabase1: TdxBarButton
      Action = actRegisterDatabase
      Category = 1
    end
    object UnregisterDatabase1: TdxBarButton
      Action = actUnregisterDatabase
      Category = 1
    end
    object ConnecttoDatabase1: TdxBarButton
      Action = actConnectToDatabase
      Category = 1
    end
    object DisconnectfromDatabase1: TdxBarButton
      Action = actDisconnectFromDatabase
      Category = 1
    end
    object CreateDatabase1: TdxBarButton
      Action = aCreateDatabase
      Category = 1
    end
    object DropDatabase1: TdxBarButton
      Action = aDropDatabase
      Category = 1
    end
    object NewDomain1: TdxBarButton
      Action = actNewDomain
      Category = 1
    end
    object miNewTable: TdxBarButton
      Action = actNewTable
      Category = 1
    end
    object NewView1: TdxBarButton
      Action = actNewView
      Category = 1
    end
    object NewProcedure1: TdxBarButton
      Action = actNewProcedure
      Category = 1
    end
    object NewTrigger1: TdxBarButton
      Action = actNewTrigger
      Category = 1
    end
    object NewGenerator1: TdxBarButton
      Action = actNewGenerator
      Category = 1
    end
    object NewException1: TdxBarButton
      Action = actNewException
      Category = 1
    end
    object NewUDF1: TdxBarButton
      Action = actNewUDF
      Category = 1
    end
    object NewRole1: TdxBarButton
      Action = actNewRole
      Category = 1
    end
    object Exit1: TdxBarButton
      Action = aExitProgram
      Category = 1
    end
    object miView: TdxBarSubItem
      Caption = 'View'
      Category = 8
      Visible = ivAlways
      ItemLinks = <
        item
          Item = DBExplorer1
          Visible = True
        end
        item
          Item = dxBarButton24
          Visible = True
        end
        item
          Item = dxBarButton70
          Visible = True
        end
        item
          BeginGroup = True
          Item = bsiToolbars
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton65
          Visible = True
        end
        item
          Item = dxBarButton66
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton148
          Visible = True
        end
      >
    end
    object DBExplorer1: TdxBarButton
      Action = actToggleInspector
      Category = 2
      ButtonStyle = bsChecked
    end
    object MainToolbars1: TdxBarButton
      Action = actToggleMainToolbar
      Category = 2
    end
    object miOptions: TdxBarSubItem
      Caption = 'Options'
      Category = 8
      Visible = ivAlways
      ItemLinks = <
        item
          Item = EnvironmentOptions1
          Visible = True
        end
        item
          Item = EditorOptions1
          Visible = True
        end
        item
          Item = dxBarButton21
          Visible = True
        end
        item
          BeginGroup = True
          Item = KeyboardTemplates1
          Visible = True
        end
        item
          Item = GeneralTemplates1
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton34
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton68
          Visible = True
        end
      >
    end
    object EnvironmentOptions1: TdxBarButton
      Action = actEnvironmentOptions
      Category = 4
    end
    object EditorOptions1: TdxBarButton
      Action = actEditorOptions
      Category = 4
    end
    object KeyboardTemplates1: TdxBarButton
      Action = actKeyboardTemplates
      Category = 4
    end
    object GeneralTemplates1: TdxBarButton
      Action = actGeneralTemplates
      Category = 4
    end
    object miTools: TdxBarSubItem
      Caption = 'Tools'
      Category = 8
      Visible = ivAlways
      ItemLinks = <
        item
          Item = miExternalTools
          Visible = True
        end
        item
          BeginGroup = True
          Item = SQLEditor1
          Visible = True
        end
        item
          Item = NewSQLEditor1
          Visible = True
        end
        item
          Item = dxBarButton42
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton123
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton20
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton136
          Visible = True
        end
        item
          BeginGroup = True
          Item = SQLMonitor1
          Visible = True
        end
        item
          Item = dxBarButton102
          Visible = True
        end
        item
          Item = dxBarButton11
          Visible = True
        end
        item
          Item = dxBarButton106
          Visible = True
        end
        item
          Item = dxBarButton118
          Visible = True
        end
        item
          Item = dxBarButton109
          Visible = True
        end
        item
          Item = dxBarButton145
          Visible = True
        end
        item
          BeginGroup = True
          Item = SearchinMetadata1
          Visible = True
        end
        item
          Item = ExtractMetadata1
          Visible = True
        end
        item
          Item = PrintMetadata1
          Visible = True
        end
        item
          Item = dxBarButton76
          Visible = True
        end
        item
          BeginGroup = True
          Item = UserManager1
          Visible = True
        end
        item
          Item = GrantManager1
          Visible = True
        end
        item
          Item = dxBarButton79
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton142
          Visible = True
        end
        item
          BeginGroup = True
          Item = LocalizeIBMessages1
          Visible = True
        end
        item
          Item = LocalizeQuickDesk1
          Visible = True
        end
        item
          BeginGroup = True
          Item = ReportManager1
          Visible = True
        end
        item
          Item = BlobViewerEditor1
          Visible = True
        end
        item
          BeginGroup = True
          Item = Databasedesigner1
          Visible = True
        end
        item
          Item = dxBarButton41
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton140
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton82
          Visible = True
        end
      >
    end
    object SQLEditor1: TdxBarButton
      Action = aSQLEditor
      Category = 3
      UnclickAfterDoing = False
    end
    object NewSQLEditor1: TdxBarButton
      Action = aNewSQLEditor
      Category = 3
      UnclickAfterDoing = False
    end
    object SQLMonitor1: TdxBarButton
      Action = aSQLMonitor
      Category = 3
      UnclickAfterDoing = False
    end
    object SearchinMetadata1: TdxBarButton
      Action = aFindMetadata
      Category = 3
    end
    object ExtractMetadata1: TdxBarButton
      Action = aExtractMetadata
      Category = 3
    end
    object PrintMetadata1: TdxBarButton
      Action = aPrintMetadata
      Category = 3
    end
    object UserManager1: TdxBarButton
      Action = aUserManager
      Category = 3
    end
    object GrantManager1: TdxBarButton
      Action = aGrantManager
      Category = 3
    end
    object LocalizeIBMessages1: TdxBarButton
      Action = aLocalizeIBMes
      Category = 3
    end
    object LocalizeQuickDesk1: TdxBarButton
      Action = aLocalizeIbExpert
      Category = 3
    end
    object ReportManager1: TdxBarButton
      Action = aReportManager
      Category = 3
    end
    object BlobViewerEditor1: TdxBarButton
      Action = actBlobEditor
      Category = 3
    end
    object Databasedesigner1: TdxBarButton
      Action = actDBDesigner
      Category = 3
    end
    object miServices: TdxBarSubItem
      Caption = 'Services'
      Category = 8
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton100
          Visible = True
        end
        item
          BeginGroup = True
          Item = BackupDatabase1
          Visible = True
        end
        item
          Item = RestoreDatabase1
          Visible = True
        end
        item
          BeginGroup = True
          Item = ServerProperties1
          Visible = True
        end
        item
          Item = dxBarButton105
          Visible = True
        end
        item
          BeginGroup = True
          Item = DatabaseValidation1
          Visible = True
        end
        item
          Item = DatabaseStatistic1
          Visible = True
        end
        item
          Item = DatabaseProperties1
          Visible = True
        end
        item
          Item = DatabaseShutdown2
          Visible = True
        end
        item
          Item = DatabaseOnline2
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton50
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton101
          Visible = True
        end
      >
    end
    object BackupDatabase1: TdxBarButton
      Action = aBackupDatabase
      Category = 5
    end
    object RestoreDatabase1: TdxBarButton
      Action = aRestoreDatabase
      Category = 5
    end
    object ServerProperties1: TdxBarButton
      Action = aServerProperties
      Category = 5
    end
    object DatabaseValidation1: TdxBarButton
      Action = aDatabaseValidation
      Category = 5
    end
    object DatabaseStatistic1: TdxBarButton
      Action = aDatabaseStatistic
      Category = 5
    end
    object DatabaseProperties1: TdxBarButton
      Action = aDatabaseProperties
      Category = 5
    end
    object DatabaseShutdown2: TdxBarButton
      Action = actDatabaseShutdown
      Category = 5
    end
    object DatabaseOnline2: TdxBarButton
      Action = actDatabaseOnline
      Category = 5
    end
    object miPlugins: TdxBarSubItem
      Caption = 'Plugins'
      Category = 8
      Visible = ivAlways
      ItemLinks = []
    end
    object WindowsManager1: TdxBarButton
      Action = actWindowsManager
      Category = 6
    end
    object CloseAll1: TdxBarButton
      Action = actCloseAll
      Category = 6
      UnclickAfterDoing = False
    end
    object Cascade1: TdxBarButton
      Action = actWindowsCascade
      Category = 6
    end
    object TileHorizontally1: TdxBarButton
      Action = actWindowsHorizontal
      Category = 6
    end
    object TileVertically1: TdxBarButton
      Action = actWindowsVertical
      Category = 6
    end
    object MinimizeAll1: TdxBarButton
      Action = actWindowsMinimize
      Category = 6
    end
    object Arrange1: TdxBarButton
      Action = actWindowsArrange
      Category = 6
    end
    object miWindows: TdxBarSubItem
      Caption = 'Windows'
      Category = 8
      Visible = ivAlways
      OnClick = miWindowsClick
      ItemLinks = <
        item
          Item = WindowsManager1
          Visible = True
        end
        item
          Item = CloseAll1
          Visible = True
        end
        item
          BeginGroup = True
          Item = Cascade1
          Visible = True
        end
        item
          Item = TileHorizontally1
          Visible = True
        end
        item
          Item = TileVertically1
          Visible = True
        end
        item
          Item = MinimizeAll1
          Visible = True
        end
        item
          Item = Arrange1
          Visible = True
        end
      >
    end
    object Whatsnew1: TdxBarButton
      Action = actWhatsNew
      Category = 7
    end
    object Contents1: TdxBarButton
      Action = actContents
      Category = 7
    end
    object miAdditionalHelps: TdxBarSubItem
      Action = actAdditionalHelp
      Category = 7
      ItemLinks = []
    end
    object ProductHomePage1: TdxBarButton
      Action = actHomePage
      Category = 7
    end
    object Sendbugreportsto1: TdxBarButton
      Action = actSendBugReports
      Category = 7
    end
    object miHelp: TdxBarSubItem
      Caption = 'Help'
      Category = 8
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton128
          Visible = True
        end
        item
          BeginGroup = True
          Item = Whatsnew1
          Visible = True
        end
        item
          Item = Contents1
          Visible = True
        end
        item
          Item = dxBarButton141
          Visible = True
        end
        item
          BeginGroup = True
          Item = miAdditionalHelps
          Visible = True
        end
        item
          BeginGroup = True
          Item = ProductHomePage1
          Visible = True
        end
        item
          Item = Sendbugreportsto1
          Visible = True
        end
        item
          BeginGroup = True
          Item = About1
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton85
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton67
          Visible = True
        end
        item
          Item = dxBarButton69
          Visible = True
        end
      >
    end
    object miNewObject: TdxBarButton
      Action = actNewObject
      Category = 9
    end
    object miEditObject: TdxBarButton
      Action = actEditObject
      Category = 9
    end
    object miDropObject: TdxBarButton
      Action = actDropObject
      Category = 9
    end
    object CreateSIUDprocedures1: TdxBarButton
      Action = actCreateProcsForTable
      Category = 9
    end
    object Autograntprivileges1: TdxBarButton
      Action = actAutoGrant
      Category = 9
    end
    object miSelDb: TdxBarSubItem
      Caption = 'Goto Database'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = miSelectDatabase
          Visible = True
        end
      >
    end
    object miSelectDatabase: TdxBarButton
      Caption = 'Select Database'
      Category = 9
      Visible = ivAlways
    end
    object miJumpTo: TdxBarSubItem
      Caption = 'Goto Object'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = Domains1
          Visible = True
        end
        item
          Item = Tables1
          Visible = True
        end
        item
          Item = Views1
          Visible = True
        end
        item
          Item = Triggers1
          Visible = True
        end
        item
          Item = Procedures1
          Visible = True
        end
        item
          Item = Generators1
          Visible = True
        end
        item
          Item = Exceptions1
          Visible = True
        end
        item
          Item = UDFs1
          Visible = True
        end
        item
          Item = Roles1
          Visible = True
        end
      >
    end
    object Domains1: TdxBarButton
      Action = actJumpToDomains
      Category = 9
    end
    object Tables1: TdxBarButton
      Action = actJumpToTables
      Category = 9
    end
    object Views1: TdxBarButton
      Action = actJumpToViews
      Category = 9
    end
    object Triggers1: TdxBarButton
      Action = actJumpToTriggers
      Category = 9
    end
    object Procedures1: TdxBarButton
      Action = actJumpToProcedures
      Category = 9
    end
    object Generators1: TdxBarButton
      Action = actJumpToGenerators
      Category = 9
    end
    object Exceptions1: TdxBarButton
      Action = actJumpToExceptions
      Category = 9
    end
    object UDFs1: TdxBarButton
      Action = actJumpToUDFs
      Category = 9
    end
    object Roles1: TdxBarButton
      Action = actJumpToRoles
      Category = 9
    end
    object RefreshM: TdxBarButton
      Action = actRefresh
      Category = 9
    end
    object miDBRegistrationInfo: TdxBarButton
      Action = actDatabaseRegistrationInfo
      Category = 9
    end
    object miViewToolbar: TdxBarButton
      Action = actToggleToolbar
      Category = 9
      ButtonStyle = bsChecked
    end
    object miViewSQLAssistant: TdxBarButton
      Action = actToggleSQLA
      Category = 9
      ButtonStyle = bsChecked
    end
    object InspectorPageMode1: TdxBarButton
      Action = actInspectorPageMode
      Category = 9
    end
    object miHideDisconnected: TdxBarButton
      Action = actHideDisconnected
      Category = 9
      ButtonStyle = bsChecked
    end
    object dxBarButton1: TdxBarButton
      Action = actShowDescriptions
      Category = 9
      ButtonStyle = bsChecked
    end
    object bbSQLAParamsFmNoSort: TdxBarButton
      Category = 10
      Visible = ivAlways
      ButtonStyle = bsChecked
      ShortCut = 24656
    end
    object NewFolder1: TdxBarButton
      Action = actNewFolder
      Category = 11
    end
    object miAddObject: TdxBarButton
      Action = actAddObject
      Category = 11
    end
    object miRemoveObject: TdxBarButton
      Action = actDropObject
      Category = 11
    end
    object InsertUserItemfromClipboard1: TdxBarButton
      Action = actCreateUserItemFromClipboard
      Category = 11
    end
    object aCopyUserItemToClipboard1: TdxBarButton
      Action = actCopyUserItemToClipboard
      Category = 11
    end
    object Clearrecentlist1: TdxBarButton
      Action = actDeleteFromRecent
      Category = 12
    end
    object Clearrecentlist2: TdxBarButton
      Action = actClearRecentList
      Category = 12
    end
    object Close1: TdxBarButton
      Action = actCloseWindow
      Category = 13
    end
    object Closealldatabasewindows1: TdxBarButton
      Action = actCloseAllDBWindows
      Category = 13
    end
    object miRegisterIBE: TdxBarButton
      Caption = 'Register!'
      Category = 8
      Visible = ivAlways
      OnClick = miRegisterIBEClick
    end
    object miToggleBookmark: TdxBarSubItem
      Caption = 'Toggle Bookmarks'
      Category = 14
      Visible = ivAlways
      ItemLinks = []
    end
    object miGotoBookmark: TdxBarSubItem
      Caption = 'Goto Bookmarks'
      Category = 14
      Visible = ivAlways
      ItemLinks = []
    end
    object miEditorCut: TdxBarButton
      Action = actEditorCut
      Category = 14
    end
    object miEditorCopy: TdxBarButton
      Action = actEditorCopy
      Category = 14
    end
    object miEditorPaste: TdxBarButton
      Action = actEditorPaste
      Category = 14
    end
    object miEditorSelectAll: TdxBarButton
      Action = actEditorSelectAll
      Category = 14
    end
    object dxBarButton2: TdxBarButton
      Action = actEditorFind
      Category = 14
    end
    object dxBarButton3: TdxBarButton
      Action = actEditorReplace
      Category = 14
    end
    object dxBarButton4: TdxBarButton
      Action = actEditorSearchAgain
      Category = 14
    end
    object dxBarButton5: TdxBarButton
      Action = actEditorIncrementalSearch
      Category = 14
    end
    object dxBarButton6: TdxBarButton
      Action = actEditorLoadFromFile
      Category = 14
      ButtonStyle = bsDropDown
      DropDownMenu = bpmRecentLoad
    end
    object dxBarButton8: TdxBarButton
      Action = actEditorPrint
      Category = 14
    end
    object dxBarButton9: TdxBarButton
      Action = actEditorPrintPreview
      Category = 14
    end
    object dxBarButton10: TdxBarButton
      Action = actEditorPageSetup
      Category = 14
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 16
      Hint = 'New Item'
      Visible = ivAlways
    end
    object tbsPos: TdxBarStatic
      Category = 17
      Visible = ivAlways
      BorderStyle = sbsLowered
      LeftIndent = 4
      Width = 70
    end
    object tbsModified: TdxBarStatic
      Category = 17
      Visible = ivAlways
      BorderStyle = sbsLowered
      LeftIndent = 4
      Width = 80
    end
    object About1: TdxBarButton
      Action = actAbout
      Category = 7
    end
    object dxBarButton12: TdxBarButton
      Action = actGridSetEmptyString
      Category = 18
    end
    object dxBarButton13: TdxBarButton
      Action = actGridSetNull
      Category = 18
    end
    object dxBarButton14: TdxBarButton
      Action = actGridResetFieldsOrder
      Category = 18
    end
    object dxBarButton15: TdxBarButton
      Action = actGridDuplicateRecord
      Category = 18
    end
    object dxBarButton16: TdxBarButton
      Action = actGridCopyRecord
      Category = 18
    end
    object dxBarButton17: TdxBarButton
      Action = actGridCopyCurrentRecord
      Category = 18
    end
    object dxBarButton18: TdxBarButton
      Action = actGridGroupFields
      Category = 18
    end
    object dxBarButton19: TdxBarButton
      Action = actGridUngroupFields
      Category = 18
    end
    object dxBarButton20: TdxBarButton
      Action = actScriptExecutive
      Category = 3
      ImageIndex = 295
    end
    object dxBarButton21: TdxBarButton
      Action = actVisualOptions
      Category = 4
    end
    object dxBarButton22: TdxBarButton
      Action = actEditorQuickLoad
      Category = 14
    end
    object dxBarButton23: TdxBarButton
      Action = actEditorQuickSave
      Category = 14
    end
    object dxBarButton24: TdxBarButton
      Action = actShowStatusBar
      Category = 2
      Hint = 'Status bar'
      ButtonStyle = bsChecked
    end
    object dxBarButton25: TdxBarButton
      Action = actIndexNew
      Category = 19
    end
    object dxBarButton26: TdxBarButton
      Action = actIndexDrop
      Category = 19
    end
    object dxBarButton27: TdxBarButton
      Action = actIndexRecompute
      Category = 19
      Hint = 'Recompute selectivity'
    end
    object dxBarButton28: TdxBarButton
      Action = actIndexRecomputeAll
      Category = 19
      Hint = 'Recompute all'
    end
    object dxBarButton29: TdxBarButton
      Action = actIndexShowStatistics
      Category = 19
      Hint = 'Show statistics'
      ButtonStyle = bsChecked
    end
    object miEdit: TdxBarSubItem
      Caption = 'Edit'
      Category = 8
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton6
          Visible = True
        end
        item
          Item = dxBarButton7
          Visible = True
        end
        item
          Item = dxBarButton119
          Visible = True
        end
        item
          BeginGroup = True
          Item = miEditorCut
          Visible = True
        end
        item
          Item = miEditorCopy
          Visible = True
        end
        item
          Item = miEditorPaste
          Visible = True
        end
        item
          Item = miEditorSelectAll
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton2
          Visible = True
        end
        item
          Item = dxBarButton4
          Visible = True
        end
        item
          Item = dxBarButton3
          Visible = True
        end
        item
          Item = dxBarButton5
          Visible = True
        end
        item
          Item = dxBarButton135
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton9
          Visible = True
        end
        item
          Item = dxBarButton8
          Visible = True
        end
        item
          Item = dxBarButton10
          Visible = True
        end
      >
    end
    object bsiToolbars: TdxBarSubItem
      Caption = 'Toolbars'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton30
          Visible = True
        end
        item
          Item = dxBarButton31
          Visible = True
        end
        item
          Item = dxBarButton32
          Visible = True
        end
        item
          Item = dxBarButton33
          Visible = True
        end
      >
    end
    object dxBarButton30: TdxBarButton
      Action = actDatabaseToolbar
      Category = 2
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
    end
    object dxBarButton31: TdxBarButton
      Action = actToolsToolbar
      Category = 2
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
    end
    object dxBarButton32: TdxBarButton
      Action = actEditToolbars
      Category = 2
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
    end
    object dxBarButton33: TdxBarButton
      Action = actNewDBObjectsToolbar
      Category = 2
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
    end
    object dxBarButton34: TdxBarButton
      Action = actObjectsEditorsOptions
      Category = 4
      Hint = 'Objects editors options'
    end
    object bliRecentLoad: TdxBarListItem
      Caption = 'New Item'
      Category = 20
      Visible = ivAlways
      OnClick = bliRecentLoadClick
    end
    object bliRecentSave: TdxBarListItem
      Caption = 'New Item'
      Category = 20
      Visible = ivAlways
      OnClick = bliRecentSaveClick
    end
    object dxBarButton7: TdxBarButton
      Action = actEditorSaveToFile
      Category = 14
      ButtonStyle = bsDropDown
      DropDownMenu = bpmRecentSave
    end
    object dxBarButton36: TdxBarButton
      Action = actConstraintDrop
      Category = 21
      UnclickAfterDoing = False
    end
    object dxBarButton35: TdxBarButton
      Action = actConstraintNew
      Category = 21
      UnclickAfterDoing = False
    end
    object dxBarButton37: TdxBarButton
      Action = actDependenciesExpandAll
      Category = 22
    end
    object dxBarButton38: TdxBarButton
      Action = actDependenciesCollapseAll
      Category = 22
    end
    object dxBarButton39: TdxBarButton
      Action = actDependenciesRefresh
      Category = 22
    end
    object miConstrAutowidth: TdxBarButton
      Action = actConstraintAutoWidth
      Category = 21
      ButtonStyle = bsChecked
    end
    object dxBarButton41: TdxBarButton
      Action = actTestDataGenerator
      Category = 3
    end
    object dxBarButton42: TdxBarButton
      Action = actQueryBuilder
      Category = 3
    end
    object dxBarButton43: TdxBarButton
      Action = actRecomputeIndices
      Category = 1
    end
    object miExternalTools: TdxBarSubItem
      Caption = 'External tools...'
      Category = 3
      Visible = ivAlways
      ItemLinks = []
    end
    object dxBarButton44: TdxBarButton
      Action = actGridAdjustColumnsWidth
      Category = 18
      Hint = 'Adjust column widths'
    end
    object dxBarButton45: TdxBarButton
      Action = actFindObjectInExplorer
      Category = 0
    end
    object dxBarButton46: TdxBarButton
      Action = actGridCopyCurrentRecordAsInsert
      Category = 18
      Hint = 'Copy selected record(s) as INSERT'
    end
    object dxBarButton47: TdxBarButton
      Action = actGridCut
      Category = 18
    end
    object dxBarButton48: TdxBarButton
      Action = actGridCopy
      Category = 18
    end
    object dxBarButton49: TdxBarButton
      Action = actGridPaste
      Category = 18
    end
    object bsDesigner: TdxBarSubItem
      Caption = 'Designer'
      Category = 8
      Visible = ivNever
      ItemLinks = <
        item
          Item = Closealldatabasewindows1
          Visible = True
        end
      >
    end
    object dxBarButton50: TdxBarButton
      Action = actCommDiagnostics
      Category = 5
      Hint = 'Communication Diagnostics'
    end
    object dxBarButton51: TdxBarButton
      Action = actFieldNew
      Category = 24
    end
    object dxBarButton52: TdxBarButton
      Action = actFieldEdit
      Category = 24
    end
    object dxBarButton53: TdxBarButton
      Action = actFieldDrop
      Category = 24
    end
    object dxBarButton54: TdxBarButton
      Action = actFieldReorder
      Category = 24
    end
    object dxBarButton55: TdxBarButton
      Action = actFieldCopyList
      Category = 24
    end
    object dxBarButton56: TdxBarButton
      Action = actEditorCommentSelected
      Category = 14
    end
    object dxBarButton57: TdxBarButton
      Action = actEditorUncommentSelected
      Category = 14
    end
    object dxBarButton58: TdxBarButton
      Action = actRecompileProcedures
      Category = 1
    end
    object miEditorConvertCase: TdxBarSubItem
      Caption = 'Convert charcase'
      Category = 14
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton59
          Visible = True
        end
        item
          Item = dxBarButton60
          Visible = True
        end
        item
          Item = dxBarButton61
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton62
          Visible = True
        end
        item
          Item = dxBarButton63
          Visible = True
        end
      >
    end
    object dxBarButton59: TdxBarButton
      Action = actEditorLowerCase
      Category = 14
    end
    object dxBarButton60: TdxBarButton
      Action = actEditorUpperCase
      Category = 14
    end
    object dxBarButton61: TdxBarButton
      Action = actEditorNameCase
      Category = 14
    end
    object dxBarButton62: TdxBarButton
      Action = actEditorInvertCase
      Category = 14
    end
    object dxBarButton63: TdxBarButton
      Action = actEditorToggleCase
      Category = 14
    end
    object dxBarButton64: TdxBarButton
      Action = actGridReorderColumns
      Category = 18
    end
    object dxBarButton65: TdxBarButton
      Action = actAutoHideExplorer
      Category = 2
      ButtonStyle = bsChecked
    end
    object dxBarButton66: TdxBarButton
      Action = actAutoHideMainForm
      Category = 2
      ButtonStyle = bsChecked
    end
    object dxBarButton67: TdxBarButton
      Action = actBuyInterbase
      Category = 7
    end
    object dxBarButton69: TdxBarButton
      Action = actDownloadFBFromFB
      Category = 7
      Hint = 'Download Firebird'
    end
    object dxBarButton70: TdxBarButton
      Action = actWindowsBar
      Category = 2
      ButtonStyle = bsChecked
    end
    object dxBarButton71: TdxBarButton
      Action = actFieldPopupDescEdit
      Category = 24
      ButtonStyle = bsChecked
    end
    object bbDepShowActions: TdxBarButton
      Action = actDependenciesShowOperations
      Category = 22
      ButtonStyle = bsChecked
    end
    object dxBarButton73: TdxBarButton
      Action = actReconnect
      Category = 1
    end
    object dxBarButton74: TdxBarButton
      Action = actActivateTriggers
      Category = 9
    end
    object dxBarButton75: TdxBarButton
      Action = actDeactivateTriggers
      Category = 9
    end
    object dxBarButton76: TdxBarButton
      Action = actGenerateHTMLDoc
      Category = 3
    end
    object dxBarButton77: TdxBarButton
      Action = actActivateSP
      Category = 9
      Hint = 'Activate All Stored Procedures'
    end
    object dxBarButton78: TdxBarButton
      Action = actDeactivateSP
      Category = 9
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Category = 6
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
      GlyphLayout = glRight
      Height = 18
      Width = 1
    end
    object dxBarButton79: TdxBarButton
      Action = actSecondaryFileManager
      Category = 3
    end
    object dxBarButton80: TdxBarButton
      Action = actMoveToRoot
      Category = 9
      Hint = 'Move Node to Root'
    end
    object dxBarButton81: TdxBarButton
      Action = actCopyAsRTF
      Category = 14
      Hint = 'Copy Text as RTF'
    end
    object dxBarButton82: TdxBarButton
      Action = actDBViewer
      Category = 3
    end
    object dxBarButton83: TdxBarButton
      Action = actCloneRegInfo
      Category = 1
      Hint = 'Clone Registration Info'
    end
    object bbGridIncrementalSearch: TdxBarButton
      Action = actGridIncrementalSearch
      Category = 18
      ButtonStyle = bsChecked
    end
    object bbGridFilterDataset: TdxBarButton
      Action = actGridFilterDataset
      Category = 18
      Hint = 'Apply Filter'
      ButtonStyle = bsChecked
      UnclickAfterDoing = False
    end
    object bbGridShowFilterPanel: TdxBarButton
      Action = actGridShowFilterPanel
      Category = 18
      Hint = 'Show Filter Panel'
      ButtonStyle = bsChecked
      UnclickAfterDoing = False
    end
    object dxBarButton84: TdxBarButton
      Action = actGridFilterAddCriteria
      Category = 18
    end
    object dxBarButton85: TdxBarButton
      Action = actIBEDirect
      Category = 7
    end
    object dxBarButton86: TdxBarButton
      Action = actGrantToAll
      Category = 25
    end
    object dxBarButton87: TdxBarButton
      Action = actGrantToAllGO
      Category = 25
    end
    object dxBarButton88: TdxBarButton
      Action = actGrantAll
      Category = 25
    end
    object dxBarButton89: TdxBarButton
      Action = actGrantAllGO
      Category = 25
    end
    object dxBarButton90: TdxBarButton
      Action = actRevokeAll
      Category = 25
    end
    object dxBarButton91: TdxBarButton
      Action = actRevokeFromAll
      Category = 25
    end
    object bbShowColumnPrivileges: TdxBarButton
      Action = actGrantsShowColumnPrivileges
      Category = 25
      ButtonStyle = bsChecked
      UnclickAfterDoing = False
    end
    object dxBarButton92: TdxBarButton
      Action = actRecompileTriggers
      Category = 1
      UnclickAfterDoing = False
    end
    object dxBarButton93: TdxBarButton
      Action = actGrantAllToAll
      Category = 25
    end
    object dxBarButton94: TdxBarButton
      Action = actRevokeAllFromAll
      Category = 25
    end
    object dxBarButton95: TdxBarButton
      Action = actWindowClose
      Category = 6
      Hint = 'Close'
    end
    object dxBarButton96: TdxBarButton
      Action = actWindowMaximize
      Category = 6
      Hint = 'Maximize'
    end
    object dxBarButton97: TdxBarButton
      Action = actWindowMinimize
      Category = 6
      Hint = 'Minimize'
    end
    object dxBarButton98: TdxBarButton
      Action = actWindowRestore
      Category = 6
      Hint = 'Restore'
    end
    object dxBarButton99: TdxBarButton
      Caption = 'Active Title'
      Category = 6
      Hint = 'Active Title'
      Visible = ivAlways
    end
    object dxBarButton100: TdxBarButton
      Action = actDatabaseMonitor
      Category = 5
    end
    object miRunProcedure: TdxBarButton
      Action = actRunProcedure
      Category = 9
      UnclickAfterDoing = False
    end
    object dxBarButton102: TdxBarButton
      Action = actDependenciesViewer
      Category = 3
    end
    object dxBarButton103: TdxBarButton
      Action = actDependenciesShowDepTree
      Category = 22
    end
    object dxBarButton104: TdxBarButton
      Action = actDependenciesPrint
      Category = 22
    end
    object dxBarButton11: TdxBarButton
      Action = actSPTriggerAnalyzer
      Category = 3
      Hint = 'SP/Triggers/Views Analyzer'
    end
    object dxBarButton106: TdxBarButton
      Action = actCompareDatabases
      Category = 3
      UnclickAfterDoing = False
    end
    object miGrid: TdxBarSubItem
      Caption = 'Grid'
      Category = 8
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton107
          Visible = True
        end
        item
          Item = dxBarButton108
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton114
          Visible = True
        end
        item
          Item = dxBarButton115
          Visible = True
        end
      >
    end
    object dxBarButton107: TdxBarButton
      Action = actApplyBestFit
      Category = 26
    end
    object dxBarButton108: TdxBarButton
      Action = actSaveGridData
      Category = 26
    end
    object dxBarButton109: TdxBarButton
      Action = actLogManager
      Category = 3
    end
    object dxBarButton110: TdxBarButton
      Action = actDependenciesDropObject
      Category = 22
    end
    object dxBarButton111: TdxBarButton
      Action = actEditorLoadIntoScriptExecutive
      Category = 14
    end
    object dxBarButton112: TdxBarButton
      Action = actMinimizeAllDBWindows
      Category = 13
      Hint = 'Minimize all Database Windows'
    end
    object dxBarButton113: TdxBarButton
      Action = actRestoreAllDBWindows
      Category = 13
      Hint = 'Restore all Database Windows'
    end
    object dxBarButton114: TdxBarButton
      Action = actTreeListCopyCurrent
      Category = 26
    end
    object dxBarButton115: TdxBarButton
      Action = actTreeListCopyAll
      Category = 26
    end
    object dxBarButton116: TdxBarButton
      Action = actGridCopyCurrentRecordAsUpdate
      Category = 18
      Hint = 'Copy selected record(s) as UPDATE'
    end
    object dxBarButton117: TdxBarButton
      Action = actSortProjectNodes
      Category = 11
      Hint = 'Sort child nodes alphabetically'
    end
    object dxBarButton118: TdxBarButton
      Action = actTableComparer
      Category = 3
    end
    object dxBarButton119: TdxBarButton
      Action = actEditorSaveAs
      Category = 14
    end
    object dxBarButton120: TdxBarButton
      Action = actGridSetNow
      Category = 18
    end
    object dxBarButton121: TdxBarButton
      Action = actConstraintOpenFKTable
      Category = 21
    end
    object dxBarButton122: TdxBarButton
      Action = actRecreateDatabase
      Category = 1
    end
    object dxBarButton123: TdxBarButton
      Action = actDataAnalysis
      Category = 3
    end
    object siDeactivateSP: TdxBarSubItem
      Caption = 'Deactivate SP'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton125
          Visible = True
        end
        item
          Item = dxBarButton78
          Visible = True
        end
      >
    end
    object siActivateSP: TdxBarSubItem
      Caption = 'Activate SP'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton124
          Visible = True
        end
        item
          Item = dxBarButton77
          Visible = True
        end
      >
    end
    object dxBarButton124: TdxBarButton
      Action = actActivateSelectedSP
      Category = 9
    end
    object dxBarButton125: TdxBarButton
      Action = actDeactivateSelectedSP
      Category = 9
    end
    object siActivateTriggers: TdxBarSubItem
      Caption = 'Activate triggers'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton126
          Visible = True
        end
        item
          Item = dxBarButton74
          Visible = True
        end
      >
    end
    object siDeactivateTriggers: TdxBarSubItem
      Caption = 'Deactivate triggers'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton127
          Visible = True
        end
        item
          Item = dxBarButton75
          Visible = True
        end
      >
    end
    object dxBarButton126: TdxBarButton
      Action = actActivateSelectedTriggers
      Category = 9
    end
    object dxBarButton127: TdxBarButton
      Action = actDeactivateSelectedTriggers
      Category = 9
    end
    object dxBarButton128: TdxBarButton
      Action = actCustomerArea
      Category = 7
    end
    object dxBarButton129: TdxBarButton
      Action = actIndexCopyName
      Category = 19
    end
    object siSortNodes: TdxBarSubItem
      Caption = 'Sort nodes'
      Category = 9
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton132
          Visible = True
        end
        item
          Item = dxBarButton133
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton130
          Visible = True
        end
        item
          Item = dxBarButton131
          Visible = True
        end
      >
    end
    object dxBarButton130: TdxBarButton
      Action = actSortChildsAsc
      Category = 9
    end
    object dxBarButton131: TdxBarButton
      Action = actSortChildsDesc
      Category = 9
    end
    object dxBarButton132: TdxBarButton
      Action = actSortSiblingAsc
      Category = 9
    end
    object dxBarButton133: TdxBarButton
      Action = actSortSiblingDesc
      Category = 9
    end
    object dxBarButton134: TdxBarButton
      Action = actNewFolder
      Category = 27
    end
    object miDeleteBlockItem: TdxBarButton
      Action = actDropObject
      Category = 27
    end
    object bbFloatingWindowsManager: TdxBarButton
      Action = actFloatingWindowsManager
      Category = 6
      Hint = 'Floating Windows Manager'
      ButtonStyle = bsChecked
    end
    object miBExecute: TdxBarButton
      Action = actIBEScriptExecute
      Category = 27
    end
    object dxBarButton40: TdxBarButton
      Action = actWindowCloseExceptThis
      Category = 6
    end
    object miNewBlock: TdxBarButton
      Caption = 'New block'
      Category = 9
      Visible = ivAlways
      ImageIndex = 274
    end
    object dxBarButton101: TdxBarButton
      Action = actControlCenter
      Category = 5
    end
    object dxBarButton135: TdxBarButton
      Action = actEditorGoto
      Category = 14
    end
    object bbShedulerNewObject: TdxBarButton
      Action = actShedulerNewObject
      Category = 28
      Hint = 'New task'
    end
    object bbShedulerDeleteObject: TdxBarButton
      Action = actShedulerDeleteObject
      Category = 28
    end
    object bbShedulerEditObject: TdxBarButton
      Action = actShedulerEditObject
      Category = 28
    end
    object bbShedulerNewFolder: TdxBarButton
      Action = actShedulerNewFolder
      Category = 28
    end
    object bbShedulerDeleteFolder: TdxBarButton
      Action = actShedulerDeleteFolder
      Category = 28
    end
    object bbShedulerEditFolder: TdxBarButton
      Action = actShedulerEditFolder
      Category = 28
    end
    object bbShedulerConnect: TdxBarButton
      Action = actShedulerConnect
      Category = 28
      Hint = 'Connect to Sheduler Server'
    end
    object bbShedulerDisconnect: TdxBarButton
      Action = actShedulerDisconnect
      Category = 28
    end
    object miFindInExplorer: TdxBarButton
      Caption = 'Find in the Database Explorer'
      Category = 6
      Hint = 'Find in the Database Explorer'
      Visible = ivAlways
      OnClick = miFindInExplorerClick
    end
    object dxBarButton136: TdxBarButton
      Action = actCopyDBObject
      Category = 3
    end
    object miCopyDBObject: TdxBarButton
      Action = actCopyDBObjectMenu
      Category = 9
    end
    object dxBarButton137: TdxBarButton
      Action = actEditorConvertFromUnicode
      Category = 14
      Hint = 'Convert FROM UTF8'
    end
    object dxBarButton138: TdxBarButton
      Action = actEditorConvertToUnicode
      Category = 14
      Hint = 'Convert TO UTF8'
    end
    object dxBarButton139: TdxBarButton
      Action = actFieldCreateFK
      Category = 24
    end
    object dxBarButton140: TdxBarButton
      Action = actODBCViewer
      Category = 3
    end
    object dxBarButton141: TdxBarButton
      Action = actContentsLocal
      Category = 7
    end
    object dxBarButton142: TdxBarButton
      Action = actTodo
      Category = 3
    end
    object bbTodoAdd: TdxBarButton
      Caption = 'Add to-do item'
      Category = 29
      Hint = 'Add to-do item'
      Visible = ivAlways
    end
    object bbTodoEdit: TdxBarButton
      Caption = 'Edit to-do item'
      Category = 29
      Hint = 'Edit to-do item'
      Visible = ivAlways
    end
    object bbTodoDelete: TdxBarButton
      Caption = 'Delete to-do item'
      Category = 29
      Hint = 'Delete to-do item'
      Visible = ivAlways
    end
    object bbTodoRefresh: TdxBarButton
      Caption = 'Refresh to-do list'
      Category = 29
      Hint = 'Refresh to-do list'
      Visible = ivAlways
    end
    object bbTodoHideDone: TdxBarButton
      Caption = 'Hide done to-do items'
      Category = 29
      Hint = 'Hide done to-do items'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton143: TdxBarButton
      Action = actApplyBlock
      Category = 9
    end
    object dxBarButton144: TdxBarButton
      Action = actApplyBlock
      Category = 11
    end
    object dxBarButton68: TdxBarButton
      Action = actCodeFormatOptions
      Category = 4
      Hint = 'Code formatting options'
    end
    object miShowTableData: TdxBarButton
      Action = actShowTableData
      Category = 9
    end
    object dxBarButton72: TdxBarButton
      Action = actNewUDBScript
      Category = 27
    end
    object dxBarButton105: TdxBarButton
      Action = actTraceAndAudit
      Category = 5
    end
    object dxBarButton145: TdxBarButton
      Action = actImportData
      Category = 3
      Hint = 'Import data'
    end
    object dxBarButton146: TdxBarButton
      Action = actDependenciesApplyBlock
      Category = 22
    end
    object dxBarButton147: TdxBarButton
      Action = actFieldDropFK
      Category = 24
    end
    object dxBarButton148: TdxBarButton
      Action = actToggleFullScreen
      Category = 2
    end
    object bbTodoDuplicate: TdxBarButton
      Caption = 'Dupicate to-do item'
      Category = 29
      Hint = 'Dupicate to-do item'
      Visible = ivAlways
    end
    object dxBarButton149: TdxBarButton
      Action = actCreateEditEventBlock
      Category = 27
      Hint = 'Create/Edit event block'
    end
    object bbDependenciesRecompileAll: TdxBarButton
      Action = actDependenciesRecompileAll
      Category = 22
    end
    object bbDependenciesRecompileSelected: TdxBarButton
      Action = actDependenciesRecompileSelected
      Category = 22
    end
    object dxBarButton150: TdxBarButton
      Action = actEditorFormatText
      Category = 14
    end
    object miGetTableStatistics: TdxBarButton
      Action = actGetTableStatistics
      Category = 9
    end
  end
  object OperMenu: TdxBarPopupMenu
    BarManager = bm
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Item = dxBarButton80
        Visible = True
      end
      item
        Item = miNewObject
        Visible = True
      end
      item
        Item = miEditObject
        Visible = True
      end
      item
        Item = miDropObject
        Visible = True
      end
      item
        BeginGroup = True
        Item = miCopyDBObject
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton143
        Visible = True
      end
      item
        BeginGroup = True
        Item = siSortNodes
        Visible = True
      end
      item
        BeginGroup = True
        Item = CreateSIUDprocedures1
        Visible = True
      end
      item
        BeginGroup = True
        Item = miGetTableStatistics
        Visible = True
      end
      item
        BeginGroup = True
        Item = miRunProcedure
        Visible = True
      end
      item
        BeginGroup = True
        Item = miShowTableData
        Visible = True
      end
      item
        BeginGroup = True
        Item = Autograntprivileges1
        Visible = True
      end
      item
        BeginGroup = True
        Item = siDeactivateSP
        Visible = True
      end
      item
        Item = siActivateSP
        Visible = True
      end
      item
        BeginGroup = True
        Item = siDeactivateTriggers
        Visible = True
      end
      item
        Item = siActivateTriggers
        Visible = True
      end
      item
        BeginGroup = True
        Item = miSelDb
        Visible = True
      end
      item
        Item = miJumpTo
        Visible = True
      end
      item
        BeginGroup = True
        Item = RefreshM
        Visible = True
      end
      item
        BeginGroup = True
        Item = ConnecttoDatabase1
        Visible = True
      end
      item
        Item = dxBarButton73
        Visible = True
      end
      item
        Item = DisconnectfromDatabase1
        Visible = True
      end
      item
        BeginGroup = True
        Item = RegisterDatabase1
        Visible = True
      end
      item
        Item = UnregisterDatabase1
        Visible = True
      end
      item
        Item = dxBarButton83
        Visible = True
      end
      item
        BeginGroup = True
        Item = miDBRegistrationInfo
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton43
        Visible = True
      end
      item
        Item = dxBarButton58
        Visible = True
      end
      item
        Item = dxBarButton92
        Visible = True
      end
      item
        BeginGroup = True
        Item = miViewSQLAssistant
        Visible = True
      end
      item
        Item = dxBarButton1
        Visible = True
      end
      item
        BeginGroup = True
        Item = InspectorPageMode1
        Visible = True
      end
      item
        BeginGroup = True
        Item = miHideDisconnected
        Visible = True
      end
    >
    UseOwnFont = True
    OnPopup = OperMenuPopup
    Left = 288
    Top = 472
  end
  object ProjectPopup: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = NewFolder1
        Visible = True
      end
      item
        Item = miAddObject
        Visible = True
      end
      item
        Item = miRemoveObject
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton144
        Visible = True
      end
      item
        BeginGroup = True
        Item = miRunProcedure
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton45
        Visible = True
      end
      item
        BeginGroup = True
        Item = Autograntprivileges1
        Visible = True
      end
      item
        BeginGroup = True
        Item = RefreshM
        Visible = True
      end
      item
        BeginGroup = True
        Item = InsertUserItemfromClipboard1
        Visible = True
      end
      item
        Item = aCopyUserItemToClipboard1
        Visible = True
      end
      item
        BeginGroup = True
        Item = miViewToolbar
        Visible = True
      end
      item
        BeginGroup = True
        Item = miViewSQLAssistant
        Visible = True
      end
      item
        BeginGroup = True
        Item = InspectorPageMode1
        Visible = True
      end
      item
        BeginGroup = True
        Item = miHideDisconnected
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton117
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = ProjectPopupPopup
    Left = 320
    Top = 472
  end
  object RecentMenu: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = Clearrecentlist1
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton45
        Visible = True
      end
      item
        BeginGroup = True
        Item = Clearrecentlist2
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 352
    Top = 472
  end
  object WindowsMenu: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton45
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton112
        Visible = True
      end
      item
        Item = dxBarButton113
        Visible = True
      end
      item
        BeginGroup = True
        Item = Close1
        Visible = True
      end
      item
        Item = Closealldatabasewindows1
        Visible = True
      end
      item
        Item = CloseAll1
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbFloatingWindowsManager
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = WindowsMenuPopup
    Left = 384
    Top = 472
  end
  object MainSC: TdxEditStyleController
    BorderColor = clBackground
    BorderStyle = xbsThick
    ButtonStyle = btsSimple
    OnStyleChanged = MainSCStyleChanged
    Left = 776
    Top = 112
  end
  object MainCheckSC: TdxCheckEditStyleController
    ButtonStyle = btsSimple
    Left = 776
    Top = 144
  end
  object PKFK: TImageList
    Height = 12
    Width = 15
    Left = 416
    Top = 328
    Bitmap = {9094 bytes}
  end
  object DockTimer: TTimer
    Enabled = False
    Interval = 10
    OnTimer = DockTimerTimer
    Left = 504
    Top = 240
  end
  object bpmRecentLoad: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = bliRecentLoad
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 288
    Top = 520
  end
  object bpmRecentSave: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = bliRecentSave
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 320
    Top = 520
  end
  object EditorPM: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        MostRecentlyUsed = False
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Item = dxBarButton22
        Visible = True
      end
      item
        Item = dxBarButton23
        Visible = True
      end
      item
        BeginGroup = True
        Item = miToggleBookmark
        Visible = True
      end
      item
        Item = miGotoBookmark
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton137
        Visible = True
      end
      item
        Item = dxBarButton138
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton81
        Visible = True
      end
      item
        BeginGroup = True
        Item = miEditorCut
        Visible = True
      end
      item
        Item = miEditorCopy
        Visible = True
      end
      item
        Item = miEditorPaste
        Visible = True
      end
      item
        Item = miEditorSelectAll
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton56
        Visible = True
      end
      item
        Item = dxBarButton57
        Visible = True
      end
      item
        Item = miEditorConvertCase
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton150
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton2
        Visible = True
      end
      item
        Item = dxBarButton4
        Visible = True
      end
      item
        Item = dxBarButton3
        Visible = True
      end
      item
        Item = dxBarButton5
        Visible = True
      end
      item
        Item = dxBarButton135
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton6
        Visible = True
      end
      item
        Item = dxBarButton7
        Visible = True
      end
      item
        Item = dxBarButton119
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton111
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
      item
        Item = dxBarButton10
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = EditorPMPopup
    Left = 288
    Top = 560
  end
  object EDUTimer: TTimer
    Enabled = False
    Interval = 120000
    OnTimer = EDUTimerTimer
    Left = 504
    Top = 200
  end
  object DiagramsPopup: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = miNewObject
        Visible = True
      end
      item
        Item = miDropObject
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = OperMenuPopup
    Left = 416
    Top = 472
  end
  object HTMLExp: TmwHtmlExport
    Title = '(Untitled)'
    Left = 688
    Top = 208
  end
  object GrantImages: TImageList
    Height = 11
    Width = 39
    Left = 415
    Top = 368
    Bitmap = {21418 bytes}
  end
  object GridPM: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton47
        Visible = True
      end
      item
        Item = dxBarButton48
        Visible = True
      end
      item
        Item = dxBarButton49
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbGridIncrementalSearch
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton44
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton13
        Visible = True
      end
      item
        Item = dxBarButton12
        Visible = True
      end
      item
        Item = dxBarButton120
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton16
        Visible = True
      end
      item
        Item = dxBarButton17
        Visible = True
      end
      item
        Item = dxBarButton46
        Visible = True
      end
      item
        Item = dxBarButton116
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton15
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton14
        Visible = True
      end
      item
        Item = dxBarButton64
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton18
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton19
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbGridFilterDataset
        Visible = True
      end
      item
        Item = bbGridShowFilterPanel
        Visible = True
      end
      item
        Item = dxBarButton84
        Visible = True
      end
    >
    UseOwnFont = False
    OnCloseUp = GridPMCloseUp
    OnPopup = GridPMPopup
    Left = 320
    Top = 560
  end
  object GrantsPM: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton86
        Visible = True
      end
      item
        Item = dxBarButton87
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton88
        Visible = True
      end
      item
        Item = dxBarButton89
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton93
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton90
        Visible = True
      end
      item
        Item = dxBarButton91
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton94
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbShowColumnPrivileges
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = GrantsPMPopup
    Left = 352
    Top = 560
  end
  object WindowsPM: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton99
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton96
        Visible = True
      end
      item
        Item = dxBarButton97
        Visible = True
      end
      item
        Item = dxBarButton98
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton95
        Visible = True
      end
      item
        Item = CloseAll1
        Visible = True
      end
      item
        Item = dxBarButton40
        Visible = True
      end
      item
        BeginGroup = True
        Item = miFindInExplorer
        Visible = True
      end
    >
    UseOwnFont = False
    Left = 384
    Top = 560
  end
  object OraPars: TIBwmSQLSyn
    DefaultFilter = 'SQL files (*.sql)|*.SQL'
    Separators = ' ,.:;$=()/[]<>'
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
    SymbolAttri.Style = ['fsBold']
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
    BracketPairAttri.Background = clWindow
    BracketPairAttri.Foreground = clWindowText
    BracketPairAttri.Style = []
    SelectedWordAttri.Background = clWindow
    SelectedWordAttri.Foreground = clWindowText
    SelectedWordAttri.Style = []
    Links.Strings = ['dsd']
    Left = 305
    Top = 115
  end
  object TM: TThemeManager
    Options = ['toAllowNonClientArea', 'toAllowControls', 'toAllowWebContent', 'toSubclassButtons', 'toSubclassCheckListbox', 'toSubclassDBLookup', 'toSubclassFrame', 'toSubclassGroupBox', 'toSubclassListView', 'toSubclassTabSheet', 'toSubclassSpeedButtons', 'toSubclassStatusBar', 'toSubclassTrackBar', 'toResetMouseCapture', 'toSetTransparency']
    Left = 592
    Top = 216
  end
  object BlockPM: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = dxBarButton134
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton72
        Visible = True
      end
      item
        Item = dxBarButton149
        Visible = True
      end
      item
        BeginGroup = True
        Item = miDeleteBlockItem
        Visible = True
      end
      item
        BeginGroup = True
        Item = miBExecute
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = BlockPMPopup
    Left = 448
    Top = 472
  end
  object SQLRepFR3: TfrxReport
    Version = '3.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -3.47917903838885e-199
    ReportOptions.LastChange = -8.269972794727334e-199
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['procedure bDataOnAfterCalcHeight(Sender: TfrxComponent);', 'var', '  iLines : integer;', 'begin', '  iLines := Trunc(bData.Height) div bData.Tag;', '  bData.Height := iLines * bData.Tag;', 'end;', '', 'procedure Page1OnBeforePrint(Sender: TfrxComponent);', 'begin', '  mData.Left := 0;', '  mData.Width := Trunc((Page1.PaperWidth - Page1.LeftMargin - Page1.RightMargin) * 3.77953);', '  Line2.Left := 0;', '  Line2.Width := mData.Width;', '  mPage.Left := 0;', '  mPage.Width := mData.Width;', 'end;', '', '', '', 'begin', 'end.']
    Left = 856
    Top = 136
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
    >
    Variables = []
    Style = []
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      Columns = 1
      ColumnWidth = -3.481262654868506e+86
      ColumnPositions.Strings = ['0']
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageFooter1: TfrxPageFooter
        Height = -1.1620815411408611e+67
        Top = -3.8012119436946413e+58
        Width = -1.7957132885796112e-60
        object Line2: TfrxLineView
          Top = -1.7441125900891216e+85
          Width = -1.4148025234217305e-61
          Frame.Typ = ['ftTop']
          Frame.Width = -2.0
        end
        object mPage: TfrxMemoView
          Top = -7.931980985419799e+196
          Width = -2.263684037474769e-60
          Height = 18
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = ['Page [PAGE#]']
          ParentFont = False
        end
      end
      object bData: TfrxMasterData
        Height = -5.694733964134864e-167
        Top = -5.081401752486278e-197
        Width = -1.7957132885796112e-60
        OnAfterCalcHeight = 'bDataOnAfterCalcHeight'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object mData: TfrxRichView
          ShiftMode = smDontShift
          Width = -7.663332163922103e-62
          Height = -5.081401752486278e-197
          StretchMode = smActualHeight
          AllowExpressions = False
          DataField = 'Line'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          GapX = 2
          GapY = 1
          RichEdit = {165 bytes}
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    Enabled = False
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = mtRtf
    Left = 856
    Top = 104
  end
  object frxRichObject1: TfrxRichObject
    Left = 856
    Top = 72
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    FixedWidth = True
    Background = False
    Left = 896
    Top = 72
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    Left = 896
    Top = 104
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport®'
    Subject = 'FastReport® PDF export'
    Background = False
    Creator = 'FastReport® (http://www.fast-report.com)'
    HTMLTags = True
    Left = 896
    Top = 136
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10
    DefaultRightMargin = 10
    DefaultTopMargin = 10
    DefaultBottomMargin = 10
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 928
    Top = 72
  end
  object VbsSyn: TlbVbsSyn
    DefaultFilter = 'VBScript files (*.vbs)|*.vbs'
    CommentAttri.Background = clWindow
    CommentAttri.Foreground = clWindowText
    CommentAttri.Style = ['fsItalic']
    IdentifierAttri.Background = clWindow
    IdentifierAttri.Foreground = clWindowText
    IdentifierAttri.Style = []
    KeyAttri.Background = clWindow
    KeyAttri.Foreground = clWindowText
    KeyAttri.Style = ['fsBold']
    NumberAttri.Background = clWindow
    NumberAttri.Foreground = clWindowText
    NumberAttri.Style = []
    SpaceAttri.Background = clWindow
    SpaceAttri.Foreground = clWindowText
    SpaceAttri.Style = []
    StringAttri.Background = clWindow
    StringAttri.Foreground = clWindowText
    StringAttri.Style = []
    SymbolAttri.Background = clWindow
    SymbolAttri.Foreground = clWindowText
    SymbolAttri.Style = []
    Left = 360
    Top = 72
  end
  object CppSyn: TDcjCppSyn
    DefaultFilter = 'C++ files (*.cpp,*.h,*.hpp)|*.cpp;*.h;*.hpp'
    AsmAttri.Background = clWindow
    AsmAttri.Foreground = clWindowText
    AsmAttri.Style = []
    CommentAttri.Background = clWindow
    CommentAttri.Foreground = clWindowText
    CommentAttri.Style = ['fsItalic']
    DirecAttri.Background = clWindow
    DirecAttri.Foreground = clWindowText
    DirecAttri.Style = []
    IdentifierAttri.Background = clWindow
    IdentifierAttri.Foreground = clWindowText
    IdentifierAttri.Style = []
    InvalidAttri.Background = clWindow
    InvalidAttri.Foreground = clWindowText
    InvalidAttri.Style = []
    KeyAttri.Background = clWindow
    KeyAttri.Foreground = clWindowText
    KeyAttri.Style = ['fsBold']
    NumberAttri.Background = clWindow
    NumberAttri.Foreground = clWindowText
    NumberAttri.Style = []
    SpaceAttri.Background = clWindow
    SpaceAttri.Foreground = clWindow
    SpaceAttri.Style = []
    StringAttri.Background = clWindow
    StringAttri.Foreground = clWindowText
    StringAttri.Style = []
    SymbolAttri.Background = clWindow
    SymbolAttri.Foreground = clWindowText
    SymbolAttri.Style = []
    Left = 400
    Top = 72
  end
  object PasSyn: TmwPasSyn
    DefaultFilter = 'Pascal files (*.pas,*.dpr,*.dpk,*.inc)|*.pas;*.dpr;*.dpk;*.inc'
    AsmAttri.Background = clWindow
    AsmAttri.Foreground = clWindowText
    AsmAttri.Style = []
    CommentAttri.Background = clWindow
    CommentAttri.Foreground = clWindowText
    CommentAttri.Style = ['fsItalic']
    IdentifierAttri.Background = clWindow
    IdentifierAttri.Foreground = clWindowText
    IdentifierAttri.Style = []
    KeyAttri.Background = clWindow
    KeyAttri.Foreground = clWindowText
    KeyAttri.Style = ['fsBold']
    NumberAttri.Background = clWindow
    NumberAttri.Foreground = clWindowText
    NumberAttri.Style = []
    SpaceAttri.Background = clWindow
    SpaceAttri.Foreground = clWindowText
    SpaceAttri.Style = []
    StringAttri.Background = clWindow
    StringAttri.Foreground = clWindowText
    StringAttri.Style = []
    SymbolAttri.Background = clWindow
    SymbolAttri.Foreground = clWindowText
    SymbolAttri.Style = []
    Left = 440
    Top = 72
  end
  object JavaSyn: TDcjJavaSyn
    DefaultFilter = 'Java files (*.java)|*.java'
    CommentAttri.Background = clWindow
    CommentAttri.Foreground = clWindowText
    CommentAttri.Style = ['fsItalic']
    DocumentAttri.Background = clWindow
    DocumentAttri.Foreground = clWindowText
    DocumentAttri.Style = ['fsItalic']
    IdentifierAttri.Background = clWindow
    IdentifierAttri.Foreground = clWindowText
    IdentifierAttri.Style = []
    InvalidAttri.Background = clWindow
    InvalidAttri.Foreground = clWindowText
    InvalidAttri.Style = []
    KeyAttri.Background = clWindow
    KeyAttri.Foreground = clWindowText
    KeyAttri.Style = ['fsBold']
    NumberAttri.Background = clWindow
    NumberAttri.Foreground = clWindowText
    NumberAttri.Style = []
    SpaceAttri.Background = clWindow
    SpaceAttri.Foreground = clWindow
    SpaceAttri.Style = []
    StringAttri.Background = clWindow
    StringAttri.Foreground = clWindowText
    StringAttri.Style = []
    SymbolAttri.Background = clWindow
    SymbolAttri.Foreground = clWindowText
    SymbolAttri.Style = []
    Left = 472
    Top = 72
  end
  object DebugImages: TImageList
    Height = 14
    Width = 11
    Left = 416
    Top = 402
    Bitmap = {10470 bytes}
  end
  object SampleRep: TfrxReport
    Version = '3.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = ['pbPrint', 'pbLoad', 'pbSave', 'pbExport', 'pbZoom', 'pbFind', 'pbOutline', 'pbPageSetup', 'pbTools', 'pbEdit', 'pbNavigator']
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = -5.828656229823782e-156
    ReportOptions.LastChange = -5.828656229823782e-156
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = ['begin', '', 'end.']
    Left = 504
    Top = 568
    Datasets = []
    Variables = []
    Style = []
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
    end
  end
  object CmpPaletteImages: TImageList
    Height = 24
    Width = 24
    Left = 416
    Top = 435
    Bitmap = {9670 bytes}
  end
  object PaxScripter1: TPaxScripter
    OverrideHandlerMode = Replace
    StackSize = 16000
    Optimization = True
    OnRunningUpdateActive = False
    Left = 368
    Top = 240
  end
  object HttpCli1: THttpCli
    LocalAddr = '0.0.0.0'
    ProxyPort = '80'
    Agent = 'Mozilla/3.0 (compatible)'
    Accept = 'image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, */*'
    NoCache = False
    ContentTypePost = 'application/x-www-form-urlencoded'
    MultiThreaded = False
    RequestVer = '1.0'
    FollowRelocation = True
    Options = []
    SocksLevel = '5'
    SocksAuthentication = socksNoAuthentication
    Left = 488
    Top = 400
  end
  object ShedulerPM: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = bbShedulerNewObject
        Visible = True
      end
      item
        Item = bbShedulerEditObject
        Visible = True
      end
      item
        Item = bbShedulerDeleteObject
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbShedulerNewFolder
        Visible = True
      end
      item
        Item = bbShedulerEditFolder
        Visible = True
      end
      item
        Item = bbShedulerDeleteFolder
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbShedulerConnect
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbShedulerDisconnect
        Visible = True
      end
    >
    UseOwnFont = False
    OnPopup = ShedulerPMPopup
    Left = 416
    Top = 560
  end
  object MimeDecode1: TMimeDecode
    Left = 368
    Top = 208
  end
  object ImageList: TImageList
    Left = 416
    Top = 176
    Bitmap = {109990 bytes}
  end
  object MenuImages: TImageList
    Tag = 10
    Left = 416
    Top = 256
    Bitmap = {329638 bytes}
  end
  object bpmTodo: TdxBarPopupMenu
    BarManager = bm
    ItemLinks = <
      item
        Item = bbTodoAdd
        Visible = True
      end
      item
        Item = bbTodoEdit
        Visible = True
      end
      item
        Item = bbTodoDelete
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbTodoDuplicate
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbTodoHideDone
        Visible = True
      end
      item
        BeginGroup = True
        Item = bbTodoRefresh
        Visible = True
      end
    >
    UseOwnFont = False
    OnCloseUp = bpmTodoCloseUp
    OnPopup = bpmTodoPopup
    Left = 416
    Top = 520
  end
  object SSTimer: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = SSTimerTimer
    Left = 504
    Top = 280
  end
  object UserDBScript: TStrHolder
    Capacity = 868
    Macros = []
    Duplicates = dupAccept
    Left = 948
    Top = 399
    InternalVer = 1
    StrData = ['', '4352454154452047454e455241544f522047454e5f44415441424153455f49443b', '4352454154452047454e455241544f522047454e5f464f524d535f49443b', '4352454154452047454e455241544f522047454e5f4b4559424f4152445f54454d504c415445535f49443b', '4352454154452047454e455241544f522047454e5f524543454e545f4954454d535f49443b', '4352454154452047454e455241544f522047454e5f53514c5f454449544f525f515545524945535f49443b', '4352454154452047454e455241544f522047454e5f53544154454d454e545f484953544f52595f49443b', '', '', '534554205445524d205e203b20', '', '4352454154452050524f434544555245204144445f5550444154455f464f524d2028', '2020202044425f494420494e54454745522c', '20202020464f524d5f4944454e54205641524348415228363429204348415241435445522053455420554e49434f44455f4653532c', '20202020464f524d5f4441544120424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '424547494e', '2020455849543b', '454e445e', '', '', '4352454154452050524f434544555245204144445f5550444154455f464f524d5f475249445f444154412028', '2020202044425f494420494e54454745522c', '20202020464f524d5f4944454e54205641524348415228363429204348415241435445522053455420554e49434f44455f4653532c', '20202020475249445f4441544120424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '424547494e', '2020455849543b', '454e445e', '', '', '4352454154452050524f434544555245204144445f5550444154455f504152414d535f484953544f52592028', '2020202044425f494420494e54454745522c', '2020202050524f435f4e414d45205641524348415228363429204348415241435445522053455420554e49434f44455f4653532c', '20202020504152414d5320424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '424547494e', '2020455849543b', '454e445e', '', '', '4352454154452050524f434544555245204144445f5550444154455f524543454e545f4954454d2028', '2020202044425f494420494e54454745522c', '20202020524543454e545f4954454d5f494420494e54454745522c', '20202020524543454e545f4954454d5f4441544120424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '424547494e', '2020455849543b', '454e445e', '', '', '4352454154452050524f434544555245204144445f5550444154455f53514c5f454449544f525f51554552592028', '2020202044425f494420494e54454745522c', '2020202051554552595f494420494e54454745522c', '2020202051554552595f43415054494f4e20424c4f42205355425f545950452030205345474d454e542053495a452038302c', '2020202051554552595f5445585420424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '424547494e', '2020455849543b', '454e445e', '', '', '4352454154452050524f434544555245204348414e47455f44425f504152454e545f4f524445522028', '2020202044425f494420494e54454745522c', '202020204e45575f504152454e5420494e54454745522c', '202020204e45575f4f5244455220494e544547455229', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '424547494e', '2020455849543b', '454e445e', '', '', '4352454154452050524f43454455524520434c4541525f444154414241534553', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '424547494e', '2020455849543b', '454e445e', '', '', '4352454154452050524f4345445552452052454749535445525f44415441424153452028', '20202020504152454e545f494420494e54454745522c', '2020202044425f4f5244455220494e54454745522c', '2020202050524f505320424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '2020202044425f494420494e544547455229', '4153', '424547494e', '2020455849543b', '454e445e', '', '', '4352454154452050524f4345445552452052454749535445525f44415441424153455f464f4c4445522028', '20202020504152454e545f494420494e54454745522c', '20202020464f4c4445525f4f5244455220494e54454745522c', '2020202050524f505320424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020464f4c4445525f494420494e544547455229', '4153', '424547494e', '', '', '', '', '2020455849543b', '454e445e', '', '', '4352454154452050524f434544555245205550444154455f434f4e4649475f444154412028', '202020204944454e54205641524348415228363429204348415241435445522053455420554e49434f44455f4653532c', '20202020434f4e4649475f4441544120424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '424547494e', '2020455849543b', '454e445e', '', '', '4352454154452050524f434544555245205550444154455f54454d504c4154455f444154412028', '202020204944454e54205641524348415228363429204348415241435445522053455420554e49434f44455f4653532c', '2020202054454d504c4154455f4441544120424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '424547494e', '2020455849543b', '454e445e', '', '', '', '534554205445524d203b205e', '', '', '435245415445205441424c452056455253494f4e5f494e464f2028', '2020202056455253494f4e2020494e5445474552204e4f54204e554c4c2c', '2020202044415441202020424c4f42205355425f545950452030205345474d454e542053495a45203830', '293b', '', '494e5345525420494e544f2056455253494f4e5f494e464f202856455253494f4e292056414c554553202831293b', '434f4d4d49543b', '', '435245415445205441424c4520434f4e4649472028', '202020204944454e5420205641524348415228363429204348415241435445522053455420554e49434f44455f465353204e4f54204e554c4c2c', '2020202044415441202020424c4f42205355425f545950452030205345474d454e542053495a45203830', '293b', '', '', '435245415445205441424c45204441544142415345532028', '2020202049442020202020202020202020202020202020202020202020494e5445474552204e4f54204e554c4c2c', '20202020504152454e545f494420202020202020202020202020202020494e54454745522044454641554c542030204e4f54204e554c4c2c', '202020205245435f545950452020202020202020202020202020202020534d414c4c494e54204e4f54204e554c4c2c', '2020202044425f4f524445522020202020202020202020202020202020494e54454745522044454641554c542030204e4f54204e554c4c2c', '2020202050524f50532020202020202020202020202020202020202020424c4f42205355425f545950452030205345474d454e542053495a4520313032342c', '202020204445534b544f505f464f524d53202020202020202020202020424c4f42205355425f545950452030205345474d454e542053495a4520313032342c', '202020204241434b55505f524553544f52455f46494c45532020202020424c4f42205355425f545950452030205345474d454e542053495a4520313032342c', '202020204144445f434f4e4e4543545f504152414d5320202020202020424c4f42205355425f545950452030205345474d454e542053495a4520313032342c', '2020202043414348455f44415441202020202020202020202020202020424c4f42205355425f545950452030205345474d454e542053495a4520313032342c', '2020202041465445525f434f4e4e4543545f5343524950542020202020424c4f42205355425f545950452030205345474d454e542053495a4520313032342c', '202020204245464f52455f444953434f4e4e4543545f53435249505420424c4f42205355425f545950452030205345474d454e542053495a452031303234', '293b', '', '', '435245415445205441424c45204558504c4f5245525f46494c544552532028', '2020202044415441424153455f49442020202020494e5445474552204e4f54204e554c4c2c', '2020202046494c5445525f545950452020202020494e5445474552204e4f54204e554c4c2c', '2020202046494c5445525f414354495645202020494e54454745522044454641554c542031204e4f54204e554c4c2c', '2020202046494c5445525f535452494e47532020424c4f42205355425f545950452030205345474d454e542053495a45203830', '293b', '', '', '435245415445205441424c4520464f524d532028', '20202020464f524d5f4944202020202020494e5445474552204e4f54204e554c4c2c', '2020202044415441424153455f49442020494e54454745522c', '20202020464f524d5f4944454e542020205641524348415228383029204348415241435445522053455420554e49434f44455f4653532c', '20202020464f524d5f4441544120202020424c4f42205355425f545950452030205345474d454e542053495a452038302c', '20202020475249445f4441544120202020424c4f42205355425f545950452030205345474d454e542053495a452038302c', '2020202046494c5445525f444154412020424c4f42205355425f545950452030205345474d454e542053495a45203830', '293b', '', '', '435245415445205441424c45204b4559424f4152445f54454d504c415445532028', '202020204944202020202020202020494e5445474552204e4f54204e554c4c2c', '2020202054454d504c415445202020424c4f42205355425f545950452030205345474d454e542053495a452038302c', '20202020455854454e53494f4e2020424c4f42205355425f545950452030205345474d454e542053495a452038302c', '2020202049535f4143544956452020494e54454745522044454641554c542031204e4f54204e554c4c', '293b', '', '', '435245415445205441424c4520504152414d535f484953544f52592028', '2020202044415441424153455f49442020202020494e5445474552204e4f54204e554c4c2c', '2020202050524f4345445552455f4e414d4520205641524348415228363429204348415241435445522053455420554e49434f44455f465353204e4f54204e554c4c2c', '20202020504152414d535f534554202020202020424c4f42205355425f545950452030205345474d454e542053495a45203830', '', '293b', '', '', '435245415445205441424c4520524543454e545f4954454d532028', '2020202052495f49442020202020202020494e5445474552204e4f54204e554c4c2c', '2020202044415441424153455f49442020494e5445474552204e4f54204e554c4c2c', '2020202052495f44415441202020202020424c4f42205355425f545950452030205345474d454e542053495a45203830', '293b', '', '', '435245415445205441424c452053514c5f454449544f525f515545524945532028', '2020202051554552595f494420202020202020494e5445474552204e4f54204e554c4c2c', '2020202044415441424153455f494420202020494e5445474552204e4f54204e554c4c2c', '2020202051554552595f43415054494f4e2020424c4f42205355425f545950452030205345474d454e542053495a452038302c', '2020202051554552595f544558542020202020424c4f42205355425f545950452030205345474d454e542053495a45203830', '293b', '', '', '435245415445205441424c452053544154454d454e545f484953544f52592028', '2020202053544d545f4944202020202020494e5445474552204e4f54204e554c4c2c', '2020202044415441424153455f49442020494e5445474552204e4f54204e554c4c2c', '2020202053544d545f5445585420202020424c4f42205355425f545950452030205345474d454e542053495a452038302c', '2020202053544d545f504c414e20202020424c4f42205355425f545950452030205345474d454e542053495a452038302c', '2020202053544d545f4441544120202020424c4f42205355425f545950452030205345474d454e542053495a45203830', '293b', '', '', '435245415445205441424c452054454d504c415445532028', '202020204944454e5420205641524348415228363429204348415241435445522053455420554e49434f44455f465353204e4f54204e554c4c2c', '2020202044415441202020424c4f42205355425f545950452030205345474d454e542053495a45203830', '293b', '', '', '', '', '', '2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f', '2f2a2a2a2020202020202020202020202020202020202020202020202020202020205072696d617279204b6579732020202020202020202020202020202020202020202020202020202020202a2a2a2f', '2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f', '', '414c544552205441424c4520434f4e4649472041444420434f4e53545241494e5420504b5f434f4e464947205052494d415259204b455920284944454e54293b', '414c544552205441424c45204441544142415345532041444420434f4e53545241494e5420504b5f444154414241534553205052494d415259204b455920284944293b', '414c544552205441424c4520464f524d532041444420434f4e53545241494e5420504b5f464f524d53205052494d415259204b45592028464f524d5f4944293b', '414c544552205441424c45204b4559424f4152445f54454d504c415445532041444420434f4e53545241494e5420504b5f4b4559424f4152445f54454d504c41544553205052494d415259204b455920284944293b', '414c544552205441424c4520504152414d535f484953544f52592041444420434f4e53545241494e5420504b5f504152414d535f484953544f5259205052494d415259204b4559202844415441424153455f49442c2050524f4345445552455f4e414d45293b', '414c544552205441424c4520524543454e545f4954454d532041444420434f4e53545241494e5420504b5f524543454e545f4954454d53205052494d415259204b4559202852495f4944293b', '414c544552205441424c452053514c5f454449544f525f515545524945532041444420434f4e53545241494e5420504b5f53514c5f454449544f525f51554552494553205052494d415259204b4559202851554552595f4944293b', '414c544552205441424c452053544154454d454e545f484953544f525920414444205052494d415259204b4559202853544d545f4944293b', '414c544552205441424c452054454d504c415445532041444420434f4e53545241494e5420504b5f54454d504c41544553205052494d415259204b455920284944454e54293b', '', '', '2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f', '2f2a2a2a2020202020202020202020202020202020202020202020202020202020202020496e64696365732020202020202020202020202020202020202020202020202020202020202020202a2a2a2f', '2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f', '', '43524541544520494e444558204558504c4f5245525f46494c544552535f49445831204f4e204558504c4f5245525f46494c54455253202844415441424153455f4944293b', '43524541544520494e44455820464f524d535f49445831204f4e20464f524d53202844415441424153455f4944293b', '43524541544520494e44455820464f524d535f49445832204f4e20464f524d532028464f524d5f4944454e54293b', '43524541544520494e44455820524543454e545f4954454d535f49445831204f4e20524543454e545f4954454d53202844415441424153455f4944293b', '43524541544520494e4445582053544154454d454e545f484953544f52595f49445831204f4e2053544154454d454e545f484953544f5259202844415441424153455f4944293b', '', '', '2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f', '2f2a2a2a2020202020202020202020202020202020202020202020202020202020202020547269676765727320202020202020202020202020202020202020202020202020202020202020202a2a2a2f', '2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f', '', '', '534554205445524d205e203b', '', '', '', '', '2f2a20547269676765723a204441544142415345535f4244202a2f', '4352454154452054524947474552204441544142415345535f424420464f5220444154414241534553', '414354495645204245464f52452044454c45544520504f534954494f4e2030', '6173', '626567696e', '202044454c4554452046524f4d204558504c4f5245525f46494c54455253', '202057484552452044415441424153455f4944203d204f4c442e49443b', '', '202044454c4554452046524f4d20524543454e545f4954454d53', '202057484552452044415441424153455f4944203d204f4c442e49443b', '', '202044454c4554452046524f4d2053544154454d454e545f484953544f5259', '202057484552452044415441424153455f4944203d204f4c442e49443b', '', '202044454c4554452046524f4d2053514c5f454449544f525f51554552494553', '202057484552452044415441424153455f4944203d204f4c442e49443b', '', '202044454c4554452046524f4d20464f524d53', '202057484552452044415441424153455f4944203d204f4c442e49443b', '', '202044454c4554452046524f4d20504152414d535f484953544f5259', '202057484552452044415441424153455f4944203d204f4c442e49443b', '656e64', '5e', '', '2f2a20547269676765723a20464f524d535f4249202a2f', '435245415445205452494747455220464f524d535f424920464f5220464f524d53', '414354495645204245464f524520494e5345525420504f534954494f4e2030', '4153', '424547494e', '202020494620284e45572e464f524d5f4944204953204e554c4c29205448454e', '202020204e45572e464f524d5f4944203d2047454e5f49442847454e5f464f524d535f49442c31293b', '454e44', '5e', '', '', '2f2a20547269676765723a204b4559424f4152445f54454d504c415445535f4249202a2f', '4352454154452054524947474552204b4559424f4152445f54454d504c415445535f424920464f52204b4559424f4152445f54454d504c41544553', '414354495645204245464f524520494e5345525420504f534954494f4e2030', '4153', '424547494e', '202020494620284e45572e4944204953204e554c4c29205448454e', '202020204e45572e4944203d2047454e5f49442847454e5f4b4559424f4152445f54454d504c415445535f49442c31293b', '454e44', '5e', '', '2f2a20547269676765723a20524543454e545f4954454d535f4249202a2f', '435245415445205452494747455220524543454e545f4954454d535f424920464f5220524543454e545f4954454d53', '414354495645204245464f524520494e5345525420504f534954494f4e2030', '4153', '424547494e', '202020494620284e45572e52495f4944204953204e554c4c29205448454e', '202020204e45572e52495f4944203d2047454e5f49442847454e5f524543454e545f4954454d535f49442c31293b', '454e44', '5e', '', '2f2a20547269676765723a2053514c5f454449544f525f515545524945535f4249202a2f', '43524541544520545249474745522053514c5f454449544f525f515545524945535f424920464f522053514c5f454449544f525f51554552494553', '414354495645204245464f524520494e5345525420504f534954494f4e2030', '4153', '424547494e', '202020494620284e45572e51554552595f4944204953204e554c4c29205448454e', '202020204e45572e51554552595f4944203d2047454e5f49442847454e5f53514c5f454449544f525f515545524945535f49442c31293b', '454e44', '5e', '', '2f2a20547269676765723a2053544154454d454e545f484953544f52595f4249202a2f', '43524541544520545249474745522053544154454d454e545f484953544f52595f424920464f522053544154454d454e545f484953544f5259', '414354495645204245464f524520494e5345525420504f534954494f4e2030', '4153', '424547494e', '202020494620284e45572e53544d545f4944204953204e554c4c29205448454e', '202020204e45572e53544d545f4944203d2047454e5f49442847454e5f53544154454d454e545f484953544f52595f49442c31293b', '454e44', '5e', '', '', '534554205445524d203b205e', '', '', '2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f', '2f2a2a2a20202020202020202020202020202020202020202020202020202053746f7265642050726f63656475726573202020202020202020202020202020202020202020202020202020202a2a2a2f', '2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f', '', '', '534554205445524d205e203b', '', '414c5445522050524f434544555245204144445f5550444154455f464f524d2028', '2020202044425f494420494e54454745522c', '20202020464f524d5f4944454e54205641524348415228363429204348415241435445522053455420554e49434f44455f4653532c', '20202020464f524d5f4441544120424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '4445434c415245205641524941424c4520464f524d5f494420494e54454745523b', '424547494e', '2020494620283a44425f4944204953204e554c4c29205448454e', '2020202053454c45435420464f524d5f49442046524f4d20464f524d532046', '2020202057484552452028462e44415441424153455f4944204953204e554c4c2920414e442028462e464f524d5f4944454e54203d203a464f524d5f4944454e5429', '20202020494e544f203a464f524d5f49443b', '2020454c5345', '2020202053454c45435420464f524d5f49442046524f4d20464f524d532046', '2020202057484552452028462e44415441424153455f4944203d203a44425f49442920414e442028462e464f524d5f4944454e54203d203a464f524d5f4944454e5429', '20202020494e544f203a464f524d5f49443b', '', '2020494620283a464f524d5f4944204953204e554c4c29205448454e', '2020424547494e', '20202020524553554c54203d2047454e5f49442847454e5f464f524d535f49442c2031293b', '20202020494e5345525420494e544f20464f524d532028464f524d5f49442c2044415441424153455f49442c20464f524d5f4944454e542c20464f524d5f4441544129', '202020202020202020202056414c55455320283a524553554c542c203a44425f49442c203a464f524d5f4944454e542c203a464f524d5f44415441293b', '2020454e44', '2020454c5345', '2020424547494e', '20202020524553554c54203d203a464f524d5f49443b', '2020202055504441544520464f524d532046', '2020202053455420462e464f524d5f44415441203d203a464f524d5f44415441', '20202020574845524520462e464f524d5f4944203d203a524553554c543b', '2020454e44', '', '202053555350454e443b', '454e44', '5e', '', '414c5445522050524f434544555245204144445f5550444154455f464f524d5f475249445f444154412028', '2020202044425f494420494e54454745522c', '20202020464f524d5f4944454e54205641524348415228363429204348415241435445522053455420554e49434f44455f4653532c', '20202020475249445f4441544120424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '4445434c415245205641524941424c4520464f524d5f494420494e54454745523b', '424547494e', '2020494620283a44425f4944204953204e554c4c29205448454e', '2020202053454c45435420464f524d5f49442046524f4d20464f524d532046', '2020202057484552452028462e44415441424153455f4944204953204e554c4c2920414e442028462e464f524d5f4944454e54203d203a464f524d5f4944454e5429', '20202020494e544f203a464f524d5f49443b', '2020454c5345', '2020202053454c45435420464f524d5f49442046524f4d20464f524d532046', '2020202057484552452028462e44415441424153455f4944203d203a44425f49442920414e442028462e464f524d5f4944454e54203d203a464f524d5f4944454e5429', '20202020494e544f203a464f524d5f49443b', '', '2020494620283a464f524d5f4944204953204e554c4c29205448454e', '2020424547494e', '20202020524553554c54203d2047454e5f49442847454e5f464f524d535f49442c2031293b', '20202020494e5345525420494e544f20464f524d532028464f524d5f49442c2044415441424153455f49442c20464f524d5f4944454e542c20475249445f4441544129', '202020202020202020202056414c55455320283a524553554c542c203a44425f49442c203a464f524d5f4944454e542c203a475249445f44415441293b', '2020454e44', '2020454c5345', '2020424547494e', '20202020524553554c54203d203a464f524d5f49443b', '2020202055504441544520464f524d532046', '2020202053455420462e475249445f44415441203d203a475249445f44415441', '20202020574845524520462e464f524d5f4944203d203a524553554c543b', '2020454e44', '', '202053555350454e443b', '454e44', '5e', '', '414c5445522050524f434544555245204144445f5550444154455f504152414d535f484953544f52592028', '2020202044425f494420494e54454745522c', '2020202050524f435f4e414d45205641524348415228363429204348415241435445522053455420554e49434f44455f4653532c', '20202020504152414d5320424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '4445434c415245205641524941424c4520494420494e54454745523b', '424547494e', '2020524553554c54203d20303b', '202053454c4543542044415441424153455f49442046524f4d20504152414d535f484953544f52592050', '202057484552452028502e44415441424153455f4944203d203a44425f49442920414e442028502e50524f4345445552455f4e414d45203d203a50524f435f4e414d4529', '2020494e544f203a49443b', '', '2020494620283a4944204953204e554c4c29205448454e', '2020424547494e', '20202020494e5345525420494e544f20504152414d535f484953544f5259202844415441424153455f49442c2050524f4345445552455f4e414d452c20504152414d535f53455429', '202020202020202020202056414c55455320283a44425f49442c203a50524f435f4e414d452c203a504152414d53293b', '2020454e44', '2020454c5345', '2020424547494e', '2020202055504441544520504152414d535f484953544f52592050', '2020202053455420502e504152414d535f534554203d203a504152414d53', '2020202057484552452028502e44415441424153455f4944203d203a44425f49442920414e442028502e50524f4345445552455f4e414d45203d203a50524f435f4e414d45293b', '2020454e44', '', '202053555350454e443b', '454e44', '5e', '', '414c5445522050524f434544555245204144445f5550444154455f524543454e545f4954454d2028', '2020202044425f494420494e54454745522c', '20202020524543454e545f4954454d5f494420494e54454745522c', '20202020524543454e545f4954454d5f4441544120424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '424547494e', '2020524553554c54203d203a524543454e545f4954454d5f49443b', '202049462028524543454e545f4954454d5f4944203d203029205448454e', '2020424547494e', '20202020524553554c54203d2047454e5f49442847454e5f524543454e545f4954454d535f49442c2031293b', '20202020494e5345525420494e544f20524543454e545f4954454d53202852495f49442c2044415441424153455f49442c2052495f4441544129', '202020202020202020202056414c55455320283a524553554c542c203a44425f49442c203a524543454e545f4954454d5f44415441293b', '2020454e44', '2020454c5345', '2020202055504441544520524543454e545f4954454d53', '202020205345542052495f44415441203d203a524543454e545f4954454d5f44415441', '2020202057484552452052495f4944203d203a524543454e545f4954454d5f49443b', '', '202053555350454e443b', '454e44', '5e', '', '414c5445522050524f434544555245204144445f5550444154455f53514c5f454449544f525f51554552592028', '2020202044425f494420494e54454745522c', '2020202051554552595f494420494e54454745522c', '2020202051554552595f43415054494f4e20424c4f42205355425f545950452030205345474d454e542053495a452038302c', '2020202051554552595f5445585420424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '424547494e', '2020524553554c54203d203a51554552595f49443b', '20204946202851554552595f4944203d203029205448454e', '2020424547494e', '20202020524553554c54203d2047454e5f49442847454e5f53514c5f454449544f525f515545524945535f49442c2031293b', '20202020494e5345525420494e544f2053514c5f454449544f525f51554552494553202851554552595f49442c2044415441424153455f49442c2051554552595f43415054494f4e2c2051554552595f5445585429', '202020202020202020202056414c55455320283a524553554c542c203a44425f49442c203a51554552595f43415054494f4e2c203a51554552595f54455854293b', '2020454e44', '2020454c5345', '202020205550444154452053514c5f454449544f525f51554552494553', '202020205345542051554552595f43415054494f4e203d203a51554552595f43415054494f4e2c', '202020202020202051554552595f54455854203d203a51554552595f54455854', '2020202057484552452051554552595f4944203d203a524553554c543b', '', '202053555350454e443b', '454e44', '5e', '', '414c5445522050524f434544555245204348414e47455f44425f504152454e545f4f524445522028', '2020202044425f494420494e54454745522c', '202020204e45575f504152454e5420494e54454745522c', '202020204e45575f4f5244455220494e544547455229', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '4445434c415245205641524941424c4520494420494e54454745523b', '4445434c415245205641524941424c4520494f5244455220494e54454745523b', '4445434c415245205641524941424c45204f4c445f4f5244455220494e54454745523b', '626567696e', '2020524553554c54203d204e554c4c3b', '', '202053454c4543542049442046524f4d204441544142415345532044', '2020574845524520442e4944203d203a44425f4944', '2020494e544f203a49443b', '', '2020494620284e4f5420284944204953204e554c4c2929205448454e', '2020424547494e', '20202020555044415445204441544142415345532044', '2020202053455420442e44425f4f52444552203d203a4e45575f4f524445522c', '2020202020202020442e504152454e545f4944203d203a4e45575f504152454e54', '20202020574845524520442e4944203d203a44425f49443b', '', '20202020494f52444552203d20313b', '20202020464f522053454c4543542049442c2044425f4f524445522046524f4d204441544142415345532044', '202020202020202057484552452028442e504152454e545f4944203d203a4e45575f504152454e542920414e442028442e4944203c3e203a44425f494429', '20202020202020204f524445522042592044425f4f52444552', '2020202020202020494e544f203a49442c203a4f4c445f4f52444552', '20202020444f', '20202020424547494e', '202020202020494620283a494f52444552203d203a4e45575f4f5244455229205448454e', '2020202020202020494f52444552203d203a494f52444552202b20313b', '202020202020555044415445204441544142415345532044', '20202020202053455420442e44425f4f52444552203d203a494f52444552', '202020202020574845524520442e4944203d203a49443b', '', '202020202020494f52444552203d203a494f52444552202b20313b', '20202020454e44', '', '20202020524553554c54203d204e45575f4f524445523b', '2020454e44', '', '202073757370656e643b', '656e64', '5e', '', '414c5445522050524f43454455524520434c4541525f444154414241534553', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '626567696e', '2020524553554c54203d20303b', '202044454c4554452046524f4d204441544142415345533b', '', '202073757370656e643b', '656e64', '5e', '', '414c5445522050524f4345445552452052454749535445525f44415441424153452028', '20202020504152454e545f494420494e54454745522c', '2020202044425f4f5244455220494e54454745522c', '2020202050524f505320424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '2020202044425f494420494e544547455229', '4153', '4445434c415245205641524941424c45204e45575f4f5244455220494e54454745523b', '424547494e', '202044425f4944203d2047454e5f49442847454e5f44415441424153455f49442c2031293b', '', '20204946202844425f4f52444552203d203029205448454e', '2020424547494e', '2020202053454c454354204d415828442e44425f4f52444552292046524f4d204441544142415345532044', '20202020574845524520442e504152454e545f4944203d203a504152454e545f4944', '20202020494e544f203a4e45575f4f524445523b', '', '20202020494620283a4e45575f4f52444552204953204e554c4c29205448454e', '2020202020204e45575f4f52444552203d20303b', '202020204e45575f4f52444552203d204e45575f4f52444552202b20313b', '2020454e44', '', '2020494e5345525420494e544f20444154414241534553202849442c20504152454e545f49442c205245435f545950452c2044425f4f524445522c2050524f505329', '20202020202020202056414c55455320283a44425f49442c203a504152454e545f49442c20302c203a4e45575f4f524445522c203a50524f5053293b', '', '202053555350454e443b', '454e44', '5e', '', '414c5445522050524f4345445552452052454749535445525f44415441424153455f464f4c4445522028', '20202020504152454e545f494420494e54454745522c', '20202020464f4c4445525f4f5244455220494e54454745522c', '2020202050524f505320424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020464f4c4445525f494420494e544547455229', '4153', '4445434c415245205641524941424c45204e45575f4f5244455220494e54454745523b', '424547494e', '2020464f4c4445525f4944203d2047454e5f49442847454e5f44415441424153455f49442c2031293b', '', '202049462028464f4c4445525f4f52444552203d203029205448454e', '2020424547494e', '2020202053454c454354204d415828442e44425f4f52444552292046524f4d204441544142415345532044', '20202020574845524520442e504152454e545f4944203d203a504152454e545f4944', '20202020494e544f203a4e45575f4f524445523b', '', '20202020494620283a4e45575f4f52444552204953204e554c4c29205448454e', '2020202020204e45575f4f52444552203d20303b', '202020204e45575f4f52444552203d204e45575f4f52444552202b20313b', '2020454e44', '', '2020494e5345525420494e544f20444154414241534553202849442c20504152454e545f49442c205245435f545950452c2044425f4f524445522c2050524f505329', '20202020202020202056414c55455320283a464f4c4445525f49442c203a504152454e545f49442c20312c203a4e45575f4f524445522c203a50524f5053293b', '', '202053555350454e443b', '454e44', '5e', '', '414c5445522050524f434544555245205550444154455f434f4e4649475f444154412028', '202020204944454e54205641524348415228363429204348415241435445522053455420554e49434f44455f4653532c', '20202020434f4e4649475f4441544120424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '626567696e', '2020524553554c54203d20303b', '202049462028455849535453202853454c454354204944454e542046524f4d20434f4e464947205748455245204944454e54203d203a4944454e542929205448454e', '2020202055504441544520434f4e4649472043', '2020202053455420432e4944454e54203d203a4944454e542c', '2020202020202020432e44415441203d203a434f4e4649475f44415441', '20202020574845524520432e4944454e54203d203a4944454e543b', '2020454c5345', '2020424547494e', '20202020494e5345525420494e544f20434f4e46494720284944454e542c2044415441292056414c55455320283a4944454e542c203a434f4e4649475f44415441293b', '20202020524553554c54203d20313b', '2020454e44', '202073757370656e643b', '656e64', '5e', '', '414c5445522050524f434544555245205550444154455f54454d504c4154455f444154412028', '202020204944454e54205641524348415228363429204348415241435445522053455420554e49434f44455f4653532c', '2020202054454d504c4154455f4441544120424c4f42205355425f545950452030205345474d454e542053495a4520383029', '52455455524e532028', '20202020524553554c5420494e544547455229', '4153', '626567696e', '2020524553554c54203d20303b', '202049462028455849535453202853454c454354204944454e542046524f4d2054454d504c41544553205748455245204944454e54203d203a4944454e542929205448454e', '202020205550444154452054454d504c415445532054', '2020202053455420542e4944454e54203d203a4944454e542c', '2020202020202020542e44415441203d203a54454d504c4154455f44415441', '20202020574845524520542e4944454e54203d203a4944454e543b', '2020454c5345', '2020424547494e', '20202020494e5345525420494e544f2054454d504c4154455320284944454e542c2044415441292056414c55455320283a4944454e542c203a54454d504c4154455f44415441293b', '20202020524553554c54203d20313b', '2020454e44', '202073757370656e643b', '656e64', '5e', '', '', '534554205445524d203b205e', '', '', '4752414e54205550444154452c205245464552454e434553204f4e2044415441424153455320544f2054524947474552204441544142415345535f42443b', '4752414e542053454c4543542c2044454c455445204f4e204558504c4f5245525f46494c5445525320544f2054524947474552204441544142415345535f42443b', '4752414e542053454c4543542c2044454c455445204f4e20464f524d5320544f2054524947474552204441544142415345535f42443b', '4752414e542053454c4543542c2044454c455445204f4e20504152414d535f484953544f525920544f2054524947474552204441544142415345535f42443b', '4752414e542053454c4543542c2044454c455445204f4e20524543454e545f4954454d5320544f2054524947474552204441544142415345535f42443b', '4752414e542053454c4543542c2044454c455445204f4e2053514c5f454449544f525f5155455249455320544f2054524947474552204441544142415345535f42443b', '4752414e542053454c4543542c2044454c455445204f4e2053544154454d454e545f484953544f525920544f2054524947474552204441544142415345535f42443b', '', '', '4752414e542053454c4543542c20494e534552542c20555044415445204f4e20464f524d5320544f2050524f434544555245204144445f5550444154455f464f524d3b', '4752414e542053454c4543542c20494e534552542c20555044415445204f4e20464f524d5320544f2050524f434544555245204144445f5550444154455f464f524d5f475249445f444154413b', '4752414e542053454c4543542c20494e534552542c20555044415445204f4e20504152414d535f484953544f525920544f2050524f434544555245204144445f5550444154455f504152414d535f484953544f52593b', '4752414e542053454c4543542c20494e534552542c20555044415445204f4e20524543454e545f4954454d5320544f2050524f434544555245204144445f5550444154455f524543454e545f4954454d3b', '4752414e542053454c4543542c20494e534552542c20555044415445204f4e2053514c5f454449544f525f5155455249455320544f2050524f434544555245204144445f5550444154455f53514c5f454449544f525f51554552593b', '4752414e542053454c4543542c20555044415445204f4e2044415441424153455320544f2050524f434544555245204348414e47455f44425f504152454e545f4f524445523b', '4752414e542053454c4543542c2044454c455445204f4e2044415441424153455320544f2050524f43454455524520434c4541525f4441544142415345533b', '4752414e542053454c4543542c20494e53455254204f4e2044415441424153455320544f2050524f4345445552452052454749535445525f44415441424153453b', '4752414e542053454c4543542c20494e53455254204f4e2044415441424153455320544f2050524f4345445552452052454749535445525f44415441424153455f464f4c4445523b', '4752414e542053454c4543542c20494e534552542c20555044415445204f4e20434f4e46494720544f2050524f434544555245205550444154455f434f4e4649475f444154413b', '4752414e542053454c4543542c20494e534552542c20555044415445204f4e2054454d504c4154455320544f2050524f434544555245205550444154455f54454d504c4154455f444154413b', '20', '20', '20', '20']
  end
  object PCStyler: TAdvOfficePagerOfficeStyler
    Style = psOffice2007Silver
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
    GlowButtonAppearance.BorderColor = 13421257
    GlowButtonAppearance.BorderColorHot = 10079963
    GlowButtonAppearance.BorderColorDown = 4548219
    GlowButtonAppearance.BorderColorChecked = 4548219
    GlowButtonAppearance.BorderColorDisabled = 13882323
    GlowButtonAppearance.Color = 15987697
    GlowButtonAppearance.ColorTo = 16119283
    GlowButtonAppearance.ColorChecked = 11918331
    GlowButtonAppearance.ColorCheckedTo = 7915518
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7778289
    GlowButtonAppearance.ColorDownTo = 4296947
    GlowButtonAppearance.ColorHot = 15465983
    GlowButtonAppearance.ColorHotTo = 11332863
    GlowButtonAppearance.ColorMirror = 15657703
    GlowButtonAppearance.ColorMirrorTo = 16316406
    GlowButtonAppearance.ColorMirrorHot = 5888767
    GlowButtonAppearance.ColorMirrorHotTo = 10807807
    GlowButtonAppearance.ColorMirrorDown = 946929
    GlowButtonAppearance.ColorMirrorDownTo = 5021693
    GlowButtonAppearance.ColorMirrorChecked = 10480637
    GlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    Left = 704
    Top = 88
  end
  object NoGradientStyler: TAdvOfficePagerOfficeStyler
    Style = psOffice2007Silver
    PageAppearance.BorderColor = clBtnFace
    PageAppearance.Color = clBtnFace
    PageAppearance.ColorTo = clBtnFace
    PageAppearance.ColorMirror = clBtnFace
    PageAppearance.ColorMirrorTo = clBtnFace
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    TabAppearance.BorderColor = clBtnFace
    TabAppearance.BorderColorHot = 12697277
    TabAppearance.BorderColorSelected = 12697533
    TabAppearance.BorderColorSelectedHot = 6277882
    TabAppearance.BorderColorDisabled = clBtnFace
    TabAppearance.BorderColorDown = clBtnFace
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 16316660
    TabAppearance.ColorSelectedTo = 15722466
    TabAppearance.ColorDisabled = clWhite
    TabAppearance.ColorDisabledTo = clSilver
    TabAppearance.ColorHot = 13558249
    TabAppearance.ColorHotTo = 14669780
    TabAppearance.ColorMirror = clBtnFace
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 12966111
    TabAppearance.ColorMirrorHotTo = 9359081
    TabAppearance.ColorMirrorSelected = 15722466
    TabAppearance.ColorMirrorSelectedTo = 15722466
    TabAppearance.ColorMirrorDisabled = clBtnFace
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
    TabAppearance.BackGround.Color = clBtnFace
    TabAppearance.BackGround.ColorTo = clBtnFace
    TabAppearance.BackGround.Direction = gdHorizontal
    GlowButtonAppearance.BorderColor = 13421257
    GlowButtonAppearance.BorderColorHot = 10079963
    GlowButtonAppearance.BorderColorDown = 4548219
    GlowButtonAppearance.BorderColorChecked = 4548219
    GlowButtonAppearance.BorderColorDisabled = 13882323
    GlowButtonAppearance.Color = 15987697
    GlowButtonAppearance.ColorTo = 16119283
    GlowButtonAppearance.ColorChecked = 11918331
    GlowButtonAppearance.ColorCheckedTo = 7915518
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7778289
    GlowButtonAppearance.ColorDownTo = 4296947
    GlowButtonAppearance.ColorHot = 15465983
    GlowButtonAppearance.ColorHotTo = 11332863
    GlowButtonAppearance.ColorMirror = 15657703
    GlowButtonAppearance.ColorMirrorTo = 16316406
    GlowButtonAppearance.ColorMirrorHot = 5888767
    GlowButtonAppearance.ColorMirrorHotTo = 10807807
    GlowButtonAppearance.ColorMirrorDown = 946929
    GlowButtonAppearance.ColorMirrorDownTo = 5021693
    GlowButtonAppearance.ColorMirrorChecked = 10480637
    GlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    Left = 740
    Top = 82
  end
  object PCStylerCustom: TAdvOfficePagerOfficeStyler
    Style = psOffice2007Silver
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
    GlowButtonAppearance.BorderColor = 13421257
    GlowButtonAppearance.BorderColorHot = 10079963
    GlowButtonAppearance.BorderColorDown = 4548219
    GlowButtonAppearance.BorderColorChecked = 4548219
    GlowButtonAppearance.BorderColorDisabled = 13882323
    GlowButtonAppearance.Color = 15987697
    GlowButtonAppearance.ColorTo = 16119283
    GlowButtonAppearance.ColorChecked = 11918331
    GlowButtonAppearance.ColorCheckedTo = 7915518
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7778289
    GlowButtonAppearance.ColorDownTo = 4296947
    GlowButtonAppearance.ColorHot = 15465983
    GlowButtonAppearance.ColorHotTo = 11332863
    GlowButtonAppearance.ColorMirror = 15657703
    GlowButtonAppearance.ColorMirrorTo = 16316406
    GlowButtonAppearance.ColorMirrorHot = 5888767
    GlowButtonAppearance.ColorMirrorHotTo = 10807807
    GlowButtonAppearance.ColorMirrorDown = 946929
    GlowButtonAppearance.ColorMirrorDownTo = 5021693
    GlowButtonAppearance.ColorMirrorChecked = 10480637
    GlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    Left = 704
    Top = 120
  end
end
