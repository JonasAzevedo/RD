inherited StdDataForm: TStdDataForm
  Caption = 'StdDataForm'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited GDSStdPanel: TPanel
    TabOrder = 1
  end
  object StdCtrlPanel: TPanel
    Left = 0
    Top = 89
    Width = 460
    Height = 72
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object FilterOnRadioGroup: TRadioGroup
      Left = 11
      Top = 7
      Width = 95
      Height = 57
      Caption = 'Filter Field'
      Items.Strings = (
        'Sale &Date'
        'A&mount Due')
      TabOrder = 0
      OnClick = FilterOnRadioGroupClick
    end
    object GroupBox1: TGroupBox
      Left = 119
      Top = 7
      Width = 162
      Height = 57
      Caption = 'Filter/Search Critera'
      TabOrder = 1
      object FilterOnLabel: TLabel
        Left = 8
        Top = 14
        Width = 83
        Height = 13
        Caption = 'Show records >= '
      end
      object FilterCriteria: TEdit
        Left = 6
        Top = 30
        Width = 150
        Height = 21
        TabOrder = 0
        OnExit = FilterCriteriaExit
        OnKeyPress = FilterCriteriaKeyPress
      end
    end
    object FilterCheckBox: TCheckBox
      Left = 314
      Top = 14
      Width = 135
      Height = 17
      Caption = '&Filtered Records Only'
      TabOrder = 2
      OnClick = FilterCheckBoxClick
    end
    object NextBtn: TButton
      Left = 295
      Top = 37
      Width = 70
      Height = 25
      Caption = 'Find &Next'
      TabOrder = 3
      OnClick = NextBtnClick
    end
    object PriorBtn: TButton
      Left = 377
      Top = 37
      Width = 70
      Height = 25
      Caption = 'Find &Prior'
      TabOrder = 4
      OnClick = PriorBtnClick
    end
  end
  object Orders: TTable
    Active = True
    OnCalcFields = OrdersCalcFields
    OnFilterRecord = OrdersFilterOnAmount
    DatabaseName = 'DBDEMOS'
    IndexFieldNames = 'CustNo'
    ReadOnly = True
    TableName = 'ORDERS.DB'
    Left = 364
    Top = 270
    object OrdersOrderNo: TFloatField
      FieldName = 'OrderNo'
    end
    object OrdersCustNo: TFloatField
      FieldName = 'CustNo'
      Required = True
    end
    object OrdersCustName: TStringField
      DisplayWidth = 27
      FieldName = 'CustName'
      Lookup = True
      LookupDataSet = Cust
      LookupKeyFields = 'CustNo'
      LookupResultField = 'Company'
      KeyFields = 'CustNo'
      Size = 30
    end
    object OrdersSaleDate: TDateTimeField
      FieldName = 'SaleDate'
    end
    object OrdersAmountDue: TCurrencyField
      Calculated = True
      DisplayLabel = 'AmountDue'
      FieldName = 'Amount'
    end
    object OrdersShipDate: TDateTimeField
      FieldName = 'ShipDate'
      Visible = False
    end
    object OrdersEmpNo: TIntegerField
      FieldName = 'EmpNo'
      Required = True
      Visible = False
    end
    object OrdersShipToContact: TStringField
      FieldName = 'ShipToContact'
      Visible = False
    end
    object OrdersShipToAddr1: TStringField
      FieldName = 'ShipToAddr1'
      Visible = False
      Size = 30
    end
    object OrdersShipToAddr2: TStringField
      FieldName = 'ShipToAddr2'
      Visible = False
      Size = 30
    end
    object OrdersShipToCity: TStringField
      FieldName = 'ShipToCity'
      Visible = False
      Size = 15
    end
    object OrdersShipToState: TStringField
      FieldName = 'ShipToState'
      Visible = False
    end
    object OrdersShipToZip: TStringField
      FieldName = 'ShipToZip'
      Visible = False
      Size = 10
    end
    object OrdersShipToCountry: TStringField
      FieldName = 'ShipToCountry'
      Visible = False
    end
    object OrdersShipToPhone: TStringField
      FieldName = 'ShipToPhone'
      Visible = False
      Size = 15
    end
    object OrdersShipVIA: TStringField
      FieldName = 'ShipVIA'
      Visible = False
      Size = 7
    end
    object OrdersPO: TStringField
      FieldName = 'PO'
      Visible = False
      Size = 15
    end
    object OrdersTerms: TStringField
      FieldName = 'Terms'
      Visible = False
      Size = 6
    end
    object OrdersPaymentMethod: TStringField
      FieldName = 'PaymentMethod'
      Visible = False
      Size = 7
    end
    object OrdersItemsTotal: TCurrencyField
      FieldName = 'ItemsTotal'
      Visible = False
    end
    object OrdersTaxRate: TFloatField
      FieldName = 'TaxRate'
      Visible = False
    end
    object OrdersFreight: TCurrencyField
      FieldName = 'Freight'
      Visible = False
    end
    object OrdersAmountPaid: TCurrencyField
      FieldName = 'AmountPaid'
      Visible = False
    end
    object OrdersTaxAmount: TCurrencyField
      Calculated = True
      FieldName = 'TaxAmount'
    end
  end
  object Cust: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    IndexFieldNames = 'CustNo'
    ReadOnly = True
    TableName = 'CUSTOMER.DB'
    Left = 412
    Top = 270
  end
  object OrdersSource: TDataSource
    DataSet = Orders
    Left = 303
    Top = 270
  end
end
