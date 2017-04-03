unit inptform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TInputForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    PromptLabel: TLabel;
    InputEdit: TEdit;
  private
    { Private declarations }
    function Execute: Boolean;

  public
    { Public declarations }
    function GetString(prompt: string; var s: string): Boolean;
    function GetInteger(prompt: string; var i: Integer): Boolean;
  end;

var
  InputForm: TInputForm;

implementation

{$R *.DFM}

function TInputForm.Execute: Boolean;
begin
  InputEdit.Text := '';
  Result := ShowModal = mrOk;
end;

function TInputForm.GetString(prompt: string; var s: string): Boolean;
begin
  PromptLabel.Caption := prompt;
  Result := InputForm.Execute;
  if Result then
    s := InputEdit.Text;
end;

function TInputForm.GetInteger(prompt: string; var i: Integer): Boolean;
begin
  PromptLabel.Caption := prompt;
  Result := InputForm.Execute;
  if Result then
    i := StrToInt(InputEdit.Text);
end;

end.
