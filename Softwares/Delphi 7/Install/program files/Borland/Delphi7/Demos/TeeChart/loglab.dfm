object LogLabelsForm: TLogLabelsForm
  Left = 71
  Top = 80
  Width = 631
  Height = 411
  Caption = 'Logarithmic Labels example'
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
    Width = 470
    Height = 384
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.Direction = gdLeftRight
    Gradient.Visible = True
    Title.Text.Strings = (
      'TChart')
    BottomAxis.Logarithmic = True
    LeftAxis.Logarithmic = True
    View3D = False
    Align = alClient
    TabOrder = 0
    object Series1: TFastLineSeries
      ColorEachPoint = True
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      LinePen.Color = clRed
      LinePen.Width = 2
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 384
    Align = alLeft
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 26
      Top = 260
      Width = 89
      Height = 33
      Caption = 'Close'
      TabOrder = 0
      Kind = bkClose
    end
    object Memo1: TMemo
      Left = 12
      Top = 72
      Width = 121
      Height = 149
      Lines.Strings = (
        'Logarithmic Axis'
        'can draw labels in'
        'decades using the'
        'OnGetNextAxisLabel'
        'and OnGetAxisLabel'
        'events.'
        ''
        '')
      TabOrder = 1
    end
  end
end
