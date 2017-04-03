object CrossHairForm: TCrossHairForm
  Left = 200
  Top = 103
  Width = 506
  Height = 404
  ActiveControl = Chart1
  Caption = 'TeeChart Cross Hair Demo'
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
    Width = 353
    Height = 377
    Cursor = crCross
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Title.Text.Strings = (
      'TChart Component')
    Title.Visible = False
    BottomAxis.Grid.Visible = False
    Chart3DPercent = 30
    LeftAxis.Grid.Visible = False
    View3D = False
    Align = alClient
    TabOrder = 0
    OnMouseMove = Chart1MouseMove
    object LineSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      AfterDrawValues = LineSeries1AfterDrawValues
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 377
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      Left = 44
      Top = 12
      Width = 15
      Height = 13
      HelpType = htKeyword
      Caption = '0,0'
    end
    object Label2: TLabel
      Left = 16
      Top = 12
      Width = 20
      Height = 13
      HelpType = htKeyword
      Caption = 'X,Y:'
    end
    object BitBtn1: TBitBtn
      Left = 26
      Top = 324
      Width = 89
      Height = 33
      TabOrder = 0
      Kind = bkClose
    end
    object CheckBox1: TCheckBox
      Left = 15
      Top = 44
      Width = 97
      Height = 17
      Caption = 'C&ross Cursor'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object BitBtn2: TBitBtn
      Left = 11
      Top = 260
      Width = 118
      Height = 33
      Caption = 'CrossHair C&olor...'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object Memo1: TMemo
      Left = 8
      Top = 80
      Width = 121
      Height = 161
      Lines.Strings = (
        'Cross-hair lines are '
        'drawn over a TChart '
        'using the '
        'OnMouseMove event.'
        ''
        'Coordinates for the '
        'cross-hair lines are '
        'calculated using the '
        'Series GetCursorValues '
        'method.')
      TabOrder = 3
    end
  end
end
