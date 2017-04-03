object DCDemoForm: TDCDemoForm
  Left = 190
  Top = 205
  Width = 590
  Height = 331
  Caption = 'Decision Cube Example Form'
  ParentFont = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 49
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object DecisionPivot1: TDecisionPivot
      Left = -1
      Top = 2
      Width = 466
      Height = 47
      ButtonAutoSize = True
      DecisionSource = DecisionSource1
      GroupLayout = xtHorizontal
      Groups = [xtRows, xtColumns, xtSummaries]
      ButtonSpacing = 3
      ButtonWidth = 64
      ButtonHeight = 24
      GroupSpacing = 10
      BorderWidth = 3
      BorderStyle = bsNone
      TabOrder = 0
    end
  end
  object DecisionGrid1: TDecisionGrid
    Left = 0
    Top = 49
    Width = 582
    Height = 254
    DefaultColWidth = 90
    DefaultRowHeight = 20
    CaptionColor = clActiveCaption
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clCaptionText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Default'
    CaptionFont.Style = []
    DataColor = clInfoBk
    DataSumColor = clNone
    DataFont.Color = clWindowText
    DataFont.Style = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Default'
    LabelFont.Style = []
    LabelColor = clBtnFace
    LabelSumColor = clTeal
    DecisionSource = DecisionSource1
    Dimensions = <
      item
        FieldName = 'Payment'
        Color = clNone
        Alignment = taCenter
        Subtotals = True
      end
      item
        FieldName = 'ShipVIA'
        Color = clNone
        Alignment = taCenter
        Subtotals = True
      end
      item
        FieldName = 'Terms'
        Color = clNone
        Alignment = taCenter
        Subtotals = True
      end
      item
        FieldName = 'ShipDate'
        Color = clNone
        Alignment = taCenter
        Subtotals = True
      end
      item
        FieldName = 'COUNT OF AmountPaid'
        Color = clNone
        Alignment = taCenter
        Subtotals = True
      end
      item
        FieldName = 'SUM OF AmountPaid'
        Color = clNone
        Alignment = taCenter
        Subtotals = True
      end
      item
        FieldName = 'COUNT OF ItemsTotal'
        Color = clNone
        Alignment = taCenter
        Subtotals = True
      end
      item
        FieldName = 'Average of ORDERS.AmountPaid'
        Color = clNone
        Alignment = taCenter
        Subtotals = True
      end>
    Totals = True
    Align = alClient
    GridLineWidth = 1
    GridLineColor = clBlack
    TabOrder = 1
  end
  object DecisionCube1: TDecisionCube
    DataSet = DecisionQuery1
    DimensionMap = <
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PaymentMethod'
        BaseName = 'ORDERS.PaymentMethod'
        Name = 'Payment'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 8
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'ShipVIA'
        BaseName = 'ORDERS.ShipVIA'
        Name = 'ShipVIA'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 6
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'Terms'
        BaseName = 'ORDERS.Terms'
        Name = 'Terms'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 4
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftDateTime
        Fieldname = 'ShipDate'
        BaseName = 'ORDERS.ShipDate'
        Name = 'ShipDate'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binYear
        ValueCount = 7
        Active = True
        StartValue = 35431
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftInteger
        Fieldname = 'COUNT OF AmountPaid'
        BaseName = 'ORDERS.AmountPaid'
        Name = 'COUNT OF AmountPaid'
        DerivedFrom = -1
        DimensionType = dimCount
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftCurrency
        Fieldname = 'SUM OF AmountPaid'
        BaseName = 'ORDERS.AmountPaid'
        Name = 'SUM OF AmountPaid'
        DerivedFrom = -1
        DimensionType = dimSum
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftInteger
        Fieldname = 'COUNT OF ItemsTotal'
        BaseName = 'ORDERS.ItemsTotal'
        Name = 'COUNT OF ItemsTotal'
        DerivedFrom = -1
        DimensionType = dimCount
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diActive
        FieldType = ftUnknown
        Fieldname = 'Average of ORDERS.AmountPaid'
        BaseName = 'ORDERS.AmountPaid'
        Name = 'Average of ORDERS.AmountPaid'
        DerivedFrom = 5
        DimensionType = dimAverage
        BinType = binNone
        ValueCount = -1
        Active = True
      end>
    ShowProgressDialog = True
    MaxDimensions = 5
    MaxSummaries = 5
    MaxCells = 1000000
    Left = 507
    Top = 8
  end
  object DecisionQuery1: TDecisionQuery
    Active = True
    DatabaseName = 'DBDEMOS'
    SQL.Strings = (
      
        'SELECT ORDERS.PaymentMethod, "ORDERS.DB".ShipVIA, "ORDERS.DB".Te' +
        'rms, "ORDERS.DB".ShipDate, COUNT( "ORDERS.DB".AmountPaid ), SUM(' +
        ' "ORDERS.DB".AmountPaid ), COUNT( "ORDERS.DB".ItemsTotal )'
      'FROM "ORDERS.DB" ORDERS'
      
        'GROUP BY ORDERS.PaymentMethod, "ORDERS.DB".ShipVIA, "ORDERS.DB".' +
        'Terms, "ORDERS.DB".ShipDate')
    Left = 478
    Top = 8
  end
  object DecisionSource1: TDecisionSource
    DecisionCube = DecisionCube1
    ControlType = xtCheck
    SparseRows = False
    SparseCols = False
    Left = 535
    Top = 8
    DimensionCount = 4
    SummaryCount = 4
    CurrentSummary = 1
    SparseRows = False
    SparseCols = False
    DimensionInfo = (
      1
      0
      1
      0
      0
      2
      0
      1
      0
      0
      1
      -1
      2
      1
      0
      2
      -1
      3
      1
      6)
  end
end
