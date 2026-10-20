object GrantManager: TGrantManager
  Left = 332
  Top = 179
  HelpContext = 4700
  AutoScroll = False
  Caption = 'GrantManager'
  ClientHeight = 548
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 26
    Width = 845
    Height = 522
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 0
    object GrantFm: TGrantManagerFrame
      Width = 845
      Height = 522
      object Splitter1: TdfsSplitter
        Height = 522
      end
      object Panel5: TPanel
        Width = 656
        Height = 522
        object Splitter2: TdfsSplitter
          Top = 323
          Width = 656
        end
        object pGrantsOn: TPanel
          Width = 656
        end
        object pFilter: TPanel
          Width = 656
          object Bevel1: TBevel
            Width = 656
          end
          object eFilter: TdxEdit
            Width = 320
          end
          object cbInvertFilter: TdxCheckEdit
            Width = 1386
          end
        end
        object TCGFm: TTableColumnsGrantsFrame
          Top = 327
          Width = 656
          object pGrantsOn: TPanel
            Width = 656
          end
          object tl: TdxTreeList
            Width = 656
          end
          object TBDock1: TTBDock
            Width = 656
          end
          object Tr: TFIBTransaction
            Timeout = 339170384
          end
        end
        object GR: TdxDBGrid
          Width = 656
          Height = 226
          Filter.Criteria = {4 bytes}
        end
        object TBDock1: TTBDock
          Width = 656
        end
      end
      object LeftP: TPanel
        Height = 522
        object ObjectsTL: TdxTreeList
          Height = 475
          HideSelectionColor = clHighlight
          HideSelectionTextColor = clHighlightText
        end
      end
      object Tr: TFIBTransaction
        Timeout = 339085812
      end
    end
  end
  object bm: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        Caption = 'Grant Manager'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 404
        FloatTop = 344
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Grant Manager'
        NotDocking = ['dsNone', 'dsLeft', 'dsRight', 'dsBottom']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = True
      end
    >
    Categories.Strings = ['Default']
    Categories.ItemsVisibles = [2]
    Categories.Visibles = [True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 608
    Top = 189
    DockControlHeights = [0, 0, 26, 0]
    object bliDatabases: TdxBarSubItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      OnClick = bliDatabasesClick
      ItemLinks = []
    end
    object dxBarButton1: TdxBarButton
      Action = actRefresh
      Category = 0
      UnclickAfterDoing = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Action = GrantFm.actSaveToScript
      Category = 0
      ShowCaption = False
      ItemLinks = <
        item
          Item = dxBarButton2
          Visible = True
        end
        item
          Item = dxBarButton3
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton4
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton5
          Visible = True
        end
        item
          Item = dxBarButton6
          Visible = True
        end
      >
    end
    object dxBarButton2: TdxBarButton
      Action = GrantFm.actSaveIntoNew
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = GrantFm.actAppendToFile
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = GrantFm.actAppendToLast
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = GrantFm.actSaveToScriptExecutive
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = GrantFm.actSaveToClipboard
      Category = 0
    end
  end
  object GrantManagerActions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 648
    Top = 255
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 220
      OnExecute = actRefreshExecute
    end
  end
end
