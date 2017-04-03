object FmMain: TFmMain
  Left = 263
  Top = 191
  BorderStyle = bsSingle
  Caption = 'Database Errors Demo'
  ClientHeight = 352
  ClientWidth = 359
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 74
    Height = 16
    Caption = 'Customers'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 121
    Width = 48
    Height = 16
    Caption = 'Orders'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 209
    Width = 38
    Height = 16
    Caption = 'Items'
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 5
    Top = 4
    Width = 240
    Height = 25
    TabOrder = 0
  end
  object GridCustomers: TDBGrid
    Left = 8
    Top = 47
    Width = 342
    Height = 73
    Columns = <
      item
        FieldName = 'CustNo'
      end
      item
        FieldName = 'Company'
      end>
    DataSource = DM.CustomerSource
    TabOrder = 1
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEnter = GridCustomersEnter
    OnExit = GridCustomersExit
  end
  object GridOrders: TDBGrid
    Left = 8
    Top = 136
    Width = 341
    Height = 75
    Columns = <
      item
        FieldName = 'OrderNo'
      end
      item
        FieldName = 'CustNo'
      end
      item
        FieldName = 'SaleDate'
      end
      item
        FieldName = 'ShipDate'
      end
      item
        FieldName = 'EmpNo'
        Width = 47
      end>
    DataSource = DM.OrdersSource
    TabOrder = 2
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEnter = GridOrdersEnter
  end
  object GridItems: TDBGrid
    Left = 8
    Top = 224
    Width = 341
    Height = 120
    DataSource = DM.ItemsSource
    TabOrder = 3
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEnter = GridItemsEnter
  end
  object MainMenu1: TMainMenu
    Left = 296
    object About1: TMenuItem
      Caption = '&About'
      ShortCut = 0
      OnClick = About1Click
    end
  end
end
