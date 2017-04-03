object formContentWindow: TformContentWindow
  Left = 0
  Top = 0
  Width = 634
  Height = 511
  HorzScrollBar.Range = 537
  VertScrollBar.Range = 497
  Background.Fixed = False
  HandleTabs = False
  Title = 'Open New Window'
  SupportedBrowsers = [brIE, brNetscape6]
  DesignLeft = 302
  DesignTop = 205
  object editURL: TIWEdit
    Left = 224
    Top = 40
    Width = 313
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'URL'
    MaxLength = 0
    PasswordPrompt = False
    ReadOnly = False
    Required = True
    ScriptEvents = <>
    TabOrder = 0
    Text = 'http://www.atozedsoftware.com/'
  end
  object butnLaunch: TIWButton
    Left = 456
    Top = 72
    Width = 75
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Launch'
    Color = 13160660
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TabOrder = 1
    OnClick = butnLaunchClick
  end
  object IWLabel1: TIWLabel
    Left = 224
    Top = 16
    Width = 149
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Enter a URL to display:'
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 201
    Height = 497
    HorzScrollBar.Range = 193
    VertScrollBar.Range = 491
    AutoScroll = False
    TabOrder = 0
  end
end
