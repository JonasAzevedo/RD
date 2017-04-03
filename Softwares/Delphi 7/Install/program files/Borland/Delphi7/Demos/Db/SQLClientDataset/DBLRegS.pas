
{*******************************************************}
{                                                       }
{       Borland Delphi Visual Component Library         }
{       Local CliendDataSet Component Registration      }
{                                                       }
{       Copyright (c) 1997,99 Inprise Corporation       }
{                                                       }
{*******************************************************}

unit DBLRegS;

interface

uses
  SysUtils, Classes, DBClient, Provider, FldLinks, DBReg, 
  DBConsts, DesignIntf, DesignEditors, DBLReg, SqlExpr, TreeIntf,
  DsnDbCst, MidConst, DB, DBLocalS, {$IFDEF MSWINDOWS}SqlReg{$ENDIF}{$IFDEF LINUX}DBWaiter{$ENDIF};
type

 TPropertyType = (typeCommandText, typeIndexNames, typeSortFields, typeKeyNames, typeConnectionNames);

{ Property Editors }

{ TLocalCDSEditProperty }

  TLocalCDSEditProperty = class(TDBStringProperty)
  private
    FPropertyType: TPropertyType;
    FCommandType: TSQLCommandType;
  public
    procedure Activate; override;
    function AutoFill: Boolean; override;
    procedure Edit; override;
    procedure EditSQLText; virtual; 
    function GetAttributes: TPropertyAttributes; override;
    function GetConnection(Opened: Boolean): TCustomConnection;
    procedure GetValueList(List: TStrings); override;
    property CommandType: TSQLCommandType read FCommandType write FCommandType;
    property PropertyType: TPropertyType read FPropertyType write FPropertyType;
  end;

{ TLocalCDSIndexNameProperty }

  TLocalCDSIndexNameProperty = class(TLocalCDSEditProperty)
  public
    procedure Activate; override;
  end;

{ TLocalCDSKeyNameProperty }

  TLocalCDSKeyNameProperty = class(TLocalCDSEditProperty)
  public
    procedure Activate; override;
  end;

{ TSQLClientDataSetSelectionEditor }

  TSQLClientDataSetSelectionEditor = class(TSelectionEditor)
  public
    procedure RequiresUnits(Proc: TGetStrProc); override;
  end;

{$IFDEF MSWINDOWS}
  TSQLClientDataSetSprig = class(TComponentSprig)
  public
    function AnyProblems: Boolean; override;
    function Caption: string; override;
    procedure FigureParent; override;
    function DragDropTo(AItem: TSprig): Boolean; override;
    function DragOverTo(AItem: TSprig): Boolean; override;
    class function PaletteOverTo(AParent: TSprig; AClass: TClass): Boolean; override;
  end;
{$ENDIF}
procedure Register;

function LoadSQLClientDatasetFromFile(const ADataset: TClientDataset): Boolean;

implementation

uses
  TypInfo, Consts, SqlEdit, Dialogs, DBCommon, 
  Forms, Controls, {$IFDEF MSWINDOWS}CDSEdit{$ENDIF}{$IFDEF LINUX}CDSEditLin{$ENDIF};

function LoadSQLClientDatasetFromFile(const ADataset: TClientDataset): Boolean;
var
  FileName: string;
begin
  FileName := GetLoadFromFileName;
  if FileName <> '' then
    TSQLClientDataset(ADataSet).LoadFromFile(FileName);
  Result := FileName <> '';
end;

{ TLocalCDSEditProperty }

function TLocalCDSEditProperty.GetAttributes: TPropertyAttributes;
begin
  if (CommandType in [ctTable, ctStoredProc]) then
    Result := [paValueList, paSortList, paMultiSelect] else {Drop down list for name list}
    Result := [paMultiSelect, paRevertable, paDialog]; {SQL or File}
{$IFDEF LINUX}
  Result := Result + [paVCL]; 
{$ENDIF}
end;

