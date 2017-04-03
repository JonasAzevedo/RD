object formSimple: TformSimple
  Left = 0
  Top = 0
  Width = 636
  Height = 556
  HorzScrollBar.Range = 625
  VertScrollBar.Range = 513
  Background.Fixed = False
  HandleTabs = False
  Title = 'Simple Input'
  SupportedBrowsers = [brIE, brNetscape6]
  OnDestroy = IWAppFormDestroy
  DesignLeft = 333
  DesignTop = 139
  object IWText1: TIWText
    Left = 216
    Top = 8
    Width = 409
    Height = 121
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'This is a very simple form - but think of this:'
      ''
      'Using ANY other web development technology how many lines'
      'of code would this require and how long would it take you?'
      ''
      
        'Only after you have thought about this, then look at the IntraWe' +
        'b'
      'code to do this. We think you will be quite amazed.....')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWLabel1: TIWLabel
    Left = 216
    Top = 144
    Width = 128
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'What is your name?'
  end
  object lablHello: TIWLabel
    Left = 216
    Top = 192
    Width = 393
    Height = 16
    Visible = False
    ZIndex = 0
    Font.Color = clRed
    Font.Enabled = True
    Font.Size = 10
    Font.Style = [fsBold]
    AutoSize = False
    Caption = 'lablHello'
  end
  object editName: TIWEdit
    Left = 216
    Top = 160
    Width = 233
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
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 0
    PasswordPrompt = False
  end
  object butnTalk: TIWButton
    Left = 472
    Top = 160
    Width = 75
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Talk to me'
    Color = 13160660
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TabOrder = 1
    OnClick = butnTalkClick
  end
  inline framMenu1: TframMenu
    Width = 201
    Height = 556
    HorzScrollBar.Range = 193
    VertScrollBar.Range = 491
    Align = alLeft
  end
end
