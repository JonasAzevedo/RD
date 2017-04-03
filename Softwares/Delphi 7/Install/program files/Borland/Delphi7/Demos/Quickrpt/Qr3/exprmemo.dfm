object frmExprmemo: TfrmExprmemo
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  Caption = 'frmExprmemo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 16
    Top = -16
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = tbCustomer
    Description.Strings = (
      
        'This report demonstrates how to use the TQRExprmemo control.  Th' +
        'e TQRExprmemo control is similiar to a TQRMemo but it will treat' +
        ' any text enclosed in brackets {} as TQRExpr expressions.  You c' +
        'an use dataset fields and functions.  When the control is printe' +
        'd, any line that is blank will stripped out.  This is very usefu' +
        'l for doing mailing lists on labels.'
      ''
      
        'The example control uses the fields from the customer table to m' +
        'ake a mailing label.'
      'The fourth line in the memo looks like this:'
      '{City}{IF(tbCustomer.State<>'#39#39','#39', '#39', '#39#39')}{State} {Zip}'
      ''
      
        'We print the city, then use a function that will print a comma w' +
        'hen the state field is not blank, and then end it with the state' +
        ' and zip fields')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 2
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      127
      2794
      127
      2159
      127
      127
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    ReportTitle = 'Exprmemo Example'
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 48
      Top = 48
      Width = 360
      Height = 96
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        254
        952.5)
      BandType = rbDetail
      object QRExprMemo1: TQRExprMemo
        Left = 8
        Top = 8
        Width = 345
        Height = 81
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          214.3125
          21.1666666666667
          21.1666666666667
          912.8125)
        RemoveBlankLines = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          '{Company}'
          '{Addr1}'
          '{Addr2}'
          '{City}{IF(tbCustomer.State<>'#39#39','#39', '#39', '#39#39')}{State} {Zip}'
          '{Country}')
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object tbCustomer: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    IndexFieldNames = 'CustNo'
    TableName = 'CUSTOMER.DB'
    Left = 8
    object tbCustomerCustNo: TFloatField
      Alignment = taLeftJustify
      FieldName = 'CustNo'
      DisplayFormat = 'CN 0000'
      MaxValue = 9999
      MinValue = 1000
    end
    object tbCustomerCompany: TStringField
      FieldName = 'Company'
      Size = 30
    end
    object tbCustomerAddr1: TStringField
      FieldName = 'Addr1'
      Size = 30
    end
    object tbCustomerAddr2: TStringField
      FieldName = 'Addr2'
      Size = 30
    end
    object tbCustomerCity: TStringField
      FieldName = 'City'
      Size = 15
    end
    object tbCustomerState: TStringField
      FieldName = 'State'
    end
    object tbCustomerZip: TStringField
      FieldName = 'Zip'
      Size = 10
    end
    object tbCustomerCountry: TStringField
      FieldName = 'Country'
    end
    object tbCustomerPhone: TStringField
      FieldName = 'Phone'
      Size = 15
    end
    object tbCustomerFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object tbCustomerTaxRate: TFloatField
      FieldName = 'TaxRate'
      DisplayFormat = '0.00%'
    end
    object tbCustomerContact: TStringField
      FieldName = 'Contact'
    end
    object tbCustomerLastInvoiceDate: TDateTimeField
      FieldName = 'LastInvoiceDate'
    end
  end
end
