object LegendForm: TLegendForm
  Left = 175
  Top = 125
  Width = 543
  Height = 385
  Caption = 'TeeChart Customized Legend Example'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 535
    Height = 52
    HelpType = htKeyword
    Align = alTop
  end
  object Label1: TLabel
    Left = 8
    Top = 4
    Width = 123
    Height = 13
    HelpType = htKeyword
    Caption = 'The Chart Legend is here:'
  end
  object Chart1: TChart
    Left = 153
    Top = 52
    Width = 382
    Height = 306
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Frame.Color = clScrollBar
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'TChart Component')
    Title.Visible = False
    Legend.Visible = False
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
      Left = 63
      Top = 110
    end
    object LineSeries2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      AfterDrawValues = LineSeries2AfterDrawValues
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
      Left = 129
      Top = 108
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 52
    Width = 153
    Height = 306
    Align = alLeft
    TabOrder = 1
    object BitBtn3: TBitBtn
      Left = 30
      Top = 224
      Width = 89
      Height = 33
      TabOrder = 0
      Kind = bkClose
    end
    object Memo1: TMemo
      Left = 16
      Top = 24
      Width = 121
      Height = 161
      Lines.Strings = (
        'Chart Legends can'
        'be customized using'
        'any Delphi component.'
        ''
        'Here a TPaintBox is '
        'used to display'
        'Series Titles.'
        '')
      TabOrder = 1
    end
  end
end
