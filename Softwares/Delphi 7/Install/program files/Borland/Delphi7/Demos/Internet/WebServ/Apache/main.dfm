object CustomerInfoModule: TCustomerInfoModule
  OldCreateOrder = True
  Actions = <
    item
      Name = 'CustomerList'
      PathInfo = '/customerlist'
      Producer = CustomerList
    end
    item
      Name = 'QueryAction'
      PathInfo = '/runquery'
      OnAction = WebModule1QueryActionAction
    end
    item
      Name = 'EmployeeList'
      PathInfo = '/employeelist'
      Producer = EmployeeList
    end
    item
      Name = 'GetImage'
      PathInfo = '/getimage'
      OnAction = CustomerInfoModuleGetImageAction
    end
    item
      Name = 'BioLife'
      PathInfo = '/biolife'
      OnAction = CustomerInfoModuleBioLifeAction
    end
    item
      Name = 'Redirect'
      PathInfo = '/redirect'
      OnAction = CustomerInfoModuleRedirectAction
    end
    item
      Default = True
      Name = 'root'
      PathInfo = '/Root'
      Producer = Root
    end>
  Left = 249
  Top = 148
  Height = 479
  Width = 741
  object CustomerOrders: TQueryTableProducer
    Caption = 'Customer Orders'
    Columns = <
      item
        FieldName = 'OrderNo'
      end
      item
        FieldName = 'SaleDate'
        Title.Align = haCenter
      end
      item
        FieldName = 'ShipDate'
      end>
    Query = Query1
    TableAttributes.Border = 1
    TableAttributes.CellSpacing = 1
    TableAttributes.CellPadding = 1
    TableAttributes.Width = 50
    Left = 50
    Top = 152
  end
  object Query1: TQuery
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    SQL.Strings = (
      'SELECT *'
      'FROM ORDERS'
      'WHERE'
      '(CustNo = :CustNo)')
    Left = 128
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'CustNo'
        ParamType = ptUnknown
      end>
  end
  object CustomerList: TPageProducer
    HTMLDoc.Strings = (
      '<HTML>'
      ' <!---------------------------------------------------->'
      '<!-- Copyright Borland Software Corporation 1999-2002 -->'
      ' <!---------------------------------------------------->'
      '<HEAD>'
      '<TITLE>Sample Delphi Web server application</TITLE>'
      '</HEAD>'
      '<BODY>'
      '<H2>Customer Order Information</H2>'
      '<HR>'
      'Click a customer name to view their orders.<P>'
      '<#CUSTLIST><P>'
      '</BODY>'
      '</HTML>'
      ' ')
    OnHTMLTag = CustomerListHTMLTag
    Left = 50
    Top = 89
  end
  object Customer: TTable
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    IndexFieldNames = 'Company'
    TableName = 'CUSTOMER.DB'
    Left = 128
    Top = 88
    object CustomerCustNo: TFloatField
      FieldName = 'CustNo'
    end
    object CustomerCompany: TStringField
      FieldName = 'Company'
      Size = 30
    end
  end
  object BioLife: TTable
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    TableName = 'biolife.db'
    Left = 129
    Top = 286
    object BioLifeSpeciesNo: TFloatField
      FieldName = 'Species No'
    end
    object BioLifeCategory: TStringField
      FieldName = 'Category'
      Size = 15
    end
    object BioLifeCommon_Name: TStringField
      FieldName = 'Common_Name'
      Size = 30
    end
    object BioLifeSpeciesName: TStringField
      FieldName = 'Species Name'
      Size = 40
    end
    object BioLifeLengthcm: TFloatField
      FieldName = 'Length (cm)'
    end
    object BioLifeLength_In: TFloatField
      FieldName = 'Length_In'
    end
    object BioLifeNotes: TMemoField
      FieldName = 'Notes'
      OnGetText = BioLifeNotesGetText
      BlobType = ftMemo
      Size = 50
    end
    object BioLifeGraphic: TGraphicField
      FieldName = 'Graphic'
      OnGetText = BioLifeGraphicGetText
      BlobType = ftGraphic
    end
  end
  object Root: TPageProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<TITLE>ISAPI/NSAPI/APACHE/CGI Example</TITLE>'
      '<BODY>'
      '<H3>ISAPI/NSAPI/APACHE/CGI Example server</H3>'
      
        'NOTE:  The links on this page assume that you have placed IServe' +
        'r/IServCGI in a scripts'
      'directory off of your WWW servers root directory.'
      '<P>'
      '<B>Web Examples</B>'
      '<P>'
      '<B>TPageProducer using a Custom Tag</B><BR>'
      'For an example of using a TPageProducer with a Custom Tag click'
      
        '<A HREF="<#MODULENAME>/customerlist">here</A>.  This example ret' +
        'urns'
      
        'list of all customers from the Customer.DB table.  You can click' +
        ' the customer'#39's'
      'name to view a listing of their orders.'
      '<P>'
      '<B>TDatasetTableProducer</B><BR>'
      
        'For an example of using the TDatasetTableProducer to display the' +
        ' Employee table click '
      '<A HREF="<#MODULENAME>/employeelist">here</A>.'
      '<P>'
      '<B>TDatasetPageProducer</B><BR>'
      
        'For an example of using the TDatasetPageProducer and of returnin' +
        'g a graphic'
      
        'from a table click <A HREF="<#MODULENAME>/biolife">here</A>.  Th' +
        'is example'
      
        'makes use of the JPeg unit to display a bitmap stored in the gra' +
        'phic field of the'
      'Biolife.DB table.'
      '<P>'
      '<B>Server Redirect</B><BR>'
      
        'Click <A HREF="<#MODULENAME>/redirect">here</A> for a demonstrat' +
        'ion of'
      'how to redirect a use to an other web site.'
      '<P>'
      '<B>Cookies</B><BR>'
      
        'For an example of using Cookies hit the refresh button on your b' +
        'rowser and see '
      
        'how the number of hits is incremented, it remembers the count ev' +
        'en after you close the browser.'
      
        'Cookies are stored on the browser side, and every time the brows' +
        'er hits the server that '
      
        'created the cookie, it sends the cookie back to the server.<BR><' +
        'BR>'
      'Number of hits from this browser  = <#VISITCOUNT>'
      '</BODY>'
      '</HTML>'
      ''
      ''
      ' '
      ' ')
    OnHTMLTag = RootHTMLTag
    Left = 50
    Top = 24
  end
  object EmployeeList: TDataSetTableProducer
    Caption = '<h1>Employee Catalog</h1>'
    DataSet = Employee
    OnFormatCell = EmployeeListFormatCell
    Left = 48
    Top = 224
  end
  object Employee: TTable
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    TableName = 'employee.db'
    Left = 128
    Top = 224
  end
  object BioLifeProducer: TDataSetPageProducer
    HTMLDoc.Strings = (
      '<HTML>'
      '<HEAD>'
      '   <TITLE>Biolife Data</TITLE>'
      '</HEAD>'
      '<BODY>'
      '<TABLE BORDER=0 >'
      '<TR>'
      '<TD><B>Category:</B></TD>'
      ''
      '<TD><#Category></TD>'
      '</TR>'
      ''
      '<TR>'
      '<TD><B>Common Name:</B></TD>'
      ''
      '<TD><#Common_Name></TD>'
      '</TR>'
      ''
      '<TR>'
      '<TD VALIGN=TOP><B>Notes:</B></TD>'
      ''
      '<TD><#Notes></TD>'
      '</TR>'
      ''
      '<TR>'
      '<TD VALIGN=TOP><B>Picture:</B></TD>'
      ''
      '<TD><#Graphic></TD>'
      '</TR>'
      '</TABLE>'
      ''
      '</BODY>'
      '</HTML>')
    DataSet = BioLife
    Left = 48
    Top = 288
  end
  object Session1: TSession
    AutoSessionName = True
    Left = 280
    Top = 176
  end
end
