object TablePieForm: TTablePieForm
  Left = 60
  Top = 50
  Width = 629
  Height = 440
  Caption = 'TeeChart Table-Pie Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -9
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 621
    Height = 262
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -15
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsBold]
    Foot.Frame.Color = clScrollBar
    Foot.Text.Strings = (
      'XLabelSource:=Table1Name'
      'PieValueSource:=Table1Size')
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'Pie Chart built from Table :DBDEMOS:ANIMALS.DBF')
    AxisVisible = False
    BottomAxis.Grid.Color = clScrollBar
    ClipPoints = False
    Frame.Visible = False
    LeftAxis.Grid.Color = clScrollBar
    Legend.Alignment = laLeft
    Legend.Color = clAqua
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clBlack
    Legend.Font.Height = -16
    Legend.Font.Name = 'Arial'
    Legend.Font.Style = [fsBold, fsItalic]
    Legend.Frame.Color = clTeal
    Legend.Frame.Width = 4
    Legend.ShadowColor = clGray
    Legend.ShadowSize = 11
    Legend.TextStyle = ltsLeftPercent
    RightAxis.Grid.Color = clScrollBar
    TopAxis.Grid.Color = clScrollBar
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Align = alClient
    TabOrder = 0
    object PieSeries1: TPieSeries
      Cursor = crDrag
      Marks.Arrow.Color = clYellow
      Marks.Arrow.Width = 2
      Marks.ArrowLength = 11
      Marks.BackColor = clWhite
      Marks.Font.Charset = DEFAULT_CHARSET
      Marks.Font.Color = clRed
      Marks.Font.Height = -13
      Marks.Font.Name = 'Arial'
      Marks.Font.Style = [fsItalic]
      Marks.Frame.Color = clNavy
      Marks.Frame.Width = 3
      Marks.Style = smsLabelValue
      Marks.Visible = True
      DataSource = Table1
      SeriesColor = clRed
      XLabelsSource = 'NAME'
      OnClick = PieSeries1Click
      Circled = True
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Y'
      PieValues.Multiplier = 1
      PieValues.Order = loNone
      PieValues.ValueSource = 'SIZE'
      Left = 187
      Top = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 262
    Width = 621
    Height = 117
    Align = alBottom
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 349
      Top = 1
      Width = 271
      Height = 115
      Align = alRight
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -9
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 8
      Width = 101
      Height = 14
      Caption = 'ACTIVE Table'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 10
      Top = 32
      Width = 131
      Height = 32
      Caption = 'Use Field:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Size'
        'Weight')
      TabOrder = 2
      OnClick = RadioGroup1Click
    end
    object BitBtn1: TBitBtn
      Left = 27
      Top = 79
      Width = 90
      Height = 27
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Kind = bkClose
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 379
    Width = 621
    Height = 34
    Align = alBottom
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 2
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'ANIMALS.DBF'
    Left = 29
    Top = 344
    object Table1NAME: TStringField
      FieldName = 'NAME'
      Size = 10
    end
    object Table1SIZE: TSmallintField
      FieldName = 'SIZE'
    end
    object Table1WEIGHT: TSmallintField
      FieldName = 'WEIGHT'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 111
    Top = 344
  end
end
