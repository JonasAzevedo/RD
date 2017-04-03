{*******************************************************************************
 Class: ConfEntries
 About:
        BaseEntry has 5 GroupTypes the dictate the Entries Behavior ;
        cftDirectory:  A directory entry, fairly static
        cftLocation:   A location entry, fairly static
        cftBundledEntry: An Entry bundle (LoadModule + location)
        cftSingleEntry:  This is a generic single entry
                        For Example if setup with...
                        EntryType='SetEnv' BeginTag='SetEnv'
                        This becomes an EntryType of 'SetEnv' and an entry will
                        be added to the EntryList for each 'SetEnv' Tag found
        cftBlockEntry:  This is a generic block entry
                        For Example if setup with...
                        EntryType='IfModule' BeginTag='<IfModule' EndTag='</IfModule>'
                        This becomes an EntryType of 'IfModule' and an Entry
                        will be added to the EntryList for These Tags and All
                        text inBetween

        Thus the TreeView should look as such:
          * Root
            | ConfGroup
              | ConfTypes
            | ConfGroup
              | ConfTypes


*******************************************************************************}

unit ConfEntries;

interface
uses
  SysUtils, Classes, Contnrs;

const
  CommentTag =          '#';
  // DefaultEntryStubs
  //                    BeginTag +
  BundledEntryStub =    '# Entry Managed by ApacheConfigEditor' + SLineBreak +
                        'LoadModule {ModuleName}  {Module Path} ' + SLineBreak +
                        '<Location {VirtualDir IE: /foo}' + SLineBreak +
                        'SetHandler {Module-Handler}' + SLineBreak +
                        '</Location>' + SLineBreak ;
                        // + EndTag
  DirectoryEntryStub =  '<Directory {Directory}>' + SLineBreak +
                        '       #---Directives ' + SLineBreak +
                        '       #Options None' + SLineBreak +
                        '       #AllowOverride None' + SLineBreak +
                        '       #Order allow,deny' + SLineBreak +
                        '       #Allow from all ' + SLineBreak +
                        '</Directory>' + SLineBreak;
  LocationEntryStub =   '<Location {Directory}>' + SLineBreak +
                        '       #---Directives ' + SLineBreak +
                        '       #Options None' + SLineBreak +
                        '       #AllowOverride None' + SLineBreak +
                        '       #Order allow,deny' + SLineBreak +
                        '       #Allow from all' + SLineBreak +
                        '</Location>' + SLineBreak;
  // SingleEntryStub    BeginTag + slineBreak;
  // BlockEntryStub     BeginTag + SLineBreak + EndTag;
  // base DelphiEntry search tags
  TagBegin =            '# Begin DelphiModuleEntry:';
  TagHeader =           '# Entry Managed by ApacheConfigEditor';
  TagLoadModule =       'LoadModule';
  TagLocationStart =    '<Location';
  TagSetHandler =       'SetHandler';
  TagLocationEnd =      '</Location>';
  TagEnd =              '# End DelphiModuleEntry:';
  // format tags
  FmtBegin =            TagBegin + ' %s';
  FmtLoadModule =       TagLoadModule + ' %s %s';
  FmtLocationStart =    TagLocationStart + ' %s>';
  FmtSetHandler =       TagSetHandler + ' %s';
  FmtEnd =              TagEnd + ' %s';

