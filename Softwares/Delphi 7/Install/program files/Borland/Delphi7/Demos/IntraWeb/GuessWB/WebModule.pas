unit WebModule;

interface

uses
  Windows, Messages, SysUtils, Classes, HTTPApp, IWProducer,
  IWModuleController, IWPageForm, IWApplication;

type
  TwebmMain = class(TWebModule)
    IWModuleController1: TIWModuleController;
    prodMain: TIWPageProducer;
    procedure WebModuleBeforeDispatch(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure prodMainGetForm(ASender: TIWPageProducer;
      AWebApplication: TIWApplication; var VForm: TIWPageForm);
  private
  public
  end;

var
  webmMain: TwebmMain;

implementation
{$R *.dfm}

uses
  Main;

procedure TwebmMain.WebModuleBeforeDispatch(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  // Make sure the returned data is not cached
  Response.CustomHeaders.Values['Expires'] := '0';  // HTTP 1.0
  Response.CustomHeaders.Values['Cache-Control'] := 'no-cache'; // HTTP 1.1
end;

procedure TwebmMain.prodMainGetForm(ASender: TIWPageProducer;
  AWebApplication: TIWApplication; var VForm: TIWPageForm);
begin
  VForm := TformMain.Create(AWebApplication);
end;

end.
