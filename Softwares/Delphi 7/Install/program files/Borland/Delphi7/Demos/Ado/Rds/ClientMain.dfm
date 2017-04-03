object Form1: TForm1
  Left = 263
  Top = 204
  AutoScroll = False
  Caption = 'RDS Client Demo'
  ClientHeight = 211
  ClientWidth = 412
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 35
    Width = 412
    Height = 176
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 412
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object ServerNameCombo: TComboBox
      Left = 64
      Top = 10
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'RDSServer.DataFactory'
      Items.Strings = (
        'RServer.RDSAppServer'
        'RDSServer.DataFactory')
    end
    object OpenButton: TButton
      Left = 218
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Open'
      TabOrder = 1
      OnClick = OpenButtonClick
    end
  end
  object DataSource1: TDataSource
    DataSet = Employee
    Left = 65
    Top = 165
  end
  object Employee: TADODataSet
    ConnectionString = 
      'FILE NAME=C:\Program Files\Common Files\System\OLE DB\Data Links' +
      '\DBDemos.UDL'
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'Employee'
    CommandType = cmdTable
    Parameters = <>
    RDSConnection = RDSConnection1
    Left = 29
    Top = 165
  end
  object RDSConnection1: TRDSConnection
    Left = 15
    Top = 3
  end
end
