object ArrowsForm: TArrowsForm
  Left = 107
  Top = 110
  Width = 600
  Height = 389
  Caption = 'TeeChart Arrow Series Example'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 362
    Align = alLeft
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 20
      Top = 13
      Width = 125
      Height = 17
      Caption = 'Animate !!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object BitBtn3: TBitBtn
      Left = 32
      Top = 309
      Width = 89
      Height = 33
      TabOrder = 1
      Kind = bkClose
    end
    object Memo1: TMemo
      Left = 16
      Top = 48
      Width = 121
      Height = 137
      Lines.Strings = (
        'Each Arrow is '
        'represented as a Series '
        'point with Starting and '
        'Ending coordinates.'
        ''
        'This demo changes '
        'arrow positions randomly '
        'using a'
        'TTimer component.')
      TabOrder = 2
    end
  end
  object Chart1: TChart
    Left = 153
    Top = 0
    Width = 439
    Height = 362
    AnimatedZoom = True
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = 8454143
    BottomWall.Color = 8454016
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    LeftWall.Color = 16777088
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      '')
    Title.Visible = False
    BackColor = 8454143
    Chart3DPercent = 50
    Legend.Visible = False
    RightAxis.Grid.Visible = False
    RightAxis.MinorTickLength = 3
    RightAxis.TickLength = 5
    Align = alClient
    TabOrder = 1
    object ArrowSeries1: TArrowSeries
      ColorEachPoint = True
      HorizAxis = aTopAxis
      Marks.ArrowLength = 8
      Marks.Frame.Visible = False
      Marks.Transparent = True
      Marks.Visible = False
      SeriesColor = clRed
      VertAxis = aRightAxis
      Pointer.HorizSize = 32
      Pointer.InflateMargins = False
      Pointer.Style = psRectangle
      Pointer.VertSize = 24
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      EndXValues.DateTime = False
      EndXValues.Name = 'EndX'
      EndXValues.Multiplier = 1
      EndXValues.Order = loNone
      EndYValues.DateTime = False
      EndYValues.Name = 'EndY'
      EndYValues.Multiplier = 1
      EndYValues.Order = loNone
      StartXValues.DateTime = True
      StartXValues.Name = 'X'
      StartXValues.Multiplier = 1
      StartXValues.Order = loAscending
      StartYValues.DateTime = False
      StartYValues.Name = 'Y'
      StartYValues.Multiplier = 1
      StartYValues.Order = loNone
      Left = 104
      Top = 195
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 62
    Top = 195
  end
end
