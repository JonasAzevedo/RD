object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'Guess'
  ComInitialization = ciNone
  SessionTrackingMethod = tmURL
  Description = 'Guess Demo'
  DestinationDevice = ddWeb
  ExceptionDisplayMode = smAlert
  ExecCmd = 'EXEC'
  HistoryEnabled = False
  Port = 8888
  RestrictIPs = True
  ShowResyncWarning = True
  SessionTimeout = 10
  SSLPort = 0
  StartCmd = 'start'
  SupportedBrowsers = [brIE, brNetscape6, brOpera]
  Left = 372
  Top = 377
  Height = 310
  Width = 342
end
