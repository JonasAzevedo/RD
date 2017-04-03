object DBHorizBarForm: TDBHorizBarForm
  Left = 44
  Top = 80
  Width = 608
  Height = 473
  Caption = 'TeeChart Example. Horizontal and Vertical Bars with DBChart'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 145
    Top = 0
    Width = 455
    Height = 446
    AnimatedZoom = True
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = clWhite
    BottomWall.Color = 16777088
    Foot.Brush.Color = clBlue
    Foot.Color = clBlue
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clLime
    Foot.Font.Height = -13
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsBold, fsItalic]
    Foot.Frame.Color = clWhite
    Foot.Frame.Width = 5
    Foot.Frame.Visible = True
    Foot.Text.Strings = (
      'Who has all of them ?')
    Title.Alignment = taLeftJustify
    Title.Brush.Color = clNavy
    Title.Color = clNavy
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clYellow
    Title.Font.Height = -19
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = clBlue
    Title.Frame.Width = 5
    Title.Frame.Visible = True
    Title.Text.Strings = (
      'Animal Comparison'
      'Size vs. Weight')
    BackColor = clWhite
    BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
    BottomAxis.LabelsFont.Color = clGreen
    BottomAxis.LabelsFont.Height = -13
    BottomAxis.LabelsFont.Name = 'Arial'
    BottomAxis.LabelsFont.Style = [fsBold, fsItalic]
    BottomAxis.LabelStyle = talValue
    BottomAxis.Title.Caption = 'Size in Inches'
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clYellow
    BottomAxis.Title.Font.Height = -16
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsBold]
    Chart3DPercent = 50
    LeftAxis.Inverted = True
    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
    LeftAxis.LabelsFont.Color = clNavy
    LeftAxis.LabelsFont.Height = -13
    LeftAxis.LabelsFont.Name = 'Arial'
    LeftAxis.LabelsFont.Style = [fsBold]
    LeftAxis.LabelsSeparation = 5
    LeftAxis.LabelStyle = talText
    LeftAxis.Title.Caption = 'Animal Name'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clRed
    LeftAxis.Title.Font.Height = -19
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold, fsItalic]
    Legend.ColorWidth = 60
    TopAxis.LabelsFont.Charset = DEFAULT_CHARSET
    TopAxis.LabelsFont.Color = clRed
    TopAxis.LabelsFont.Height = -13
    TopAxis.LabelsFont.Name = 'Arial'
    TopAxis.LabelsFont.Style = [fsItalic]
    TopAxis.Title.Caption = 'Weight in Kg'
    TopAxis.Title.Font.Charset = DEFAULT_CHARSET
    TopAxis.Title.Font.Color = clBlue
    TopAxis.Title.Font.Height = -16
    TopAxis.Title.Font.Name = 'Arial'
    TopAxis.Title.Font.Style = []
    Align = alClient
    TabOrder = 0
    object HorizBarSeries1: THorizBarSeries
      HorizAxis = aTopAxis
      Marks.Arrow.Color = clLime
      Marks.ArrowLength = 20
      Marks.BackColor = clWhite
      Marks.Font.Charset = DEFAULT_CHARSET
      Marks.Font.Color = clRed
      Marks.Font.Height = -13
      Marks.Font.Name = 'Arial'
      Marks.Font.Style = [fsBold]
      Marks.Style = smsXValue
      Marks.Visible = True
      DataSource = Table1
      SeriesColor = clRed
      Title = 'Weight'
      XLabelsSource = 'NAME'
      MultiBar = mbNone
      XValues.DateTime = False
      XValues.Name = 'Bar'
      XValues.Multiplier = 1
      XValues.Order = loNone
      XValues.ValueSource = 'WEIGHT'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
    object HorizBarSeries2: THorizBarSeries
      Marks.Arrow.Color = clYellow
      Marks.ArrowLength = 20
      Marks.BackColor = clWhite
      Marks.Font.Charset = DEFAULT_CHARSET
      Marks.Font.Color = clGreen
      Marks.Font.Height = -13
      Marks.Font.Name = 'Arial'
      Marks.Font.Style = [fsBold, fsItalic]
      Marks.Style = smsXValue
      Marks.Visible = True
      DataSource = Table1
      SeriesColor = clBlue
      Title = 'Size'
      XLabelsSource = 'NAME'
      MultiBar = mbNone
      XValues.DateTime = False
      XValues.Name = 'Bar'
      XValues.Multiplier = 1
      XValues.Order = loNone
      XValues.ValueSource = 'SIZE'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 446
    Align = alLeft
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 42
      Top = 155
      Width = 47
      Height = 17
      Caption = '3&D'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 6
      Top = 44
      Width = 123
      Height = 101
      Caption = 'MultiBar Style'
      ItemIndex = 0
      Items.Strings = (
        '&None'
        'S&ide to Side'
        '&Stacked'
        'S&tacked 100%')
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
    object BitBtn2: TBitBtn
      Left = 22
      Top = 400
      Width = 95
      Height = 35
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Kind = bkClose
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 359
      Width = 121
      Height = 34
      Caption = 'Swap Series'
      TabOrder = 3
      OnClick = BitBtn3Click
      Glyph.Data = {
        BE060000424DBE06000000000000360400002800000024000000120000000100
        0800000000008802000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0404040404040303030303030303030303FFF8F8F8F8F8F803FF030303030302
        0403030402020202020204040303030303F8F8FF03F8030303030303F8F8FF03
        030303020204040202020202020202020403030303F8FFF8F80303FFFFFFFFFF
        0303F8FF030303020202020202FAFAFAFAFA02020204030303F8FF030303FFF8
        F8F8F8F8FF0303F8FF03030202020202FA0303030303FA020202040303F8FF03
        03FFF80303030303F8FF0303F8FF03020202020203030303030303FA02020403
        03F8FF0303F803030303030303F8FF03F8FF03020202020202030303030303FA
        0404040303F8FFFFFFFFF8FF0303030303F8F8F8F80303FAFAFAFAFAFAFA0303
        030303030303030303F8F8F8F8F8F8F803030303030303030303030303030303
        030303030303030303030303030303030303030303030303FFFFFFFFFFFF0303
        030303030303030303030404040404040303FFFFFFFF030303030303F8F8F8F8
        F8F803FA040404030303030303FA02020202020403F8F8F8F8FF0303030303F8
        FF03030303F803FA02020403030303030303FA020202020403F8FF03F8FF0303
        03030303F803030303F80303FA0202040303030303040402020202040303F803
        03F8FFFFFFFFFFF8F803030303F80303FA020202040404040402020202020204
        0303F8FF0303F8F8F8F8F8030303FFFF03F8030303FA02020202020202020202
        FAFA0204030303F8FFFF030303030303FFFFF8F8FFF803030303FAFA02020202
        0202FAFA0303FA0303030303F8F8FFFFFFFFFFFFF8F80303F803030303030303
        FAFAFAFAFAFA030303030303030303030303F8F8F8F8F8F80303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303}
      NumGlyphs = 2
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 8
      Width = 137
      Height = 25
      Caption = '&Animate !!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = CheckBox2Click
    end
    object Memo1: TMemo
      Left = 8
      Top = 184
      Width = 121
      Height = 161
      Lines.Strings = (
        'Connecting a Series to '
        'a TTable component is '
        'just at few mouse clicks '
        'using the Chart editor '
        'dialog !'
        ''
        'In this example 2 fields '
        'from ANIMALS.DBF '
        'table are connected to '
        '2 Horizontal Bar'
        'Series.')
      TabOrder = 5
    end
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    ReadOnly = True
    TableName = 'ANIMALS.DBF'
    Left = 431
    Top = 18
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 382
    Top = 17
  end
end
