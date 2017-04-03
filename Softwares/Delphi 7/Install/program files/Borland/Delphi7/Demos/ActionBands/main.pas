unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, ComCtrls, BandActn, StdActns, ExtActns,
  ActnList, ToolWin, ExtCtrls, ActnMan, ActnCtrls, ActnMenus,
  XPStyleActnCtrls, StdStyleActnCtrls;

type
  TForm1 = class(TForm)
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    ToolActionBar1: TActionToolBar;
    ToolActionBar2: TActionToolBar;
    ToolActionBar3: TActionToolBar;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    RichEditStrikeOut1: TRichEditStrikeOut;
    RichEditBullets1: TRichEditBullets;
    RichEditAlignLeft1: TRichEditAlignLeft;
    RichEditAlignRight1: TRichEditAlignRight;
    RichEditAlignCenter1: TRichEditAlignCenter;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileRun1: TFileRun;
    FileExit1: TFileExit;
    SearchFind1: TSearchFind;
    SearchFindNext1: TSearchFindNext;
    SearchReplace1: TSearchReplace;
    SearchFindFirst1: TSearchFindFirst;
    CustomizeActionBars1: TCustomizeActionBars;
    RichEdit1: TRichEdit;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    StdStyleActn: TAction;
    XPStyleActn: TAction;
    ShadowActn: TAction;
    FilePageSetup1: TFilePageSetup;
    procedure FileOpen1Accept(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
    procedure ActionManager1StateChange(Sender: TObject);
    procedure StdStyleActnExecute(Sender: TObject);
    procedure XPStyleActnExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShadowActnExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FileOpen1Accept(Sender: TObject);
begin
  RichEdit1.Lines.LoadFromFile(FileOpen1.Dialog.FileName);
end;

procedure TForm1.FileSaveAs1Accept(Sender: TObject);
begin
  RichEdit1.Lines.SaveToFile(FileSaveAs1.Dialog.FileName);
end;

procedure TForm1.ActionManager1StateChange(Sender: TObject);
begin
  RichEdit1.ReadOnly := ActionManager1.State <> asNormal;
end;

procedure TForm1.StdStyleActnExecute(Sender: TObject);
begin
  ActionManager1.Style := StandardStyle;
end;

procedure TForm1.XPStyleActnExecute(Sender: TObject);
begin
  ActionManager1.Style := XPStyle;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  XPStyleActn.Checked := ActionManager1.Style = XPStyle;
  StdStyleActn.Checked := ActionManager1.Style = StandardStyle;
end;

procedure TForm1.ShadowActnExecute(Sender: TObject);
begin
  ActionMainMenuBar1.Shadows := ShadowActn.Checked;
end;

end.
