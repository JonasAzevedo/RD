unit ACE_u;



interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, ColorMemo, qt, QComCtrls, contnrs, ConfEntries, QExtCtrls,
  QMenus, QTypes, DlgConfEntryIdentifiers, dlgDelphiConfEntry, IniFiles, ArgMgr;

const
  CaptionPrefix='ACE   ';
  INIFileName='ace.ini';
  INIDefaultSection='Defaults';
  INIConfSingleSection='SingleConfEntries';
  INIConfBlockSection='BlockConfEntries';
  ININameOfHttpdConf='HTTPDConfFile';
  MSGNoConfFile='The default setting for httpd.conf does not exist. You will need to locate this file to start. Click ok to search for file.';

type
  TJumpNode = class(TObject)
  public
    Name : String;
    SyntaxNode : TSyntaxBlock;
  end;

  TForm1 = class(TForm)
    PanelLeft: TPanel;
    TreeView1: TTreeView;
    Button5: TButton;
    PanelClient: TPanel;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    LabelConf: TLabel;
    PopupMenu1: TPopupMenu;
    File1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    Exit1: TMenuItem;
    MainMenu1: TMainMenu;
    File2: TMenuItem;
    Edit1: TMenuItem;
    Config1: TMenuItem;
    Open2: TMenuItem;
    Save2: TMenuItem;
    SaveAs2: TMenuItem;
    Exit2: TMenuItem;
    AddNewEntry1: TMenuItem;
    Help1: TMenuItem;
    cbColorSyntax: TCheckBox;
    PanelTop: TPanel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    EditConfentryidentifiers1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TreeView1ItemClick(Sender: TObject; Button: TMouseButton;
      Node: TTreeNode; const Pt: TPoint);
    procedure Button5Click(Sender: TObject);
    procedure cbColorSyntaxClick(Sender: TObject);
    procedure cbColorSyntaxKeyPress(Sender: TObject; var Key: AnsiChar);
    procedure Open2Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure EditConfentryidentifiers1Click(Sender: TObject);
    procedure AddNewEntry1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    MemoText : TBlockMemo;
    JumpNodeList : TObjectList;
    HttpdConfFile : string;
    INIFIle: TIniFile;

  public
    procedure LoadDefaultRegistryEntries;
    procedure LoadINISettings;
    procedure SaveINISettings;
    procedure BuildEntryList;
    procedure FillTree(treeNodes: TTreeNodes);
    procedure Rescan;
    procedure BuildDelphiEntry;
    procedure HandleCommandLineParams;

  end;
  //------- ArgHandlers
  procedure ahExportedSymbol;
  procedure ahModuleName;
  procedure ahModuleFile;
  procedure ahLocation;
  procedure ahContentTypeHandler;
  //------- helpers
  function  ConvertToFSlash(aPath:String):String;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  i : integer;
begin
  IniFile := TIniFile.Create(ExtractFilePath(ParamStr(0)) + INIFileName);
  HttpdConfFile := '';
  MemoText := TBlockMemo.Create(PanelClient);
  JumpNodeList := TObjectList.Create(true);
  Caption := CaptionPrefix;
  with MemoText do
  begin
    Parent := self;
    Left := 152;
    Top := 8;
    Width := 289;
    Height := 345;
    ScrollBars := ssBoth;
    WordWrap := false;
    visible := true ;
    //Anchors := [akLeft,akTop,akRight,akBottom];
    Align := alClient;
    //TabOrder:= 0 ;
  end;
  LoadINISettings;
  // if no section/INIFile then load default values.
  if not INIFile.SectionExists(INIConfSingleSection) then
    LoadDefaultRegistryEntries;
  // ConfFile to Load ?
  if not FileExists(HttpdConfFile) then
  begin
    ShowMessage(MSGNoConfFile);
    if OpenDialog1.Execute then
      HttpdConfFile := OpenDialog1.FileName;
  end;

  // load the file
  MemoText.Lines.LoadFromFile(HttpdConfFile);
  BuildEntryList;
  FillTree(TreeView1.Items);
  
  HandleCommandLineParams;
end;

