object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'Features'
  ComInitialization = ciNone
  SessionTrackingMethod = tmURL
  Description = 'IntraWeb Feature Demo'
  DestinationDevice = ddWeb
  ExceptionDisplayMode = smAlert
  ExecCmd = 'EXEC'
  HistoryEnabled = False
  Port = 0
  RestrictIPs = False
  ShowResyncWarning = True
  SessionTimeout = 10
  SSLPort = 0
  SupportedBrowsers = [brIE, brNetscape6]
  OnNewSession = IWServerControllerBaseNewSession
  Left = 385
  Top = 235
  Height = 310
  Width = 342
end
