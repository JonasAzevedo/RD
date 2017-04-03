object EmployeeForm: TEmployeeForm
  Left = 241
  Top = 111
  AutoScroll = False
  Caption = 'Employee Administrator'
  ClientHeight = 188
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 28
    Top = 61
    Width = 50
    Height = 13
    Caption = 'First Name'
    FocusControl = FirstName
  end
  object Label3: TLabel
    Left = 123
    Top = 61
    Width = 61
    Height = 13
    AutoSize = False
    Caption = 'Last Name'
    FocusControl = LastName
  end
  object Label4: TLabel
    Left = 240
    Top = 62
    Width = 15
    Height = 13
    Caption = 'Ext'
    FocusControl = PhoneExt
  end
  object Label5: TLabel
    Left = 28
    Top = 118
    Width = 45
    Height = 13
    Caption = 'Hire Date'
    FocusControl = HireDate
  end
  object Label10: TLabel
    Left = 123
    Top = 116
    Width = 29
    Height = 13
    Caption = 'Salary'
    FocusControl = Salary
  end
  object Label11: TLabel
    Left = 19
    Top = 18
    Width = 52
    Height = 16
    Alignment = taRightJustify
    Caption = 'Emp #: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 73
    Top = 18
    Width = 68
    Height = 16
    DataField = 'EmpNo'
    DataSource = EmpData
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FirstName: TDBEdit
    Left = 28
    Top = 76
    Width = 78
    Height = 21
    DataField = 'FirstName'
    DataSource = EmpData
    TabOrder = 0
  end
  object LastName: TDBEdit
    Left = 123
    Top = 76
    Width = 99
    Height = 21
    DataField = 'LastName'
    DataSource = EmpData
    TabOrder = 1
  end
  object PhoneExt: TDBEdit
    Left = 240
    Top = 76
    Width = 49
    Height = 21
    DataField = 'PhoneExt'
    DataSource = EmpData
    TabOrder = 2
  end
  object HireDate: TDBEdit
    Left = 28
    Top = 132
    Width = 73
    Height = 21
    DataField = 'HireDate'
    DataSource = EmpData
    TabOrder = 3
  end
  object Salary: TDBEdit
    Left = 121
    Top = 132
    Width = 96
    Height = 21
    DataField = 'Salary'
    DataSource = EmpData
    TabOrder = 4
  end
  object QueryButton: TButton
    Left = 320
    Top = 72
    Width = 105
    Height = 25
    Caption = '&Get Employees'
    TabOrder = 5
    OnClick = QueryButtonClick
  end
  object DBNavigator1: TDBNavigator
    Left = 142
    Top = 14
    Width = 138
    Height = 25
    DataSource = EmpData
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost, nbCancel]
    TabOrder = 6
  end
  object UpdateButton: TButton
    Left = 320
    Top = 103
    Width = 105
    Height = 25
    Caption = '&Update Employees'
    TabOrder = 7
    OnClick = UpdateButtonClick
  end
  object UndoButton: TButton
    Left = 320
    Top = 134
    Width = 105
    Height = 25
    Caption = 'U&ndo Last Change'
    TabOrder = 8
    OnClick = UndoButtonClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 169
    Width = 448
    Height = 19
    Panels = <
      item
        Width = 350
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object EmpData: TDataSource
    DataSet = Employees
    OnDataChange = EmpDataDataChange
    Left = 357
    Top = 12
  end
  object Employees: TClientDataSet
    Active = True
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'EmpQueryProvider'
    RemoteServer = RemoteServer1
    OnReconcileError = EmployeesReconcileError
    Left = 326
    Top = 12
  end
  object RemoteServer1: TDCOMConnection
    Connected = True
    ServerGUID = '{53BC6562-5B3E-11D0-9FFC-00A0248E4B9A}'
    ServerName = 'Serv.EmpServer'
    Left = 389
    Top = 12
  end
end
