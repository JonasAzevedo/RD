object DrawForm: TDrawForm
  Left = 129
  Top = 121
  Width = 599
  Height = 398
  Caption = 'TeeChart Customized Drawing Example'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 145
    Top = 0
    Width = 446
    Height = 371
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = clSilver
    BottomWall.Color = 16777088
    BottomWall.Size = 4
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    LeftWall.Color = 8454016
    LeftWall.Size = 4
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'TChart Component')
    BackColor = clSilver
    Chart3DPercent = 65
    Legend.ColorWidth = 32
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object LineSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      AfterDrawValues = LineSeries1AfterDrawValues
      BeforeDrawValues = LineSeries1BeforeDrawValues
      LinePen.Width = 3
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
      Left = 199
      Top = 122
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 371
    Align = alLeft
    TabOrder = 1
    object BitBtn3: TBitBtn
      Left = 24
      Top = 312
      Width = 89
      Height = 33
      TabOrder = 0
      Kind = bkClose
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 12
      Width = 117
      Height = 17
      Caption = '&Animate !!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 40
      Width = 89
      Height = 33
      Caption = '&Print !'
      TabOrder = 2
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
    object CheckBox2: TCheckBox
      Left = 16
      Top = 84
      Width = 57
      Height = 17
      Caption = '3D'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = CheckBox2Click
    end
    object Memo1: TMemo
      Left = 12
      Top = 116
      Width = 121
      Height = 169
      Lines.Strings = (
        'Custom drawing using '
        'the Chart Canvas '
        'property is easy !'
        ''
        'This demo shows how '
        'custom drawings can be '
        'printed too.')
      TabOrder = 4
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 642
    Top = 37
  end
end
