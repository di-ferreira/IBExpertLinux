object UserManagerForm: TUserManagerForm
  Left = 362
  Top = 172
  HelpContext = 6800
  AutoScroll = False
  Caption = 'User Manager'
  ClientHeight = 741
  ClientWidth = 925
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 30
    Width = 923
    Height = 8
    Anchors = ['akLeft', 'akTop', 'akRight']
    Shape = bsTopLine
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 925
    Height = 63
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lDatabase: TLabel
      Left = 8
      Top = 10
      Width = 113
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '&Database'
    end
    object lServer: TLabel
      Left = 8
      Top = 39
      Width = 113
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Server'
    end
    object cbDatabases: TdxPickEdit
      Left = 125
      Top = 6
      Width = 708
      TabOrder = 0
      Anchors = ['akLeft', 'akTop', 'akRight']
      StyleController = IBEMainForm.MainSC
      OnChange = cbDatabasesChange
      DropDownRows = 15
      DropDownListStyle = True
    end
    object cbServers: TdxPickEdit
      Left = 125
      Top = 35
      Width = 583
      TabOrder = 1
      OnKeyPress = cbServersKeyPress
      Anchors = ['akLeft', 'akTop', 'akRight']
      Constraints.MinWidth = 30
      StyleController = IBEMainForm.MainSC
      OnChange = cbServersChange
      DropDownRows = 15
    end
    object bConnect: TButton
      Left = 719
      Top = 34
      Width = 114
      Height = 23
      Anchors = ['akTop', 'akRight']
      Caption = 'Connect'
      TabOrder = 2
      Visible = False
      OnClick = bConnectClick
    end
  end
  object Pages: TIBEPageControl
    Left = 0
    Top = 81
    Width = 925
    Height = 660
    AdvOfficePagerStyler = IBEMainForm.PCStyler
    Align = alClient
    ActivePage = tsUsers
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
    OnChange = PagesChange
    TabOrder = 1
    TabStop = True
    NextPictureChanged = True
    PrevPictureChanged = True
    object tsUsers: TAdvOfficePage
      Tag = -633
      Left = 0
      Top = 24
      Width = 925
      Height = 635
      Caption = 'Users'
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
      object Panel4: TPanel
        Left = 836
        Top = 2
        Width = 87
        Height = 631
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object bAddUser: TButton
          Tag = -643
          Left = 7
          Top = 20
          Width = 75
          Height = 25
          Anchors = ['akTop', 'akRight']
          Caption = 'Add'
          Enabled = False
          TabOrder = 0
          OnClick = bAddUserClick
        end
        object bModifyUser: TButton
          Tag = -635
          Left = 7
          Top = 49
          Width = 75
          Height = 25
          Anchors = ['akTop', 'akRight']
          Caption = 'Modify'
          Enabled = False
          TabOrder = 1
          OnClick = bModifyUserClick
        end
        object bDelUser: TButton
          Tag = -636
          Left = 7
          Top = 78
          Width = 75
          Height = 25
          Anchors = ['akTop', 'akRight']
          Caption = 'Delete'
          Enabled = False
          TabOrder = 2
          OnClick = bDelUserClick
        end
        object Button1: TButton
          Tag = -643
          Left = 7
          Top = 132
          Width = 75
          Height = 25
          Action = actRefresh
          Anchors = ['akTop', 'akRight']
          TabOrder = 3
        end
      end
      object UserPages: TIBEPageControl
        Left = 2
        Top = 2
        Width = 834
        Height = 631
        AdvOfficePagerStyler = IBEMainForm.PCStyler
        Align = alClient
        ActivePage = tsSecUsers
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
        TabOrder = 1
        TabStop = True
        NextPictureChanged = True
        PrevPictureChanged = True
        object tsSecUsers: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 834
          Height = 606
          Caption = 'Users in security DB'
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
          object UsersTL: TdxTreeList
            Left = 2
            Top = 2
            Width = 830
            Height = 602
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
            Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort', 'aoStoreToRegistry']
            OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
            TreeLineColor = clGrayText
            ShowGrid = True
            ShowRoot = False
            GridLineColor = clSilver
            OnDblClick = UsersTLDblClick
            OnKeyDown = UsersTLKeyDown
            OnCustomDrawCell = UsersTLCustomDrawCell
            OnChangeNode = UsersTLChangeNode
            OnCompare = UsersTLCompare
            object tlcUserName: TdxTreeListColumn
              Caption = 'User name'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Sorted = csUp
              Width = 91
              BandIndex = 0
              RowIndex = 0
            end
            object tlcFirstName: TdxTreeListColumn
              Caption = 'First name'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Width = 91
              BandIndex = 0
              RowIndex = 0
            end
            object tlcMiddleName: TdxTreeListColumn
              Caption = 'Middle name'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Width = 91
              BandIndex = 0
              RowIndex = 0
            end
            object tlcLastName: TdxTreeListColumn
              Caption = 'Last name'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Width = 141
              BandIndex = 0
              RowIndex = 0
            end
            object tlcAC: TdxTreeListColumn
              Alignment = taRightJustify
              Caption = 'AC'
              Visible = False
              Width = 39
              BandIndex = 0
              RowIndex = 0
            end
            object tlcSysName: TdxTreeListColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
            end
            object tlcGroupName: TdxTreeListColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
            end
            object tlcGID: TdxTreeListColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
            end
            object tlcUID: TdxTreeListColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
            end
            object tlcComment: TdxTreeListColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
            end
          end
        end
        object tsEmbUsers: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 834
          Height = 606
          Caption = 'Embedded users'
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
          object EmbUsersTL: TdxTreeList
            Left = 2
            Top = 2
            Width = 830
            Height = 602
            Bands = <
              item
                Fixed = bfLeft
                OnlyOwnColumns = True
              end
              item
              end
            >
            DefaultLayout = False
            HeaderPanelRowCount = 1
            Align = alClient
            DragMode = dmAutomatic
            TabOrder = 0
            HideSelection = False
            LookAndFeel = lfFlat
            Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoRowSelect', 'aoDrawEndEllipsis', 'aoHideFocusRect', 'aoAutoSort', 'aoStoreToRegistry']
            OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
            TreeLineColor = clGrayText
            ShowGrid = True
            ShowRoot = False
            GridLineColor = clSilver
            OnDblClick = UsersTLDblClick
            OnCustomDrawCell = UsersTLCustomDrawCell
            OnDeletion = EmbUsersTLDeletion
            object tlcEUserName: TdxTreeListColumn
              Caption = 'User name'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Width = 117
              BandIndex = 0
              RowIndex = 0
            end
            object tlcEFirstName: TdxTreeListColumn
              Caption = 'First name'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Width = 91
              BandIndex = 1
              RowIndex = 0
            end
            object tlcEMiddleName: TdxTreeListColumn
              Caption = 'Middle name'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Width = 91
              BandIndex = 1
              RowIndex = 0
            end
            object tlcELastName: TdxTreeListColumn
              Caption = 'Last name'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Width = 141
              BandIndex = 1
              RowIndex = 0
            end
            object tlcEActive: TdxTreeListColumn
              Alignment = taRightJustify
              Caption = 'Active'
              HeaderAlignment = taCenter
              Width = 39
              BandIndex = 1
              RowIndex = 0
            end
            object tlcEDefRole: TdxTreeListColumn
              Caption = 'Default role'
              BandIndex = 1
              RowIndex = 0
            end
            object tlcEGID: TdxTreeListColumn
              Alignment = taRightJustify
              Caption = 'Group ID'
              BandIndex = 1
              RowIndex = 0
            end
            object tlcEUID: TdxTreeListColumn
              Alignment = taRightJustify
              Caption = 'User ID'
              BandIndex = 1
              RowIndex = 0
            end
            object tlcESysName: TdxTreeListColumn
              Caption = 'System name'
              BandIndex = 1
              RowIndex = 0
            end
            object tlcEGroupName: TdxTreeListColumn
              Caption = 'Group name'
              BandIndex = 1
              RowIndex = 0
            end
            object tlcEDescription: TdxTreeListColumn
              Caption = 'Description'
              BandIndex = 1
              RowIndex = 0
            end
          end
        end
      end
    end
    object tsRoles: TAdvOfficePage
      Tag = -632
      Left = 0
      Top = 24
      Width = 925
      Height = 635
      Caption = 'Roles'
      ImageIndex = 1
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
      object Panel3: TPanel
        Left = 836
        Top = 2
        Width = 87
        Height = 631
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object bAddRole: TButton
          Left = 7
          Top = 20
          Width = 75
          Height = 25
          Anchors = ['akTop', 'akRight']
          Caption = 'Add'
          TabOrder = 0
          OnClick = bAddRoleClick
        end
        object bDropRole: TButton
          Left = 7
          Top = 49
          Width = 75
          Height = 25
          Anchors = ['akTop', 'akRight']
          Caption = 'Delete'
          TabOrder = 1
          OnClick = bDropRoleClick
        end
      end
      object RolesTL: TdxTreeList
        Left = 2
        Top = 2
        Width = 834
        Height = 631
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
        object tlcRoleName: TdxTreeListColumn
          Caption = 'Role name'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
        end
        object tlcRoleOwner: TdxTreeListColumn
          Caption = 'Owner'
          DisableCustomizing = True
          DisableDragging = True
          DisableEditor = True
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
    object tsMembership: TAdvOfficePage
      Left = 0
      Top = 24
      Width = 925
      Height = 635
      Caption = 'Membership'
      ImageIndex = 2
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
      object MembershipPages: TIBEPageControl
        Left = 2
        Top = 2
        Width = 921
        Height = 631
        Align = alClient
        ActivePage = tsUsersRoles
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
        OnChange = MembershipPagesChange
        TabOrder = 0
        TabStop = True
        NextPictureChanged = True
        PrevPictureChanged = True
        object tsUsersRoles: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 921
          Height = 606
          Caption = 'Users -> Roles'
          PageAppearance.BorderColor = 14922381
          PageAppearance.Color = 16445929
          PageAppearance.ColorTo = 15587527
          PageAppearance.ColorMirror = 15587527
          PageAppearance.ColorMirrorTo = 16773863
          PageAppearance.Gradient = ggVertical
          PageAppearance.GradientMirror = ggVertical
          TabAppearance.BorderColor = clNone
          TabAppearance.BorderColorHot = 15383705
          TabAppearance.BorderColorSelected = 14922381
          TabAppearance.BorderColorSelectedHot = 6343929
          TabAppearance.BorderColorDisabled = clNone
          TabAppearance.BorderColorDown = clNone
          TabAppearance.Color = clBtnFace
          TabAppearance.ColorTo = clWhite
          TabAppearance.ColorSelected = 16709360
          TabAppearance.ColorSelectedTo = 16445929
          TabAppearance.ColorDisabled = clWhite
          TabAppearance.ColorDisabledTo = clSilver
          TabAppearance.ColorHot = 14542308
          TabAppearance.ColorHotTo = 16768709
          TabAppearance.ColorMirror = clWhite
          TabAppearance.ColorMirrorTo = clWhite
          TabAppearance.ColorMirrorHot = 14016477
          TabAppearance.ColorMirrorHotTo = 10736609
          TabAppearance.ColorMirrorSelected = 16445929
          TabAppearance.ColorMirrorSelectedTo = 16181984
          TabAppearance.ColorMirrorDisabled = clWhite
          TabAppearance.ColorMirrorDisabledTo = clSilver
          TabAppearance.Font.Charset = DEFAULT_CHARSET
          TabAppearance.Font.Color = clWindowText
          TabAppearance.Font.Height = -11
          TabAppearance.Font.Name = 'Tahoma'
          TabAppearance.Font.Style = []
          TabAppearance.Gradient = ggVertical
          TabAppearance.GradientMirror = ggVertical
          TabAppearance.GradientHot = ggRadial
          TabAppearance.GradientMirrorHot = ggVertical
          TabAppearance.GradientSelected = ggVertical
          TabAppearance.GradientMirrorSelected = ggVertical
          TabAppearance.GradientDisabled = ggVertical
          TabAppearance.GradientMirrorDisabled = ggVertical
          TabAppearance.TextColor = 9126421
          TabAppearance.TextColorHot = 9126421
          TabAppearance.TextColorSelected = 9126421
          TabAppearance.TextColorDisabled = clGray
          TabAppearance.ShadowColor = 15255470
          TabAppearance.HighLightColor = 16775871
          TabAppearance.HighLightColorHot = 16643309
          TabAppearance.HighLightColorSelected = 6540536
          TabAppearance.HighLightColorSelectedHot = 12451839
          TabAppearance.HighLightColorDown = 16776144
          TabAppearance.BackGround.Color = 16767935
          TabAppearance.BackGround.ColorTo = clNone
          TabAppearance.BackGround.Direction = gdHorizontal
          object Splitter1: TdfsSplitter
            Left = 283
            Top = 2
            Width = 4
            Height = 602
            Cursor = crHSplit
            Align = alLeft
            ResizeStyle = rsUpdate
            Maximized = False
            Minimized = False
            ButtonCursor = crDefault
          end
          object MUsersTL: TdxTreeList
            Left = 2
            Top = 2
            Width = 281
            Height = 602
            Bands = <
              item
              end
            >
            DefaultLayout = True
            HeaderPanelRowCount = 1
            Align = alLeft
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
            OnCustomDrawCell = MUsersTLCustomDrawCell
            OnChangeNode = MUsersTLChangeNode
            object tlcMUserName: TdxTreeListColumn
              Caption = 'Users'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Sorted = csUp
              BandIndex = 0
              RowIndex = 0
            end
            object tlcMUserMissing: TdxTreeListColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
            end
          end
          object Panel2: TPanel
            Left = 287
            Top = 2
            Width = 632
            Height = 602
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object MRolesTL: TdxTreeList
              Left = 0
              Top = 0
              Width = 632
              Height = 565
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
              Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
              OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
              TreeLineColor = clGrayText
              ShowGrid = True
              ShowRoot = False
              GridLineColor = clSilver
              OnClick = MRolesTLClick
              OnDblClick = MRolesTLDblClick
              OnKeyPress = MRolesTLKeyPress
              OnCustomDrawCell = MRolesTLCustomDrawCell
              object tlcChecked: TdxTreeListColumn
                Caption = 'G'
                DisableCustomizing = True
                DisableDragging = True
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 20
                BandIndex = 0
                RowIndex = 0
              end
              object tlcAdminOption: TdxTreeListColumn
                Caption = 'AO'
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 24
                BandIndex = 0
                RowIndex = 0
              end
              object tlcMRoleName: TdxTreeListColumn
                Caption = 'Roles'
                DisableCustomizing = True
                DisableDragging = True
                DisableEditor = True
                Width = 227
                BandIndex = 0
                RowIndex = 0
              end
            end
            object pUsersRolesLegend: TPanel
              Left = 0
              Top = 565
              Width = 632
              Height = 37
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'G - granted;  AO - with ADMIN option'
              TabOrder = 1
            end
          end
        end
        object tsRolesUsers: TAdvOfficePage
          Left = 0
          Top = 24
          Width = 921
          Height = 606
          Caption = 'Roles -> Users'
          PageAppearance.BorderColor = 14922381
          PageAppearance.Color = 16445929
          PageAppearance.ColorTo = 15587527
          PageAppearance.ColorMirror = 15587527
          PageAppearance.ColorMirrorTo = 16773863
          PageAppearance.Gradient = ggVertical
          PageAppearance.GradientMirror = ggVertical
          TabAppearance.BorderColor = clNone
          TabAppearance.BorderColorHot = 15383705
          TabAppearance.BorderColorSelected = 14922381
          TabAppearance.BorderColorSelectedHot = 6343929
          TabAppearance.BorderColorDisabled = clNone
          TabAppearance.BorderColorDown = clNone
          TabAppearance.Color = clBtnFace
          TabAppearance.ColorTo = clWhite
          TabAppearance.ColorSelected = 16709360
          TabAppearance.ColorSelectedTo = 16445929
          TabAppearance.ColorDisabled = clWhite
          TabAppearance.ColorDisabledTo = clSilver
          TabAppearance.ColorHot = 14542308
          TabAppearance.ColorHotTo = 16768709
          TabAppearance.ColorMirror = clWhite
          TabAppearance.ColorMirrorTo = clWhite
          TabAppearance.ColorMirrorHot = 14016477
          TabAppearance.ColorMirrorHotTo = 10736609
          TabAppearance.ColorMirrorSelected = 16445929
          TabAppearance.ColorMirrorSelectedTo = 16181984
          TabAppearance.ColorMirrorDisabled = clWhite
          TabAppearance.ColorMirrorDisabledTo = clSilver
          TabAppearance.Font.Charset = DEFAULT_CHARSET
          TabAppearance.Font.Color = clWindowText
          TabAppearance.Font.Height = -11
          TabAppearance.Font.Name = 'Tahoma'
          TabAppearance.Font.Style = []
          TabAppearance.Gradient = ggVertical
          TabAppearance.GradientMirror = ggVertical
          TabAppearance.GradientHot = ggRadial
          TabAppearance.GradientMirrorHot = ggVertical
          TabAppearance.GradientSelected = ggVertical
          TabAppearance.GradientMirrorSelected = ggVertical
          TabAppearance.GradientDisabled = ggVertical
          TabAppearance.GradientMirrorDisabled = ggVertical
          TabAppearance.TextColor = 9126421
          TabAppearance.TextColorHot = 9126421
          TabAppearance.TextColorSelected = 9126421
          TabAppearance.TextColorDisabled = clGray
          TabAppearance.ShadowColor = 15255470
          TabAppearance.HighLightColor = 16775871
          TabAppearance.HighLightColorHot = 16643309
          TabAppearance.HighLightColorSelected = 6540536
          TabAppearance.HighLightColorSelectedHot = 12451839
          TabAppearance.HighLightColorDown = 16776144
          TabAppearance.BackGround.Color = 16767935
          TabAppearance.BackGround.ColorTo = clNone
          TabAppearance.BackGround.Direction = gdHorizontal
          object dfsSplitter1: TdfsSplitter
            Left = 283
            Top = 2
            Width = 4
            Height = 602
            Cursor = crHSplit
            Align = alLeft
            ResizeStyle = rsUpdate
            Maximized = False
            Minimized = False
            ButtonCursor = crDefault
          end
          object RURolesTL: TdxTreeList
            Left = 2
            Top = 2
            Width = 281
            Height = 602
            Bands = <
              item
              end
            >
            DefaultLayout = True
            HeaderPanelRowCount = 1
            Align = alLeft
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
            OnChangeNode = MUsersTLChangeNode
            object tlcRURoles: TdxTreeListColumn
              Caption = 'Roles'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              BandIndex = 0
              RowIndex = 0
            end
          end
          object Panel6: TPanel
            Left = 287
            Top = 2
            Width = 632
            Height = 602
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object RUUsersTL: TdxTreeList
              Left = 0
              Top = 0
              Width = 632
              Height = 565
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
              Options = ['aoColumnSizing', 'aoColumnMoving', 'aoTabThrough', 'aoDrawEndEllipsis', 'aoAutoWidth', 'aoHideFocusRect', 'aoAutoSort']
              OptionsEx = ['aoUseBitmap', 'aoBandHeaderWidth', 'aoAutoCalcPreviewLines', 'aoBandSizing', 'aoBandMoving', 'aoDragScroll', 'aoDragExpand', 'aoAutoSortRefresh']
              TreeLineColor = clGrayText
              ShowGrid = True
              ShowRoot = False
              GridLineColor = clSilver
              OnClick = RUUsersTLClick
              OnDblClick = RUUsersTLDblClick
              OnKeyPress = RUUsersTLKeyPress
              OnCustomDrawCell = MRolesTLCustomDrawCell
              object tlcRUMember: TdxTreeListColumn
                Caption = 'M'
                DisableCustomizing = True
                DisableDragging = True
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 20
                BandIndex = 0
                RowIndex = 0
              end
              object tlcRUAdminOption: TdxTreeListColumn
                Caption = 'AO'
                DisableEditor = True
                HeaderAlignment = taCenter
                Width = 24
                BandIndex = 0
                RowIndex = 0
              end
              object tlcRUUserName: TdxTreeListColumn
                Caption = 'User'
                DisableCustomizing = True
                DisableDragging = True
                DisableEditor = True
                Width = 227
                BandIndex = 0
                RowIndex = 0
              end
              object tlcRUUserMissing: TdxTreeListColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
              end
            end
            object pRolesUsersLegend: TPanel
              Left = 0
              Top = 565
              Width = 632
              Height = 37
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'M - member of selected role;  AO - with ADMIN option'
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  object pConnected: TPanel
    Left = 0
    Top = 63
    Width = 925
    Height = 18
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Not connected'
    Color = clBtnShadow
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = ['fsBold']
    ParentFont = False
    TabOrder = 2
  end
  object SS: TpFIBSecurityService
    ClientLibName = 'gds32.dll'
    LoginPrompt = False
    BufferSize = 512000
    SecurityAction = ActionDisplayUser
    UserID = 0
    GroupID = 0
    Left = 319
    Top = 221
  end
  object Actions: TActionList
    Left = 468
    Top = 92
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
  object Timer: TTimer
    Enabled = False
    Interval = 400
    OnTimer = TimerTimer
    Left = 164
    Top = 172
  end
  object UserMActions: TActionList
    Images = IBEMainForm.MenuImages
    Left = 280
    Top = 186
    object actRefresh: TAction
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 220
      ShortCut = 116
      OnExecute = actRefreshExecute
    end
    object actAdd: TAction
      Caption = 'Add'
      Enabled = False
      Hint = 'Add'
      ImageIndex = 69
      ShortCut = 45
    end
    object actModify: TAction
      Caption = 'Modify'
      Enabled = False
      Hint = 'Modify'
      ImageIndex = 69
      ShortCut = 13
    end
    object actDelete: TAction
      Caption = 'Delete'
      Enabled = False
      Hint = 'Delete'
      ImageIndex = 69
      ShortCut = 16430
    end
  end
end
