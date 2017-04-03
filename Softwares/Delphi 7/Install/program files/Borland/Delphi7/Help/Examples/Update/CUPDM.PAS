unit CUpDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, DBTables;

type
  TDataModuleCache = class(TDataModule)
    TableRefresh: TTable;
    DataSourceCache: TDataSource;
    DataSourceRefresh: TDataSource;
    QueryCache: TQuery;
    UpdateSQLCache: TUpdateSQL;
    QueryCacheCUST_NO: TIntegerField;
    QueryCacheCUSTOMER: TStringField;
    QueryCacheCONTACT_FIRST: TStringField;
    QueryCacheCONTACT_LAST: TStringField;
    QueryCachePHONE_NO: TStringField;
    QueryCacheADDRESS_LINE1: TStringField;
    QueryCacheADDRESS_LINE2: TStringField;
    QueryCacheCITY: TStringField;
    QueryCacheSTATE_PROVINCE: TStringField;
    QueryCacheCOUNTRY: TStringField;
    QueryCachePOSTAL_CODE: TStringField;
    QueryCacheON_HOLD: TStringField;
    DBaseCache: TDatabase;
    procedure QueryCacheUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleCache: TDataModuleCache;

implementation

uses CUpError;

{$R *.DFM}

procedure TDataModuleCache.QueryCacheUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  if EDBEngineError(e).errors[0].errorcode = 9729 then
  begin
    UpdateAction := FormError.ErrorDecision(DataSet, E, UpdateKind);
  end;
end;


end.
