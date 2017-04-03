object formProposal: TformProposal
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  Background.Filename = 'background.gif'
  Background.Fixed = True
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  TemplateProcessor = IWTemplateProcessorHTML1
  OnCreate = IWFormModuleBaseCreate
  DesignLeft = 280
  DesignTop = 123
  object IWLabel1: TIWLabel
    Left = 208
    Top = 8
    Width = 69
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clGreen
    Font.Enabled = True
    Font.Size = 10
    Font.Style = [fsBold, fsUnderline]
    Caption = 'Proposal'
  end
  object lablPreparedFor: TIWLabel
    Left = 328
    Top = 48
    Width = 91
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Prepared For:'
  end
  object lablName: TIWLabel
    Left = 342
    Top = 71
    Width = 73
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = [fsBold]
    Caption = 'TIWLabel'
  end
  object lablAddress1: TIWLabel
    Left = 342
    Top = 92
    Width = 64
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'TIWLabel'
  end
  object lablAddress2: TIWLabel
    Left = 342
    Top = 114
    Width = 64
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'TIWLabel'
  end
  object lablCityStateZip: TIWLabel
    Left = 342
    Top = 135
    Width = 64
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'TIWLabel'
  end
  object IWLabel3: TIWLabel
    Left = 16
    Top = 162
    Width = 157
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Suggested Calling Plan:'
  end
  object IWLabel4: TIWLabel
    Left = 16
    Top = 184
    Width = 92
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Phone Option:'
  end
  object lablDiscountLabel: TIWLabel
    Left = 16
    Top = 208
    Width = 60
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Discount:'
  end
  object lablPlan: TIWLabel
    Left = 200
    Top = 162
    Width = 29
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Plan'
  end
  object lablPhoneOption: TIWLabel
    Left = 200
    Top = 184
    Width = 89
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Phone Option'
  end
  object lablDiscount: TIWLabel
    Left = 200
    Top = 208
    Width = 57
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Discount'
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    Enabled = True
    MasterFormTag = True
    TagType = ttIntraWeb
    Left = 56
    Top = 32
  end
end
