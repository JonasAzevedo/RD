unit DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPConBDE, DBTables, RPDefine, RPCon, RPConDS, Db;

type
  TDataModule2 = class(TDataModule)
    CustomerTable: TTable;
    OrdersTable: TTable;
    ItemsTable: TTable;
    PartsTable: TTable;
    ClientsTable: TTable;
    ClientsCXN: TRvTableConnection;
    MasterTable: TTable;
    BioLifeTable: TTable;
    VendorsTable: TTable;
    CustrOrdQuery: TQuery;
    CustOrdCXN: TRvQueryConnection;
    CustomerCXN: TRvTableConnection;
    OrdersCXN: TRvTableConnection;
    PartsCXN: TRvTableConnection;
    BioLifeCXN: TRvTableConnection;
    MasterCXN: TRvTableConnection;
    ItemsCXN: TRvTableConnection;
    VendorsCXN: TRvTableConnection;
    ItemsTableOrderNo: TFloatField;
    ItemsTableItemNo: TFloatField;
    ItemsTablePartNo: TFloatField;
    ItemsTableQty: TIntegerField;
    ItemsTableDiscount: TFloatField;
    ItemsTableListPrice: TCurrencyField;
    ItemsTableTotalPrice: TCurrencyField;
    CustomMasterCXN: TRvCustomConnection;
    CustomDetail1CXN: TRvCustomConnection;
    CustomDetail2CXN: TRvCustomConnection;
    CustomCXN: TRvCustomConnection;
    procedure CustomCXNGetCols(Connection: TRvCustomConnection);
    procedure CustomCXNGetRow(Connection: TRvCustomConnection);
    procedure CustomCXNEOF(Connection: TRvCustomConnection;
      var EOF: Boolean);
    procedure ItemsTableCalcFields(DataSet: TDataSet);
    procedure CustomMasterCXNGetCols(Connection: TRvCustomConnection);
    procedure CustomMasterCXNGetRow(Connection: TRvCustomConnection);
    procedure CustomMasterCXNOpen(Connection: TRvCustomConnection);
    procedure CustomDetail1CXNGetCols(Connection: TRvCustomConnection);
    procedure CustomDetail1CXNGetRow(Connection: TRvCustomConnection);
    procedure CustomDetail1CXNOpen(Connection: TRvCustomConnection);
    procedure CustomDetail2CXNGetCols(Connection: TRvCustomConnection);
    procedure CustomDetail2CXNGetRow(Connection: TRvCustomConnection);
    procedure CustomDetail2CXNOpen(Connection: TRvCustomConnection);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.DFM}

procedure TDataModule2.CustomCXNGetCols(
  Connection: TRvCustomConnection);
begin
  With Connection do begin
    WriteField('Index',dtInteger,8,'Index Field','This field is the index of each row.');
    WriteField('Name',dtString,30,'Name Field','This field is the name of each row.');
    WriteField('Amount',dtFloat,20,'Amount Field','This field is the amount of each row.');
  end; { with }
end;

procedure TDataModule2.CustomCXNGetRow(
  Connection: TRvCustomConnection);
begin
  With Connection do begin
    WriteIntData('',DataIndex);
    WriteStrData('','Name' + IntToStr(DataIndex));
    WriteFloatData('',DataIndex * 123.45);
  end; { with }
end;

procedure TDataModule2.CustomCXNEOF(Connection: TRvCustomConnection;
  var EOF: Boolean);
begin
  EOF := (Connection.DataIndex > 1000);
end;

procedure TDataModule2.ItemsTableCalcFields(DataSet: TDataSet);
begin
  With ItemsTable do begin
    ItemsTableTotalPrice.AsCurrency := FieldByName('ListPrice').AsCurrency *
     FieldByName('Qty').AsInteger *
     ((100.0 - FieldByName('Discount').AsFloat) / 100.0);
  end; { with }
end;

procedure TDataModule2.CustomMasterCXNGetCols(Connection: TRvCustomConnection);
begin
  Connection.WriteField('MasterKey',dtInteger,8,'','');
  Connection.WriteField('MasterName',dtString,40,'','');
end;

procedure TDataModule2.CustomMasterCXNGetRow(Connection: TRvCustomConnection);

var
  S1: string;

begin
  Connection.WriteIntData('',Connection.DataIndex);
  S1 := MoneyToLongName(Connection.DataIndex);
  Delete(S1,Length(S1) - 10,11); { Delete " and 00/100" from end }
  Connection.WriteStrData('','Master (' + S1 + ')');
end;

procedure TDataModule2.CustomMasterCXNOpen(Connection: TRvCustomConnection);
begin
  Connection.DataRows := 10;
end;

procedure TDataModule2.CustomDetail1CXNGetCols(Connection: TRvCustomConnection);
begin
  Connection.WriteField('MasterKey',dtInteger,8,'','');
  Connection.WriteField('Detail1Key',dtInteger,8,'','');
  Connection.WriteField('Detail1Name',dtString,40,'','');
end;

procedure TDataModule2.CustomDetail1CXNGetRow(Connection: TRvCustomConnection);

var
  S1: string;

begin
  Connection.WriteIntData('',Connection.DataIndex div 10);
  Connection.WriteIntData('',Connection.DataIndex mod 10);
  S1 := MoneyToLongName(Connection.DataIndex);
  Delete(S1,Length(S1) - 10,11); { Delete " and 00/100" from end }
  Connection.WriteStrData('','Detail #1 (' + S1 + ')');
end;

procedure TDataModule2.CustomDetail1CXNOpen(Connection: TRvCustomConnection);
begin
  Connection.DataRows := 100;
end;

procedure TDataModule2.CustomDetail2CXNGetCols(Connection: TRvCustomConnection);
begin
  Connection.WriteField('MasterKey',dtInteger,8,'','');
  Connection.WriteField('Detail1Key',dtInteger,8,'','');
  Connection.WriteField('Detail2Key',dtInteger,8,'','');
  Connection.WriteField('Detail2Name',dtString,40,'','');
end;

procedure TDataModule2.CustomDetail2CXNGetRow(Connection: TRvCustomConnection);

var
  S1: string;

begin
  Connection.WriteIntData('',Connection.DataIndex div 100);
  Connection.WriteIntData('',(Connection.DataIndex div 10) mod 10);
  Connection.WriteIntData('',Connection.DataIndex mod 10);
  S1 := MoneyToLongName(Connection.DataIndex);
  Delete(S1,Length(S1) - 10,11); { Delete " and 00/100" from end }
  Connection.WriteStrData('','Detail #2 (' + S1 + ')');
end;

procedure TDataModule2.CustomDetail2CXNOpen(Connection: TRvCustomConnection);
begin
  Connection.DataRows := 1000;
end;

end.