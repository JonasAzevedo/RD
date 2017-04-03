object formGrids: TformGrids
  Left = 0
  Top = 0
  Width = 582
  Height = 505
  HorzScrollBar.Range = 561
  VertScrollBar.Range = 505
  Background.Fixed = False
  HandleTabs = False
  Title = 'Grids'
  SupportedBrowsers = [brIE, brNetscape6]
  OnCreate = IWFormModuleBaseCreate
  DesignLeft = 309
  DesignTop = 216
  object tablGrid: TIWGrid
    Left = 216
    Top = 32
    Width = 345
    Height = 177
    ZIndex = 0
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 0
    BorderStyle = tfDefault
    Caption = 'Account Balances'
    CellPadding = 2
    CellSpacing = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    OnRenderCell = tablGridRenderCell
    UseFrame = False
    UseWidth = False
    ColumnCount = 5
    OnCellClick = tablGridCellClick
    RowCount = 10
  end
  object chckUseFrame: TIWCheckBox
    Left = 216
    Top = 8
    Width = 121
    Height = 21
    ZIndex = 0
    Caption = 'Use Frame'
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = True
    OnClick = chckUseFrameClick
    Style = stCool
    TabOrder = 0
    Checked = False
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
    Color = clWhite
    ParentColor = False
    TabOrder = 0
  end
end
