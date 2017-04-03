unit unFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, ImgList;

type
  TfrmPrincipal = class(TForm)
    StatusBar: TStatusBar;
    ToolBar1: TToolBar;
    tlBtMeuUsuario: TToolButton;
    tlBtCampos: TToolButton;
    tlBtContatos: TToolButton;
    Timer: TTimer;
    ImageList: TImageList;
    tlBtSeparador: TToolButton;
    tlBtFechar: TToolButton;
    procedure tlBtMeuUsuarioClick(Sender: TObject);
    procedure tlBtCamposClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure tlBtContatosClick(Sender: TObject);
    procedure tlBtFecharClick(Sender: TObject);
  private
    procedure AbrirTelaMeuUsuario;
    procedure AbrirTelaCampos;
    procedure AbrirTelaContatos;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  unFrmUsuarios, unFrmLogin, unFrmCampos, unFrmContatos, unUsuarioSingleton;

{$R *.dfm}

procedure TfrmPrincipal.AbrirTelaCampos;
var
  frmCampos: TfrmCampos;
begin
  frmCampos := TfrmCampos.Create(nil);
  try
    frmCampos.ShowModal;
  finally
    FreeAndNil(frmCampos);
  end;
end;

procedure TfrmPrincipal.AbrirTelaContatos;
var
  frmContatos: TfrmContatos;
begin
  frmContatos := TfrmContatos.Create(nil);
  try
    frmContatos.ShowModal;
  finally
    FreeAndNil(frmContatos);
  end;
end;

procedure TfrmPrincipal.AbrirTelaMeuUsuario;
var
  frmUsuarios: TfrmUsuarios;
begin
  frmUsuarios := TfrmUsuarios.Create(nil);
  try
    frmUsuarios.ShowModal;
  finally
    FreeAndNil(frmUsuarios);
  end;
end;

procedure TfrmPrincipal.tlBtMeuUsuarioClick(Sender: TObject);
begin
  AbrirTelaMeuUsuario;
end;

procedure TfrmPrincipal.tlBtCamposClick(Sender: TObject);
begin
  AbrirTelaCampos;
end;

procedure TfrmPrincipal.tlBtContatosClick(Sender: TObject);
begin
  AbrirTelaContatos;
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
  StatusBar.Panels[0].Text := 'Usuário: ' + TUsuarioSingleton.ObterInstancia.prpUsuario.prpNome;
  StatusBar.Panels[1].Text := DateToStr(Date) + ' - ' + TimeToStr(Now);
end;

procedure TfrmPrincipal.tlBtFecharClick(Sender: TObject);
begin
  Close;
end;

end.
