object QueryForm: TQueryForm
  Left = 247
  Top = 138
  Width = 443
  Height = 332
  Caption = 'Background Query'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poDefault
  PixelsPerInch = 96
  TextHeight = 13
  object QueryLabel: TLabel
    Left = 0
    Top = 0
    Width = 435
    Height = 13
    Align = alTop
    Caption = '[Query text]'
    WordWrap = True
  end
  object StatusLine: TLabel
    Left = 0
    Top = 292
    Width = 435
    Height = 13
    Align = alBottom
    Caption = 'Opening...'
    WordWrap = True
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 13
    Width = 435
    Height = 279
    Align = alClient
    DataSource = DataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource: TDataSource
    Left = 112
    Top = 248
  end
  object Query: TQuery
    Left = 80
    Top = 248
  end
  object Session: TSession
    Left = 16
    Top = 248
  end
  object Database: TDatabase
    LoginPrompt = False
    SessionName = 'Default'
    Left = 48
    Top = 248
  end
end
