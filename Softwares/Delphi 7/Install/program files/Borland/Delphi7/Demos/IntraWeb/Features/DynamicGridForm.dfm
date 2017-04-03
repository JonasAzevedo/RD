object formDynamicGrid: TformDynamicGrid
  Left = 0
  Top = 0
  Width = 724
  Height = 469
  HorzScrollBar.Range = 745
  HorzScrollBar.Visible = False
  VertScrollBar.Range = 505
  VertScrollBar.Visible = False
  Background.Fixed = False
  HandleTabs = False
  Title = 'Dynamic Chart Demo'
  SupportedBrowsers = [brIE, brNetscape6]
  DesignLeft = 310
  DesignTop = 131
  object IWDynGrid1: TIWDynGrid
    Left = 200
    Top = 8
    Width = 505
    Height = 217
    ZIndex = 0
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BackgroundColor = clNone
    TitleCell.BorderColors.Color = clNone
    TitleCell.BorderColors.Light = clWhite
    TitleCell.BorderColors.Dark = clGray
    TitleCell.Color = clNone
    TitleCell.BorderSize = 1
    TitleCell.BackgroundColor = clSilver
    TitleCell.Font.Color = clNone
    TitleCell.Font.Enabled = True
    TitleCell.Font.Size = 10
    TitleCell.Font.Style = []
    FilterCell.BorderColors.Color = clSilver
    FilterCell.BorderColors.Light = clNone
    FilterCell.BorderColors.Dark = clNone
    FilterCell.Color = clNone
    FilterCell.BorderSize = 1
    FilterCell.BackgroundColor = clNone
    FilterCell.Font.Color = clNone
    FilterCell.Font.Enabled = True
    FilterCell.Font.Size = 10
    FilterCell.Font.Style = []
    DataCell.BorderColors.Color = clBlack
    DataCell.BorderColors.Light = clNone
    DataCell.BorderColors.Dark = clNone
    DataCell.Color = clNone
    DataCell.BorderSize = 1
    DataCell.BackgroundColor = clNone
    DataCell.Font.Color = clNone
    DataCell.Font.Enabled = True
    DataCell.Font.Size = 10
    DataCell.Font.Style = []
    Data = dsetStaticData
    BorderSize = 0
  end
  inline framMenu1: TframMenu
    Width = 185
    Height = 505
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
    Left = 272
    Top = 120
  end
end
