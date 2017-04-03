object DmEmployee: TDmEmployee
  OnCreate = DmEmployeeCreate
  Left = 126
  Top = 130
  Height = 188
  Width = 414
  object EmployeeDatabase: TDatabase
    AliasName = 'IBLOCAL'
    Connected = True
    DatabaseName = 'EmployeeDemoDB'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 40
    Top = 8
  end
  object SalesTable: TTable
    DatabaseName = 'EmployeeDemoDB'
    IndexFieldNames = 'PO_NUMBER'
    TableName = 'SALES'
    Left = 40
    Top = 56
    object SalesTablePO_NUMBER: TStringField
      DisplayLabel = 'PO Number'
      FieldName = 'PO_NUMBER'
      Required = True
      Size = 8
    end
    object SalesTableCUST_NO: TIntegerField
      DisplayLabel = 'Customer No'
      FieldName = 'CUST_NO'
      Required = True
    end
    object SalesTableSALES_REP: TSmallintField
      DisplayLabel = 'Sales Rep'
      FieldName = 'SALES_REP'
    end
    object SalesTableORDER_STATUS: TStringField
      DisplayLabel = 'Order Status'
      FieldName = 'ORDER_STATUS'
      Required = True
      Size = 7
    end
    object SalesTableORDER_DATE: TDateTimeField
      DisplayLabel = 'Order Date'
      FieldName = 'ORDER_DATE'
      Required = True
    end
    object SalesTableSHIP_DATE: TDateTimeField
      DisplayLabel = 'Ship Date'
      FieldName = 'SHIP_DATE'
    end
    object SalesTableDATE_NEEDED: TDateTimeField
      DisplayLabel = 'Date Needed'
      FieldName = 'DATE_NEEDED'
    end
    object SalesTablePAID: TStringField
      DisplayLabel = 'Paid'
      FieldName = 'PAID'
      Size = 1
    end
    object SalesTableQTY_ORDERED: TIntegerField
      DisplayLabel = 'Quantity Ordered'
      FieldName = 'QTY_ORDERED'
      Required = True
    end
    object SalesTableTOTAL_VALUE: TIntegerField
      DisplayLabel = 'Total Value'
      FieldName = 'TOTAL_VALUE'
      Required = True
    end
    object SalesTableDISCOUNT: TFloatField
      DisplayLabel = 'Discount'
      FieldName = 'DISCOUNT'
      Required = True
    end
    object SalesTableITEM_TYPE: TStringField
      DisplayLabel = 'Item Type'
      FieldName = 'ITEM_TYPE'
      Size = 12
    end
    object SalesTableAGED: TFloatField
      DisplayLabel = 'Aged'
      FieldName = 'AGED'
    end
  end
  object SalesSource: TDataSource
    DataSet = SalesTable
    Left = 40
    Top = 104
  end
  object CustomerTable: TTable
    DatabaseName = 'EmployeeDemoDB'
    IndexFieldNames = 'CUST_NO'
    MasterFields = 'CUST_NO'
    MasterSource = SalesSource
    TableName = 'CUSTOMER'
    Left = 128
    Top = 56
    object CustomerTableCUST_NO: TIntegerField
      DisplayLabel = 'Customer No'
      FieldName = 'CUST_NO'
      Required = True
    end
    object CustomerTableCUSTOMER: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'CUSTOMER'
      Required = True
      Size = 25
    end
    object CustomerTableCONTACT_FIRST: TStringField
      DisplayLabel = 'Contact1'
      FieldName = 'CONTACT_FIRST'
      Size = 15
    end
    object CustomerTableCONTACT_LAST: TStringField
      DisplayLabel = 'Contact2'
      FieldName = 'CONTACT_LAST'
    end
    object CustomerTablePHONE_NO: TStringField
      DisplayLabel = 'Phone No'
      FieldName = 'PHONE_NO'
    end
    object CustomerTableADDRESS_LINE1: TStringField
      DisplayLabel = 'Address 1'
      FieldName = 'ADDRESS_LINE1'
      Size = 30
    end
    object CustomerTableADDRESS_LINE2: TStringField
      DisplayLabel = 'Address 2'
      FieldName = 'ADDRESS_LINE2'
      Size = 30
    end
    object CustomerTableCITY: TStringField
      DisplayLabel = 'City'
      FieldName = 'CITY'
      Size = 25
    end
    object CustomerTableSTATE_PROVINCE: TStringField
      DisplayLabel = 'State or Province'
      FieldName = 'STATE_PROVINCE'
      Size = 15
    end
    object CustomerTableCOUNTRY: TStringField
      DisplayLabel = 'Country'
      FieldName = 'COUNTRY'
      Size = 15
    end
    object CustomerTablePOSTAL_CODE: TStringField
      DisplayLabel = 'Postal Code'
      FieldName = 'POSTAL_CODE'
      Size = 12
    end
    object CustomerTableON_HOLD: TStringField
      DisplayLabel = 'On Hold'
      FieldName = 'ON_HOLD'
      Size = 1
    end
  end
  object CustomerSource: TDataSource
    DataSet = CustomerTable
    Left = 128
    Top = 104
  end
  object EmployeeTable: TTable
    AfterPost = EmployeeTableAfterPost
    BeforeDelete = EmployeeTableBeforeDelete
    DatabaseName = 'EmployeeDemoDB'
    IndexFieldNames = 'EMP_NO'
    TableName = 'EMPLOYEE'
    Left = 224
    Top = 56
    object EmployeeTableEMP_NO: TSmallintField
      DisplayLabel = 'Employee Number'
      FieldName = 'EMP_NO'
      Required = True
    end
    object EmployeeTableFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Required = True
      Size = 15
    end
    object EmployeeTableLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Required = True
    end
    object EmployeeTablePHONE_EXT: TStringField
      DisplayLabel = 'Phone Extension'
      FieldName = 'PHONE_EXT'
      Size = 4
    end
    object EmployeeTableHIRE_DATE: TDateTimeField
      DisplayLabel = 'Hire Date'
      FieldName = 'HIRE_DATE'
      Required = True
    end
    object EmployeeTableDEPT_NO: TStringField
      DisplayLabel = 'Dept No'
      FieldName = 'DEPT_NO'
      Required = True
      Size = 3
    end
    object EmployeeTableJOB_CODE: TStringField
      DisplayLabel = 'Job Code'
      FieldName = 'JOB_CODE'
      Required = True
      Size = 5
    end
    object EmployeeTableJOB_GRADE: TSmallintField
      DisplayLabel = 'Job Grade'
      FieldName = 'JOB_GRADE'
      Required = True
    end
    object EmployeeTableJOB_COUNTRY: TStringField
      DisplayLabel = 'Job Country'
      FieldName = 'JOB_COUNTRY'
      Required = True
      Size = 15
    end
    object EmployeeTableSALARY: TFloatField
      DisplayLabel = 'Salary'
      FieldName = 'SALARY'
      Required = True
    end
    object EmployeeTableFULL_NAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'FULL_NAME'
      Size = 37
    end
  end
  object EmployeeSource: TDataSource
    DataSet = EmployeeTable
    Left = 224
    Top = 104
  end
  object SalaryHistoryTable: TTable
    DatabaseName = 'EmployeeDemoDB'
    IndexFieldNames = 'EMP_NO'
    MasterFields = 'EMP_NO'
    MasterSource = EmployeeSource
    TableName = 'SALARY_HISTORY'
    Left = 328
    Top = 56
    object SalaryHistoryTableEMPLOYEE: TStringField
      DisplayLabel = 'Employee'
      FieldName = 'EMPLOYEE'
      Lookup = True
      LookupDataSet = EmployeeLookup
      LookupKeyFields = 'EMP_NO'
      LookupResultField = 'FULL_NAME'
      KeyFields = 'EMP_NO'
      Size = 37
    end
    object SalaryHistoryTableEMP_NO: TSmallintField
      FieldName = 'EMP_NO'
      Required = True
      DisplayFormat = 'Employee Number'
    end
    object SalaryHistoryTableCHANGE_DATE: TDateTimeField
      DisplayLabel = 'Change Date'
      FieldName = 'CHANGE_DATE'
      Required = True
    end
    object SalaryHistoryTableUPDATER_ID: TStringField
      DisplayLabel = 'Updater ID'
      FieldName = 'UPDATER_ID'
      Required = True
    end
    object SalaryHistoryTableOLD_SALARY: TFloatField
      DisplayLabel = 'Old Salary'
      FieldName = 'OLD_SALARY'
      Required = True
    end
    object SalaryHistoryTablePERCENT_CHANGE: TFloatField
      DisplayLabel = '% Change'
      FieldName = 'PERCENT_CHANGE'
      Required = True
    end
    object SalaryHistoryTableNEW_SALARY: TFloatField
      DisplayLabel = 'New Salary'
      FieldName = 'NEW_SALARY'
    end
  end
  object SalaryHistorySource: TDataSource
    DataSet = SalaryHistoryTable
    Left = 328
    Top = 104
  end
  object ShipOrderProc: TStoredProc
    DatabaseName = 'EmployeeDemoDB'
    StoredProcName = 'SHIP_ORDER'
    Params.Data = {0100010006504F5F4E554D0101020030000000}
    Left = 128
    Top = 8
  end
  object DeleteEmployeeProc: TStoredProc
    DatabaseName = 'EmployeeDemoDB'
    StoredProcName = 'DELETE_EMPLOYEE'
    Params.Data = {0100010007454D505F4E554D01030400000000000000}
    Left = 224
    Top = 8
  end
  object EmployeeLookup: TTable
    AfterPost = EmployeeTableAfterPost
    BeforeDelete = EmployeeTableBeforeDelete
    DatabaseName = 'EmployeeDemoDB'
    IndexFieldNames = 'EMP_NO'
    TableName = 'EMPLOYEE'
    Left = 328
    Top = 8
    object SmallintField1: TSmallintField
      DisplayLabel = 'Employee Number'
      FieldName = 'EMP_NO'
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Required = True
      Size = 15
    end
    object StringField2: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Required = True
    end
    object StringField3: TStringField
      DisplayLabel = 'Phone Extension'
      FieldName = 'PHONE_EXT'
      Size = 4
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Hire Date'
      FieldName = 'HIRE_DATE'
      Required = True
    end
    object StringField4: TStringField
      DisplayLabel = 'Dept No'
      FieldName = 'DEPT_NO'
      Required = True
      Size = 3
    end
    object StringField5: TStringField
      DisplayLabel = 'Job Code'
      FieldName = 'JOB_CODE'
      Required = True
      Size = 5
    end
    object SmallintField2: TSmallintField
      DisplayLabel = 'Job Grade'
      FieldName = 'JOB_GRADE'
      Required = True
    end
    object StringField6: TStringField
      DisplayLabel = 'Job Country'
      FieldName = 'JOB_COUNTRY'
      Required = True
      Size = 15
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Salary'
      FieldName = 'SALARY'
      Required = True
    end
    object StringField7: TStringField
      DisplayLabel = 'Name'
      FieldName = 'FULL_NAME'
      Size = 37
    end
  end
end
