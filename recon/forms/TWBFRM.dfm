object WBFrm: TWBFrm
  Left = 281
  Top = 114
  Width = 628
  Height = 629
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object WB: TEmbeddedWB
    Left = 0
    Top = 0
    Width = 620
    Height = 595
    Align = alClient
    TabOrder = 0
    OnBeforeNavigate2 = WBBeforeNavigate2
    OnNavigateError = WBNavigateError
    DownloadOptions = ['DLCTL_DLIMAGES', 'DLCTL_VIDEOS', 'DLCTL_BGSOUNDS']
    UserInterfaceOptions = []
    OnGetHostInfo = WBGetHostInfo
    PrintOptions.Margins.Left = -1.4878494757856668e-154
    PrintOptions.Margins.Right = -1.4878494757856668e-154
    PrintOptions.Margins.Top = -4.9797261342990833e-116
    PrintOptions.Margins.Bottom = -1.625187290092186e+145
    PrintOptions.Header = '&w&bÑòð. &p èç &P'
    PrintOptions.HTMLHeader.Strings = ['<HTML></HTML>']
    PrintOptions.Footer = '&u&b&d'
    PrintOptions.Orientation = poPortrait
    ReplaceCaption = False
    EnableDDE = False
    fpExceptions = True
    ControlData = {156 bytes}
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 264
    Top = 80
  end
end