// How to Highite text fo MemoText....
procedure TForm1.Button2Click(Sender: TObject);
begin
   MemoText.SyntaxBlock.StartLine := 4;
   MemoText.SyntaxBlock.EndLine := 6;
   MemoText.SyntaxBlock.FontColor := clYellow;
   MemoText.SyntaxBlock.BgColor := clNavy;
   MemoText.SyntaxBlock.DrawMode := dmBoth;
   MemoText.SyntaxBlock.Enabled := true;
   //MemoText.ShowLineNumbers := true;
   //MemoText.ShowLineNumbers := true;
   //MemoText.Invalidate;
   MemoText.SelectBlock(MemoText.SyntaxBlock);
   MemoText.Invalidate;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   MemoText.SyntaxBlock.Enabled := false;

   MemoText.Invalidate;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i : integer;
  anEntry : TBaseEntry;
begin
  for i := 0 to EntryList.Count -1 do
  begin
    anEntry := TBaseEntry(EntryList.Items[i]);
    ShowMessage('Entry: ' + anEntry.EntryType + '('+ IntToStr(anEntry.beginLine) +
                ',' + IntToStr(anEntry.EndLine) + ')');
  end;
end;

procedure TForm1.FillTree(treeNodes: TTreeNodes);
var
  //SyntaxNode :TSyntaxBlock;
  // this routine will wipe out all of the existing tree nodes and recreate them
  top, context: TTreeNode;
  i, j : Integer;
  EntryType: String;
  EntryGroup : TConfGroupType;
  ListEntry, ParentEntry : TBaseEntry;
  begin
  //uTestBuffer.Clear();
  treeNodes.Clear();
  top:=treeNodes.AddChild(treeNodes.GetFirstNode ,'ConfFile');

  // itterate through the Registry and add each Entry Group to the tree;
  for i:= 0 to EntryRegistry.Count -1 do
    treeNodes.AddChild(top , TBaseEntry(EntryRegistry.items[i]).EntryType);

  // first pass add parent nodes to EntryGroups
  for i:= 0 to EntryList.Count -1 do
  begin
    ListEntry := TBaseEntry(EntryList.Items[i]);
    if IsEqualGuid(ListEntry.Parent, ListEntry.Id) then
      for j := 0 to TreeNodes.Count -1 do
        if TreeNodes.Item[j].Text = ListEntry.EntryType then
        begin
          treeNodes.AddChildObject(treeNodes.Item[j],ListEntry.EntryName,ListEntry);
          break;
        end;
  end; // for i

  // Second pass Add Children nodes the EntryGroup Entries
  for i:= 0 to EntryList.Count -1 do
  begin
    ListEntry := TBaseEntry(EntryList.Items[i]);
    if NOT IsEqualGuid(ListEntry.Parent, ListEntry.Id) then
      for j := 1 to TreeNodes.Count -1 do
      begin
        ParentEntry := TBaseEntry(TreeNodes.Item[j].data);
        if ParentEntry <> nil then
          if IsEqualGuid(ParentEntry.id, ListEntry.Parent) then
          begin
            treeNodes.AddChildObject(TreeNodes.Item[j],ListEntry.EntryName,ListEntry);
            break;
          end;
      end; // for j
  end; // for i

end;

procedure TForm1.TreeView1ItemClick(Sender: TObject; Button: TMouseButton;
  Node: TTreeNode; const Pt: TPoint);
var
  ListEntry :TBaseEntry;
  SyntaxBlock : TSyntaxBlock;
begin
  //TJumpNode(Node.Data).SyntaxNode.Enabled := true;
  rescan;

  if Node.Text <> 'ConfFile' then
  begin
    ListEntry := TBaseEntry(Node.Data);
    if ListEntry <> nil then
    begin
      SyntaxBlock.StartLine := ListEntry.BeginLine;
      SyntaxBlock.EndLine := ListEntry.EndLine;
      SyntaxBlock.FontColor := clNavy;
      SyntaxBlock.BgColor := clLtGray;
      SyntaxBlock.DrawMode := dmBoth;
      SyntaxBlock.Enabled := cbColorSyntax.Checked;
      MemoText.SelectBlock(SyntaxBlock);
    end;
  end
  else
    MemoText.GotoTop;

