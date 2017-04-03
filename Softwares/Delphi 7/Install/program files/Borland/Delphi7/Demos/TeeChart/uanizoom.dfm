object FormAnimatedZoom: TFormAnimatedZoom
  Left = 183
  Top = 101
  Width = 619
  Height = 411
  ActiveControl = CheckBox1
  Caption = 'TeeChart Animated Zoom Example'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 141
    Top = 0
    Width = 470
    Height = 384
    AnimatedZoom = True
    AnimatedZoomSteps = 4
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = clSilver
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    Gradient.EndColor = clWhite
    Gradient.StartColor = clYellow
    Title.Alignment = taLeftJustify
    Title.Brush.Color = 8454143
    Title.Color = 8454143
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clRed
    Title.Font.Height = -19
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = clGreen
    Title.Frame.Width = 4
    Title.Text.Strings = (
      'Zoom by clicking Left Mouse button'
      'and dragging bottom right.')
    BackColor = clSilver
    BottomAxis.Grid.Color = clScrollBar
    Chart3DPercent = 46
    LeftAxis.Grid.Color = clScrollBar
    Legend.Visible = False
    RightAxis.Grid.Color = clScrollBar
    TopAxis.Grid.Color = clScrollBar
    View3D = False
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object LineSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 172
      Top = 100
    end
    object LineSeries2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 208
      Top = 100
    end
    object LineSeries3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clYellow
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 244
      Top = 100
    end
    object LineSeries4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 276
      Top = 100
    end
    object LineSeries5: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clWhite
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 312
      Top = 100
    end
    object PointSeries1: TPointSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGray
      Pointer.Brush.Color = 4259584
      Pointer.InflateMargins = True
      Pointer.Style = psDiamond
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      Left = 348
      Top = 100
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 141
    Height = 384
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      Left = 14
      Top = 68
      Width = 60
      Height = 13
      HelpType = htKeyword
      Caption = 'Zoom &Steps:'
      FocusControl = SpinEdit1
    end
    object CheckBox1: TCheckBox
      Left = 15
      Top = 32
      Width = 110
      Height = 17
      Caption = '&Animated Zoom !!!'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 15
      Top = 12
      Width = 42
      Height = 17
      Caption = '3&D'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object SpinEdit1: TSpinEdit
      Left = 86
      Top = 64
      Width = 47
      Height = 22
      MaxValue = 1000
      MinValue = 1
      TabOrder = 2
      Value = 1
      OnChange = SpinEdit1Change
    end
    object BitBtn2: TBitBtn
      Left = 26
      Top = 140
      Width = 89
      Height = 33
      Caption = 'Zoom OUT'
      TabOrder = 3
      OnClick = BitBtn2Click
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDD0000000D00DDDDDDDDDDDDDD0000000D000DDDDDDDDDDDDD0000000DD00
        0DDDDDDDDDDDD0000000DDD000D800008DDDD0000000DDDD0000777700DDD000
        0000DDDDD08EE777780DD0000000DDDD807E77777708D0000000DDDD07E77777
        7770D0000000DDDD077000000770D0000000DDDD077000000E70D0000000DDDD
        077777777E70D0000000DDDD80777777EE08D0000000DDDDD08777EEE80DD000
        0000DDDDDD00777700DDD0000000DDDDDDD800008DDDD0000000DDDDDDDDDDDD
        DDDDD0000000}
    end
    object BitBtn1: TBitBtn
      Left = 26
      Top = 100
      Width = 89
      Height = 33
      Caption = 'Zoom IN'
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDD0000000D00DDDDDDDDDDDDDD0000000D000DDDDDDDDDDDDD0000000DD00
        0DDDDDDDDDDDD0000000DDD000D800008DDDD0000000DDDD0000777700DDD000
        0000DDDDD08EE777780DD0000000DDDD807E70077708D0000000DDDD07E77007
        7770D0000000DDDD077000000770D0000000DDDD077000000E70D0000000DDDD
        077770077E70D0000000DDDD80777007EE08D0000000DDDDD08777EEE80DD000
        0000DDDDDD00777700DDD0000000DDDDDDD800008DDDD0000000DDDDDDDDDDDD
        DDDDD0000000}
    end
    object BitBtn3: TBitBtn
      Left = 26
      Top = 344
      Width = 89
      Height = 33
      TabOrder = 5
      OnClick = BitBtn2Click
      Kind = bkClose
    end
    object Memo1: TMemo
      Left = 12
      Top = 192
      Width = 121
      Height = 129
      Lines.Strings = (
        'Animated Zoom'
        'can be activated'
        'to better indentify'
        'zoomed areas.'
        ''
        'Try to zoom using'
        'the left mouse button,'
        'with and without'
        'Animated Zoom !')
      TabOrder = 6
    end
  end
end
