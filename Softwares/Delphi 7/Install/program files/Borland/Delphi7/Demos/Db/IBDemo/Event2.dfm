object dmEvents: TdmEvents
  OnCreate = dmEventsCreate
  Left = 248
  Top = 117
  Height = 150
  Width = 215
  object Database1: TDatabase
    DatabaseName = 'IBEvents'
    DriverName = 'INTRBASE'
    Params.Strings = (
      'SERVER NAME='
      'USER NAME=SYSDBA')
    SessionName = 'Default'
    Left = 24
    Top = 12
  end
  object IBEventAlerter1: TIBEventAlerter
    Database = Database1
    Registered = False
    OnEventAlert = IBEventAlerter1EventAlert
    Left = 108
    Top = 60
  end
  object StoredProc1: TStoredProc
    DatabaseName = 'IBEvents'
    StoredProcName = 'EventDemo'
    Left = 108
    Top = 12
  end
end
