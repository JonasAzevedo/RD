unit unConstantes;

interface

type
  TModoInsercao = (tmiAtualizar, tmiInserir);

const
  nNUMERO_INDEFINIDO = -1;
  sSTRING_INDEFINIDO = '';
  sNUMERO_INDEFINIDO = '-1';
  nABA_DADOS = 0;
  nABA_EDICAO = 1;
  sESCONDER_SENHA = '*';
  sMOSTRAR_SENHA = #0;
  nTAMANHO_MINIMO_SENHA = 6;

  //arquivo ini
  sARQUIVO_INI = 'config.ini';
  sSECAO_BD = 'BD';
  sIDENTIFICADOR_HOSTNAME = 'hostname';
  sIDENTIFICADOR_DATABASE = 'database';
  sIDENTIFICADOR_USER = 'user';
  sIDENTIFICADOR_PASSWORD = 'password';

  //componentes campos configuráveis
  sIDENTIFICADOR_LABEL = 'lbl';
  sIDENTIFICADOR_EDIT = 'ed';
  sIDENTIFICADOR_MEMO = 'mm';
  sIDENTIFICADOR_CAIXA_SELECAO = 'cb';
  nINICIO_TOPO_COMPONENTES = 40;
  nLEFT_COMPONENTES = 30;
  nWIDTH_COMPONENTES = 550;
  nMAX_LENGTH_COMPONENTES = 500;
  nHEIGHT_COMPONENTE_EDICAO_TEXTO = 21;
  nHEIGHT_COMPONENTE_EDICAO_AREA_TEXTO = 88;
  nHEIGHT_COMPONENTE_EDICAO_CAIXA_SELECAO = 17;
  nESPACO_ENTRE_DESCRICAO_CAMPO = 5;
  nESPACO_ENTRE_CAMPOS = 10;

  //índices para os tipos de campos
  nCODIGO_TIPO_CAMPO_TEXTO = 1;
  nCODIGO_TIPO_CAMPO_AREA_TEXTO = 2;
  nCODIGO_TIPO_CAMPO_CAIXA_SELECAO = 3;

  //campos dataSet's
  sFIELD_CODIGO = 'codigo';
  sFIELD_CAMPO_CODIGO_USUARIO = 'codigo_usuario';
  sFIELD_CAMPO_CODIGO_TIPO_CAMPO = 'codigo_tipo_campo';
  sFIELD_CAMPO_NOME = 'nome';
  sFIELD_CAMPO_TIPO_CAMPO = 'desc_tipo_campo';
  sFIELD_CONTATO_CODIGO_USUARIO = 'codigo_usuario';
  sFIELD_CONTATO_NOME = 'nome';
  sFIELD_CONTATO_EMAIL = 'email';
  sFIELD_TIPOS_CAMPOS_DESCRICAO = 'descricao';
  sFIELD_CAMPO_CONFIG_CONTATO_CODIGO_CAMPO = 'codigo_campo';
  sFIELD_CAMPO_CONFIG_CONTATO_NOME_CAMPO = 'nome_campo';
  sFIELD_CAMPO_CONFIG_CONTATO_CODIGO_TIPO_CAMPO = 'codigo_tipo_campo';
  sFIELD_CAMPO_CONFIG_CONTATO_CODIGO_CONTATO_CAMPO = 'codigo_contato_campo';
  sFIELD_CAMPO_CONFIG_CONTATO_VALOR = 'valor';  

  //mensagens
  sMSG_ARQUIVO_CONFIGURACAO_NAO_EXISTE = 'Não foi encontrado o arquivo de configuração do sistema.';
  sMSG_NAO_FOI_POSSIVEL_CONECTAR_BANCO_DADOS = 'Não foi possível realizar a conexão com o banco de dados. Verifique as configuraçõs do arquivo config.ini.';
  sMSG_USUARIO_SALVO_COM_SUCESSO = 'Usuário salvo com sucesso.';
  sMSG_SENHA_NAO_CONFERE = 'Verifique a senha pois a mesma não confere.';
  sMSG_EMAIL_JAH_CADASTRADO_NO_SISTEMA = 'Este email já está cadastrado no sistema.';
  sMSG_ENDERECO_EMAIL_INVALIDO = 'O endereço de email é inválido.';
  sMSG_SENHA_DEVE_TER_ENTRE_6_E_20_CARACTERES = 'A senha deve ter entre 6 e 20 caracteres.';
  sMSG_LOGIN_INCORRETO_VERIFIQUE_EMAIL_SENHA_INFORMADOS = 'Login incorreto. Verifique o email e senha informados.';
  sMSG_NAO_FOI_ENCONTRADO_USUARIO = 'Não foi encontrado usuário.';
  sMSG_OCORREU_ERRO_SALVAR_CAMPOS_DO_USUARIO = 'Ocorreu um erro ao salvar os campos do usuário.';
  sMSG_OCORREU_ERRO_SALVAR_CONTATO = 'Ocorreu um erro ao salvar os contatos.';
  sMSG_OCORREU_ERRO_SALVAR_USUARIO = 'Ocorreu um erro ao salvar o usuário.';
  sMSG_OCORREU_ERRO_DELETAR_CAMPO_DO_USUARIO = 'Ocorreu um erro ao deletar o campo do usuário.';
  sMSG_OCORREU_ERRO_DELETAR_CONTATO = 'Ocorreu um erro ao deletar o contato.';  
  sMSG_NAO_HA_DADOS_PARA_SALVAR = 'Não há dados para salvar.';
  sMSG_OCORREU_ERRO_SALVAR_REGISTRO = 'Ocorreu um erro ao salvar o registro.';
  sMSG_REGISTRO_DELETADO = 'Registro deletado.';
  sMSG_DEVE_SER_INFORMADO_EMAIL = 'Deve ser informado um email válido.';
  sMSG_DEVE_SER_INFORMADO_NOME_TIPO_CAMPO = 'Deve ser informado um nome e um tipo de campo.';
  sMSG_DESEJA_FECHAR_TELA = 'Deseja mesmo fechar a tela?';
  sMSG_DESEJA_CONTINUAR_DELECAO_CAMPO = 'Este campo pode estar sendo utilizado em algum contato. Deseja continuar com a deleção do referido campo?';
  sMSG_DESEJA_CONTINUAR_DELECAO_CONTATO = 'Todos os campos configuráveis do contato também serão deletados. Deseja continuar com a deleção do referido contato?';
  sMSG_OCORREU_PARA_ACESSAR_DADOS = 'Ocorreu um erro para acessar os dados.';

implementation


end.
