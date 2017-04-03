object formTreeView: TformTreeView
  Left = 0
  Top = 0
  Width = 636
  Height = 557
  HorzScrollBar.Range = 625
  VertScrollBar.Range = 513
  Visible = False
  Background.Fixed = False
  HandleTabs = False
  Title = 'Simple Input'
  SupportedBrowsers = [brIE, brNetscape6]
  OnCreate = IWAppFormCreate
  DesignLeft = 183
  DesignTop = 184
  object IWTreeView1: TIWTreeView
    Left = 204
    Top = 8
    Width = 149
    Height = 481
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Items = <
      item
        Caption = 'Root'
        Expanded = True
        Name = 'IWTreeView1Item0'
        SubItems = <
          item
            Caption = 'Item1'
            Expanded = True
            Name = 'IWTreeView1Item1'
            OnClick = IWTreeView1IWTreeView1Item0IWTreeView1Item1Click
            SubItems = <>
          end
          item
            Caption = 'Item2'
            Expanded = True
            Name = 'IWTreeView1Item2'
            OnClick = IWTreeView1IWTreeView1Item0IWTreeView1Item2Click
            SubItems = <>
          end>
      end>
  end
  object IWText1: TIWText
    Left = 364
    Top = 8
    Width = 257
    Height = 121
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      
        'TreeView items can be created either at design-time or at runtim' +
        'e.'
      ''
      'Item1 and Item2 have been created at design-time.'
      'To create a new item at runtime, click on Item2.'
      
        'This will associate the link to a message corresponding to that ' +
        'item.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWButton1: TIWButton
    Left = 368
    Top = 132
    Width = 75
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Collapse'
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
  object IWButton2: TIWButton
    Left = 368
    Top = 184
    Width = 75
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Expand'
    Color = 13160660
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TabOrder = 3
    OnClick = IWButton2Click
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 201
    Height = 557
    HorzScrollBar.Range = 193
    VertScrollBar.Range = 491
    Align = alLeft
    AutoScroll = False
    TabOrder = 0
  end
end
