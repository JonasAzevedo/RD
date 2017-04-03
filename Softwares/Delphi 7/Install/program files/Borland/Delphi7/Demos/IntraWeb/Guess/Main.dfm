object formMain: TformMain
  Left = 0
  Top = 0
  Width = 295
  Height = 155
  Visible = False
  Background.Fixed = False
  HandleTabs = False
  Title = 'Guess the Number'
  SupportedBrowsers = [brIE, brNetscape6, brOpera]
  OnCreate = IWFormModuleBaseCreate
  OnDefaultAction = butnGuessClick
  DesignLeft = 259
  DesignTop = 154
  object linkQuit: TIWLink
    Left = 253
    Top = 137
    Width = 30
    Height = 18
    Anchors = [akRight, akBottom]
    ZIndex = 0
    Color = clNone
    Caption = 'Quit'
    ExtraTagParams.Strings = (
      'align=right')
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkQuitClick
  end
  object IWRegion1: TIWRegion
    Left = 11
    Top = 10
    Width = 273
    Height = 121
    HorzScrollBar.Range = 255
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 88
    VertScrollBar.Visible = False
    Anchors = []
    TabOrder = 0
    Color = clNone
    object editGuess: TIWEdit
      Left = 66
      Top = 41
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
      ReadOnly = False
      Required = False
      ScriptEvents = <>
      TabOrder = 0
      PasswordPrompt = False
    end
    object IWLabel1: TIWLabel
      Left = 8
      Top = 41
      Width = 46
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Caption = 'Guess:'
    end
    object IWLabel2: TIWLabel
      Left = 10
      Top = 8
      Width = 255
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Caption = 'Please guess the number from 1 to 100:'
    end
    object butnGuess: TIWButton
      Left = 162
      Top = 41
      Width = 81
      Height = 25
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Guess'
      Color = 13160660
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 1
      OnClick = butnGuessClick
    end
    object lablResponse: TIWLabel
      Left = 8
      Top = 97
      Width = 78
      Height = 16
      Visible = False
      ZIndex = 0
      Font.Color = clGreen
      Font.Enabled = True
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'Response'
    end
    object lablGuessNo: TIWLabel
      Left = 8
      Top = 73
      Width = 61
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Caption = 'Guess #1'
    end
  end
end
