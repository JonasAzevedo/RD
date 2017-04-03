object WebModule2: TWebModule2
  OldCreateOrder = False
  OnCreate = WebModule2Create
  Actions = <
    item
      Default = True
      Name = 'WebActionItem1'
      PathInfo = '/Home'
      Producer = Home
    end
    item
      Name = 'WebActionItem2'
      PathInfo = '/CustomComponentGrid'
      Producer = CustomComponentGrid
    end
    item
      Name = 'WebActionItem3'
      PathInfo = '/CustOrders'
      Producer = CustOrders
    end
    item
      Name = 'WebActionItem4'
      PathInfo = '/CountriesRadioGroup'
      Producer = CountriesRadioGroup
    end
    item
      Name = 'WebActionItem5'
      PathInfo = '/CountriesSelectOptions'
      Producer = CountriesSelectOptions
    end
    item
      Name = 'WebActionItem6'
      PathInfo = '/FieldAttr'
      Producer = FieldAttr
    end
    item
      Name = 'WebActionItem7'
      PathInfo = '/ImgButtons'
      Producer = ImgButtons
    end
    item
      Name = 'WebActionItem8'
      PathInfo = '/ComponentsList'
      Producer = ComponentsList
    end
    item
      Name = 'WebActionItem9'
      PathInfo = '/Examples'
      Producer = Examples
    end
    item
      Name = 'WebActionItem10'
      PathInfo = '/SearchPage'
    end
    item
      Name = 'WebActionItem11'
      PathInfo = '/SearchSelectOptionsPage'
      Producer = SearchSelectOptionsPage
    end
    item
      Name = 'WebActionItem12'
      PathInfo = '/SelectOptionsPage'
      Producer = SelectOptionsPage
    end
    item
      Name = 'WebActionItem13'
      PathInfo = '/QueryPasswordPage'
      Producer = QueryPasswordPage
    end
    item
      Name = 'WebActionItem14'
      PathInfo = '/DumpRequest'
      Producer = DumpRequest
    end
    item
      Name = 'WebActionItem16'
      PathInfo = '/ComponentsFilter'
      OnAction = WebModule2WebActionItem16Action
    end
    item
      Name = 'WebActionItem15'
      PathInfo = '/CustOrdersQuery'
      Producer = CustOrdersQuery
    end
    item
      Name = 'WebActionItem17'
      PathInfo = '/AboutJavaScript'
      Producer = AboutJavaScript
    end
    item
      Name = 'WebActionItem18'
      PathInfo = '/AboutXML'
      Producer = AboutXML
    end
    item
      Name = 'WebActionItem19'
      PathInfo = '/PromptButtonPage'
      Producer = PromptButtonPage
    end
    item
      Name = 'WebActionItem20'
      PathInfo = '/ReconcileError'
      Producer = ReconcileError
    end
    item
      Name = 'WebActionItem21'
      PathInfo = '/CustOrdersMasterDetail'
      Producer = CustOrdersMasterDetail
    end
    item
      Name = 'WebActionItem22'
      PathInfo = '/AboutComponents'
      Producer = AboutComponents
    end
    item
      Name = 'WebActionItem23'
      PathInfo = '/RadioGroupPage'
      Producer = RadioGroupPage
    end>
  BeforeDispatch = WebModuleBeforeDispatch
  Left = 228
  Top = 638
  Height = 553
  Width = 812
  object Home: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    LinkName = 'Home'
    TopicPage = topHome
    PageCategories = []
    Description.Strings = (
      '<P>Welcome to the InternetExpress Website</P>'
      '<P>This purpose of this Website is to provide information about'
      
        'InternetExpress.&nbsp; You will find descriptions as well as wor' +
        'king'
      'examples.&nbsp; </P>'
      '<P>This Website was developed with Delphi 5, of course.</P>')
    Title = 'InternetExpress Home'
    Caption = 'Home'
    ComponentsInfo = ComponentsInfoDS
    DescriptionFile = 'home.htm'
    PageLayout = plDescription
    Left = 16
    Top = 8
  end
  object XMLBrokerAllCustomers: TXMLBroker
    Params = <>
    ProviderName = 'AllCustomers'
    RemoteServer = DCOMConnection1
    WebDispatch.PathInfo = 'XMLBrokerAllCustomers'
    ReconcileProducer = ReconcilePage
    Left = 416
    Top = 8
  end
  object DCOMConnection1: TDCOMConnection
    ServerGUID = '{230732E5-2F8B-11D3-AAB4-00A024C11562}'
    ServerName = 'rdmINetXCenter.INetXCenterData'
    Left = 288
    Top = 16
  end
  object CustomComponentGrid: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>'
      '')
    EnableXMLIslands = False
    LinkName = 'CustomComponentGrid'
    TopicPage = topNone
    PageCategories = [catExample]
    Description.Strings = (
      'This example displays a grid of all customers.'
      
        'TSortTextColumn and TLinkColumn are demonstrated in this example' +
        '.'
      ' ')
    Title = 'InternetExpress CustomComponentGrid Example'
    Caption = 'CustomComponentGrid'
    ComponentsInfo = ComponentsInfoDS
    PageLayout = plStandard
    Instructions.Strings = (
      
        'Click the Sort buttons to toggle the sort order for a column.  C' +
        'lick on the Details.. . link to'
      'open a window display the selected customers orders.'
      '<p></p>')
    Left = 48
    Top = 245
    object DataForm1: TDataForm
      object DataGrid1: TDataGrid
        XMLBroker = XMLBrokerAllCustomers
        object SortCustNo: TSortTextColumn
          DisplayWidth = 10
          FieldName = 'CustNo'
          ButtonCaption = 'Sort'
        end
        object SortCompany: TSortTextColumn
          DisplayWidth = 30
          FieldName = 'Company'
          ButtonCaption = 'Sort'
        end
        object SortLastInvoiceDate: TSortTextColumn
          DisplayWidth = 18
          FieldName = 'LastInvoiceDate'
          ButtonCaption = 'Sort'
        end
        object LinkColumn1: TLinkColumn
          Text = 'Details...'
          Caption = 'Orders'
          Action = 'CustOrders'
          KeyFieldName = 'CustNo'
        end
        object StatusColumn1: TStatusColumn
          Caption = '*'
        end
      end
      object DataNavigator1: TDataNavigator
        XMLComponent = DataGrid1
        object FirstButton1: TFirstButton
          XMLComponent = DataGrid1
          XMLUseParent = False
          Caption = '|<'
        end
        object PriorPageButton1: TPriorPageButton
          XMLComponent = DataGrid1
          XMLUseParent = False
          Caption = '<<'
        end
        object PriorButton1: TPriorButton
          XMLComponent = DataGrid1
          XMLUseParent = False
          Caption = '<'
        end
        object NextButton1: TNextButton
          XMLComponent = DataGrid1
          XMLUseParent = False
          Caption = '>'
        end
        object NextPageButton1: TNextPageButton
          XMLComponent = DataGrid1
          XMLUseParent = False
          Caption = '>>'
        end
        object LastButton1: TLastButton
          XMLComponent = DataGrid1
          XMLUseParent = False
          Caption = '>|'
        end
        object UndoButton1: TUndoButton
          XMLComponent = DataGrid1
          XMLUseParent = False
          Caption = 'Undo'
        end
        object PostButton1: TPostButton
          XMLComponent = DataGrid1
          XMLUseParent = False
          Caption = 'Post'
        end
        object ApplyUpdatesButton1: TApplyUpdatesButton
          Caption = 'Apply Updates'
          XMLBroker = XMLBrokerAllCustomers
          XMLUseParent = False
        end
        object ShowXMLButton2: TShowXMLButton
          Caption = 'Show XML'
          XMLBroker = XMLBrokerAllCustomers
          XMLUseParent = True
        end
        object ShowDeltaButton2: TShowDeltaButton
          Caption = 'Show Delta'
          XMLBroker = XMLBrokerAllCustomers
          XMLUseParent = True
        end
      end
      object FieldGroup2: TFieldGroup
        XMLBroker = XMLAllCustOrders
        object RowSetStatus1: TRowSetStatus
        end
      end
    end
  end
  object CustOrders: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>'
      '')
    LinkName = 'CustOrders Example'
    TopicPage = topNone
    PageCategories = []
    Description.Strings = (
      'Description goes here')
    Title = 'InternetExpress CustOrders Example'
    Caption = 'CustOrders Example'
    ComponentsInfo = ComponentsInfoDS
    PageLayout = plStandard
    Left = 112
    Top = 157
    object DataForm2: TDataForm
      object FieldGroup1: TFieldGroup
        XMLBroker = XMLBrokerCustOrders
        object LayoutGroup1: TLayoutGroup
          DisplayColumns = 2
          object OrderNo: TFieldText
            DisplayWidth = 10
            CaptionAttributes.StyleRule = 'caption2'
            FieldName = 'OrderNo'
            Style = 'margin-right: 10'
          end
          object CustNo2: TFieldText
            DisplayWidth = 10
            CaptionAttributes.StyleRule = 'caption2'
            FieldName = 'CustNo'
            Style = 'margin-right: 10'
          end
          object ItemsTotal: TFieldText
            DisplayWidth = 10
            CaptionAttributes.StyleRule = 'caption2'
            FieldName = 'ItemsTotal'
            Style = 'margin-right: 10'
          end
          object AmountPaid: TFieldText
            DisplayWidth = 10
            CaptionAttributes.StyleRule = 'caption2'
            FieldName = 'AmountPaid'
            Style = 'margin-right: 10'
          end
          object FieldStatus1: TFieldStatus
            Caption = '*'
            CaptionAttributes.StyleRule = 'caption2'
            Style = 'margin-right: 10'
          end
        end
      end
      object DataNavigator2: TDataNavigator
        XMLComponent = FieldGroup1
        Style = 'text-align: center'
        object LayoutGroup2: TLayoutGroup
          DisplayColumns = -1
          Style = 'text-align: center'
          object FirstButton2: TFirstButton
            XMLComponent = FieldGroup1
            XMLUseParent = False
            Caption = '|<'
          end
          object PriorPageButton2: TPriorPageButton
            XMLComponent = FieldGroup1
            XMLUseParent = False
            Caption = '<<'
          end
          object PriorButton2: TPriorButton
            XMLComponent = FieldGroup1
            XMLUseParent = False
            Caption = '<'
          end
          object NextButton2: TNextButton
            XMLComponent = FieldGroup1
            XMLUseParent = False
            Caption = '>'
          end
          object NextPageButton2: TNextPageButton
            XMLComponent = FieldGroup1
            XMLUseParent = False
            Caption = '>>'
          end
          object LastButton2: TLastButton
            XMLComponent = FieldGroup1
            XMLUseParent = False
            Caption = '>|'
          end
          object InsertButton1: TInsertButton
            XMLComponent = FieldGroup1
            XMLUseParent = False
            Caption = ' + '
          end
          object DeleteButton1: TDeleteButton
            XMLComponent = FieldGroup1
            XMLUseParent = False
            Caption = ' - '
          end
          object UndoButton2: TUndoButton
            XMLComponent = FieldGroup1
            XMLUseParent = False
            Caption = 'Undo'
          end
          object PostButton2: TPostButton
            XMLComponent = FieldGroup1
            XMLUseParent = False
            Caption = 'Post'
          end
        end
        object LayoutGroup4: TLayoutGroup
          DisplayColumns = -1
          Style = 'text-align: center'
          object ApplyUpdatesButton2: TApplyUpdatesButton
            Style = 'vertical-align: bottom'
            Caption = 'Apply Updates'
            XMLBroker = XMLBrokerCustOrders
            XMLUseParent = False
          end
          object ShowXMLButton1: TShowXMLButton
            Caption = 'Show XML'
            XMLBroker = XMLBrokerCustOrders
            XMLUseParent = False
          end
          object ShowDeltaButton1: TShowDeltaButton
            Caption = 'Show Delta'
            XMLBroker = XMLBrokerCustOrders
            XMLUseParent = False
          end
        end
      end
      object FieldGroup3: TFieldGroup
        XMLBroker = XMLBrokerCustOrders
        Style = 'text-align: center'
        object RowSetStatus2: TRowSetStatus
        end
      end
    end
  end
  object XMLBrokerCustOrders: TXMLBroker
    Params = <
      item
        DataType = ftInteger
        Name = 'CustNo'
        ParamType = ptUnknown
        Value = '1221'
      end>
    ProviderName = 'CustOrders'
    RemoteServer = DCOMConnection1
    WebDispatch.PathInfo = 'XMLBrokerCustOrders'
    OnRequestRecords = XMLBrokerCustOrdersRequestRecords
    ReconcileProducer = ReconcilePage
    Left = 312
    Top = 128
  end
  object CountriesRadioGroup: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>'
      '')
    LinkName = 'CountriesRadioGroup'
    TopicPage = topNone
    PageCategories = [catExample]
    Description.Strings = (
      
        'This example uses a TFieldRadioGroup component to display then t' +
        'he country.continent field.')
    Title = 'InternetExpress CountriesRadioGroup Example'
    Caption = 'CountriesRadioGroup'
    ComponentsInfo = ComponentsInfoDS
    PageLayout = plStandard
    Left = 48
    Top = 309
    object DataForm3: TDataForm
      object FieldGroup4: TFieldGroup
        XMLBroker = XMLBrokerAllCountries
        object Name: TFieldText
          DisplayWidth = 24
          CaptionAttributes.Style = 'font-weight: bold'
          FieldName = 'Name'
        end
        object Capital: TFieldText
          DisplayWidth = 24
          CaptionAttributes.Style = 'font-weight: bold'
          FieldName = 'Capital'
        end
        object Area: TFieldText
          DisplayWidth = 10
          CaptionAttributes.Style = 'font-weight: bold'
          FieldName = 'Area'
        end
        object Population: TFieldText
          DisplayWidth = 10
          CaptionAttributes.Style = 'font-weight: bold'
          FieldName = 'Population'
        end
        object ContinentRadioGroup: TFieldRadioGroup
          ReadOnly = False
          CaptionAttributes.Style = 'font-weight: bold; vertical-align: top'
          FieldName = 'Continent'
          DisplayWidth = 24
          DisplayColumns = 2
          Items.Strings = (
            'Africa'
            'Eurasia'
            'North America'
            'South America'
            'Australia')
        end
        object FieldStatus2: TFieldStatus
          Caption = '*'
        end
      end
      object DataNavigator3: TDataNavigator
        XMLComponent = FieldGroup4
      end
    end
  end
  object XMLBrokerAllCountries: TXMLBroker
    Params = <>
    ProviderName = 'AllCountries'
    RemoteServer = DCOMConnection1
    WebDispatch.PathInfo = 'XMLBrokerAllCountries'
    ReconcileProducer = ReconcilePage
    Left = 328
    Top = 72
  end
  object CountriesSelectOptions: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>'
      '')
    LinkName = 'CountriesSelectOptions'
    TopicPage = topNone
    PageCategories = [catExample]
    Description.Strings = (
      
        'This example uses a TFieldSelectOptions component to display the' +
        'n the country.continent field.'
      ' ')
    Title = 'InternetExpress CountriesSelectOptions Example'
    Caption = 'CountriesSelectOptions'
    ComponentsInfo = ComponentsInfoDS
    PageLayout = plStandard
    Left = 48
    Top = 365
    object DataForm4: TDataForm
      object FieldGroup5: TFieldGroup
        XMLBroker = XMLBrokerAllCountries
        object FieldText1: TFieldText
          DisplayWidth = 24
          CaptionAttributes.Style = 'font-weight: bold'
          FieldName = 'Name'
        end
        object FieldText2: TFieldText
          DisplayWidth = 24
          CaptionAttributes.Style = 'font-weight: bold'
          FieldName = 'Capital'
        end
        object FieldText3: TFieldText
          DisplayWidth = 10
          CaptionAttributes.Style = 'font-weight: bold'
          FieldName = 'Area'
        end
        object FieldText4: TFieldText
          DisplayWidth = 10
          CaptionAttributes.Style = 'font-weight: bold'
          FieldName = 'Population'
        end
        object FieldStatus3: TFieldStatus
          Caption = '*'
        end
        object FieldSelectOptions: TFieldSelectOptions
          DisplayRows = 5
          CaptionAttributes.Style = 'font-weight: bold; vertical-align: top'
          FieldName = 'Continent'
          Items.Strings = (
            'Africa'
            'Australia'
            'EuroAsia'
            'North America'
            'South America')
        end
      end
      object DataNavigator4: TDataNavigator
        XMLComponent = FieldGroup5
      end
    end
  end
  object FieldAttr: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>'
      '')
    OnBeforeGetContent = FieldAttrBeforeGetContent
    LinkName = 'FieldAttr'
    TopicPage = topNone
    PageCategories = [catExample]
    Description.Strings = (
      'This example demonstrates the TFieldAttr custom component.  ')
    Title = 'InternetExpress FieldAttr Example'
    Caption = 'FieldAttr'
    ComponentsInfo = ComponentsInfoDS
    PageLayout = plStandard
    Instructions.Strings = (
      
        'Select the submit button to reformat the ItemsTotal field.  Use ' +
        '-1 to '
      'indicate default for the Decimals and FixedDecimals fields.  '
      '<p></p>')
    Left = 136
    Top = 349
    object LayoutGroup3: TLayoutGroup
      DisplayColumns = 2
      object TitleLayoutGroup1: TTitleLayoutGroup
        DisplayColumns = -1
        CaptionPosition = capAbove
        Caption = 'ItemsTotal Column Properties'
        CaptionAttributes.Style = 'text-align: center'
        object SubmitFieldAttr: TQueryForm
          Action = 'FieldAttr'
          Method = fmGet
          object QueryFieldGroup3: TQueryFieldGroup
            object QueryMinValue: TQueryText
              ParamName = 'MinValue'
              DisplayWidth = -1
              Caption = 'MinValue'
            end
            object QueryMaxValue: TQueryText
              ParamName = 'MaxValue'
              DisplayWidth = -1
              Caption = 'MaxValue'
            end
            object QueryDecimals: TQueryText
              ParamName = 'Decimals'
              DisplayWidth = 6
              Caption = 'Decimals'
              Text = '-1'
            end
            object QueryFixedDecimals: TQueryText
              ParamName = 'FixedDecimals'
              DisplayWidth = 6
              Caption = 'FixedDecimals'
              Text = '-1'
            end
            object QueryCurrencySymbol: TQueryText
              ParamName = 'CurrencySymbol'
              DisplayWidth = 6
              Caption = 'CurrencySymbol'
            end
          end
          object QueryButtons1: TQueryButtons
          end
        end
      end
      object DataForm5: TDataForm
        object DataGrid2: TDataGrid
          XMLBroker = XMLBrokerCustOrders
          object TextColumnAttr: TTextColumnAttr
            DisplayWidth = 20
            FieldName = 'ItemsTotal'
            Required = False
          end
        end
        object DataNavigator5: TDataNavigator
          XMLComponent = DataGrid2
          object FirstButton3: TFirstButton
            XMLComponent = DataGrid2
            XMLUseParent = False
            Caption = '|<'
          end
          object PriorPageButton3: TPriorPageButton
            XMLComponent = DataGrid2
            XMLUseParent = False
            Caption = '<<'
          end
          object PriorButton3: TPriorButton
            XMLComponent = DataGrid2
            XMLUseParent = False
            Caption = '<'
          end
          object NextButton3: TNextButton
            XMLComponent = DataGrid2
            XMLUseParent = False
            Caption = '>'
          end
          object NextPageButton3: TNextPageButton
            XMLComponent = DataGrid2
            XMLUseParent = False
            Caption = '>>'
          end
          object LastButton3: TLastButton
            XMLComponent = DataGrid2
            XMLUseParent = False
            Caption = '>|'
          end
          object PostButton3: TPostButton
            XMLComponent = DataGrid2
            XMLUseParent = False
            Caption = 'Post'
          end
          object UndoButton3: TUndoButton
            XMLComponent = DataGrid2
            XMLUseParent = False
            Caption = 'Undo'
          end
        end
      end
    end
  end
  object ImgButtons: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>'
      '')
    LinkName = 'ImgButtons'
    TopicPage = topNone
    PageCategories = [catExample]
    Description.Strings = (
      
        'This example demonstrates the TImgButtons custom data navigator ' +
        'component.')
    Title = 'InternetExpress ImgButtons Example'
    Caption = 'ImgButtons'
    ComponentsInfo = ComponentsInfoDS
    PageLayout = plStandard
    Left = 152
    Top = 277
    object DataForm6: TDataForm
      object FieldGroup6: TFieldGroup
        XMLBroker = XMLBrokerAllCountries
        object Name3: TFieldText
          DisplayWidth = 24
          FieldName = 'Name'
        end
        object Capital2: TFieldText
          DisplayWidth = 24
          FieldName = 'Capital'
        end
        object Continent: TFieldText
          DisplayWidth = 24
          FieldName = 'Continent'
        end
        object Area2: TFieldText
          DisplayWidth = 10
          FieldName = 'Area'
        end
        object Population2: TFieldText
          DisplayWidth = 10
          FieldName = 'Population'
        end
        object FieldStatus4: TFieldStatus
          Caption = '*'
        end
      end
      object ImgDataNavigator1: TImgDataNavigator
        XMLComponent = FieldGroup6
        object ImgFirstButton1: TImgFirstButton
          XMLComponent = FieldGroup6
          XMLUseParent = False
          Alt = 'First'
          Src = 'first.gif'
          Border = False
        end
        object ImgPriorPageButton1: TImgPriorPageButton
          XMLComponent = FieldGroup6
          XMLUseParent = False
          Alt = 'Prior Page'
          Src = 'priorpage.gif'
          Border = False
        end
        object ImgPriorButton1: TImgPriorButton
          XMLComponent = FieldGroup6
          XMLUseParent = False
          Alt = 'Prior'
          Src = 'prior.gif'
          Border = False
        end
        object ImgNextButton1: TImgNextButton
          XMLComponent = FieldGroup6
          XMLUseParent = False
          Alt = 'Next'
          Src = 'next.gif'
          Border = False
        end
        object ImgNextPageButton1: TImgNextPageButton
          XMLComponent = FieldGroup6
          XMLUseParent = False
          Alt = 'Next Page'
          Src = 'nextpage.gif'
          Border = False
        end
        object ImgLastButton1: TImgLastButton
          XMLComponent = FieldGroup6
          XMLUseParent = False
          Alt = 'Last'
          Src = 'last.gif'
          Border = False
        end
        object ImgInsertButton1: TImgInsertButton
          XMLComponent = FieldGroup6
          XMLUseParent = False
          Alt = 'Insert'
          Src = 'insert.gif'
          Border = False
        end
        object ImgDeleteButton1: TImgDeleteButton
          XMLComponent = FieldGroup6
          XMLUseParent = False
          Alt = 'Delete'
          Src = 'delete.gif'
          Border = False
        end
        object ImgUndoButton1: TImgUndoButton
          XMLComponent = FieldGroup6
          XMLUseParent = False
          Alt = 'Undo'
          Src = 'undo.gif'
          Border = False
        end
        object ImgPostButton1: TImgPostButton
          XMLComponent = FieldGroup6
          XMLUseParent = False
          Alt = 'Post'
          Src = 'post.gif'
          Border = False
        end
        object ImgApplyUpdatesButton1: TImgApplyUpdatesButton
          Alt = 'Apply Updates'
          XMLBroker = XMLBrokerAllCountries
          XMLUseParent = False
          Src = 'applyupdates.gif'
          Border = False
        end
      end
    end
  end
  object ComponentsFilter: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    OnBeforeGetContent = ComponentsFilterBeforeGetContent
    LinkName = 'Filter'
    TopicPage = topComponentsFilter
    PageCategories = []
    Title = 'InternetExpress Components Filter'
    Caption = 'Components Filter'
    ComponentsInfo = ComponentsInfoDS
    PageLayout = plStandard
    Left = 32
    Top = 56
    object QueryForm2: TQueryForm
      Method = fmGet
      object LayoutGroup6: TLayoutGroup
        DisplayColumns = 2
        object QueryFieldGroup8: TQueryFieldGroup
          object QueryRadioGroupPackageFilter: TQueryRadioGroup
            ParamName = 'Package'
            ReadOnly = False
            Caption = 'Component Package'
            CaptionAttributes.Style = 'background-color: silver'
            CaptionPosition = capAbove
            DisplayWidth = -1
            DisplayColumns = 1
            Values.Strings = (
              'All'
              'Standard'
              'Custom')
            Items.Strings = (
              'All'
              'Standard'
              'Custom')
            Style = 'vertical-align: top'
            Text = 'All'
          end
        end
        object QueryFieldGroup9: TQueryFieldGroup
          object QueryRadioGroupUsageFilter: TQueryRadioGroup
            ParamName = 'Usage'
            ReadOnly = False
            Caption = 'Component Type'
            CaptionAttributes.Style = 'background-color: silver'
            CaptionPosition = capAbove
            DisplayWidth = -1
            DisplayColumns = 2
            Values.Strings = (
              'All'
              'XMLData'
              'Query'
              'Producer'
              'DataAccess')
            Items.Strings = (
              'All'
              'Data Form Components'
              'Query Form Components'
              'Page Producers'
              'Data Access Components')
            Text = 'All'
          end
        end
      end
      object LayoutGroup5: TLayoutGroup
        DisplayColumns = -1
        Style = 'text-align: center'
        object QueryButtons9: TQueryButtons
          object SubmitQueryButton1: TSubmitQueryButton
            Caption = 'Apply Filter'
            Style = 'vertical-align: top'
            XMLComponent = QueryForm2
          end
          object CloseFilter: TSubmitValueButton
            Caption = 'Close'
            XMLComponent = QueryForm2
            Value = 'Close'
            ValueName = 'CloseFilter'
          end
        end
      end
    end
  end
  object Examples: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>'
      '')
    LinkName = 'Examples'
    TopicPage = topExamples
    PageCategories = []
    Title = 'InternetExpress Examples'
    Caption = 'Examples'
    ComponentsInfo = ComponentsInfoDS
    PageLayout = plStandard
    Left = 80
    Top = 8
  end
  object SelectOptionsPage: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    OnBeforeGetContent = SelectOptionsPageBeforeGetContent
    LinkName = 'SelectOptionsPage'
    TopicPage = topNone
    PageCategories = [catExample]
    Description.Strings = (
      
        'This example demonstrates the TQuerySelectOptions custom compone' +
        'nt. '
      'The submit button displays the HTTP request fields.')
    Title = 'InternetExpress SelectOptionsPage Example'
    Caption = 'SelectOptionsPage'
    PageLayout = plStandard
    Left = 288
    Top = 357
    object SelectOptionsQueryForm: TQueryForm
      Action = 'DumpRequest'
      Method = fmPost
      object QueryFieldGroup2: TQueryFieldGroup
        object QuerySelectOptions: TQuerySelectOptions
          ParamName = 'Value'
          DisplayRows = -1
          Caption = 'QuerySelectOptions'
          CaptionPosition = capAbove
          DataSet = CustNamesDS
          ValuesField = 'CustNo'
          ItemsField = 'Company'
        end
      end
      object QueryButtons2: TQueryButtons
      end
    end
  end
  object SearchSelectOptionsPage: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    OnBeforeGetContent = SearchSelectOptionsPageBeforeGetContent
    LinkName = 'SearchSelectOptionsPage'
    TopicPage = topNone
    PageCategories = [catExample]
    Description.Strings = (
      
        'This example demonstrates the TQuerySearchSelectOptions custom c' +
        'omponent.'
      
        'To use this example, type a string in the input control to incre' +
        'mentally search the list of'
      'options. '
      'The submit button displays the HTTP request fields.')
    Title = 'InternetExpress SearchSelectOptionsPage Example'
    Caption = 'SearchSelectOptionsPage'
    PageLayout = plStandard
    Left = 329
    Top = 279
    object SearchSelectOptionsQueryForm: TQueryForm
      Action = 'DumpRequest'
      Method = fmGet
      object QueryFieldGroup1: TQueryFieldGroup
        object QuerySearchSelectOptions: TQuerySearchSelectOptions
          DataSet = CustNamesDS
          ValuesField = 'CustNo'
          ItemsField = 'Company'
          DisplayRows = 8
          CaptionPosition = capAbove
          Caption = 'QuerySearchSelectOptions'
        end
      end
      object QueryButtons3: TQueryButtons
      end
    end
  end
  object PromptButtonPage: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    LinkName = 'PromptButtonPage'
    TopicPage = topNone
    PageCategories = [catExample]
    Description.Strings = (
      'This example demonstrates the TPromptButton custom component. '
      
        'Choose the Prompt... button, enter a value, and see the HTTP req' +
        'uest received by the'
      'Web Module.')
    Title = 'InternetExpress PromptButtonPage Example'
    Caption = 'PromptButtonPage'
    ComponentsInfo = ComponentsInfoDS
    PageLayout = plStandard
    Left = 376
    Top = 341
    object QueryForm3: TQueryForm
      Action = 'DumpRequest'
      Method = fmPost
      object QueryButtons4: TQueryButtons
        object PromptQueryButton1: TPromptQueryButton
          Caption = 'Prompt...'
          XMLComponent = QueryForm3
          XMLUseParent = False
          HiddenInputName = 'PromptResult'
          Lines.Strings = (
            'Enter some text')
        end
      end
    end
  end
  object QueryPasswordPage: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    LinkName = 'QueryPasswordPage'
    TopicPage = topNone
    PageCategories = [catExample]
    Description.Strings = (
      'This example demonstrates the TQueryPassword custom component. '
      'The submit button displays the HTTP request fields.')
    Title = 'InternetExpress QueryPasswordPage Example'
    Caption = 'QueryPasswordPage'
    PageLayout = plStandard
    Left = 226
    Top = 299
    object QueryForm1: TQueryForm
      Action = 'DumpRequest'
      Method = fmGet
      object QueryFieldGroup4: TQueryFieldGroup
        object QueryPassword: TQueryPassword
          DisplayWidth = -1
          Caption = 'QueryPassword'
        end
      end
      object QueryButtons5: TQueryButtons
      end
    end
  end
  object DumpRequest: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '<!-- dump request here --><#DUMPREQUEST>'
      '</BODY>'
      '</HTML>')
    LinkName = 'DumpRequest'
    TopicPage = topNone
    PageCategories = []
    Description.Strings = (
      
        'This page is displayed when a request is submitted by one of the' +
        ' query component'
      'examples.  '
      'Some interesting HTTP request'
      
        'fields are displayed.  Examine the QueryFields to see the name v' +
        'alue repair returned in'
      'the HTTP request packet. '
      '')
    Title = 'InternetExpress DumpRequest'
    Caption = 'DumpRequest'
    PageLayout = plStandard
    Left = 266
    Top = 227
  end
  object CustNamesDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CustNames'
    RemoteServer = DCOMConnection1
    Left = 432
    Top = 72
  end
  object ComponentsList: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    LinkName = 'Components'
    TopicPage = topComponents
    PageCategories = []
    Title = 'InternetExpress Components'
    Caption = 'Components'
    ComponentsInfo = ComponentsInfoDS
    PageLayout = plStandard
    Left = 112
    Top = 80
  end
  object CustOrdersQuery: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    LinkName = 'CustOrdersQuery'
    TopicPage = topNone
    PageCategories = []
    Description.Strings = (
      
        'This example displays a lists of customer names.   The submit bu' +
        'tton takes the user to a form view of customer orders.')
    Title = 'InternetExpress CustOrdersQuery Example'
    Caption = 'CustOrdersQuery'
    PageLayout = plStandard
    Left = 40
    Top = 189
    object QueryForm4: TQueryForm
      Action = 'CustOrders'
      Method = fmPost
      object QueryFieldGroup5: TQueryFieldGroup
        object QuerySelectOptions1: TQuerySelectOptions
          DisplayRows = 20
          Caption = 'Customer Name'
          CaptionPosition = capAbove
          DataSet = CustNamesDS
          ValuesField = 'CustNo'
          ItemsField = 'Company'
        end
      end
      object QueryButtons6: TQueryButtons
      end
    end
  end
  object AboutXML: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    LinkName = 'About XML'
    TopicPage = topXML
    PageCategories = []
    Title = 'InternetExpress About XML'
    Caption = 'About XML'
    DescriptionFile = 'aboutxml.htm'
    PageLayout = plDescription
    Left = 136
    Top = 8
  end
  object AboutJavaScript: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    LinkName = 'About JavaScript'
    TopicPage = topJavaScript
    PageCategories = []
    Title = 'InternetExpress About JavaScript'
    Caption = 'About JavaScript'
    DescriptionFile = 'aboutjavascript.htm'
    PageLayout = plDescription
    Left = 184
    Top = 56
  end
  object ReconcileError: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    LinkName = 'ReconcileError'
    TopicPage = topNone
    PageCategories = [catExample]
    Description.Strings = (
      
        'This example demonstrates TReconcilePageProducer by forcing a re' +
        'concile'
      'error.  ')
    Title = 'InternetExpress ReconcileError Example'
    Caption = 'ReconcileError'
    PageLayout = plStandard
    Instructions.Strings = (
      
        'Choose the Submit button to insert "Argentina" into the countrie' +
        's table.  This'
      
        'will generate a key violation if the country table already conta' +
        'ins "Argentina".  '
      'If no error is reported, repeat.')
    Left = 360
    Top = 221
    object QueryForm5: TQueryForm
      Action = 'XMLBrokerAllCountries'
      Method = fmPost
      object QueryFieldGroup6: TQueryFieldGroup
        object QueryTextArea: TQueryTextArea
          ParamName = 'postdelta'
          Caption = 'Delta Packet to Insert Argentina'
          CaptionPosition = capAbove
          Wrap = wrVirtual
          DisplayWidth = 50
          DisplayRows = 10
          Lines.Strings = (
            
              '<DATAPACKET Version="2.0"><METADATA><FIELDS><FIELD attrname="Nam' +
              'e" fieldtype="string" WIDTH="24"/><FIELD attrname="Capital" fiel' +
              'dtype="string" WIDTH="24"/><FIELD attrname="Continent" fieldtype' +
              '="string" WIDTH="24"/><FIELD attrname="Area" fieldtype="r8"/><FI' +
              'ELD attrname="Population" fieldtype="r8"/></FIELDS><PARAMS LCID=' +
              '"2057" DATASET_DELTA="1"/></METADATA><ROWDATA><ROW RowState="4" ' +
              'Name="Argentina" Capital="Buenos Aires" Continent="South America' +
              '" Area="2777815" Population="32300003"/></ROWDATA></DATAPACKET>')
        end
        object QueryHiddenText: TQueryHiddenText
          ParamName = 'REDIRECT'
          Text = 'ReconcileError'
        end
      end
      object QueryButtons7: TQueryButtons
        object SubmitQueryButton2: TSubmitQueryButton
          Caption = 'Submit'
          XMLComponent = QueryForm5
        end
      end
    end
  end
  object ReconcilePage: TReconcilePageProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '</HEAD>'
      '<BODY>'
      '<#INCLUDES><#STYLES><#WARNINGS>'
      
        '<p>One or more reconcile errors occured while applying a delta p' +
        'acket against'
      'the database. </p>'
      
        '<p>To resolve errors choose a radio button, edit data if necessa' +
        'ry, '
      
        'and then choose Post/Next.  Repeat for every error.  Reapply onc' +
        'e all errors have'
      'been processed.</p><FORM name="FORM1">'
      '<table>'
      '<tr>'
      '<td valign=top><H3>Error message:</H3></td>'
      
        '<td valign=top><textarea name="ErrMessage" rows=2 cols=58 readon' +
        'ly onfocus='#39'blur();'#39'></textarea></td>'
      '<td valign=top><H3>on</H3></td>'
      
        '<td valign=top><input type=text name="ErrAction" size=12 readonl' +
        'y onfocus='#39'blur();'#39'/>'
      '</td></tr>'
      '</table>'
      '<P>'
      '<#RECONCILEGRID>'
      '<P>'
      '<FORM>'
      '<H3> Reconcile Action : </H3>'
      
        '<input type=radio name="action" value="Cancel" onclick='#39'if(self.' +
        'grid1!=null)grid1.cancel();'#39'/> Cancel'
      
        '<input type=radio name="action" value="Correct" onclick='#39'if(self' +
        '.grid1!=null)grid1.correct();'#39'/> Correct'
      
        '<input type=radio name="action" value="Merge" onclick='#39'if(self.g' +
        'rid1!=null)grid1.merge();'#39'/> Merge'
      '<P>'
      
        '<input type=button value="<" onclick='#39'if(self.grid1!=null)grid1.' +
        'up();'#39' />'
      
        '<input type=button value=">" onclick='#39'if(self.grid1!=null)grid1.' +
        'down();'#39' />'
      
        '<input type=button value="Post/Next" onclick='#39'if(self.grid1!=nul' +
        'l)grid1.post();'#39'/>'
      '<P>'
      
        '<input type=button value="Reapply Updates" onclick='#39'if(self.grid' +
        '1!=null)grid1.Reapply(Submitfrm1, Submitfrm1.postdelta);'#39'/>'
      '</FORM>'
      '<#FORMS><#SCRIPT>'
      '</BODY>'
      '</HTML>')
    ReconcileGrid.ConflictingColumn.Caption = 'Conflicting Value'
    ReconcileGrid.ConflictingColumn.DisplayWidth = 24
    ReconcileGrid.FieldNameColumn.Caption = 'Field Name'
    ReconcileGrid.FieldNameColumn.DisplayWidth = 18
    ReconcileGrid.ModifiedColumn.Caption = 'Submitted Value'
    ReconcileGrid.ModifiedColumn.DisplayWidth = 24
    ReconcileGrid.OriginalColumn.Caption = 'Original Value'
    ReconcileGrid.OriginalColumn.DisplayWidth = 24
    Left = 184
    Top = 117
  end
  object CustOrdersMasterDetail: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    LinkName = 'CustOrders MasterDetail'
    TopicPage = topNone
    PageCategories = [catExample]
    Description.Strings = (
      
        'This page demonstrates a master detail form.  A form view shows ' +
        'customer information'
      
        'and a grid shows customer orders.   ShowXML and ShowDelta button' +
        's are provided'
      'in order to view the XML data packet.')
    Title = 'InternetExpress CustOrders MasterDetail Example'
    Caption = 'CustOrders MasterDetail'
    PageLayout = plStandard
    Left = 184
    Top = 197
    object DataForm7: TDataForm
      object FieldGroup7: TFieldGroup
        XMLBroker = XMLAllCustOrders
        object LayoutGroup19: TLayoutGroup
          DisplayColumns = -1
          object Company: TFieldText
            DisplayWidth = 30
            ReadOnly = True
            FieldName = 'Company'
          end
          object CustNo: TFieldText
            DisplayWidth = 10
            ReadOnly = True
            FieldName = 'CustNo'
          end
          object LastInvoiceDate: TFieldText
            DisplayWidth = 18
            FieldName = 'LastInvoiceDate'
          end
          object CustNo3: TFieldText
            DisplayWidth = 10
            FieldName = 'CustNo'
          end
        end
        object LayoutGroup18: TLayoutGroup
          DisplayColumns = 2
          object LayoutGroup16: TLayoutGroup
            DisplayColumns = -1
            object Addr1: TFieldText
              DisplayWidth = 30
              FieldName = 'Addr1'
            end
            object Addr2: TFieldText
              DisplayWidth = 30
              FieldName = 'Addr2'
            end
            object City: TFieldText
              DisplayWidth = 15
              FieldName = 'City'
            end
            object State: TFieldText
              DisplayWidth = 20
              FieldName = 'State'
            end
            object Zip: TFieldText
              DisplayWidth = 10
              FieldName = 'Zip'
            end
            object Country: TFieldText
              DisplayWidth = 20
              FieldName = 'Country'
            end
            object FieldStatus5: TFieldStatus
              Caption = '*'
            end
          end
          object LayoutGroup17: TLayoutGroup
            DisplayColumns = -1
            Style = 'vertical-align: top'
            object Phone: TFieldText
              DisplayWidth = 15
              FieldName = 'Phone'
            end
            object FAX: TFieldText
              DisplayWidth = 15
              FieldName = 'FAX'
            end
            object Contact: TFieldText
              DisplayWidth = 20
              FieldName = 'Contact'
            end
          end
        end
      end
      object LayoutGroup7: TLayoutGroup
        DisplayColumns = 2
        object DataNavigator6: TDataNavigator
          XMLComponent = FieldGroup7
          object FirstButton4: TFirstButton
            XMLComponent = FieldGroup7
            Caption = '|<'
          end
          object PriorButton4: TPriorButton
            XMLComponent = FieldGroup7
            Caption = '<'
          end
          object NextButton4: TNextButton
            XMLComponent = FieldGroup7
            Caption = '>'
          end
          object LastButton4: TLastButton
            XMLComponent = FieldGroup7
            Caption = '>|'
          end
          object UndoButton4: TUndoButton
            XMLComponent = FieldGroup7
            Caption = 'Undo'
          end
          object PostButton4: TPostButton
            XMLComponent = FieldGroup7
            Caption = 'Post'
          end
        end
        object FieldGroup10: TFieldGroup
          XMLBroker = XMLAllCustOrders
          object RowSetStatus3: TRowSetStatus
          end
        end
      end
      object LayoutGroup15: TLayoutGroup
        DisplayColumns = 2
        object DataGrid3: TDataGrid
          XMLBroker = XMLAllCustOrders
          XMLDataSetField = 'CustOrderTable'
          DisplayRows = 3
          object OrderNo2: TTextColumn
            DisplayWidth = 10
            ReadOnly = True
            FieldName = 'OrderNo'
          end
          object AmountPaid2: TTextColumn
            DisplayWidth = 10
            FieldName = 'AmountPaid'
          end
          object SaleDate: TTextColumn
            DisplayWidth = 18
            ReadOnly = True
            FieldName = 'SaleDate'
          end
          object ShipDate: TTextColumn
            DisplayWidth = 18
            ReadOnly = True
            FieldName = 'ShipDate'
          end
          object ItemsTotal2: TTextColumn
            DisplayWidth = 10
            ReadOnly = True
            FieldName = 'ItemsTotal'
          end
          object StatusColumn2: TStatusColumn
            Caption = '*'
          end
        end
        object DataNavigator8: TDataNavigator
          XMLComponent = DataGrid3
          object LayoutGroup12: TLayoutGroup
            DisplayColumns = 1
            object PriorButton5: TPriorButton
              XMLComponent = DataGrid3
              Caption = ' ^ '
            end
            object NextButton5: TNextButton
              XMLComponent = DataGrid3
              Caption = ' v '
            end
          end
        end
      end
      object LayoutGroup11: TLayoutGroup
        DisplayColumns = 2
        object DataNavigator10: TDataNavigator
          XMLComponent = DataGrid3
          object DeleteButton4: TDeleteButton
            XMLComponent = DataGrid3
            Caption = 'Delete Order'
          end
          object PostButton6: TPostButton
            XMLComponent = DataGrid3
            Caption = 'Post'
          end
        end
        object FieldGroup9: TFieldGroup
          XMLBroker = XMLAllCustOrders
          XMLDataSetField = 'CustOrderTable'
          object RowSetStatus4: TRowSetStatus
          end
        end
      end
      object LayoutGroup9: TLayoutGroup
        DisplayColumns = 2
        object DataNavigator7: TDataNavigator
          XMLComponent = FieldGroup7
          object ApplyUpdatesButton3: TApplyUpdatesButton
            Caption = 'Apply Updates'
            XMLBroker = XMLAllCustOrders
            XMLUseParent = True
          end
          object ShowXMLButton3: TShowXMLButton
            Caption = 'Show XML'
            XMLBroker = XMLAllCustOrders
            XMLUseParent = True
          end
          object ShowDeltaButton3: TShowDeltaButton
            Caption = 'Show Delta'
            XMLBroker = XMLAllCustOrders
            XMLUseParent = True
          end
        end
      end
    end
  end
  object XMLAllCustOrders: TXMLBroker
    Params = <>
    ProviderName = 'AllCustOrders'
    RemoteServer = DCOMConnection1
    WebDispatch.PathInfo = 'XMLAllCustOrders'
    ReconcileProducer = ReconcilePage
    Left = 432
    Top = 128
  end
  object AboutComponents: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    LinkName = 'About Components'
    TopicPage = topAboutComponents
    PageCategories = []
    Title = 'InternetExpress About Components'
    Caption = 'About Components'
    DescriptionFile = 'aboutcomponents.htm'
    PageLayout = plDescription
    Left = 32
    Top = 104
  end
  object RadioGroupPage: TInetXCenterProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '<#TITLE>'
      '</HEAD>'
      '<BODY>'
      '<#BODYELEMENTS>'
      '</BODY>'
      '</HTML>')
    OnBeforeGetContent = RadioGroupPageBeforeGetContent
    LinkName = 'RadioGroupPage'
    TopicPage = topNone
    PageCategories = [catExample]
    Description.Strings = (
      'This example demonstrates the TQueryRadioGroup  component. '
      'The submit button displays the HTTP request fields.')
    Title = 'InternetExpress SelectOptionsPage Example'
    Caption = 'RadioGroupPage'
    PageLayout = plStandard
    Left = 440
    Top = 301
    object QueryFormRadioGroup: TQueryForm
      Action = 'DumpRequest'
      Method = fmPost
      object QueryFieldGroup7: TQueryFieldGroup
        object QueryRadioGroup: TQueryRadioGroup
          ParamName = 'Value'
          ReadOnly = False
          Caption = 'QueryRadioGroup'
          CaptionPosition = capAbove
          DisplayWidth = -1
          DisplayColumns = 1
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
          Items.Strings = (
            'One'
            'Two'
            'Three'
            'Four')
          Text = '1'
        end
      end
      object QueryButtons8: TQueryButtons
      end
    end
  end
  object ComponentsInfoDS: TReadFileClientDataSet
    Active = True
    Aggregates = <>
    FileName = 
      'C:\wpgdemos\examples\pascal\Midas\InternetExpress\InetXCenter\co' +
      'mponentsinfo.cds'
    FieldDefs = <
      item
        Name = 'ClassName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ShortDescription'
        DataType = ftMemo
      end
      item
        Name = 'Description'
        DataType = ftMemo
      end
      item
        Name = 'Usage'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Example'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Package'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Type'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'ClassNameIndex'
        Fields = 'ClassName'
      end
      item
        Name = 'UsageIndex'
        Fields = 'Usage'
      end>
    IndexName = 'ClassNameIndex'
    Params = <>
    StoreDefs = True
    Left = 232
    Top = 168
    Data = {
      E44D00009619E0BD01000000180000000700FA000000030000001F0D09436C61
      73734E616D6501004900000001000557494454480200020032001053686F7274
      4465736372697074696F6E04004B000000010007535542545950450200490005
      0054657874000B4465736372697074696F6E04004B0000000100075355425459
      5045020049000500546578740005557361676501004900000001000557494454
      48020002001400074578616D706C650100490000000100055749445448020002
      001E00075061636B616765010049000000010005574944544802000200140004
      54797065010049000000010005574944544802000200140002000A4348414E47
      455F4C4F47040082000003000001000000000000000400000002000000000000
      0004000000030000000000000004000000040000000000000004000000050000
      0000000000040000000600000000000000040000000700000000000000040000
      000800000000000000040000000900000000000000040000000A000000000000
      00040000000B00000000000000040000000C00000000000000040000000D0000
      0000000000040000000E00000000000000040000000F00000000000000040000
      0010000000000000000400000011000000000000000400000012000000000000
      0004000000130000000000000004000000140000000000000004000000150000
      0000000000040000001600000000000000040000001700000000000000040000
      001800000000000000040000001900000000000000040000001A000000000000
      00040000001B00000000000000040000001C00000000000000040000001D0000
      0000000000040000001E00000000000000040000001F00000000000000040000
      0020000000000000000400000021000000000000000400000022000000000000
      0004000000230000000000000004000000240000000000000004000000250000
      0000000000040000002600000000000000040000002700000000000000040000
      002800000000000000040000002900000000000000040000002A000000000000
      00040000002B00000000000000040000002C00000000000000040000002D0000
      0000000000040000002E00000000000000040000002F00000000000000040000
      0030000000000000000400000031000000000000000400000032000000000000
      0004000000330000000000000004000000340000000000000004000000350000
      0000000000040000003600000000000000040000003700000000000000040000
      003800000000000000040000003900000000000000040000003A000000000000
      00040000003B00000000000000040000000100000000000000020000003C0000
      0002000000080000003D00000003000000080000003E00000004000000080000
      003F000000050000000800000040000000060000000800000041000000070000
      0008000000420000003F00000008000000430000000800000008000000440000
      000900000008000000450000000A00000008000000460000000B000000080000
      00470000000C00000008000000480000000D00000008000000490000000E0000
      00080000004A0000000F000000080000004B00000010000000080000004C0000
      0011000000080000004D00000012000000080000004E00000013000000080000
      004F000000140000000800000050000000150000000800000051000000160000
      0008000000520000001700000008000000530000001800000008000000540000
      001900000008000000550000001A00000008000000560000001B000000080000
      00570000001C00000008000000580000001D00000008000000590000001E0000
      00080000005A0000001F000000080000005B00000020000000080000005C0000
      0021000000080000005D00000022000000080000005E00000023000000080000
      005F000000240000000800000060000000250000000800000061000000260000
      0008000000620000002700000008000000630000002800000008000000640000
      002900000008000000650000002A00000008000000660000002B000000080000
      00670000002C00000008000000680000002D00000008000000690000002E0000
      00080000006A0000002F000000080000006B00000030000000080000006C0000
      0031000000080000006D00000032000000080000006E00000033000000080000
      006F000000340000000800000070000000350000000800000071000000360000
      0008000000720000003700000008000000730000003800000008000000740000
      003900000008000000750000003A00000008000000760000003B000000080000
      00770000007600000008000000780000007700000008000000790000003C0000
      00080000007A0000003D000000080000007B0000003E000000080000007C0000
      0042000000080000007D00000040000000080000007E00000041000000080000
      007F000000430000000800000080000000440000000800000081000000450000
      0008000000820000004600000008000000830000004700000008000000840000
      0048000000080000008500000049000000080000008600000056000000080000
      0087000000570000000800000088000000580000000800000089000000590000
      00080000008A0000005A000000080000008B0000005B000000080000008C0000
      005C000000080000008D0000005D000000080000008E0000005E000000080000
      008F0000005F0000000800000090000000600000000800000091000000610000
      0008000000920000006200000008000000930000006300000008000000940000
      0064000000080000009500000065000000080000009600000094000000080000
      0097000000660000000800000098000000670000000800000099000000680000
      00080000009A00000069000000080000009B0000006A000000080000009C0000
      006B000000080000009D0000006C000000080000009E0000006D000000080000
      009F0000007000000008000000A00000007100000008000000A1000000730000
      0008000000A20000007400000008000000A30000007500000008000000A40000
      007800000008000000A50000007F00000008000000A6000000A5000000080000
      00A70000007E00000008000000A80000008300000008000000A9000000840000
      0008000000AA0000004A00000008000000AB0000004B00000008000000AC0000
      00AB00000008000000AD000000AC00000008000000AE0000004C000000080000
      00AF000000AD00000008000000B00000004D00000008000000B10000004E0000
      0008000000B20000004F00000008000000B30000005000000008000000B40000
      005100000008000000B50000005200000008000000B600000053000000080000
      00B70000005400000008000000B80000005500000008000000B9000000890000
      0008000000BA0000008A00000008000000BB0000009000000008000000BC0000
      00BB00000008000000BD0000009600000008000000BE00000095000000080000
      00BF0000009700000008000000C00000009800000008000000C1000000990000
      0008000000C20000009A00000008000000C30000009D00000008000000C40000
      009E00000008000000C50000006E00000008000000C60000006F000000080000
      00C70000009B00000008000000C80000007200000008000000C9000000A10000
      0008000000CA000000A200000008000000CB000000A400000008000000CC0000
      009F00000008000000CD000000AA00000008000000CE000000C6000000080000
      00CF000000B900000008000000D00000008000000008000000D1000000000000
      0004000000D2000000D100000008000000D3000000D200000008000000D30000
      000000000002000000D40000000000000004000000D5000000D4000000080000
      00D50000000000000002000000D60000000000000004000000D7000000CF0000
      0008000000D8000000D700000008000000D90000000000000004000000DA0000
      00CD00000008000000DB000000AF00000008000000DC000000AE000000080000
      00DD000000B000000008000000DE000000B100000008000000DF000000B20000
      0008000000E0000000B300000008000000E1000000B400000008000000E20000
      00B500000008000000E3000000B600000008000000E4000000B7000000080000
      00E5000000B800000008000000E6000000BE00000008000000E7000000BC0000
      0008000000E8000000DA00000008000000E90000007B00000008000000EA0000
      000000000004000000EB000000D800000008000000EC000000CE000000080000
      00ED000000C000000008000000EE000000BA00000008000000EF000000C70000
      0008000000F00000000000000004000000F1000000F000000008000000F20000
      00F100000008000000F30000000000000004000000F400000000000000040000
      00F5000000F400000008000000F50000000000000002000000F2000000000000
      0002000000F30000000000000002000000F6000000ED00000008000000F70000
      00EA00000008000000F8000000BF00000008000000F9000000F7000000080000
      00FA000000F6000000080000000D44454641554C545F4F524445520200820000
      00000006AA28010005002A13544170706C7955706461746573427574746F6E7A
      000000544170706C7955706461746573427574746F6E2067656E657261746573
      20616E2048544D4C20636F6E74726F6C20746861742073656E647320616E2055
      7064617465206D65737361676520746F2074686520584D4C2062726F6B657220
      6F6E20746865204D4944415320576562206170706C69636174696F6E2E010000
      002007584D4C4461746105102A095444617461466F726D610000005444617461
      466F726D2067656E65726174657320616E2048544D4C20666F726D2074686174
      20646973706C61797320646174616261736520696E666F726D6174696F6E2061
      6E64206C657473207573657273206170706C7920757064617465732E07584D4C
      4461746105102A095444617461477269644D0000005444617461477269642067
      656E65726174657320616E2048544D4C207461626C6520746F20646973706C61
      792061206461746173657420696E20616E20584D4C2064617461207061636B65
      742E07584D4C4461746105002A0E54446174614E6176696761746F7262000000
      54446174614E6176696761746F7220617373656D626C6573207468652048544D
      4C2067656E657261746564206279206120736574206F66205444617461536574
      427574746F6E20616E642054584D4C427574746F6E2064657363656E64616E74
      732E010000002007584D4C4461746105002A0D5444656C657465427574746F6E
      560000005444656C657465427574746F6E2067656E65726174657320616E2048
      544D4C20636F6E74726F6C20746861742064656C657465732061207265636F72
      642066726F6D20616E20584D4C2064617461207061636B65742E010000002007
      584D4C4461746105002A0B544669656C6447726F75705D000000544669656C64
      47726F757020617272616E67657320646174616261736520696E666F726D6174
      696F6E206F6E20616E2048544D4C20666F726D206173206120736574206F6620
      6C6162656C6564206669656C64732E0D0A0D0A0D0A0D0A59000000544669656C
      6447726F757020617272616E67657320646174616261736520696E666F726D61
      74696F6E206F6E20616E2048544D4C20666F726D206173206120736574206F66
      206C6162656C6564206669656C64732E0D0A0D0A07584D4C4461746105002A0A
      544669656C644C696E6B0100000020010000002007584D4C4461746105002A10
      544669656C64526164696F47726F757060000000544669656C64526164696F47
      726F7570206372656174657320616E2048544D4C20726164696F2067726F7570
      20636F6E74726F6C20746F20726570726573656E742061206669656C6420696E
      20616E20584D4C2064617461207061636B65742E010000002007584D4C446174
      6105002A13544669656C6453656C6563744F7074696F6E735C00000054466965
      6C6453656C6563744F7074696F6E73206372656174657320616E2048544D4C20
      6C69737420636F6E74726F6C20746F20726570726573656E742061206669656C
      6420696E20616E20584D4C2064617461207061636B65742E010000002007584D
      4C4461746105002A0C544669656C645374617475737F000000544669656C6453
      74617475732067656E65726174657320616E2048544D4C20636F6E74726F6C20
      7468617420696E6469636174657320776865746865722061207265636F726420
      696E20616E20584D4C2064617461207061636B657420686173206265656E206D
      6F6469666965642062792074686520656E6420757365722E010000002007584D
      4C4461746105002A0A544669656C64546578740100000020010000002007584D
      4C4461746105002A0E544669656C6454657874417265615F000000544669656C
      6454657874206372656174657320612073696E676C652D6C696E652048544D4C
      20696E70757420636F6E74726F6C20746F20726570726573656E742061206669
      656C6420696E20616E20584D4C2064617461207061636B65742E5F0000005446
      69656C6454657874206372656174657320612073696E676C652D6C696E652048
      544D4C20696E70757420636F6E74726F6C20746F20726570726573656E742061
      206669656C6420696E20616E20584D4C2064617461207061636B65742E07584D
      4C4461746105002A0C544669727374427574746F6E5C00000054466972737442
      7574746F6E2067656E65726174657320616E2048544D4C20636F6E74726F6C20
      74686174206D6F76657320746F20746865206669727374207265636F72642069
      6E20616E20584D4C2064617461207061636B65742E010000002007584D4C4461
      746105002A1654496D674170706C7955706461746573427574746F6E01000000
      20010000002007584D4C4461746105002A1154496D67446174614E6176696761
      746F720100000020010000002007584D4C4461746105002A1054496D6744656C
      657465427574746F6E0100000020010000002007584D4C4461746105002A0F54
      496D674669727374427574746F6E0100000020010000002007584D4C44617461
      05002A1054496D67496E73657274427574746F6E010000002001000000200758
      4D4C4461746105002A0E54496D674C617374427574746F6E0100000020010000
      002007584D4C4461746105002A0E54496D674E657874427574746F6E01000000
      20010000002007584D4C4461746105002A1254496D674E657874506167654275
      74746F6E0100000020010000002007584D4C4461746105002A0E54496D67506F
      7374427574746F6E0100000020010000002007584D4C4461746105002A0F5449
      6D675072696F72427574746F6E0100000020010000002007584D4C4461746105
      002A1354496D675072696F7250616765427574746F6E01000000200100000020
      07584D4C4461746105002A0E54496D67556E646F427574746F6E010000002001
      0000002007584D4C4461746105002A0D54496E73657274427574746F6E590000
      0054496E73657274427574746F6E2067656E65726174657320616E2048544D4C
      20636F6E74726F6C207468617420696E73657274732061206E6577207265636F
      726420696E20616E20584D4C2064617461207061636B65742E20010000002007
      584D4C4461746105002A0B544C617374427574746F6E5B000000544C61737442
      7574746F6E2067656E65726174657320616E2048544D4C20636F6E74726F6C20
      74686174206D6F76657320746F20746865206C617374207265636F726420696E
      20616E20584D4C2064617461207061636B65742E20010000002007584D4C4461
      746105002A0C544C61796F757447726F75704F000000544C61796F757447726F
      75702067656E657261746573207468652048544D4C20746F20617272616E6765
      20636F6E74656E742070726F6475636564206279206F74686572205765622069
      74656D732E0100000020064C61796F757405002A0B544C696E6B436F6C756D6E
      0100000020010000002007584D4C4461746105002A12544D6964617350616765
      50726F64756365720B000000544669656C6447726F757001000000620850726F
      647563657205002A0B544E657874427574746F6E5A000000544E657874427574
      746F6E2067656E65726174657320616E2048544D4C20636F6E74726F6C207468
      6174206D6F76657320746F20746865206E657874207265636F726420696E2061
      6E20584D4C2064617461207061636B65742E010000002007584D4C4461746105
      002A0F544E65787450616765427574746F6E66000000544E6578745061676542
      7574746F6E2067656E65726174657320616E2048544D4C20636F6E74726F6C20
      74686174206D6F76657320746F20746865206E65787420736574206F66207265
      636F72647320696E20616E20584D4C2064617461207061636B65742E01000000
      2007584D4C4461746105002A0B54506F7374427574746F6E5000000054506F73
      74427574746F6E2067656E65726174657320616E2048544D4C20636F6E74726F
      6C207468617420706F737473206368616E67657320746F20616E20584D4C2064
      656C7461207061636B65742E010000002007584D4C4461746105002A0C545072
      696F72427574746F6E5E000000545072696F72427574746F6E2067656E657261
      74657320616E2048544D4C20636F6E74726F6C2074686174206D6F7665732074
      6F207468652070726576696F7573207265636F726420696E20616E20584D4C20
      64617461207061636B6574010000002007584D4C4461746105002A1054507269
      6F7250616765427574746F6E6B000000545072696F7250616765427574746F6E
      2067656E65726174657320616E2048544D4C20636F6E74726F6C207468617420
      6D6F76657320746F207468652070726576696F757320736574206F6620726563
      6F72647320696E20616E20584D4C2064617461207061636B65742E0100000020
      07584D4C4461746105002A125450726F6D70745175657279427574746F6E0100
      000020010000002005517565727905002A0D545175657279427574746F6E7350
      000000545175657279427574746F6E7320617373656D626C6573207468652048
      544D4C2067656E657261746564206279206120736574206F6620545175657279
      427574746F6E2064657363656E64616E74732E01000000200551756572790500
      2A105451756572794669656C6447726F7570510000005451756572794669656C
      6447726F757020617272616E67657320696E666F726D6174696F6E206F6E2061
      6E2048544D4C20666F726D206173206120736574206F66206C6162656C656420
      6669656C64732E010000002005517565727905102A0A545175657279466F726D
      53000000545175657279466F726D2067656E6572617465732048544D4C20666F
      726D7320666F72206C657474696E6720757365727320656E746572206170706C
      69636174696F6E2D646566696E65642076616C7565732E05517565727905002A
      1054517565727948696464656E54657874010000002001000000200551756572
      7905002A0E54517565727950617373776F726401000000200100000020055175
      65727905002A10545175657279526164696F47726F7570010000002001000000
      2005517565727905002A1354517565727953656C6563744F7074696F6E730100
      000020010000002005517565727905002A0A5451756572795465787401000000
      20010000002005517565727905002A0E54517565727954657874417265610100
      000020010000002005517565727905002A16545265636F6E63696C6550616765
      50726F6475636572010000002001000000200850726F647563657205002A1154
      52657365745175657279427574746F6E61000000545265736574517565727942
      7574746F6E2067656E65726174657320616E2048544D4C20636F6E74726F6C20
      74686174206261636B73206F7574206368616E67657320746F20746865207661
      6C756573206F6E206120717565727920666F726D2E0100000020055175657279
      05002A145453656C6563744F7074696F6E73436F6C756D6E0100000020010000
      002007584D4C4461746105002A105453686F7744656C7461427574746F6E0100
      000020010000002007584D4C4461746105002A0E5453686F77584D4C42757474
      6F6E0100000020010000002007584D4C4461746105002A0F54536F7274546578
      74436F6C756D6E0100000020010000002007584D4C4461746105002A0D545374
      61747573436F6C756D6E0100000020010000002007584D4C4461746105002A12
      545375626D69745175657279427574746F6E63000000545375626D6974517565
      7279427574746F6E2067656E65726174657320616E2048544D4C20636F6E7472
      6F6C2074686174206261636B73206F7574206368616E67657320746F20746865
      2076616C756573206F6E206120717565727920666F726D2E2001000000200551
      7565727905002A12545375626D697456616C7565427574746F6E010000002001
      0000002005517565727905002A0F545465787441726561436F6C756D6E010000
      0020010000002007584D4C4461746105002A0B5454657874436F6C756D6E0100
      000020010000002007584D4C4461746105002A0B54556E646F427574746F6E4D
      00000054556E646F427574746F6E2067656E65726174657320616E2048544D4C
      20636F6E74726F6C2074686174206261636B73206F7574206368616E67657320
      746F207468652063757272656E742E20010000002007584D4C4461746105002A
      0A54584D4C42726F6B6572190000004465736372697074696F6E206F66205446
      69656C6454657874200000004C6F6E67206465736372697074696F6E206F6620
      544669656C64546578740D0A07584D4C446174610D280A13544170706C795570
      6461746573427574746F6E07584D4C4461746106427574746F6E0D180A095444
      617461466F726D07584D4C4461746104466F726D0D180A095444617461477269
      6407584D4C4461746104477269640D280A0E54446174614E6176696761746F72
      07584D4C446174610B427574746F6E47726F75700D280A0D5444656C65746542
      7574746F6E07584D4C4461746106427574746F6E0D280A0B544669656C644772
      6F757007584D4C446174610547726F75700D280A0E54446174614E6176696761
      746F7207584D4C446174610547726F75700D280A0A544669656C644C696E6B07
      584D4C44617461075370656369616C0D280A10544669656C64526164696F4772
      6F757007584D4C4461746105496E7075740D280A13544669656C6453656C6563
      744F7074696F6E7307584D4C4461746105496E7075740D280A0C544669656C64
      53746174757307584D4C44617461075370656369616C0D280A0A544669656C64
      5465787407584D4C4461746105496E7075740D280A0E544669656C6454657874
      4172656107584D4C4461746105496E7075740D280A0C54466972737442757474
      6F6E07584D4C4461746106427574746F6E0D280A1654496D674170706C795570
      6461746573427574746F6E07584D4C4461746106427574746F6E0D280A115449
      6D67446174614E6176696761746F7207584D4C4461746106427574746F6E0D28
      0A1054496D6744656C657465427574746F6E07584D4C4461746106427574746F
      6E0D280A0F54496D674669727374427574746F6E07584D4C4461746106427574
      746F6E0D280A1054496D67496E73657274427574746F6E07584D4C4461746106
      427574746F6E0D280A0E54496D674C617374427574746F6E07584D4C44617461
      06427574746F6E0D280A0E54496D674E657874427574746F6E07584D4C446174
      6106427574746F6E0D280A1254496D674E65787450616765427574746F6E0758
      4D4C4461746106427574746F6E0D280A0E54496D67506F7374427574746F6E07
      584D4C4461746106427574746F6E0D280A0F54496D675072696F72427574746F
      6E07584D4C4461746106427574746F6E0D280A1354496D675072696F72506167
      65427574746F6E07584D4C4461746106427574746F6E0D280A0E54496D67556E
      646F427574746F6E07584D4C4461746106427574746F6E0D280A0D54496E7365
      7274427574746F6E07584D4C4461746106427574746F6E0D280A0B544C617374
      427574746F6E07584D4C4461746106427574746F6E0D280A0C544C61796F7574
      47726F7570064C61796F7574064C61796F75740D280A0B544C696E6B436F6C75
      6D6E07584D4C44617461075370656369616C0D280A12544D6964617350616765
      50726F64756365720850726F64756365720850726F64756365720D280A0B544E
      657874427574746F6E07584D4C4461746106427574746F6E0D280A0F544E6578
      7450616765427574746F6E07584D4C4461746106427574746F6E0D280A0B5450
      6F7374427574746F6E07584D4C4461746106427574746F6E0D280A0C54507269
      6F72427574746F6E07584D4C4461746106427574746F6E0D280A10545072696F
      7250616765427574746F6E07584D4C4461746106427574746F6E0D280A125450
      726F6D70745175657279427574746F6E05517565727906427574746F6E0D280A
      0D545175657279427574746F6E730551756572790547726F75700D280A105451
      756572794669656C6447726F75700551756572790547726F75700D180A0A5451
      75657279466F726D05517565727904466F726D0D280A10545175657279486964
      64656E54657874055175657279075370656369616C0D280A0E54517565727950
      617373776F726405517565727905496E7075740D280A10545175657279526164
      696F47726F757005517565727905496E7075740D280A1354517565727953656C
      6563744F7074696F6E7305517565727905496E7075740D280A0A545175657279
      5465787405517565727905496E7075740D280A0E545175657279546578744172
      656105517565727905496E7075740D280A16545265636F6E63696C6550616765
      50726F64756365720850726F6475636572075370656369616C0D280A11545265
      7365745175657279427574746F6E05517565727906427574746F6E0D280A1454
      53656C6563744F7074696F6E73436F6C756D6E07584D4C4461746105496E7075
      740D280A105453686F7744656C7461427574746F6E07584D4C44617461064275
      74746F6E0D280A0E5453686F77584D4C427574746F6E07584D4C446174610642
      7574746F6E0D280A0F54536F727454657874436F6C756D6E07584D4C44617461
      05496E7075740D280A0D54537461747573436F6C756D6E07584D4C4461746107
      5370656369616C0D280A12545375626D69745175657279427574746F6E055175
      65727906427574746F6E0D280A12545375626D697456616C7565427574746F6E
      05517565727906427574746F6E0D280A0F545465787441726561436F6C756D6E
      07584D4C4461746105496E7075740D280A0B5454657874436F6C756D6E07584D
      4C4461746105496E7075740D280A0B54556E646F427574746F6E07584D4C4461
      746106427574746F6E0D280A0A54584D4C42726F6B657207584D4C4461746107
      584D4C446174610D280A0A54584D4C42726F6B657207584D4C44617461075370
      656369616C0D280A0A54584D4C42726F6B65720A446174614163636573730753
      70656369616C0C280213544170706C7955706461746573427574746F6E07584D
      4C44617461085374616E6461726406427574746F6E0C1802095444617461466F
      726D07584D4C44617461085374616E6461726404466F726D0D18020954446174
      614772696407584D4C44617461085374616E6461726404477269640C28020E54
      446174614E6176696761746F7207584D4C44617461085374616E646172640547
      726F75700C28020D5444656C657465427574746F6E07584D4C44617461085374
      616E6461726406427574746F6E0D28020B544669656C6447726F757007584D4C
      44617461085374616E646172640547726F75700D28020A544669656C644C696E
      6B07584D4C44617461085374616E64617264075370656369616C0D2802105446
      69656C64526164696F47726F757007584D4C44617461085374616E6461726405
      496E7075740C280213544669656C6453656C6563744F7074696F6E7307584D4C
      44617461085374616E6461726405496E7075740C28020C544669656C64537461
      74757307584D4C44617461085374616E64617264075370656369616C0D28020A
      544669656C645465787407584D4C44617461085374616E6461726405496E7075
      740D28020E544669656C64546578744172656107584D4C44617461085374616E
      6461726405496E7075740C28020C544669727374427574746F6E07584D4C4461
      7461085374616E6461726406427574746F6E0C28020D54496E73657274427574
      746F6E07584D4C44617461085374616E6461726406427574746F6E0C28020B54
      4C617374427574746F6E07584D4C44617461085374616E646172640642757474
      6F6E0C28020C544C61796F757447726F7570064C61796F7574085374616E6461
      7264064C61796F75740D28020B544C696E6B436F6C756D6E07584D4C44617461
      0100075370656369616C0D280212544D696461735061676550726F6475636572
      0850726F6475636572085374616E646172640850726F64756365720C28020B54
      4E657874427574746F6E07584D4C44617461085374616E646172640642757474
      6F6E0C28020F544E65787450616765427574746F6E07584D4C44617461085374
      616E6461726406427574746F6E0C28020B54506F7374427574746F6E07584D4C
      44617461085374616E6461726406427574746F6E0C28020C545072696F724275
      74746F6E07584D4C44617461085374616E6461726406427574746F6E0C280210
      545072696F7250616765427574746F6E07584D4C44617461085374616E646172
      6406427574746F6E0D2802125450726F6D70745175657279427574746F6E0551
      75657279010006427574746F6E0C28020D545175657279427574746F6E730551
      75657279085374616E646172640547726F75700C280210545175657279466965
      6C6447726F7570055175657279085374616E646172640547726F75700C18020A
      545175657279466F726D055175657279085374616E6461726404466F726D0D28
      021054517565727948696464656E54657874055175657279085374616E646172
      64075370656369616C0D28020E54517565727950617373776F72640551756572
      79010005496E7075740D28021054517565727948696464656E54657874055175
      6572790100075370656369616C0D280210545175657279526164696F47726F75
      70055175657279085374616E6461726405496E7075740D280213545175657279
      53656C6563744F7074696F6E73055175657279085374616E6461726405496E70
      75740D28020A54517565727954657874055175657279085374616E6461726405
      496E7075740D28020E5451756572795465787441726561055175657279085374
      616E6461726405496E7075740D280216545265636F6E63696C65506167655072
      6F64756365720850726F64756365720100075370656369616C0C280211545265
      7365745175657279427574746F6E055175657279085374616E64617264064275
      74746F6E0D2802145453656C6563744F7074696F6E73436F6C756D6E07584D4C
      44617461085374616E6461726405496E7075740D2802105453686F7744656C74
      61427574746F6E07584D4C44617461010006427574746F6E0D28020D54537461
      747573436F6C756D6E07584D4C44617461085374616E64617264075370656369
      616C0C280212545375626D69745175657279427574746F6E0551756572790853
      74616E6461726406427574746F6E0D28020F545465787441726561436F6C756D
      6E07584D4C44617461085374616E6461726405496E7075740D28020B54546578
      74436F6C756D6E07584D4C44617461085374616E6461726405496E7075740C28
      020B54556E646F427574746F6E07584D4C44617461085374616E646172640642
      7574746F6E0D28020A54584D4C42726F6B65720A446174614163636573730853
      74616E64617264075370656369616C0D28020A544669656C644C696E6B07584D
      4C446174610100075370656369616C0C20020A544669656C644C696E6BBD0000
      005468697320636F6D706F6E656E742067656E65726174657320612068797065
      726C696E6B2E20436C69636B696E67206F6E207468652068797065726C696E6B
      2067656E657261746573206120717565727920737472696E6720746861742069
      64656E746966696573207468652063757272656E74207265636F72642E202020
      412077696E646F77206973206F70656E6564206F6E20612055524C2074686174
      20696E636C756465732074686520717565727920737472696E672E0D0A200758
      4D4C446174610100075370656369616C0C08020B544669656C6447726F757004
      0000000D0A0D0A07584D4C44617461085374616E646172640547726F75700C20
      020A544669656C645465787463000000544669656C6454657874206372656174
      657320612073696E676C652D6C696E652048544D4C20696E70757420636F6E74
      726F6C20746F20726570726573656E742061206669656C6420696E20616E2058
      4D4C2064617461207061636B65742E0D0A0D0A07584D4C44617461085374616E
      6461726405496E7075740C18020E544669656C64546578744172656107584D4C
      44617461085374616E6461726405496E7075740D080A1654496D674170706C79
      55706461746573427574746F6E6E00000054496D674170706C79557064617465
      73427574746F6E2062656861766573206C696B6520544170706C795570646174
      6573427574746F6E2E2020416E20494D4720656C656D656E7420697320757365
      6420726174686572207468616E20616E20494E50555420656C656D656E742E07
      584D4C4461746106427574746F6E0D080A1154496D67446174614E6176696761
      746F723A00000054496D67446174614E6176696761746F722069732074686520
      706172656E74206F662054496D672A427574746F6E20636F6D706F6E656E7473
      2E07584D4C4461746106427574746F6E0D080A1154496D67446174614E617669
      6761746F726200000054496D6744656C657465427574746F6E20626568617665
      73206C696B65205444656C657465427574746F6E2E2020416E20494D4720656C
      656D656E74206973207573656420726174686572207468616E20616E20494E50
      555420656C656D656E742E07584D4C4461746106427574746F6E0D100A115449
      6D67446174614E6176696761746F726200000054496D6744656C657465427574
      746F6E2062656861766573206C696B65205444656C657465427574746F6E2E20
      20416E20494D4720656C656D656E742069732075736564207261746865722074
      68616E20616E20494E50555420656C656D656E742E07584D4C44617461064275
      74746F6E0D200A1054496D6744656C657465427574746F6E6200000054496D67
      44656C657465427574746F6E2062656861766573206C696B65205444656C6574
      65427574746F6E2E2020416E20494D4720656C656D656E742069732075736564
      20726174686572207468616E20616E20494E50555420656C656D656E742E0758
      4D4C4461746106427574746F6E0D100A1154496D67446174614E617669676174
      6F723A00000054496D67446174614E6176696761746F72206973207468652070
      6172656E74206F662054496D672A427574746F6E20636F6D706F6E656E74732E
      07584D4C4461746106427574746F6E0D200A0F54496D67466972737442757474
      6F6E6000000054496D674669727374427574746F6E2062656861766573206C69
      6B6520544669727374427574746F6E2E2020416E20494D4720656C656D656E74
      206973207573656420726174686572207468616E20616E20494E50555420656C
      656D656E742E07584D4C4461746106427574746F6E0D200A1054496D67496E73
      657274427574746F6E6200000054496D67496E73657274427574746F6E206265
      6861766573206C696B652054496E73657274427574746F6E2E2020416E20494D
      4720656C656D656E74206973207573656420726174686572207468616E20616E
      20494E50555420656C656D656E742E07584D4C4461746106427574746F6E0D20
      0A0E54496D674C617374427574746F6E5F00000054496D674C61737442757474
      6F6E2062656861766573206C696B6520544C617374427574746F6E2E2020416E
      20494D4720656C656D656E74206973207573656420726174686572207468616E
      20616E20494E50555420656C656D656E742E2007584D4C446174610642757474
      6F6E0D200A0E54496D674E657874427574746F6E5F00000054496D674E657874
      427574746F6E2062656861766573206C696B6520544E657874427574746F6E2E
      2020416E20494D4720656C656D656E7420697320757365642072617468657220
      7468616E20616E20494E50555420656C656D656E742E2007584D4C4461746106
      427574746F6E0D200A1254496D674E65787450616765427574746F6E66000000
      54496D674E65787450616765427574746F6E2062656861766573206C696B6520
      544E65787450616765427574746F6E2E2020416E20494D4720656C656D656E74
      206973207573656420726174686572207468616E20616E20494E50555420656C
      656D656E742E07584D4C4461746106427574746F6E0D200A0E54496D67506F73
      74427574746F6E5E00000054496D67506F7374427574746F6E20626568617665
      73206C696B652054506F7374427574746F6E2E2020416E20494D4720656C656D
      656E74206973207573656420726174686572207468616E20616E20494E505554
      20656C656D656E742E07584D4C4461746106427574746F6E0D200A0F54496D67
      5072696F72427574746F6E6100000054496D675072696F72427574746F6E2062
      656861766573206C696B6520545072696F72427574746F6E2E2020416E20494D
      4720656C656D656E74206973207573656420726174686572207468616E20616E
      20494E50555420656C656D656E742E2007584D4C4461746106427574746F6E0D
      200A1354496D675072696F7250616765427574746F6E6900000054496D675072
      696F7250616765427574746F6E2062656861766573206C696B6520545072696F
      7250616765427574746F6E2E2020416E20494D4720656C656D656E7420697320
      7573656420726174686572207468616E20616E20494E50555420656C656D656E
      742E2007584D4C4461746106427574746F6E0D200A0E54496D67556E646F4275
      74746F6E5E00000054496D67556E646F427574746F6E2062656861766573206C
      696B652054556E646F427574746F6E2E2020416E20494D4720656C656D656E74
      206973207573656420726174686572207468616E20616E20494E50555420656C
      656D656E742E07584D4C4461746106427574746F6E0D20020B544C696E6B436F
      6C756D6EBA0000005468697320636F6D706F6E656E742067656E657261746573
      20612068797065726C696E6B2E20436C69636B696E67206F6E20746865206879
      7065726C696E6B2067656E657261746573206120717565727920737472696E67
      2074686174206964656E746966696573207468652063757272656E7420726563
      6F72642E202020412077696E646F77206973206F70656E6564206F6E20612055
      524C207468617420696E636C756465732074686520717565727920737472696E
      672E07584D4C446174610100075370656369616C0D100212544D696461735061
      676550726F647563657273000000544D696461735061676550726F6475636572
      20617373656D626C657320616E2048544D4C20646F63756D656E742074686174
      20726570726573656E7473206C69766520646174616261736520696E666F726D
      6174696F6E2066726F6D20616E206170706C69636174696F6E20736572766572
      2E0850726F6475636572085374616E646172640850726F64756365720D200212
      5450726F6D70745175657279427574746F6E0500000054686973200551756572
      79010006427574746F6E0D2002125450726F6D70745175657279427574746F6E
      8A0000005468697320636F6D706F6E656E7420646973706C6179732061206469
      616C6F6720626F7820746861742070726F6D70747320666F7220612073747269
      6E672E20205468652076616C7565206F662074686520737472696E6720697320
      7375626D69747465642061732061206669656C64206F6E207468652070617265
      6E7420545175657279466F726D2E055175657279010006427574746F6E0C2002
      1054517565727948696464656E54657874950000005468697320636F6D706F6E
      656E7420616464732061206669656C6420746F206120545175657279466F726D
      2074686174206973206E6F742076697369626C6520746F2075736572732E2020
      5468652076616C7565206F6620746865206669656C6420697320706173736564
      20746F2074686520736572766572207768656E2074686520666F726D20697320
      7375626D69747465642E0551756572790100075370656369616C0D20020E5451
      7565727950617373776F72642B000000205468697320636F6D706F6E656E7420
      67656E65726174657320612070617373776F7264206669656C642E0551756572
      79010005496E7075740D200210545175657279526164696F47726F7570520000
      00545175657279526164696F47726F7570206372656174657320616E2048544D
      4C20726164696F2067726F757020636F6E74726F6C20746F2072657072657365
      6E74206E616D656420706172616D657465722E055175657279085374616E6461
      726405496E7075740D20021354517565727953656C6563744F7074696F6E7350
      00000054517565727953656C6563744F7074696F6E7320637265617465732061
      6E2048544D4C206C69737420636F6E74726F6C20746F20726570726573656E74
      2061206E616D656420706172616D657465722E055175657279085374616E6461
      726405496E7075740C20020A5451756572795465787453000000545175657279
      54657874206372656174657320612073696E676C652D6C696E652048544D4C20
      696E70757420636F6E74726F6C20746F20726570726573656E742061206E616D
      656420706172616D657465722E055175657279085374616E6461726405496E70
      75740C20020E5451756572795465787441726561580000005451756572795465
      78744172656120637265617465732061206D756C74692D6C696E652048544D4C
      20696E70757420636F6E74726F6C20746F20726570726573656E74206E616D65
      6420706172616D657465722E0D0A0D0A055175657279085374616E6461726405
      496E7075740C2002145453656C6563744F7074696F6E73436F6C756D6E5C0000
      005453656C6563744F7074696F6E73436F6C756D6E206372656174657320616E
      2048544D4C206C69737420636F6E74726F6C20746F20726570726573656E7420
      61206669656C642076616C756520696E2061206461746120677269642E07584D
      4C44617461085374616E6461726405496E7075740C2002105453686F7744656C
      7461427574746F6E4D0000005768656E20636C69636B65642C20746869732063
      6F6D706F6E656E74206F70656E7320612077696E646F7720646973706C617969
      6E672074686520584D4C2064617461207061636B65742E0D0A07584D4C446174
      61010006427574746F6E0C200A0E5453686F77584D4C427574746F6E51000000
      5768656E20636C69636B65642C207468697320636F6D706F6E656E74206F7065
      6E7320612077696E646F7720646973706C6179696E672074686520584D4C2064
      617461207061636B65742E0D0A20200D0A07584D4C4461746106427574746F6E
      0D200A0F54536F727454657874436F6C756D6E810000005468697320636F6D70
      6F6E656E7420646973706C617973206120736F727420627574746F6E20696E20
      74686520636F6C756D6E206F6620612054446174614772692E2020496E206F74
      6865722072657370656374732C207468697320636F6D706F6E656E7420626568
      61766573206C696B652054436F6C756D6E546578742E202007584D4C44617461
      05496E7075740D200216545265636F6E63696C655061676550726F6475636572
      F90000005468697320636F6D706F6E656E742067656E65726174657320612070
      616765207468617420646973706C617973207265636F6E63696C65206572726F
      72732074686174206F636375726564207768696C65206170706C79696E672075
      7064617465732E202054686520757365722068617320746865206F70706F7274
      756E69747920746F20636F727265637420746865206572726F72732E20205468
      69732070616765206973206173736F636961746564207769746820612054584D
      4C42726F6B65722062792073657474696E67207468652054584D4C42726F6B65
      722E5265636F6E63696C6550726F64756365722070726F70657274792E085072
      6F64756365720100075370656369616C0C200A12545375626D697456616C7565
      427574746F6E490000005468697320717565727920627574746F6E2070617373
      65732061207370656369666965642076616C7565207768656E20697420737562
      6D697473206120545175657279466F726D2E2005517565727906427574746F6E
      0C20020F545465787441726561436F6C756D6E63000000545465787441726561
      436F6C756D6E20637265617465732061206D756C74692D6C696E652048544D4C
      20696E70757420636F6E74726F6C20746F20726570726573656E742061206669
      656C642076616C756520696E2061206461746120677269642E2007584D4C4461
      7461085374616E6461726405496E7075740C20020B5454657874436F6C756D6E
      620000005454657874436F6C756D6E206372656174657320612073696E676C65
      2D6C696E652048544D4C20696E70757420636F6E74726F6C20746F2072657072
      6573656E742061206669656C642076616C756520696E20612064617461206772
      69642E0D0A2007584D4C44617461085374616E6461726405496E7075740C1002
      0A54584D4C42726F6B65727100000054584D4C42726F6B657220666574636865
      7320584D4C2064617461207061636B6574732066726F6D20616E206170706C69
      636174696F6E2073657276657220616E64206170706C69657320584D4C207570
      646174657320746F20746865206170706C69636174696F6E207365727665722E
      0A44617461416363657373085374616E64617264075370656369616C0C20020D
      54537461747573436F6C756D6E7900000054537461747573436F6C756D6E2067
      656E65726174657320616E2048544D4C20636F6E74726F6C207468617420696E
      6469636174657320776865746865722061207265636F726420696E2061206461
      7461206772696420686173206265656E206D6F64696669656420627920746865
      20656E6420757365722E07584D4C44617461085374616E646172640753706563
      69616C0D100A1654496D674170706C7955706461746573427574746F6E6E0000
      0054496D674170706C7955706461746573427574746F6E206265686176657320
      6C696B6520544170706C7955706461746573427574746F6E2E2020416E20494D
      4720656C656D656E74206973207573656420726174686572207468616E20616E
      20494E50555420656C656D656E742E07584D4C4461746106427574746F6E0D28
      080F54536F727454657874436F6C756D6E07584D4C446174610C416C6C437573
      746F6D65727305496E7075740D28000B544C696E6B436F6C756D6E07584D4C44
      6174610C416C6C437573746F6D6572730100075370656369616C0C2800105446
      69656C64526164696F47726F757007584D4C4461746116416C6C436F756E7472
      696573526164696F47726F7570085374616E6461726405496E7075740528080F
      5454657874436F6C756D6E4174747207584D4C44617461094669656C64417474
      7205496E7075740D28080F5454657874436F6C756D6E4174747207584D4C4461
      7461094669656C644174747205496E7075740E28080F5454657874436F6C756D
      6E4174747207584D4C44617461094669656C644174747205496E70757405A82A
      0F5454657874436F6C756D6E417474720EA82A0F5454657874436F6C756D6E41
      7474720400080F5454657874436F6C756D6E41747472BD000000546869732063
      6F6D706F6E656E74206578706F73657320666F726D617474696E672070726F70
      65727469657320737570706F72742074686520627920746865204A6176615363
      7269707420584D4C446973706C6179206F626A6563742E202050726F70657274
      69657320696E636C7564652043757272656E637953796D626F6C2C204D696E56
      616C75652C204D617856616C75652C2020446563696D616C732C204669786573
      446563696D616C732C20616E642052657175697265642E010000002007584D4C
      44617461094669656C644174747205496E7075740D28000B544C696E6B436F6C
      756D6E07584D4C446174610C416C6C437573746F6D6572730C416C6C43757374
      6F6D657273075370656369616C0D28000B544C696E6B436F6C756D6E07584D4C
      446174610C416C6C437573746F6D6572730100075370656369616C0400080D54
      526F77536574537461747573590000005468697320636F6D706F6E656E742064
      6973706C6179732074686520726F7720636F756E7420616E642063757272656E
      7420726F77206F6620746865204A61766153637269707420584D4C526F775365
      74206F626A6563742E010000002007584D4C446174610C416C6C437573746F6D
      657273075370656369616C0D18081654496D674170706C795570646174657342
      7574746F6E07584D4C446174610A496D67427574746F6E7306427574746F6E0C
      18081154496D67446174614E6176696761746F7207584D4C446174610A496D67
      427574746F6E7306427574746F6E0C28081054496D6744656C65746542757474
      6F6E07584D4C446174610A496D67427574746F6E7306427574746F6E0C28080F
      54496D674669727374427574746F6E07584D4C446174610A496D67427574746F
      6E7306427574746F6E0C28081054496D67496E73657274427574746F6E07584D
      4C446174610A496D67427574746F6E7306427574746F6E0C28080E54496D674C
      617374427574746F6E07584D4C446174610A496D67427574746F6E7306427574
      746F6E0C28080E54496D674E657874427574746F6E07584D4C446174610A496D
      67427574746F6E7306427574746F6E0C28081254496D674E6578745061676542
      7574746F6E07584D4C446174610A496D67427574746F6E7306427574746F6E0C
      28080E54496D67506F7374427574746F6E07584D4C446174610A496D67427574
      746F6E7306427574746F6E0C28080F54496D675072696F72427574746F6E0758
      4D4C446174610A496D67427574746F6E7306427574746F6E0C28081354496D67
      5072696F7250616765427574746F6E07584D4C446174610A496D67427574746F
      6E7306427574746F6E0C28080E54496D67556E646F427574746F6E07584D4C44
      6174610A496D67427574746F6E7306427574746F6E0C28000E54517565727950
      617373776F726405517565727911517565727950617373776F72645061676501
      0005496E7075740C2800125450726F6D70745175657279427574746F6E055175
      6572791050726F6D7074427574746F6E50616765010006427574746F6E0C1808
      1654496D674170706C7955706461746573427574746F6E07584D4C4461746101
      0006427574746F6E0C18020954446174614772696407584D4C44617461085374
      616E646172640547726F757005000A1954517565727953656172636853656C65
      63744F7074696F6E730100000020010000002005517565727905496E7075740C
      28000B544C696E6B436F6C756D6E07584D4C4461746109437573746F6D657273
      0100075370656369616C0C28080F54536F727454657874436F6C756D6E07584D
      4C4461746109437573746F6D65727305496E7075740D20021354517565727953
      656C6563744F7074696F6E735A00000054517565727953656172636853656C65
      63744F7074696F6E73206164647320696E6372656D656E74616C207365617263
      68696E6720746F207468652054517565727953656C6563744F7074696F6E7320
      636F6D706F6E656E742E055175657279085374616E6461726405496E7075740C
      100212544D696461735061676550726F6475636572D2000000544D6964617350
      61676550726F647563657220617373656D626C657320616E2048544D4C207061
      67652E2020546865206265686176696F72206F66207468652070616765206973
      207072696D6172696C7920636F6E74726F6C6C6564206279206974277320636F
      6D706F6E656E74732E2020466F72206578616D706C652C206120544461746146
      6F726D206973207573656420746F2070726573656E74206C6976652064617461
      2E2020545175657279466F726D206973207573656420746F207375626D697420
      7573657220696E7075742E0850726F6475636572085374616E64617264085072
      6F64756365720C280016545265636F6E63696C655061676550726F6475636572
      0850726F64756365720E5265636F6E63696C654572726F720100075370656369
      616C05A82A0564646464640DA82A0564646464640EA82A05646464646406802A
      0478787878030000007373730300000073737305A82A04616161610EA82A0461
      6161610D28021954517565727953656172636853656C6563744F7074696F6E73
      055175657279085374616E6461726405496E7075740D200A1354517565727953
      656C6563744F7074696F6E734B00000054517565727953656C6563744F707469
      6F6E732070726F76696465732061206C697374206F662076616C756573207573
      696E6720616E2048544D4C2073656C65637420656C656D656E742E0551756572
      7905496E7075740C200210545175657279526164696F47726F75705D00000054
      5175657279526164696F47726F75702070726F76696465732061206C69737420
      6F662076616C756573207573696E6720612067726F7570206F662048544D4C20
      726164696F20627574746F6E20696E70757420656C656D656E74732E05517565
      7279085374616E6461726405496E7075740C28021354517565727953656C6563
      744F7074696F6E73055175657279085374616E6461726405496E7075740C2802
      1954517565727953656172636853656C6563744F7074696F6E73055175657279
      010005496E707574}
  end
end
