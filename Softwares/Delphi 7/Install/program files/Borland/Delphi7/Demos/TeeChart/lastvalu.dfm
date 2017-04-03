object DigitalForm: TDigitalForm
  Left = 90
  Top = 41
  Width = 638
  Height = 438
  Caption = 'TeeChart Digital Series Example'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 161
    Top = 0
    Width = 469
    Height = 411
    AnimatedZoom = True
    AnimatedZoomSteps = 16
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = 8454016
    BackWall.Pen.Color = clNavy
    BackWall.Pen.Width = 2
    BottomWall.Size = 6
    Foot.Frame.Color = clScrollBar
    LeftWall.Size = 4
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'We'#39're testing that new Pentium...'
      'It seems has good health !!!')
    BackColor = 8454016
    BottomAxis.Grid.Color = 8388863
    Frame.Color = clNavy
    Frame.Width = 2
    LeftAxis.Grid.Color = clSilver
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clBlack
    Legend.Font.Height = -19
    Legend.Font.Name = 'Arial'
    Legend.Font.Style = [fsBold, fsItalic]
    Legend.LegendStyle = lsLastValues
    OnGetLegendText = Chart1GetLegendText
    Align = alClient
    TabOrder = 0
    object LineSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Title = 'Pipeline Signal'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      Stairs = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 175
      Top = 130
    end
    object LineSeries2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clYellow
      Title = 'RAM Cycles'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      Stairs = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 105
      Top = 132
    end
    object LineSeries3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'PCI Status'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      Stairs = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 107
      Top = 86
    end
    object LineSeries4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'I/O Timing'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      Stairs = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 173
      Top = 88
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 161
    Height = 411
    Align = alLeft
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 20
      Top = 13
      Width = 119
      Height = 18
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
    object CheckBox2: TCheckBox
      Left = 20
      Top = 69
      Width = 78
      Height = 18
      Caption = 'View 3D'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 20
      Top = 45
      Width = 126
      Height = 18
      Caption = 'Last Values in Legend'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox3Click
    end
    object BitBtn3: TBitBtn
      Left = 32
      Top = 351
      Width = 89
      Height = 33
      TabOrder = 3
      Kind = bkClose
    end
    object CheckBox4: TCheckBox
      Left = 20
      Top = 93
      Width = 78
      Height = 18
      Caption = 'Z Order'
      TabOrder = 4
      OnClick = CheckBox4Click
    end
    object Memo1: TMemo
      Left = 20
      Top = 136
      Width = 121
      Height = 169
      Lines.Strings = (
        'Line Series can be used '
        'as "step" Series by '
        'setting '
        'the Stairs property.'
        ''
        'In this demo several '
        'Line Series are '
        'displayed '
        'on same Z order.')
      TabOrder = 5
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 170
    Top = 10
  end
end