procedure TLocalCDSEditProperty.Activate;
begin
  PropertyType := typeCommandText;
  CommandType := TSQLCommandType(TSQLClientDataSet(GetComponent(0)).CommandType);
end;

procedure TLocalCDSEditProperty.EditSQLText;
var
  Command: string;
  Connection: TCustomConnection;
  Component: TComponent;
  DataSet: TSQLClientDataSet;
  Success: Boolean;
  Q: string;
  TblName: string;
begin
  if paDialog in GetAttributes then
  begin
    Command := GetStrValue;
    Connection := GetConnection(True);
    if Connection = nil then DatabaseError(sConnectionMissing);
    try
      Component := GetComponent(0) as TComponent;
      DataSet := Component as TSQLClientDataSet;
      if DataSet.CommandText <> '' then
        TblName := GetTableNameFromSQL(DataSet.CommandText);
      Q := TSQLClientDataSet(DataSet).GetQuoteChar;
      Success := EditSQL(Command, TSQLConnection(Connection).GetTableNames, 
                  TSQLConnection(Connection).GetFieldNames, TblName, Q);
      if Success then
        SetStrValue(Command);
    finally
      // ignore exception in IDE
    end;
  end;
end;

procedure TLocalCDSEditProperty.GetValueList(List: TStrings);
var
  Connection: TSQLConnection;
  FTableName: string;
begin
  Connection := TSQLConnection(GetConnection(True));
  if not Assigned(Connection) then DatabaseError(sConnectionMissing);
  try
    if PropertyType = typeIndexNames then
    begin
      FTableName := (GetComponent(0) as TSqlTable).TableName;
      Connection.GetIndexNames(FTableName,List);
    end else
    if PropertyType = typeKeyNames then
      (GetComponent(0) as TSqlTable).GetKeyFieldNames(List)
    else
      case CommandType of
        ctTable:
          Connection.GetTableNames(List);
        ctStoredProc:
          Connection.GetProcedureNames('',List);
      end;
  finally;
  end;
end;

procedure TLocalCDSEditProperty.Edit;
begin
  if (PropertyType in [typeSortFields]) or (CommandType = ctQuery) then
    EditSQLText
  else
    inherited;
end;

{ TSQLConnectionsProperty }

type 

{ TSQLConnectionsProperty }

  TSQLConnectionsProperty = class(TDBStringProperty)
  public
    procedure GetValueList(List: TStrings); override;
  end;

procedure TSQLConnectionsProperty.GetValueList(List: TStrings);
begin
  GetConnectionNames(List, '');
end;

function TLocalCDSEditProperty.GetConnection(Opened: Boolean): TCustomConnection;
var
  Component: TComponent;
begin
  Component := GetComponent(0) as TComponent;
  if PropertyType in [typeCommandText, typeIndexNames, typeKeyNames] then
  begin
    Result := TSQLClientDataSet(Component).DBConnection;
    if not Opened then Exit;
    if Result <> nil then
      Result.Open;
  end
  else
    Result := Component as TCustomConnection;
end;

function TLocalCDSEditProperty.AutoFill: Boolean;
var
  Connection: TCustomConnection;
begin
  Connection := GetConnection(False);
  if Assigned(Connection) then
  begin
    if Connection.Connected then
      Result := True
    else 
    begin
      Connection.Connected := True;
      Result := True
    end;
  end else
    Result := False;
end;

{ TLocalCDSIndexNameProperty }

procedure TLocalCDSIndexNameProperty.Activate; 
begin
  PropertyType := typeIndexNames;
end;

{ TSQLClientDataSetFieldLinkProperty }

