inherited frmUsuarios: TfrmUsuarios
  Width = 515
  Height = 249
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'RD - Campos Personalizados - Cadastro de Usu'#225'rios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigo: TLabel
    Left = 16
    Top = 24
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lblSenha: TLabel
    Left = 16
    Top = 96
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object lblEmail: TLabel
    Left = 16
    Top = 72
    Width = 32
    Height = 13
    Caption = 'E-Mail:'
  end
  object lblNome: TLabel
    Left = 16
    Top = 48
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lblConfirmarSenha: TLabel
    Left = 16
    Top = 120
    Width = 81
    Height = 13
    Caption = 'Confirmar Senha:'
  end
  object edCodigo: TEdit
    Left = 106
    Top = 16
    Width = 64
    Height = 21
    Enabled = False
    TabOrder = 0
    Text = 'edCodigo'
  end
  object edConfirmarSenha: TEdit
    Left = 106
    Top = 112
    Width = 380
    Height = 21
    MaxLength = 20
    TabOrder = 4
    Text = 'edConfirmarSenha'
  end
  object edSenha: TEdit
    Left = 106
    Top = 88
    Width = 380
    Height = 21
    MaxLength = 20
    TabOrder = 3
  end
  object edEmail: TEdit
    Left = 106
    Top = 64
    Width = 380
    Height = 21
    CharCase = ecLowerCase
    MaxLength = 100
    TabOrder = 2
    Text = 'edemail'
  end
  object edNome: TEdit
    Left = 106
    Top = 40
    Width = 380
    Height = 21
    MaxLength = 100
    TabOrder = 1
    Text = 'edNome'
  end
  object bbSalvar: TBitBtn
    Left = 248
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = bbSalvarClick
  end
  object bbFecha: TBitBtn
    Left = 408
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 7
    OnClick = bbFechaClick
  end
  object cbMostrarSenha: TCheckBox
    Left = 106
    Top = 140
    Width = 97
    Height = 17
    Caption = 'Mostrar Senha'
    TabOrder = 5
    OnClick = cbMostrarSenhaClick
  end
  object bbExcluir: TBitBtn
    Left = 328
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 8
  end
end
