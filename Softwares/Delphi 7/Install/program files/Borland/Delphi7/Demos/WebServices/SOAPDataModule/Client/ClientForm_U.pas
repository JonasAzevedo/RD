unit ClientForm_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Rio, SOAPHTTPClient, DB, DBClient, SOAPConn, DBGrids, ExtCtrls,
  DBCtrls, Grids, ValEdit, StdCtrls, ComCtrls, XSBuiltIns, ToolWin, ExtDlgs,
  InvokeRegistry;

type
  TClientForm = class(TForm)
    SoapConnection1: TSoapConnection;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    ConnectBut: TButton;
    PageControl1: TPageControl;
    BasicData: TTabSheet;
    ApplyBut: TButton;
    RefreshBut: TButton;
    DBNavigator1: TDBNavigator;
    OpenBut: TButton;
    DBGrid1: TDBGrid;
    URLList: TComboBox;
    TabSheet1: TTabSheet;
    CustomMethod: TButton;
    Label2: TLabel;
    procedure ApplyButClick(Sender: TObject);
    procedure RefreshButClick(Sender: TObject);
    procedure ConnectButClick(Sender: TObject);
    procedure CustomMethodClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientForm: TClientForm;

implementation

uses IDataMod1;

{$R *.dfm}

procedure TClientForm.ApplyButClick(Sender: TObject);
begin
  ClientDataSet1.ApplyUpdates(-1);
end;

procedure TClientForm.RefreshButClick(Sender: TObject);
begin
  if ClientDataset1.Active then
  begin
    ClientDataSet1.Close;
    ClientDataSet1.Open;
  end;
end;


procedure TClientForm.ConnectButClick(Sender: TObject);
begin
  SoapConnection1.URL:=URLList.Text+'/soap/IDataMod';
  SoapConnection1.Open;
  ClientDataSet1.Open;
end;

procedure TClientForm.CustomMethodClick(Sender: TObject);
begin
  ShowMessage((SoapConnection1.GetSOAPServer as IDataMod).CustomMethod);
end;

end.
