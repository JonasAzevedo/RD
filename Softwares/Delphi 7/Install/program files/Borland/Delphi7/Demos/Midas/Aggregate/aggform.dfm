object Form1: TForm1
  Left = 386
  Top = 236
  Width = 486
  Height = 394
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 248
    Top = 280
    Width = 50
    Height = 13
    Caption = 'OrderTotal'
  end
  object Label2: TLabel
    Left = 96
    Top = 312
    Width = 110
    Height = 13
    Caption = 'OrderTotal Per ShipVIA'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 88
    Width = 409
    Height = 185
    DataSource = OrderDSDataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 32
    Width = 129
    Height = 21
    DataField = 'Company'
    DataSource = CustOrdersDataSource
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 0
    Width = 240
    Height = 25
    DataSource = CustOrdersDataSource
    TabOrder = 2
  end
  object Button1: TButton
    Left = 272
    Top = 0
    Width = 75
    Height = 25
    Caption = '&Open'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBEdit2: TDBEdit
    Left = 312
    Top = 280
    Width = 121
    Height = 21
    DataField = 'TotalPerCustomer'
    DataSource = OrderDSDataSource
    TabOrder = 4
  end
  object DBNavigator2: TDBNavigator
    Left = 24
    Top = 64
    Width = 225
    Height = 25
    DataSource = OrderDSDataSource
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 312
    Top = 312
    Width = 121
    Height = 21
    DataField = 'OrderTotalPerShipMethod'
    DataSource = OrderDSDataSource
    TabOrder = 6
  end
  object Button2: TButton
    Left = 272
    Top = 64
    Width = 113
    Height = 25
    Caption = '&GroupByShipVIA'
    TabOrder = 7
    OnClick = Button2Click
  end
  object DBTextShipMethod: TDBEdit
    Left = 216
    Top = 312
    Width = 89
    Height = 21
    DataSource = OrderDSDataSource
    TabOrder = 8
  end
  object CustDataSource: TDataSource
    DataSet = CustQuery
    Left = 152
    Top = 184
  end
  object CustQuery: TQuery
    DatabaseName = 'DBDEMOS'
    SQL.Strings = (
      'select * from customer'
      'where CustNo < 1500')
    Left = 184
    Top = 184
    object CustQueryCustNo: TFloatField
      FieldName = 'CustNo'
      Origin = '"customer.DB".CustNo'
    end
    object CustQueryCompany: TStringField
      FieldName = 'Company'
      Origin = '"customer.DB".Company'
      Size = 30
    end
    object CustQueryAddr1: TStringField
      FieldName = 'Addr1'
      Origin = '"customer.DB".Addr1'
      Size = 30
    end
    object CustQueryAddr2: TStringField
      FieldName = 'Addr2'
      Origin = '"customer.DB".Addr2'
      Size = 30
    end
    object CustQueryCity: TStringField
      FieldName = 'City'
      Origin = '"customer.DB".City'
      Size = 15
    end
    object CustQueryState: TStringField
      FieldName = 'State'
      Origin = '"customer.DB".State'
    end
    object CustQueryZip: TStringField
      FieldName = 'Zip'
      Origin = '"customer.DB".Zip'
      Size = 10
    end
    object CustQueryCountry: TStringField
      FieldName = 'Country'
      Origin = '"customer.DB".Country'
    end
    object CustQueryPhone: TStringField
      FieldName = 'Phone'
      Origin = '"customer.DB".Phone'
      Size = 15
    end
    object CustQueryFAX: TStringField
      FieldName = 'FAX'
      Origin = '"customer.DB".FAX'
      Size = 15
    end
    object CustQueryTaxRate: TFloatField
      FieldName = 'TaxRate'
      Origin = '"customer.DB".TaxRate'
    end
    object CustQueryContact: TStringField
      FieldName = 'Contact'
      Origin = '"customer.DB".Contact'
    end
    object CustQueryLastInvoiceDate: TDateTimeField
      FieldName = 'LastInvoiceDate'
      Origin = '"customer.DB".LastInvoiceDate'
    end
  end
  object OrderQuery: TQuery
    Active = True
    DatabaseName = 'DBDEMOS'
    DataSource = CustDataSource
    SQL.Strings = (
      'select * from orders'
      'where CustNo = :CustNo')
    Left = 216
    Top = 184
    ParamData = <
      item
        DataType = ftFloat
        Name = 'CustNo'
        ParamType = ptUnknown
      end>
  end
  object Provider1: TDataSetProvider
    DataSet = CustQuery
    Constraints = False
    Left = 248
    Top = 184
  end
  object CustOrders: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider1'
    Left = 280
    Top = 184
    object CustOrdersCustNo: TFloatField
      FieldName = 'CustNo'
    end
    object CustOrdersCompany: TStringField
      FieldName = 'Company'
      Size = 30
    end
    object CustOrdersAddr1: TStringField
      FieldName = 'Addr1'
      Size = 30
    end
    object CustOrdersAddr2: TStringField
      FieldName = 'Addr2'
      Size = 30
    end
    object CustOrdersCity: TStringField
      FieldName = 'City'
      Size = 15
    end
    object CustOrdersState: TStringField
      FieldName = 'State'
    end
    object CustOrdersZip: TStringField
      FieldName = 'Zip'
      Size = 10
    end
    object CustOrdersCountry: TStringField
      FieldName = 'Country'
    end
    object CustOrdersPhone: TStringField
      FieldName = 'Phone'
      Size = 15
    end
    object CustOrdersFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object CustOrdersTaxRate: TFloatField
      FieldName = 'TaxRate'
    end
    object CustOrdersContact: TStringField
      FieldName = 'Contact'
    end
    object CustOrdersLastInvoiceDate: TDateTimeField
      FieldName = 'LastInvoiceDate'
    end
    object CustOrdersOrderQuery: TDataSetField
      FieldName = 'OrderQuery'
      IncludeObjectField = False
    end
  end
  object CustOrdersDataSource: TDataSource
    DataSet = CustOrders
    Left = 344
    Top = 184
  end
  object OrderDSDataSource: TDataSource
    DataSet = OrderDS
    Left = 376
    Top = 184
  end
  object OrderDS: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = CustOrdersOrderQuery
    FieldDefs = <
      item
        Name = 'OrderNo'
        DataType = ftFloat
      end
      item
        Name = 'CustNo'
        DataType = ftFloat
      end
      item
        Name = 'SaleDate'
        DataType = ftDateTime
      end
      item
        Name = 'ShipDate'
        DataType = ftDateTime
      end
      item
        Name = 'EmpNo'
        DataType = ftInteger
      end
      item
        Name = 'ShipToContact'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ShipToAddr1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ShipToAddr2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ShipToCity'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ShipToState'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ShipToZip'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ShipToCountry'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ShipToPhone'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ShipVIA'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'PO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Terms'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'PaymentMethod'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'ItemsTotal'
        DataType = ftCurrency
      end
      item
        Name = 'TaxRate'
        DataType = ftFloat
      end
      item
        Name = 'Freight'
        DataType = ftCurrency
      end
      item
        Name = 'AmountPaid'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'ShipVIA'
        Fields = 'ShipVIA'
      end>
    Params = <>
    StoreDefs = True
    Left = 312
    Top = 184
    object OrderDSTotalPerCustomer: TAggregateField
      FieldName = 'TotalPerCustomer'
      Active = True
      Expression = 'sum( ItemsTotal )'
    end
    object OrderDSOrderTotalPerShipMethod: TAggregateField
      FieldName = 'OrderTotalPerShipMethod'
      Active = True
      Expression = 'sum( ItemsTotal )'
      GroupingLevel = 1
      IndexName = 'ShipVIA'
    end
  end
end
