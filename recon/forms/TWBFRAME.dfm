object WBFrame: TWBFrame
  Left = 0
  Top = 0
  Width = 527
  Height = 368
  TabOrder = 0
  object WB: TEmbeddedWB
    Left = 0
    Top = 0
    Width = 527
    Height = 368
    Align = alClient
    TabOrder = 0
    OnPropertyChange = WBPropertyChange
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
end
