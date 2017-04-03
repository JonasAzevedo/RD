object ShapesForm: TShapesForm
  Left = 125
  Top = 49
  Width = 575
  Height = 404
  Caption = 'TeeChart.  TChartShape Component Example'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 153
    Top = 57
    Width = 414
    Height = 320
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Frame.Color = clScrollBar
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'TChart Component')
    BottomAxis.Grid.Color = clScrollBar
    LeftAxis.Grid.Color = clScrollBar
    Legend.Alignment = laTop
    Legend.Visible = False
    RightAxis.Grid.Color = clScrollBar
    TopAxis.Grid.Color = clScrollBar
    Align = alClient
    TabOrder = 0
    object LineSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 391
      Top = 130
    end
    object ChartShape3: TChartShape
      Cursor = crCross
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clWhite
      OnClick = ChartShape3Click
      Brush.Color = clWhite
      Brush.Style = bsDiagCross
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Style = chasRectangle
      X0 = 729090
      X1 = 729108
      Y0 = 549.5
      Y1 = 1742
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 161
      Top = 206
    end
    object LineSeries2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clYellow
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 345
      Top = 130
    end
    object ChartShape2: TChartShape
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clWhite
      Brush.Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Pen.Color = clLime
      Style = chasLine
      X0 = 729090
      X1 = 729108
      Y0 = 692.75
      Y1 = 2915.5
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 161
      Top = 158
    end
    object ChartShape1: TChartShape
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clWhite
      Brush.Color = 8454016
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      Text.Strings = (
        'Hello'
        'Tee'
        'World !')
      Pen.Color = clNavy
      Pen.Width = 2
      X0 = 729090
      X1 = 729108
      Y0 = 737.25
      Y1 = 3803.5
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 157
      Top = 108
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 567
    Height = 57
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 19
      Top = 4
      Width = 402
      Height = 19
      HelpType = htKeyword
      Caption = 'The Line and Ellipse are TChartShape components.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 19
      Top = 28
      Width = 426
      Height = 19
      HelpType = htKeyword
      Caption = 'Zoom or Scroll to see how shapes follow Chart Series.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 153
    Height = 320
    Align = alLeft
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 26
      Top = 256
      Width = 89
      Height = 33
      Caption = 'Close'
      TabOrder = 0
      Kind = bkClose
    end
    object Memo1: TMemo
      Left = 16
      Top = 44
      Width = 121
      Height = 161
      Lines.Strings = (
        'Shapes are simple '
        'Series components '
        'with special formatting '
        'attributes.'
        ''
        'Zoom and scrolling'
        'is also possible with'
        'Shapes.')
      TabOrder = 1
    end
  end
end
