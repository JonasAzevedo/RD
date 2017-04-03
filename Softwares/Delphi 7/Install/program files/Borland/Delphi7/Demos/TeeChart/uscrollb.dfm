object ScrollBarForm: TScrollBarForm
  Left = 86
  Top = 106
  Width = 565
  Height = 331
  Caption = 'TeeChart Scroll Bars Example'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 557
    Height = 304
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    MarginBottom = 18
    MarginRight = 18
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'TChart Component')
    OnScroll = Chart1Scroll
    OnUndoZoom = Chart1UndoZoom
    OnZoom = Chart1Zoom
    BottomAxis.Grid.Color = clScrollBar
    LeftAxis.Grid.Color = clScrollBar
    Legend.Visible = False
    RightAxis.Grid.Color = clScrollBar
    TopAxis.Grid.Color = clScrollBar
    View3D = False
    Align = alClient
    TabOrder = 0
    OnResize = Chart1Resize
    object ScrollBar2: TScrollBar
      Left = 517
      Top = 10
      Width = 19
      Height = 255
      Kind = sbVertical
      PageSize = 0
      TabOrder = 0
      OnChange = ScrollBar2Change
    end
    object ScrollBar1: TScrollBar
      Left = 13
      Top = 266
      Width = 523
      Height = 19
      PageSize = 0
      TabOrder = 1
      OnChange = ScrollBar1Change
    end
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
      Left = 199
      Top = 121
    end
  end
end
