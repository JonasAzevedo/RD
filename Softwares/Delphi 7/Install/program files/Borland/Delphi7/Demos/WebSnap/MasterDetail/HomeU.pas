
unit HomeU;

interface

uses
  Windows, Messages, SysUtils, Classes, HTTPApp, WebModu, HTTPProd, ReqMulti,
  WebDisp, WebAdapt, WebComp;

type
  THome = class(TWebAppPageModule)
    PageProducer: TPageProducer;
    WebAppComponents: TWebAppComponents;
    ApplicationAdapter: TApplicationAdapter;
    PageDispatcher: TPageDispatcher;
    AdapterDispatcher: TAdapterDispatcher;
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

initialization
  if WebRequestHandler <> nil then
    WebRequestHandler.AddWebModuleFactory(TWebAppPageModuleFactory.Create(THome, TWebPageInfo.Create([wpPublished {, wpLoginRequired}], '.html'), caCache));

end.
