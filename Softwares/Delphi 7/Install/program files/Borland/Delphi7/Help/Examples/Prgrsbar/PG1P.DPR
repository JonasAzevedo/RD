program Pg1p;

uses
  Forms,
  Pg1 in 'Pg1.pas' {Form1},
  Pg2 in 'Pg2.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
