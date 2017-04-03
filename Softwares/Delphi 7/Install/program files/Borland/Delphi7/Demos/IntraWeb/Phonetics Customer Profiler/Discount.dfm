object formDiscount: TformDiscount
  Left = 0
  Top = 0
  Width = 414
  Height = 307
  ActiveControl = lboxCreditUnion
  Background.Filename = 'background.gif'
  Background.Fixed = True
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  TemplateProcessor = IWTemplateProcessorHTML1
  DesignLeft = 309
  DesignTop = 180
  object lablCreditUnion: TIWLabel
    Left = 8
    Top = 8
    Width = 265
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Which credit union are you a member of?'
  end
  object lablPromoCode: TIWLabel
    Left = 8
    Top = 168
    Width = 399
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Please enter your promotional code to validate your discount:'
  end
  object lboxCreditUnion: TIWListbox
    Left = 32
    Top = 32
    Width = 265
    Height = 121
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = False
    RequireSelection = True
    DoSubmitValidation = True
    Editable = True
    TabOrder = 0
    ItemIndex = 0
    Items.Strings = (
      'AFG'
      'Eastman'
      'IBM'
      'Intel'
      'Liberty Credit'
      'Motorola'
      'National Credit'
      'Washington Credit')
    MultiSelect = False
    Sorted = True
  end
  object editPromoCode: TIWEdit
    Left = 32
    Top = 192
    Width = 121
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
    TabOrder = 1
  end
  object butnNext: TIWButton
    Left = 192
    Top = 224
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
    TabOrder = 2
    OnClick = butnNextClick
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    Enabled = True
    MasterFormTag = True
    TagType = ttIntraWeb
    Left = 120
    Top = 224
  end
end
