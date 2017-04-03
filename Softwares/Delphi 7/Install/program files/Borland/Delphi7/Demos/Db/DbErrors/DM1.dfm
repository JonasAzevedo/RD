object DM: TDM
  OldCreateOrder = True
  Left = 372
  Top = 190
  Height = 242
  Width = 222
  object Customer: TTable
    Active = True
    OnDeleteError = CustomerDeleteError
    OnPostError = CustomerPostError
    DatabaseName = 'dbdemos'
    TableName = 'CUSTOMER.DB'
    Left = 17
    Top = 8
    object CustomerCustNo: TFloatField
      Alignment = taLeftJustify
      DisplayWidth = 7
      FieldName = 'CustNo'
      DisplayFormat = 'CN 0000'
      EditFormat = '0000'
      MaxValue = 9999
      MinValue = 1000
    end
    object CustomerCompany: TStringField
      DisplayWidth = 22
      FieldName = 'Company'
      Size = 30
    end
  end
  object CustomerSource: TDataSource
    DataSet = Customer
    Left = 81
    Top = 8
  end
  object Orders: TTable
    Active = True
    OnDeleteError = OrdersDeleteError
    OnPostError = OrdersPostError
    DatabaseName = 'DBDEMOS'
    IndexName = 'CustNo'
    MasterFields = 'CustNo'
    MasterSource = CustomerSource
    TableName = 'ORDERS.DB'
    Left = 17
    Top = 70
    object OrdersOrderNo: TFloatField
      DisplayWidth = 10
      FieldName = 'OrderNo'
      DisplayFormat = #39'#'#39'0000'
      EditFormat = '0000'
    end
    object OrdersCustNo: TFloatField
      Alignment = taLeftJustify
      FieldName = 'CustNo'
      DisplayFormat = 'CN 0000'
      EditFormat = '0000'
      MaxValue = 9999
      MinValue = 1000
    end
    object OrdersSaleDate: TDateTimeField
      FieldName = 'SaleDate'
    end
    object OrdersShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object OrdersEmpNo: TIntegerField
      FieldName = 'EmpNo'
      DisplayFormat = 'Emp'#39'#'#39' 0000'
      EditFormat = '0000'
      MaxValue = 9999
      MinValue = 1
    end
  end
  object OrdersSource: TDataSource
    DataSet = Orders
    Left = 81
    Top = 70
  end
  object Items: TTable
    Active = True
    OnPostError = ItemsPostError
    DatabaseName = 'DBDEMOS'
    IndexFieldNames = 'OrderNo'
    MasterFields = 'OrderNo'
    MasterSource = OrdersSource
    TableName = 'ITEMS.DB'
    Left = 17
    Top = 130
    object ItemsOrderNo: TFloatField
      DisplayWidth = 10
      FieldName = 'OrderNo'
      DisplayFormat = '0000'
    end
    object ItemsItemNo: TFloatField
      DisplayWidth = 10
      FieldName = 'ItemNo'
    end
    object ItemsPartNo: TFloatField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'PartNo'
      DisplayFormat = 'PN-00000'
      EditFormat = '00000'
    end
    object ItemsQty: TIntegerField
      DisplayWidth = 6
      FieldName = 'Qty'
    end
    object ItemsDiscount: TFloatField
      DisplayWidth = 10
      FieldName = 'Discount'
      DisplayFormat = '#%'
      MinValue = 100
    end
  end
  object ItemsSource: TDataSource
    DataSet = Items
    Left = 81
    Top = 130
  end
end
