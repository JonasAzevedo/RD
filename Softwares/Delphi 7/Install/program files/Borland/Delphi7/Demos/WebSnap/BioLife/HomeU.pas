
unit HomeU;

interface

uses
  Windows, Messages, SysUtils, Classes, HTTPApp, WebModu, HTTPProd, ReqMulti,
  WebDisp, WebAdapt, WebComp, WebSess, WebUsers;

type
  THome = class(TWebAppPageModule)
    PageProducer: TPageProducer;
    WebAppComponents: TWebAppComponents;
    ApplicationAdapter: TApplicationAdapter;
    PageDispatcher: TPageDispatcher;
    AdapterDispatcher: TAdapterDispatcher;
    WebUserList1: TWebUserList;
    EndUserSessionAdapter1: TEndUserSessionAdapter;
    SessionsService1: TSessionsService;
    procedure WebAppComponentsException(Sender: TObject; E: Exception;
      var Handled: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function Home: THome;

implementation

{$R *.dfm}  {*.html}

uses WebReq, WebCntxt, WebFact, Variants;

function Home: THome;
begin
  Result := THome(WebContext.FindModuleClass(THome));
end;

procedure THome.WebAppComponentsException(Sender: TObject; E: Exception;
  var Handled: Boolean);
begin
//
  Handled := False;
end;

initialization
  if WebRequestHandler <> nil then
    WebRequestHandler.AddWebModuleFactory(TWebAppPageModuleFactory.Create(THome, TWebPageInfo.Create([wpPublished {, wpLoginRequired}], '.html'), caCache));

end.
