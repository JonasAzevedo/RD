unit ExtendedAdapterObj;

interface

uses Classes, SiteComp, HTTPProd, WebAdapt, DBAdapt, AutoAdap,
  WebSnapObjs;

type
  {
    Certain components, such as TAdapter's, don't use the $METHODINFO
    compiler directive. Instead, they implement IWebSnapObjClass,
    which returns a class type that will be connected to a given
    object. This allows you to control exactly what one can access
    via script.
  }

  TExtendedAdapter = class(TAdapter)
  private
    FSampleValue: string;
  protected
    function GetWebSnapObjClass: TObjectScripterClass; override;
  published
    property SampleValue: string read FSampleValue write FSampleValue;
  end;

  TExtendedDataSetAdapter = class(TDataSetAdapter)
  private
    FSampleValue: string;
  protected
    function GetWebSnapObjClass: TObjectScripterClass; override;
  published
    property SampleValue: string read FSampleValue write FSampleValue;
  end;

implementation

{ Create a class that descends from TAdapterObj and adds the additional
  scripting information that we want by simply using published properties
  and public methods. }
type
  TExtendedAdapterObj = class(TAdapterObj)
  private
    function GetSampleValue: string;
    procedure SetSampleValue(const Value: string);

  published
    property SampleValue: string read GetSampleValue write SetSampleValue;
  end;

{ TExtendedAdapter }

function TExtendedAdapter.GetWebSnapObjClass: TObjectScripterClass;
begin
  Result := TExtendedAdapterObj;
end;

{ TExtendedAdapterObj }

function TExtendedAdapterObj.GetSampleValue: string;
begin
  if ObjectAccess is TExtendedAdapter then
    Result := TExtendedAdapter(ObjectAccess).SampleValue
  else if ObjectAccess is TExtendedDataSetAdapter then
    Result := TExtendedDataSetAdapter(ObjectAccess).SampleValue
  else
    Result := '';
end;

procedure TExtendedAdapterObj.SetSampleValue(const Value: string);
begin
  if ObjectAccess is TExtendedAdapter then
    TExtendedAdapter(ObjectAccess).SampleValue := Value
  else if ObjectAccess is TExtendedDataSetAdapter then
    TExtendedDataSetAdapter(ObjectAccess).SampleValue := Value;
end;

{ TExtendedDataSetAdapter }

function TExtendedDataSetAdapter.GetWebSnapObjClass: TObjectScripterClass;
begin
  Result := TExtendedAdapterObj;
end;

end.
