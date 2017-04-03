object ManyGrpForm: TManyGrpForm
  Left = 309
  Top = 142
  Width = 770
  Height = 657
  Caption = 'ManyGrpForm'
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  PixelsPerInch = 96
  Scaled = False
  TextHeight = 16
  object QuickRep: TQuickRep
    Left = 12
    Top = 14
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = RepQuery
    Description.Strings = (
      
        'This report shows how to create a master/detail report from a TQ' +
        'uery component and use multiple TQRGroups in the same report')
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      100
      2794
      100
      2159
      100
      100
      0)
    PrintIfEmpty = False
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.OutputBin = First
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 38
      Top = 97
      Width = 740
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.9166666666667
        1957.91666666667)
      BandType = rbDetail
      object QRDBText3: TQRDBText
        Left = 38
        Top = 0
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          100.541666666667
          0
          108.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = RepQuery
        DataField = 'PartNo'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 86
        Top = 0
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          227.541666666667
          0
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = RepQuery
        DataField = 'Description'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 358
        Top = 2
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          947.208333333333
          5.29166666666667
          185.208333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = RepQuery
        DataField = 'ListPrice'
        Mask = '#0.00'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 38
      Width = 740
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clSilver
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.5625
        1957.91666666667)
      Expression = 'Company'
      FooterBand = QRBand1
      Master = QuickRep
      object QRDBText1: TQRDBText
        Left = 4
        Top = 4
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          10.5833333333333
          10.5833333333333
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = RepQuery
        DataField = 'Company'
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 59
      Width = 740
      Height = 38
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        100.541666666667
        1957.91666666667)
      Expression = 'orderno'
      FooterBand = QRBand2
      Master = QuickRep
      object QRExpr2: TQRExpr
        Left = 28
        Top = 2
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          74.0833333333333
          5.29166666666667
          362.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = #39'Orderno : '#39'+str(orderno)'
        FontSize = 10
      end
      object QRExpr3: TQRExpr
        Left = 200
        Top = 2
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          529.166666666667
          5.29166666666667
          277.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = #39'Date : '#39'+SaleDate'
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 382
        Top = 22
        Width = 45
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1010.70833333333
          58.2083333333333
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'List price'
        Color = clWhite
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 46
        Top = 20
        Width = 32
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          121.708333333333
          52.9166666666667
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Partno'
        Color = clWhite
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 86
        Top = 20
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          227.541666666667
          52.9166666666667
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Description'
        Color = clWhite
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 137
      Width = 740
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clSilver
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.5
        1957.91666666667)
      BandType = rbGroupFooter
      object QRExpr4: TQRExpr
        Left = 358
        Top = 2
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          947.208333333333
          5.29166666666667
          187.854166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Master = QuickRep
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'sum(listprice)'
        Mask = '#0.00'
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 238
        Top = 2
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          629.708333333333
          5.29166666666667
          296.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total this customer'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 117
      Width = 740
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = 14671839
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.9166666666667
        1957.91666666667)
      BandType = rbGroupFooter
      object QRExpr1: TQRExpr
        Left = 358
        Top = 0
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          947.208333333333
          0
          185.208333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Master = QuickRep
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'sum(listprice)'
        Mask = '#0.00'
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 262
        Top = 2
        Width = 87
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          693.208333333333
          5.29166666666667
          230.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total this order'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object ChildBand1: TQRChildBand
      Left = 38
      Top = 161
      Width = 740
      Height = 10
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
        26.4583333333333
        1957.91666666667)
      ParentBand = QRBand1
    end
  end
  object RepQuery: TQuery
    Active = True
    DatabaseName = 'DBDEMOS'
    SQL.Strings = (
      'select * from customer a, orders b, items c, parts d'
      'where a.custno = b.custno'
      '  and b.orderno = c.orderno'
      '  and c.partno = d.partno'
      'order by a.company, orderno')
    Left = 18
    Top = 10
    object RepQueryCustNo: TFloatField
      FieldName = 'CustNo'
    end
    object RepQueryCompany: TStringField
      FieldName = 'Company'
      Size = 30
    end
    object RepQueryAddr1: TStringField
      FieldName = 'Addr1'
      Size = 30
    end
    object RepQueryAddr2: TStringField
      FieldName = 'Addr2'
      Size = 30
    end
    object RepQueryCity: TStringField
      FieldName = 'City'
      Size = 15
    end
    object RepQueryState: TStringField
      FieldName = 'State'
    end
    object RepQueryZip: TStringField
      FieldName = 'Zip'
      Size = 10
    end
    object RepQueryCountry: TStringField
      FieldName = 'Country'
    end
    object RepQueryPhone: TStringField
      FieldName = 'Phone'
      Size = 15
    end
    object RepQueryFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object RepQueryTaxRate: TFloatField
      FieldName = 'TaxRate'
    end
    object RepQueryContact: TStringField
      FieldName = 'Contact'
    end
    object RepQueryLastInvoiceDate: TDateTimeField
      FieldName = 'LastInvoiceDate'
    end
    object RepQueryOrderNo: TFloatField
      FieldName = 'OrderNo'
    end
    object RepQueryCustNo_1: TFloatField
      FieldName = 'CustNo_1'
    end
    object RepQuerySaleDate: TDateTimeField
      FieldName = 'SaleDate'
    end
    object RepQueryShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object RepQueryEmpNo: TIntegerField
      FieldName = 'EmpNo'
    end
    object RepQueryShipToContact: TStringField
      FieldName = 'ShipToContact'
    end
    object RepQueryShipToAddr1: TStringField
      FieldName = 'ShipToAddr1'
      Size = 30
    end
    object RepQueryShipToAddr2: TStringField
      FieldName = 'ShipToAddr2'
      Size = 30
    end
    object RepQueryShipToCity: TStringField
      FieldName = 'ShipToCity'
      Size = 15
    end
    object RepQueryShipToState: TStringField
      FieldName = 'ShipToState'
    end
    object RepQueryShipToZip: TStringField
      FieldName = 'ShipToZip'
      Size = 10
    end
    object RepQueryShipToCountry: TStringField
      FieldName = 'ShipToCountry'
    end
    object RepQueryShipToPhone: TStringField
      FieldName = 'ShipToPhone'
      Size = 15
    end
    object RepQueryShipVIA: TStringField
      FieldName = 'ShipVIA'
      Size = 7
    end
    object RepQueryPO: TStringField
      FieldName = 'PO'
      Size = 15
    end
    object RepQueryTerms: TStringField
      FieldName = 'Terms'
      Size = 6
    end
    object RepQueryPaymentMethod: TStringField
      FieldName = 'PaymentMethod'
      Size = 7
    end
    object RepQueryItemsTotal: TCurrencyField
      FieldName = 'ItemsTotal'
      Currency = True
    end
    object RepQueryTaxRate_1: TFloatField
      FieldName = 'TaxRate_1'
    end
    object RepQueryFreight: TCurrencyField
      FieldName = 'Freight'
      Currency = True
    end
    object RepQueryAmountPaid: TCurrencyField
      FieldName = 'AmountPaid'
      Currency = True
    end
    object RepQueryOrderNo_1: TFloatField
      FieldName = 'OrderNo_1'
    end
    object RepQueryItemNo: TFloatField
      FieldName = 'ItemNo'
    end
    object RepQueryPartNo: TFloatField
      FieldName = 'PartNo'
    end
    object RepQueryQty: TIntegerField
      FieldName = 'Qty'
    end
    object RepQueryDiscount: TFloatField
      FieldName = 'Discount'
    end
    object RepQueryPartNo_1: TFloatField
      FieldName = 'PartNo_1'
    end
    object RepQueryVendorNo: TFloatField
      FieldName = 'VendorNo'
    end
    object RepQueryDescription: TStringField
      FieldName = 'Description'
      Size = 30
    end
    object RepQueryOnHand: TFloatField
      FieldName = 'OnHand'
    end
    object RepQueryOnOrder: TFloatField
      FieldName = 'OnOrder'
    end
    object RepQueryCost: TCurrencyField
      FieldName = 'Cost'
      Currency = True
    end
    object RepQueryListPrice: TCurrencyField
      FieldName = 'ListPrice'
      Currency = True
    end
  end
end
