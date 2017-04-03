program scroll;

uses
  Forms,
  scroldem in 'scroldem.pas' {ScrollForm1},
  about in 'about.pas' {AboutBox};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TScrollForm1, ScrollForm1);
  Application.Run;
end.
