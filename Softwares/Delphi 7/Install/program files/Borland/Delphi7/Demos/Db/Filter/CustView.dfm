object fmCustView: TfmCustView
  Left = 227
  Top = 109
  BorderStyle = bsSingle
  Caption = 'Customers - Unfiltered'
  ClientHeight = 362
  ClientWidth = 493
  Color = clBtnFace
  ParentFont = True
  Menu = MainMenu1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 12
    Top = 192
    Width = 93
    Height = 16
    Caption = 'Orders Query'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 36
    Width = 74
    Height = 16
    Caption = 'Customers'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 9
    Top = 128
    Width = 96
    Height = 25
    Caption = 'Filter &Customers'
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 343
    Width = 493
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object DBGrid2: TDBGrid
    Left = 132
    Top = 208
    Width = 350
    Height = 129
    DataSource = DM1.OrdersSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEnter = DBGrid2Enter
    Columns = <
      item
        Expanded = False
        FieldName = 'OrderNo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Custno'
        Title.Caption = 'CustNo'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AmountPaid'
        Title.Caption = 'Amount Paid'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShipDate'
        Title.Caption = 'Ship Date'
        Width = 83
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 132
    Top = 4
    Width = 88
    Height = 25
    DataSource = DM1.CustomerSource
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 3
  end
  object rgDataSet: TRadioGroup
    Left = 8
    Top = 60
    Width = 97
    Height = 61
    Caption = 'Dataset'
    ItemIndex = 1
    Items.Strings = (
      '&Query-Based'
      '&Table-Based')
    TabOrder = 2
    OnClick = rgDataSetClick
  end
  object DBGrid1: TDBGrid
    Left = 132
    Top = 33
    Width = 350
    Height = 163
    DataSource = DM1.CustomerSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEnter = DBGrid1Enter
    Columns = <
      item
        Expanded = False
        FieldName = 'CustNo'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Company'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Country'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LastInvoiceDate'
        Title.Caption = 'Last Invoice'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Contact'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'City'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'State'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 224
    Width = 121
    Height = 81
    Caption = 'Orders Filter'
    TabOrder = 5
    object Label1: TLabel
      Left = 4
      Top = 52
      Width = 60
      Height = 13
      Caption = 'Amount &Paid'
      FocusControl = Edit1
    end
    object cbFilterOrders: TCheckBox
      Left = 8
      Top = 20
      Width = 109
      Height = 17
      Caption = '&Filter'
      TabOrder = 0
      OnClick = cbFilterOrdersClick
    end
    object Edit1: TEdit
      Left = 68
      Top = 48
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '1000'
      OnChange = Edit1Change
    end
  end
  object MainMenu1: TMainMenu
    Left = 104
    Top = 5
    object About1: TMenuItem
      Caption = '&About'
      OnClick = About1Click
    end
  end
end