type
  EConfEntryException = class(Exception);
  EEntryListException = class(Exception);
  TConfEntryType = (cetRegistry, cetEntry);
  TConfGroupType = (cgtDirectory, cgtLocation, cgtBundledEntry, cgtSingleEntry,
                    cgtBlockEntry);

  TBaseEntry=class(TObject)
  private
    FID : TGuid;
    FParent : TGuid;
    FEnabled: boolean;
    FEndTag: String;
    FBeginTag: String;
    FEntryType: String;
    FEntryName: String;
    FEndLine: Integer;
    FBeginLine: Integer;
    FConfGroupType: TConfGroupType;
    FReadOnly: boolean;
    function GetEntryStub: String;
    function GetGroupType: String;
  protected
    function  SetBeginLine(aConfFile :TStringList):integer;  // -1 on fail
    function  SetEndLine(aConfFile :TStringList):integer;    // -1 on fail
  public
    //......... Create Registery Entry. Allow for Custom EntryStub
    constructor Create(EntryType,BeginTag,EndTag:String; GroupType:TConfGroupType;
                EntryStub:String='default'; ReadOnly:boolean=false); overload;
    //......... Create ConfEntry from RegEntry (Copy Constructor)
    constructor Create(RegEntry: TBaseEntry); overload;
    function EntryPresent(ConfFile:TStringList;ParseStartLine:Integer):boolean;
    property BeginTag   : String read FBeginTag write FBeginTag;
    property EndTag     : String read FEndTag write FEndTag;
    property BeginLine  : Integer read FBeginLine write FBeginLine;
    property EndLine    : Integer read FEndLine write FEndLine;
    property GroupType  : String read GetGroupType;
    property EntryType  : String read FEntryType write FEntryType;
    property EntryGroup : TConfGroupType read FConfGroupType;
    property EntryName  : String read FEntryName write FEntryName;
    property EntryStub  : String read GetEntryStub;
    property Enabled    : boolean read FEnabled;
    property ID         : TGuid read FID;
    property Parent     : TGuid read FParent write FParent;
    Property IsReadOnly : boolean read FReadOnly;
  end;

  {TEntryRegistry}
  TEntryRegistry=class(TObjectList)
  private
  protected
  public
    constructor Create; overload;
    procedure RegisterEntry(RegistryEntry :TBaseEntry);
    function  GetEntryStub(EntryType : String):String;
    function GetEntry(EntryType: string): TBaseEntry;
  end;

  {TEntryList}
  TEntryList=class(TObjectList)
  private
    FConfFile : TStringList;
    FEntryRegistry : TEntryRegistry;
    procedure SetEntryName(ConfEntry :TBaseEntry);
    function  HasBeginTag(RegEntry :TBaseEntry; EntryPoint:Integer): boolean;
    function  HasEndTag(ConfEntry :TBaseEntry; EntryPoint:Integer): boolean;
    //......  Hunt will create an Entry and return it's list index or -1 on fail
    function  Hunt(EntryPoint: Integer): integer;
    //......  returns the matching RegEntry's list index or -1 on fail
    function  HuntBeginTag(EntryPoint: Integer): integer;
    procedure HuntEndTag(EntryContext:TBaseEntry; EntryPoint:Integer);
  protected
  public
    constructor Create; overload;
    function AddEntry(ConfEntry :TBaseEntry):Integer;
    procedure BuildList(ConfFile: TStringList);

  end;

  // helper classes / procedures
  TDelphiConfEntry=class(TObject)
  protected
    FEntryName: String;
    FModuleSymbol: String;
    FModule: String;
    FVirtualDirectory: String;
    FModuleHandler: String;
  public
    property EntryName : String read FEntryName write FEntryName;
    property Module: String read FModule write FModule;
    property ModuleSymbol : String read FModuleSymbol write FModuleSymbol;
    property ModuleName : String read FEntryName write FEntryName;
    property ModuleHandler : String read FModuleHandler write FModuleHandler;
    property VirtualDirectory : String read FVirtualDirectory write FVirtualDirectory;
    function GenModuleEntry: string;

  end;

var
    EntryRegistry : TEntryRegistry;
    EntryList : TEntryList;



implementation

//-----------------------------------------------------------------------------
{ TBaseEntry }
//-----------------------------------------------------------------------------
constructor TBaseEntry.Create(EntryType,BeginTag,EndTag:String; GroupType:TConfGroupType;
            EntryStub:String='default'; ReadOnly:boolean=false);
begin
  inherited Create;
  FConfGroupType:=GroupType;
  FBeginTag := BeginTag;
  FEndTag := EndTag;
  FEntryType := EntryType;
  CreateGUID(FID);
  FParent := FID;
  FReadOnly := ReadOnly;
  //FEntryType := cetRegistry;
end;
//-----------------------------------------------------------------------------
constructor TBaseEntry.Create(RegEntry: TBaseEntry);
begin
  Create(RegEntry.EntryType,RegEntry.BeginTag,RegEntry.EndTag,RegEntry.EntryGroup);
  FBeginLine := RegEntry.BeginLine;
  FEndLine := RegEntry.BeginLine;
  FEnabled := true;
