program bitmap;

uses
  Forms,
  bmpformu in 'bmpformu.pas' {BmpForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TBmpForm, BmpForm);
  Application.Run;
end.
