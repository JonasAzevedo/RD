object formTimer: TformTimer
  Left = 0
  Top = 0
  Width = 729
  Height = 530
  Background.Fixed = False
  HandleTabs = False
  Title = 'Timer Demo'
  SupportedBrowsers = [brIE, brNetscape6]
  DesignLeft = 305
  DesignTop = 229
  object IWTimer1: TIWTimer
    Left = 592
    Top = 32
    Width = 24
    Height = 24
    ZIndex = 0
    Enabled = True
    Interval = 2000
    OnTimer = IWTimer1Timer
  end
  object IWText1: TIWText
    Left = 224
    Top = 8
    Width = 409
    Height = 89
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'This page is automatically submited by a timer every 2 seconds.'
      ''
      'You can use this to automatically submit data, or refresh '
      'a page.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object lablCount: TIWLabel
    Left = 224
    Top = 112
    Width = 489
    Height = 29
    Visible = False
    ZIndex = 0
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 18
    Font.Style = []
    AutoSize = False
    Caption = 'This page has been auto refreshed x times.'
  end
  inline framMenu1: TframMenu
    Width = 209
    Height = 521
    HorzScrollBar.Range = 193
    VertScrollBar.Range = 491
  end
end