end;
//-----------------------------------------------------------------------------
function TBaseEntry.EntryPresent(ConfFile: TStringList; ParseStartLine: Integer): boolean;
begin
  FBeginLine := ParseStartLine;
  if SetBeginLine(ConfFile) = -1 then
    result := false
  else
    result := true;
end;
//-----------------------------------------------------------------------------
function TBaseEntry.GetEntryStub: String;
begin

end;

//-----------------------------------------------------------------------------
function TBaseEntry.GetGroupType: String;
begin
  case FConfGroupType of
    cgtDirectory:       result := 'Directory';
    cgtLocation:        result := 'Location';
    cgtBundledEntry:    result := 'BundledEntry';
    cgtSingleEntry:     result := 'SingleEntry';
    cgtBlockEntry:      result := 'BlockEntry';
  end;

end;
//-----------------------------------------------------------------------------
function TBaseEntry.SetBeginLine(aConfFile: TStringList): integer;
var
  i : integer;
begin
  result := -1;
  if BeginTag = '' then
    raise EConfEntryException.Create('ScanForBeginLine: BeginTag not Set');

  for i := BeginLine to aConfFile.Count -1 do
    // eat comment tags
    if AnsiPos(CommentTag, Trim(aConfFile.Strings[i])) <> 1 then
      // trim(eat WhiteSpace) and check for BeginTag
      if AnsiPos(BeginTag, Trim(aConfFile.Strings[i])) =1 then
      begin
        FBeginLine := i ;
        result := i ;
        break;
      end;
end;
//-----------------------------------------------------------------------------
function TBaseEntry.SetEndLine(aConfFile: TStringList): integer;
var
  i : integer;
begin
  result := -1;
  // if this is a SingleEntry then Endline = beginline
  if FConfGroupType=cgtSingleEntry then
  begin
    result := BeginLine ;
    FEndLine := BeginLine ;
  end
  else
  begin
    if EndTag = '' then
      raise EConfEntryException.Create('ScanForEndLine: EndTag not Set');

    for i := BeginLine to aConfFile.Count -1 do
      if AnsiPos(EndTag, aConfFile.Strings[i]) <> 0 then
      begin
        // adjust for zero based index
        FEndLine := i ;
        result := i ;
        break;
      end;
  end;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
{ TEntryRegistry }
//-----------------------------------------------------------------------------
constructor TEntryRegistry.Create;
begin
  inherited Create;
  // Add default Entries.
  RegisterEntry(TBaseEntry.Create('Delphi Entry', TagBegin, TagEnd,
                cgtBundledEntry, 'default', true));
  RegisterEntry(TBaseEntry.Create('Directory', '<Directory','</Directory>',
                cgtDirectory, DirectoryEntryStub, true));
  RegisterEntry(TBaseEntry.Create('Location','<Location', '</Location>',
                cgtLocation, LocationEntryStub,true));
  RegisterEntry(TBaseEntry.Create('IfModule', '<IfModule','</IfModule>',
                cgtBlockEntry, 'default', true));
  //RegistryEntry(TBaseEntry.Create('DelphiEntry, '# Begin: DelphiEntry');
end;

function TEntryRegistry.GetEntry(EntryType: string): TBaseEntry;
var
  i: integer;
  EntryItem: TBaseEntry;
begin
  for i := 0 to self.Count -1 do
  begin
    EntryItem := TBaseEntry(self.Items[i]);
    if EntryItem.EntryType = EntryType then
      result := EntryItem;
  end;
end;

function TEntryRegistry.GetEntryStub(EntryType: String): String;
begin

end;
//-----------------------------------------------------------------------------
procedure TEntryRegistry.RegisterEntry(RegistryEntry: TBaseEntry);
begin
  Self.Add(RegistryEntry);
end;
//-----------------------------------------------------------------------------


{ TEntryList }
//-----------------------------------------------------------------------------
function TEntryList.AddEntry(ConfEntry: TBaseEntry):integer;
begin
  result := Self.Add(ConfEntry);
