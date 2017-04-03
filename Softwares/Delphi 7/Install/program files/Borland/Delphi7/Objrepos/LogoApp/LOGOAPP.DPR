program LogoApp;

uses
  Forms,
  LOGOMAIN in 'LOGOMAIN.PAS' {LogoAppForm},
  ABOUT in 'ABoUT.PAS' {AboutBox};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TLogoAppForm, LogoAppForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
 
