unit RXMain;

{ This program provides an example of how to use the TreeView and ListView
  components in a fashion similar to the Microsoft Windows Explorer.

  It is not intended to be a fully functional resource viewer. }

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  ExeImage, StdCtrls, Buttons, ExtCtrls, ComCtrls, Menus, RXMisc, HexDump,
  ImgList;

type
  TMainForm = class(TForm)
    StatusBar: TStatusBar;
    TreeViewPanel: TPanel;
    Panel1: TPanel;
    ImageViewer: TImage;
    ListView: TListView;
    TreeView: TTreeView;
    Splitter: TPanel;
    Notebook: TNotebook;
    ListViewPanel: TPanel;
    ListViewCaption: TPanel;
    FileOpenDialog: TOpenDialog;
    FileSaveDialog: TSaveDialog;
    MainMenu: TMainMenu;
    miFile: TMenuItem;
    miFileExit: TMenuItem;
    miFileSave: TMenuItem;
    miFileOpen: TMenuItem;
    miView: TMenuItem;
    miViewStatusBar: TMenuItem;
    miViewLargeIcons: TMenuItem;
    miViewSmallIcons: TMenuItem;
    miViewList: TMenuItem;
    miViewDetails: TMenuItem;
    miHelp: TMenuItem;
    miHelpAbout: TMenuItem;
    Small: TImageList;
    Large: TImageList;
    StringViewer: TMemo;
    procedure FileExit(Sender: TObject);
    procedure FileOpen(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListViewEnter(Sender: TObject);
    procedure SaveResource(Sender: TObject);
    procedure SelectListViewType(Sender: TObject);
    procedure ShowAboutBox(Sender: TObject);
    procedure ToggleStatusBar(Sender: TObject);
    procedure TreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure SplitterMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SplitterMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SplitterMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ViewMenuDropDown(Sender: TObject);
    procedure NotebookEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FExeFile: TExeImage;
    HexDump: THexDump;
    SplitControl: TSplitControl;
    procedure LoadResources(ResList: TResourceList; Node: TTreeNode);
    procedure DisplayResources;
    procedure UpdateViewPanel;
    procedure UpdateListView(ResList: TResourceList);
    procedure UpdateStatusLine(ResItem: TResourceItem);
  end;

var
  MainForm: TMainForm;

implementation

uses About, RXTypes;

{$R *.dfm}
{$R RXIMAGES.RES}

const
  itBitmap: TResType = ImgList.rtBitmap; // Reference for duplicate identifier
  ImageMap: array[TResourceType] of Byte = (2,4,5,3,2,2,2,2,2,2,2,2,2,2,2,2,2);
  ResFiltMap: array[TResourceType] of Byte = (1,4,2,3,1,1,1,1,1,1,1,1,1,1,1,1,1);

  SNoResSelected = 'No resource selected';
  SFormCaption   = 'Resource Explorer';
  SSaveFilter    = 'Other Resource (*.*)|*.*|Bitmaps (*.BMP)|*.BMP|'+
                   'Icons (*.ICO)|*.ICO|Cursor (*.CUR)|*.CUR';
  SOpenFilter    = 'Executable File Images (*.EXE;*.DLL)|*.EXE;*.DLL|'+
                   'All Files (*.*)|*.*';

{ Utility Functions }

procedure Error(const ErrMsg: string);
begin
  raise Exception.Create(ErrMsg);
end;

procedure ErrorFmt(const ErrMsg: string; Params: array of const);
begin
  raise Exception.Create(format(ErrMsg, Params));
end;

function Confirm(const AMsg: String): Boolean;
begin
  Result := MessageDlg(AMsg, mtConfirmation, mbYesNoCancel, 0) = idYes;
end;

{ Non Event Handlers }

procedure TMainForm.LoadResources(ResList: TResourceList; Node: TTreeNode);
var
  I: Integer;
  CNode: TTreeNode;
begin
  for I := 0 to ResList.Count - 1 do
    with ResList[I] do
    begin
      CNode := TreeView.Items.AddChildObject(Node, Name, ResList[I]);
      if IsList then
      begin
        CNode.SelectedIndex := 1;
        LoadResources(List, CNode);
      end else
      begin
        CNode.ImageIndex := ImageMap[ResList[I].ResType];
        CNode.SelectedIndex := CNode.ImageIndex;
      end;

    end;
end;

procedure TMainForm.DisplayResources;
begin
  ListView.Items.Clear;
  TreeView.Selected := nil;
  TreeView.Items.Clear;
  LoadResources(FExeFile.Resources, nil);
  Caption := Format('%s - %s', [SFormCaption, AnsiLowerCaseFileName(FExeFile.FileName)]);
  with TreeView do
  begin
    SetFocus;
    Selected := Items[0];
  end;
end;

procedure TMainForm.UpdateViewPanel;
var
  R: TResourceItem;
begin
  with TreeView do
  begin
    if Visible and Assigned(Selected) then
    begin
      R := TResourceItem(Selected.Data);
      if R.IsList then UpdateListView(R.List) else
      begin
        case R.ResType of
          rtBitmap, rtIconEntry, rtCursorEntry:
            begin
              ImageViewer.Picture.Assign(R);
              Notebook.PageIndex := 1;
            end;
          rtString, rtMenu:
            begin
              StringViewer.Lines.Assign(R);
              StringViewer.SelStart := 0;
              Notebook.PageIndex := 2;
            end
          else
            begin
              HexDump.Address := R.RawData;
              HexDump.DataSize := R.Size;
              Notebook.PageIndex := 3;
            end;
         end;
      end;
      UpdateStatusLine(R);
    end;
  end;
end;

procedure TMainForm.UpdateListView(ResList: TResourceList);
var
  I: Integer;
begin
  ListView.Items.Clear;
  for I := 0 to ResList.Count-1 do
    with ResList[I], ListView.Items.Add do
    begin
      Data := ResList[I];
      Caption := Name;
      SubItems.Add(Format('%.7x', [Offset]));
      SubItems.Add(Format('%.5x', [Size]));
      ImageIndex := ImageMap[ResType];
    end;
  Notebook.PageIndex := 0;
end;

procedure TMainForm.UpdateStatusLine(ResItem: TResourceItem);
begin
  if ResItem.IsList then
  begin
    ListViewCaption.Caption := ' '+TreeView.Selected.Text;
    StatusBar.Panels[0].Text := Format(' %d object(s)', [ListView.Items.Count]);
    StatusBar.Panels[1].Text := Format(' Offset: %x', [ResItem.Offset]);
  end else
  with ResItem do
  begin
    ListViewCaption.Caption := Format(' %s: %s', [ResTypeStr, Name]);
    StatusBar.Panels[0].Text := '';
    StatusBar.Panels[1].Text := Format(' Offset: %x  Size: %x', [Offset, Size]);
  end;
end;

{ Form Initialization }

procedure TMainForm.FormCreate(Sender: TObject);
begin
  SplitControl := TSplitControl.Create(Self);
  HexDump := CreateHexDump(TWinControl(NoteBook.Pages.Objects[3]));
  FileOpenDialog.Filter := SOpenFilter;
  FileSaveDialog.Filter := SSaveFilter;
  Small.ResourceLoad(itBitmap, 'SmallImages', clOlive);
  Large.ResourceLoad(itBitmap, 'LargeImages', clOlive);
  Notebook.PageIndex := 0;
  if (ParamCount > 0) and FileExists(ParamStr(1)) then
  begin
    Show;
    FExeFile := TExeImage.CreateImage(Self, ParamStr(1));
    DisplayResources;
  end;
end;

{ Menu Event Handlers }

procedure TMainForm.FileOpen(Sender: TObject);
var
  TmpExeFile: TExeImage;
begin
  with FileOpenDialog do
  begin
    if not Execute then Exit;
    TmpExeFile := TExeImage.CreateImage(Self, FileName);
    if Assigned(FExeFile) then FExeFile.Destroy;
    FExeFile := TmpExeFile;
    DisplayResources;
  end;
end;

procedure TMainForm.FileExit(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.ListViewEnter(Sender: TObject);
begin
  with ListView do
    if (Items.Count > 1) and (Selected = nil) then
    begin
      Selected := Items[0];
      ItemFocused := Selected;
    end;
end;

procedure TMainForm.SaveResource(Sender: TObject);
var
  ResItem: TResourceitem;

  function TreeViewResourceSelected: Boolean;
  begin
    Result := Assigned(TreeView.Selected) and
              Assigned(TreeView.Selected.Data) and
              not TResourceItem(TreeView.Selected.Data).IsList;
    if Result then ResItem := TResourceItem(TreeView.Selected.Data);
  end;

  function ListViewResourceSelected: Boolean;
  begin
    Result := Assigned(ListView.Selected) and
              Assigned(ListView.Selected.Data) and
              not TResourceItem(ListView.Selected.Data).IsList;
    if Result then ResItem := TResourceItem(ListView.Selected.Data);
  end;

begin
  if TreeViewResourceSelected or ListViewResourceSelected then
  with FileSaveDialog do
  begin
    FilterIndex := ResFiltMap[ResItem.ResType];
    if Execute then
      ResItem.SaveToFile(FileName)
  end
  else
    Error(SNoResSelected);
end;

procedure TMainForm.SelectListViewType(Sender: TObject);
begin
  ListView.ViewStyle := TViewStyle(TComponent(Sender).Tag);
end;

procedure TMainForm.ShowAboutBox(Sender: TObject);
begin
  About.ShowAboutBox;
end;

procedure TMainForm.ToggleStatusBar(Sender: TObject);
begin
  StatusBar.Visible := not StatusBar.Visible;
end;

procedure TMainForm.TreeViewChange(Sender: TObject; Node: TTreeNode);
begin
  UpdateViewPanel;
end;

procedure TMainForm.ViewMenuDropDown(Sender: TObject);
var
  I: Integer;
begin
  miViewStatusBar.Checked := StatusBar.Visible;
  for I := 0 to miView.Count-1 do
    with miView.Items[I] do
      if GroupIndex = 1 then
        Checked := (Tag = Ord(ListView.ViewStyle));
end;

procedure TMainForm.SplitterMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) and (Shift = [ssLeft]) then
    SplitControl.BeginSizing(Splitter, TreeViewPanel);
end;

procedure TMainForm.SplitterMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  with SplitControl do if Sizing then ChangeSizing(X, Y);
end;

procedure TMainForm.SplitterMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  with SplitControl do if Sizing then EndSizing;
end;

procedure TMainForm.NotebookEnter(Sender: TObject);
var
  Page: TWinControl;
begin
  with NoteBook do
  begin
    Page := TWinControl(Pages.Objects[PageIndex]);
    if (Page.ControlCount > 0) and (Page.Controls[0] is TWinControl) then
      TWinControl(Page.Controls[0]).SetFocus;
  end;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  SplitControl.Free;
end;

end.
