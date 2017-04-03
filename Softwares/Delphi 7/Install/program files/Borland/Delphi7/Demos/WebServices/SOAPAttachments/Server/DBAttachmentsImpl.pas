unit DBAttachmentsImpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, DBAttachmentsIntf, SysUtils;

const
  SIniFile = 'SoapAttachDemo.ini'; { do not localize }
  SSection = 'Data';               { do not localize }
  SSetting = 'CdsFile';            { do not localize }
  sCommonName = 'COMMON_NAME';     { do not localize }
  sSpeciesName = 'SPECIES_NAME';   { do not localize }
  sCategory = 'CATEGORY';          { do not localize }
  sLength = 'LENGTH_IN';           { do not localize }
  sNotes = 'NOTES';                { do not localize }
  SGraphics = 'GRAPHIC';          { do not localize }

resourcestring

  SNoCdsFileSetting = 'No %s setting in %s section of %s';
  SNoIniFile = 'Ini File %s not found';

type

  EDBDemoException = class(ERemotableException);

  TDBAttachments = class(TInvokableClass, IDBAttachments)
  public
    function GetCommonNames: TStringArray; stdcall;
    function GetSpeciesInfo(const CommonName: string;
             out SpeciesInfo: TSpeciesInfo): TSOAPAttachment; stdcall;
  end;

implementation

  uses DB, DBClient, IniFiles, Classes;

procedure DBDemoError(const AMessage: string);
begin
  raise EDBDemoException.Create(AMessage);
end;

procedure DBDemoErrorFmt(const AMessage: string; const Args: array of const);
begin
  DBDemoError(Format(AMessage, Args));
end;


function GetCDSFileName: string;
var
  IniFile: TMemIniFile;
begin
  if not FileExists(SIniFile) then
     DBDemoErrorFmt(SNoIniFile, [SIniFile]);
  IniFile := TMemIniFile.Create(SIniFile);
  try
    Result := IniFile.ReadString(SSection, SSetting, '');
  finally
    IniFile.Free;
  end;
end;

function GetDataSet: TClientDataSet;
begin
  Result := TClientDataSet.Create(Nil);
  try
    Result.FileName := GetCDSFileName();
    if Result.FileName = '' then
      DBDemoErrorFmt(SNoCdsFileSetting, [SSetting, SSection, SIniFile]);
  except
    Result.Free;
    raise;
  end;
end;

function TDBAttachments.GetCommonNames: TStringArray; stdcall;
var
  DS: TClientDataSet;
  Size: Integer;
begin
  DS := GetDataSet();
  try
    try
      DS.Open;
      setLength(Result, 0);
      while not DS.Eof do
      begin
        Size := Length(Result) + 1;
        SetLength(Result, Size);
        Result[Size -1] := DS.FieldByName(SCommonName).Value;
        DS.Next;
      end;
    except
      on E: Exception do
      begin
        SetLength(Result,0);
        DBDemoError(E.Message);
      end;
    end
  finally
    DS.Free;
  end;
end;

procedure LoadSpeciesInfo(var Info: TSpeciesInfo; DS: TClientDataSet);
begin
  Info := TSpeciesInfo.Create;
  Info.Category := DS.FieldByName(SCategory).Value;
  Info.CommonName := DS.FieldByName(SCommonName).Value;
  Info.MoreInfo := DS.FieldByName(SNotes).Value;
  Info.SpeciesName := DS.FieldByName(SSpeciesName).Value;
  Info.Length := DS.FieldByName(SLength).Value;
end;


function TDBAttachments.GetSpeciesInfo(const CommonName: string;
             out SpeciesInfo: TSpeciesInfo): TSOAPAttachment;
var
  DS: TClientDataSet;
  GraphStream: TMemoryStream;
begin
  Result := Nil;
  DS := GetDataSet();
  try
    DS.Open;
    try
      if not DS.Locate(SCommonName, CommonName, []) then
      begin
        DBDemoErrorFmt('No Entry for %s', [CommonName]);
        DS.Close;
        exit;
      end;
      GraphStream := TMemoryStream.Create;
      try
        Result := TSoapAttachment.Create;
        TBlobField(DS.FieldByName(SGraphics)).SaveToStream(GraphStream);
        Result.SetSourceStream(GraphStream, soReference);
        LoadSpeciesInfo(SpeciesInfo, DS);
      except
        on E: Exception do
        begin
          if Assigned(Result) then Result.Free;
          DS.Close;
          Result := Nil;
          GraphStream.Free;
          DBDemoError(E.Message);
        end;
      end;
    except
      on E: Exception do
      begin
        DS.Close;
        DBDemoError(E.Message);
      end;
    end;
  finally
    DS.Free;
  end;
end;

initialization
  InvRegistry.RegisterInvokableClass(TDBAttachments);
  InvRegistry.RegisterException(TypeInfo(IDBAttachments), EDBDemoException);
end.
