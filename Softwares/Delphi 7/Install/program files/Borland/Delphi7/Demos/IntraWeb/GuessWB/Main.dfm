object formMain: TformMain
  Left = 0
  Top = 0
  Width = 363
  Height = 163
  Background.Fixed = False
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  AutoProcess = True
  PostToSelf = True
  DesignLeft = 338
  DesignTop = 201
  object editGuess: TIWEdit
    Left = 64
    Top = 40
    Width = 65
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
    MaxLength = 3
    PasswordPrompt = False
    ReadOnly = False
    Required = False
    TabOrder = 0
  end
  object IWLabel1: TIWLabel
    Left = 8
    Top = 40
    Width = 46
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Guess:'
  end
  object IWLabel2: TIWLabel
    Left = 8
    Top = 8
    Width = 255
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Please guess the number from 1 to 100:'
  end
  object butnGuess: TIWButton
    Left = 160
    Top = 40
    Width = 75
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Guess'
    Color = 13160660
    DoSubmitValidation = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    TabOrder = 1
    OnClick = butnGuessClick
  end
  object lablResponse: TIWLabel
    Left = 8
    Top = 96
    Width = 89
    Height = 16
    Visible = False
    ZIndex = 0
    AutoSize = False
    Font.Color = clGreen
    Font.Enabled = True
    Font.Size = 10
    Font.Style = [fsBold]
    Caption = 'Response'
  end
  object lablGuessNo: TIWLabel
    Left = 8
    Top = 72
    Width = 61
    Height = 16
    ZIndex = 0
    AutoSize = True
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Guess #1'
  end
end
