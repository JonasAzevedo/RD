object formPdfDemo: TformPdfDemo
  Left = 0
  Top = 0
  Width = 535
  Height = 524
  Background.Fixed = False
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  DesignLeft = 293
  DesignTop = 106
  object IWButton1: TIWButton
    Left = 424
    Top = 120
    Width = 75
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Open'
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
  object IWText1: TIWText
    Left = 232
    Top = 16
    Width = 289
    Height = 41
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'Please select which PDF you wold like to see:')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWRadioGroup1: TIWRadioGroup
    Left = 232
    Top = 64
    Width = 281
    Height = 41
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'IntraWeb Cover Page'
      'Installing IntraWeb')
    Layout = glVertical
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 201
    Height = 524
    HorzScrollBar.Range = 193
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 491
    VertScrollBar.Visible = False
    Align = alLeft
    AutoScroll = False
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    inherited butnExit: TIWButton
      Top = 466
    end
  end
end
