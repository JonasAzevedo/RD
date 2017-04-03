unit mystruct_s;

{This file was generated on 11 Aug 2000 20:16:59 GMT by version 03.03.03.C1.06}
{of the Inprise VisiBroker idl2pas CORBA IDL compiler.                        }

{Please do not edit the contents of this file. You should instead edit and    }
{recompile the original IDL which was located in the file mystruct.idl.       }

{Delphi Pascal unit      : mystruct_s                                         }
{derived from IDL module : default                                            }



interface

uses
  CORBA,
  mystruct_i,
  mystruct_c;

type
  TAccountSkeleton = class;

  TAccountSkeleton = class(CORBA.TCorbaObject, mystruct_i.Account)
  private
    FImplementation : Account;
  public
    constructor Create(const InstanceName: string; const Impl: Account);
    destructor Destroy; override;
    function GetImplementation : Account;
    function  balance ( const inMyStruct : mystruct_i.MyStructType;
                        out   outMyStruct : mystruct_i.MyStructType;
                        var   inoutMyStruct : mystruct_i.MyStructType): Single;
  published
    procedure _balance(const _Input: CORBA.InputStream; _Cookie: Pointer);
  end;


implementation

constructor TAccountSkeleton.Create(const InstanceName : string; const Impl : mystruct_i.Account);
begin
  inherited;
  inherited CreateSkeleton(InstanceName, 'Account', 'IDL:Account:1.0');
  FImplementation := Impl;
end;

destructor TAccountSkeleton.Destroy;
begin
  FImplementation := nil;
  inherited;
end;

function TAccountSkeleton.GetImplementation : mystruct_i.Account;
begin
  result := FImplementation as mystruct_i.Account;
end;

function  TAccountSkeleton.balance ( const inMyStruct : mystruct_i.MyStructType;
                                     out   outMyStruct : mystruct_i.MyStructType;
                                     var   inoutMyStruct : mystruct_i.MyStructType): Single;
begin
  Result := FImplementation.balance( inMyStruct,
                                     outMyStruct,
                                     inoutMyStruct);
end;

procedure TAccountSkeleton._balance(const _Input: CORBA.InputStream; _Cookie: Pointer);
var
  _Output : CORBA.OutputStream;
  _inMyStruct : mystruct_i.MyStructType;
  _outMyStruct : mystruct_i.MyStructType;
  _inoutMyStruct : mystruct_i.MyStructType;
  _Result : Single;
begin
  _inMyStruct := mystruct_c.TMyStructTypeHelper.Read(_Input);
  _inoutMyStruct := mystruct_c.TMyStructTypeHelper.Read(_Input);
  _Result := balance( _inMyStruct,
                      _outMyStruct,
                      _inoutMyStruct);
  GetReplyBuffer(_Cookie, _Output);
  _Output.WriteFloat(_Result);
  mystruct_c.TMyStructTypeHelper.Write(_Output, _outMyStruct);
  mystruct_c.TMyStructTypeHelper.Write(_Output, _inoutMyStruct);
end;


initialization


end.