type

  TSQLClientDataSetFieldLinkProperty = class(TFieldLinkProperty)
  private
    FDataSet: TSQLClientDataSet;
  protected
    procedure GetFieldNamesForIndex(List: TStrings); override;
    function GetIndexBased: Boolean; override;
    function GetIndexDefs: TIndexDefs; override;
    function GetIndexFieldNames: string; override;
    function GetIndexName: string; override;
    function GetMasterFields: string; override;
    procedure SetIndexFieldNames(const Value: string); override;
    procedure SetIndexName(const Value: string); override;
    procedure SetMasterFields(const Value: string); override;
  public
    property IndexBased: Boolean read GetIndexBased;
    property IndexDefs: TIndexDefs read GetIndexDefs;
    property IndexFieldNames: string read GetIndexFieldNames write SetIndexFieldNames;
    property IndexName: string read GetIndexName write SetIndexName;
    property MasterFields: string read GetMasterFields write SetMasterFields;
    procedure Edit; override;
  end;

procedure TSQLClientDataSetFieldLinkProperty.Edit;
var
  MasterOpened, Opened: Boolean;
  MasterDS: TSQLClientDataSet;
begin
  FDataSet := DataSet as TSQLClientDataSet;
  Opened := not FDataSet.Active;
  if Assigned(FDataSet.MasterSource) and (FDataSet.MasterSource.DataSet is TSQLClientDataSet) then
  begin
    MasterDS := FDataSet.MasterSource.DataSet as TSQLClientDataSet;
    MasterOpened := not MasterDS.Active;
  end else
  begin
    MasterOpened := False;
    MasterDS := nil;
  end;
  try
    if MasterOpened then
      MasterDS.Open;
    FDataSet.Open;
    inherited Edit;
  finally
    if Opened then
      FDataSet.Close;
    if MasterOpened then 
      MasterDS.Close;
  end;
end;

procedure TSQLClientDataSetFieldLinkProperty.GetFieldNamesForIndex(List: TStrings);
var
  I: Integer;
  DS : TSQLClientDataSet;
begin
  DS := DataSet as TSQLClientDataSet;
  if Assigned(DS) then
    for I := 0 to DS.IndexDefs.Count - 1 do
      List.Add(DS.IndexDefs[i].Fields);
end;

function TSQLClientDataSetFieldLinkProperty.GetIndexBased: Boolean;
begin
  Result := False;
end;

function TSQLClientDataSetFieldLinkProperty.GetIndexDefs: TIndexDefs;
var
  DS : TSQLClientDataSet;
begin
  DS := DataSet as TSQLClientDataSet;
  if Assigned(DS) then
    Result := DS.IndexDefs
  else
    Result := nil;
end;

function TSQLClientDataSetFieldLinkProperty.GetIndexFieldNames: string;
var
  DS : TSQLClientDataSet;
begin
  DS := DataSet as TSQLClientDataSet;
  if Assigned(DS) then
    Result := DS.IndexFieldNames
end;

function TSQLClientDataSetFieldLinkProperty.GetIndexName: string;
var
  DS : TSQLClientDataSet;
begin
  DS := DataSet as TSQLClientDataSet;
  if Assigned(DS) then
    Result := DS.IndexName;
end;

function TSQLClientDataSetFieldLinkProperty.GetMasterFields: string;
var
  DS : TSQLClientDataSet;
begin
  DS := DataSet as TSQLClientDataSet;
  if Assigned(DS) then
    Result := DS.MasterFields;
end;

procedure TSQLClientDataSetFieldLinkProperty.SetIndexFieldNames(const Value: string);
var
  DS : TSQLClientDataSet;
begin
  DS := DataSet as TSQLClientDataSet;
  if Assigned(DS) then
    DS.IndexFieldNames := Value;
end;

procedure TSQLClientDataSetFieldLinkProperty.SetIndexName(const Value: string);
var
  DS : TSQLClientDataSet;
begin
  DS := DataSet as TSQLClientDataSet;
  if Assigned(DS) then
    DS.IndexName := Value;
end;

procedure TSQLClientDataSetFieldLinkProperty.SetMasterFields(const Value: string);
var
  DS : TSQLClientDataSet;
