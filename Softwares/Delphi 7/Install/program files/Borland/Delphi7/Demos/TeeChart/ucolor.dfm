object ColoredForm: TColoredForm
  Left = 83
  Top = 51
  Width = 574
  Height = 439
  Caption = 'TeeChart Custom Coloring Example'
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
    Width = 429
    Height = 412
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Title.Alignment = taRightJustify
    Title.Text.Strings = (
      'Each Point has it'#39's own Color')
    Chart3DPercent = 10
    LeftAxis.Inverted = True
    Legend.Alignment = laBottom
    Align = alClient
    TabOrder = 0
    object LineSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      Stairs = True
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
    object PointSeries1: TPointSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.InflateMargins = True
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
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 137
    Height = 412
    Align = alLeft
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 7
      Top = 20
      Width = 114
      Height = 17
      Caption = 'Left Axis Inverted'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object BitBtn2: TBitBtn
      Left = 19
      Top = 316
      Width = 89
      Height = 33
      TabOrder = 1
      Kind = bkClose
    end
    object Memo1: TMemo
      Left = 8
      Top = 72
      Width = 121
      Height = 161
      Lines.Strings = (
        'This demo shows how '
        'to set a different color '
        'for each point after'
        'points have been added '
        'to the Series.'
        ''
        'It shows too how to '
        'invert Axis using the axis'
        'Inverted property.')
      TabOrder = 2
    end
  end
end
