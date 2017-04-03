object formComboboxes: TformComboboxes
  Left = 0
  Top = 0
  Width = 736
  Height = 544
  HorzScrollBar.Range = 728
  VertScrollBar.Range = 505
  Background.Fixed = False
  HandleTabs = False
  Title = 'Comboboxes'
  BackgroundColor = 10674136
  SupportedBrowsers = [brIE, brNetscape6]
  DesignLeft = 338
  DesignTop = 196
  object cmboNumbers: TIWComboBox
    Left = 216
    Top = 40
    Width = 121
    Height = 21
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    RequireSelection = True
    ScriptEvents = <>
    OnChange = cmboNumbersChange
    UseSize = False
    DoSubmitValidation = True
    Editable = True
    TabOrder = 0
    ItemIndex = 0
    Items.Strings = (
      'One'
      'Two'
      'Three')
    Sorted = False
  end
  object lablNumber: TIWLabel
    Left = 344
    Top = 40
    Width = 161
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    AutoSize = False
    Caption = 'No selection'
  end
  object IWLabel1: TIWLabel
    Left = 216
    Top = 8
    Width = 466
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 
      'Server side event examples. These also be done without server ev' +
      'ents.'
  end
  object chckCheckbox: TIWCheckBox
    Left = 216
    Top = 72
    Width = 121
    Height = 21
    ZIndex = 0
    Caption = 'Checkbox'
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = True
    OnClick = chckCheckboxClick
    Style = stNormal
    TabOrder = 1
    Checked = False
  end
  object lablCheckbox: TIWLabel
    Left = 344
    Top = 72
    Width = 75
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Unchecked'
  end
  object IWCheckBox1: TIWCheckBox
    Left = 216
    Top = 168
    Width = 121
    Height = 21
    ZIndex = 0
    Caption = 'Cool Checkbox'
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = True
    OnClick = IWCheckBox1Click
    Style = stCool
    TabOrder = 2
    Checked = False
  end
  object IWText1: TIWText
    Left = 216
    Top = 104
    Width = 401
    Height = 57
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'The next checkbox is the same as above with two differences:'
      '1) No server side event is defined.'
      '2) Its style is set to stCool.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWRectangle1: TIWRectangle
    Left = 524
    Top = 184
    Width = 200
    Height = 100
    ZIndex = 0
    Font.Color = clYellow
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Color = clPurple
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object IWCheckBox2: TIWCheckBox
    Left = 216
    Top = 224
    Width = 121
    Height = 21
    ZIndex = 0
    Caption = 'Show Region'
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = True
    OnClick = IWCheckBox2Click
    Style = stNormal
    TabOrder = 3
    Checked = True
  end
  object IWLabel4: TIWLabel
    Left = 524
    Top = 164
    Width = 119
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'This is a rectangle'
  end
  object IWRegion1: TIWRegion
    Left = 216
    Top = 256
    Width = 297
    Height = 201
    HorzScrollBar.Range = 289
    VertScrollBar.Range = 185
    TabOrder = 0
    Color = 10674136
    object IWLabel2: TIWLabel
      Left = 8
      Top = 48
      Width = 138
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Caption = 'Horizontal Group Box'
    end
    object IWRadioGroup1: TIWRadioGroup
      Left = 11
      Top = 67
      Width = 166
      Height = 22
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Yes'
        'No'
        'Maybe')
      Layout = glHorizontal
    end
    object IWLabel3: TIWLabel
      Left = 8
      Top = 97
      Width = 122
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Caption = 'Vertical Group Box'
    end
    object IWRadioGroup2: TIWRadioGroup
      Left = 8
      Top = 120
      Width = 97
      Height = 65
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Yes'
        'No'
        'Maybe')
      Layout = glVertical
    end
    object IWText2: TIWText
      Left = 0
      Top = 0
      Width = 289
      Height = 41
      ZIndex = 0
      Font.Color = clPurple
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Lines.Strings = (
        'These controls are on a region (like a panel)'
        'which can be controlled seperately.')
      RawText = False
      UseFrame = False
      WantReturns = True
    end
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 201
    Height = 505
    HorzScrollBar.Range = 193
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 491
    VertScrollBar.Visible = False
    AutoScroll = False
    Color = 10674136
    ParentColor = False
    TabOrder = 1
  end
end
