object frxDataTreeForm: TfrxDataTreeForm
  Left = 223
  Top = 110
  Width = 190
  Height = 341
  BorderIcons = ['biSystemMenu', 'biMinimize', 'biMaximize', 'biHelp']
  BorderStyle = bsSizeToolWin
  Caption = 'Data Fields'
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
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Tabs: TPageControl
    Left = -1
    Top = 0
    Width = 169
    Height = 281
    ActivePage = DataTS
    MultiLine = True
    TabOrder = 0
    object DataTS: TTabSheet
      Caption = 'Data'
      object DataTree: TTreeView
        Left = 0
        Top = 0
        Width = 161
        Height = 212
        Align = alClient
        DragMode = dmAutomatic
        Indent = 19
        ReadOnly = True
        ShowRoot = False
        TabOrder = 0
        OnCustomDrawItem = DataTreeCustomDrawItem
        OnDblClick = DataTreeDblClick
      end
      object CBPanel: TPanel
        Left = 0
        Top = 212
        Width = 161
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object InsFieldCB: TCheckBox
          Left = 0
          Top = 4
          Width = 145
          Height = 17
          Caption = 'Insert field'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object InsCaptionCB: TCheckBox
          Left = 0
          Top = 20
          Width = 145
          Height = 17
          Caption = 'Insert caption'
          TabOrder = 1
        end
      end
    end
    object VariablesTS: TTabSheet
      Caption = 'Variables'
      ImageIndex = 1
      object VariablesTree: TTreeView
        Left = 0
        Top = 0
        Width = 161
        Height = 253
        Align = alClient
        DragMode = dmAutomatic
        Indent = 19
        ReadOnly = True
        ShowRoot = False
        TabOrder = 0
        OnCustomDrawItem = DataTreeCustomDrawItem
        OnDblClick = DataTreeDblClick
      end
    end
    object FunctionsTS: TTabSheet
      Caption = 'Functions'
      ImageIndex = 2
      object Splitter1: TSplitter
        Left = 0
        Top = 155
        Width = 161
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object FunctionsTree: TTreeView
        Left = 0
        Top = 0
        Width = 161
        Height = 155
        Align = alClient
        DragMode = dmAutomatic
        Indent = 19
        ReadOnly = True
        ShowRoot = False
        TabOrder = 0
        OnChange = FunctionsTreeChange
        OnCustomDrawItem = DataTreeCustomDrawItem
        OnDblClick = DataTreeDblClick
      end
      object HintPanel: TPanel
        Left = 0
        Top = 158
        Width = 161
        Height = 95
        Align = alBottom
        BevelOuter = bvLowered
        BorderWidth = 2
        TabOrder = 1
        object FunctionDescL: TLabel
          Left = 3
          Top = 45
          Width = 155
          Height = 47
          Align = alClient
          AutoSize = False
          Color = clWhite
          ParentColor = False
          WordWrap = True
        end
        object FunctionNameL: TLabel
          Left = 3
          Top = 3
          Width = 155
          Height = 42
          Align = alTop
          AutoSize = False
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
    end
  end
end
