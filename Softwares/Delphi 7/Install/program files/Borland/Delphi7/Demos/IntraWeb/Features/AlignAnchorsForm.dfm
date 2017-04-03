object formAlignAnchor: TformAlignAnchor
  Left = 0
  Top = 0
  Width = 738
  Height = 520
  HorzScrollBar.Range = 737
  HorzScrollBar.Visible = False
  VertScrollBar.Range = 493
  VertScrollBar.Visible = False
  Background.Fixed = False
  HandleTabs = False
  Title = 'Features Demo'
  SupportedBrowsers = [brIE, brNetscape6]
  DesignLeft = 342
  DesignTop = 188
  inline framMenu1: TframMenu
    Width = 201
    Height = 520
    Align = alLeft
    Color = clBtnFace
  end
  object IWRegion1: TIWRegion
    Left = 201
    Top = 0
    Width = 537
    Height = 520
    Align = alClient
    TabOrder = 1
    Color = 8436927
    object IWRectangle1: TIWRectangle
      Left = 0
      Top = 0
      Width = 537
      Height = 36
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      ZIndex = 0
      Text = 'Aligned on Top and anchored on bottom'
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Color = 13487480
      Alignment = taCenter
      VAlign = vaMiddle
    end
    object IWRectangle2: TIWRectangle
      Left = 0
      Top = 488
      Width = 537
      Height = 32
      Align = alBottom
      ZIndex = 0
      Text = 'Aligned on Bottom'
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Color = 11530232
      Alignment = taCenter
      VAlign = vaMiddle
    end
    object IWRectangle3: TIWRectangle
      Left = 351
      Top = 440
      Width = 175
      Height = 43
      Anchors = [akRight, akBottom]
      ZIndex = 0
      Text = 'Anchored to bottom/right'
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Color = 10531315
      Alignment = taCenter
      VAlign = vaTop
    end
    object IWButton1: TIWButton
      Left = 136
      Top = 58
      Width = 250
      Height = 25
      Anchors = [akLeft, akRight]
      ZIndex = 1
      ButtonType = btButton
      Caption = 'Anchored on Left and Right'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 0
    end
    object IWRegion2: TIWRegion
      Left = 167
      Top = 183
      Width = 220
      Height = 146
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      Color = clNone
      object IWRectangle5: TIWRectangle
        Left = 65
        Top = 33
        Width = 95
        Height = 75
        Align = alClient
        ZIndex = 0
        Text = 'alClient'
        Font.Color = clNone
        Font.Enabled = True
        Font.Size = 10
        Font.Style = []
        Color = clYellow
        Alignment = taCenter
        VAlign = vaMiddle
      end
      object IWRectangle4: TIWRectangle
        Left = 0
        Top = 33
        Width = 65
        Height = 75
        Align = alLeft
        ZIndex = 0
        Text = 'alLeft'
        Font.Color = clNone
        Font.Enabled = True
        Font.Size = 10
        Font.Style = []
        Color = clLime
        Alignment = taCenter
        VAlign = vaMiddle
      end
      object IWRectangle6: TIWRectangle
        Left = 0
        Top = 0
        Width = 220
        Height = 33
        Align = alTop
        ZIndex = 0
        Text = 'alTop'
        Font.Color = clNone
        Font.Enabled = True
        Font.Size = 10
        Font.Style = []
        Color = clRed
        Alignment = taCenter
        VAlign = vaMiddle
      end
      object IWRectangle7: TIWRectangle
        Left = 160
        Top = 33
        Width = 60
        Height = 75
        Align = alRight
        ZIndex = 0
        Text = 'alRight'
        Font.Color = clNone
        Font.Enabled = True
        Font.Size = 10
        Font.Style = []
        Color = clAqua
        Alignment = taCenter
        VAlign = vaMiddle
      end
      object IWRectangle8: TIWRectangle
        Left = 0
        Top = 108
        Width = 220
        Height = 38
        Align = alBottom
        ZIndex = 0
        Text = 'alBottom'
        Font.Color = clNone
        Font.Enabled = True
        Font.Size = 10
        Font.Style = []
        Color = clFuchsia
        Alignment = taCenter
        VAlign = vaMiddle
      end
    end
  end
end
