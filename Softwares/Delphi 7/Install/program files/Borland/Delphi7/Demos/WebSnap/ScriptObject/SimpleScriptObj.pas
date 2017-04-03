unit SimpleScriptObj;

interface

uses Classes, HTTPProd;

type
  { The METHODINFO compiler directive gives us RTTI for public
    methods and published properties. By implementing IWebVariableName,
    we can drop the component on a form and then access it from script
    with its name:

    <%
      MyObject.SetSampleValue(15);
      Response.Write(MyObject.SampleValue);
      MyObject.SampleValue = 'hello there!';
      Response.Write(MyObject.SampleValue);
    %> }
  {$METHODINFO ON}
  TSimpleScriptObject = class(TComponent, IWebVariableName)
  private
    FSampleValue: string;
  protected
    { IWebVariableName }
    function GetVariableName: string;
  public
    procedure SetSampleValue(Value: Integer);
  published
    property SampleValue: string read FSampleValue write FSampleValue;
  end;
  {$METHODINFO OFF}

implementation

uses SysUtils;

function TSimpleScriptObject.GetVariableName: string;
begin
  Result := Self.Name;
end;

procedure TSimpleScriptObject.SetSampleValue(Value: Integer);
begin
  FSampleValue := IntToStr(Value);
end;

end.
