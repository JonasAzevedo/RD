object formDownload: TformDownload
  Left = 0
  Top = 0
  Width = 642
  Height = 529
  HorzScrollBar.Range = 539
  VertScrollBar.Range = 493
  Background.Fixed = False
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  OnCreate = IWAppFormCreate
  DesignLeft = 303
  DesignTop = 196
  object lboxFiles: TIWListbox
    Left = 232
    Top = 40
    Width = 217
    Height = 153
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    RequireSelection = True
    ScriptEvents = <>
    UseSize = False
    DoSubmitValidation = True
    Editable = True
    TabOrder = 0
    ItemIndex = 0
    MultiSelect = False
    Sorted = False
  end
  object IWButton1: TIWButton
    Left = 464
    Top = 40
    Width = 75
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Download'
    Color = 13160660
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TabOrder = 1
    OnClick = IWButton1Click
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 195
    Height = 493
    HorzScrollBar.Range = 193
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 491
    VertScrollBar.Visible = False
    AutoScroll = False
    Color = clWhite
    ParentColor = False
    TabOrder = 0
  end
end
