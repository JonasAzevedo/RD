object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'MyIWApp'
  ComInitialization = ciNone
  SessionTrackingMethod = tmURL
  Description = 'My Intraweb Application'
  DestinationDevice = ddWeb
  ExceptionDisplayMode = smAlert
  ExecCmd = 'EXEC'
  HistoryEnabled = False
  Port = 0
  RestrictIPs = False
  ShowResyncWarning = True
  SessionTimeout = 10
  SSLPort = 0
  StartCmd = 'start'
  SupportedBrowsers = [brIE, brNetscape6]
  Left = 487
  Top = 202
  Height = 310
  Width = 342
end
