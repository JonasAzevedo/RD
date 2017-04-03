object MainForm: TMainForm
  Left = 197
  Top = 165
  Width = 694
  Height = 452
  Caption = 'Winword Demo'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  OnActivate = Form1Activate
  OnClose = Form1Close
  OnCreate = Form1Create
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TDBGrid
    Left = 13
    Top = 182
    Width = 228
    Height = 118
    DataSource = DataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator: TDBNavigator
    Left = 13
    Top = 163
    Width = 220
    Height = 20
    DataSource = DataSource
    TabOrder = 1
  end
  object DBImgFishImg: TDBImage
    Left = 247
    Top = 163
    Width = 306
    Height = 137
    DataField = 'Graphic'
    DataSource = DataSource
    TabOrder = 2
  end
  object BtnInsertRecord: TButton
    Left = 468
    Top = 312
    Width = 85
    Height = 20
    Caption = 'Insert record'
    TabOrder = 3
    OnClick = BtnInsertRecordClick
  end
  object ChkBoxNewDoc: TCheckBox
    Left = 364
    Top = 319
    Width = 98
    Height = 13
    Caption = 'New Document'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object GroupBox: TGroupBox
    Left = 13
    Top = 7
    Width = 397
    Height = 150
    Caption = 'Font Options:'
    TabOrder = 5
    object lblFont: TLabel
      Left = 13
      Top = 20
      Width = 24
      Height = 13
      Caption = 'Font:'
    end
    object lblFontSize: TLabel
      Left = 169
      Top = 111
      Width = 45
      Height = 13
      Caption = 'Font size:'
    end
    object Fonttype: TListBox
      Left = 13
      Top = 33
      Width = 150
      Height = 111
      ItemHeight = 13
      TabOrder = 0
    end
    object ChkBoxEmboss: TCheckBox
      Left = 169
      Top = 91
      Width = 79
      Height = 14
      Caption = 'Emboss'
      TabOrder = 1
    end
    object ChkBoxItalic: TCheckBox
      Left = 169
      Top = 72
      Width = 79
      Height = 13
      Caption = 'Italic'
      TabOrder = 2
    end
    object ChkBoxBold: TCheckBox
      Left = 169
      Top = 52
      Width = 79
      Height = 14
      Caption = 'Bold'
      TabOrder = 3
    end
    object ChkBoxUnderline: TCheckBox
      Left = 169
      Top = 33
      Width = 79
      Height = 13
      Caption = 'Underline'
      TabOrder = 4
    end
    object ChkBoxEngrave: TCheckBox
      Left = 267
      Top = 33
      Width = 78
      Height = 13
      Caption = 'Engrave'
      TabOrder = 5
    end
    object ChkBoxShadow: TCheckBox
      Left = 267
      Top = 52
      Width = 78
      Height = 14
      Caption = 'Shadow'
      TabOrder = 6
    end
    object ChkBoxDoublestrike: TCheckBox
      Left = 267
      Top = 72
      Width = 124
      Height = 13
      Caption = 'Double strike through'
      TabOrder = 7
    end
    object ChkBoxStrike: TCheckBox
      Left = 267
      Top = 91
      Width = 91
      Height = 14
      Caption = 'Strike through'
      TabOrder = 8
    end
    object Size: TEdit
      Left = 169
      Top = 124
      Width = 215
      Height = 21
      TabOrder = 9
      Text = '10'
    end
  end
  object btnCloseWord: TButton
    Left = 20
    Top = 312
    Width = 85
    Height = 20
    Caption = 'Close Word'
    Enabled = False
    TabOrder = 6
    OnClick = btnCloseWordClick
  end
  object BtnPrint: TButton
    Left = 111
    Top = 312
    Width = 85
    Height = 20
    Caption = 'Print'
    Enabled = False
    TabOrder = 7
    OnClick = BtnPrintClick
  end
  object BtnPreview: TButton
    Left = 202
    Top = 312
    Width = 85
    Height = 20
    Caption = 'Print Preview'
    Enabled = False
    TabOrder = 8
    OnClick = BtnPreviewClick
  end
  object GroupBox2: TGroupBox
    Left = 416
    Top = 7
    Width = 137
    Height = 150
    Caption = 'Documents:'
    TabOrder = 9
    object lbDocs: TListBox
      Left = 7
      Top = 20
      Width = 124
      Height = 124
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object DataSource: TDataSource
    DataSet = Table
    Left = 264
    Top = 232
  end
  object WordDocument: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 48
    Top = 384
  end
  object Table: TTable
    DatabaseName = 'DBDEMOS'
    ReadOnly = True
    TableName = 'biolife.db'
    Left = 232
    Top = 232
  end
  object WordApplication: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    OnDocumentChange = WordApplicationDocumentChange
    Left = 80
    Top = 384
  end
  object WordFont: TWordFont
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 16
    Top = 384
  end
end
