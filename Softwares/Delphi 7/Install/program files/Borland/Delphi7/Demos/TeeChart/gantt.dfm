object GanttForm: TGanttForm
  Left = 94
  Top = -1
  Width = 686
  Height = 432
  Caption = 'TeeChart Gantt Series Demo'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 137
    Top = 0
    Width = 541
    Height = 405
    AllowPanning = pmHorizontal
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Alignment = taRightJustify
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clYellow
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    Foot.Text.Strings = (
      
        'Left drag (Up/Down) to Zoom. Right drag to Scroll. Invert Zoom r' +
        'ectangle to reset.')
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWhite
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Frame.Color = clScrollBar
    Title.Text.Strings = (
      'This demo shows the Gantt chart Type.'
      'Each Point is a Horizontal Bar that defines a Date Period.'
      '')
    BottomAxis.LabelsAngle = 90
    BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
    BottomAxis.LabelsFont.Color = clWhite
    BottomAxis.LabelsFont.Height = -12
    BottomAxis.LabelsFont.Name = 'Arial'
    BottomAxis.LabelsFont.Style = []
    BottomAxis.LabelStyle = talValue
    BottomAxis.MinorTicks.Color = clWhite
    BottomAxis.TickInnerLength = 4
    BottomAxis.Ticks.Color = clLime
    BottomAxis.TicksInner.Color = 8388863
    BottomAxis.Title.Caption = 'Current Year'
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clFuchsia
    BottomAxis.Title.Font.Height = -19
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsItalic]
    LeftAxis.Grid.Color = clLime
    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
    LeftAxis.LabelsFont.Color = clAqua
    LeftAxis.LabelsFont.Height = -13
    LeftAxis.LabelsFont.Name = 'Arial'
    LeftAxis.LabelsFont.Style = []
    LeftAxis.LabelsSeparation = 3
    LeftAxis.LabelStyle = talText
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clPurple
    LeftAxis.Title.Font.Height = -16
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold, fsItalic]
    Legend.Visible = False
    View3D = False
    OnGetNextAxisLabel = Chart1GetNextAxisLabel
    Align = alClient
    Color = 8421440
    TabOrder = 0
    OnMouseMove = Chart1MouseMove
    object GanttSeries1: TGanttSeries
      ColorEachPoint = True
      Marks.ArrowLength = 0
      Marks.BackColor = clWhite
      Marks.Clip = True
      Marks.Font.Charset = DEFAULT_CHARSET
      Marks.Font.Color = clNavy
      Marks.Font.Height = -11
      Marks.Font.Name = 'Arial'
      Marks.Font.Style = []
      Marks.Frame.Color = clRed
      Marks.Visible = True
      SeriesColor = clRed
      OnClick = GanttSeries1Click
      Pointer.Draw3D = False
      Pointer.HorizSize = 83
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.VertSize = 10
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'Start'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      ConnectingPen.Color = clRed
      ConnectingPen.Width = 2
      StartValues.DateTime = True
      StartValues.Name = 'Start'
      StartValues.Multiplier = 1
      StartValues.Order = loAscending
      EndValues.DateTime = False
      EndValues.Name = 'End'
      EndValues.Multiplier = 1
      EndValues.Order = loNone
      NextTask.DateTime = False
      NextTask.Name = 'NextTask'
      NextTask.Multiplier = 1
      NextTask.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 137
    Height = 405
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 11
      Width = 62
      Height = 24
      HelpType = htKeyword
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 24
      Top = 84
      Width = 77
      Height = 29
      HelpType = htKeyword
    end
    object Label2: TLabel
      Left = 15
      Top = 39
      Width = 62
      Height = 24
      HelpType = htKeyword
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn3: TBitBtn
      Left = 24
      Top = 304
      Width = 89
      Height = 33
      TabOrder = 0
      Kind = bkClose
    end
    object Memo1: TMemo
      Left = 8
      Top = 128
      Width = 121
      Height = 161
      Lines.Strings = (
        'Gantt Series '
        'are made of points'
        'with Start and End'
        'coordinates.'
        ''
        'This example shows'
        'how to get mouse '
        'position and how'
        'to customize bottom'
        'axis labels.')
      TabOrder = 1
    end
  end
end
