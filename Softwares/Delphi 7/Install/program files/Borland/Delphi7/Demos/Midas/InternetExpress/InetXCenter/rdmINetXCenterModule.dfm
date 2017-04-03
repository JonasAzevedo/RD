object INetXCenterData: TINetXCenterData
  OldCreateOrder = False
  Left = 219
  Top = 170
  Height = 439
  Width = 606
  object Session1: TSession
    Active = True
    AutoSessionName = True
    Left = 32
    Top = 24
  end
  object SelectCustNames: TQuery
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    SQL.Strings = (
      'Select CustNo, Company from Customer order by Company')
    Left = 120
    Top = 16
  end
  object OrderItems: TTable
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    IndexName = 'ByOrderNo'
    MasterFields = 'OrderNo'
    MasterSource = SelectCustOrderSrc
    TableName = 'items.db'
    Left = 112
    Top = 80
  end
  object SelectCustOrders: TQuery
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    SQL.Strings = (
      'Select * from orders where CustNo = :CustNo')
    Left = 32
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CustNo'
        ParamType = ptUnknown
        Value = '1221'
      end>
  end
  object SelectCustOrderSrc: TDataSource
    DataSet = SelectCustOrders
    Left = 32
    Top = 144
  end
  object CustOrders: TDataSetProvider
    DataSet = SelectCustOrders
    Constraints = True
    Left = 128
    Top = 144
  end
  object CustNames: TDataSetProvider
    DataSet = SelectCustNames
    Constraints = True
    Left = 192
    Top = 72
  end
  object SelectAllCustomers: TQuery
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    SQL.Strings = (
      'Select * from Customer')
    Left = 32
    Top = 208
  end
  object AllCustomers: TDataSetProvider
    DataSet = SelectAllCustomers
    Constraints = True
    Left = 136
    Top = 208
  end
  object SelectAllCountries: TQuery
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    SQL.Strings = (
      'Select * from Country')
    Left = 216
    Top = 144
  end
  object AllCountries: TDataSetProvider
    DataSet = SelectAllCountries
    Constraints = True
    Left = 232
    Top = 208
  end
  object AllCustOrders: TDataSetProvider
    DataSet = SelectAllCustomers
    Constraints = True
    Left = 240
    Top = 264
  end
  object SelectAllCustomersSrc: TDataSource
    DataSet = SelectAllCustomers
    Left = 40
    Top = 272
  end
  object CustOrderTable: TTable
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    IndexName = 'CustNo'
    MasterFields = 'CustNo'
    MasterSource = SelectAllCustomersSrc
    TableName = 'orders.db'
    Left = 144
    Top = 264
  end
end
