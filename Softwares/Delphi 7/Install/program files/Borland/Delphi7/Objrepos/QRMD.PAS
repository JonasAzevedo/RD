unit QRMD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, DBTables, QUICKRPT, QRCTRLS, ExtCtrls;

type
  TQRMDForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRLabel3: TQRLabel;
    MasterTable: TTable;
    DetailTable: TTable;
    MasterDS: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRMDForm: TQRMDForm;

implementation

{$R *.dfm}

end.
