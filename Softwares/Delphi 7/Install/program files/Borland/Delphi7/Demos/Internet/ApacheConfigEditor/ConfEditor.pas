unit ConfEditor;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TEditBlock = record
    BeginLine, EndLIne : integer;
    BlockColor : TColor;
    Enabled : boolean;
  end;


  TMemoConfEditor = class(TMemo)
  private
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
  protected
  public
    EditBlock :TEditBlock;
    constructor Create(aOwner :TComponent);
    //property EditBlock : TEditBlock read FEditBlock write FEditBlock;
  end;
implementation

{ TMemoConfEditor }

constructor TMemoConfEditor.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  //FLines := inherited FLines;
  EditBlock.Enabled := false;
end;

procedure TMemoConfEditor.WMPaint(var Message: TWMPaint);
var
  PS           :TPaintStruct;
  DC           :HDC;
  Canvas       :TCanvas;
  i            :Integer;
  X,Y          :DWord;
  ALex         :String;
  AColor       ,
  OldColor     :TColor;
  St           ,
  St1          :String;
  Size         :TSize;
begin
  DC := Message.DC;
  if DC = 0
  then DC := BeginPaint(Handle, PS);
  Canvas:=TCanvas.Create;
  try
    OldColor := Font.Color;
    Canvas.Handle:=DC;
    Canvas.Font.Name:=Font.Name;

    with Canvas do begin
      Y:=2;
      for i:=0 to {Pred(Lines.Count)} Lines.Count -1 do begin
        X := 1;
        St:=Lines[i];
        Font.Color:=OldColor;
        if EditBlock.Enabled then
          if (i >= EditBlock.BeginLine )AND (i <= EditBlock.EndLine) then
          begin
            //Font.Color:=OldColor;
           // St1:=copy(St, 1, pos(ALex, St)-1);
            //Delete(St, 1, pos(ALex, St)-1);

            //TextOut(X,Y, St1);
            //GetTextExtentPoint32(DC, PChar(St1), Length(St1), Size);
            //inc(X, Size.cx);

            Font.Color:=EditBlock.BlockColor;
            //St1:=copy(St, 1, Length(ALex));
           // Delete(St, 1, Length(ALex));

            //TextOut(X,Y, St1);
            //GetTextExtentPoint32(DC, PChar(St1), Length(St1), Size);
            //inc(X, Size.cx);
          end;
        TextOut(X,Y, St);
        St:='size';
        GetTextExtentPoint32(DC, PChar(St), Length(St), Size);
        Inc(Y, Size.cy);
      end;
    end;
  finally
    if Message.DC = 0 then EndPaint(Handle, PS);
  end;
  Canvas.Free;
  inherited;
end;


end.
