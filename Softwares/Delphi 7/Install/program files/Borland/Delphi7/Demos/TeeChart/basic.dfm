object BasicForm: TBasicForm
  Left = 119
  Top = 22
  Width = 790
  Height = 487
  Caption = 'TeeChart Basic Series Demo'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 128
    Top = 49
    Width = 329
    Height = 200
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BottomWall.Color = 16777088
    BottomWall.Size = 6
    Foot.Alignment = taLeftJustify
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    Foot.Text.Strings = (
      ''
      '')
    Foot.Visible = False
    LeftWall.Color = 16777088
    LeftWall.Size = 5
    MarginBottom = 7
    MarginLeft = 5
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clGreen
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'Line Series')
    BottomAxis.Axis.Width = 1
    BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
    BottomAxis.LabelsFont.Color = clBlue
    BottomAxis.LabelsFont.Height = -12
    BottomAxis.LabelsFont.Name = 'Arial'
    BottomAxis.LabelsFont.Style = []
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clGreen
    BottomAxis.Title.Font.Height = -16
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsItalic]
    Chart3DPercent = 30
    LeftAxis.Axis.Width = 1
    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
    LeftAxis.LabelsFont.Color = clPurple
    LeftAxis.LabelsFont.Height = -13
    LeftAxis.LabelsFont.Name = 'Arial'
    LeftAxis.LabelsFont.Style = []
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clNavy
    LeftAxis.Title.Font.Height = -15
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.Alignment = laBottom
    Legend.Color = clBlack
    Legend.ColorWidth = 16
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clWhite
    Legend.Font.Height = -12
    Legend.Font.Name = 'Arial'
    Legend.Font.Style = [fsItalic]
    Legend.ShadowColor = clGray
    RightAxis.Visible = False
    TopAxis.Visible = False
    BorderWidth = 1
    Color = 8454016
    TabOrder = 0
    object Winter: TLineSeries
      Marks.ArrowLength = 8
      Marks.Frame.Color = 8454143
      Marks.Visible = False
      SeriesColor = clRed
      LinePen.Color = clRed
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
    end
    object Summer: TLineSeries
      Marks.ArrowLength = 8
      Marks.Frame.Color = 8454143
      Marks.Visible = False
      SeriesColor = clBlue
      LinePen.Color = clBlue
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
    end
  end
  object Chart2: TChart
    Left = 128
    Top = 256
    Width = 329
    Height = 173
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Alignment = taLeftJustify
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clBlack
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    Foot.Text.Strings = (
      '')
    Foot.Visible = False
    Gradient.Direction = gdRightLeft
    Gradient.EndColor = clWhite
    Gradient.StartColor = clYellow
    LeftWall.Color = clWhite
    MarginLeft = 7
    MarginRight = 7
    MarginTop = 5
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'Bar Series')
    BottomAxis.Axis.Width = 1
    BottomAxis.DateTimeFormat = 'MM/yy'
    BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
    BottomAxis.LabelsFont.Color = clBlue
    BottomAxis.LabelsFont.Height = -11
    BottomAxis.LabelsFont.Name = 'Arial'
    BottomAxis.LabelsFont.Style = []
    BottomAxis.LabelsSeparation = 20
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clBlue
    BottomAxis.Title.Font.Height = -16
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsItalic]
    Chart3DPercent = 80
    LeftAxis.Axis.Width = 1
    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
    LeftAxis.LabelsFont.Color = clBlue
    LeftAxis.LabelsFont.Height = -13
    LeftAxis.LabelsFont.Name = 'Arial'
    LeftAxis.LabelsFont.Style = [fsBold]
    LeftAxis.Title.Caption = 'Sales'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clGray
    LeftAxis.Title.Font.Height = -15
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.Visible = False
    TopAxis.LabelsAngle = 90
    TopAxis.LabelsFont.Charset = DEFAULT_CHARSET
    TopAxis.LabelsFont.Color = clRed
    TopAxis.LabelsFont.Height = -11
    TopAxis.LabelsFont.Name = 'Arial'
    TopAxis.LabelsFont.Style = []
    TopAxis.LabelsSize = 30
    TabOrder = 3
    object BarSeries1: TBarSeries
      Marks.ArrowLength = 20
      Marks.BackColor = 16777088
      Marks.Font.Charset = DEFAULT_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -8
      Marks.Font.Name = 'MS Serif'
      Marks.Font.Style = []
      Marks.Style = smsPercent
      Marks.Visible = True
      SeriesColor = clRed
      BarPen.Visible = False
      MultiBar = mbNone
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 142
      Top = 274
    end
  end
  object Chart3: TChart
    Left = 464
    Top = 49
    Width = 309
    Height = 200
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = clSilver
    Foot.Alignment = taLeftJustify
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    Foot.Text.Strings = (
      '')
    Gradient.Direction = gdLeftRight
    Gradient.EndColor = clWhite
    Gradient.StartColor = clYellow
    LeftWall.Color = clSilver
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clRed
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'Area Series')
    BackColor = clSilver
    BottomAxis.DateTimeFormat = 'd/mm'
    BottomAxis.LabelsAngle = 90
    BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
    BottomAxis.LabelsFont.Color = clTeal
    BottomAxis.LabelsFont.Height = -12
    BottomAxis.LabelsFont.Name = 'Arial'
    BottomAxis.LabelsFont.Style = []
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clGreen
    BottomAxis.Title.Font.Height = -16
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsItalic]
    Chart3DPercent = 45
    LeftAxis.Title.Caption = 'Green Area'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clGreen
    LeftAxis.Title.Font.Height = -15
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold, fsItalic]
    Legend.Alignment = laTop
    Legend.Color = clGray
    Legend.ColorWidth = 35
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clWhite
    Legend.Font.Height = -12
    Legend.Font.Name = 'Arial'
    Legend.Font.Style = [fsItalic]
    Legend.Frame.Color = clBlue
    Legend.Frame.Width = 3
    Legend.Frame.Visible = False
    Legend.ShadowSize = 4
    Legend.TopPos = 34
    RightAxis.Grid.Visible = False
    RightAxis.LabelsFont.Charset = DEFAULT_CHARSET
    RightAxis.LabelsFont.Color = clBlue
    RightAxis.LabelsFont.Height = -13
    RightAxis.LabelsFont.Name = 'Arial'
    RightAxis.LabelsFont.Style = [fsItalic]
    RightAxis.Title.Caption = 'Red Area'
    RightAxis.Title.Font.Charset = DEFAULT_CHARSET
    RightAxis.Title.Font.Color = clRed
    RightAxis.Title.Font.Height = -15
    RightAxis.Title.Font.Name = 'Arial'
    RightAxis.Title.Font.Style = [fsBold, fsItalic]
    Color = clWhite
    TabOrder = 4
    object South: TAreaSeries
      Marks.ArrowLength = 8
      Marks.Frame.Color = 8454143
      Marks.Visible = False
      SeriesColor = clGreen
      DrawArea = True
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
      Left = 441
      Top = 206
    end
    object North: TAreaSeries
      Marks.ArrowLength = 8
      Marks.Frame.Color = 8454143
      Marks.Visible = False
      SeriesColor = clRed
      VertAxis = aRightAxis
      DrawArea = True
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
      Left = 441
      Top = 173
    end
  end
  object Chart4: TChart
    Left = 466
    Top = 256
    Width = 311
    Height = 173
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = 16777088
    BackWall.Pen.Color = clBlue
    BottomWall.Pen.Color = clBlue
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clYellow
    Foot.Font.Height = -11
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = []
    Foot.Frame.Color = clScrollBar
    Foot.Text.Strings = (
      'Last values')
    Gradient.Direction = gdBottomTop
    LeftWall.Color = clWhite
    LeftWall.Pen.Color = clBlue
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clPurple
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'Point Series')
    BackColor = 16777088
    BottomAxis.Axis.Color = clBlue
    BottomAxis.Axis.Width = 1
    BottomAxis.DateTimeFormat = 'd/MM/yy'
    BottomAxis.Grid.Color = clBlue
    BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
    BottomAxis.LabelsFont.Color = clGreen
    BottomAxis.LabelsFont.Height = -12
    BottomAxis.LabelsFont.Name = 'Arial'
    BottomAxis.LabelsFont.Style = []
    BottomAxis.LabelsSeparation = 0
    BottomAxis.MinorTickCount = 4
    BottomAxis.TickLength = 3
    BottomAxis.Ticks.Color = clWhite
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clGreen
    BottomAxis.Title.Font.Height = -16
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsItalic]
    Chart3DPercent = 20
    Frame.Color = clBlue
    LeftAxis.Axis.Color = clBlue
    LeftAxis.Axis.Width = 1
    LeftAxis.Grid.Color = clBlue
    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
    LeftAxis.LabelsFont.Color = clTeal
    LeftAxis.LabelsFont.Height = -13
    LeftAxis.LabelsFont.Name = 'Arial'
    LeftAxis.LabelsFont.Style = [fsItalic]
    LeftAxis.Ticks.Color = clFuchsia
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clNavy
    LeftAxis.Title.Font.Height = -15
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    LeftAxis.Visible = False
    Legend.Alignment = laBottom
    Legend.ColorWidth = 50
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clPurple
    Legend.Font.Height = -11
    Legend.Font.Name = 'Arial'
    Legend.Font.Style = []
    Legend.LegendStyle = lsLastValues
    Legend.TopPos = 7
    RightAxis.Grid.Color = clLime
    RightAxis.LabelsFont.Charset = DEFAULT_CHARSET
    RightAxis.LabelsFont.Color = clYellow
    RightAxis.LabelsFont.Height = -13
    RightAxis.LabelsFont.Name = 'Arial'
    RightAxis.LabelsFont.Style = []
    RightAxis.Visible = False
    TopAxis.Visible = False
    Color = 8454143
    TabOrder = 5
    object Speaking: TPointSeries
      Marks.ArrowLength = 8
      Marks.Frame.Color = 8454143
      Marks.Visible = False
      SeriesColor = clRed
      VertAxis = aRightAxis
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
      Left = 503
      Top = 301
    end
    object Writing: TPointSeries
      Marks.ArrowLength = 8
      Marks.Frame.Color = 8454143
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.Brush.Color = clGreen
      Pointer.InflateMargins = True
      Pointer.Pen.Color = 64
      Pointer.Style = psCircle
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 501
      Top = 267
    end
    object Reading: TPointSeries
      Marks.ArrowLength = 8
      Marks.Frame.Color = 8454143
      Marks.Visible = False
      SeriesColor = clYellow
      Pointer.Brush.Color = clYellow
      Pointer.HorizSize = 5
      Pointer.InflateMargins = True
      Pointer.Style = psTriangle
      Pointer.VertSize = 5
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 499
      Top = 233
    end
  end
  object Panel1: TPanel
    Left = -1
    Top = 40
    Width = 121
    Height = 417
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 12
      Top = 52
      Width = 105
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
      Left = 8
      Top = 160
      Width = 97
      Height = 29
      Caption = '    &Print all'
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object RadioGroup1: TRadioGroup
      Left = 4
      Top = 96
      Width = 109
      Height = 53
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Proportional'
        'More resolution')
      ParentFont = False
      TabOrder = 2
    end
    object CheckBox2: TCheckBox
      Left = 12
      Top = 20
      Width = 41
      Height = 17
      Caption = '3&D'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = CheckBox2Click
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 264
      Width = 97
      Height = 29
      Caption = '    &Save all '
      TabOrder = 4
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 368
      Width = 100
      Height = 37
      Caption = '    Close'
      TabOrder = 5
      Kind = bkClose
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 40
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 12
      Top = 12
      Width = 471
      Height = 16
      HelpType = htKeyword
      Alignment = taCenter
      Caption = 
        'Left drag (Up/Down) to Zoom. Right drag to Scroll. Invert Zoom r' +
        'ectangle to reset.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 102
    Top = 254
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'BMP'
    FileName = 'TEEDEMO.BMP'
    Filter = 'Bitmap Files|*.bmp'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Title = 'TeeChart DEMO Save to Bitmap'
    Left = 162
    Top = 444
  end
end
