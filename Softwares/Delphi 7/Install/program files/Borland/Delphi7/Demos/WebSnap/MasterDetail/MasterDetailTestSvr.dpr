program MasterDetailTestSvr;

{$APPTYPE GUI}

{%File 'readme.txt'}

uses
  Forms,
  ComApp,
  ConsoleU in 'ConsoleU.pas' {Form1},
  HomeU in 'HomeU.pas' {Home: TWebAppPageModule} {*.html},
  DMU in 'DMU.pas' {WebDataModule1: TWebDataModule},
  OrderFormU in 'OrderFormU.pas' {OrderForm: TWebPageModule} {*.html},
  OrderGridU in 'OrderGridU.pas' {OrdersGrid: TWebPageModule} {*.html},
  ObjAuto in '..\..\..\..\..\main\rtl\common\ObjAuto.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
