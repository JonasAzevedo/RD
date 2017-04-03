object DM: TDM
  OldCreateOrder = True
  Left = 353
  Top = 285
  Height = 479
  Width = 741
  object ProjectSource: TDataSource
    DataSet = Project
    Left = 96
    Top = 56
  end
  object EmpProjSource: TDataSource
    DataSet = Emp_Proj
    Left = 96
    Top = 104
  end
  object EmployeeSource: TDataSource
    DataSet = Employee
    Left = 96
    Top = 152
  end
  object Project: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'PROJ_ID'
    PacketRecords = 5
    Params = <>
    ProviderName = 'ProjectProvider'
    RemoteServer = DCOMConnection
    OnNewRecord = ProjectNewRecord
    OnReconcileError = ReconcileError
    Left = 24
    Top = 56
    object ProjectPROJ_ID: TStringField
      FieldName = 'PROJ_ID'
      Size = 5
    end
    object ProjectPROJ_NAME: TStringField
      FieldName = 'PROJ_NAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ProjectPROJ_DESC: TMemoField
      FieldName = 'PROJ_DESC'
      BlobType = ftMemo
      Size = 1
    end
    object ProjectTEAM_LEADER: TSmallintField
      FieldName = 'TEAM_LEADER'
    end
    object ProjectPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 12
    end
    object ProjectEmpProj: TDataSetField
      FieldName = 'EmpProj'
    end
  end
  object Emp_Proj: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = ProjectEmpProj
    Params = <>
    OnReconcileError = ReconcileError
    Left = 24
    Top = 104
    object Emp_ProjEMP_NO: TSmallintField
      FieldName = 'EMP_NO'
    end
    object Emp_ProjPROJ_ID: TStringField
      FieldName = 'PROJ_ID'
      Size = 5
    end
    object Emp_ProjEmployeeName: TStringField
      DisplayLabel = 'Employee Name'
      FieldKind = fkLookup
      FieldName = 'EmployeeName'
      LookupDataSet = Employee
      LookupKeyFields = 'EMP_NO'
      LookupResultField = 'FULL_NAME'
      KeyFields = 'EMP_NO'
      Lookup = True
    end
  end
  object Employee: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'EMP_NO'
    Params = <>
    ProviderName = 'EmployeeProvider'
    ReadOnly = True
    RemoteServer = DCOMConnection
    Left = 24
    Top = 152
  end
  object DCOMConnection: TDCOMConnection
    Connected = True
    ServerGUID = '{F409BC32-963E-11D0-880E-00A0248E5091}'
    ServerName = 'Serv.ProjectData'
    Left = 56
    Top = 8
  end
end