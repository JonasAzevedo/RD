unit DBAttachmentsIntf;

interface

uses InvokeRegistry, Types, XSBuiltIns;

type

  TStringArray = array of string;

  TSpeciesInfo = class(TRemotable)
  private
    FLength: Integer;
    FSpeciesName: string;
    FCategory: string;
    FCommonName: string;
    FmoreInfo: string;
  published
    property Category: string read FCategory write FCategory;
    property CommonName: string read FCommonName write FCommonName;
    property SpeciesName: string read FSpeciesName write FSpeciesName;
    property Length: Integer read FLength write FLength;
    property MoreInfo: string read FmoreInfo write FMoreInfo;
  end;

  IDBAttachments = interface(IInvokable)
  ['{EC74318E-A589-11D6-BFBF-00C04F79AB6E}']
    function GetCommonNames: TStringArray; stdcall;
    function GetSpeciesInfo(const CommonName: string;
             out SpeciesInfo: TSpeciesInfo): TSOAPAttachment; stdcall;
  end;

implementation

initialization
  InvRegistry.RegisterInterface(TypeInfo(IDBAttachments));

end.
