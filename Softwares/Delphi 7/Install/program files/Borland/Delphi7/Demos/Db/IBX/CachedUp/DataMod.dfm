object CacheData: TCacheData
  OldCreateOrder = True
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  object CacheDS: TDataSource
    DataSet = IBCacheQuery
    Left = 47
    Top = 122
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Program Files\Common Files\Borland Shared\Data\employee.gdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    Left = 124
    Top = 20
  end
  object IBCacheQuery: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnCalcFields = CacheQueryCalcFields
    OnUpdateError = IBCacheQueryUpdateError
    Active = True
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'SELECT PROJ_ID , PROJ_NAME'
      'FROM PROJECT '
      'ORDER BY'
      ' PROJ_ID')
    UpdateObject = IBUpdateSQL
    Left = 48
    Top = 20
    object IBCacheQueryPROJ_ID: TStringField
      FieldName = 'PROJ_ID'
      Size = 5
    end
    object IBCacheQueryPROJ_NAME: TStringField
      FieldName = 'PROJ_NAME'
    end
    object IBCacheQueryUpdateStatus: TStringField
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
  end
  object IBUpdateSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PROJ_ID,'
      '  PROJ_NAME,'
      '  PROJ_DESC,'
      '  TEAM_LEADER,'
      '  PRODUCT'
      'from PROJECT '
      'where'
      '  PROJ_ID = :PROJ_ID')
    ModifySQL.Strings = (
      'update PROJECT'
      'set'
      '  PROJ_ID = :PROJ_ID,'
      '  PROJ_NAME = :PROJ_NAME'
      'where'
      '  PROJ_ID = :OLD_PROJ_ID')
    InsertSQL.Strings = (
      'insert into PROJECT'
      '  (PROJ_ID, PROJ_NAME)'
      'values'
      '  (:PROJ_ID, :PROJ_NAME)')
    DeleteSQL.Strings = (
      'delete from PROJECT'
      'where'
      '  PROJ_ID = :OLD_PROJ_ID')
    Left = 48
    Top = 72
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 124
    Top = 72
  end
  object IBCachedDataSet: TIBDataSet
    Tag = 1
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnCalcFields = IBCachedDataSetCalcFields
    OnUpdateError = IBCacheQueryUpdateError
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from PROJECT'
      'where'
      '  PROJ_ID = :OLD_PROJ_ID')
    InsertSQL.Strings = (
      'insert into PROJECT'
      '  (PROJ_ID, PROJ_NAME)'
      'values'
      '  (:PROJ_ID, :PROJ_NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  PROJ_ID,'
      '  PROJ_NAME,'
      '  PROJ_DESC,'
      '  TEAM_LEADER,'
      '  PRODUCT'
      'from PROJECT '
      'where'
      '  PROJ_ID = :PROJ_ID')
    SelectSQL.Strings = (
      'SELECT PROJ_ID , PROJ_NAME'
      'FROM PROJECT '
      'ORDER BY'
      '  PROJ_ID')
    ModifySQL.Strings = (
      'update PROJECT'
      'set'
      '  PROJ_ID = :PROJ_ID,'
      '  PROJ_NAME = :PROJ_NAME'
      'where'
      '  PROJ_ID = :OLD_PROJ_ID')
    Active = True
    Left = 48
    Top = 192
    object IBCachedDataSetPROJ_ID: TStringField
      FieldName = 'PROJ_ID'
      Size = 5
    end
    object IBCachedDataSetPROJ_NAME: TStringField
      FieldName = 'PROJ_NAME'
    end
    object IBCachedDataSetUpdateStatus: TStringField
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
  end
  object IBCachedTable: TIBTable
    Tag = 2
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnCalcFields = IBCachedTableCalcFields
    OnUpdateError = IBCacheQueryUpdateError
    Active = True
    BufferChunks = 1000
    CachedUpdates = True
    FieldDefs = <
      item
        Name = 'PROJ_ID'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PROJ_NAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PROJ_DESC'
        DataType = ftMemo
        Size = 8
      end
      item
        Name = 'TEAM_LEADER'
        DataType = ftSmallint
      end
      item
        Name = 'PRODUCT'
        Attributes = [faRequired]
        DataType = ftString
        Size = 12
      end>
    IndexDefs = <
      item
        Name = 'RDB$11'
        Fields = 'PROJ_NAME'
        Options = [ixUnique]
      end
      item
        Name = 'RDB$PRIMARY12'
        Fields = 'PROJ_ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN13'
        Fields = 'TEAM_LEADER'
      end
      item
        Name = 'PRODTYPEX'
        Fields = 'PRODUCT;PROJ_NAME'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'PROJECT'
    Left = 48
    Top = 244
    object IBCachedTablePROJ_ID: TStringField
      FieldName = 'PROJ_ID'
      Size = 5
    end
    object IBCachedTablePROJ_NAME: TStringField
      FieldName = 'PROJ_NAME'
    end
    object IBCachedTableUpdateStatus: TStringField
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'UpdateStatus'
      Calculated = True
    end
  end
end
