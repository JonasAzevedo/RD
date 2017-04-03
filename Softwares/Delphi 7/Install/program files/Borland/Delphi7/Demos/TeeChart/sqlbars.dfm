object SQLBarsForm: TSQLBarsForm
  Left = -4
  Top = -4
  Width = 584
  Height = 471
  Caption = 'TeeChart SQL Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 85
    Width = 576
    Height = 188
    Hint = 'Click on a Bar to see an example of event handling.'
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = 8454016
    BackWall.Pen.Visible = False
    BottomWall.Color = clRed
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -15
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsBold]
    Foot.Frame.Color = clScrollBar
    LeftWall.Color = 16777088
    Title.Alignment = taLeftJustify
    Title.Brush.Color = clWhite
    Title.Brush.Style = bsClear
    Title.Color = 16777088
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = 8421440
    Title.Frame.Width = 4
    Title.Text.Strings = (
      'Pyramid Bar Chart built from SQL Query.')
    OnClickLegend = DBChart1ClickLegend
    BackColor = 8454016
    BottomAxis.Grid.Color = clScrollBar
    Chart3DPercent = 40
    ClipPoints = False
    Frame.Visible = False
    LeftAxis.Grid.Color = clScrollBar
    Legend.Color = clAqua
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clBlack
    Legend.Font.Height = -16
    Legend.Font.Name = 'Arial'
    Legend.Font.Style = [fsBold, fsItalic]
    Legend.Frame.Color = clTeal
    Legend.Frame.Width = 4
    Legend.ShadowSize = 11
    Legend.TextStyle = ltsRightValue
    Legend.TopPos = 5
    RightAxis.Grid.Color = clScrollBar
    TopAxis.Grid.Color = clScrollBar
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object BarSeries1: TBarSeries
      ColorEachPoint = True
      Cursor = crUpArrow
      Marks.ArrowLength = 20
      Marks.Style = smsPercent
      Marks.Visible = True
      DataSource = Query1
      SeriesColor = clRed
      XLabelsSource = 'NAME'
      OnClick = BarSeries1Click
      BarStyle = bsPyramid
      BarWidthPercent = 80
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      YValues.ValueSource = 'WEIGHT'
      OnGetBarStyle = BarSeries1GetBarStyle
      Left = 82
      Top = 118
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 403
    Width = 576
    Height = 41
    Align = alBottom
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 292
      Top = 4
      Width = 89
      Height = 33
      TabOrder = 0
      Kind = bkClose
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 576
    Height = 85
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 286
      Top = 54
      Width = 45
      Height = 13
      HelpType = htKeyword
      Caption = 'Bar &Style:'
    end
    object Memo1: TMemo
      Left = 16
      Top = 10
      Width = 261
      Height = 67
      Lines.Strings = (
        'select Name,Weight from ":dbdemos:animals.dbf"'
        'where Weight < 20'
        '')
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 286
      Top = 10
      Width = 111
      Height = 33
      Caption = 'Run Query !!'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object ComboBox1: TComboBox
      Left = 342
      Top = 50
      Width = 127
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = ComboBox1Change
      Items.Strings = (
        'Rectangle'
        'Pyramid'
        'InvPyramid'
        'Cilinder'
        'Ellipse'
        'Arrow')
    end
    object CBRandomBar: TCheckBox
      Left = 477
      Top = 53
      Width = 88
      Height = 17
      Caption = '<-- &Random'
      TabOrder = 3
      OnClick = CBRandomBarClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 273
    Width = 576
    Height = 130
    Align = alBottom
    TabOrder = 3
    object Label2: TLabel
      Left = 184
      Top = 22
      Width = 204
      Height = 18
      HelpType = htKeyword
      Caption = '<--- Try to change values !!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 176
      Height = 128
      Align = alLeft
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 215
    Top = 36
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'DBDEMOS'
    RequestLive = True
    SQL.Strings = (
      'select Name,Weight from '
      '":dbdemos:animals.dbf"'
      'where Weight<20'
      '')
    Left = 150
    Top = 42
  end
end
