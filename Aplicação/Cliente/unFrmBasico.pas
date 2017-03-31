unit unFrmBasico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, unFuncoes;

type
  TfrmBasico = class(TForm)
    bvlFundo: TBevel;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
  protected
    FoFuncoes: TFuncoes;
    procedure InicializarTela; virtual;
    procedure DestruirTela; virtual;
    procedure Limpar; virtual;
  public
  end;

implementation

{$R *.dfm}

{ TfrmBasico }

procedure TfrmBasico.InicializarTela;
begin
  FoFuncoes := TFuncoes.Create;
  Limpar;
end;

procedure TfrmBasico.DestruirTela;
begin
  if Assigned(FoFuncoes) then
    FreeAndNil(FoFuncoes);
end;

procedure TfrmBasico.Limpar;
begin
end;

procedure TfrmBasico.FormShow(Sender: TObject);
begin
  InicializarTela;
end;

procedure TfrmBasico.FormDestroy(Sender: TObject);
begin
  DestruirTela;
end;

end.
