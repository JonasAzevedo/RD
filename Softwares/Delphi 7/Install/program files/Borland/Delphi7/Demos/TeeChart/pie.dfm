object PieForm: TPieForm
  Left = 23
  Top = 9
  Width = 642
  Height = 421
  Caption = 'TeeChart Pie Series Demo'
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
    Width = 497
    Height = 394
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Foot.Alignment = taLeftJustify
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    Foot.Text.Strings = (
      '')
    Gradient.Direction = gdBottomTop
    Gradient.EndColor = 8454016
    Gradient.StartColor = 8454143
    Gradient.Visible = True
    Title.AdjustFrame = False
    Title.Alignment = taRightJustify
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'Pie Chart Series Demo.')
    AxisVisible = False
    BottomAxis.Grid.Color = clScrollBar
    BottomAxis.LabelsAngle = 90
    BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
    BottomAxis.LabelsFont.Color = clTeal
    BottomAxis.LabelsFont.Height = -12
    BottomAxis.LabelsFont.Name = 'Arial'
    BottomAxis.LabelsFont.Style = []
    BottomAxis.Title.Caption = 'Stock Market Date'
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clGreen
    BottomAxis.Title.Font.Height = -16
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsItalic]
    ClipPoints = False
    Frame.Visible = False
    LeftAxis.Grid.Color = clScrollBar
    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
    LeftAxis.LabelsFont.Color = clWhite
    LeftAxis.LabelsFont.Height = -13
    LeftAxis.LabelsFont.Name = 'Arial'
    LeftAxis.LabelsFont.Style = []
    LeftAxis.Title.Caption = 'Stock Price'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clNavy
    LeftAxis.Title.Font.Height = -15
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    RightAxis.Grid.Color = clScrollBar
    TopAxis.Grid.Color = clScrollBar
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Align = alClient
    Color = clSilver
    TabOrder = 0
    OnMouseMove = Chart1MouseMove
    object PieSeries1: TPieSeries
      Cursor = 2020
      Marks.ArrowLength = 8
      Marks.Style = smsLabelPercent
      Marks.Visible = True
      SeriesColor = clRed
      OnClick = PieSeries1Click
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Y'
      PieValues.Multiplier = 1
      PieValues.Order = loNone
      Left = 78
      Top = 94
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 137
    Height = 394
    Align = alLeft
    TabOrder = 1
    object Shape1: TShape
      Left = 14
      Top = 40
      Width = 107
      Height = 33
      HelpType = htKeyword
    end
    object CheckBox1: TCheckBox
      Left = 15
      Top = 6
      Width = 105
      Height = 29
      Caption = '&Animate !!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object BitBtn3: TBitBtn
      Left = 20
      Top = 352
      Width = 89
      Height = 29
      TabOrder = 3
      Kind = bkClose
    end
    object RadioGroup1: TRadioGroup
      Left = 12
      Top = 244
      Width = 109
      Height = 101
      Caption = 'Legend Position:'
      ItemIndex = 1
      Items.Strings = (
        'Left'
        'Right'
        'Top'
        'Bottom')
      TabOrder = 5
      OnClick = RadioGroup1Click
    end
    object RadioGroup2: TRadioGroup
      Left = 12
      Top = 80
      Width = 109
      Height = 156
      Caption = 'Efects:'
      TabOrder = 8
    end
    object CheckBox2: TCheckBox
      Left = 20
      Top = 104
      Width = 41
      Height = 17
      Caption = '&3D'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 20
      Top = 130
      Width = 61
      Height = 17
      Caption = '&Circled'
      TabOrder = 2
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 20
      Top = 156
      Width = 97
      Height = 17
      Caption = 'Use &Patterns'
      TabOrder = 4
      OnClick = CheckBox4Click
    end
    object CheckBox5: TCheckBox
      Left = 20
      Top = 182
      Width = 61
      Height = 17
      Caption = '&Marks'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = CheckBox5Click
    end
    object CheckBox6: TCheckBox
      Left = 20
      Top = 208
      Width = 65
      Height = 17
      Caption = '&Gradient'
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = CheckBox6Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 114
    Top = 294
  end
end
