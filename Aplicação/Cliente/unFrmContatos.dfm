inherited frmContatos: TfrmContatos
  Left = 329
  Top = 187
  Width = 720
  Height = 477
  Caption = 'RD - Campos Personalizados - Cadastro de Contatos'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pgCadastroContatos: TPageControl
    Left = 16
    Top = 16
    Width = 680
    Height = 415
    ActivePage = tsDados
    TabOrder = 0
    OnChange = pgCadastroContatosChange
    OnChanging = pgCadastroContatosChanging
    object tsDados: TTabSheet
      Caption = 'Dados'
      object grDados: TDBGrid
        Left = 0
        Top = 8
        Width = 669
        Height = 329
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
            FieldName = 'EMAIL'
            Title.Caption = 'E-Mail'
            Width = 325
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 325
            Visible = True
          end>
      end
      object bbNovo: TBitBtn
        Left = 8
        Top = 344
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 1
        OnClick = bbNovoClick
      end
      object bbEditar: TBitBtn
        Left = 88
        Top = 344
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
        OnClick = bbEditarClick
      end
      object bbSalvar: TBitBtn
        Left = 168
        Top = 344
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 3
        OnClick = bbSalvarClick
      end
      object bbExcluir: TBitBtn
        Left = 256
        Top = 344
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 4
        OnClick = bbExcluirClick
      end
      object bbFechar: TBitBtn
        Left = 336
        Top = 344
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
      object lblEmail: TLabel
        Left = 8
        Top = 24
        Width = 32
        Height = 13
        Caption = 'E-Mail:'
      end
      object lblNome: TLabel
        Left = 10
        Top = 56
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object dbEdNome: TDBEdit
        Left = 74
        Top = 48
        Width = 550
        Height = 21
        DataField = 'NOME'
        DataSource = dsDados
        TabOrder = 1
      end
      object bbConfirmar: TBitBtn
        Left = 460
        Top = 346
        Width = 75
        Height = 25
        Caption = 'Confirmar'
        TabOrder = 2
        OnClick = bbConfirmarClick
      end
      object bbCancelar: TBitBtn
        Left = 544
        Top = 346
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = bbCancelarClick
      end
      object dbEdEmail: TDBEdit
        Left = 74
        Top = 16
        Width = 550
        Height = 21
        DataField = 'EMAIL'
        DataSource = dsDados
        TabOrder = 0
      end
      object scBxCamposConfig: TScrollBox
        Left = 10
        Top = 80
        Width = 609
        Height = 257
        TabOrder = 4
        object lblCamposConfiguraveis: TLabel
          Left = 10
          Top = 8
          Width = 163
          Height = 20
          Caption = 'Campos Configur'#225'veis:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
      end
    end
  end
  object dsDados: TDataSource
    DataSet = DM.cdsContatos
    Left = 144
    Top = 24
  end
end
