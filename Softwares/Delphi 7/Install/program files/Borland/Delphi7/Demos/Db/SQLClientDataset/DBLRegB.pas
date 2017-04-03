
{*******************************************************}
{                                                       }
{       Borland Delphi Visual Component Library         }
{       Local CliendDataSet Component Registration      }
{                                                       }
{       Copyright (c) 1997,99 Inprise Corporation       }
{                                                       }
{*******************************************************}

unit DBLRegB;

interface

uses
{$IFDEF MSWINDOWS}
  Classes, Variants, DSDesign, DBClient, Provider, ActiveX, ComObj, ShlObj,
  FldLinks, DBReg, DBConsts, DesignIntf, DesignEditors, {Windows, }DBLReg,
  SysUtils, DsnDbCst, MidConst, DB, DMForm, TreeIntf, DsnDB, DBLocalB; 

type

  { TLocalCDSFieldLinkProperty }

  TLocalCDSFieldLinkProperty = class(TFieldLinkProperty)
  private
    FCDS: TBDEClientDataSet;
  protected
    function GetIndexFieldNames: string; override;
    function GetMasterFields: string; override;
    procedure SetIndexFieldNames(const Value: string); override;
    procedure SetMasterFields(const Value: string); override;
  public
    procedure Edit; override;
  end;

{ Property Editors }

{ TLocalCDSEditProperty }

  TLocalCDSEditProperty = class(TDBStringProperty)
  private
    FPropertyType: TPropertyType;
  public
    procedure Activate; override;
    function AutoFill: Boolean; override;
    procedure Edit; override;
    procedure EditSQLText; virtual;  // needs to be overridden
    function GetAttributes: TPropertyAttributes; override;
    function GetConnection(Opened: Boolean): TCustomConnection;
    property PropertyType: TPropertyType read FPropertyType write FPropertyType;
  end;

{ TLocalBDECDSEditProperty }

  TLocalBDECDSEditProperty = class(TLocalCDSEditProperty)
    public
      procedure EditSQLText; override;
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

{ TBDEClientDataSetSelectionEditor }

  TBDEClientDataSetSelectionEditor = class(TSelectionEditor)
  public
    procedure RequiresUnits(Proc: TGetStrProc); override;
  end;

  TBDEClientDataSetSprig = class(TComponentSprig)
  public
    function AnyProblems: Boolean; override;
    function Caption: string; override;
    procedure FigureParent; override;
    function DragDropTo(AItem: TSprig): Boolean; override;
    function DragOverTo(AItem: TSprig): Boolean; override;
    class function PaletteOverTo(AParent: TSprig; AClass: TClass): Boolean; override;
  end;

procedure Register;

implementation

uses
  TypInfo, Consts, SqlEdit, Dialogs, DBCommon,
  Forms, Controls, DBTables;

{ TLocalCDSEditProperty }

function TLocalCDSEditProperty.GetAttributes: TPropertyAttributes;
begin
    Result := [paMultiSelect, paRevertable, paDialog]; {SQL or File}
end;

procedure TLocalCDSEditProperty.Activate;
var
  Component: TComponent;
begin
  PropertyType := typeCommandText;
  Component := GetComponent(0) as TComponent;
end;

procedure TLocalCDSEditProperty.EditSQLText;
begin
end;

procedure TLocalCDSEditProperty.Edit;
begin
  EditSqlText;
end;

function TLocalCDSEditProperty.GetConnection(Opened: Boolean): TCustomConnection;
var
  Component: TComponent;
begin
  Component := GetComponent(0) as TComponent;
  if PropertyType in [typeCommandText, typeIndexNames, typeKeyNames] then
  begin
    Result := TBDEClientDataSet(Component).DBConnection as TCustomConnection;
    if not Opened then Exit;
    If Result <> nil then Result.Open;
  end
  else
    Result := Component as TCustomConnection;
end;

function TLocalCDSEditProperty.AutoFill: Boolean;
var
  Connection: TCustomConnection;
begin
  Connection := GetConnection(False);
  Result := Assigned(Connection) and Connection.Connected;
end;

{ TLocalBDECDSEditProperty }

procedure TLocalBDECDSEditProperty.EditSQLText;
var
  Command: string;
  Connection: TCustomConnection;
  Component: TComponent;
  DataSet: TBDEClientDataSet;
  Success: Boolean;
  TblName: string;
begin
  if paDialog in GetAttributes then
  begin
    Command := GetStrValue;
    Connection := GetConnection(True);
    if Connection = nil then DatabaseError(sConnectionMissing);
    try
      Component := GetComponent(0) as TComponent;
      DataSet := Component as TBDEClientDataSet;
      if DataSet.CommandText <> '' then
        TblName := GetTableNameFromSQL(DataSet.CommandText);
      Success := EditSQL(Command, TDataBase(Connection).GetTableNames, TDataBase(Connection).GetFieldNames, TblName);
      if Success then
        SetStrValue(Command);
    finally
      // ignore exception in IDE
    end;
  end;
end;

{ TLocalCDSIndexNameProperty }

procedure TLocalCDSIndexNameProperty.Activate; 
begin
  PropertyType := typeIndexNames;
end;

