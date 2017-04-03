object DM: TDM
  OldCreateOrder = False
  Left = 385
  Top = 133
  Height = 452
  Width = 534
  object zConnection: TZConnection
    Protocol = 'firebird-2.1'
    HostName = '127.0.0.1'
    Database = 'C:\RD\BD\BD.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Connected = True
    Left = 32
    Top = 16
  end
  object qryUsuarios: TZQuery
    Connection = zConnection
    SQL.Strings = (
      'SELECT * '
      'FROM usuarios'
      'WHERE 1=2;')
    Params = <>
    Left = 32
    Top = 74
    object qryUsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryUsuariosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object qryUsuariosEMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 100
    end
    object qryUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
    end
  end
  object dspUsuarios: TDataSetProvider
    DataSet = qryUsuarios
    Left = 32
    Top = 122
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 32
    Top = 170
    object cdsUsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsUsuariosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsUsuariosEMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 100
    end
    object cdsUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
    end
  end
  object qryTiposCampos: TZQuery
    Connection = zConnection
    SQL.Strings = (
      'SELECT *'
      'FROM "TIPOS_ CAMPOS"'
      'WHERE 1=2;')
    Params = <>
    Left = 224
    Top = 74
    object qryTiposCamposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryTiposCamposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dspTiposCampos: TDataSetProvider
    DataSet = qryTiposCampos
    Left = 224
    Top = 122
  end
  object cdsTiposCampos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTiposCampos'
    Left = 224
    Top = 170
    object cdsTiposCamposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsTiposCamposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object qryCampos: TZQuery
    Connection = zConnection
    SQL.Strings = (
      
        'SELECT C.codigo, C.codigo_usuario, C.codigo_tipo_campo, C.nome, ' +
        'TC.descricao AS "desc_tipo_campo", C.data_cadastro'
      'FROM campos C'
      'JOIN "TIPOS_ CAMPOS" TC ON C.codigo_tipo_campo = TC.codigo'
      'WHERE C.codigo_usuario = -1;')
    Params = <>
    Left = 120
    Top = 74
    object qryCamposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCamposCODIGO_USUARIO: TIntegerField
      FieldName = 'CODIGO_USUARIO'
      Required = True
    end
    object qryCamposCODIGO_TIPO_CAMPO: TIntegerField
      FieldName = 'CODIGO_TIPO_CAMPO'
      Required = True
    end
    object qryCamposNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object qryCamposdesc_tipo_campo: TStringField
      FieldName = 'desc_tipo_campo'
      Required = True
      Size = 100
    end
    object qryCamposDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Required = True
    end
  end
  object dspCampos: TDataSetProvider
    DataSet = qryCampos
    Left = 120
    Top = 122
  end
  object cdsCampos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCampos'
    OnNewRecord = cdsCamposNewRecord
    Left = 120
    Top = 170
    object cdsCamposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCamposCODIGO_USUARIO: TIntegerField
      FieldName = 'CODIGO_USUARIO'
      Required = True
    end
    object cdsCamposCODIGO_TIPO_CAMPO: TIntegerField
      FieldName = 'CODIGO_TIPO_CAMPO'
      Required = True
    end
    object cdsCamposNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsCamposdesc_tipo_campo: TStringField
      FieldName = 'desc_tipo_campo'
      Required = True
      Size = 100
    end
    object cdsCamposDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Required = True
    end
  end
  object qryContatos: TZQuery
    Connection = zConnection
    SQL.Strings = (
      'SELECT C.*'
      'FROM contatos C'
      'WHERE 1=2;')
    Params = <>
    Left = 336
    Top = 74
    object qryContatosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryContatosCODIGO_USUARIO: TIntegerField
      FieldName = 'CODIGO_USUARIO'
      Required = True
    end
    object qryContatosNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryContatosEMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 100
    end
    object qryContatosDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Required = True
    end
  end
  object dspContatos: TDataSetProvider
    DataSet = qryContatos
    Left = 336
    Top = 122
  end
  object cdsContatos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContatos'
    OnNewRecord = cdsContatosNewRecord
    Left = 336
    Top = 170
    object cdsContatosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsContatosCODIGO_USUARIO: TIntegerField
      FieldName = 'CODIGO_USUARIO'
      Required = True
    end
    object cdsContatosNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsContatosEMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 100
    end
    object cdsContatosDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Required = True
    end
  end
  object qryExecutar: TZQuery
    Connection = zConnection
    Params = <>
    Left = 193
    Top = 246
  end
  object qryContatoCampos: TZQuery
    Connection = zConnection
    SQL.Strings = (
      'SELECT'
      '  C.codigo AS "codigo_campo", C.nome AS "nome_campo",'
      
        '  TC.codigo AS "codigo_tipo_campo", TC.descricao AS "descricao_t' +
        'ipo_campo",'
      
        '  CC.codigo AS "codigo_contato_campo", CC.codigo_contato AS "cod' +
        'igo_contato", CC.valor AS "valor"'
      'FROM campos C'
      'JOIN "TIPOS_ CAMPOS" TC ON C.codigo_tipo_campo = TC.codigo'
      
        'LEFT JOIN contato_campo CC ON (C.codigo = CC.codigo_campo AND CC' +
        '.codigo_contato = 1)'
      'WHERE C.codigo_usuario = 1'
      'AND 1=2;')
    Params = <>
    Left = 435
    Top = 74
    object qryContatoCamposcodigo_campo: TIntegerField
      FieldName = 'codigo_campo'
      Required = True
    end
    object qryContatoCamposnome_campo: TStringField
      FieldName = 'nome_campo'
      Required = True
      Size = 100
    end
    object qryContatoCamposcodigo_tipo_campo: TIntegerField
      FieldName = 'codigo_tipo_campo'
      Required = True
    end
    object qryContatoCamposdescricao_tipo_campo: TStringField
      FieldName = 'descricao_tipo_campo'
      Required = True
      Size = 100
    end
    object qryContatoCamposcodigo_contato_campo: TIntegerField
      FieldName = 'codigo_contato_campo'
      Required = True
    end
    object qryContatoCamposcodigo_contato: TIntegerField
      FieldName = 'codigo_contato'
      Required = True
    end
    object qryContatoCamposvalor: TStringField
      FieldName = 'valor'
      Required = True
      Size = 500
    end
  end
  object dspContatoCampos: TDataSetProvider
    DataSet = qryContatoCampos
    Left = 435
    Top = 122
  end
  object cdsContatoCampos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContatoCampos'
    OnNewRecord = cdsCamposNewRecord
    Left = 435
    Top = 170
    object cdsContatoCamposcodigo_campo: TIntegerField
      FieldName = 'codigo_campo'
      Required = True
    end
    object cdsContatoCamposnome_campo: TStringField
      FieldName = 'nome_campo'
      Required = True
      Size = 100
    end
    object cdsContatoCamposcodigo_tipo_campo: TIntegerField
      FieldName = 'codigo_tipo_campo'
      Required = True
    end
    object cdsContatoCamposdescricao_tipo_campo: TStringField
      FieldName = 'descricao_tipo_campo'
      Required = True
      Size = 100
    end
    object cdsContatoCamposcodigo_contato_campo: TIntegerField
      FieldName = 'codigo_contato_campo'
      Required = True
    end
    object cdsContatoCamposcodigo_contato: TIntegerField
      FieldName = 'codigo_contato'
      Required = True
    end
    object cdsContatoCamposvalor: TStringField
      FieldName = 'valor'
      Required = True
      Size = 500
    end
  end
  object qryCriarCamposConfig: TZQuery
    Connection = zConnection
    SQL.Strings = (
      'SELECT '
      '  C.codigo AS "codigo_campo", C.nome AS "nome_campo",'
      
        '  TC.codigo AS "codigo_tipo_campo", TC.descricao AS "descricao_t' +
        'ipo_campo"'
      'FROM campos C'
      'JOIN "TIPOS_ CAMPOS" TC ON C.codigo_tipo_campo = TC.codigo'
      'WHERE C.codigo_usuario = 1'
      'AND 1=2')
    Params = <>
    Left = 76
    Top = 246
    object qryCriarCamposConfigcodigo_campo: TIntegerField
      FieldName = 'codigo_campo'
      Required = True
    end
    object qryCriarCamposConfignome_campo: TStringField
      FieldName = 'nome_campo'
      Required = True
      Size = 100
    end
    object qryCriarCamposConfigcodigo_tipo_campo: TIntegerField
      FieldName = 'codigo_tipo_campo'
      Required = True
    end
    object qryCriarCamposConfigdescricao_tipo_campo: TStringField
      FieldName = 'descricao_tipo_campo'
      Required = True
      Size = 100
    end
  end
  object dspCriarCamposConfig: TDataSetProvider
    DataSet = qryCriarCamposConfig
    Left = 76
    Top = 294
  end
  object cdsCriarCamposConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCriarCamposConfig'
    OnNewRecord = cdsCamposNewRecord
    Left = 76
    Top = 350
    object cdsCriarCamposConfigcodigo_campo: TIntegerField
      FieldName = 'codigo_campo'
      Required = True
    end
    object cdsCriarCamposConfignome_campo: TStringField
      FieldName = 'nome_campo'
      Required = True
      Size = 100
    end
    object cdsCriarCamposConfigcodigo_tipo_campo: TIntegerField
      FieldName = 'codigo_tipo_campo'
      Required = True
    end
    object cdsCriarCamposConfigdescricao_tipo_campo: TStringField
      FieldName = 'descricao_tipo_campo'
      Required = True
      Size = 100
    end
  end
  object cdsContatosCamposEdicao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 313
    Top = 246
    Data = {
      6F0000009619E0BD0100000018000000040000000000030000006F0006636F64
      69676F04000100000000000E636F6469676F5F636F6E7461746F040001000000
      00000C636F6469676F5F63616D706F04000100000000000576616C6F72020049
      000000010005574944544802000200F4010000}
    object cdsContatosCamposEdicaocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsContatosCamposEdicaocodigo_contato: TIntegerField
      FieldName = 'codigo_contato'
    end
    object cdsContatosCamposEdicaocodigo_campo: TIntegerField
      FieldName = 'codigo_campo'
    end
    object cdsContatosCamposEdicaovalor: TStringField
      FieldName = 'valor'
      Size = 500
    end
    object cdsContatosCamposEdicaocc_contatoNovo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'cc_contatoNovo'
      Calculated = True
    end
  end
end
