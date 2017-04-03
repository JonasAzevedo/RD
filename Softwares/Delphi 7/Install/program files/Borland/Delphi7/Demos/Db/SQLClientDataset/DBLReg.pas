
{*******************************************************}
{                                                       }
{       Borland Delphi Visual Component Library         }
{       Local CliendDataSet Component Registration      }
{                                                       }
{       Copyright (c) 1997,99 Inprise Corporation       }
{                                                       }
{*******************************************************}

unit DBLReg;

interface

uses SysUtils, Classes, Variants, DBClient, Provider, 
  FldLinks, DBReg, DBConsts, DesignIntf, DesignEditors, 
  DsnDbCst, MidConst, DB, TreeIntf, DBLocal
  {$IFDEF MSWINDOWS}, DSDesign, CDSEdit;{$ENDIF}
  {$IFDEF LINUX}, DSDesignLin, ClxEditors, CDSEditLin, QDialogs;{$ENDIF}

resourcestring
  SConnectionMissing = 'Missing Connection';
  SCommandTextEdit = 'Edit Command Text';

const
  LocalLoad : function(const Dataset: TClientDataset): Boolean = nil;

type

 TPropertyType = (typeCommandText, typeIndexNames, typeKeyNames, typeConnectionNames);

{ TLookupAggIndexProperty }

  TLookupAggIndexProperty = class(TDBStringProperty)
  public
    procedure GetValueList(List: TStrings); override;
  end;

{ TCDSDesigner }

  TCDSDesigner = class(TDSDesigner)
  private
    FPacketRecords: Integer;
  public
    procedure BeginUpdateFieldDefs; override;
    procedure EndUpdateFieldDefs; override;
    function SupportsAggregates: Boolean; override;
    function SupportsInternalCalc: Boolean; override;
  end;

{ TLocalClientDatasetEditor }

  TLocalClientDatasetEditor = class(TDataSetEditor)
  private
    FCanCreate: Boolean;
  protected
    function GetDSDesignerClass: TDSDesignerClass; override;
  public
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
  end;

{ TLocalCDSFilenameProperty }

{$IFDEF MSWINDOWS}
  TLocalCDSFilenameProperty = class(TStringProperty)
  public
    procedure Edit; override;
    function GetAttributes: TPropertyAttributes; override;
  end;
{$ENDIF}
{$IFDEF LINUX}
  TLocalCDSFilenameProperty = class(TFileNameProperty)
  public
    procedure GetDialogOptions(Dialog: QDialogs.TOpenDialog); override;
  end;
{$ENDIF}

{ TLocalProviderNameProperty }

  TLocalProviderNameProperty = class(TStringProperty)
    function GetAttributes: TPropertyAttributes; override;
    procedure GetValues(Proc: TGetStrProc); override;
  end;

{ TCustomCachedDataSetSelectionEditor }

  TCustomCachedDataSetSelectionEditor = class(TSelectionEditor)
  public
    procedure RequiresUnits(Proc: TGetStrProc); override;
  end;

procedure Register;

implementation

uses TypInfo, Consts, Dialogs, Forms, Controls;


procedure TCDSDesigner.BeginUpdateFieldDefs;
begin
  FPacketRecords := 0;
  if not DataSet.Active then
  begin
    DataSet.FieldDefs.Updated := False;
    FPacketRecords := (DataSet as TCustomCachedDataSet).PacketRecords;
    if FPacketRecords <> 0 then
      (DataSet as TCustomCachedDataSet).PacketRecords := 0;
  end;
  inherited BeginUpdateFieldDefs;
end;

procedure TCDSDesigner.EndUpdateFieldDefs;
begin
  inherited EndUpdateFieldDefs;
  if FPacketRecords <> 0 then
    (DataSet as TCustomCachedDataSet).PacketRecords := FPacketRecords;
end;

function TCDSDesigner.SupportsAggregates: Boolean;
begin
  Result := True;
end;

function TCDSDesigner.SupportsInternalCalc: Boolean;
begin
  Result := True;
end;

{ TLookupAggIndexProperty }

procedure TLookupAggIndexProperty.GetValueList(List: TStrings);
begin
  with GetComponent(0) as TField do
    if DataSet <> nil then TCustomClientDataSet(DataSet).GetIndexNames(List);
end;


{ TLocalClientDatasetEditor }

function TLocalClientDatasetEditor.GetDSDesignerClass: TDSDesignerClass;
begin
  Result := TCDSDesigner;
