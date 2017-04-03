object KeyboardForm: TKeyboardForm
  Left = 64
  Top = 79
  Width = 667
  Height = 389
  ActiveControl = Chart1
  Caption = 'TeeChart Keyboard Scrolling Example'
  Color = clBtnFace
  ParentFont = True
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 157
    Top = 0
    Width = 502
    Height = 362
    AnimatedZoom = True
    AnimatedZoomSteps = 3
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = clWhite
    BottomWall.Color = 8454016
    BottomWall.Size = 16
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -12
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsItalic]
    Foot.Frame.Color = clScrollBar
    Foot.Text.Strings = (
      'The Form.OnKeyDown event does the job. See source code. ')
    LeftWall.Size = 16
    Title.AdjustFrame = False
    Title.Brush.Color = 8453888
    Title.Color = 8453888
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -12
    Title.Font.Name = 'Arial'
    Title.Font.Style = []
    Title.Frame.Color = 8388863
    Title.Frame.Width = 3
    Title.Frame.Visible = True
    Title.Text.Strings = (
      
        'This example shows how to handle keyboard events to scroll TChar' +
        't contents.'
      
        'Use the keyboard arrow keys and  page up / page down keys to scr' +
        'oll.'
      'Press SPACE to reset. Press SHIFT and arrow keys to ZOOM.')
    BackColor = clWhite
    BottomAxis.Grid.Color = clScrollBar
    Chart3DPercent = 20
    LeftAxis.Grid.Color = clScrollBar
    Legend.Visible = False
    RightAxis.Grid.Color = clScrollBar
    TopAxis.Grid.Color = clScrollBar
    Align = alClient
    Color = 16777088
    TabOrder = 0
    TabStop = True
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 157
    Height = 362
    Align = alLeft
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 37
      Top = 284
      Width = 89
      Height = 33
      TabOrder = 0
      Kind = bkClose
    end
    object InvertScroll: TCheckBox
      Left = 21
      Top = 12
      Width = 128
      Height = 17
      Caption = '&Inverted Scrolling'
      TabOrder = 1
      OnClick = InvertScrollClick
    end
    object CheckLimits: TCheckBox
      Left = 21
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Check &Limits'
      TabOrder = 2
      OnClick = CheckLimitsClick
    end
    object Memo1: TMemo
      Left = 20
      Top = 76
      Width = 121
      Height = 161
      Lines.Strings = (
        'Scrolling and zooming'
        'can also be done using'
        'the keyboard.'
        ''
        'This example shows '
        'how to scroll and zoom'
        'a Chart using the Form'
        'OnKeyDown event.'
        '')
      TabOrder = 3
    end
  end
end
