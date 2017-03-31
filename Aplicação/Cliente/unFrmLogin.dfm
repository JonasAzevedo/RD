inherited frmLogin: TfrmLogin
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'RD - Campos Personalizados - Login'
  ClientHeight = 175
  ClientWidth = 389
  KeyPreview = True
  OldCreateOrder = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lblEmail: TLabel [0]
    Left = 13
    Top = 20
    Width = 43
    Height = 20
    Caption = 'Email:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblSenha: TLabel [1]
    Left = 13
    Top = 50
    Width = 51
    Height = 20
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited bvlFundo: TBevel
    Left = 5
    Top = 7
    Width = 376
    Height = 158
  end
  object edEmail: TEdit
    Left = 73
    Top = 16
    Width = 300
    Height = 28
    CharCase = ecLowerCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 100
    ParentFont = False
    TabOrder = 0
    Text = 'edemail'
  end
  object edSenha: TEdit
    Left = 73
    Top = 46
    Width = 300
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    Text = 'edSenha'
  end
  object bbCadastrarUsuario: TBitBtn
    Left = 16
    Top = 120
    Width = 356
    Height = 35
    Caption = 'Cadastrar Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = bbCadastrarUsuarioClick
  end
  object bbLogar: TBitBtn
    Left = 16
    Top = 80
    Width = 356
    Height = 35
    Caption = 'Logar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = bbLogarClick
  end
end
