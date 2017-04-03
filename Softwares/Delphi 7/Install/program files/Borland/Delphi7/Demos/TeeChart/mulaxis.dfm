object CustomAxisForm: TCustomAxisForm
  Left = 262
  Top = 134
  Width = 603
  Height = 402
  Caption = 'TeeChart Custom Axis Drawing Example'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 137
    Top = 0
    Width = 458
    Height = 375
    AnimatedZoom = True
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    Gradient.Visible = True
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'TChart Component')
    Title.Visible = False
    BottomAxis.Grid.Color = clScrollBar
    BottomAxis.Grid.Visible = False
    LeftAxis.Grid.Color = clScrollBar
    LeftAxis.Grid.Visible = False
    Legend.Alignment = laLeft
    RightAxis.Grid.Color = clScrollBar
    RightAxis.Grid.Visible = False
    TopAxis.Grid.Color = clScrollBar
    TopAxis.Grid.Visible = False
    View3D = False
    View3DWalls = False
    Align = alClient
    TabOrder = 0
    object LineSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      AfterDrawValues = LineSeries1AfterDrawValues
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
      Left = 101
      Top = 63
    end
    object PointSeries1: TPointSeries
      ColorEachPoint = True
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.InflateMargins = True
      Pointer.Style = psDiamond
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 147
      Top = 61
    end
    object FastLineSeries1: TFastLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      LinePen.Color = clBlue
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 187
      Top = 64
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 137
    Height = 375
    Align = alLeft
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 9
      Top = 12
      Width = 97
      Height = 17
      Caption = '&Animate !!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object BitBtn1: TBitBtn
      Left = 25
      Top = 324
      Width = 80
      Height = 33
      TabOrder = 1
      Kind = bkClose
    end
    object CheckBox2: TCheckBox
      Left = 9
      Top = 92
      Width = 97
      Height = 17
      Caption = 'Invert Axis '
      TabOrder = 2
      OnClick = CheckBox2Click
    end
    object DrawGrid: TCheckBox
      Left = 9
      Top = 60
      Width = 80
      Height = 17
      Caption = 'Draw Grid'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = DrawGridClick
    end
    object Memo1: TMemo
      Left = 8
      Top = 136
      Width = 121
      Height = 153
      Lines.Strings = (
        'This example shows '
        'how to draw custom '
        'Axis at specific '
        'positions.'
        ''
        'The Axis CustomDraw '
        'method is use to display '
        'custom Axis.')
      TabOrder = 4
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 31
    Top = 34
  end
end
