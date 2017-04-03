unit QRLABELS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, DBTables, QUICKRPT, QRCTRLS, ExtCtrls;

type
  TQRLabelForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    MasterTable: TTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRLabelForm: TQRLabelForm;

implementation

{$R *.dfm}

end.
