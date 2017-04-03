program CLXMDIApp;

uses
  QForms,
  CLXMain in 'CLXMain.pas' {MainForm},
  CLXChildWin in 'CLXChildWin.pas' {MDIChild},
  CLXAbout in 'CLXAbout.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
