object AdHocQueryDemo: TAdHocQueryDemo
  OldCreateOrder = True
  OnCreate = AdHocQueryDemoCreate
  OnDestroy = AdHocQueryDemoDestroy
  Left = 466
  Top = 290
  Height = 479
  Width = 741
  object Session1: TSession
    AutoSessionName = True
    SQLHourGlass = False
    Left = 128
    Top = 64
  end
  object AdHocQuery: TQuery
    AfterOpen = AdHocQueryAfterOpen
    DatabaseName = 'ADHOC'
    SessionName = 'Session1_2'
    Left = 40
    Top = 16
  end
  object AdHocProvider: TDataSetProvider
    DataSet = AdHocQuery
    Constraints = True
    Options = [poAllowCommandText]
    Left = 126
    Top = 16
  end
  object Database1: TDatabase
    DatabaseName = 'ADHOC'
    LoginPrompt = False
    SessionName = 'Session1_2'
    Left = 38
    Top = 66
  end
end
