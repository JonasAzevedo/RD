object DM1: TDM1
  OnCreate = DM1Create
  Left = 118
  Top = 83
  Height = 223
  Width = 451
  object Customer: TTable
    Active = True
    Filtered = True
    DatabaseName = 'DBDEMOS'
    IndexFieldNames = 'Company'
    TableName = 'CUSTOMER.DB'
    Left = 27
    Top = 9
  end
  object CustomerSource: TDataSource
    DataSet = Customer
    Left = 111
    Top = 33
  end
  object SQLCustomer: TQuery
    DatabaseName = 'DBDEMOS'
    SQL.Strings = (
      'SELECT * FROM "CUSTOMER.DB" ')
    Left = 26
    Top = 62
  end
  object SQLOrders: TQuery
    Active = True
    OnFilterRecord = SQLOrdersFilterRecord
    DatabaseName = 'DBDEMOS'
    DataSource = CustomerSource
    Params.Data = {0100010006437573744E6F000608000000000000B499400000}
    SQL.Strings = (
      'Select * From Orders Where Custno = :CustNo ')
    Left = 196
    Top = 32
    object SQLOrdersOrderNo: TFloatField
      DisplayWidth = 10
      FieldName = 'OrderNo'
    end
    object SQLOrdersCustno: TFloatField
      DisplayWidth = 8
      FieldName = 'Custno'
    end
    object SQLOrdersAmountPaid: TCurrencyField
      DisplayWidth = 13
      FieldName = 'AmountPaid'
    end
    object SQLOrdersSaleDate: TDateTimeField
      Alignment = taRightJustify
      DisplayWidth = 10
      FieldName = 'SaleDate'
    end
    object SQLOrdersShipDate: TDateTimeField
      Alignment = taRightJustify
      DisplayWidth = 10
      FieldName = 'ShipDate'
    end
    object SQLOrdersEmpNo: TIntegerField
      DisplayWidth = 8
      FieldName = 'EmpNo'
    end
  end
  object OrdersSource: TDataSource
    DataSet = SQLOrders
    Left = 272
    Top = 32
  end
end
