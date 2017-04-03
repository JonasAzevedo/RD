{*******************************************************}
{                                                       }
{      Copyright (c) 1999-2002 Borland Corporation      }
{                                                       }
{*******************************************************}
unit dmEmployee;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Provider;

type
  TdmEmploy = class(TDataModule)
    Session1: TSession;
    EmployeeDatabase: TDatabase;
    qryEmployee: TQuery;
    proEmployee: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEmploy: TdmEmploy;

implementation

{$R *.DFM}

end.
