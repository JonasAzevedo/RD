unit unFuncoes;

interface

uses
  Controls;

  type TFuncoes = class
    public
      procedure FocarComponente(const poComp: TWinControl);
      function ValidarEmail(const psEmail: string): boolean;
  end;

implementation

uses
  SysUtils, unConstantes;

var
  vet_valido: array [0..35] of string = ('0','1','2','3','4','5','6','7', '8','9','a','b','c','d','e','f', 'g','h','i','j','k','l','m','n', 'o','p','q','r','s','t','u','v', 'w','x','y','z');

{ TFuncoes }

procedure TFuncoes.FocarComponente(const poComp: TWinControl);
begin
  try
    if poComp is TWinControl then
      TWinControl(poComp).SetFocus;
  except
  end;
end;

function TFuncoes.ValidarEmail(const psEmail: string): boolean;
const
  //function VerificaEmail
  msg1 = 'Caractere(s) inválido(s) no início do e-mail.';
  msg2 = 'Símbolo @ não foi encontrado.';
  msg3 = 'Excesso do símbolo @.';
  msg4 = 'Caractere(s) inválido(s) antes do símbolo @.';
  msg5 = 'Caractere(s) inválido(s) depois do símbolo @.';
  msg6 = 'Agrupamento de caractere(s) inválido(s) a esqueda do @.';
  msg7 = 'Não existe ponto(s) digitado(s).';
  msg8 = 'Ponto encontrado no final do e-mail.';
  msg9 = 'Ausência de caractere(s) após o último ponto.';
  msg10 = 'Excesso de ponto(s) a direita do @.';
  msg11 = 'Ponto(s) disposto(s) de forma errada após o @.';
  msg12 = 'Caractere(s) inválido(s) antes do ponto.';
  msg13 = 'Caractere(s) inválido(s) depois do ponto.';

var
  i, j, tam_email, simb_arroba, simb_arroba2, qtd_arroba, qtd_pontos,
  qtd_pontos_esq, qtd_pontos_dir, posicao, posicao2, ponto, ponto2: integer;
  vet_email: array [0..49] of string; //50 posições, capacidade do Edit
  msg: string;
begin
  qtd_pontos := 0;
  qtd_pontos_esq := 0;
  qtd_pontos_dir := 0;
  qtd_arroba := 0;
  posicao := 0;
  posicao2 := 0;
  simb_arroba := 0;
  simb_arroba2 := 0;
  ponto := 0;
  ponto2 := 0;
  msg := sSTRING_INDEFINIDO;
  Result := True;

  // verificando parte inicial do E-mail
  tam_email := Length(psEmail);
  for i:= 0 to tam_email-1 do
  begin
    vet_email[i]:= Copy(psEmail, i+1, 1);
    if (vet_email[i] = '@') then
    begin
      Inc(qtd_arroba);
      posicao := i;
    end;
  end;

  if ((vet_email[0] = '@') or (vet_email[0] = '.') or (vet_email[0] = '-')) then
  begin
    Result := False;
    msg := msg1;
  end;

  // verificando se tem o símbolo @ e quantos tem
  if (qtd_arroba < 1) then
  begin
    Result := False;
    msg := msg2;
  end
  else if (qtd_arroba > 1) then
  begin
    Result := False;
    msg := msg3 + ' Encontrado(s): '+IntToStr(qtd_arroba)+'.';
  end
  else
    // verificando o que vem antes e depois do símbolo @
  begin
    for i:=0 to 35 do
    begin
      if (vet_email[posicao-1] <> vet_valido[i]) then
        Inc(simb_arroba)
      else
        Dec(simb_arroba);
      if (vet_email[posicao+1] <> vet_valido[i]) then
        Inc(simb_arroba2)
      else
        Dec(simb_arroba2);
    end;
    if (simb_arroba = 36) then
    begin
      // antes do arroba há um símbolo desconhecido do vetor válido
      Result := False;
      msg := msg4;
    end
    else if (simb_arroba2 = 36) then
    begin
      // depois do arroba há um símbolo desconhecido do vetor válido
      Result := False;
      msg := msg5;
    end
  end;

  // cerificando se há pontos e quantos, e Verificando parte final do e-mail
  for j:=0 to tam_email-1 do
    if (vet_email[j] = '-') then
      if ((vet_email[j-1] = '.') or (vet_email[j-1] = '-')) then
      begin
        Result := False;
        msg := msg6;
      end;

  for i:=0 to tam_email-1 do
    if (vet_email[i] = '.') then
    begin
      Inc(qtd_pontos);
      posicao2 := i+1;
      if (i > posicao) then
        Inc(qtd_pontos_dir)
      else
        Inc(qtd_pontos_esq);
      if ((vet_email[i-1] = '.') or (vet_email[i-1] = '-')) then
      begin
        Result := False;
        msg := msg6;
      end;
    end;

  if (qtd_pontos < 1) then
  begin
    Result := False;
    msg := msg7;
  end
  else if (vet_email[tam_email-1] = '.') then
  begin
    Result := False;
    msg := msg8;
  end
  else if (vet_email[tam_email-2] = '.') then
  begin
    Result := False;
    msg := msg9;
  end
  else if (qtd_pontos_dir > 3) then
  begin
    Result := False;
    msg := msg10 + ' Encontrado(s): '+
    IntToStr(qtd_pontos) + #10 + 'Encontrado(s) a direita do @: ' +
    IntToStr(qtd_pontos_dir) + '.';
  end
  else if (not ((((tam_email - posicao2) < 4) and (qtd_pontos_dir = 3)) or
  (((tam_email - posicao2) < 4) and (qtd_pontos_dir = 2)) or
  (((tam_email - posicao2) < 4) and (qtd_pontos_dir = 1)))) then
  begin
    Result := False;
    msg := msg11 + #10 + 'Encontrado(s) a esquerda do @: ' +
    IntToStr(qtd_pontos_esq) + #10 + 'Encontrado(s) a direita do @: ' +
    IntToStr(qtd_pontos_dir) + '.';
  end
  else
  begin
    // verificando o que vem antes e depois do ponto
    for i:=0 to 35 do
    begin
      if (vet_email[posicao2-2] <> vet_valido[i]) then
        Inc(ponto)
      else
        Dec(ponto);
      if (vet_email[posicao2] <> vet_valido[i]) then
        Inc(ponto2)
      else
        Dec(ponto2);
    end;
    if (ponto = 36) then
    begin
      // antes do ponto há um símbolo desconhecido do vetor válido
      Result := False;
      msg := msg12;
    end
    else if (ponto2 = 36) then
    begin
      // depois do ponto há um símbolo desconhecido do vetor válido
      Result := False;
      msg := msg13;
    end
  end;

  // verificação final
  if not(Result) then
  begin
    msg := msg +#10+ 'Formato de E-mail não aceitável!!';
  end;
end;

end.

