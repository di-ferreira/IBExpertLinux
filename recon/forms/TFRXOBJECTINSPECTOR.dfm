object frxObjectInspector: TfrxObjectInspector
  Left = 188
  Top = 108
  Width = 210
  Height = 452
  BorderStyle = bsSizeToolWin
  Caption = 'Object Inspector'
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  OnDeactivate = FormDeactivate
  OnEndDock = FormEndDock
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ObjectsCB: TComboBox
    Left = 0
    Top = 2
    Width = 182
    Height = 21
    Style = csOwnerDrawFixed
    ItemHeight = 15
    Sorted = True
    TabOrder = 0
    OnClick = ObjectsCBClick
    OnDrawItem = ObjectsCBDrawItem
  end
  object Tab: TTabControl
    Left = -1
    Top = 25
    Width = 203
    Height = 380
    TabOrder = 1
    Tabs.Strings = ['Properties', 'Events']
    TabIndex = 0
    OnChange = TabChange
    object BackPanel: TPanel
      Left = 1
      Top = 24
      Width = 185
      Height = 337
      BevelOuter = bvNone
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 0
        Top = 269
        Width = 185
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object Box: TScrollBox
        Left = 0
        Top = 0
        Width = 185
        Height = 269
        HorzScrollBar.Visible = False
        Align = alClient
        Color = clWindow
        Ctl3D = True
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 0
        object PB: TPaintBox
          Left = 0
          Top = 0
          Width = 181
          Height = 265
          Align = alClient
          OnDblClick = PBDblClick
          OnMouseDown = PBMouseDown
          OnMouseMove = PBMouseMove
          OnMouseUp = PBMouseUp
          OnPaint = PBPaint
        end
        object Edit1: TEdit
          Left = 9
          Top = 30
          Width = 113
          Height = 15
          BorderStyle = bsNone
          TabOrder = 0
          Text = 'Edit1'
          Visible = False
          OnDblClick = EditBtnClick
          OnKeyDown = Edit1KeyDown
          OnKeyPress = Edit1KeyPress
          OnMouseDown = Edit1MouseDown
        end
        object EditPanel: TPanel
          Left = 123
          Top = 30
          Width = 15
          Height = 15
          TabOrder = 1
          Visible = False
          object EditBtn: TSpeedButton
            Left = 0
            Top = 0
            Width = 15
            Height = 15
            Glyph.Data = {154 bytes}
            Margin = 0
            OnClick = EditBtnClick
          end
        end
        object ComboPanel: TPanel
          Left = 139
          Top = 30
          Width = 15
          Height = 15
          TabOrder = 2
          Visible = False
          object ComboBtn: TSpeedButton
            Left = 0
            Top = 0
            Width = 15
            Height = 15
            Glyph.Data = {202 bytes}
            Margin = 0
            OnClick = ComboBtnClick
            OnMouseDown = ComboBtnMouseDown
          end
        end
      end
      object HintPanel: TPanel
        Left = 0
        Top = 272
        Width = 185
        Height = 65
        Align = alBottom
        BevelOuter = bvLowered
        BorderWidth = 2
        TabOrder = 1
        object PropL: TLabel
          Left = 3
          Top = 3
          Width = 179
          Height = 16
          Align = alTop
          AutoSize = False
          Caption = 'PropL'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentColor = False
          ParentFont = False
        end
        object DescrL: TLabel
          Left = 3
          Top = 19
          Width = 179
          Height = 43
          Align = alClient
          AutoSize = False
          Caption = 'DescrL'
          Color = clWhite
          ParentColor = False
          WordWrap = True
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 46
    Top = 171
    object N11: TMenuItem
      Caption = '1'
      ShortCut = 16472
      OnClick = N11Click
    end
    object N21: TMenuItem
      Caption = '2'
      ShortCut = 16470
      OnClick = N21Click
    end
    object N31: TMenuItem
      Caption = '3'
      ShortCut = 16451
      OnClick = N31Click
    end
    object N41: TMenuItem
      Caption = '4'
      ShortCut = 8238
      OnClick = N11Click
    end
    object N51: TMenuItem
      Caption = '5'
      ShortCut = 8237
      OnClick = N21Click
    end
    object N61: TMenuItem
      Caption = '6'
      ShortCut = 16429
      OnClick = N31Click
    end
  end
end
