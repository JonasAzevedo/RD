object formDialog: TformDialog
  Left = 0
  Top = 0
  Width = 459
  Height = 237
  Background.Fixed = False
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  OnRender = IWAppFormRender
  DesignLeft = 314
  DesignTop = 127
  object IWMemo1: TIWMemo
    Left = 8
    Top = 8
    Width = 209
    Height = 217
    ZIndex = 0
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    RawText = False
    ScriptEvents = <>
    ReadOnly = False
    Required = False
    FriendlyName = 'IWMemo1'
    TabOrder = 0
  end
  object lablCount: TIWLabel
    Left = 232
    Top = 8
    Width = 222
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'This form has been shown x times.'
  end
  object linkReturn: TIWLink
    Left = 232
    Top = 64
    Width = 129
    Height = 17
    ZIndex = 0
    Caption = 'Return to Main form.'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkReturnClick
  end
end
