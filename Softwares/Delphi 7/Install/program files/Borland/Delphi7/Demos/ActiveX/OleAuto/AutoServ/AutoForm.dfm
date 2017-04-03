object MainForm: TMainForm
  Left = 292
  Top = 119
  BorderStyle = bsSingle
  Caption = 'Automation Demo'
  ClientHeight = 202
  ClientWidth = 193
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object CreateButton: TButton
    Left = 8
    Top = 8
    Width = 177
    Height = 25
    Caption = 'Create Memos'
    TabOrder = 0
    OnClick = CreateButtonClick
  end
  object AddTextButton: TButton
    Left = 8
    Top = 40
    Width = 177
    Height = 25
    Caption = 'Add Text to Memos'
    TabOrder = 1
    OnClick = AddTextButtonClick
  end
  object TileButton: TButton
    Left = 8
    Top = 72
    Width = 177
    Height = 25
    Caption = 'Tile Memos'
    TabOrder = 2
    OnClick = TileButtonClick
  end
  object CascadeButton: TButton
    Left = 8
    Top = 104
    Width = 177
    Height = 25
    Caption = 'Cascade Memos'
    TabOrder = 3
    OnClick = CascadeButtonClick
  end
  object CloseButton: TButton
    Left = 8
    Top = 136
    Width = 177
    Height = 25
    Caption = 'Close Memos'
    TabOrder = 4
    OnClick = CloseButtonClick
  end
  object ExitButton: TButton
    Left = 8
    Top = 168
    Width = 177
    Height = 25
    Caption = 'Exit'
    TabOrder = 5
    OnClick = ExitButtonClick
  end
end
