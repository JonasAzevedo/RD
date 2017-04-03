object LoginDemo: TLoginDemo
  OldCreateOrder = False
  OnCreate = LoginDemoCreate
  OnDestroy = LoginDemoDestroy
  Left = 415
  Top = 489
  Height = 479
  Width = 741
  object Country: TTable
    DatabaseName = 'DBDEMOS'
    TableName = 'country'
    Left = 8
    Top = 8
  end
  object CountryProvider: TDataSetProvider
    DataSet = Country
    Constraints = True
    Left = 80
    Top = 8
  end
end
