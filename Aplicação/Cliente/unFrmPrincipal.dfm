object frmPrincipal: TfrmPrincipal
  Left = 104
  Top = 75
  Width = 1124
  Height = 593
  Align = alClient
  Caption = 'RD - Campos Personalizados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 536
    Width = 1108
    Height = 19
    Panels = <
      item
        Width = 800
      end
      item
        Width = 50
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1108
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 67
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 1
    object tlBtMeuUsuario: TToolButton
      Left = 0
      Top = 2
      Caption = 'Meu Usu'#225'rio'
      ImageIndex = 0
      OnClick = tlBtMeuUsuarioClick
    end
    object tlBtCampos: TToolButton
      Left = 67
      Top = 2
      Caption = 'Campos'
      ImageIndex = 1
      OnClick = tlBtCamposClick
    end
    object tlBtContatos: TToolButton
      Left = 134
      Top = 2
      Caption = 'Contatos'
      ImageIndex = 2
      OnClick = tlBtContatosClick
    end
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 8
    Top = 32
  end
end
