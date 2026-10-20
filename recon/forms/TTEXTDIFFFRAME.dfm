object TextDiffFrame: TTextDiffFrame
  Left = 0
  Top = 0
  Width = 435
  Height = 268
  HelpContext = 13900
  Align = alClient
  TabOrder = 0
  OnResize = FrameResize
  object Splitter1: TdfsSplitter
    Left = 315
    Top = 0
    Width = 4
    Height = 166
    Cursor = crHSplit
    Align = alLeft
    OnMoved = Splitter1Moved
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Splitter2: TdfsSplitter
    Left = 0
    Top = 166
    Width = 435
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 315
    Height = 166
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'pnlLeft'
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 315
      Height = 21
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      Caption = 'pVer1'
      TabOrder = 0
      object cbVer1: TdxPickEdit
        Left = 1
        Top = 0
        Width = 314
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Text = 'Select version'
        DropDownRows = 20
        ImmediateDropDown = False
        DropDownListStyle = True
      end
    end
  end
  object pnlRight: TPanel
    Left = 319
    Top = 0
    Width = 116
    Height = 166
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnlRight'
    TabOrder = 1
    object pVer2: TPanel
      Left = 0
      Top = 0
      Width = 116
      Height = 21
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      Caption = 'pVer1'
      TabOrder = 0
      object cbVer2: TdxPickEdit
        Left = 8
        Top = 0
        Width = 742
        TabOrder = 0
        Anchors = ['akLeft', 'akTop', 'akRight']
        Text = 'Select version'
        DropDownRows = 20
        ImmediateDropDown = False
        DropDownListStyle = True
      end
    end
  end
  object pnlMerge: TPanel
    Left = 0
    Top = 170
    Width = 435
    Height = 79
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnlMerge'
    TabOrder = 2
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 249
    Width = 435
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Style = psOwnerDraw
        Text = 'Added'
        Width = 80
      end
      item
        Alignment = taCenter
        Style = psOwnerDraw
        Text = 'Modified'
        Width = 80
      end
      item
        Alignment = taCenter
        Style = psOwnerDraw
        Text = 'Deleted'
        Width = 80
      end
      item
        Width = 50
      end
    >
    SimplePanel = False
    SizeGrip = False
    OnDrawPanel = StatusBar1DrawPanel
  end
end
