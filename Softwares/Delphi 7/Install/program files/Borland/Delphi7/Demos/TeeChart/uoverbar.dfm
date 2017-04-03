object OverBarForm: TOverBarForm
  Left = 78
  Top = 93
  Width = 598
  Height = 397
  Caption = 'TeeChart Overlayed Bars Example'
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
    Left = 149
    Top = 0
    Width = 441
    Height = 370
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    MarginTop = 2
    Title.Brush.Color = 8421440
    Title.Color = 8421440
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clAqua
    Title.Font.Height = -19
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = clBlue
    Title.Frame.Width = 4
    Title.Text.Strings = (
      'Overlayed Bar Series Example')
    BottomAxis.Grid.Color = clScrollBar
    LeftAxis.Grid.Color = clScrollBar
    Legend.Alignment = laLeft
    RightAxis.Grid.Color = clScrollBar
    TopAxis.Grid.Color = clScrollBar
    View3D = False
    Align = alClient
    TabOrder = 0
    object BarSeries3: TBarSeries
      Cursor = crUpArrow
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clBlue
      OnClick = BarSeries3Click
      BarWidthPercent = 80
      MultiBar = mbNone
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 24
      Top = 36
    end
    object BarSeries2: TBarSeries
      Cursor = crUpArrow
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clRed
      OnClick = BarSeries2Click
      BarWidthPercent = 60
      MultiBar = mbNone
      XValues.DateTime = False
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
    object BarSeries1: TBarSeries
      Cursor = crUpArrow
      Marks.ArrowLength = 20
      Marks.Visible = False
      SeriesColor = clLime
      OnClick = BarSeries1Click
      BarWidthPercent = 40
      MultiBar = mbNone
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 127
      Top = 46
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 149
    Height = 370
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 22
      Width = 50
      Height = 13
      HelpType = htKeyword
      Caption = 'Overlay %:'
    end
    object Label2: TLabel
      Left = 23
      Top = 46
      Width = 42
      Height = 13
      HelpType = htKeyword
      Caption = 'Offset %:'
    end
    object Memo1: TMemo
      Left = 16
      Top = 136
      Width = 121
      Height = 161
      Lines.Strings = (
        'This demo uses the'
        'OffsetPercent and'
        'BarWidthPercent'
        'properties of '
        'TBarSeries to create'
        'overlayed bars.'
        ''
        'Bars can be displayed'
        'using pattern brushes.'
        '')
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 28
      Top = 316
      Width = 89
      Height = 33
      Caption = 'Close'
      TabOrder = 1
      Kind = bkClose
    end
    object SpinEdit1: TSpinEdit
      Left = 75
      Top = 18
      Width = 50
      Height = 22
      Increment = 5
      MaxValue = 100
      MinValue = 1
      TabOrder = 2
      Value = 60
      OnChange = SpinEdit1Change
    end
    object SpinEdit2: TSpinEdit
      Left = 75
      Top = 46
      Width = 50
      Height = 22
      Increment = 5
      MaxValue = 100
      MinValue = -100
      TabOrder = 3
      Value = 0
      OnChange = SpinEdit2Change
    end
    object CBPatterns: TCheckBox
      Left = 19
      Top = 82
      Width = 90
      Height = 17
      Caption = 'Use Patterns'
      TabOrder = 4
      OnClick = CBPatternsClick
    end
  end
end
