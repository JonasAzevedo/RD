object BubbleForm: TBubbleForm
  Left = 147
  Top = 90
  Width = 661
  Height = 439
  Caption = 'TeeChart Bubble Series Demo'
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
    Width = 500
    Height = 412
    AnimatedZoom = True
    AnimatedZoomSteps = 3
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = clWhite
    Foot.Alignment = taLeftJustify
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    Foot.Text.Strings = (
      
        'Left drag (Up/Down) to Zoom. Right drag to Scroll. Invert Zoom r' +
        'ectangle to reset.')
    Title.Alignment = taRightJustify
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -15
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsItalic]
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'This demo shows the Bubble chart Type.'
      'Each Point is a Bubble with a custom Radius, Color and Label.')
    BackColor = clWhite
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
    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
    LeftAxis.LabelsFont.Color = clWhite
    LeftAxis.LabelsFont.Height = -13
    LeftAxis.LabelsFont.Name = 'Arial'
    LeftAxis.LabelsFont.Style = []
    LeftAxis.MinorTickLength = 4
    LeftAxis.MinorTicks.Color = 4227327
    LeftAxis.TickLength = 8
    LeftAxis.Title.Angle = 0
    LeftAxis.Title.Caption = 'Stock Price'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clNavy
    LeftAxis.Title.Font.Height = -15
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.ColorWidth = 32
    Legend.Visible = False
    RightAxis.Title.Angle = 180
    TopAxis.Title.Caption = 'Date'
    View3D = False
    Align = alClient
    BevelWidth = 0
    TabOrder = 0
    object BubbleSeries1: TBubbleSeries
      HorizAxis = aTopAxis
      Marks.ArrowLength = 0
      Marks.Clip = True
      Marks.Font.Charset = DEFAULT_CHARSET
      Marks.Font.Color = clWhite
      Marks.Font.Height = -16
      Marks.Font.Name = 'Arial'
      Marks.Font.Style = [fsItalic]
      Marks.Frame.Color = 8454143
      Marks.Frame.Visible = False
      Marks.Transparent = True
      Marks.Visible = True
      SeriesColor = clRed
      OnGetPointerStyle = BubbleSeries1GetPointerStyle
      Pointer.HorizSize = 32
      Pointer.InflateMargins = False
      Pointer.Style = psCircle
      Pointer.VertSize = 32
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      RadiusValues.DateTime = False
      RadiusValues.Name = 'Radius'
      RadiusValues.Multiplier = 1
      RadiusValues.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 412
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 37
      Width = 72
      Height = 17
      HelpType = htKeyword
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Bubble &Style:'
    end
    object ZoomInButton: TSpeedButton
      Left = 40
      Top = 328
      Width = 25
      Height = 25
      HelpType = htKeyword
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      OnClick = ZoomInButtonClick
    end
    object ZoomOutButton: TSpeedButton
      Left = 72
      Top = 328
      Width = 25
      Height = 25
      HelpType = htKeyword
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        333333773337777333333078F8F87033333337F3333337F33333778F8F8F8773
        333337333333373F333307F8F8F8F70333337F33FFFFF37F3333078999998703
        33337F377777337F333307F8F8F8F703333373F3333333733333778F8F8F8773
        333337F3333337F333333078F8F870333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      OnClick = ZoomOutButtonClick
    end
    object CheckBox1: TCheckBox
      Left = 17
      Top = 8
      Width = 128
      Height = 17
      Caption = '&Animate !!!'
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
      Left = 16
      Top = 104
      Width = 93
      Height = 17
      Caption = 'View &Marks'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object ComboBox1: TComboBox
      Left = 14
      Top = 53
      Width = 131
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = ComboBox1Change
      Items.Strings = (
        'Rectangle'
        'Circle'
        'Triangle'
        'DownTriangle'
        'Cross'
        'DiagCross'
        'Star'
        'Diamond')
    end
    object BitBtn3: TBitBtn
      Left = 28
      Top = 364
      Width = 89
      Height = 33
      TabOrder = 3
      Kind = bkClose
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 88
      Width = 97
      Height = 17
      Caption = '&Random'
      TabOrder = 4
      OnClick = CheckBox3Click
    end
    object Memo1: TMemo
      Left = 16
      Top = 136
      Width = 121
      Height = 185
      Lines.Strings = (
        'Each "Bubble" is '
        'represented with a '
        'center position and '
        'Radius.'
        'Each point can have a '
        'different style using the '
        'OnGetPointerStyle '
        'event.'
        ''
        'This example also '
        'shows '
        'Axis labels and title '
        'rotation.')
      TabOrder = 5
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 82
    Top = 62
  end
end
