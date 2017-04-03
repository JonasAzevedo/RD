object formStyleSheets: TformStyleSheets
  Left = 0
  Top = 0
  Width = 672
  Height = 521
  Background.Fixed = False
  HandleTabs = False
  StyleSheet.Filename = 'Features.css'
  Title = 'CSS Style Sheets'
  SupportedBrowsers = [brIE, brNetscape6]
  OnRender = IWFormModuleBaseRender
  DesignLeft = 324
  DesignTop = 170
  object IWLabel1: TIWLabel
    Left = 224
    Top = 160
    Width = 169
    Height = 16
    ZIndex = 0
    AutoSize = False
    Font.Color = clNone
    Font.CSSStyle = 'highlight'
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Highlighted Text'
  end
  object IWText1: TIWText
    Left = 224
    Top = 8
    Width = 369
    Height = 137
    ZIndex = 0
    Font.Color = clNone
    Font.CSSStyle = 'bodytext'
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'This shows how to use style sheets. Each control'
      'has a stylesheet specified in its Font property.'
      ''
      'The style sheet is external and specified in the form'#39's'
      'stylesheet property.'
      ''
      'Stylesheets can also be used by using templates.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWLabel2: TIWLabel
    Left = 424
    Top = 160
    Width = 177
    Height = 16
    ZIndex = 0
    AutoSize = False
    Font.Color = clNone
    Font.CSSStyle = 'sectionheading'
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Section Heading'
  end
  object IWText2: TIWText
    Left = 224
    Top = 200
    Width = 377
    Height = 89
    ZIndex = 0
    Font.Color = clRed
    Font.Enabled = True
    Font.FontName = 'Tahoma'
    Font.Size = 10
    Font.Style = [fsBold]
    Lines.Strings = (
      'You can also be selective in which controls use the'
      'style sheet.'
      ''
      'This one does not use a stylesheet, but uses its'
      'own font settings.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWButton1: TIWButton
    Left = 264
    Top = 312
    Width = 105
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Stylesheet 1'
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
  object IWButton2: TIWButton
    Left = 432
    Top = 312
    Width = 97
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Stylesheet 2'
    Color = 13160660
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TabOrder = 1
    OnClick = IWButton2Click
  end
  object lablCurrentStylesheet: TIWLabel
    Left = 264
    Top = 344
    Width = 329
    Height = 16
    ZIndex = 0
    AutoSize = False
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Current Stylesheet:'
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 201
    Height = 497
    HorzScrollBar.Range = 193
    VertScrollBar.Range = 491
    AutoScroll = False
    TabOrder = 0
  end
end
