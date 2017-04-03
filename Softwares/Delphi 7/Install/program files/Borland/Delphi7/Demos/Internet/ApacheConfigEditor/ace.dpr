program ace;

uses
  QForms,
  ACE_u in 'ACE_u.pas' {Form1},
  ColorMemo in 'ColorMemo.pas',
  ConfEntries in 'ConfEntries.pas',
  DlgConfEntryIdentifiers in 'DlgConfEntryIdentifiers.pas' {DlgConfEntryIDents},
  DlgDelphiConfEntry in 'DlgDelphiConfEntry.pas' {DlgBuildEntry},
  ArgMgr in 'ArgMgr.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDlgConfEntryIDents, DlgConfEntryIDents);
  //Application.CreateForm(TDlgBuildEntry, DlgBuildEntry);
  Application.Run;
end.
