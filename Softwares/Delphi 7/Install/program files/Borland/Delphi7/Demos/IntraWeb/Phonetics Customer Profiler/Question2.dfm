object formQuestion2: TformQuestion2
  Left = 0
  Top = 0
  Width = 303
  Height = 165
  ActiveControl = editMinutes
  Background.Filename = 'background.gif'
  Background.Fixed = True
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  TemplateProcessor = IWTemplateProcessorHTML1
  OnDefaultAction = butnNextClick
  DesignLeft = 311
  DesignTop = 202
  object editMinutes: TIWEdit
    Left = 136
    Top = 71
    Width = 65
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
    MaxLength = 4
    PasswordPrompt = False
    ReadOnly = False
    Required = False
    TabOrder = 0
    Text = '0'
  end
  object textPrompt: TIWText
    Left = 8
    Top = 8
    Width = 289
    Height = 49
    ZIndex = 0
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'How many minutes per month do you spend '
      'on your cell phone during non-business hours?'
      '(M-F after 5pm, before 8am and Sat/Sun)')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object butnNext: TIWButton
    Left = 136
    Top = 103
    Width = 75
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Next'
    Color = 13160660
    DoSubmitValidation = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    TabOrder = 1
    OnClick = butnNextClick
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    Enabled = True
    MasterFormTag = True
    TagType = ttIntraWeb
    Left = 40
    Top = 96
  end
end
