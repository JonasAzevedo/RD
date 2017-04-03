object Form1: TForm1
  Left = 209
  Top = 106
  Width = 497
  Height = 379
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 16
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Run SQL'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 128
    Top = 8
    Width = 353
    Height = 89
    Lines.Strings = (
      'select * from employee')
    TabOrder = 1
    OnChange = Memo1Change
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 104
    Width = 465
    Height = 241
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 16
    Top = 40
    Width = 89
    Height = 25
    Caption = 'GetNextPacket'
    Enabled = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 4
    Params = <>
    ProviderName = 'DataSetProvider1'
    RemoteServer = RemoteServer1
    AfterOpen = CheckButtonActive
    AfterClose = CheckButtonActive
    BeforeGetRecords = ClientDataSet1BeforeGetRecords
    Left = 56
    Top = 64
  end
  object RemoteServer1: TDCOMConnection
    ServerGUID = '{0CE99804-9F28-11D1-8944-00A0248E5091}'
    ServerName = 'Server.Pooler'
    Left = 16
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 88
    Top = 64
  end
  object CDSClone: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 32
  end
end