{ TLocalCDSFieldLinkProperty }

procedure TLocalCDSFieldLinkProperty.Edit;
var
  MasterClosed, Opened: Boolean;
  MasterDS: TBDEClientDataSet;
begin
  FCDS := DataSet as TBDEClientDataSet;
  Opened := not FCDS.Active;
  if Assigned(FCDS.MasterSource) and (FCDS.MasterSource.DataSet is TBDEClientDataSet) then
  begin
    MasterDS := FCDS.MasterSource.DataSet as TBDEClientDataSet;
    MasterClosed := MasterDS.Active;
  end else
  begin
    MasterClosed := False;
    MasterDS := nil;
  end;
  try
    if Opened then
      FCDS.Open;
    if MasterClosed then 
      MasterDS.Close;
    inherited Edit;
  finally
    if Opened then
      FCDS.Close;
    if MasterClosed then
      MasterDS.Open;
  end;
end;

function TLocalCDSFieldLinkProperty.GetIndexFieldNames: string;
begin
  Result := FCDS.IndexFieldNames;
end;

function TLocalCDSFieldLinkProperty.GetMasterFields: string;
begin
  Result := FCDS.MasterFields;
end;

procedure TLocalCDSFieldLinkProperty.SetIndexFieldNames(const Value: string);
begin
  FCDS.IndexFieldNames := Value;
end;

procedure TLocalCDSFieldLinkProperty.SetMasterFields(const Value: string);
begin
  FCDS.MasterFields := Value;
end;

{ TLocalCDSKeyNameProperty }

procedure TLocalCDSKeyNameProperty.Activate; 
begin
  PropertyType := typeKeyNames;
end;

{ TBDEClientDataSetSelectionEditor }

procedure TBDEClientDataSetSelectionEditor.RequiresUnits(Proc: TGetStrProc);
begin
  Proc('DBTables');
end;

{ TBDEClientDataSetSprig }

function TBDEClientDataSetSprig.AnyProblems: Boolean; 
begin
  Result := (not Assigned(TBDEClientDataSet(Item).DBConnection)) or (TBDEClientDataset(Item).CommandText = '');
end;

function TBDEClientDataSetSprig.Caption: string; 
begin
  Result := CaptionFor('TBDEClientDataSet', UniqueName);
end;

procedure TBDEClientDatasetSprig.FigureParent;
begin
  with TBDEClientDataset(Item) do
  begin
    if DBConnection <> nil then
      SeekParent(DBConnection).Add(Self)
    else
      inherited;
  end;
end;

function TBDEClientDatasetSprig.DragDropTo(AItem: TSprig): Boolean;
begin
(*  with TBDEClientDataset(Item) do
    if AItem is TDatabaseSprig then
    begin
      Result := DBConnection <> AItem.Item;
      if Result then
        DBConnection := TDataBase(AItem.Item);
    end
    else *)
      Result := inherited DragDropTo(AItem);
end;

function TBDEClientDatasetSprig.DragOverTo(AItem: TSprig): Boolean;
begin
(*  Result := ((AItem is TDataBaseSprig) and (TDataBase(AItem.Item).DatabaseName <> '')) or
            (AItem is TImpliedDatabaseSprig); *)
  Result := True;
end;

class function TBDEClientDatasetSprig.PaletteOverTo(AParent: TSprig; AClass: TClass): Boolean;
begin
(*  Result := (AParent is TDataBaseSprig) or
            inherited PaletteOverTo(AParent, AClass); *)
end;

procedure Register;
begin
  GroupDescendentsWith(TBDEClientDataSet, Controls.TControl);
  RegisterComponents(srBDE, [TBDEClientDataSet] );

  RegisterPropertyEditor(TypeInfo(string), TBDEClientDataSet, 'CommandText', TLocalBDECDSEditProperty);
  RegisterPropertyEditor(TypeInfo(string), TBDEClientDataSet, 'ProviderName', TLocalProviderNameProperty);
  RegisterPropertyEditor(TypeInfo(string), TBDEClientDataSet, 'OutProviderName', TLocalProviderNameProperty);
  RegisterPropertyEditor(TypeInfo(string), TBDEClientDataSet, 'IndexName', TIndexNameProperty);
  RegisterPropertyEditor(TypeInfo(string), TBDEClientDataSet, 'IndexFieldNames', TIndexFieldNamesProperty);
  RegisterPropertyEditor(TypeInfo(string), TBDEClientDataSet, 'MasterFields', TLocalCDSFieldLinkProperty);
  RegisterPropertyEditor(TypeInfo(string), TBDEClientDataSet, 'FileName', TLocalCDSFileNameProperty);
  RegisterPropertyEditor(TypeInfo(string), TAggregateField, 'IndexName', TLookupAggIndexProperty);
  RegisterComponentEditor(TBDEClientDataSet, TLocalClientDataSetEditor);
  RegisterSelectionEditor(TBDEClientDataSet, TBDEClientDataSetSelectionEditor);
//  RegisterSprigType(TBDEClientDataset, TBDEClientDatasetSprig);
end;

{$ENDIF}
{$IFDEF LINUX}
implementation
// BDE not supported on Linux
{$ENDIF}


end.
