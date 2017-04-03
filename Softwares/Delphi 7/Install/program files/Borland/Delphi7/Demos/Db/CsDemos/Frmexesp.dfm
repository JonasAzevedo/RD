object FrmExecProc: TFrmExecProc
  Left = 133
  Top = 105
  Width = 435
  Height = 316
  Hint = 
    'Explore the ShipOrderProc in the DmEmployee data model to see wh' +
    'at shipping an order does'
  ActiveControl = Panel1
  Caption = 'Sales Review'
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 427
    Height = 41
    Align = alTop
    TabOrder = 0
    object BtnShipOrder: TSpeedButton
      Left = 258
      Top = 8
      Width = 64
      Height = 25
      Hint = 'Mark current order as shipped'
      Caption = '&Ship Order'
      Enabled = False
      OnClick = BtnShipOrderClick
    end
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = DmEmployee.SalesSource
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 359
      Top = 8
      Width = 60
      Height = 25
      Hint = 'Exit and close this form'
      Caption = 'E&xit'
      TabOrder = 1
      Kind = bkClose
      Style = bsNew
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 427
    Height = 141
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 4
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 6
      Top = 6
      Width = 415
      Height = 129
      Hint = 'Select an open order to ship the order'
      Align = alClient
      BorderStyle = bsNone
      DataSource = DmEmployee.SalesSource
      TabOrder = 0
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 182
    Width = 427
    Height = 110
    Hint = 'Customers are linked to sales in the data model'
    Align = alBottom
    BevelInner = bvLowered
    BorderWidth = 4
    Caption = 'Panel3'
    TabOrder = 2
    object ScrollBox: TScrollBox
      Left = 6
      Top = 6
      Width = 415
      Height = 98
      HorzScrollBar.Margin = 6
      VertScrollBar.Margin = 6
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 0
      object Label1: TLabel
        Left = 209
        Top = 6
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Customer No:'
        FocusControl = EditCUST_NO
      end
      object Label2: TLabel
        Left = 1
        Top = 7
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Company:'
        FocusControl = EditCUSTOMER
      end
      object Label3: TLabel
        Left = 8
        Top = 29
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Contact:'
        FocusControl = EditCONTACT_FIRST
      end
      object Label6: TLabel
        Left = 7
        Top = 50
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Address:'
        FocusControl = EditADDRESS_LINE
      end
      object Label4: TLabel
        Left = 239
        Top = 29
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Phone:'
      end
      object EditCUST_NO: TDBEdit
        Left = 276
        Top = 3
        Width = 49
        Height = 21
        DataField = 'CUST_NO'
        DataSource = DmEmployee.CustomerSource
        MaxLength = 0
        TabOrder = 0
      end
      object EditCUSTOMER: TDBEdit
        Left = 51
        Top = 4
        Width = 125
        Height = 21
        DataField = 'CUSTOMER'
        DataSource = DmEmployee.CustomerSource
        MaxLength = 0
        TabOrder = 1
      end
      object EditCONTACT_FIRST: TDBEdit
        Left = 51
        Top = 26
        Width = 75
        Height = 21
        DataField = 'CONTACT_FIRST'
        DataSource = DmEmployee.CustomerSource
        MaxLength = 0
        TabOrder = 2
      end
      object EditCONTACT_LAST: TDBEdit
        Left = 129
        Top = 26
        Width = 100
        Height = 21
        DataField = 'CONTACT_LAST'
        DataSource = DmEmployee.CustomerSource
        MaxLength = 0
        TabOrder = 3
      end
      object EditPHONE_NO: TDBEdit
        Left = 276
        Top = 26
        Width = 120
        Height = 21
        DataField = 'PHONE_NO'
        DataSource = DmEmployee.CustomerSource
        MaxLength = 0
        TabOrder = 4
      end
      object EditADDRESS_LINE: TDBEdit
        Left = 51
        Top = 48
        Width = 171
        Height = 21
        DataField = 'ADDRESS_LINE1'
        DataSource = DmEmployee.CustomerSource
        MaxLength = 0
        TabOrder = 5
      end
      object EditADDRESS_LINE2: TDBEdit
        Left = 226
        Top = 48
        Width = 170
        Height = 21
        DataField = 'ADDRESS_LINE2'
        DataSource = DmEmployee.CustomerSource
        MaxLength = 0
        TabOrder = 6
      end
      object EditCITY: TDBEdit
        Left = 51
        Top = 70
        Width = 125
        Height = 21
        DataField = 'CITY'
        DataSource = DmEmployee.CustomerSource
        MaxLength = 0
        TabOrder = 7
      end
      object EditSTATE_PROVINCE: TDBEdit
        Left = 180
        Top = 70
        Width = 75
        Height = 21
        DataField = 'STATE_PROVINCE'
        DataSource = DmEmployee.CustomerSource
        MaxLength = 0
        TabOrder = 8
      end
      object EditCOUNTRY: TDBEdit
        Left = 258
        Top = 70
        Width = 75
        Height = 21
        DataField = 'COUNTRY'
        DataSource = DmEmployee.CustomerSource
        MaxLength = 0
        TabOrder = 9
      end
      object EditPOSTAL_CODE: TDBEdit
        Left = 336
        Top = 70
        Width = 60
        Height = 21
        DataField = 'POSTAL_CODE'
        DataSource = DmEmployee.CustomerSource
        MaxLength = 0
        TabOrder = 10
      end
      object DBCheckBox1: TDBCheckBox
        Left = 333
        Top = 3
        Width = 67
        Height = 17
        Caption = 'On Hold'
        DataField = 'ON_HOLD'
        DataSource = DmEmployee.CustomerSource
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        ValueChecked = 'True;*;Yes'
        ValueUnchecked = 'False; ;;NIL;No'
      end
    end
  end
  object SalesSource: TDataSource
    DataSet = DmEmployee.SalesTable
    Enabled = False
    OnDataChange = SalesSourceDataChange
    Left = 200
    Top = 80
  end
end
