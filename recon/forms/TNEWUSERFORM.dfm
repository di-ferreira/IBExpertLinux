object NewUserForm: TNewUserForm
  Left = 301
  Top = 273
  HelpContext = 6900
  ActiveControl = NameE
  BorderIcons = ['biSystemMenu']
  BorderStyle = bsSingle
  Caption = 'Add User'
  ClientHeight = 367
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lName: TLabel
    Left = 81
    Top = 13
    Width = 52
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'User Name'
    FocusControl = NameE
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lPass: TLabel
    Left = 87
    Top = 53
    Width = 46
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Password'
    FocusControl = PasswordE
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lPassConfirm: TLabel
    Left = 47
    Top = 83
    Width = 86
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Confirm Password'
    FocusControl = PasswordConfirmE
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lFirstName: TLabel
    Left = 82
    Top = 125
    Width = 51
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'First Name'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lMiddleName: TLabel
    Left = 73
    Top = 158
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Middle Name'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lLastName: TLabel
    Left = 83
    Top = 191
    Width = 50
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Last Name'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lSysName: TLabel
    Left = 390
    Top = 53
    Width = 65
    Height = 13
    Alignment = taRightJustify
    Caption = 'System Name'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lGroupName: TLabel
    Left = 396
    Top = 83
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Group Name'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lUID: TLabel
    Left = 411
    Top = 125
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'User ID'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lGID: TLabel
    Left = 404
    Top = 158
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Group ID'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lDescription: TLabel
    Left = 79
    Top = 231
    Width = 53
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Description'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lDefRole: TLabel
    Left = 396
    Top = 191
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Default Role'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object NameE: TdxEdit
    Left = 139
    Top = 10
    Width = 197
    TabOrder = 0
    AutoSize = False
    CharCase = ecUpperCase
    StyleController = IBEMainForm.MainSC
    Height = 21
  end
  object PasswordE: TdxEdit
    Left = 139
    Top = 48
    Width = 197
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    AutoSize = False
    PasswordChar = '*'
    StyleController = IBEMainForm.MainSC
    Height = 21
  end
  object PasswordConfirmE: TdxEdit
    Left = 139
    Top = 80
    Width = 197
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    AutoSize = False
    PasswordChar = '*'
    StyleController = IBEMainForm.MainSC
    Height = 21
  end
  object FirstNameE: TTntEdit
    Left = 139
    Top = 122
    Width = 196
    Height = 21
    MaxLength = 32
    TabOrder = 3
  end
  object MiddleNameE: TTntEdit
    Left = 139
    Top = 155
    Width = 196
    Height = 21
    MaxLength = 32
    TabOrder = 4
  end
  object LastNameE: TTntEdit
    Left = 139
    Top = 188
    Width = 196
    Height = 21
    MaxLength = 32
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 329
    Width = 675
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 13
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 675
      Height = 7
      Align = alTop
      Shape = bsTopLine
    end
    object OkB: TButton
      Left = 512
      Top = 8
      Width = 75
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object bCancel: TButton
      Left = 594
      Top = 8
      Width = 75
      Height = 25
      Anchors = ['akTop', 'akRight']
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object seUID: TdxSpinEdit
    Left = 464
    Top = 122
    Width = 65
    TabOrder = 9
    StyleController = IBEMainForm.MainSC
  end
  object seGID: TdxSpinEdit
    Left = 464
    Top = 155
    Width = 65
    TabOrder = 10
    StyleController = IBEMainForm.MainSC
  end
  object cbDefRole: TdxPickEdit
    Left = 464
    Top = 188
    Width = 201
    TabOrder = 11
    StyleController = IBEMainForm.MainSC
    DropDownRows = 20
    DropDownListStyle = True
  end
  object cbActive: TdxCheckEdit
    Left = 461
    Top = 12
    Width = 202
    TabOrder = 6
    Caption = 'Active'
    StyleController = IBEMainForm.MainCheckSC
    State = cbsChecked
  end
  object eSysName: TdxEdit
    Left = 464
    Top = 48
    Width = 201
    TabOrder = 7
    StyleController = IBEMainForm.MainSC
  end
  object eGroupName: TdxEdit
    Left = 464
    Top = 80
    Width = 201
    TabOrder = 8
    StyleController = IBEMainForm.MainSC
  end
  object mDesc: TdxMemo
    Tag = 1000
    Left = 139
    Top = 228
    Width = 526
    TabOrder = 12
    StyleController = IBEMainForm.MainSC
    Lines.Strings = ['']
    Height = 93
  end
  object ActionList1: TActionList
    Left = 584
    Top = 256
    object actLocalize: TAction
      Caption = 'Localize'
      ShortCut = 57420
      OnExecute = actLocalizeExecute
    end
    object actExit: TAction
      Caption = 'actExit'
      ShortCut = 27
      OnExecute = actExitExecute
    end
  end
end
