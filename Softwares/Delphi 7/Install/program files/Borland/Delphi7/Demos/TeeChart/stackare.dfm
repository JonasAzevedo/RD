object AreasForm: TAreasForm
  Left = 176
  Top = 71
  Width = 598
  Height = 433
  ActiveControl = Chart1
  Caption = 'Area Series Example'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 406
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 196
      Width = 63
      Height = 23
      HelpType = htKeyword
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object RadioGroup1: TRadioGroup
      Left = 12
      Top = 59
      Width = 117
      Height = 122
      Caption = 'Area Series Mode:'
      ItemIndex = 0
      Items.Strings = (
        'maNone'
        'maStacked'
        'maStacked100')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object BitBtn1: TBitBtn
      Left = 18
      Top = 350
      Width = 89
      Height = 33
      TabOrder = 1
      Kind = bkClose
    end
    object CheckBox1: TCheckBox
      Left = 14
      Top = 34
      Width = 97
      Height = 17
      Caption = '3D'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 14
      Top = 9
      Width = 97
      Height = 17
      Caption = '&Animate !!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = CheckBox2Click
    end
  end
  object Chart1: TChart
    Left = 145
    Top = 0
    Width = 445
    Height = 406
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Title.Alignment = taLeftJustify
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -13
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Area Series Example.'
      'Move mouse over Areas.')
    BottomAxis.LabelsAngle = 90
    Chart3DPercent = 50
    Legend.Alignment = laBottom
    Align = alClient
    TabOrder = 1
    OnMouseMove = Chart1MouseMove
    object AreaSeries1: TAreaSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      AreaLinesPen.Color = clAqua
      AreaLinesPen.Style = psDot
      DrawArea = True
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
      Left = 189
      Top = 36
    end
    object AreaSeries2: TAreaSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      DrawArea = True
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
      Left = 227
      Top = 36
    end
    object AreaSeries3: TAreaSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clYellow
      DrawArea = True
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
      Left = 265
      Top = 34
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 88
    Top = 91
  end
end
