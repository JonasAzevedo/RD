object Form1: TForm1
  Left = 243
  Top = 107
  ActiveControl = ListBox1
  BorderStyle = bsDialog
  Caption = 'OwnerDraw'
  ClientHeight = 359
  ClientWidth = 276
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 20
    Top = 20
    Width = 81
    Height = 21
    Caption = 'System Fonts'
  end
  object FontLabel: TLabel
    Left = 20
    Top = 305
    Width = 241
    Height = 20
    AutoSize = False
  end
  object ListBox1: TListBox
    Left = 20
    Top = 45
    Width = 241
    Height = 251
    ItemHeight = 16
    Style = lbOwnerDrawVariable
    TabOrder = 0
    OnClick = ListBox1Click
    OnDrawItem = DrawItem
    OnMeasureItem = ListBox1MeasureItem
  end
end
