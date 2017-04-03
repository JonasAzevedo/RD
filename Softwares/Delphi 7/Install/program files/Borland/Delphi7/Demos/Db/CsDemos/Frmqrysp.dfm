object FrmQueryProc: TFrmQueryProc
  Left = 151
  Top = 69
  Width = 381
  Height = 367
  Hint = 
    'Explore the Get_Emp_Proj procedure in the IBLOCAL alias to see t' +
    'he query procedure'
  ActiveControl = Panel1
  Caption = 'Employee Project Assignments'
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 373
    Height = 41
    Align = alTop
    TabOrder = 0
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = DmEmployee.EmployeeSource
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 305
      Top = 8
      Width = 60
      Height = 25
      Hint = 'Exit and close this form'
      Caption = 'E&xit'
      TabOrder = 1
      Kind = bkClose
      Style = bsNew
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 373
    Height = 137
    Align = alTop
    BevelInner = bvLowered
    BorderWidth = 4
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 6
      Top = 6
      Width = 361
      Height = 125
      Hint = 'Select an employee to execute the query procedure'
      Align = alClient
      BorderStyle = bsNone
      DataSource = EmployeeSource
      TabOrder = 0
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 178
    Width = 373
    Height = 146
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 4
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 6
      Top = 6
      Width = 361
      Height = 134
      Hint = 'Use SQL Monitor to see the Get_Emp_Proj query procedure execute'
      Align = alClient
      BorderStyle = bsNone
      DataSource = EmployeeProjectsSource
      TabOrder = 0
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 324
    Width = 373
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object EmployeeProjectsQuery: TQuery
    DatabaseName = 'EmployeeDemoDB'
    Params.Data = {0100010006454D505F4E4F0002020002000001}
    SQL.Strings = (
      'Select * from Get_Emp_Proj( :EMP_NO )')
    Left = 168
    Top = 200
  end
  object EmployeeProjectsSource: TDataSource
    DataSet = EmployeeProjectsQuery
    Left = 168
    Top = 248
  end
  object EmployeeSource: TDataSource
    DataSet = DmEmployee.EmployeeTable
    Enabled = False
    OnDataChange = EmployeeDataChange
    Left = 168
    Top = 72
  end
end
