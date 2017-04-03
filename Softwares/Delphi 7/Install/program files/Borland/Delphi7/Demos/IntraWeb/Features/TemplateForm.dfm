object formTemplate: TformTemplate
  Left = 0
  Top = 0
  Width = 393
  Height = 227
  Background.Fixed = False
  HandleTabs = False
  Title = 'test'
  SupportedBrowsers = [brIE, brNetscape6]
  TemplateProcessor = IWTemplateProcessorHTML1
  DesignLeft = 388
  DesignTop = 216
  object IWLink1: TIWLink
    Left = 192
    Top = 184
    Width = 185
    Height = 17
    Align = alNone
    ZIndex = 0
    Caption = 'Return to main application.'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink1Click
  end
  object IWButton1: TIWButton
    Left = 184
    Top = 8
    Width = 75
    Height = 25
    Align = alNone
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Add'
    Color = 13160660
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object IWEdit1: TIWEdit
    Left = 8
    Top = 8
    Width = 161
    Height = 21
    Align = alNone
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    MaxLength = 0
    PasswordPrompt = False
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 1
  end
  object IWListbox1: TIWListbox
    Left = 8
    Top = 32
    Width = 161
    Height = 145
    Align = alNone
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    RequireSelection = True
    ScriptEvents = <>
    DoSubmitValidation = True
    Editable = True
    TabOrder = 2
    ItemIndex = 0
    Items.Strings = (
      'You can add more items to this list.')
    MultiSelect = False
    Sorted = False
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    Enabled = True
    MasterFormTag = True
    TagType = ttIntraWeb
    Left = 248
    Top = 64
  end
end
