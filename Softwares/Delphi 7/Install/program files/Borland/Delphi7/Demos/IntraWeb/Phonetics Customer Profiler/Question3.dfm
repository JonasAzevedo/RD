object formQuestion3: TformQuestion3
  Left = 0
  Top = 0
  Width = 348
  Height = 302
  Visible = False
  ActiveControl = cmboType
  Background.Filename = 'background.gif'
  Background.Fixed = True
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  TemplateProcessor = IWTemplateProcessorHTML1
  DesignLeft = 560
  DesignTop = 320
  object textPrompt1: TIWText
    Left = 16
    Top = 8
    Width = 313
    Height = 33
    ZIndex = 0
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'Do you call mostly inside or outside of your area '
      'code on your cell phone?')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object cmboType: TIWComboBox
    Left = 40
    Top = 48
    Width = 121
    Height = 21
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
    TabOrder = 0
    ItemIndex = 0
    Items.Strings = (
      'Inside'
      'Outside')
    Sorted = False
  end
  object textPrompt2: TIWText
    Left = 16
    Top = 72
    Width = 313
    Height = 49
    ZIndex = 0
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'Do your currently own a phone you would like to '
      'use, or would you like us to quote you on leasing '
      'or selling you a phone?')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object textPrompt3: TIWText
    Left = 16
    Top = 160
    Width = 313
    Height = 41
    ZIndex = 0
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'Are you eligible for a package discount through '
      'your employer or credit union? ')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object cmboPhone: TIWComboBox
    Left = 40
    Top = 128
    Width = 121
    Height = 21
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
    TabOrder = 1
    ItemIndex = 0
    Items.Strings = (
      'Own'
      'Buy'
      'Lease')
    Sorted = False
  end
  object chckDiscount: TIWCheckBox
    Left = 40
    Top = 203
    Width = 121
    Height = 21
    ZIndex = 0
    Caption = 'Discount'
    Editable = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = True
    Style = stNormal
    TabOrder = 2
    Checked = False
  end
  object butnNext: TIWButton
    Left = 200
    Top = 240
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
    ScriptEvents = <>
    TabOrder = 3
    OnClick = butnNextClick
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    Enabled = True
    MasterFormTag = True
    TagType = ttIntraWeb
    Left = 48
    Top = 232
  end
end
