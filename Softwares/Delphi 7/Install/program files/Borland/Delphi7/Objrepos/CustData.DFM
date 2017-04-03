object CustomerData: TCustomerData
  Left = 191
  Top = 203
  Height = 182
  Width = 319
  object Customers: TTable
    DatabaseName = 'DBDEMOS'
    TableName = 'CUSTOMER.DB'
    Left = 32
    Top = 8
    object CustomersCustNo: TFloatField
      FieldName = 'CustNo'
    end
    object CustomersCompany: TStringField
      FieldName = 'Company'
      Size = 30
    end
    object CustomersAddr1: TStringField
      FieldName = 'Addr1'
      Size = 30
    end
    object CustomersAddr2: TStringField
      FieldName = 'Addr2'
      Size = 30
    end
    object CustomersCity: TStringField
      FieldName = 'City'
      Size = 15
    end
    object CustomersState: TStringField
      FieldName = 'State'
    end
    object CustomersZip: TStringField
      FieldName = 'Zip'
      Size = 10
    end
    object CustomersCountry: TStringField
      FieldName = 'Country'
    end
    object CustomersPhone: TStringField
      FieldName = 'Phone'
      Size = 15
    end
    object CustomersFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object CustomersTaxRate: TFloatField
      FieldName = 'TaxRate'
    end
    object CustomersContact: TStringField
      FieldName = 'Contact'
    end
    object CustomersLastInvoiceDate: TDateTimeField
      FieldName = 'LastInvoiceDate'
    end
  end
  object Orders: TTable
    DatabaseName = 'DBDEMOS'
    TableName = 'ORDERS.DB'
    Left = 104
    Top = 8
    object OrdersOrderNo: TFloatField
      FieldName = 'OrderNo'
    end
    object OrdersCustNo: TFloatField
      FieldName = 'CustNo'
      Required = True
    end
    object OrdersCustCompany: TStringField
      FieldName = 'CustCompany'
      Lookup = True
      LookupDataSet = CustomerLookup
      LookupKeyFields = 'CustNo'
      LookupResultField = 'Company'
      KeyFields = 'CustNo'
    end
    object OrdersSaleDate: TDateTimeField
      FieldName = 'SaleDate'
    end
    object OrdersShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object OrdersEmpNo: TIntegerField
      FieldName = 'EmpNo'
      Required = True
    end
    object OrdersShipToContact: TStringField
      FieldName = 'ShipToContact'
    end
    object OrdersShipToAddr1: TStringField
      FieldName = 'ShipToAddr1'
      Size = 30
    end
    object OrdersShipToAddr2: TStringField
      FieldName = 'ShipToAddr2'
      Size = 30
    end
    object OrdersShipToCity: TStringField
      FieldName = 'ShipToCity'
      Size = 15
    end
    object OrdersShipToState: TStringField
      FieldName = 'ShipToState'
    end
    object OrdersShipToZip: TStringField
      FieldName = 'ShipToZip'
      Size = 10
    end
    object OrdersShipToCountry: TStringField
      FieldName = 'ShipToCountry'
    end
    object OrdersShipToPhone: TStringField
      FieldName = 'ShipToPhone'
      Size = 15
    end
    object OrdersShipVIA: TStringField
      FieldName = 'ShipVIA'
      Size = 7
    end
    object OrdersPO: TStringField
      FieldName = 'PO'
      Size = 15
    end
    object OrdersTerms: TStringField
      FieldName = 'Terms'
      Size = 6
    end
    object OrdersPaymentMethod: TStringField
      FieldName = 'PaymentMethod'
      Size = 7
    end
    object OrdersItemsTotal: TCurrencyField
      FieldName = 'ItemsTotal'
    end
    object OrdersTaxRate: TFloatField
      FieldName = 'TaxRate'
    end
    object OrdersFreight: TCurrencyField
      FieldName = 'Freight'
    end
    object OrdersAmountPaid: TCurrencyField
      FieldName = 'AmountPaid'
    end
  end
  object LineItems: TTable
    OnCalcFields = LineItemsCalcFields
    DatabaseName = 'DBDEMOS'
    IndexFieldNames = 'OrderNo'
    MasterFields = 'OrderNo'
    MasterSource = OrderSource
    TableName = 'ITEMS.DB'
    Left = 176
    Top = 8
    object LineItemsOrderNo: TFloatField
      FieldName = 'OrderNo'
      Visible = False
    end
    object LineItemsItemNo: TFloatField
      FieldName = 'ItemNo'
    end
    object LineItemsPartNo: TFloatField
      FieldName = 'PartNo'
    end
    object LineItemsPartName: TStringField
      FieldName = 'PartName'
      Lookup = True
      LookupDataSet = PartLookup
      LookupKeyFields = 'PartNo'
      LookupResultField = 'Description'
      KeyFields = 'PartNo'
    end
    object LineItemsQty: TIntegerField
      FieldName = 'Qty'
    end
    object LineItemsPrice: TCurrencyField
      FieldName = 'Price'
      Lookup = True
      LookupDataSet = PartLookup
      LookupKeyFields = 'PartNo'
      LookupResultField = 'ListPrice'
      KeyFields = 'PartNo'
    end
    object LineItemsDiscount: TFloatField
      FieldName = 'Discount'
      DisplayFormat = '#0.#%'
      EditFormat = '##.#'
      Precision = 3
    end
    object LineItemsExtendedPrice: TCurrencyField
      Calculated = True
      FieldName = 'ExtendedPrice'
    end
    object LineItemsTotal: TCurrencyField
      Calculated = True
      FieldName = 'Total'
    end
  end
  object Parts: TTable
    DatabaseName = 'DBDEMOS'
    TableName = 'PARTS.DB'
    Left = 248
    Top = 8
    object PartsPartNo: TFloatField
      FieldName = 'PartNo'
    end
    object PartsVendorNo: TFloatField
      FieldName = 'VendorNo'
    end
    object PartsDescription: TStringField
      FieldName = 'Description'
      Size = 30
    end
    object PartsOnHand: TFloatField
      FieldName = 'OnHand'
    end
    object PartsOnOrder: TFloatField
      FieldName = 'OnOrder'
    end
    object PartsCost: TCurrencyField
      FieldName = 'Cost'
    end
    object PartsListPrice: TCurrencyField
      FieldName = 'ListPrice'
    end
  end
  object CustomerSource: TDataSource
    DataSet = Customers
    Left = 32
    Top = 56
  end
  object OrderSource: TDataSource
    DataSet = Orders
    Left = 104
    Top = 56
  end
  object LineItemSource: TDataSource
    DataSet = LineItems
    Left = 176
    Top = 56
  end
  object PartSource: TDataSource
    DataSet = Parts
    Left = 248
    Top = 56
  end
  object CustomerLookup: TTable
    DatabaseName = 'DBDEMOS'
    TableName = 'CUSTOMER.DB'
    Left = 32
    Top = 104
    object FloatField1: TFloatField
      FieldName = 'CustNo'
    end
    object StringField1: TStringField
      FieldName = 'Company'
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'Addr1'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'Addr2'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'City'
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'State'
    end
    object StringField6: TStringField
      FieldName = 'Zip'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'Country'
    end
    object StringField8: TStringField
      FieldName = 'Phone'
      Size = 15
    end
    object StringField9: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object FloatField2: TFloatField
      FieldName = 'TaxRate'
    end
    object StringField10: TStringField
      FieldName = 'Contact'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'LastInvoiceDate'
    end
  end
  object PartLookup: TTable
    DatabaseName = 'DBDEMOS'
    TableName = 'PARTS.DB'
    Left = 248
    Top = 104
    object FloatField3: TFloatField
      FieldName = 'PartNo'
    end
    object FloatField4: TFloatField
      FieldName = 'VendorNo'
    end
    object StringField11: TStringField
      FieldName = 'Description'
      Size = 30
    end
    object FloatField5: TFloatField
      FieldName = 'OnHand'
    end
    object FloatField6: TFloatField
      FieldName = 'OnOrder'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Cost'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'ListPrice'
    end
  end
end
