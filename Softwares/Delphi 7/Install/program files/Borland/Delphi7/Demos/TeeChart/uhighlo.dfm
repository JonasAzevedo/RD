object HighLowForm: THighLowForm
  Left = 193
  Top = 26
  Width = 616
  Height = 440
  Caption = 'TeeChart Statistics Demo'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 153
    Top = 0
    Width = 455
    Height = 413
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Width = 3
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    LeftWall.Color = clWhite
    Title.Alignment = taLeftJustify
    Title.Brush.Color = clBlack
    Title.Color = clBlack
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clYellow
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Frame.Color = clBlue
    Title.Frame.Width = 4
    Title.Frame.Visible = True
    Title.Text.Strings = (
      'Average,  High and Low.')
    BottomAxis.Axis.Color = clRed
    BottomAxis.DateTimeFormat = 'dd/MMM'
    BottomAxis.Grid.Color = clBlack
    BottomAxis.Grid.Style = psSolid
    BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
    BottomAxis.LabelsFont.Color = clPurple
    BottomAxis.LabelsFont.Height = -11
    BottomAxis.LabelsFont.Name = 'MS Sans Serif'
    BottomAxis.LabelsFont.Style = []
    BottomAxis.MinorTickCount = 0
    BottomAxis.TickLength = 9
    BottomAxis.Ticks.Color = clBlue
    Chart3DPercent = 45
    Frame.Width = 3
    LeftAxis.Axis.Color = clBlue
    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
    LeftAxis.LabelsFont.Color = clRed
    LeftAxis.LabelsFont.Height = -13
    LeftAxis.LabelsFont.Name = 'Arial'
    LeftAxis.LabelsFont.Style = [fsBold]
    Legend.ShadowColor = clGray
    Legend.ShadowSize = 4
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    RightAxis.Grid.Visible = False
    RightAxis.LabelsFont.Charset = DEFAULT_CHARSET
    RightAxis.LabelsFont.Color = clBlack
    RightAxis.LabelsFont.Height = -19
    RightAxis.LabelsFont.Name = 'Arial'
    RightAxis.LabelsFont.Style = [fsBold, fsItalic]
    OnAfterDraw = Chart1AfterDraw
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 25
    Color = 16777088
    TabOrder = 0
    object BarSeries1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      BarStyle = bsPyramid
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 47
      Top = 117
    end
    object AverageSeries: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = BarSeries1
      SeriesColor = clGreen
      Title = 'Average'
      LinePen.Width = 2
      Pointer.InflateMargins = False
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      YValues.ValueSource = 'Y'
      object AverageSeriesAverage: TAverageTeeFunction
      end
    end
    object HighSeries: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = BarSeries1
      SeriesColor = clFuchsia
      Title = 'High'
      LinePen.Width = 2
      Pointer.Brush.Color = 8388863
      Pointer.InflateMargins = False
      Pointer.Pen.Color = clBlue
      Pointer.Pen.Style = psDot
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      object HighSeriesHigh: THighTeeFunction
      end
    end
    object LowSeries: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = BarSeries1
      SeriesColor = clBlue
      Title = 'Low'
      LinePen.Width = 2
      Pointer.InflateMargins = False
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      object LowSeriesLow: TLowTeeFunction
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 413
    Align = alLeft
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 25
      Top = 300
      Width = 89
      Height = 33
      Caption = '&Print'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 26
      Top = 344
      Width = 89
      Height = 33
      TabOrder = 1
      Kind = bkClose
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 12
      Width = 139
      Height = 25
      Caption = '&Animate !!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object CB3D: TCheckBox
      Left = 12
      Top = 44
      Width = 49
      Height = 17
      Caption = '3D'
      TabOrder = 3
      OnClick = CB3DClick
    end
    object CheckBox2: TCheckBox
      Left = 12
      Top = 64
      Width = 101
      Height = 17
      Caption = 'Two Bar Series'
      TabOrder = 4
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 12
      Top = 84
      Width = 97
      Height = 17
      Caption = 'Bar Visible'
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = CheckBox3Click
    end
    object Memo1: TMemo
      Left = 12
      Top = 124
      Width = 121
      Height = 161
      Lines.Strings = (
        'Statistical functions'
        'can be applied to'
        'existing Series.'
        ''
        'This demo shows '
        'Average, High and Low'
        'functions on one or two'
        'normal Bar Series.')
      TabOrder = 6
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 224
    Top = 6
  end
end
