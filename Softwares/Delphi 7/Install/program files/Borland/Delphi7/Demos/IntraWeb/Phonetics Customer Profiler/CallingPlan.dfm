object formCallingPlan: TformCallingPlan
  Left = 0
  Top = 0
  Width = 459
  Height = 292
  ActiveControl = butnNext
  Background.Filename = 'background.gif'
  Background.Fixed = True
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  TemplateProcessor = IWTemplateProcessorHTML1
  OnCreate = IWFormModuleBaseCreate
  OnDefaultAction = butnNextClick
  DesignLeft = 277
  DesignTop = 173
  object lablHello: TIWLabel
    Left = 16
    Top = 8
    Width = 35
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Hello'
  end
  object textIntro: TIWText
    Left = 16
    Top = 32
    Width = 353
    Height = 57
    ZIndex = 0
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'We have evaluated your answers to our customer profile questions'
      'and have selected a Phonetics phone pan that we believe is best '
      'suited to your calling habits.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object textPlan: TIWText
    Left = 16
    Top = 104
    Width = 409
    Height = 65
    ZIndex = 0
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'Plan details')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object butnNext: TIWButton
    Left = 200
    Top = 184
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
    TabOrder = 0
    OnClick = butnNextClick
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    Enabled = True
    MasterFormTag = True
    TagType = ttIntraWeb
    Left = 64
    Top = 192
  end
end
