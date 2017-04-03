object dmThread: TdmThread
  OldCreateOrder = False
  Left = 220
  Top = 147
  Height = 479
  Width = 741
  object IBDatabase1: TIBDatabase
    DatabaseName = 
      'C:\Program Files\InterBase Corp\InterBase\Examples\Database\empl' +
      'oyee.gdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 52
    Top = 84
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Left = 124
    Top = 84
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 100
    CachedUpdates = False
    Left = 192
    Top = 84
  end
end
