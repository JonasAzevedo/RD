object AxisLabelsForm: TAxisLabelsForm
  Left = 174
  Top = 144
  Width = 501
  Height = 355
  Caption = 'TeeChart Sample Project.  Custom Axis Labeling'
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
    Width = 340
    Height = 328
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Frame.Color = clScrollBar
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'TChart Component')
    BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
    BottomAxis.LabelsFont.Color = clMaroon
    BottomAxis.LabelsFont.Height = -21
    BottomAxis.LabelsFont.Name = 'Arial'
    BottomAxis.LabelsFont.Style = [fsBold, fsItalic]
    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
    LeftAxis.LabelsFont.Color = clNavy
    LeftAxis.LabelsFont.Height = -24
    LeftAxis.LabelsFont.Name = 'Arial'
    LeftAxis.LabelsFont.Style = [fsBold, fsItalic]
    Legend.Alignment = laTop
    OnGetNextAxisLabel = Chart1GetNextAxisLabel
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
      Left = 199
      Top = 122
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
      Left = 283
      Top = 132
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 328
    Align = alLeft
    TabOrder = 1
    object RadioGroup1: TRadioGroup
      Left = 17
      Top = 16
      Width = 120
      Height = 57
      Caption = 'Choose Axis Labels:'
      ItemIndex = 1
      Items.Strings = (
        'Default'
        'User defined')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object BitBtn3: TBitBtn
      Left = 32
      Top = 328
      Width = 89
      Height = 33
      TabOrder = 1
      Kind = bkClose
    end
    object Memo1: TMemo
      Left = 16
      Top = 96
      Width = 121
      Height = 193
      Lines.Strings = (
        'This example shows '
        'how Axis labels can be '
        'customized, '
        'both their position and '
        'text using '
        'OnGetAxisLabel and'
        'OnGetNextAxisLabel '
        'events.'
        ''
        'In this example Bottom '
        'axis labels are set to the '
        'starting day of each'
        'month.')
      TabOrder = 2
    end
  end
end
