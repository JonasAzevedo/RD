object Form1: TForm1
  Left = 219
  Top = 115
  AutoScroll = False
  Caption = 'Shape Demo'
  ClientHeight = 375
  ClientWidth = 663
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 96
    Width = 663
    Height = 137
    Align = alTop
    DataSource = CustSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 233
    Width = 663
    Height = 142
    Align = alClient
    DataSource = OrderSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 663
    Height = 96
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object ProviderLabel: TLabel
      Left = 15
      Top = 10
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Provider='
    end
    object DataProviderLabel: TLabel
      Left = 6
      Top = 33
      Width = 89
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data Provider='
    end
    object DataSourceLabel: TLabel
      Left = 5
      Top = 59
      Width = 88
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data Source='
    end
    object Label4: TLabel
      Left = 444
      Top = 29
      Width = 188
      Height = 39
      Caption = 
        'If needed, update the path for the Data Source to point to the l' +
        'ocation of the Delphi demo data.'
      WordWrap = True
    end
    object Provider: TEdit
      Left = 100
      Top = 6
      Width = 337
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = 'MSDataShape.1'
    end
    object DataProvider: TEdit
      Left = 100
      Top = 31
      Width = 337
      Height = 21
      TabOrder = 1
      Text = 'Microsoft.Jet.OLEDB.4.0'
    end
    object DataSource: TEdit
      Left = 100
      Top = 56
      Width = 337
      Height = 21
      TabOrder = 2
      Text = '..\..\..\..\..\Common Files\Borland Shared\Data\dbdemos.mdb'
    end
    object OpenButton: TButton
      Left = 450
      Top = 1
      Width = 75
      Height = 25
      Caption = '&Open'
      TabOrder = 3
      OnClick = OpenButtonClick
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDataShape.1;Persist Security Info=True;Data Source=C:' +
      '\Program Files\Common Files\Borland Shared\Data\DBDemos.mdb;Data' +
      ' Provider=Microsoft.Jet.OLEDB.4.0'
    LoginPrompt = False
    Provider = 'MSDataShape.1'
    Left = 3
    Top = 1
  end
  object Customers: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SHAPE  {select * from customer} '#13#10'APPEND ({select * from orders}' +
      ' AS Orders'#13#10'   RELATE CustNo TO CustNo) '
    Parameters = <>
    Left = 12
    Top = 196
    object CustomersCustNo: TFloatField
      FieldName = 'CustNo'
    end
    object CustomersCompany: TWideStringField
      FieldName = 'Company'
      Size = 30
    end
    object CustomersAddr1: TWideStringField
      FieldName = 'Addr1'
      Size = 30
    end
    object CustomersAddr2: TWideStringField
      FieldName = 'Addr2'
      Size = 30
    end
    object CustomersCity: TWideStringField
      FieldName = 'City'
      Size = 15
    end
    object CustomersState: TWideStringField
      FieldName = 'State'
    end
    object CustomersZip: TWideStringField
      FieldName = 'Zip'
      Size = 10
    end
    object CustomersCountry: TWideStringField
      FieldName = 'Country'
    end
    object CustomersPhone: TWideStringField
      FieldName = 'Phone'
      Size = 15
    end
    object CustomersFAX: TWideStringField
      FieldName = 'FAX'
      Size = 15
    end
    object CustomersTaxRate: TFloatField
      FieldName = 'TaxRate'
    end
    object CustomersContact: TWideStringField
      FieldName = 'Contact'
    end
    object CustomersLastInvoiceDate: TDateField
      FieldName = 'LastInvoiceDate'
    end
    object CustomersOrders: TDataSetField
      FieldName = 'Orders'
      ReadOnly = True
      IncludeObjectField = False
    end
  end
  object Orders: TADODataSet
    CursorType = ctStatic
    DataSetField = CustomersOrders
    Parameters = <>
    Left = 11
    Top = 337
    object OrdersOrderNo: TFloatField
      FieldName = 'OrderNo'
    end
    object OrdersCustNo: TFloatField
      FieldName = 'CustNo'
    end
    object OrdersSaleDate: TDateField
      FieldName = 'SaleDate'
    end
    object OrdersShipDate: TDateField
      FieldName = 'ShipDate'
    end
    object OrdersEmpNo: TIntegerField
      FieldName = 'EmpNo'
    end
    object OrdersShipToContact: TWideStringField
      FieldName = 'ShipToContact'
    end
    object OrdersShipToAddr1: TWideStringField
      FieldName = 'ShipToAddr1'
      Size = 30
    end
    object OrdersShipToAddr2: TWideStringField
      FieldName = 'ShipToAddr2'
      Size = 30
    end
    object OrdersShipToCity: TWideStringField
      FieldName = 'ShipToCity'
      Size = 15
    end
    object OrdersShipToState: TWideStringField
      FieldName = 'ShipToState'
    end
    object OrdersShipToZip: TWideStringField
      FieldName = 'ShipToZip'
      Size = 10
    end
    object OrdersShipToCountry: TWideStringField
      FieldName = 'ShipToCountry'
    end
    object OrdersShipToPhone: TWideStringField
      FieldName = 'ShipToPhone'
      Size = 15
    end
    object OrdersShipVIA: TWideStringField
      FieldName = 'ShipVIA'
      Size = 7
    end
    object OrdersPO: TWideStringField
      FieldName = 'PO'
      Size = 15
    end
    object OrdersTerms: TWideStringField
      FieldName = 'Terms'
      Size = 6
    end
    object OrdersPaymentMethod: TWideStringField
      FieldName = 'PaymentMethod'
      Size = 7
    end
    object OrdersItemsTotal: TFloatField
      FieldName = 'ItemsTotal'
    end
    object OrdersTaxRate: TFloatField
      FieldName = 'TaxRate'
    end
    object OrdersFreight: TFloatField
      FieldName = 'Freight'
    end
    object OrdersAmountPaid: TFloatField
      FieldName = 'AmountPaid'
    end
  end
  object CustSource: TDataSource
    DataSet = Customers
    Left = 49
    Top = 198
  end
  object OrderSource: TDataSource
    DataSet = Orders
    Left = 49
    Top = 338
  end
end
