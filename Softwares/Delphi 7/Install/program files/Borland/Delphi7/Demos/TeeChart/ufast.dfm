object FastLineForm: TFastLineForm
  Left = 170
  Top = 60
  Width = 575
  Height = 415
  Caption = 'TeeChart Fast LineSeries Example'
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
    Width = 414
    Height = 388
    AnimatedZoom = True
    AnimatedZoomSteps = 15
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Color = clBlue
    BackWall.Pen.Visible = False
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    Foot.Visible = False
    MarginBottom = 1
    MarginLeft = 1
    MarginRight = 1
    MarginTop = 1
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'TChart Component')
    Title.Visible = False
    AxisVisible = False
    BottomAxis.Grid.Color = 8421440
    BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
    BottomAxis.LabelsFont.Color = clFuchsia
    BottomAxis.LabelsFont.Height = -13
    BottomAxis.LabelsFont.Name = 'Arial'
    BottomAxis.LabelsFont.Style = []
    BottomAxis.Ticks.Color = clLime
    ClipPoints = False
    Frame.Color = clBlue
    Frame.Visible = False
    LeftAxis.Grid.Color = clBlue
    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
    LeftAxis.LabelsFont.Color = clNavy
    LeftAxis.LabelsFont.Height = -13
    LeftAxis.LabelsFont.Name = 'Arial'
    LeftAxis.LabelsFont.Style = []
    LeftAxis.Ticks.Color = clRed
    Legend.Visible = False
    RightAxis.Grid.Visible = False
    RightAxis.LabelsFont.Charset = DEFAULT_CHARSET
    RightAxis.LabelsFont.Color = clRed
    RightAxis.LabelsFont.Height = -13
    RightAxis.LabelsFont.Name = 'Arial'
    RightAxis.LabelsFont.Style = []
    RightAxis.Ticks.Color = clBlue
    TopAxis.Grid.Visible = False
    TopAxis.LabelsFont.Charset = DEFAULT_CHARSET
    TopAxis.LabelsFont.Color = clGreen
    TopAxis.LabelsFont.Height = -13
    TopAxis.LabelsFont.Name = 'Arial'
    TopAxis.LabelsFont.Style = []
    TopAxis.Ticks.Color = clYellow
    View3D = False
    Align = alClient
    BevelOuter = bvNone
    BevelWidth = 6
    Color = clSilver
    TabOrder = 0
    object FastLineSeries1: TFastLineSeries
      HorizAxis = aTopAxis
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      VertAxis = aRightAxis
      LinePen.Color = clRed
      LinePen.Style = psDot
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 199
      Top = 204
    end
    object FastLineSeries2: TFastLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      LinePen.Color = clGreen
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 237
      Top = 206
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 388
    Align = alLeft
    TabOrder = 1
    object Button1: TButton
      Left = 13
      Top = 8
      Width = 128
      Height = 33
      Caption = '&Speed Test !'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 26
      Top = 52
      Width = 97
      Height = 17
      Caption = 'Buffered Display'
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 26
      Top = 76
      Width = 79
      Height = 17
      Caption = 'Draw &Axis'
      TabOrder = 2
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 26
      Top = 100
      Width = 75
      Height = 17
      Caption = '&Clip Points'
      TabOrder = 3
      OnClick = CheckBox3Click
    end
    object BitBtn3: TBitBtn
      Left = 28
      Top = 340
      Width = 89
      Height = 33
      TabOrder = 4
      Kind = bkClose
    end
    object Memo1: TMemo
      Left = 12
      Top = 144
      Width = 121
      Height = 181
      Lines.Strings = (
        'Use this demo to'
        'benchmark your'
        'video and system '
        'speed.'
        ''
        'Buffered display '
        'avoids flickering and '
        'can improve '
        'performance on modern '
        'hardware.'
        ''
        'FastLine Series are'
        'faster than regular'
        'Line Series.')
      TabOrder = 5
    end
  end
end
