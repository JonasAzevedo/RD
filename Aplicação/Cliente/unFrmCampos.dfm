inherited frmCampos: TfrmCampos
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'RD - Campos Personalizados - Cadastro de Campos'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pgCadastroCampos: TPageControl
    Left = 16
    Top = 16
    Width = 673
    Height = 313
    ActivePage = tsDados
    TabOrder = 0
    OnChange = pgCadastroCamposChange
    OnChanging = pgCadastroCamposChanging
    object tsDados: TTabSheet
      Caption = 'Dados'
      object grDados: TDBGrid
        Left = 0
        Top = 8
        Width = 673
        Height = 201
        DataSource = dsDados
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = grDadosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 325
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'desc_tipo_campo'
            Title.Caption = 'Tipo Campo'
            Width = 325
            Visible = True
          end>
      end
      object bbNovo: TBitBtn
        Left = 16
        Top = 232
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 1
        OnClick = bbNovoClick
      end
      object bbEditar: TBitBtn
        Left = 96
        Top = 232
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
        OnClick = bbEditarClick
      end
      object bbSalvar: TBitBtn
        Left = 176
        Top = 232
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 3
        OnClick = bbSalvarClick
      end
      object bbExcluir: TBitBtn
        Left = 264
        Top = 232
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 4
        OnClick = bbExcluirClick
      end
      object bbFechar: TBitBtn
        Left = 344
        Top = 232
        Width = 75
        Height = 25
        Caption = 'Fechar'
        TabOrder = 5
        OnClick = bbFecharClick
      end
    end
    object tsEdicao: TTabSheet
      Caption = 'Edi'#231#227'o'
      ImageIndex = 1
      object lblTipoCampo: TLabel
        Left = 8
        Top = 54
        Width = 60
        Height = 13
        Caption = 'Tipo Campo:'
      end
      object lblNome: TLabel
        Left = 10
        Top = 24
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object dbEdNome: TDBEdit
        Left = 74
        Top = 16
        Width = 550
        Height = 21
        DataField = 'NOME'
        DataSource = dsDados
        TabOrder = 0
      end
      object dbLkCbBxTipoCampo: TDBLookupComboBox
        Left = 74
        Top = 46
        Width = 550
        Height = 21
        DataField = 'CODIGO_TIPO_CAMPO'
        DataSource = dsDados
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsTiposCampos
        TabOrder = 1
        OnExit = dbLkCbBxTipoCampoExit
      end
      object bbConfirmar: TBitBtn
        Left = 74
        Top = 90
        Width = 75
        Height = 25
        Caption = 'Confirmar'
        TabOrder = 2
        OnClick = bbConfirmarClick
      end
      object bbCancelar: TBitBtn
        Left = 152
        Top = 90
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = bbbCancelarClick
      end
    end
  end
  object dsDados: TDataSource
    DataSet = DM.cdsCampos
    Left = 32
    Top = 200
  end
  object dsTiposCampos: TDataSource
    DataSet = DM.cdsTiposCampos
    Left = 32
    Top = 232
  end
end
