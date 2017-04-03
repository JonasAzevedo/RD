object Form1: TForm1
  Left = 237
  Top = 143
  AutoScroll = False
  Caption = 'Briefcase Demo'
  ClientHeight = 332
  ClientWidth = 571
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = Form1CloseQuery
  OnCreate = Form1Create
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 38
    Width = 571
    Height = 294
    Align = alClient
    DataSource = EmpSource
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
    Width = 571
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object ConnectionInd: TCheckBox
      Left = 58
      Top = 11
      Width = 79
      Height = 17
      Caption = 'Connected'
      TabOrder = 0
      OnClick = ConnectionIndClick
    end
    object UpdateButton: TButton
      Left = 153
      Top = 6
      Width = 84
      Height = 25
      Caption = 'Update Server'
      TabOrder = 1
      OnClick = UpdateButtonClick
    end
    object RefreshButton: TButton
      Left = 250
      Top = 6
      Width = 87
      Height = 25
      Caption = 'Refresh Data'
      TabOrder = 2
      OnClick = RefreshButtonClick
    end
    object SaveButton: TButton
      Left = 352
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Save to disk'
      TabOrder = 3
      OnClick = SaveButtonClick
    end
  end
  object Employees: TADODataSet
    Connection = Connection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'employee'
    CommandType = cmdTable
    Parameters = <>
    Left = 20
    Top = 297
  end
  object EmpSource: TDataSource
    DataSet = Employees
    Left = 53
    Top = 297
  end
  object Connection: TADOConnection
    ConnectionString = 
      'FILE NAME=C:\Program Files\Common Files\System\OLE DB\Data Links' +
      '\DBDemos.UDL'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 
      'C:\Program Files\Common Files\System\OLE DB\Data Links\DBDemos.U' +
      'DL'
    Left = 13
    Top = 3
  end
end