end;
//-----------------------------------------------------------------------------
{
procedure TEntryList.BuildList(ConfFile: TStringList; EntryRegistry: TEntryRegistry);
var
  confIndex, registryIndex, entryIndex :integer;
  EntryGroup : TConfGroupType;
  RegEntry : TBaseEntry;
begin
  Self.Clear;
  for registryIndex := 0 to EntryRegistry.Count -1 do
  begin
    RegEntry := TBaseEntry(EntryRegistry.Items[registryIndex]);
    EntryGroup := RegEntry.FConfGroupType;
    confIndex := 0;
    while  RegEntry.EntryPresent(ConfFile,confIndex) do
    begin
      try
      entryIndex := Self.AddEntry(TBaseEntry.Create(RegEntry.EntryType, RegEntry.BeginTag,
                    RegEntry.EndTag,RegEntry.FConfGroupType,ConfFile,ConfIndex));
      // set confIndex to the NextLine after the LastLine of the prev Entry
      confIndex := TBaseEntry(Self.Items[EntryIndex]).EndLine + 1;
      except
        on EConfEntryException do break;
      end; // except
    end; // while EntryPresent
  end; // registryIndex

end;
}
//-----------------------------------------------------------------------------
procedure TEntryList.BuildList(ConfFile: TStringList);
var
  confIndex, registryIndex, entryIndex :integer;
  EntryGroup : TConfGroupType;
  RegEntry, ListEntry : TBaseEntry;
begin
  Self.Clear;
  FConfFile := ConfFile;
  //FEntryRegistry := EntryRegistry;
  confIndex := 0;
  while(confIndex < ConfFile.Count) do
  begin
    entryIndex := Hunt(confIndex);
    if entryIndex <> -1 then
    begin
      confIndex := TBaseEntry(self.Items[entryIndex]).EndLine ;
    end;
    inc(confIndex);
  end; // for confIndex

end; // procedure TEntryList.BuildList
//-----------------------------------------------------------------------------
constructor TEntryList.Create;
begin
  inherited Create;
  FEntryRegistry := EntryRegistry;
end;


function TEntryList.HasBeginTag(RegEntry: TBaseEntry; EntryPoint: Integer): boolean;
begin
  result := false;
  if RegEntry.BeginTag = '' then
    raise EEntryListException.Create('HasBeginTag: BeginTag not Set');

      // Check for comment tags (except for bundledentry)
      if (RegEntry.EntryGroup = cgtBundledEntry) or
         (AnsiPos(CommentTag, Trim(FConfFile.Strings[EntryPoint])) <> 1) then
      // trim(eat WhiteSpace) and check for BeginTag
      if AnsiPos(RegEntry.BeginTag, Trim(FConfFile.Strings[EntryPoint])) =1 then
        result := true;
end;
//-----------------------------------------------------------------------------
function TEntryList.HasEndTag(ConfEntry: TBaseEntry; EntryPoint: Integer): boolean;
begin
  result := false;
  // if this is a SingleEntry then no EndTag (EndLine = BeginLine);
  if ConfEntry.EntryGroup=cgtSingleEntry then
  begin
    ConfEntry.EndLine := ConfEntry.BeginLine;
    result := true;
  end
  else
  begin
    if ConfEntry.EndTag = '' then
      raise EEntryListException.Create('HasEndTag: EndTag not Set');

      // Check for comment tags (except for bundledentry)
      if (ConfEntry.EntryGroup = cgtBundledEntry) or
         (AnsiPos(CommentTag, Trim(FConfFile.Strings[EntryPoint])) <> 1) then
        // trim(eat WhiteSpace) and check for BeginTag
        if AnsiPos(ConfEntry.EndTag, Trim(FConfFile.Strings[EntryPoint])) =1 then
          result := true;
  end; //else
end;
//-----------------------------------------------------------------------------
function TEntryList.Hunt(EntryPoint: Integer): integer;
var
  regIndex : integer;
  RegEntry,HuntEntry : TBaseEntry;
