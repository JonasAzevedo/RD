object StackedForm: TStackedForm
  Left = 33
  Top = 20
  Width = 652
  Height = 431
  Caption = 'Stacked Bars'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 0
    Top = 41
    Width = 510
    Height = 363
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = 8454016
    BottomWall.Color = 16512
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    Gradient.Direction = gdRightLeft
    Gradient.StartColor = 16744576
    LeftWall.Color = clBlue
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'TChart Component')
    BackColor = 8454016
    BottomAxis.DateTimeFormat = 'M/d/yy'
    BottomAxis.Title.Caption = 'Sales Date'
    Chart3DPercent = 60
    LeftAxis.MinorTickCount = 1
    LeftAxis.MinorTickLength = 5
    LeftAxis.MinorTicks.Color = clBlue
    LeftAxis.TickLength = 8
    LeftAxis.Ticks.Color = clYellow
    LeftAxis.Title.Caption = 'Quantity'
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clBlack
    Legend.Font.Height = -12
    Legend.Font.Name = 'Arial'
    Legend.Font.Style = []
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    BorderWidth = 14
    TabOrder = 0
    object BarSeries1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clRed
      MultiBar = mbNone
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 108
      Top = 4
    end
    object BarSeries2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clGreen
      MultiBar = mbNone
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 141
      Top = 4
    end
    object BarSeries3: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clAqua
      MultiBar = mbNone
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 172
      Top = 4
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 644
    Height = 41
    Align = alTop
    Caption = 'Bar &Position:'
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'Behind'
      'Side to Side'
      'Stacked'
      'Stacked 100%')
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object Panel1: TPanel
    Left = 510
    Top = 41
    Width = 134
    Height = 363
    Align = alRight
    TabOrder = 2
    object Label1: TLabel
      Left = 7
      Top = 5
      Width = 32
      Height = 13
      HelpType = htKeyword
      Caption = '&Series:'
      FocusControl = ComboBox1
    end
    object Shape1: TShape
      Left = 7
      Top = 52
      Width = 118
      Height = 29
      HelpType = htKeyword
      OnMouseUp = Shape1MouseUp
    end
    object Button1: TButton
      Left = 17
      Top = 86
      Width = 99
      Height = 29
      Caption = 'S&croll Series'
      TabOrder = 0
      OnClick = Button1Click
    end
    object RadioGroup2: TRadioGroup
      Left = 13
      Top = 150
      Width = 108
      Height = 139
      Caption = '&Bar Style:'
      ItemIndex = 0
      Items.Strings = (
        'Rectangle'
        'Pyramid'
        'InvPyramid'
        'Cilinder'
        'Ellipse'
        'Arrow'
        'Gradient')
      TabOrder = 1
      OnClick = RadioGroup2Click
    end
    object ComboBox1: TComboBox
      Left = 9
      Top = 23
      Width = 116
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = ComboBox1Change
    end
    object CheckBox1: TCheckBox
      Left = 9
      Top = 123
      Width = 120
      Height = 19
      Caption = '&Animate !!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = CheckBox1Click
    end
    object BitBtn3: TBitBtn
      Left = 25
      Top = 320
      Width = 89
      Height = 33
      TabOrder = 4
      Kind = bkClose
    end
    object CheckBox2: TCheckBox
      Left = 43
      Top = 296
      Width = 50
      Height = 17
      Caption = '3D'
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = CheckBox2Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 452
    Top = 18
  end
end
