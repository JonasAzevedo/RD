object EdCustForm: TEdCustForm
  Left = 344
  Top = 188
  HelpContext = 1
  ActiveControl = DBEdName
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Edit Customers'
  ClientHeight = 378
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 120
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 48
    Width = 463
    Height = 281
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 305
      Top = 15
      Width = 44
      Height = 16
      Caption = 'CustNo'
    end
    object Label2: TLabel
      Left = 25
      Top = 15
      Width = 58
      Height = 16
      Caption = 'Company'
    end
    object Label3: TLabel
      Left = 25
      Top = 65
      Width = 32
      Height = 16
      Caption = 'Add1'
    end
    object Label4: TLabel
      Left = 25
      Top = 114
      Width = 32
      Height = 16
      Caption = 'Add2'
    end
    object Label5: TLabel
      Left = 25
      Top = 164
      Width = 22
      Height = 16
      Caption = 'City'
    end
    object Label6: TLabel
      Left = 153
      Top = 165
      Width = 31
      Height = 16
      Caption = 'State'
    end
    object Label7: TLabel
      Left = 236
      Top = 165
      Width = 55
      Height = 16
      Caption = 'Zip Code'
    end
    object Label8: TLabel
      Left = 356
      Top = 162
      Width = 45
      Height = 16
      Caption = 'Country'
    end
    object Label9: TLabel
      Left = 305
      Top = 65
      Width = 39
      Height = 16
      Caption = 'Phone'
    end
    object Label11: TLabel
      Left = 350
      Top = 229
      Width = 55
      Height = 16
      Caption = 'Tax Rate'
    end
    object Label13: TLabel
      Left = 177
      Top = 231
      Width = 71
      Height = 16
      Caption = 'Last Invoice'
    end
    object Label14: TLabel
      Left = 305
      Top = 113
      Width = 22
      Height = 16
      Caption = 'Fax'
    end
    object Bevel2: TBevel
      Left = 10
      Top = 219
      Width = 424
      Height = 6
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 20
      Top = 231
      Width = 45
      Height = 16
      Caption = 'Contact'
    end
    object DBEdCustNo: TDBEdit
      Left = 304
      Top = 34
      Width = 85
      Height = 24
      Color = clSilver
      DataField = 'CustNo'
      DataSource = MastData.CustSource
      Enabled = False
      ReadOnly = True
      TabOrder = 12
    end
    object DBEdName: TDBEdit
      Left = 23
      Top = 34
      Width = 253
      Height = 24
      DataField = 'Company'
      DataSource = MastData.CustSource
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 23
      Top = 84
      Width = 253
      Height = 24
      DataField = 'Addr1'
      DataSource = MastData.CustSource
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 23
      Top = 133
      Width = 253
      Height = 24
      DataField = 'Addr2'
      DataSource = MastData.CustSource
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 23
      Top = 182
      Width = 121
      Height = 24
      DataField = 'City'
      DataSource = MastData.CustSource
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 151
      Top = 182
      Width = 77
      Height = 24
      DataField = 'State'
      DataSource = MastData.CustSource
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 235
      Top = 182
      Width = 111
      Height = 24
      DataField = 'Zip'
      DataSource = MastData.CustSource
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 354
      Top = 182
      Width = 82
      Height = 24
      DataField = 'Country'
      DataSource = MastData.CustSource
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 304
      Top = 84
      Width = 130
      Height = 24
      DataField = 'Phone'
      DataSource = MastData.CustSource
      TabOrder = 7
    end
    object DBEdit11: TDBEdit
      Left = 348
      Top = 250
      Width = 67
      Height = 24
      DataField = 'TaxRate'
      DataSource = MastData.CustSource
      TabOrder = 11
    end
    object DBEdit12: TDBEdit
      Left = 18
      Top = 250
      Width = 146
      Height = 24
      DataField = 'Contact'
      DataSource = MastData.CustSource
      TabOrder = 9
    end
    object DBEdInv: TDBEdit
      Left = 176
      Top = 250
      Width = 161
      Height = 24
      DataField = 'LastInvoiceDate'
      DataSource = MastData.CustSource
      TabOrder = 10
    end
    object DBEdit14: TDBEdit
      Left = 304
      Top = 130
      Width = 130
      Height = 24
      DataField = 'FAX'
      DataSource = MastData.CustSource
      TabOrder = 8
    end
  end
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 1
    object PrintBtn: TSpeedButton
      Left = 417
      Top = 6
      Width = 31
      Height = 31
      Hint = 'Print form image'
      Glyph.Data = {
        2A010000424D2A010000000000007600000028000000130000000F0000000100
        040000000000B400000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333F0EFF3300000000000003333F00FF37877777777777703330000030F8
        8888888888870333003330F9988888888887703F11EE37FFFFFFFFFFFFF77039
        0910330888888888888F703865F03330870000000078F03765F03333000FFFFF
        F000033865F03333330F44448033333765F033333330FFFFFF03333865F03333
        3330F4444803333765F0333333330FFFFFF0333865F033333333000000003336
        66C0333333333333333333300000}
      OnClick = PrintBtnClick
    end
    object Bevel1: TBevel
      Left = 2
      Top = 43
      Width = 459
      Height = 3
      Align = alBottom
      Shape = bsTopLine
    end
    object DBNavigator: TDBNavigator
      Left = 23
      Top = 6
      Width = 300
      Height = 31
      DataSource = MastData.CustSource
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 329
    Width = 463
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object CancelButton: TButton
      Left = 359
      Top = 10
      Width = 93
      Height = 31
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object OKButton: TButton
      Left = 251
      Top = 10
      Width = 92
      Height = 31
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 1
    end
  end
end
