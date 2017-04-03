object EdPartsForm: TEdPartsForm
  Left = 274
  Top = 90
  HelpContext = 6
  ActiveControl = DBEdit2
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Edit Parts'
  ClientHeight = 325
  ClientWidth = 385
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object PrintBtn: TSpeedButton
      Left = 332
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
      Left = 0
      Top = 42
      Width = 385
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object Navigator: TDBNavigator
      Left = 20
      Top = 6
      Width = 290
      Height = 31
      HelpContext = 6
      DataSource = PartsSource1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 44
    Width = 385
    Height = 238
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 14
      Width = 42
      Height = 16
      Caption = 'PartNo'
    end
    object Label2: TLabel
      Left = 10
      Top = 41
      Width = 68
      Height = 16
      Caption = 'Description'
    end
    object Label3: TLabel
      Left = 10
      Top = 68
      Width = 44
      Height = 16
      Caption = 'Vendor'
    end
    object Label4: TLabel
      Left = 10
      Top = 95
      Width = 50
      Height = 16
      Caption = 'OnHand'
    end
    object Label5: TLabel
      Left = 10
      Top = 123
      Width = 51
      Height = 16
      Caption = 'OnOrder'
    end
    object Label7: TLabel
      Left = 10
      Top = 177
      Width = 27
      Height = 16
      Caption = 'Cost'
    end
    object Label8: TLabel
      Left = 10
      Top = 204
      Width = 51
      Height = 16
      Caption = 'ListPrice'
    end
    object Label6: TLabel
      Left = 10
      Top = 150
      Width = 79
      Height = 16
      Caption = 'Backordered'
    end
    object DBEdit2: TDBEdit
      Left = 98
      Top = 36
      Width = 277
      Height = 24
      HelpContext = 6
      DataField = 'Description'
      DataSource = PartsSource1
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 98
      Top = 91
      Width = 101
      Height = 24
      HelpContext = 6
      DataField = 'OnHand'
      DataSource = PartsSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 98
      Top = 119
      Width = 101
      Height = 24
      HelpContext = 6
      DataField = 'OnOrder'
      DataSource = PartsSource1
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 98
      Top = 174
      Width = 126
      Height = 24
      HelpContext = 6
      DataField = 'Cost'
      DataSource = PartsSource1
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 98
      Top = 201
      Width = 126
      Height = 24
      HelpContext = 6
      DataField = 'ListPrice'
      DataSource = PartsSource1
      TabOrder = 7
    end
    object DBEdPartNo: TDBEdit
      Left = 98
      Top = 7
      Width = 126
      Height = 24
      HelpContext = 6
      DataField = 'PartNo'
      DataSource = PartsSource1
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 98
      Top = 146
      Width = 56
      Height = 24
      HelpContext = 6
      DataField = 'BackOrd'
      DataSource = PartsSource1
      TabOrder = 5
    end
    object DataComboBox1: TDBLookupComboBox
      Left = 98
      Top = 63
      Width = 277
      Height = 24
      DataField = 'VendorNo'
      DataSource = PartsSource1
      KeyField = 'VendorNo'
      ListField = 'VendorName'
      ListSource = MastData.VendorSource
      TabOrder = 2
    end
  end
  object OKButton: TButton
    Left = 181
    Top = 289
    Width = 92
    Height = 31
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object CancelButton: TButton
    Left = 286
    Top = 289
    Width = 92
    Height = 31
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object PartsSource1: TDataSource
    DataSet = MastData.Parts
    Left = 24
    Top = 232
  end
end
