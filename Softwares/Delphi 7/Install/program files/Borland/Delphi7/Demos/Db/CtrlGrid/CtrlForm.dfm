object FmCtrlGrid: TFmCtrlGrid
  Left = 215
  Top = 183
  ActiveControl = DBGrid1
  BorderStyle = bsSingle
  Caption = 'Stock Browser'
  ClientHeight = 340
  ClientWidth = 586
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  Menu = MainMenu1
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 4
    Top = 212
    Width = 220
    Height = 85
    Shape = bsFrame
  end
  object Label5: TLabel
    Left = 6
    Top = 4
    Width = 61
    Height = 13
    AutoSize = False
    Caption = '&Securities:'
    FocusControl = DBGrid1
  end
  object Label6: TLabel
    Left = 230
    Top = 152
    Width = 54
    Height = 13
    AutoSize = False
    Caption = '&Holdings:'
    FocusControl = DBEdit2
  end
  object Label7: TLabel
    Left = 4
    Top = 196
    Width = 103
    Height = 13
    AutoSize = False
    Caption = 'Investment Value:'
  end
  object Label8: TLabel
    Left = 12
    Top = 220
    Width = 105
    Height = 13
    Alignment = taRightJustify
    Caption = 'Number of Purchases:'
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 15
    Top = 242
    Width = 82
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Share Cost:'
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 19
    Top = 260
    Width = 78
    Height = 13
    Alignment = taRightJustify
    Caption = 'Value of Shares:'
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 23
    Top = 279
    Width = 74
    Height = 13
    Alignment = taRightJustify
    Caption = 'C/V Difference:'
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lPurchase: TLabel
    Left = 123
    Top = 220
    Width = 86
    Height = 13
    AutoSize = False
  end
  object lTotalCost: TLabel
    Left = 103
    Top = 242
    Width = 110
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
  end
  object lTotalShares: TLabel
    Left = 103
    Top = 260
    Width = 110
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
  end
  object lDifference: TLabel
    Left = 103
    Top = 279
    Width = 110
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 228
    Top = 168
    Width = 350
    Height = 159
    ColCount = 1
    DataSource = DM1.dsHoldings
    PanelHeight = 53
    PanelWidth = 334
    TabOrder = 1
    RowCount = 3
    OnEnter = DBCtrlGrid1Enter
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = 'Purchase Date:'
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 183
      Top = 32
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = 'Purchase Price:'
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 185
      Top = 9
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Shares Bought:'
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 32
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Acct Number:'
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 83
      Top = 29
      Width = 90
      Height = 21
      DataField = 'ACCT_NBR'
      DataSource = DM1.dsHoldings
      MaxLength = 0
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 83
      Top = 6
      Width = 90
      Height = 21
      DataField = 'PUR_DATE'
      DataSource = DM1.dsHoldings
      MaxLength = 0
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 259
      Top = 29
      Width = 66
      Height = 21
      DataField = 'PUR_PRICE'
      DataSource = DM1.dsHoldings
      MaxLength = 0
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 259
      Top = 6
      Width = 66
      Height = 21
      DataField = 'SHARES'
      DataSource = DM1.dsHoldings
      MaxLength = 0
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 20
    Width = 573
    Height = 128
    Columns = <
      item
        FieldName = 'SYMBOL'
      end
      item
        FieldName = 'CO_NAME'
      end
      item
        FieldName = 'IndustryLongName'
      end
      item
        FieldName = 'EXCHANGE'
      end
      item
        FieldName = 'CUR_PRICE'
      end
      item
        FieldName = 'YRL_HIGH'
        Width = 62
      end
      item
        FieldName = 'YRL_LOW'
      end
      item
        FieldName = 'P_E_RATIO'
      end
      item
        FieldName = 'PROJ_GRTH'
      end
      item
        FieldName = 'PRICE_CHG'
      end
      item
        FieldName = 'RATING'
      end
      item
        FieldName = 'RANK'
      end
      item
        FieldName = 'OUTLOOK'
      end
      item
        FieldName = 'RCMNDATION'
      end
      item
        FieldName = 'RISK'
      end>
    DataSource = DM1.dsMaster
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnEnter = DBGrid1Enter
  end
  object Button1: TButton
    Left = 82
    Top = 309
    Width = 75
    Height = 24
    Caption = '&Close'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 4
    Top = 168
    Width = 210
    Height = 18
    TabOrder = 3
  end
  object MainMenu1: TMainMenu
    Left = 93
    object About1: TMenuItem
      Caption = '&About'
      ShortCut = 0
      OnClick = About1Click
    end
  end
end
