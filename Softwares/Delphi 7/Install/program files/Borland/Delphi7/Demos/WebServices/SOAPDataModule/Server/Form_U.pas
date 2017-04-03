unit Form_U;

interface

uses
  SysUtils, Classes, Forms;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses SockApp;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Caption := Application.ExeName;
end;

initialization
  TWebAppSockObjectFactory.Create('Sample')

end.
