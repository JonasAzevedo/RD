unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  HTTPApp, DBWeb, DBTables, Db, DSProd, HTTPProd, DBBdeWeb;

type
  TCustomerInfoModule = class(TWebModule)
    Query1: TQuery;
    CustomerOrders: TQueryTableProducer;
    CustomerList: TPageProducer;
    Customer: TTable;
    CustomerCustNo: TFloatField;
    CustomerCompany: TStringField;
    BioLife: TTable;
    BioLifeCategory: TStringField;
    BioLifeCommon_Name: TStringField;
    BioLifeSpeciesName: TStringField;
    BioLifeLengthcm: TFloatField;
    BioLifeLength_In: TFloatField;
    BioLifeNotes: TMemoField;
    BioLifeGraphic: TGraphicField;
    Root: TPageProducer;
    EmployeeList: TDataSetTableProducer;
    Employee: TTable;
    BioLifeProducer: TDataSetPageProducer;
    BioLifeSpeciesNo: TFloatField;
    Session1: TSession;
    procedure CustomerListHTMLTag(Sender: TObject; Tag: TTag;
      const TagString: String; TagParams: TStrings;
      var ReplaceText: String);
    procedure WebModule1QueryActionAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure CustomerInfoModuleRedirectAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure BioLifeGraphicGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CustomerInfoModuleGetImageAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure BioLifeNotesGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure RootHTMLTag(Sender: TObject; Tag: TTag;
      const TagString: String; TagParams: TStrings;
      var ReplaceText: String);
    procedure EmployeeListFormatCell(Sender: TObject; CellRow,
      CellColumn: Integer; var BgColor: THTMLBgColor;
      var Align: THTMLAlign; var VAlign: THTMLVAlign; var CustomAttrs,
      CellData: String);
    procedure CustomerInfoModuleBioLifeAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  public
    { Public declarations }
  end;

var
  CustomerInfoModule: TCustomerInfoModule;

implementation

uses JPeg;

{$R *.dfm}

procedure TCustomerInfoModule.CustomerListHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: String; TagParams: TStrings; var ReplaceText: String);
var
  Customers: String;
begin
  Customers := '';
  if CompareText(TagString, 'CUSTLIST') = 0 then
  begin
    Customer.Open;
    try
      while not Customer.Eof do
      begin
        Customers := Customers + Format('<A HREF="%s/runquery?CustNo=%d">%s</A><BR>',
          [Request.ScriptName, CustomerCustNo.AsInteger, CustomerCompany.AsString]);
        Customer.Next;
      end;
    finally
      Customer.Close;
    end;
  end;
  ReplaceText := Customers;
end;

procedure TCustomerInfoModule.WebModule1QueryActionAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Customer.Open;
  try
    if Customer.Locate('CustNo', Request.QueryFields.Values['CustNo'], []) then
    begin
      CustomerOrders.Header.Clear;
      CustomerOrders.Header.Add('The following table was produced using a TQueryTableProducer.<P>');
      CustomerOrders.Header.Add('Orders for: ' + CustomerCompany.AsString);
      Response.Content := CustomerOrders.Content;
    end
    else
      Response.Content := Format('<html><body><b>Customer: %s not found</b></body></html>',
        [Request.QueryFields.Values['CustNo']]);
  finally
    Customer.Close;
  end;
end;

procedure TCustomerInfoModule.EmployeeListFormatCell(Sender: TObject;
  CellRow, CellColumn: Integer; var BgColor: THTMLBgColor;
  var Align: THTMLAlign; var VAlign: THTMLVAlign; var CustomAttrs,
  CellData: String);
begin
  if CellRow = 0 then BgColor := 'Gray'
  else if CellRow mod 2 = 0 then BgColor := 'Silver';
end;

procedure TCustomerInfoModule.CustomerInfoModuleBioLifeAction(
  Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: Boolean);
begin
  Biolife.Open;
  try
    Response.Content := BiolifeProducer.Content;
  finally
    Biolife.Close;
  end;
end;

procedure TCustomerInfoModule.BioLifeGraphicGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  // Encode the table id in the image request
  Text := Format('<IMG SRC="%s/getimage?id=%d" alt="[%s]" border="0">',
    [Request.ScriptName, BioLifeSpeciesNo.AsInteger, BiolifeCommon_Name.Text]);
end;

procedure TCustomerInfoModule.BioLifeNotesGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TCustomerInfoModule.CustomerInfoModuleGetImageAction(
  Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: Boolean);
var
  Jpg: TJpegImage;
  S: TMemoryStream;
  B: TBitmap;
  ID: Integer;
begin
  // First, make sure that we are at the correct image by moving to that ID
  // in the table.
  ID := StrToIntDef(Request.QueryFields.Values['id'], -1);
  BioLife.Open;
  if not BioLife.Locate('Species No', ID, []) then
    raise Exception.Create('Could not locate image ID');
  Jpg := TJpegImage.Create;
  try
    S := TMemoryStream.Create;
    try
      BioLifeGraphic.SaveToStream(S);
      // The Biolife table stores its bitmaps in a paradox format, instead
      // of raw binary. We need to skip past the first 8 byte header
      S.Seek(8, soFromBeginning);
      B := TBitmap.Create;
      try
        B.LoadFromStream(S);
        Jpg.Assign(B);
      finally
        B.Free;
      end;
      S.Clear;
      Jpg.SaveToStream(S);
      S.Position := 0;
      Response.ContentType := 'image/jpeg';
    except
      // Free the stream if any errors happened
      S.Free;
      raise;
    end;
    // If any errors did not happen, then don't free the stream and
    // simply assign it to the ContentStream. The Response object will
    // take care of freeing it.
    Response.ContentStream := S;
  finally
    Jpg.Free;
  end;
end;

procedure TCustomerInfoModule.CustomerInfoModuleRedirectAction(
  Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: Boolean);
begin
  Response.SendRedirect('http://www.borland.com');
end;

procedure TCustomerInfoModule.RootHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: String; TagParams: TStrings; var ReplaceText: String);
begin
  if TagString = 'MODULENAME' then
    ReplaceText := Request.ScriptName;

  if TagString = 'VISITCOUNT' then
    with Response.Cookies.Add do
    begin
      Name := 'TheCookie';
      Value :=  Request.CookieFields.Values['TheCookie'];
      if Value = '' then Value := '0';
      try
        Value := IntToStr(StrToInt(Value) + 1);
      except
        Value := '1';
      end;
      Expires := Now + 1;  // this cookie expires in one day
      ReplaceText := Value;
    end;
end;

end.

