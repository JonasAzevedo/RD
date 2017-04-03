object LinkedTablesForm: TLinkedTablesForm
  Left = 156
  Top = 79
  Width = 604
  Height = 457
  Caption = 'TeeChart Linked Tables Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 241
    Width = 596
    Height = 164
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Color = clAqua
    BackWall.Pen.Style = psDashDot
    Foot.Alignment = taRightJustify
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clBlue
    Foot.Font.Height = -15
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsBold]
    Foot.Frame.Color = clScrollBar
    Foot.Visible = False
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clFuchsia
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'Linked Tables Chart Demo')
    BottomAxis.LabelsAngle = 90
    BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
    BottomAxis.LabelsFont.Color = clGreen
    BottomAxis.LabelsFont.Height = -13
    BottomAxis.LabelsFont.Name = 'Arial'
    BottomAxis.LabelsFont.Style = [fsBold]
    BottomAxis.LabelStyle = talText
    Chart3DPercent = 35
    Frame.Color = clAqua
    Frame.Style = psDashDot
    Legend.Color = clBlue
    Legend.ColorWidth = 13
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clYellow
    Legend.Font.Height = -16
    Legend.Font.Name = 'Arial'
    Legend.Font.Style = [fsBold, fsItalic]
    Legend.Frame.Color = clWhite
    Legend.Frame.Width = 4
    Legend.TextStyle = ltsRightValue
    Legend.TopPos = 5
    RightAxis.LabelsFont.Charset = DEFAULT_CHARSET
    RightAxis.LabelsFont.Color = clRed
    RightAxis.LabelsFont.Height = -15
    RightAxis.LabelsFont.Name = 'Arial'
    RightAxis.LabelsFont.Style = [fsItalic]
    RightAxis.TickLength = 12
    RightAxis.Ticks.Color = clWhite
    RightAxis.Ticks.Width = 2
    Align = alClient
    TabOrder = 0
    object AreaSeries1: TAreaSeries
      ColorEachPoint = True
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = Table2
      SeriesColor = clRed
      VertAxis = aRightAxis
      XLabelsSource = 'SaleDate'
      DrawArea = True
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      YValues.ValueSource = 'AmountPaid'
      Left = 40
      Top = 258
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 596
    Height = 81
    Align = alTop
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 405
    Width = 596
    Height = 25
    Align = alBottom
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 596
    Height = 48
    Align = alTop
    TabOrder = 3
    object DBNavigator1: TDBNavigator
      Left = 12
      Top = 11
      Width = 232
      Height = 26
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 286
      Top = 8
      Width = 95
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Kind = bkClose
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 129
    Width = 596
    Height = 112
    Align = alTop
    DataSource = DataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = Table1
    OnDataChange = DataSource1DataChange
    Left = 339
    Top = 204
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'CUSTOMER.DB'
    Left = 268
    Top = 203
    object Table1CustNo: TFloatField
      DisplayWidth = 12
      FieldName = 'CustNo'
    end
    object Table1Company: TStringField
      DisplayWidth = 29
      FieldName = 'Company'
      Size = 30
    end
    object Table1City: TStringField
      DisplayWidth = 18
      FieldName = 'City'
      Size = 15
    end
    object Table1State: TStringField
      DisplayWidth = 7
      FieldName = 'State'
    end
    object Table1Country: TStringField
      DisplayWidth = 14
      FieldName = 'Country'
    end
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    IndexFieldNames = 'CustNo'
    MasterFields = 'CustNo'
    MasterSource = DataSource1
    TableName = 'ORDERS.DB'
    Left = 268
    Top = 151
    object Table2OrderNo: TFloatField
      FieldName = 'OrderNo'
    end
    object Table2CustNo: TFloatField
      FieldName = 'CustNo'
      Required = True
      Visible = False
    end
    object Table2SaleDate: TDateTimeField
      FieldName = 'SaleDate'
    end
    object Table2AmountPaid: TCurrencyField
      FieldName = 'AmountPaid'
    end
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 336
    Top = 150
  end
end