end;


procedure TForm1.BuildEntryList;
begin
  EntryList.BuildList(TStringList(MemoText.Lines));
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  rescan;
end;

procedure TForm1.Rescan;
begin
  if MemoText.RescanNeeded then
  begin
    EntryList.BuildList(TStringList(MemoText.Lines));
    FillTree(TreeView1.Items);
    MemoText.RescanNeeded := false;
    TreeView1.Items[0].Expand(false);
  end;
end;

procedure TForm1.cbColorSyntaxClick(Sender: TObject);
begin
   MemoText.SyntaxBlock.Enabled := cbColorSyntax.Checked;
   MemoText.Invalidate;
end;

procedure TForm1.cbColorSyntaxKeyPress(Sender: TObject; var Key: AnsiChar);
begin
   MemoText.SyntaxBlock.Enabled := cbColorSyntax.Checked;
   MemoText.Invalidate;
end;

procedure TForm1.Open2Click(Sender: TObject);
begin
  if MemoText.Modified then
    ShowMessage('Modified');

  if OpenDialog1.Execute then
  begin
    MemoText.lines.LoadFromFile(OpenDialog1.FileName);
    MemoText.RescanNeeded := true;
    rescan;
    Caption := CaptionPrefix + OpenDialog1.FileName;
  end;

end;

procedure TForm1.Save2Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    MemoText.lines.SaveToFile(SaveDialog1.FileName);
    MemoText.Modified := false;
    rescan;
  end;            
end;

procedure TForm1.EditConfentryidentifiers1Click(Sender: TObject);
begin
  DlgConfEntryIDents.ShowModal;
  if DlgConfEntryIdents.ModalREsult = mrOK then
  begin
    MemoText.RescanNeeded := true;
    MemoText.Modified := true;
    rescan;
  end;
end;

procedure TForm1.AddNewEntry1Click(Sender: TObject);
begin
  DlgBuildEntry.EditModuleName.Text:='';
  DlgBuildEntry.EditExportedSymbol.Text:='';
  DlgBuildEntry.EditModuleLocation.Text:='';
  DlgBuildEntry.EditLocationEntry.Text:='';
  DlgBuildEntry.EditContentType.Text:='';
end;

procedure TForm1.LoadDefaultRegistryEntries;
begin
  EntryRegistry.RegisterEntry(TBaseEntry.Create('ServerType', 'ServerType','',
                cgtSingleEntry));
  EntryRegistry.RegisterEntry(TBaseEntry.Create('ServerRoot', 'ServerRoot','',
                cgtSingleEntry));
  EntryRegistry.RegisterEntry(TBaseEntry.Create('TimeOut', 'Timeout','',
                cgtSingleEntry));
  EntryRegistry.RegisterEntry(TBaseEntry.Create('LoadModule', 'LoadModule','',
                cgtSingleEntry));

  EntryRegistry.RegisterEntry(TBaseEntry.Create('AddModule', 'AddModule','',
                cgtSingleEntry));
  EntryRegistry.RegisterEntry(TBaseEntry.Create('Port', 'Port','',
                cgtSingleEntry));
  EntryRegistry.RegisterEntry(TBaseEntry.Create('ServerAdmin', 'ServerAdmin','',
                cgtSingleEntry));
  EntryRegistry.RegisterEntry(TBaseEntry.Create('ServerName', 'ServerName','',
                cgtSingleEntry));
  EntryRegistry.RegisterEntry(TBaseEntry.Create('DocumentRoot', 'DocumentRoot','',
                cgtSingleEntry));
  EntryRegistry.RegisterEntry(TBaseEntry.Create('DefaultType', 'DefaultType','',
                cgtSingleEntry));


  //EntryRegistry.RegisterEntry(TBaseEntry.Create('IfModule', '<IfModule','</IfModule>',
  //             cgtBlockEntry));
  EntryRegistry.RegisterEntry(TBaseEntry.Create('SetEnv', 'SetEnv','',
                cgtSingleEntry));
  EntryRegistry.RegisterEntry(TBaseEntry.Create('Alias', 'Alias','',
                cgtSingleEntry));
  EntryRegistry.RegisterEntry(TBaseEntry.Create('ScriptAlias', 'ScriptAlias','',
                cgtSingleEntry));
