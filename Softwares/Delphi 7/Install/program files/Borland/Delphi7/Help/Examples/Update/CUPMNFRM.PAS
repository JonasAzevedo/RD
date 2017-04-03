unit CUpMnFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, ComCtrls;

type
  TForm1 = class(TForm)
    DBGridRefresh: TDBGrid;
    DBGridCache: TDBGrid;
    DBNavigator1: TDBNavigator;
    ButtonApply: TButton;
    ButtonCancel: TButton;
    ButtonUndo: TButton;
    ButtonRefresh: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure ButtonApplyClick(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonUndoClick(Sender: TObject);
    procedure ButtonRefreshClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses  CUpDM;

{$R *.DFM}


procedure TForm1.ButtonApplyClick(Sender: TObject);
begin
  DataModuleCache.DBaseCache.ApplyUpdates([DataModuleCache.QueryCache]);
end;

procedure TForm1.ButtonCancelClick(Sender: TObject);
begin
  DataModuleCache.QueryCache.CancelUpdates;
end;

procedure TForm1.ButtonUndoClick(Sender: TObject);
begin
  DataModuleCache.QueryCache.RevertRecord;
end;

procedure TForm1.ButtonRefreshClick(Sender: TObject);
begin
  with DataModuleCache.TableRefresh do
  begin
    close;
    open;
  end;
end;

end.
