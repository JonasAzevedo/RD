object formQuestion1: TformQuestion1
  Left = 0
  Top = 0
  Width = 304
  Height = 181
  ActiveControl = editMinutes
  Background.Filename = 'background.gif'
  Background.Fixed = True
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  TemplateProcessor = IWTemplateProcessorHTML1
  OnDefaultAction = butnNextClick
  DesignLeft = 313
  DesignTop = 197
  object textPrompt: TIWText
    Left = 8
    Top = 8
    Width = 289
    Height = 57
    ZIndex = 0
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'How many minutes per month do you spend '
      'on your cell phone during business hours?'
      '(M-F 8-5)')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
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
    Left = 32
    Top = 112
  end
end
