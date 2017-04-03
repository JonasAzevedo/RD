unit dcdemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, MXGRID, MXDB, DB, DBTables, MXTABLES, Mxstore, MXPIVSRC, ExtCtrls;

type
  TDCDemoForm = class(TForm)
    Panel1: TPanel;
    DecisionPivot1: TDecisionPivot;
    DecisionCube1: TDecisionCube;
    DecisionQuery1: TDecisionQuery;
    DecisionSource1: TDecisionSource;
    DecisionGrid1: TDecisionGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DCDemoForm: TDCDemoForm;

implementation

{$R *.dfm}

end.
