unit MainFrm;

interface

uses
  SysUtils, Types, Classes, Variants, QTypes, QGraphics, QControls, QForms, 
  QDialogs, QStdCtrls, QExtCtrls, QComCtrls, QFileCtrls, QMenus;

type
  TForm1 = class(TForm)
    DirectoryTreeView1: TDirectoryTreeView;
    FileListView1: TFileListView;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    PopupMenu1: TPopupMenu;
    ViewStyle1: TMenuItem;
    List1: TMenuItem;
    Report1: TMenuItem;
    ReadOnly1: TMenuItem;
    procedure DirectoryTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure FileListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure FileListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure List1Click(Sender: TObject);
    procedure Report1Click(Sender: TObject);
    procedure ReadOnly1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

uses QConsts;

procedure TForm1.DirectoryTreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
  FileListView1.Directory.Location := DirectoryTreeView1.Directory;
end;

procedure TForm1.FileListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  DirectoryTreeView1.Directory := FileListView1.Directory.Location;
end;

procedure TForm1.FileListView1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
var
  Info: PFileInfo;
  LastStr: string;
begin
  if (Item <> nil) and (Item.Data <> nil) then
  begin
    Info := PFileInfo(Item.Data);
    if FileListView1.Directory.Location = '' then 
      LastStr := Format('%d MB', [Info.SR.Time])
    else
      LastStr := DateTimeToStr(FileDateToDateTime(Info.SR.Time));
    StatusBar1.SimpleText := Format('%s, %s: %s, %s: %s, %s: %d', [Item.Caption,
      SType, GetFileTypeProc(Info), SDate, LastStr, SSize, Info.SR.Size])
  end
  else
    StatusBar1.SimpleText := '';
end;

procedure TForm1.PopupMenu1Popup(Sender: TObject);
begin
  List1.Checked := FileListView1.ViewStyle = vsList;
  Report1.Checked := not List1.Checked;
  ReadOnly1.Checked := FileListView1.ReadOnly;
end;

procedure TForm1.List1Click(Sender: TObject);
begin
  FileListView1.ViewStyle := vsList;
end;

procedure TForm1.Report1Click(Sender: TObject);
begin
  FileListView1.ViewStyle := vsReport;
end;

procedure TForm1.ReadOnly1Click(Sender: TObject);
begin
  FileListView1.ReadOnly := not FileListView1.ReadOnly;
end;

end.