begin
  Result := -1;
  regIndex := HuntBeginTag(EntryPoint);
  if regIndex <> -1 then
  begin
    RegEntry := TBaseEntry(FEntryRegistry.Items[regIndex]);
    //RegEntry.BeginLine := EntryPoint;
    //RegEntry.EndLine := EntryPoint;
    // make a copy of the RegEntry and set BeginLine/EndLine to EntryPoint;
    HuntEntry :=TBaseEntry.Create(RegEntry);
    HuntEntry.BeginLine := EntryPoint;
    HuntEntry.EndLine := EntryPoint ;
    HuntEndTag(HuntEntry, EntryPoint);
    SetEntryName(HuntEntry);
    result := Self.AddEntry(HuntEntry);
  end;
end;
//-----------------------------------------------------------------------------
function TEntryList.HuntBeginTag(EntryPoint: Integer): integer;
var
  RegEntry : TBaseEntry;
  i : integer;
begin
  result := -1;
  for i := 0 to FEntryRegistry.Count -1 do
    if HasBeginTag(TBaseEntry(FEntryRegistry.Items[i]),EntryPoint) then
    begin
      result := i;
      break;
    end;
end;
//-----------------------------------------------------------------------------
procedure TEntryList.HuntEndTag(EntryContext: TBaseEntry; EntryPoint: Integer);
var
  entryIndex, confIndex, axe : integer;
  NestedEntry : TBaseEntry;
begin
  // loop from the EntryPoint to Endof ConfFile looking for EndTag
  confIndex := EntryPoint ;
  axe := EntryPoint;
  while((confIndex < FConfFile.Count) or (axe < FConfFile.Count)) do
  begin
    if HasEndTag(EntryContext, confIndex) then
    begin
      EntryContext.EndLine := confIndex;
      break; // done end tag was found
    end;
    inc(confIndex);
    inc(axe);
    // endTag not found so Check for nested tag using hunt in recursion
    // let's not do this for a bundled entry though...
    if EntryContext.EntryGroup <> cgtBundledEntry then
    begin
      entryIndex := Hunt(confIndex);
      if entryIndex <> -1 then
      begin
        NestedEntry:= TBaseEntry(self.Items[entryIndex]);
        // this is a nested entry so set it's parent
        NestedEntry.Parent := EntryContext.ID;
        confIndex := NestedEntry.EndLine ;
      end; // nestedEntry
    end;
  end; // for i
end;
//-----------------------------------------------------------------------------

procedure TEntryList.SetEntryName(ConfEntry: TBaseEntry);
var
  tempLine : String;
  RFlags : TReplaceFlags;
begin
  tempLine := Trim(StringReplace(FConfFIle.Strings[ConfEntry.BeginLine],ConfEntry.BeginTag,'',RFlags));
  case ConfEntry.EntryGroup of
    cgtDirectory:
      ConfEntry.EntryName := StringReplace(tempLine,'>','',RFlags);
    cgtLocation:
      ConfEntry.EntryName := StringReplace(tempLine,'>','',RFlags);
    cgtBundledEntry:
      ConfEntry.EntryName := StringReplace(TempLine,CommentTag,'', RFlags);
    cgtSingleEntry:
      ConfEntry.EntryName := tempLine;
    cgtBlockEntry:
      ConfEntry.EntryName := StringReplace(tempLine,'>','',RFlags);
  end;
end;
//-----------------------------------------------------------------------------
{ TDelphiConfEntry }

function TDelphiConfEntry.GenModuleEntry: string;
var
  listBuf : TStringList;
begin
  try
    listBuf := TStringList.Create;
    listBuf.Append(format(FmtBegin,[EntryName]));
    listBuf.Append(TagHeader);
    listBuf.Append(format(FmtLoadModule,[ModuleSymbol,Module]));
    listBuf.Append(format(FmtLocationStart,[VirtualDirectory]));
    listBuf.Append(format(FmtSetHandler,[ModuleHandler]));
    listBuf.Append(TagLocationEnd);
    listBuf.Append(format(FmtEnd,[EntryName]));
    result := listBuf.Text;
  finally
    listBuf.Free;
  end;
end;


initialization
  EntryRegistry := TEntryRegistry.Create;
  EntryList := TEntryList.Create;
end.
// EntryType,BeginTag,EndTag:String; GroupType:TConfGroupType;
//                ConfFile:TStringList; ParseStartLine:Integer); overload;