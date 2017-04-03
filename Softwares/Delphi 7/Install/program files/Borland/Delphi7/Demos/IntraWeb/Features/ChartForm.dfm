object formChart: TformChart
  Left = 0
  Top = 0
  Width = 750
  Height = 562
  HorzScrollBar.Range = 689
  VertScrollBar.Range = 505
  Background.Fixed = False
  HandleTabs = False
  Title = 'Dynamic Chart Demo'
  SupportedBrowsers = [brIE]
  OnCreate = IWAppFormCreate
  DesignLeft = 316
  DesignTop = 154
  object IWDynamicChartLegend1: TIWDynamicChartLegend
    Left = 232
    Top = 264
    Width = 209
    Height = 217
    ZIndex = 0
  end
  object IWLabel1: TIWLabel
    Left = 456
    Top = 272
    Width = 69
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Horizontal:'
  end
  object IWLabel2: TIWLabel
    Left = 456
    Top = 296
    Width = 52
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Vertical:'
  end
  object IWButton7: TIWButton
    Left = 568
    Top = 344
    Width = 91
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Update Chart'
    Color = 13160660
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <
      item
        EventCode.Strings = (
          'GDEMOCHART.Draw();')
        Event = 'onClick'
      end>
    TabOrder = 0
  end
  object cmboHorz: TIWComboBox
    Left = 568
    Top = 272
    Width = 121
    Height = 21
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    RequireSelection = True
    ScriptEvents = <
      item
        EventCode.Strings = (
          
            'GDEMOCHART.HorzData = ASender.options[ASender.selectedIndex].tex' +
            't;'
          'return true;')
        Event = 'onChange'
      end>
    UseSize = False
    DoSubmitValidation = True
    Editable = True
    TabOrder = 1
    ItemIndex = 1
    Sorted = False
  end
  object cmboVert: TIWComboBox
    Left = 568
    Top = 296
    Width = 121
    Height = 21
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    RequireSelection = True
    ScriptEvents = <
      item
        EventCode.Strings = (
          
            'GDEMOCHART.VertData = ASender.options[ASender.selectedIndex].tex' +
            't;'
          'return true;')
        Event = 'onChange'
      end>
    UseSize = False
    DoSubmitValidation = True
    Editable = True
    TabOrder = 2
    ItemIndex = 0
    Sorted = False
  end
  object cmboData: TIWComboBox
    Left = 568
    Top = 392
    Width = 121
    Height = 21
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    RequireSelection = True
    ScriptEvents = <>
    OnChange = cmboDataChange
    UseSize = False
    DoSubmitValidation = True
    Editable = True
    TabOrder = 3
    ItemIndex = 0
    Items.Strings = (
      'Static Data'
      'Master Table'
      'Order Table'
      'Parts Table')
    Sorted = False
  end
  object IWLabel3: TIWLabel
    Left = 456
    Top = 392
    Width = 80
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Select Data:'
  end
  object IWComboBox1: TIWComboBox
    Left = 568
    Top = 320
    Width = 121
    Height = 21
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    RequireSelection = True
    ScriptEvents = <
      item
        EventCode.Strings = (
          'GDEMOCHART.Func = ASender.options[ASender.selectedIndex].text;'
          'return true;')
        Event = 'onChange'
      end>
    UseSize = False
    DoSubmitValidation = True
    Editable = True
    TabOrder = 4
    ItemIndex = 0
    Items.Strings = (
      'Sum'
      'Count'
      'Min'
      'Max'
      'Avg')
    Sorted = False
  end
  object IWLabel4: TIWLabel
    Left = 456
    Top = 320
    Width = 58
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Function:'
  end
  object DemoChart: TIWDynamicChart
    Left = 232
    Top = 8
    Width = 457
    Height = 250
    ZIndex = 0
    Colors.Strings = (
      'red'
      'blue'
      'green'
      'yellow'
      'brown')
    Data = dsetStaticData
    Legend = IWDynamicChartLegend1
    ValuesInBars = True
  end
  inline framMenu1: TframMenu
    Width = 209
    Height = 563
    HorzScrollBar.Range = 193
    VertScrollBar.Range = 491
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
    Left = 264
    Top = 24
  end
  object dsetMaster: TIWClientSideDatasetDBLink
    DataSource = FeaturesDM.dsrcMaster
    Left = 264
    Top = 72
  end
  object dsetOrder: TIWClientSideDatasetDBLink
    DataSource = FeaturesDM.dsrcOrder
    Left = 264
    Top = 120
  end
  object dsetParts: TIWClientSideDatasetDBLink
    DataSource = FeaturesDM.dsrcParts
    Left = 264
    Top = 168
  end
end
