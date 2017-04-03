unit FFData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TFFDatamodule = class(TDataModule)
    Session1: TSession;
    qeryMain: TQuery;
    qeryMainSpeciesNo: TFloatField;
    qeryMainCategory: TStringField;
    qeryMainCommon_Name: TStringField;
    qeryMainSpeciesName: TStringField;
    qeryMainLengthcm: TFloatField;
    qeryMainLength_In: TFloatField;
    qeryMainNotes: TMemoField;
    qeryMainGraphic: TGraphicField;
    dsrcMain: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
  public
    procedure GoFish(const ASpeciesNo: integer);
    procedure MovePage(const APageSize: integer);
    procedure SortBy(const AFieldname: string);
  end;

// Procs
  function FFDatamodule: TFFDatamodule;

implementation
{$R *.DFM}

uses
  IWServer, IWInit,
  ServerController;

// Since we are threaded we cannot use global variables to store form / datamodule references
// so we store them in WebApplication.Data and we could reference that each time, but by creating
// a function like this our other code looks "normal" almost as if its referencing a global.
// This function is not necessary but it makes the code in the main form which references this
// datamodule a lot neater.
// Without this function ever time we would reference this datamodule we would use:
//   TFFSession(WebApplication.Data).FFDatamodule.<method / component>
// By creating this procedure it becomes:
//   FFDatamodule.<method / component>
// Which is just like normal Delphi code.
function FFDatamodule: TFFDatamodule;
begin
  Result := TFFSession(RWebApplication.Data).FFDatamodule;
end;

procedure TFFDatamodule.DataModuleCreate(Sender: TObject);
begin
  qeryMain.Open;
end;

procedure TFFDatamodule.GoFish(const ASpeciesNo: integer);
begin
  qeryMain.Locate('Species No', ASpeciesNo, []);
end;

procedure TFFDatamodule.MovePage(const APageSize: integer);
begin
  qeryMain.MoveBy(APageSize);
end;

procedure TFFDatamodule.SortBy(const AFieldname: string);
var
  LSpeciesNo: integer;
begin
  LSpeciesNo := Trunc(qeryMainSpeciesNo.Value);
  qeryMain.Close; try
    qeryMain.SQL.Text := 'select * from biolife order by biolife."' + AFieldName + '"';
  finally qeryMain.Open; end;
  GoFish(LSpeciesNo);
end;

end.
