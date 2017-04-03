program PostSOAP;

{%File 'ReadMe.txt'}

uses
  Forms,
  unit1 in 'unit1.pas' {Form1};

//WSDLPick in 'WSDLPick.pas' {WSDLPicker};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  //Application.CreateForm(TWSDLPicker, WSDLPicker);
  Application.Run;
end.
