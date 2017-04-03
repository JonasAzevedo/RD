object formFlow: TformFlow
  Left = 0
  Top = 0
  Width = 359
  Height = 227
  HorzScrollBar.Range = 349
  VertScrollBar.Range = 201
  Background.Fixed = False
  HandleTabs = False
  SupportedBrowsers = [brIE, brNetscape6]
  TemplateProcessor = IWLayoutMgrHTML1
  DesignLeft = 336
  DesignTop = 215
  object IWLink1: TIWLink
    Left = 164
    Top = 184
    Width = 185
    Height = 17
    ZIndex = 0
    Caption = 'Return to main application.'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink1Click
  end
  object IWListbox1: TIWListbox
    Left = 8
    Top = 32
    Width = 161
    Height = 145
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
    Items.Strings = (
      'You can add more items to this list.')
    MultiSelect = False
    Sorted = False
  end
  object IWEdit1: TIWEdit
    Left = 8
    Top = 8
    Width = 161
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 1
    PasswordPrompt = False
  end
  object IWButton1: TIWButton
    Left = 184
    Top = 8
    Width = 75
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Add'
    Color = 13160660
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TabOrder = 2
    OnClick = IWButton1Click
  end
  object IWLayoutMgrHTML1: TIWLayoutMgrHTML
    Enabled = True
    HTML.Strings = (
      '<HEAD>'
      
        '</HEAD><BODY contentEditable=true><P>This page is designed&nbsp;' +
        'using the HTML layout manager. The form is like any other IntraW' +
        'eb form, but it has a HTML Layout Manager component on it. When ' +
        'you double click on the HTML Layout Manager a WYSIWYG editor is ' +
        'invoked. From the editor you can also import and&nbsp;export to ' +
        'Front Page, Dreamweaver and others. '
      
        '</P><P><STRONG>You can also access the property inspector, add c' +
        'omponents, access&nbsp;source code, and most importantly use the' +
        ' fullly featured </STRONG><STRONG>WYSIWYG </STRONG><STRONG>HTML ' +
        'editor!&nbsp;&nbsp; </STRONG>'
      
        '</P><P>Enter some text here {%IWEdit1%}, then click the button {' +
        '%IWButton1%}&nbsp;and your text will be added in the listbox bel' +
        'ow. When you are finished click here to {%IWLink1%}</P> {%IWList' +
        'box1%}</BODY>')
    Left = 216
    Top = 64
  end
end
