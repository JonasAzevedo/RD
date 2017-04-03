object formEditGrid: TformEditGrid
  Left = 0
  Top = 0
  Width = 778
  Height = 509
  HorzScrollBar.Range = 729
  VertScrollBar.Range = 345
  Background.Fixed = False
  HandleTabs = False
  Title = 'Grids'
  SupportedBrowsers = [brIE, brNetscape6]
  OnCreate = IWFormModuleBaseCreate
  DesignLeft = 294
  DesignTop = 110
  object tablGrid: TIWGrid
    Left = 216
    Top = 88
    Width = 513
    Height = 257
    ZIndex = 0
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 0
    BorderStyle = tfDefault
    Caption = 'Account Balances'
    CellPadding = 4
    CellSpacing = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    OnRenderCell = tablGridRenderCell
    UseFrame = False
    UseWidth = False
    ColumnCount = 4
    OnCellClick = tablGridCellClick
    RowCount = 10
  end
  object IWText1: TIWText
    Left = 216
    Top = 8
    Width = 377
    Height = 73
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'To edit a name, click on the name.'
      ''
      'To edit the amounts, simply change them and then click on the'
      'total to recalculate the total.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  inline framMenu1: TframMenu
    Width = 209
    Height = 509
    HorzScrollBar.Range = 193
    VertScrollBar.Range = 491
    Align = alLeft
  end
end
