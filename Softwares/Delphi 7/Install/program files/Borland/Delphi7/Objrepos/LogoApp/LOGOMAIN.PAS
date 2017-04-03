unit LOGOMAIN;

interface

uses Windows, Classes, Graphics, Forms, Controls, Menus,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList, StdActns,
  ActnList, ToolWin;

type
  TLogoAppForm = class(TForm)
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    ToolBar1: TToolBar;
    ToolButton9: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ActionList1: TActionList;
    FileNew1: TAction;
    FileOpen1: TAction;
    FileSave1: TAction;
    FileSaveAs1: TAction;
    FileSend1: TAction;
    FileExit1: TAction;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    HelpAbout1: TAction;
    StatusBar: TStatusBar;
    ImageList1: TImageList;
    RichEdit1: TRichEdit;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    N1: TMenuItem;
    FileSendItem: TMenuItem;
    N2: TMenuItem;
    FileExitItem: TMenuItem;
    Edit1: TMenuItem;
    CutItem: TMenuItem;
    CopyItem: TMenuItem;
    PasteItem: TMenuItem;
    Help1: TMenuItem;
    HelpAboutItem: TMenuItem;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure FileSave1Execute(Sender: TObject);
    procedure FileSaveAs1Execute(Sender: TObject);
    procedure FileSend1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
  private
    FFileName: String;
  public
    { Public declarations }
  end;

var
  LogoAppForm: TLogoAppForm;

implementation

uses SysUtils, Mapi, about;

{$R *.dfm}

resourcestring
  SUntitled  = 'Untitled';
  SOverwrite = 'OK to overwrite %s';
  SSendError = 'Error sending mail';

procedure TLogoAppForm.FileNew1Execute(Sender: TObject);
begin
  FFileName := SUntitled;
  RichEdit1.Lines.Clear;
  RichEdit1.Modified := False;
end;

procedure TLogoAppForm.FileOpen1Execute(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    RichEdit1.Lines.LoadFromFile(OpenDialog.FileName);
    FFileName := OpenDialog.FileName;
    RichEdit1.SetFocus;
    RichEdit1.Modified := False;
    RichEdit1.ReadOnly := ofReadOnly in OpenDialog.Options;
  end;
end;

procedure TLogoAppForm.FileSave1Execute(Sender: TObject);
begin
  if FFileName = SUntitled then
    FileSaveAs1Execute(Sender)
  else
  begin
    RichEdit1.Lines.SaveToFile(FFileName);
    RichEdit1.Modified := False;
  end;
end;

procedure TLogoAppForm.FileSaveAs1Execute(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    if FileExists(SaveDialog.FileName) then
      if MessageDlg(Format(SOverwrite, [SaveDialog.FileName]),
        mtConfirmation, mbYesNoCancel, 0) <> idYes then Exit;
    RichEdit1.Lines.SaveToFile(SaveDialog.FileName);
    FFileName := SaveDialog.FileName;
    RichEdit1.Modified := False;
  end;
end;

procedure TLogoAppForm.FileSend1Execute(Sender: TObject);
var
  MapiMessage: TMapiMessage;
  MError: Cardinal;
begin
  with MapiMessage do
  begin
    ulReserved := 0;
    lpszSubject := nil;
    lpszNoteText := PChar(RichEdit1.Lines.Text);
    lpszMessageType := nil; 
    lpszDateReceived := nil; 
    lpszConversationID := nil; 
    flFlags := 0;
    lpOriginator := nil; 
    nRecipCount := 0;
    lpRecips := nil; 
    nFileCount := 0;
    lpFiles := nil; 
  end;
  
  MError := MapiSendMail(0, Application.Handle, MapiMessage, 
    MAPI_DIALOG or MAPI_LOGON_UI or MAPI_NEW_SESSION, 0);
  if MError <> 0 then MessageDlg(SSendError, mtError, [mbOK], 0);
end;

procedure TLogoAppForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TLogoAppForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

end.
