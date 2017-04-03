object EmpServer: TEmpServer
  OldCreateOrder = True
  OnCreate = EmpServerCreate
  OnDestroy = EmpServerDestroy
  Left = 468
  Top = 394
  Height = 479
  Width = 741
  object EmpQuery: TQuery
    AfterOpen = EmpQueryAfterOpen
    DatabaseName = 'dbdemos'
    RequestLive = True
    SQL.Strings = (
      'select * from employee')
    Left = 70
    Top = 34
  end
  object EmpQueryProvider: TDataSetProvider
    DataSet = EmpQuery
    Constraints = True
    Left = 152
    Top = 32
  end
end
