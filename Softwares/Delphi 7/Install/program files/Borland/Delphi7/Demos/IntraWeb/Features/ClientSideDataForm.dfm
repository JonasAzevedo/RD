object formClientSideData: TformClientSideData
  Left = 0
  Top = 0
  Width = 750
  Height = 555
  HorzScrollBar.Range = 745
  VertScrollBar.Range = 505
  Background.Fixed = False
  HandleTabs = False
  Title = 'Dynamic Chart Demo'
  SupportedBrowsers = [brIE, brNetscape6]
  DesignLeft = 290
  DesignTop = 107
  object IWCSNavigator1: TIWCSNavigator
    Left = 280
    Top = 168
    Width = 92
    Height = 25
    ZIndex = 1
    Confirmations.Delete = 'Are you sure you want to delete this record?'
    Confirmations.Post = 'Are you sure you want to update this record?'
    Confirmations.Cancel = 'Are you sure you want to cancel your changes to this record?'
    ClientSideDataSet = dsetStaticData
    ImageHeight = 21
    ImageWidth = 21
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Orientation = orHorizontal
  end
  object IWCSLabel1: TIWCSLabel
    Left = 352
    Top = 16
    Width = 201
    Height = 21
    ZIndex = 1
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ClientSideDataSet = dsetStaticData
    FieldName = 'Country'
  end
  object IWCSLabel2: TIWCSLabel
    Left = 352
    Top = 48
    Width = 201
    Height = 21
    ZIndex = 1
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ClientSideDataSet = dsetStaticData
    FieldName = 'Seller'
  end
  object IWCSLabel3: TIWCSLabel
    Left = 352
    Top = 80
    Width = 201
    Height = 21
    ZIndex = 1
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ClientSideDataSet = dsetStaticData
    FieldName = 'Month'
  end
  object IWCSLabel4: TIWCSLabel
    Left = 352
    Top = 112
    Width = 201
    Height = 21
    ZIndex = 1
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ClientSideDataSet = dsetStaticData
    FieldName = 'Sales'
  end
  object IWCSLabel5: TIWCSLabel
    Left = 352
    Top = 144
    Width = 201
    Height = 21
    ZIndex = 1
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ClientSideDataSet = dsetStaticData
    FieldName = 'Items Sold'
  end
  object IWLabel1: TIWLabel
    Left = 224
    Top = 16
    Width = 49
    Height = 16
    ZIndex = 1
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Country'
  end
  object IWLabel2: TIWLabel
    Left = 224
    Top = 48
    Width = 38
    Height = 16
    ZIndex = 1
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Seller'
  end
  object IWLabel3: TIWLabel
    Left = 224
    Top = 80
    Width = 39
    Height = 16
    ZIndex = 1
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Month'
  end
  object IWLabel4: TIWLabel
    Left = 224
    Top = 112
    Width = 38
    Height = 16
    ZIndex = 1
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Sales'
  end
  object IWLabel5: TIWLabel
    Left = 224
    Top = 144
    Width = 69
    Height = 16
    ZIndex = 1
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Items Sold'
  end
  object IWCSNavigator2: TIWCSNavigator
    Left = 280
    Top = 208
    Width = 92
    Height = 25
    ZIndex = 1
    Confirmations.Delete = 'Are you sure you want to delete this record?'
    Confirmations.Post = 'Are you sure you want to update this record?'
    Confirmations.Cancel = 'Are you sure you want to cancel your changes to this record?'
    ClientSideDataSet = dsetParts
    ImageHeight = 21
    ImageWidth = 21
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Orientation = orHorizontal
  end
  object IWCSLabel6: TIWCSLabel
    Left = 368
    Top = 240
    Width = 225
    Height = 21
    ZIndex = 1
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ClientSideDataSet = dsetParts
    FieldName = 'Description'
  end
  object IWLabel6: TIWLabel
    Left = 232
    Top = 240
    Width = 74
    Height = 16
    ZIndex = 1
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Description'
  end
  inline framMenu1: TframMenu
    Width = 209
    Height = 555
    HorzScrollBar.Range = 193
    VertScrollBar.Range = 491
    Align = alLeft
  end
  object dsetStaticData: TIWClientSideDataset
    ColumnNames.Strings = (
      'Sales'
      'Items Sold'
      'Month'
      'Seller'
      'Country')
    Data.Strings = (
      '41, 5, 1, '#39'John Smith'#39', '#39'Canada'#39
      '34, 3, 2, '#39'John Smith'#39', '#39'Canada'#39
      '14, 5, 3, '#39'John Smith'#39', '#39'Canada'#39
      '14, 4, 4, '#39'John Smith'#39', '#39'Canada'#39
      '12, 7, 5, '#39'John Smith'#39', '#39'Canada'#39
      '14, 5, 6, '#39'John Smith'#39', '#39'Canada'#39
      '15, 5, 7, '#39'John Smith'#39', '#39'Canada'#39
      '16, 5, 8, '#39'John Smith'#39', '#39'Canada'#39
      '12, 8, 9, '#39'John Smith'#39', '#39'Canada'#39
      '14, 3, 10, '#39'John Smith'#39', '#39'Canada'#39
      '51, 3, 11, '#39'John Smith'#39', '#39'Canada'#39
      '51, 5, 12, '#39'John Smith'#39', '#39'Canada'#39
      '35, 6, 1, '#39'Lisa Green'#39', '#39'Canada'#39
      '55, 5, 2, '#39'Lisa Green'#39', '#39'Canada'#39
      '75, 6, 3, '#39'Lisa Green'#39', '#39'Canada'#39
      '55, 8, 4, '#39'Lisa Green'#39', '#39'Canada'#39
      '55, 5, 5, '#39'Lisa Green'#39', '#39'Canada'#39
      '35, 7, 6, '#39'Lisa Green'#39', '#39'Canada'#39
      '75, 7, 7, '#39'Lisa Green'#39', '#39'Canada'#39
      '65, 4, 8, '#39'Lisa Green'#39', '#39'Canada'#39
      '85, 4, 9, '#39'Lisa Green'#39', '#39'Canada'#39
      '56, 6, 10, '#39'Lisa Green'#39', '#39'Canada'#39
      '56, 8, 11, '#39'Lisa Green'#39', '#39'Canada'#39
      '52, 3, 12, '#39'Lisa Green'#39', '#39'Canada'#39
      '11, 5, 1, '#39'Bob Jones'#39', '#39'United States'#39
      '41, 7, 2, '#39'Bob Jones'#39', '#39'United States'#39
      '41, 2, 3, '#39'Bob Jones'#39', '#39'United States'#39
      '41, 6, 4, '#39'Bob Jones'#39', '#39'United States'#39
      '21, 7, 5, '#39'Bob Jones'#39', '#39'United States'#39
      '41, 1, 6, '#39'Bob Jones'#39', '#39'United States'#39
      '51, 4, 7, '#39'Bob Jones'#39', '#39'United States'#39
      '61, 6, 8, '#39'Bob Jones'#39', '#39'United States'#39
      '21, 7, 9, '#39'Bob Jones'#39', '#39'United States'#39
      '41, 8, 10, '#39'Bob Jones'#39', '#39'United States'#39
      '11, 9, 11, '#39'Bob Jones'#39', '#39'United States'#39
      '11, 0, 12, '#39'Bob Jones'#39', '#39'United States'#39
      '54, 9, 1, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 3, 2, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 4, 3, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 4, 4, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 4, 5, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 8, 6, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 9, 7, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 2, 8, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 4, 9, '#39'Jim Crawford'#39', '#39'Canada'#39
      '64, 5, 10, '#39'Jim Crawford'#39', '#39'Canada'#39
      '16, 5, 11, '#39'Jim Crawford'#39', '#39'Canada'#39
      '42, 6, 12, '#39'Jim Crawford'#39', '#39'Canada'#39
      '46, 3, 1, '#39'David House'#39', '#39'United States'#39
      '46, 4, 2, '#39'David House'#39', '#39'United States'#39
      '26, 6, 3, '#39'David House'#39', '#39'United States'#39
      '46, 3, 4, '#39'David House'#39', '#39'United States'#39
      '56, 5, 5, '#39'David House'#39', '#39'United States'#39
      '66, 6, 6, '#39'David House'#39', '#39'United States'#39
      '26, 7, 7, '#39'David House'#39', '#39'United States'#39
      '46, 9, 8, '#39'David House'#39', '#39'United States'#39
      '16, 4, 9, '#39'David House'#39', '#39'United States'#39
      '16, 3, 10, '#39'David House'#39', '#39'United States'#39
      '56, 6, 11, '#39'David House'#39', '#39'United States'#39
      '56, 3, 12, '#39'David House'#39', '#39'United States'#39
      '53, 3, 1, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '53, 5, 2, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '33, 6, 3, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '43, 4, 4, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '53, 4, 5, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '55, 5, 6, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '53, 6, 7, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '66, 9, 8, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '63, 9, 9, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '23, 3, 10, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '31, 5, 11, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '34, 6, 12, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '24, 8, 1, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '24, 6, 2, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '22, 5, 3, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '24, 3, 4, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '25, 4, 5, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '26, 7, 6, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '22, 8, 7, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '24, 4, 8, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '21, 3, 9, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '21, 6, 10, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '25, 2, 11, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '25, 1, 12, '#39'Francisco Hernandez'#39', '#39'Mexico'#39)
    Left = 232
    Top = 160
  end
  object dsetParts: TIWClientSideDatasetDBLink
    DataSource = FeaturesDM.dsrcParts
    Left = 232
    Top = 208
  end
end
