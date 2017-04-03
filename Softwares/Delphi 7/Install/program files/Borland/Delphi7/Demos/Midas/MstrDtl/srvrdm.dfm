object ProjectData: TProjectData
  OldCreateOrder = True
  Left = 466
  Top = 290
  Height = 479
  Width = 741
  object Project: TTable
    DatabaseName = 'ProjectDB'
    TableName = 'PROJECT'
    Left = 24
    Top = 56
  end
  object Employee: TQuery
    DatabaseName = 'ProjectDB'
    SQL.Strings = (
      'select EMP_NO,FULL_NAME from EMPLOYEE')
    Left = 24
    Top = 152
  end
  object EmpProj: TQuery
    DatabaseName = 'ProjectDB'
    DataSource = ProjectSource
    SQL.Strings = (
      'select * from EMPLOYEE_PROJECT E where E.PROJ_ID = :PROJ_ID')
    Left = 24
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'PROJ_ID'
        ParamType = ptUnknown
      end>
  end
  object ProjectProvider: TDataSetProvider
    DataSet = Project
    Constraints = True
    Options = [poCascadeDeletes]
    BeforeUpdateRecord = ProjectProviderBeforeUpdateRecord
    Left = 96
    Top = 56
  end
  object UpdateQuery: TQuery
    DatabaseName = 'ProjectDB'
    Left = 24
    Top = 200
  end
  object Database: TDatabase
    AliasName = 'IBLOCAL'
    DatabaseName = 'ProjectDB'
    HandleShared = True
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 24
    Top = 8
  end
  object ProjectSource: TDataSource
    DataSet = Project
    Left = 96
    Top = 104
  end
  object EmployeeProvider: TDataSetProvider
    DataSet = Employee
    Constraints = True
    Left = 96
    Top = 152
  end
end