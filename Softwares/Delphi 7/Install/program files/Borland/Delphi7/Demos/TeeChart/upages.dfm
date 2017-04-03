object PagesForm: TPagesForm
  Left = 130
  Top = 65
  Width = 608
  Height = 413
  Caption = 'TeeChart Sample.  How to divide Charts in several Pages.'
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
    Left = 194
    Top = 0
    Width = 406
    Height = 386
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Frame.Color = clScrollBar
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'TChart Component')
    BottomAxis.Grid.Color = clScrollBar
    LeftAxis.Grid.Color = clScrollBar
    Legend.Alignment = laTop
    RightAxis.Grid.Color = clScrollBar
    ScaleLastPage = False
    TopAxis.Grid.Color = clScrollBar
    OnPageChange = Chart1PageChange
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
      Left = 311
      Top = 156
    end
    object BubbleSeries1: TBubbleSeries
      ColorEachPoint = False
      Marks.ArrowLength = 8
      Marks.Frame.Visible = False
      Marks.Transparent = True
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.HorizSize = 33
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 33
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
      Left = 395
      Top = 160
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 194
    Height = 386
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 11
      Top = 10
      Width = 104
      Height = 13
      HelpType = htKeyword
      Caption = '&Num Points Per Page:'
      FocusControl = SpinEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 11
      Top = 76
      Width = 62
      Height = 22
      HelpType = htKeyword
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpinEdit1: TSpinEdit
      Left = 121
      Top = 7
      Width = 58
      Height = 22
      MaxValue = 100000
      MinValue = 0
      TabOrder = 0
      Value = 0
      OnChange = SpinEdit1Change
    end
    object ButtonPrevious: TBitBtn
      Left = 14
      Top = 149
      Width = 79
      Height = 32
      Caption = '&Previous'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = ButtonPreviousClick
      Glyph.Data = {
        36010000424D360100000000000076000000280000001E0000000C0000000100
        040000000000C000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777887777
        7777777778877777770077777008777777777777778777777700777700087777
        7777777777877777770077700008888888877777778888888800770000000000
        0087777777777777780070000000000000877777777777777800F00000000000
        008F7777777777777800FF0000000000008F77777777777778007FF00007FFFF
        FF77FF77777FFFFFF70077FF0008777777777FF7778777777700777FF0087777
        777777FF7787777777007777FFF777777777777FFF7777777700}
      NumGlyphs = 2
    end
    object ButtonNext: TBitBtn
      Left = 102
      Top = 149
      Width = 79
      Height = 32
      Caption = '&Next'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = ButtonNextClick
      Glyph.Data = {
        36010000424D360100000000000076000000280000001E0000000C0000000100
        040000000000C000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777778877
        777777777778877777007777777F00877777777777F7787777007777777F0008
        7777777777F77787770078888887000087778888887777787700F00000000000
        087F7777777777778700F00000000000008F7777777777777800F00000000000
        007F7777777777777700F00000000000077F7777777777777700FFFFFFFF0000
        777FFFFFFFF7777777007777777F00077777777777F7777777007777777F0077
        7777777777F7777777007777777FF7777777777777FF77777700}
      Layout = blGlyphRight
      NumGlyphs = 2
    end
    object BLastPage: TBitBtn
      Left = 102
      Top = 106
      Width = 79
      Height = 32
      Caption = '&Last'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BLastPageClick
      Glyph.Data = {
        36010000424D360100000000000076000000280000001E0000000C0000000100
        040000000000C000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00778877777888
        877778877777788887007F008777F0008777F7787777F77787007F000877F000
        8777F7778777F77787007F000087F0008777F7777877F77787007F000008F000
        8777F7777787F77787007F00000080008777F7777778F77787007F000000F000
        8777F7777787F77787007F000007F0008777F7777877F77787007F000077F000
        8777F7778777F77787007F000777F0008777F7787777F77787007F007777F000
        8777F7877777F77787007FF77777FFFF7777FF777777FFFF7700}
      Layout = blGlyphRight
      NumGlyphs = 2
    end
    object BFirstPage: TBitBtn
      Left = 14
      Top = 106
      Width = 79
      Height = 32
      Caption = '&First'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BFirstPageClick
      Glyph.Data = {
        36010000424D360100000000000076000000280000001E0000000C0000000100
        040000000000C000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888777777
        887777888777777887007F00087777700877F7778777778787007F0008777700
        0877F7778777787787007F00087770000877F7778777877787007F0008770000
        0877F7778778777787007F00087000000877F7778787777787007F0008F00000
        0877F7778F77777787007F0008FF00000877F7778F77777787007F00087FF000
        0877F77787FF777787007F000877FF000877F777877FF77787007F0008777FF0
        0877F7778777FF7787007FFFF77777FFF777FFFF77777FFF7700}
      NumGlyphs = 2
    end
    object CheckBox1: TCheckBox
      Left = 14
      Top = 44
      Width = 131
      Height = 19
      Caption = 'Auto Scale Last Page'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = CheckBox1Click
    end
    object BitBtn3: TBitBtn
      Left = 40
      Top = 332
      Width = 93
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Kind = bkClose
    end
    object Memo1: TMemo
      Left = 32
      Top = 200
      Width = 121
      Height = 109
      Lines.Strings = (
        'Using the Chart'
        'MaxPointsPerPage'
        'property Series can'
        'be divided in "pages"'
        'so you can navigate'
        'across them.')
      TabOrder = 7
    end
  end
end
