unit DownloadForm;
{PUBDIST}

interface

uses
  IWAppForm, IWApplication, IWTypes, IWControl, IWCompListbox, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  MenuFrame, IWCompButton;

type
  TformDownload = class(TIWAppForm)
    framMenu1: TframMenu;
    lboxFiles: TIWListbox;
    IWButton1: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  protected
    FPath: string;
  public
  end;

implementation
{$R *.dfm}

uses
  SysUtils, SWSystem;

procedure TformDownload.IWAppFormCreate(Sender: TObject);
var
  i: Integer;
  LSrch: TSearchRec;
begin
  FPath := gsAppPath + 'Downloads\';
  i := FindFirst(FPath + '*.*', faAnyFile, LSrch); try
    while i = 0 do begin
      if (LSrch.Attr and faDirectory) = 0 then 
        lboxFiles.Items.Add(LSrch.Name);
      i := FindNext(LSrch);
    end;
  finally FindClose(LSrch); end;
  lboxFiles.ItemIndex := 0;
end;

procedure TformDownload.IWButton1Click(Sender: TObject);
begin
  if lboxFiles.ItemIndex > -1 then begin
    WebApplication.SendFile(FPath + lboxFiles.Text, '', '', true);
  end;
end;

end.