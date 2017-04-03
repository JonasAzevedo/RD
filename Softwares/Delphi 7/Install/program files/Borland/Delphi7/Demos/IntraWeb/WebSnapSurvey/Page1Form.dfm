object formPage1: TformPage1
  Left = 0
  Top = 0
  Width = 527
  Height = 197
  Background.Fixed = False
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  OnCreate = IWPageFormCreate
  AutoProcess = True
  PostToSelf = True
  DesignLeft = 328
  DesignTop = 212
  object cmboBest: TIWComboBox
    Left = 72
    Top = 40
    Width = 193
    Height = 21
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = False
    RequireSelection = False
    DoSubmitValidation = True
    Editable = True
    TabOrder = 0
    ItemIndex = -1
    Sorted = False
  end
  object IWLabel1: TIWLabel
    Left = 24
    Top = 16
    Width = 251
    Height = 16
    AutoSize = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Which was the BEST Star Trek movie?'
  end
  object butnVote: TIWButton
    Left = 128
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Vote'
    Color = 13160660
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    TabOrder = 1
    DoSubmitValidation = True
    OnClick = butnVoteClick
  end
  object IWLabel2: TIWLabel
    Left = 24
    Top = 80
    Width = 268
    Height = 16
    AutoSize = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Which was the WORST Star Trek movie?'
  end
  object cmboWorst: TIWComboBox
    Left = 72
    Top = 104
    Width = 193
    Height = 21
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = False
    RequireSelection = False
    DoSubmitValidation = True
    Editable = True
    TabOrder = 2
    ItemIndex = -1
    Sorted = False
  end
  object textMsg: TIWText
    Left = 296
    Top = 24
    Width = 225
    Height = 121
    Visible = False
    Font.Color = clRed
    Font.Enabled = True
    Font.Size = 10
    Font.Style = [fsBold]
    RawText = False
    UseFrame = False
    WantReturns = True
  end
end
