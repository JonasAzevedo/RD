unit ConsoleU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses ComApp;

{$R *.dfm}

const
  CLASS_ComWebApp: TGUID = '{1A808F86-ECD7-11D4-A54F-00C04F6BB853}';

initialization
  TWebAppAutoObjectFactory.Create(Class_ComWebApp,
    'CountryEditorTestSvr', 'CountryEditorTestSvr Object');

end.
