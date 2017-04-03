object formMessageDialogs: TformMessageDialogs
  Left = 0
  Top = 0
  Width = 677
  Height = 533
  HorzScrollBar.Range = 609
  VertScrollBar.Range = 513
  Background.Fixed = False
  HandleTabs = False
  Title = 'Message Dialogs'
  SupportedBrowsers = [brIE, brNetscape6]
  DesignLeft = 390
  DesignTop = 206
  object IWMemo1: TIWMemo
    Left = 216
    Top = 32
    Width = 377
    Height = 137
    ZIndex = 0
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    RawText = False
    ScriptEvents = <>
    ReadOnly = False
    Required = False
    FriendlyName = 'TIWMemo1'
    TabOrder = 0
    Lines.Strings = (
      'Hello World Wide Web!')
  end
  object IWLabel1: TIWLabel
    Left = 216
    Top = 8
    Width = 169
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Type your message here:'
  end
  object IWLink1: TIWLink
    Left = 216
    Top = 304
    Width = 49
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'smAlert'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink1Click
  end
  object IWLink2: TIWLink
    Left = 216
    Top = 328
    Width = 121
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'smNewWindow'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink2Click
  end
  object IWLink3: TIWLink
    Left = 216
    Top = 352
    Width = 113
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'smSameWindow'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink3Click
  end
  object IWLink4: TIWLink
    Left = 216
    Top = 376
    Width = 153
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'smSameWindowFrame'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink4Click
  end
  object IWText1: TIWText
    Left = 216
    Top = 192
    Width = 393
    Height = 105
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'Messages can be displayed using 4 different styles.'
      ''
      'All of these are done in code by one call to:'
      'WebApplication.ShowMessage(IWEdit1.Lines.Text, <Mode>);'
      ''
      'Where mode is one of the following:')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 201
    Height = 513
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
