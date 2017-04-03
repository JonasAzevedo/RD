object formFileUploadDemo: TformFileUploadDemo
  Left = 0
  Top = 0
  Width = 636
  Height = 557
  HorzScrollBar.Range = 625
  VertScrollBar.Range = 513
  Background.Fixed = False
  HandleTabs = False
  Title = 'Simple Input'
  SupportedBrowsers = [brIE, brNetscape6]
  DesignLeft = 404
  DesignTop = 285
  object IWText1: TIWText
    Left = 216
    Top = 8
    Width = 409
    Height = 221
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'This form demonstrates how easy it is to'
      'upload files via the browser using IntraWeb'
      ''
      'Just place a TIWFile (or the corresponding TIWDBFile'
      'if you require a data-aware version) and IntraWeb does'
      'the rest.'
      ''
      'To access the filename or content-type use the properties'
      'like any other IW control. You can also save the file to either'
      'a file on disk or a stream using SaveToFile and SaveToStream'
      'respectively')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWLabel1: TIWLabel
    Left = 216
    Top = 236
    Width = 264
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = True
    Caption = 'Click the Browse button to choose the file'
  end
  object lablFileInfo: TIWLabel
    Left = 216
    Top = 348
    Width = 393
    Height = 16
    Visible = False
    ZIndex = 0
    Font.Color = clRed
    Font.Enabled = True
    Font.Size = 10
    Font.Style = [fsBold]
    Caption = 'lablFileInfo'
  end
  object IWFile1: TIWFile
    Left = 216
    Top = 256
    Width = 277
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWFile1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 0
  end
  object butnUpload: TIWButton
    Left = 216
    Top = 312
    Width = 75
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Upload'
    Color = 13160660
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TabOrder = 1
    OnClick = butnUploadClick
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 201
    Height = 557
    HorzScrollBar.Range = 193
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 491
    VertScrollBar.Visible = False
    Align = alLeft
    AutoScroll = False
    Color = clWhite
    ParentColor = False
    TabOrder = 0
  end
end
