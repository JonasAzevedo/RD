object formJavaApplet: TformJavaApplet
  Left = 0
  Top = 0
  Width = 779
  Height = 531
  HorzScrollBar.Range = 507
  VertScrollBar.Range = 521
  Background.Fixed = False
  HandleTabs = False
  Title = 'Java Applet'
  SupportedBrowsers = [brIE, brNetscape6]
  DesignLeft = 286
  DesignTop = 239
  object javaPacText: TIWApplet
    Left = 216
    Top = 16
    Width = 540
    Height = 60
    Visible = False
    ZIndex = 0
    Alignment = aaTop
    AltText = 'Pac Text Applet'
    ClassFile = 'PacText.class'
    HorizSpace = 0
    Params.Strings = (
      'bgcolor=FFFFFF'
      'paccolor=00FF00'
      'speed=4'
      'numtext=3'
      'font=Monospaced'
      'fontsize=22'
      'textcolor=0000FF'
      'space=21'
      'tremble=3'
      'textstart=100')
    VertSpace = 0
  end
  object butnShowMe: TIWButton
    Left = 432
    Top = 192
    Width = 75
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Show Me!'
    Color = 13160660
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TabOrder = 0
    OnClick = butnShowMeClick
  end
  object IWLabel1: TIWLabel
    Left = 216
    Top = 96
    Width = 73
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Text Line 1:'
  end
  object IWLabel2: TIWLabel
    Left = 216
    Top = 128
    Width = 73
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Text Line 2:'
  end
  object IWLabel3: TIWLabel
    Left = 216
    Top = 160
    Width = 73
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Text Line 3:'
  end
  object editLine1: TIWEdit
    Left = 296
    Top = 96
    Width = 209
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'TIWEdit1'
    MaxLength = 0
    PasswordPrompt = False
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 1
    Text = 'IntraWeb means...'
  end
  object editLine2: TIWEdit
    Left = 296
    Top = 128
    Width = 209
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'TIWEdit1'
    MaxLength = 0
    PasswordPrompt = False
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 2
    Text = 'RAD developement...'
  end
  object editLine3: TIWEdit
    Left = 296
    Top = 160
    Width = 209
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'TIWEdit1'
    MaxLength = 0
    PasswordPrompt = False
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 3
    Text = 'for the web!'
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 209
    Height = 521
    HorzScrollBar.Range = 193
    VertScrollBar.Range = 491
    AutoScroll = False
    TabOrder = 0
  end
end