begin
  DS := DataSet as TSQLClientDataSet;
  if Assigned(DS) then
    DS.MasterFields := Value;
end;

{ TLocalCDSKeyNameProperty }

procedure TLocalCDSKeyNameProperty.Activate; 
begin
  PropertyType := typeKeyNames;
end;

{ TSQLClientDataSetSelectionEditor }

procedure TSQLClientDataSetSelectionEditor.RequiresUnits(Proc: TGetStrProc);
begin
  Proc('SqlExpr');
end;

{$IFDEF MSWINDOWS}
function TSQLClientDataSetSprig.AnyProblems: Boolean; 
begin
  Result := (not Assigned(TSQLClientDataSet(Item).DBConnection)) or (TSQLClientDataset(Item).CommandText = '');
end;

function TSQLClientDataSetSprig.Caption: string; 
begin
  Result := CaptionFor('TSQLClientDataSet', UniqueName);
end;

procedure TSQLClientDatasetSprig.FigureParent;
begin
  with TSQLClientDataset(Item) do
  begin
    if DBConnection <> nil then
      SeekParent(DBConnection).Add(Self)
    else
      inherited;
  end;
end;

function TSQLClientDatasetSprig.DragDropTo(AItem: TSprig): Boolean;
begin
  with TSQLClientDataset(Item) do
    if AItem is TSQLConnectionSprig then
    begin
      Result := DBConnection <> AItem.Item;
      if Result then
        DBConnection := TSQLConnection(AItem.Item);
    end
    else
      Result := inherited DragDropTo(AItem);
end;

function TSQLClientDatasetSprig.DragOverTo(AItem: TSprig): Boolean;
begin
  Result := ((AItem is TSQLConnectionSprig) and (TSQLConnection(AItem.Item).ConnectionName <> '')) or
            (AItem is TSQLImpliedConnectionSprig);
end;

class function TSQLClientDatasetSprig.PaletteOverTo(AParent: TSprig; AClass: TClass): Boolean;
begin
  Result := (AParent is TSQLConnectionSprig) or
            inherited PaletteOverTo(AParent, AClass);
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(srSQL, [TSQLClientDataSet]);
  RegisterPropertyEditor(TypeInfo(String), TSQLClientDataSet, 'ConnectionName', TSQLConnectionsProperty);
  RegisterPropertyEditor(TypeInfo(String), TSQLClientDataSet, 'CommandText', TLocalCDSEditProperty);
  RegisterPropertyEditor(TypeInfo(string), TSQLClientDataSet, 'ProviderName', TLocalProviderNameProperty);
  RegisterPropertyEditor(TypeInfo(string), TSQLClientDataSet, 'OutProviderName', TLocalProviderNameProperty);
  RegisterPropertyEditor(TypeInfo(string), TSQLClientDataSet, 'IndexName', TIndexNameProperty);
  RegisterPropertyEditor(TypeInfo(string), TSQLClientDataSet, 'IndexFieldNames', TIndexFieldNamesProperty);
  RegisterPropertyEditor(TypeInfo(string), TSQLClientDataSet, 'MasterFields', TSQLClientDataSetFieldLinkProperty);
  RegisterPropertyEditor(TypeInfo(string), TSQLClientDataSet, 'FileName', TLocalCDSFileNameProperty);
  RegisterPropertyEditor(TypeInfo(string), TAggregateField, 'IndexName', TLookupAggIndexProperty);
  RegisterComponentEditor(TSQLClientDataSet, TLocalClientDataSetEditor);
  RegisterSelectionEditor(TSQLClientDataSet, TSQLClientDataSetSelectionEditor);
{$IFDEF MSWINDOWS}
  RegisterSprigType(TSqlClientDataSet, TSqlClientDataSetSprig);
{$ENDIF}
end;

initialization
  LocalLoad := LoadSQLClientDatasetFromFile;

end.
