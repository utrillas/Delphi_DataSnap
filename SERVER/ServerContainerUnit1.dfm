object ServerContainer1: TServerContainer1
  Height = 339
  Width = 519
  PixelsPerInch = 120
  object DSServer1: TDSServer
    AutoStart = False
    Left = 120
    Top = 14
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    Server = DSServer1
    Filters = <>
    AuthenticationManager = DSAuthenticationManager1
    Left = 120
    Top = 91
  end
  object DSHTTPService1: TDSHTTPService
    HttpPort = 8080
    Server = DSServer1
    Filters = <>
    AuthenticationManager = DSAuthenticationManager1
    Left = 120
    Top = 169
  end
  object DSAuthenticationManager1: TDSAuthenticationManager
    OnUserAuthenticate = DSAuthenticationManager1UserAuthenticate
    OnUserAuthorize = DSAuthenticationManager1UserAuthorize
    Roles = <>
    Left = 120
    Top = 246
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    Left = 250
    Top = 14
  end
end
