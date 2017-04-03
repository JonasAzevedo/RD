object MainForm: TMainForm
  Left = 240
  Top = 428
  AutoScroll = False
  Caption = 'Employee Data Server'
  ClientHeight = 144
  ClientWidth = 230
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 16
    Top = 16
    Width = 193
    Height = 111
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 47
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Queries: '
    end
    object Label2: TLabel
      Left = 26
      Top = 22
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Clients: '
    end
    object QueryCount: TLabel
      Left = 72
      Top = 48
      Width = 6
      Height = 13
      Caption = '0'
    end
    object ClientCount: TLabel
      Left = 72
      Top = 23
      Width = 6
      Height = 13
      Caption = '0'
    end
  end
end
