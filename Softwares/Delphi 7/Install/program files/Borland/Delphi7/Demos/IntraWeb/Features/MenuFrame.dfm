object framMenu: TframMenu
  Left = 0
  Top = 0
  Width = 185
  Height = 468
  HorzScrollBar.Range = 185
  HorzScrollBar.Visible = False
  VertScrollBar.Range = 468
  VertScrollBar.Visible = False
  AutoScroll = False
  Color = clWhite
  ParentColor = False
  TabOrder = 0
  object linkHome: TIWLink
    Left = 8
    Top = 8
    Width = 113
    Height = 25
    Hint = 'A very simple input form.'
    ZIndex = 0
    Color = clBlue
    Caption = 'Home'
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 12
    Font.Style = [fsBold]
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkHomeClick
  end
  object linkSimpleInputForm: TIWLink
    Left = 8
    Top = 40
    Width = 161
    Height = 17
    Hint = 'A very simple input form.'
    ZIndex = 0
    Color = clNone
    Caption = 'Simple Input Form'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkSimpleInputFormClick
  end
  object linkMessageDialogs: TIWLink
    Left = 8
    Top = 56
    Width = 161
    Height = 17
    Hint = 
      'This will show you the different methods that IW can display mes' +
      'sage dialogs using ShowMessage.'
    ZIndex = 0
    Color = clNone
    Caption = 'Message Dialogs'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkMessageDialogsClick
  end
  object linkComboboxes: TIWLink
    Left = 8
    Top = 73
    Width = 161
    Height = 17
    Hint = 'Comboboxes, checkboxes, and other odds and ends.'
    ZIndex = 0
    Color = clNone
    Caption = 'Miscellaneous'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkComboboxesClick
  end
  object IWLink6: TIWLink
    Left = 8
    Top = 90
    Width = 161
    Height = 17
    Hint = 
      'A demo showing how to automatically submit or refresh a page usi' +
      'ng a timer.'
    ZIndex = 0
    Color = clNone
    Caption = 'Download Form'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink6Click
  end
  object linkStyleSheets: TIWLink
    Left = 8
    Top = 106
    Width = 161
    Height = 17
    Hint = 'Demonstration of use of IntraWeb with CSS style sheets.'
    ZIndex = 0
    Color = clNone
    Caption = 'Style Sheets'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkStyleSheetsClick
  end
  object IWLink3: TIWLink
    Left = 8
    Top = 123
    Width = 161
    Height = 17
    Hint = 'Demonstration of a dynamic interactive image.'
    ZIndex = 0
    Color = clNone
    Caption = 'Interactive Image'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink3Click
  end
  object linkJava: TIWLink
    Left = 8
    Top = 140
    Width = 161
    Height = 17
    Hint = 'An example showing integration with a Java applet.'
    ZIndex = 0
    Color = clNone
    Caption = 'Java Applet'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkJavaClick
  end
  object linkGrids: TIWLink
    Left = 8
    Top = 156
    Width = 161
    Height = 17
    Hint = 'A small demo of the TIWTable component.'
    ZIndex = 0
    Color = clNone
    Caption = 'Display Grid'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkGridsClick
  end
  object linkEditGrid: TIWLink
    Left = 8
    Top = 173
    Width = 161
    Height = 17
    Hint = 'A small demo of the TIWTable component.'
    ZIndex = 0
    Color = clNone
    Caption = 'Editable Grid'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkEditGridClick
  end
  object linkPopupContent: TIWLink
    Left = 8
    Top = 190
    Width = 161
    Height = 17
    Hint = 'A demo showing how to display content in a new window.'
    ZIndex = 0
    Color = clNone
    Caption = 'Popup Content Window'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkPopupContentClick
  end
  object IWLink7: TIWLink
    Left = 8
    Top = 222
    Width = 161
    Height = 17
    Hint = 'A demo showin how to show PDF file in the same or new window'
    ZIndex = 0
    Color = clNone
    Caption = 'PDF File Demo'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink7Click
  end
  object IWLink2: TIWLink
    Left = 8
    Top = 206
    Width = 161
    Height = 17
    Hint = 
      'A demo showing how to automatically submit or refresh a page usi' +
      'ng a timer.'
    ZIndex = 0
    Color = clNone
    Caption = 'Timer Submit'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink2Click
  end
  object IWLink4: TIWLink
    Left = 8
    Top = 238
    Width = 161
    Height = 17
    Hint = 
      'A demo showing how to automatically submit or refresh a page usi' +
      'ng a timer.'
    ZIndex = 0
    Color = clNone
    Caption = 'HTML Template'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink4Click
  end
  object IWLink1: TIWLink
    Left = 8
    Top = 254
    Width = 161
    Height = 17
    Hint = 
      'A demo showing how to automatically submit or refresh a page usi' +
      'ng a timer.'
    ZIndex = 0
    Color = clNone
    Caption = 'Flow Layout'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink1Click
  end
  object linkDynamicChart: TIWLink
    Left = 8
    Top = 272
    Width = 97
    Height = 17
    Hint = 'A demo showing a fully dynamic chart.'
    ZIndex = 0
    Color = clNone
    Caption = 'Dynamic Chart'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkDynamicChartClick
  end
  object IWLabel1: TIWLabel
    Left = 100
    Top = 272
    Width = 35
    Height = 13
    ZIndex = 0
    Font.Color = clRed
    Font.Enabled = True
    Font.Size = 8
    Font.Style = [fsItalic]
    Caption = 'IE only'
  end
  object linkDynamicGrid: TIWLink
    Left = 8
    Top = 288
    Width = 161
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'Dynamic Grid'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = linkDynamicGridClick
  end
  object IWLink8: TIWLink
    Left = 8
    Top = 304
    Width = 161
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'Client Side Data'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink8Click
  end
  object IWLink5: TIWLink
    Left = 8
    Top = 320
    Width = 161
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'Menu'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink5Click
  end
  object IWLink9: TIWLink
    Left = 8
    Top = 336
    Width = 161
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'File Upload'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink9Click
  end
  object IWLink10: TIWLink
    Left = 8
    Top = 352
    Width = 161
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'TreeView'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink10Click
  end
  object IWLink11: TIWLink
    Left = 8
    Top = 368
    Width = 161
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'Flash'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink11Click
  end
  object IWLink12: TIWLink
    Left = 8
    Top = 384
    Width = 161
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'Align and Anchors'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink12Click
  end
  object butnExit: TIWButton
    Left = 95
    Top = 438
    Width = 82
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Quit Demo'
    Color = clAqua
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    OnClick = butnExitClick
  end
end
