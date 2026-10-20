object MasterDetailDataFrame: TMasterDetailDataFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  Align = alClient
  TabOrder = 0
  OnResize = FrameResize
  object MasterSplitter: TdfsSplitter
    Left = 0
    Top = 195
    Width = 418
    Height = 10
    Cursor = crVSplit
    Align = alTop
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object DetailSplitter: TdfsSplitter
    Left = 0
    Top = 205
    Width = 418
    Height = 10
    Cursor = crVSplit
    Align = alBottom
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object MasterPanel: TPanel
    Left = 0
    Top = 0
    Width = 418
    Height = 195
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object TBDock1: TTBDock
      Left = 0
      Top = 0
      Width = 418
      Height = 26
      object TBToolbar1: TTBToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        Caption = 'TBToolbar1'
        CloseButton = False
        DockMode = dmCannotFloat
        DragHandleStyle = dhNone
        Images = IBEMainForm.MenuImages
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object tbiGotoMaster: TTBItem
          ImageIndex = 280
          Images = IBEMainForm.MenuImages
          OnClick = tbiGotoMasterClick
        end
        object TBSeparatorItem1: TTBSeparatorItem
        end
        object TBControlItem1: TTBControlItem
          Control = Label1
        end
        object siMasterTables: TTBSubmenuItem
          Tag = -1
          Caption = 'Tables'
          DisplayMode = nbdmImageAndText
          Options = ['tboDropdownArrow']
        end
        object TBSeparatorItem3: TTBSeparatorItem
        end
        object TBControlItem7: TTBControlItem
          Control = MasterNav
        end
        object Label1: TLabel
          Left = 29
          Top = 4
          Width = 84
          Height = 13
          Caption = '  Master table: '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
        end
        object MasterNav: TDBNavigator
          Left = 271
          Top = 22
          Width = 110
          Height = 22
          VisibleButtons = ['nbInsert', 'nbDelete', 'nbEdit', 'nbPost', 'nbCancel']
          Flat = True
          TabOrder = 0
        end
      end
      object tb1: TTBToolbar
        Left = 275
        Top = 0
        Align = alRight
        BorderStyle = bsNone
        Caption = 'tb1'
        DockMode = dmCannotFloat
        DockPos = 625
        DragHandleStyle = dhNone
        TabOrder = 1
        object TBControlItem3: TTBControlItem
          Control = Label3
        end
        object TBControlItem4: TTBControlItem
          Control = beMasterColor
        end
        object Label3: TLabel
          Left = 0
          Top = 4
          Width = 127
          Height = 13
          Caption = 'Constrained columns color '
        end
        object beMasterColor: TdxButtonEdit
          Left = 139
          Top = 22
          Width = 50
          TabOrder = 0
          StyleController = IBEMainForm.MainSC
          Buttons = <
            item
              Default = True
            end
          >
          ViewStyle = vsHideCursor
          OnButtonClick = beMasterColorButtonClick
          ExistButtons = True
        end
      end
    end
  end
  object DetailPanel: TPanel
    Left = 0
    Top = 215
    Width = 418
    Height = 209
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'DetailPanel'
    TabOrder = 1
    object TBDock2: TTBDock
      Left = 0
      Top = 0
      Width = 418
      Height = 26
      object TBToolbar2: TTBToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        Caption = 'TBToolbar1'
        CloseButton = False
        DockMode = dmCannotFloat
        DragHandleStyle = dhNone
        Images = IBEMainForm.MenuImages
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object tbiGotoDetail: TTBItem
          ImageIndex = 280
          OnClick = tbiGotoDetailClick
        end
        object TBSeparatorItem4: TTBSeparatorItem
        end
        object TBControlItem2: TTBControlItem
          Control = Label2
        end
        object siDetailTables: TTBSubmenuItem
          Tag = -1
          Caption = 'Tables'
          DisplayMode = nbdmImageAndText
          Options = ['tboDropdownArrow']
        end
        object TBSeparatorItem2: TTBSeparatorItem
        end
        object TBControlItem8: TTBControlItem
          Control = DetailNav
        end
        object Label2: TLabel
          Left = 29
          Top = 4
          Width = 77
          Height = 13
          Caption = '  Detail table: '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
        end
        object DetailNav: TDBNavigator
          Left = 271
          Top = 22
          Width = 110
          Height = 22
          VisibleButtons = ['nbInsert', 'nbDelete', 'nbEdit', 'nbPost', 'nbCancel']
          Flat = True
          TabOrder = 0
        end
      end
      object tb2: TTBToolbar
        Left = 275
        Top = 0
        Align = alRight
        BorderStyle = bsNone
        Caption = 'tb1'
        DockMode = dmCannotFloat
        DockPos = 625
        DragHandleStyle = dhNone
        TabOrder = 1
        object TBControlItem5: TTBControlItem
          Control = Label4
        end
        object TBControlItem6: TTBControlItem
          Control = beDetailColor
        end
        object Label4: TLabel
          Left = 0
          Top = 4
          Width = 127
          Height = 13
          Caption = 'Constrained columns color '
        end
        object beDetailColor: TdxButtonEdit
          Left = 139
          Top = 22
          Width = 50
          TabOrder = 0
          StyleController = IBEMainForm.MainSC
          Buttons = <
            item
              Default = True
            end
          >
          ViewStyle = vsHideCursor
          OnButtonClick = beMasterColorButtonClick
          ExistButtons = True
        end
      end
    end
  end
  object ThisPanel: TPanel
    Left = 0
    Top = 205
    Width = 418
    Height = 0
    Align = alClient
    BevelOuter = bvNone
    Caption = 'ThisPanel'
    TabOrder = 2
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 418
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' This table'
      Color = clBtnShadow
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clCaptionText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = ['fsBold']
      ParentFont = False
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 24
      Top = 88
      Width = 185
      Height = 73
      BevelOuter = bvNone
      Caption = 'Panel4'
      TabOrder = 1
      Visible = False
    end
  end
  object DataChangeTimer: TTimer
    Enabled = False
    Interval = 300
    OnTimer = DataChangeTimerTimer
    Left = 16
    Top = 237
  end
  object ColorD: TColorDialog
    Ctl3D = True
    Options = ['cdFullOpen']
    Left = 36
    Top = 272
  end
end
