object PrintForm: TPrintForm
  Left = 216
  Top = 39
  BorderStyle = bsDialog
  Caption = 'TeeChart Printing Demo'
  ClientHeight = 349
  ClientWidth = 299
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 4
    Width = 72
    Height = 13
    HelpType = htKeyword
    Caption = 'Enter text here:'
  end
  object Chart1: TChart
    Left = 5
    Top = 55
    Width = 284
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'TChart Component')
    BottomAxis.Grid.Color = clScrollBar
    Chart3DPercent = 60
    LeftAxis.Grid.Color = clScrollBar
    LeftAxis.Grid.Width = 0
    RightAxis.Grid.Color = clScrollBar
    TopAxis.Grid.Color = clScrollBar
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
      Left = 147
      Top = 118
    end
  end
  object BitBtn1: TBitBtn
    Left = 38
    Top = 310
    Width = 119
    Height = 33
    Caption = 'PRINT ALL !!'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object Edit1: TEdit
    Left = 9
    Top = 23
    Width = 280
    Height = 21
    TabOrder = 2
    Text = 'Hello World !'
  end
  object BitBtn2: TBitBtn
    Left = 201
    Top = 311
    Width = 89
    Height = 33
    TabOrder = 3
    Kind = bkClose
  end
end
