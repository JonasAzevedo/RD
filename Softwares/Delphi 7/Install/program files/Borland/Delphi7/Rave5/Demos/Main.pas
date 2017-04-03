unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RpRave, RpDefine, RpBase, RpSystem;

type
  TForm1 = class(TForm)
    RvSystem1: TRvSystem;
    ReportLB: TListBox;
    DescMemo: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    RvProject: TRvProject;
    procedure FormCreate(Sender: TObject);
    procedure ReportLBClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ShowNotice: boolean = true;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  RvProject.Open;
  RvProject.GetReportList(ReportLB.Items,true);
end;

procedure TForm1.ReportLBClick(Sender: TObject);
begin
  RvProject.SelectReport(ReportLB.Items[ReportLB.ItemIndex],true);
  RvProject.ReportDescToMemo(DescMemo);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  RvProject.Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  RvProject.Execute;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ReportLB.ItemIndex := 0;
  ReportLBClick(nil);
end;

end.
