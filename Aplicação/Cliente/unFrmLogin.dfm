inherited frmLogin: TfrmLogin
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'RD - Campos Personalizados - Login'
  ClientHeight = 206
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
    Caption = '&Cadastrar Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = bbCadastrarUsuarioClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFAA4B14AE4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE
      4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE4C17AA4B14FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B14AA4B15AE4A10C85118E75E
      40F5634CF96650F96B53FA765AFB785EF96E58FC6551F7664FDB5C3FB14D1BAD
      4B15AA4B14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B14AA4B14
      AF4A11CE5320E96042F46751FA775BFB8765FB8863FB967BFBB4A9F88575F75F
      48EC6148C75736AD4C16AA4B14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFAA4B14AA4B14B34B16D55526ED6447F97E5FFC906CFC8B66FA7B59FBAB9A
      FEFDFFFAC2B8F4664DE25A3EC05530AB4D1CAA4B14FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFAA4B14B64D1BDC592DF57556FE8F6DFC8D68FC
      805CFC886BFDD3CBFFFFFFFFDCD4FB8369DF5E3EB8502AAB4D1CAA4B14FF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAA4B14B44F21D85D35FD82
      62FF9471FF8961FF8763FFBDADFFFEFDFFFFFFFFDCD4FF9578EC7451B9542BA9
      4A19AA4B14FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      B24F1FCD6138E7764EFA8A5CF37E58D88673CFC8C7D8E4E6E9ECE9F9C1B1FE8E
      6DF98864C35F35AB4A16FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFD2653CCE6138994D3C7B465C4948763F53884C5A87
      6C718FA36E67DC6E44E17447B85423FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF121A7402278C00
      299300228B001D85001D7F1F2265794149FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF222A
      6B063BBC0C44B21344AD1446AD1242AC0A3AA8012E9C152A86FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF030A190938931C5ED01B51B61A51B61A52B71B50B61B50B4184FB50739
      A800259CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF0717321C56B91F62D21B57BC1B5AC31C5BC41D5CC5
      1D5BC31E5FC71C58C0153A9CFF00FFFF00FFFF00FFFF00FF307B19307B19307B
      19FF00FFFF00FFFF00FFFF00FFFF00FF0303050D2B592675EE2271E7226DDD20
      69D61F65CF2067D22066D1216AD5216BD6194EB5FF00FFFF00FFFF00FFFF00FF
      307B192F8320307B19FF00FFFF00FFFF00FFFF00FFFF00FF0102050E305A2B86
      FE2B83F62573DA2471D8226DD61A52B7226BD32575DF2675DF1E5BC1FF00FFFF
      00FFFF00FFFF00FF307B192D8C27307B19FF00FFFF00FFFF00FFFF00FFFF00FF
      03020305101C123967143A6912345C2368BA1A52B72A7CE21A52B72B84EC2B7F
      E51E55B7FF00FF307B19307B19307B19307B192B962F307B19307B19307B1930
      7B19FF00FFFF00FF09090A12120F0B090A000205112D4A3291E136A4FF3091F8
      3191F6349DFE2F91F4194DACFF00FF307B1928A94028A63E29A33B2AA0382A9D
      362B9A342C9730307B19FF00FFFF00FFFF00FF33312F3C3D3B13110D021E382B
      8CDD3DB4FF39AAFF3BAFFF39ABFF276ED2FF00FFFF00FF307B19307B19307B19
      307B1928AA41307B19307B19307B19307B19FF00FFFF00FFFF00FF35312F6062
      617574723D3E410D243D14487D2267A62471B4195899152E75FF00FFFF00FFFF
      00FFFF00FFFF00FF307B1926B449307B19FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF535251727373848381736E69484340181A1B080606141213FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF307B1925B94E307B19FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF86868590908F7D7B7A555556
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF307B19307B19307B
      19FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object bbLogar: TBitBtn
    Left = 16
    Top = 80
    Width = 356
    Height = 35
    Caption = '&Logar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = bbLogarClick
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      08000000000040020000EB0E0000EB0E0000000100000000000080808000B9B9
      B900C3C3C300C4C4C400C8C8C800D5D5D500DCDCDC00DEDEDE00E0E0E000E1E1
      E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7E700E8E8E800E9E9
      E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEFEF00F0F0F000F1F1
      F100F3F3F300F4F4F400F6F6F600F7F7F700F8F8F800FAFAFA00FBFBFB00FDFD
      FD00FEFEFE00FF00FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000232323232323
      2323232323232323232323232323232323232323232323232323232323232323
      2323232323232323232323232323232323232323232323232323230100000023
      232323232323232323232323232323232323230106060D002323232323232323
      23232323232323232301001D2417010500232323232323232323232323232323
      230106241C01240602232323232323232323232323232301001D242100240602
      2323232323232323232323232323230106242200240603232323232323232323
      232323232301001D242100240603232323232323232323232323232323010624
      210024060223232323232323232323232323232300001F200024060423232323
      232323232323000000000000061E1E0024060423232323232323232323000606
      060606061A1B0024060223232323232323232323000B101113151718191A2406
      032323232323232323232301140C0E1011131517181906002323232323232323
      232323011D0A0C0E10101314161706002323232323232323232323011D090A0C
      0E101013141606002323232323232323232323011D0101070C0E101013140600
      2323232323232323232323011D002301070C0E0F101206002323232323232323
      232323011D00232301090C0D0F10060023232323232323232323230114000000
      0108090B0D06012323232323232323232323232301141D1D1D1D1D1D14012323
      2323232323232323232323232301010101010101012323232323232323232323
      2323232323232323232323232323232323232323232323232323}
  end
  object bbFechar: TBitBtn
    Left = 16
    Top = 160
    Width = 356
    Height = 35
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = bbFecharClick
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      08000000000040020000320B0000320B00000001000000010000108418000894
      180021AD390031AD520039C65A004AD67B0010A5D60018A5D60021A5D60029AD
      D60031ADDE0031B5DE0039B5DE0042B5DE0039BDE70042BDE7004AC6E70052C6
      E7005AC6E7005ACEE7007BCEE7005ACEEF0084D6EF006BD6F70073DEF7006BE7
      F7007BE7F70094E7F700BDE7F70094EFF700BDEFF700FF00FF005ADEFF005AE7
      FF0063E7FF006BE7FF007BE7FF005AEFFF0063EFFF006BEFFF0073EFFF007BEF
      FF0084EFFF008CEFFF009CEFFF008CF7FF0094F7FF009CF7FF00A5F7FF00B5F7
      FF00C6F7FF0094FFFF009CFFFF00B5FFFF00CEFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001F1F1F1F1F1F
      1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
      1F1F1F1F1F1F1F1F1F1F1F080808120F0908071F1F1F1F1F1F1F1F1F1F1F1F1F
      1F1F1F071535342E2B1A17110D0908071F1F1F1F1F1F1F1F1F1F1F062C362D2E
      2E2B2B1A18211815100B08071F1F1F1F1F1F1F082C2E2E2E2E2D2B2B2A282220
      20201815100B071F1F1F1F092C2E2E2E2E2D2B2B2A2928232222202020202007
      1F1F1F092C2E2E2D2D2D2B2B2B2A2A2928232220202020071F1F1F091D2E2E2E
      2E2E2E2B2B2B2B2A2A282322202020071F1F1F092C2E2E2E2D2E2E2D2B2B2B2B
      2B2A2923222020071F1F1F091D2E2E2E2E2E2E2E2D2B2B2B2B2B2A2823002007
      1F1F1F091D2E2E2E2E2E2E2E2D2D2B2B2B2B2B29280020071F1F1F092C332E2E
      2E2E2E2E2E2E2D2B2B2B2B2A290021071F1F1F092C332E2E2E2E2E2E2E2E2E2E
      002E2B2B00002B071F1F1F092C332E2E2E2E2E2E2E2E2E2E00002E0000012B07
      1F1F1F092F1C1E3232322F2D2D2E2E2E00030000012B2B071F1F1F090A0A0A0A
      0A0A142D2D2D2B2E000304002E2E2E071F1F1F0931332E2E2E2E0A142C2C2C2C
      00050202002C15071F1F1F07143533332E2E2A0A0A0C0D0D0000000000000E1F
      1F1F1F1F08161B1B2C3013061F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F070808
      0909081F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
      1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
      1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F}
  end
end
