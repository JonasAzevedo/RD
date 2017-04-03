object PooledRDM: TPooledRDM
  OldCreateOrder = True
  Left = 466
  Top = 290
  Height = 479
  Width = 741
  object Session1: TSession
    AutoSessionName = True
    Left = 16
    Top = 8
  end
  object Database1: TDatabase
    AliasName = 'DBDEMOS'
    DatabaseName = 'TESTDB'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=barney'
      'PASSWORD=betty')
    SessionName = 'Session1_3'
    Left = 72
    Top = 8
  end
  object Query1: TQuery
    DatabaseName = 'TESTDB'
    SessionName = 'Session1_3'
    RequestLive = True
    Left = 128
    Top = 8
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = Query1
    Constraints = True
    Options = [poNoReset]
    BeforeGetRecords = DataSetProvider1BeforeGetRecords
    Left = 192
    Top = 8
  end
end