end;

procedure TLocalClientDatasetEditor.ExecuteVerb(Index: Integer);
var
  Opened : Boolean;
begin
  if Index <= inherited GetVerbCount - 1 then
  begin
    Opened := False;
    if Index = 0 then
    begin
      Opened := not TCustomCachedDataSet(Component).Active;
      if Opened then 
        try
          TCustomCachedDataSet(Component).Open;
        except  // will fail if no query set, not connection set, etc.
          Opened := False;
        end;
    end;
    inherited ExecuteVerb(Index);
    if Opened then
      TCustomCachedDataSet(Component).Close;
  end else 
  begin
    Dec(Index, inherited GetVerbCount);
    case Index of
      0: begin
           TClientDataSet(Component).FetchParams;
           Designer.Modified;
         end;
      1: if Assigned(LocalLoad) then if LocalLoad(TClientDataSet(Component)) then Designer.Modified;
      2: begin
           TClientDataSet(Component).CreateDataSet;
           Designer.Modified;
         end;
      3: SaveToFile(TClientDataSet(Component), dfBinary);
      4: SaveToFile(TClientDataSet(Component), dfXML);
      5: SaveToFile(TClientDataSet(Component), dfXMLUTF8);
      6: begin
           TClientDataSet(Component).Data := NULL;
           Designer.Modified;
         end;
    end;
  end;
end;

function TLocalClientDatasetEditor.GetVerb(Index: Integer): string;
begin
  if Index < inherited GetVerbCount then
    Result := inherited GetVerb(Index) else
  begin
    Dec(Index, inherited GetVerbCount);
    case Index of
      0: Result := SFetchParams;
      1: Result := SLoadFromFile;
      2: Result := SCreateDataSet;
      3: Result := SSaveToFile;
      4: Result := SSaveToXmlFile;
      5: Result := SSaveToXmlUTF8File;
      6: Result := SClientDSClearData;
    end;
  end;
end;

function TLocalClientDatasetEditor.GetVerbCount: Integer;
begin
  Result := inherited GetVerbCount + 2;
  FCanCreate := False;
  with TClientDataset(Component) do
  begin
    if Active or (DataSize > 0) then Inc(Result, 4);
    FCanCreate := ((FieldCount > 0) or (FieldDefs.Count > 0));
    if FCanCreate then Inc(Result, 1);
  end;
end;

{ TLocalCDSFilenameProperty }
{$IFDEF MSWINDOWS}
procedure TLocalCDSFilenameProperty.Edit;
var
  CDSFileOpen: TOpenDialog;
begin
  CDSFileOpen := TOpenDialog.Create(Application);
  CDSFileOpen.Filename := GetValue;
  CDSFileOpen.Filter := SAllClientDataFilter;
  CDSFileOpen.Title := SCDSDlgOpenCaption;
  CDSFileOpen.Options := CDSFileOpen.Options + [ofPathMustExist];
  try
    if CDSFileOpen.Execute then SetValue(CDSFileOpen.Filename);
  finally
    CDSFileOpen.Free;
  end;
end;

function TLocalCDSFilenameProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog, paRevertable];
end;
{$ENDIF}

{$IFDEF LINUX}
procedure TLocalCDSFileNameProperty.GetDialogOptions(Dialog: QDialogs.TOpenDialog);
begin
  Dialog.Filter := SQTAllClientDataFilter;
end;
{$ENDIF}

{ TLocalProviderNameProperty }

function TLocalProviderNameProperty.GetAttributes: TPropertyAttributes;
begin
  Result := inherited GetAttributes + [paValueList, paSortList];
{$IFDEF LINUX}
  Result := Result + [paVCL]; 
{$ENDIF}
end;

procedure TLocalProviderNameProperty.GetValues(Proc: TGetStrProc);
var
  I: Integer;
  Dataset: TDataSet;
begin
  DataSet := (GetComponent(0) as TDataSet);
  if Assigned(DataSet.Owner) then
  with DataSet.Owner do
    for I := 0 to ComponentCount - 1 do
      if Components[I] is TCustomProvider then
        Proc(Components[I].Name);
end;

{ TCustomCachedDataSetSelectionEditor }

procedure TCustomCachedDataSetSelectionEditor.RequiresUnits(Proc: TGetStrProc);
begin
  Proc('Provider');
end;

procedure Register;
begin
  RegisterSelectionEditor(TCustomCachedDataSet, TCustomCachedDataSetSelectionEditor);
end;

end.
