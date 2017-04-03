unit DlgConfEntryIdentifiers;

interface

uses SysUtils, Classes, QGraphics, QForms,
  QButtons, QExtCtrls, QControls, QStdCtrls, ConfEntries, QComCtrls, clxokcancl1;

type
  TDlgConfEntryIDents = class(TForm)
    GroupBoxSingle: TGroupBox;
    lbSingleNames: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditSingleEntryIdentValue: TEdit;
    ButtonSingleAdd: TButton;
    ButtonSingleDelete: TButton;
    PageControlSingleEntries: TPageControl;
    tsSingleEntryList: TTabSheet;
    tsSingleEntryEdit: TTabSheet;
    GroupBoxEditEntry: TGroupBox;
    Label4: TLabel;
    EditSingleEntryName: TEdit;
    Label5: TLabel;
    EditSingleEntryIdentifier: TEdit;
    ButtonSingleEntryEditDone: TButton;
    ButtonSingleEntryEditCancel: TButton;
    ButtonSingleModify: TButton;
    ButtonOK: TButton;
    ButtonCancel: TButton;
    procedure FormShow(Sender: TObject);
    procedure lbSingleNamesClick(Sender: TObject);
    procedure ButtonSingleAddClick(Sender: TObject);
    procedure ButtonSingleEntryEditDoneClick(Sender: TObject);
    procedure ButtonSingleEntryEditCancelClick(Sender: TObject);
    procedure ButtonSingleModifyClick(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
    procedure ButtonSingleDeleteClick(Sender: TObject);

  private
    { Private declarations }
  public
    procedure UpdateNames;
    procedure GotoSelectedSingleEntry;
    procedure EditCurrentEntry;
    procedure ApplyEntryChanges;
  end;

var
  DlgConfEntryIDents: TDlgConfEntryIDents;

implementation

{$R *.xfm}

procedure TDlgConfEntryIDents.FormShow(Sender: TObject);
begin
  UpdateNames;
end;

procedure TDlgConfEntryIDents.UpdateNames;
var
  i,j : integer;
  ListEntry : TBaseEntry;
begin
  lbSingleNames.Items.Clear;
  for i:= 0 to EntryRegistry.Count -1 do
    if TBaseEntry(EntryRegistry.items[i]).EntryGroup = cgtSingleEntry then
      lbSingleNames.Items.Add( TBaseEntry(EntryRegistry.items[i]).EntryType);
end;

procedure TDlgConfEntryIDents.lbSingleNamesClick(Sender: TObject);
begin
  GotoSelectedSingleEntry;
end;

procedure TDlgConfEntryIDents.ButtonSingleAddClick(Sender: TObject);
begin
  EntryRegistry.RegisterEntry(TBaseEntry.Create('NewEntry', 'ident','',
                cgtSingleEntry));
  UpdateNames;
  lbSingleNames.ItemIndex:= lbSingleNames.Items.Count -1;
  GotoSelectedSingleEntry;
  EditCurrentEntry;
end;

procedure TDlgConfEntryIDents.GotoSelectedSingleEntry;
begin
  EditSingleEntryIdentValue.Text := EntryRegistry.GetEntry(lbSingleNames.Items[lbSingleNames.ItemIndex]).BeginTag;
end;

procedure TDlgConfEntryIDents.EditCurrentEntry;
begin
  PageControlSingleEntries.ActivePage := tsSingleEntryEdit;
  EditSingleEntryName.Text := lbSingleNames.Items[lbSingleNames.ItemIndex];
  EditSingleEntryIdentifier.Text := EntryRegistry.GetEntry(lbSingleNames.Items[lbSingleNames.ItemIndex]).BeginTag;
end;

procedure TDlgConfEntryIDents.ButtonSingleEntryEditDoneClick(
  Sender: TObject);
begin
  ApplyEntryChanges;
end;

procedure TDlgConfEntryIDents.ButtonSingleEntryEditCancelClick(
  Sender: TObject);
begin
  PageControlSingleEntries.ActivePage := tsSingleEntryList;
end;

procedure TDlgConfEntryIDents.ButtonSingleModifyClick(Sender: TObject);
begin
  EditCurrentEntry;
end;

procedure TDlgConfEntryIDents.ApplyEntryChanges;
begin
  EntryRegistry.GetEntry(lbSingleNames.Items[lbSingleNames.ItemIndex]).EntryType := EditSingleEntryName.Text;
  EntryRegistry.GetEntry(lbSingleNames.Items[lbSingleNames.ItemIndex]).BeginTag := EditSingleEntryIdentifier.Text  ;
  EditSingleEntryName.Text := '';
  EditSingleEntryIdentifier.Text := '';
  EditSingleEntryIdentValue.Text := '';
  UpdateNames;
  PageControlSingleEntries.ActivePage := tsSingleEntryList;
end;

procedure TDlgConfEntryIDents.ButtonOKClick(Sender: TObject);
begin
  ModalResult := mrOk;
  //close;
end;

procedure TDlgConfEntryIDents.ButtonSingleDeleteClick(Sender: TObject);
begin
  EntryRegistry.Remove(EntryRegistry.GetEntry(lbSingleNames.Items[lbSingleNames.ItemIndex]));
  EditSingleEntryIdentValue.Text := '';
  UpdateNames;
end;

end.
