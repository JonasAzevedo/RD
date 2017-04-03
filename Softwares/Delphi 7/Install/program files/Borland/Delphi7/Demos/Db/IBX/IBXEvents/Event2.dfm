object dmEvents: TdmEvents
  OldCreateOrder = True
  Left = 248
  Top = 117
  Height = 150
  Width = 215
  object Database1: TIBDatabase
    Connected = True
    DatabaseName = 'events.gdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    Left = 32
    Top = 164
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = Database1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 104
    Top = 164
  end
  object StoredProc1: TIBStoredProc
    Database = Database1
    Transaction = IBTransaction1
    StoredProcName = 'EVENTDEMO'
    Params = <>
    Left = 208
    Top = 168
  end
  object IBEventAlerter1: TIBEvents
    Database = Database1
    Registered = False
    OnEventAlert = IBEventAlerter1EventAlert
    Left = 292
    Top = 172
  end
end
