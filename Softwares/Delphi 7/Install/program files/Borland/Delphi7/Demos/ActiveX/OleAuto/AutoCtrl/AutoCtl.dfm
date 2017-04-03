object Form1: TForm1
  Left = 193
  Top = 108
  BorderStyle = bsSingle
  Caption = 'Automation Controller Demo'
  ClientHeight = 56
  ClientWidth = 317
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 317
    Height = 56
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 75
      Height = 13
      Caption = '&Company Name'
      FocusControl = Edit1
    end
    object InsertBtn: TButton
      Left = 232
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Insert Query'
      Default = True
      TabOrder = 0
      OnClick = InsertBtnClick
    end
    object Edit1: TEdit
      Left = 8
      Top = 22
      Width = 185
      Height = 21
      TabOrder = 1
      Text = 'Unisco'
    end
  end
  object Query1: TQuery
    DatabaseName = 'DBDEMOS'
    SQL.Strings = (
      'select Customer.Company, Orders.OrderNo, Orders.SaleDate '
      '  from Customer, Orders'
      '  where Customer.CustNo = Orders.CustNo'
      '  and Customer.Company = :Company')
    Params.Data = {0100010007436F6D70616E7900010700556E6973636F000001}
    Left = 200
    Top = 3
    object Query1Company: TStringField
      FieldName = 'Company'
      Size = 30
    end
    object Query1OrderNo: TFloatField
      FieldName = 'OrderNo'
    end
    object Query1SaleDate: TDateTimeField
      FieldName = 'SaleDate'
    end
  end
end
