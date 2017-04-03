object Form1: TForm1
  Left = 245
  Top = 115
  AutoScroll = False
  Caption = 'AdHoc Query Demo'
  ClientHeight = 318
  ClientWidth = 508
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 4
    Width = 28
    Height = 13
    Caption = 'Query'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 90
    Width = 487
    Height = 2
    Shape = bsTopLine
  end
  object SQL: TMemo
    Left = 12
    Top = 20
    Width = 321
    Height = 61
    Lines.Strings = (
      'select * from customer')
    TabOrder = 0
  end
  object DatabaseName: TComboBox
    Left = 341
    Top = 20
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'DBDEMOS'
    OnClick = DatabaseNameClick
  end
  object RunButton: TButton
    Left = 342
    Top = 51
    Width = 144
    Height = 25
    Caption = '&Run Query'
    Default = True
    TabOrder = 2
    OnClick = RunButtonClick
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 100
    Width = 479
    Height = 207
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ClientData
    Left = 90
    Top = 256
  end
  object RemoteServer: TDCOMConnection
    Connected = True
    ServerGUID = '{85C677A2-F92F-11D0-9FFC-00A0248E4B9A}'
    ServerName = 'Serv.AdHocQueryDemo'
    Left = 20
    Top = 256
  end
  object ClientData: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'AdHocProvider'
    RemoteServer = RemoteServer
    Left = 56
    Top = 256
  end
end
