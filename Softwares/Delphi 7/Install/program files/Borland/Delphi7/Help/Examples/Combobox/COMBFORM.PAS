unit combform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Menus, ExtCtrls;

type
  TComboForm = class(TForm)
    CbDrop: TComboBox;
    CbDropList: TComboBox;
    CbSimple: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    ComboStyle: TMenuItem;
    CmSimple: TMenuItem;
    CmDrop: TMenuItem;
    CmDropList: TMenuItem;
    Add1: TMenuItem;
    CmAddString: TMenuItem;
    CmAddStringAt: TMenuItem;
    Search1: TMenuItem;
    CmFindString: TMenuItem;
    CmFindIndex: TMenuItem;
    CmDelete: TMenuItem;
    CmList: TMenuItem;
    CmDelString: TMenuItem;
    CmDelIndex: TMenuItem;
    CmShowList: TMenuItem;
    CmClear: TMenuItem;
    N1: TMenuItem;
    Label5: TLabel;
    EdCursel: TEdit;
    EdCuridx: TEdit;
    EdCurlen: TEdit;
    EdEdit: TEdit;
    EdEditlen: TEdit;
    CmSortList: TMenuItem;
    Bevel1: TBevel;
    procedure ComboStyleClick(Sender: TObject);
    procedure CmSimpleClick(Sender: TObject);
    procedure CmDropClick(Sender: TObject);
    procedure CmDropListClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboChange(Sender: TObject);
    procedure CmClearClick(Sender: TObject);
    procedure CmDelStringClick(Sender: TObject);
    procedure CmDelIndexClick(Sender: TObject);
    procedure CmFindStringClick(Sender: TObject);
    procedure CmFindIndexClick(Sender: TObject);
    procedure CmAddStringClick(Sender: TObject);
    procedure CmAddStringAtClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CmSortListClick(Sender: TObject);
    procedure CmListClick(Sender: TObject);
    procedure CmShowListClick(Sender: TObject);
  private
    { Private declarations }
    FCbActive: TComboBox;
    procedure SetCbActive(cb: TComboBox);

    procedure NewSelection;
    procedure DeleteAt(idx: Integer);
    procedure AddAt(idx: Integer; s: string);
    procedure SelectAt(idx: Integer);

    function FindString(s: string): Integer;

    property CbActive: TComboBox read FCbActive write SetCbActive;
  public
    { Public declarations }
  end;

var
  ComboForm: TComboForm;

implementation

uses inptform;

{$R *.DFM}

// -------------- //
// event handlers //
// -------------- //

procedure TComboForm.FormCreate(Sender: TObject);
begin
  FCbActive := CbSimple;
  CbSimple.Visible := True;
  CbDrop.Visible := False;
  CbDropList.Visible := False;
  NewSelection;
end;

// Control notifications
// ---------------------

//
// close form
//
procedure TComboForm.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TComboForm.ComboChange(Sender: TObject);
begin
  NewSelection;
end;


// ComboBox menu
// -------------

procedure TComboForm.ComboStyleClick(Sender: TObject);
begin
  CmSimple.Checked := CbActive = CbSimple;
  CmDrop.Checked := CbActive = CbDrop;
  CmDropList.Checked := CbActive = CbDropList;
end;

procedure TComboForm.CmSimpleClick(Sender: TObject);
begin
  CbActive := CbSimple;
end;

procedure TComboForm.CmDropClick(Sender: TObject);
begin
  CbActive := CbDrop;
end;

procedure TComboForm.CmDropListClick(Sender: TObject);
begin
  CbActive := CbDropList;
end;

// Add menu
// --------
procedure TComboForm.CmAddStringClick(Sender: TObject);
var
  s: string;
begin
  if InputForm.GetString('String to add:', s) then
    AddAt(0, s);
end;

procedure TComboForm.CmAddStringAtClick(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  if InputForm.GetString('String to add:', s)
      and InputForm.GetInteger('Index to insert at:', i) then
    AddAt(i, s);
end;

// Find menu
// ---------
procedure TComboForm.CmFindStringClick(Sender: TObject);
var
  s: string;
begin
  if InputForm.GetString('String to select:', s) then
    SelectAt(FindString(s));
end;

procedure TComboForm.CmFindIndexClick(Sender: TObject);
var
  i: Integer;
begin
  if InputForm.GetInteger('Index to select:', i) then
    SelectAt(i);
end;


// Delete menu
// -----------
procedure TComboForm.CmDelStringClick(Sender: TObject);
var
  s: string;
begin
  if InputForm.GetString('String to delete:', s) then
    DeleteAt(FindString(s));
end;

procedure TComboForm.CmDelIndexClick(Sender: TObject);
var
  i: Integer;
begin
  if InputForm.GetInteger('Index to delete:', i) then
    DeleteAt(i);
end;

procedure TComboForm.CmClearClick(Sender: TObject);
begin
  CbActive.Clear;
end;


// List menu
// ---------
procedure TComboForm.CmShowListClick(Sender: TObject);
begin
  CbActive.DroppedDown := not CbActive.DroppedDown;
end;

procedure TComboForm.CmSortListClick(Sender: TObject);
begin
  CbActive.Sorted := not CbActive.Sorted;
end;

procedure TComboForm.CmListClick(Sender: TObject);
begin
  CmShowList.Enabled := CbActive <> CbSimple;
  CmSortList.Checked := CbActive.Sorted;
end;


// --------------- //
// private methods //
// --------------- //

procedure TComboForm.NewSelection;
begin
  if CbActive.ItemIndex = -1 then
    EdCursel.Text := ''
  else
    EdCursel.Text := CbActive.Items[CbActive.ItemIndex];
  EdCuridx.Text := IntToStr(CbActive.ItemIndex);
  EdCurlen.Text := IntToStr(length(EdCursel.Text));

  EdEdit.Text := CbActive.Text;
  EdEditlen.Text := IntToStr(length(EdEdit.Text));
end;

procedure TComboForm.SetCbActive(cb: TComboBox);
begin
  if FCbActive <> cb then
  begin
    FCbActive.Visible := False;
    FCbActive := cb;
    FCbActive.Visible := True;
    NewSelection;
  end;
end;


//
// Delete an item from the active combobox given its index.
// Ignores bogus indices.
//
procedure TComboForm.DeleteAt(idx: Integer);
begin
  if idx >= 0 then
    CbActive.Items.Delete(idx);
end;


//
// Add a string into the active combobox at the given index.
// If the index is too big, append the item, if too small,
// insert it at the top.
//
procedure TComboForm.AddAt(idx: Integer; s: string);
begin
  if idx > CbActive.Items.Count then
    CbActive.Items.Append(s)
  else
  begin
    if idx < 0 then
      idx := 0;
    CbActive.Items.Insert(idx, s);
  end;
end;


//
// Select an item in the active combobox given it's index.
// A bogus index will result in an exception.
procedure TComboForm.SelectAt(idx: Integer);
begin
  CbActive.ItemIndex := idx;
  NewSelection;
end;


//
// Find the index of an item in the combobox given a string.
// If the string does not exist, return -1.
//
function TComboForm.FindString(s: string): Integer;
var
  i: Integer;
begin
  i := 0;
  while (i < CbActive.Items.Count) and (CbActive.Items[i] <> s) do
    inc(i);
  Result := i;
end;



end.
