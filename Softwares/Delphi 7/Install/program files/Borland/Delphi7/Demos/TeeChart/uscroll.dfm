object ScrollForm: TScrollForm
  Left = 102
  Top = 101
  Width = 582
  Height = 351
  ActiveControl = Button1
  Caption = 'TeeChart - Automatic Scroll Example'
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
    Left = 0
    Top = 53
    Width = 574
    Height = 271
    BackImageInside = True
    BackImageMode = pbmTile
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
    LeftAxis.Grid.Color = clScrollBar
    RightAxis.Grid.Color = clScrollBar
    TopAxis.Grid.Color = clScrollBar
    Align = alClient
    TabOrder = 0
    object LineSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      OnAfterAdd = LineSeries1AfterAdd
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
      Left = 119
      Top = 94
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 574
    Height = 53
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 191
      Top = 9
      Width = 250
      Height = 33
      Caption = 'Click here to add a new point and scroll !!!'
      TabOrder = 0
      OnClick = Button1Click
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 12
      Width = 89
      Height = 33
      TabOrder = 1
      Kind = bkClose
    end
    object CBVertical: TCheckBox
      Left = 110
      Top = 18
      Width = 71
      Height = 17
      Caption = '&Vertical'
      TabOrder = 2
      OnClick = CBVerticalClick
    end
  end
end
