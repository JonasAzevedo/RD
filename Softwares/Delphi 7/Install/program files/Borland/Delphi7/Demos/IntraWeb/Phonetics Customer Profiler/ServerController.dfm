object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'Phonitiks'
  ComInitialization = ciNone
  SessionTrackingMethod = tmURL
  Description = 'Phonitiks Customer Profiler'
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
  OnNewSession = IWServerControllerBaseNewSession
  Left = 387
  Top = 227
  Height = 310
  Width = 342
end
