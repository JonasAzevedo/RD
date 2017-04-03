object Form1: TForm1
  Left = 35
  Top = 119
  Width = 311
  Height = 83
  Caption = 'Any Client'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 101
    Top = 25
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 12
    Top = 18
    Width = 75
    Height = 25
    Caption = 'Get Any'
    TabOrder = 0
    OnClick = Button1Click
  end
end
