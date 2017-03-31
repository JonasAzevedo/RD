object DM: TDM
  OldCreateOrder = False
  Left = 459
  Top = 133
  Height = 479
  Width = 566
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
    Left = 40
    Top = 104
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
    Left = 40
    Top = 152
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 40
    Top = 200
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
    Top = 104
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
    Top = 152
  end
  object cdsTiposCampos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTiposCampos'
    Left = 224
    Top = 200
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
    Top = 104
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
    Top = 152
  end
  object cdsCampos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCampos'
    OnNewRecord = cdsCamposNewRecord
    Left = 120
    Top = 200
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
      'SELECT *'
      'FROM contatos'
      'WHERE 1=2;')
    Params = <>
    Left = 336
    Top = 104
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
    Top = 152
  end
  object cdsContatos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContatos'
    OnNewRecord = cdsContatosNewRecord
    Left = 336
    Top = 200
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
  object qryContatosCampos: TZQuery
    Connection = zConnection
    SQL.Strings = (
      'SELECT *'
      'FROM contato_campo'
      'WHERE 1=2;')
    Params = <>
    Left = 440
    Top = 96
    object qryContatosCamposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryContatosCamposCODIGO_CONTATO: TIntegerField
      FieldName = 'CODIGO_CONTATO'
      Required = True
    end
    object qryContatosCamposCODIGO_CAMPO: TIntegerField
      FieldName = 'CODIGO_CAMPO'
      Required = True
    end
    object qryContatosCamposVALOR: TStringField
      FieldName = 'VALOR'
      Required = True
      Size = 500
    end
    object qryContatosCamposDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Required = True
    end
  end
  object dspContatosCampos: TDataSetProvider
    DataSet = qryContatosCampos
    Left = 440
    Top = 144
  end
  object cdsContatosCampos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContatosCampos'
    Left = 440
    Top = 200
    object cdsContatosCamposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsContatosCamposCODIGO_CONTATO: TIntegerField
      FieldName = 'CODIGO_CONTATO'
      Required = True
    end
    object cdsContatosCamposCODIGO_CAMPO: TIntegerField
      FieldName = 'CODIGO_CAMPO'
      Required = True
    end
    object cdsContatosCamposVALOR: TStringField
      FieldName = 'VALOR'
      Required = True
      Size = 500
    end
    object cdsContatosCamposDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Required = True
    end
  end
  object qryExecutar: TZQuery
    Connection = zConnection
    Params = <>
    Left = 128
    Top = 16
  end
  object qryCamposConfigContato: TZQuery
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
    Left = 275
    Top = 264
    object qryCamposConfigContatocodigo_campo: TIntegerField
      FieldName = 'codigo_campo'
      Required = True
    end
    object qryCamposConfigContatonome_campo: TStringField
      FieldName = 'nome_campo'
      Required = True
      Size = 100
    end
    object qryCamposConfigContatocodigo_tipo_campo: TIntegerField
      FieldName = 'codigo_tipo_campo'
      Required = True
    end
    object qryCamposConfigContatodescricao_tipo_campo: TStringField
      FieldName = 'descricao_tipo_campo'
      Required = True
      Size = 100
    end
    object qryCamposConfigContatocodigo_contato_campo: TIntegerField
      FieldName = 'codigo_contato_campo'
      Required = True
    end
    object qryCamposConfigContatocodigo_contato: TIntegerField
      FieldName = 'codigo_contato'
      Required = True
    end
    object qryCamposConfigContatovalor: TStringField
      FieldName = 'valor'
      Required = True
      Size = 500
    end
  end
  object dspCamposConfigContato: TDataSetProvider
    DataSet = qryCamposConfigContato
    Left = 275
    Top = 312
  end
  object cdsCamposConfigContato: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCamposConfigContato'
    OnNewRecord = cdsCamposNewRecord
    Left = 275
    Top = 368
    object cdsCamposConfigContatocodigo_campo: TIntegerField
      FieldName = 'codigo_campo'
      Required = True
    end
    object cdsCamposConfigContatonome_campo: TStringField
      FieldName = 'nome_campo'
      Required = True
      Size = 100
    end
    object cdsCamposConfigContatocodigo_tipo_campo: TIntegerField
      FieldName = 'codigo_tipo_campo'
      Required = True
    end
    object cdsCamposConfigContatodescricao_tipo_campo: TStringField
      FieldName = 'descricao_tipo_campo'
      Required = True
      Size = 100
    end
    object cdsCamposConfigContatocodigo_contato_campo: TIntegerField
      FieldName = 'codigo_contato_campo'
      Required = True
    end
    object cdsCamposConfigContatocodigo_contato: TIntegerField
      FieldName = 'codigo_contato'
      Required = True
    end
    object cdsCamposConfigContatovalor: TStringField
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
    Left = 147
    Top = 264
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
    Left = 147
    Top = 312
  end
  object cdsCriarCamposConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCriarCamposConfig'
    OnNewRecord = cdsCamposNewRecord
    Left = 147
    Top = 368
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
end
