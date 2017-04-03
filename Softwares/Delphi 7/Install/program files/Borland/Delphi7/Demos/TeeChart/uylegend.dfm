object LegendXYForm: TLegendXYForm
  Left = 202
  Top = 124
  Width = 569
  Height = 370
  Caption = 'TeeChart Example.  Customizing Legend Size and Position'
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
    Width = 420
    Height = 343
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Foot.Frame.Color = clScrollBar
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'TChart Component')
    OnGetLegendPos = Chart1GetLegendPos
    OnGetLegendRect = Chart1GetLegendRect
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Align = alClient
    TabOrder = 0
    object PieSeries1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsPercent
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Y'
      PieValues.Multiplier = 1
      PieValues.Order = loNone
      Left = 287
      Top = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 141
    Height = 343
    Align = alLeft
    TabOrder = 1
    object RadioGroup1: TRadioGroup
      Left = 14
      Top = 12
      Width = 103
      Height = 61
      Caption = 'Legend Drawing'
      ItemIndex = 1
      Items.Strings = (
        'Default'
        'Customized')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object BitBtn3: TBitBtn
      Left = 25
      Top = 272
      Width = 89
      Height = 33
      TabOrder = 1
      Kind = bkClose
    end
    object Memo1: TMemo
      Left = 8
      Top = 88
      Width = 121
      Height = 161
      Lines.Strings = (
        'Using the '
        'OnGetLegendPos and'
        'OnGetLegendRect'
        'events is possible'
        'to customize the Chart'
        'Legend position and'
        'Legend items positions.')
      TabOrder = 2
    end
  end
end