end;

procedure TForm1.LoadINISettings;
var
  listbuf : TStringList;
  i : integer;
begin
  try
    listbuf := TStringList.Create;
    HttpdConfFile := INIFile.ReadString(INIDefaultSection,ININameOfHttpdConf,'');
    INIFIle.ReadSectionValues(INIConfSingleSection, listbuf);
    if INIFile.SectionExists(INIConfSingleSection) then
      for i := 0 to listbuf.Count -1 do
        EntryRegistry.RegisterEntry(TBaseEntry.Create(listbuf.Names[i],
                      listbuf.Values[listbuf.Names[i]],'',
                      cgtSingleEntry));
  finally
    listbuf.free;
  end;
end;

procedure TForm1.SaveINISettings;
var
  i : integer;
begin
  INIFIle.WriteString(INIDefaultSection,ININameOfHttpdConf,HttpdConfFile);
  for i := 0 to EntryRegistry.Count -1 do
    if TBaseEntry(EntryRegistry.items[i]).EntryGroup = cgtSingleEntry then
      INIFile.WriteString(INIConfSingleSection,
                          TBaseEntry(EntryRegistry.items[i]).EntryType,
                          TBaseEntry(EntryRegistry.items[i]).BeginTag);

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveINISettings;
end;

procedure TForm1.HandleCommandLineParams;
begin
{
 -a  [ExportedSymbol] [ModuleName] [module] [Location] [ContentType]
 -s [ExportedSymbol]
 -n [ModuleName]   as in ModuleName:=Project1_module;
 -f [Path and FileName] of Module Shared LIbrary (c:\foo.dll, /opt/libmodule.so)
 -l [Location] the Virtual Directory Location (/helloworld)
 -h [ContentType Handler]
}
  DlgBuildEntry := TDlgBuildEntry.Create(self);
  ArgManager.AddArgHandler('-s', ahExportedSymbol);
  ArgManager.AddArgHandler('-n', ahModuleName);
  ArgManager.AddArgHandler('-f', ahModuleFile);
  ArgManager.AddArgHandler('-l', ahLocation);
  ArgManager.AddArgHandler('-h', ahContentTypeHandler);
  ArgManager.HandleArgs;
  if ArgManager.ArgsHandled = 5 then
    BuildDelphiEntry;
end;

procedure ahExportedSymbol;
begin
  DlgBuildEntry.EditExportedSymbol.Text := ArgManager.GetNextParam;
end;
procedure ahModuleName;
begin
  DlgBuildEntry.EditModuleName.Text := ArgManager.GetNextParam;
end;
procedure ahModuleFile;
begin
  DlgBuildEntry.EditModuleLocation.Text := ConvertToFSlash(ArgManager.GetNextParam);
end;
procedure ahLocation;
begin
  DlgBuildEntry.EditLocationEntry.Text := '/' + ArgManager.GetNextParam;
end;
procedure ahContentTypeHandler;
begin
  DlgBuildEntry.EditContentType.Text := LowerCase(ArgManager.GetNextParam);
end;

procedure TForm1.BuildDelphiEntry;
var
  dme: TDelphiConfEntry;
begin
  try
    dme := TDelphiConfEntry.Create;
    DlgBuildEntry.ShowModal;
    if DlgBuildEntry.ModalResult = mrOK then
    begin
      dme.ModuleName := DlgBuildEntry.EditModuleName.Text;
      dme.ModuleSymbol := DlgBuildEntry.EditExportedSymbol.Text;
      dme.Module := DlgBuildEntry.EditModuleLocation.Text;
      dme.VirtualDirectory := DlgBuildEntry.EditLocationEntry.Text;
      dme.ModuleHandler := DlgBuildEntry.EditContentType.Text;
      MemoText.Lines.Append(dme.GenModuleEntry);
      MemoText.RescanNeeded := true;
      MemoText.Modified := true;
      rescan;
    end;

  finally
    dme.Free;
  end;
end;

function ConvertToFSlash(aPath: string): String;
begin
  Result := StringReplace(aPath,'\','/', [rfReplaceAll]);
end;

end.
