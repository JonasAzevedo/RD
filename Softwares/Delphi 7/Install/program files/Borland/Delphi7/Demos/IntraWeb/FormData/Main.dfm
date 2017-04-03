object formMain: TformMain
  Left = 0
  Top = 0
  Width = 221
  Height = 144
  Background.Fixed = False
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  OnCreate = IWAppFormCreate
  DesignLeft = 388
  DesignTop = 245
  object IWLabel1: TIWLabel
    Left = 16
    Top = 16
    Width = 152
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Please enter some text:'
  end
  object editText: TIWEdit
    Left = 16
    Top = 32
    Width = 137
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'editText'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 0
    PasswordPrompt = False
  end
  object butnOk: TIWButton
    Left = 80
    Top = 56
    Width = 75
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Ok'
    Color = clBtnFace
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TabOrder = 1
    OnClick = butnOkClick
  end
  object IWLink1: TIWLink
    Left = 171
    Top = 117
    Width = 42
    Height = 17
    Anchors = [akRight, akBottom]
    ZIndex = 0
    Caption = 'Quit'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink1Click
  end
end
