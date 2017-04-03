unit clxemployee;

interface

uses
  SysUtils, Classes, Provider, DBClient, DB, SqlExpr, DBXpress, FMTBcd;

type
  TEmployeeDM = class(TDataModule)
    employeesource: TDataSource;
    employeeconnection: TSQLConnection;
    Employeequery: TSQLQuery;
    employeecds: TClientDataSet;
    employeeprov: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmployeeDM: TEmployeeDM;

implementation

{$R *.xfm}

end.
