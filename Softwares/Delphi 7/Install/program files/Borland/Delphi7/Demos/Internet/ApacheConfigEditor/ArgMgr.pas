{*******************************************************************************
 ArgMgr.pas
 By:    Shane Hausle
 Usage: Use the TArgManager to Add TArgHandlers to do Application Argument
        Handling. (Args and Params are uses in the same context).
        Create your own TArgHandler Method and pass it in, with the arg to switch
        on, To AddArgHandler.
          AddArgHandler('-foo', ahEchoFoo);

        When the Handler is called you will be at the position of "-foo"
        so for: App.exe -foo bar
        to get the value of foo (bar) you will need to Get the next
        Param by calling GetNextParam....
          Value:= ArgManager.GetNextParam();

*******************************************************************************}
Unit ArgMgr;

interface
uses
  SysUtils, Classes;

type

  TArgHandlerList=class(TStringList);

  TArgHandler = procedure;

  TArgManager=class(TObject)
  private
    FCaseSensitive : boolean;
    FArgHandlerList : TArgHandlerList;
    FArgIndex: integer;
    FArgsHandled: integer;

  public
    constructor Create;
    procedure AddArgHandler(Arg: String; anArgHandler: TArgHandler);
    procedure HandleArgs;
    function GetNextParam(): String;
    function GetPrevParam(): String;
    property CaseSensitive : boolean read FCaseSensitive write FCaseSensitive;
    property ArgHandlerList : TArgHandlerList read FArgHandlerLIst write FArgHandlerList;
    property ArgIndex: integer read FArgIndex write FArgIndex;
    property ArgsHandled: integer read FArgsHandled;
  end;


var
  ArgManager :TArgManager;

implementation
{ TArgManager }
//------------------------------------------------------------------------------
procedure TArgManager.AddArgHandler(Arg: String; anArgHandler: TArgHandler);
begin
  //ArgHandlerList.AddObject(anArgHandler.Arg, anArgHandler);
  ArgHandlerList.AddObject(Arg, TObject(@anArgHandler));
end;

function TArgManager.GetNextParam():String;
begin
  result:= ParamStr(ArgIndex +1);
end;
function TArgManager.GetPrevParam():String;
begin
  result:= ParamStr(ArgIndex +1);
end;

constructor TArgManager.Create;
begin
  ArgHandlerList := TArgHandlerList.Create;
  CaseSensitive := false;
  FArgsHandled := 0;
end;
//------------------------------------------------------------------------------
procedure TArgManager.HandleArgs;
var
  i, j : integer;
  param : String;
begin
  // parse options
  for i := 1 to ParamCount do
  begin
    if NOT CaseSensitive then
      param := LowerCase(ParamStr(i))
    else
      param := ParamStr(i);

    for j := 0 to ArgHandlerList.Count -1 do
    begin
      if ArgHandlerList.Strings[j] = param then
      begin
        ArgIndex:= i;
        inc(FArgsHandled);
        TArgHandler(ArgHandlerList.GetObject(j));
      end;
    end;
  end;
end;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
initialization
  ArgManager := TArgManager.Create;
end.

