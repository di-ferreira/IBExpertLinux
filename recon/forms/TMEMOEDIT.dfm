object MemoEdit: TMemoEdit
  Left = 341
  Top = 246
  Width = 520
  Height = 375
  HelpContext = 9300
  BorderIcons = ['biSystemMenu', 'biMaximize']
  Caption = 'MemoEditForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TIBEPageControl
    Left = 0
    Top = 22
    Width = 504
    Height = 285
    AdvOfficePagerStyler = IBEMainForm.NoGradientStyler
    Align = alClient
    ActivePage = tsDBM
    AntiAlias = aaNone
    ButtonSettings.PageListButtonHint = 'Page List'
    Glow = False
    PageMargin = 0
    TabSettings.RightMargin = 2
    TabSettings.Height = 0
    TabSettings.Spacing = 2
    TabSettings.Shape = tsRightRamp
    TabSettings.Rounding = 3
    ShowShortCutHints = False
    TabOrder = 1
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsM: TAdvOfficePage
      Left = 0
      Top = 0
      Width = 504
      Height = 284
      Caption = 'tsM'
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
      object M: TdxMemo
        Tag = 1000
        Left = 2
        Top = 2
        Width = 500
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        StyleController = IBEMainForm.MainSC
        WordWrap = False
        Height = 280
      end
      object MU: TTntMemo
        Tag = 1000
        Left = 2
        Top = 2
        Width = 500
        Height = 280
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 1
        OnChange = mUnicodeChange
      end
    end
    object tsDBM: TAdvOfficePage
      Left = 0
      Top = 0
      Width = 504
      Height = 284
      Caption = 'tsDBM'
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
      object dfsSplitter1: TdfsSplitter
        Left = 2
        Top = 143
        Width = 500
        Height = 10
        Cursor = crVSplit
        Align = alTop
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object Panel2: TPanel
        Left = 2
        Top = 2
        Width = 500
        Height = 141
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 0
        object DBM: TdxDBMemo
          Tag = 1000
          Left = 0
          Top = 18
          Width = 500
          Align = alClient
          TabOrder = 0
          OnEnter = DBMEnter
          OnExit = DBMExit
          StyleController = IBEMainForm.MainSC
          OnChange = DBMChange
          ScrollBars = ssBoth
          WordWrap = False
          Height = 123
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 500
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Plain text editor'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 1
          object pChars: TPanel
            Left = 364
            Top = 0
            Width = 136
            Height = 18
            Align = alRight
            Alignment = taRightJustify
            BevelOuter = bvNone
            Color = clBtnShadow
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clCaptionText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = ['fsBold']
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object pUnicode: TPanel
        Left = 2
        Top = 153
        Width = 500
        Height = 129
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pUnicode'
        TabOrder = 1
        object mUnicode: TTntMemo
          Tag = 1000
          Left = 0
          Top = 18
          Width = 500
          Height = 111
          Align = alClient
          Lines.WideStrings = ['']
          ScrollBars = ssBoth
          TabOrder = 0
          OnChange = mUnicodeChange
          OnExit = mUnicodeExit
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 500
          Height = 18
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' Unicode editor'
          Color = clBtnShadow
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = ['fsBold']
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 307
    Width = 504
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bOk: TButton
      Left = 345
      Top = 4
      Width = 75
      Height = 25
      Anchors = ['akRight', 'akBottom']
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object bCancel: TButton
      Left = 426
      Top = 4
      Width = 75
      Height = 25
      Anchors = ['akRight', 'akBottom']
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object bCopy: TButton
      Left = 4
      Top = 4
      Width = 149
      Height = 25
      Action = actCopyToClipboard
      Anchors = ['akLeft', 'akBottom']
      TabOrder = 2
    end
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 304
    Top = 56
    object actExit: TAction
      Caption = 'actExit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
    object actPrior: TAction
      Caption = 'Prior'
      Hint = 'Prior'
      ShortCut = 49189
      OnExecute = actPriorExecute
    end
    object actNext: TAction
      Caption = 'Next'
      Hint = 'Next'
      ShortCut = 49191
      OnExecute = actNextExecute
    end
    object actOK: TAction
      Caption = 'actOK'
      ShortCut = 16397
      OnExecute = actOKExecute
    end
    object actCopyToClipboard: TAction
      Caption = 'Copy to clipboard'
      OnExecute = actCopyToClipboardExecute
    end
  end
  object bn: TdxBarDBNavigator
    BarManager = bm
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DBCheckLinks = []
    VisibleButtons = ['dxbnFirst', 'dxbnPrior', 'dxbnNext', 'dxbnLast', 'dxbnInsert', 'dxbnDelete', 'dxbnEdit', 'dxbnPost', 'dxbnCancel']
    Left = 386
    Top = 195
  end
  object bm: TdxBarManager
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
        BorderStyle = bbsNone
        Caption = 'Blob editor'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 340
        FloatTop = 264
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = None
        Name = 'Blob editor'
        NotDocking = ['dsLeft', 'dsRight']
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end
    >
    Categories.Strings = ['DB Navigator']
    Categories.ItemsVisibles = [2]
    Categories.Visibles = [True]
    Images = IBEMainForm.MenuImages
    PopupMenuLinks = []
    UseSystemFont = True
    Left = 386
    Top = 161
    DockControlHeights = [0, 0, 22, 0]
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Caption = 'First'
      Category = 0
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      OnClick = dxBarDBNavFirst1Click
      BarDBNavigator = bn
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev1: TdxBarDBNavButton
      Action = actPrior
      Category = 0
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Action = actNext
      Category = 0
      Enabled = False
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Caption = 'Last'
      Category = 0
      Enabled = False
      Hint = 'Last'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      OnClick = dxBarDBNavLast1Click
      BarDBNavigator = bn
      NavButton = dxbnLast
    end
    object dxBarDBNavInsert1: TdxBarDBNavButton
      Caption = 'Insert'
      Category = 0
      Enabled = False
      Hint = 'Insert'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnInsert
    end
    object dxBarDBNavDelete1: TdxBarDBNavButton
      Caption = 'Delete'
      Category = 0
      Enabled = False
      Hint = 'Delete'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnDelete
    end
    object bbEdit: TdxBarDBNavButton
      Caption = 'Edit'
      Category = 0
      Enabled = False
      Hint = 'Edit'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      BarDBNavigator = bn
      NavButton = dxbnEdit
    end
    object bbPost: TdxBarDBNavButton
      Caption = 'Post'
      Category = 0
      Enabled = False
      Hint = 'Post'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      OnClick = bbPostClick
      BarDBNavigator = bn
      NavButton = dxbnPost
    end
    object dxBarDBNavCancel1: TdxBarDBNavButton
      Caption = 'Cancel'
      Category = 0
      Enabled = False
      Hint = 'Cancel'
      Visible = ivAlways
      Glyph.Data = {250 bytes}
      OnClick = dxBarDBNavCancel1Click
      BarDBNavigator = bn
      NavButton = dxbnCancel
    end
  end
end
