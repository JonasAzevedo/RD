object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'FishFactDM'
  ComInitialization = ciNone
  SessionTrackingMethod = tmURL
  Description = 'FishFact Datamodule Demo'
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
  Left = 406
  Top = 250
  Height = 310
  Width = 342
end
