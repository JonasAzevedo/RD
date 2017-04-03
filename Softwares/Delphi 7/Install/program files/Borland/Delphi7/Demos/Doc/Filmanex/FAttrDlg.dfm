object FileAttrForm: TFileAttrForm
  Left = 244
  Top = 129
  ActiveControl = OKBtn
  BorderStyle = bsDialog
  Caption = 'File attributes'
  ClientHeight = 179
  ClientWidth = 388
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  Position = poScreenCenter
  TextHeight = 13
  ParentFont = True
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 281
    Height = 161
    Shape = bsFrame
    IsControl = True
  end
  object FileDirName: TLabel
    Left = 24
    Top = 16
    Width = 57
    Height = 13
    Caption = 'FileDirName'
  end
  object FilePathName: TLabel
    Left = 24
    Top = 40
    Width = 66
    Height = 13
    Caption = 'FilePathName'
  end
  object ChangeDate: TLabel
    Left = 24
    Top = 64
    Width = 60
    Height = 13
    Caption = 'ChangeDate'
  end
  object OKBtn: TButton
    Left = 300
    Top = 8
    Width = 77
    Height = 27
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 300
    Top = 40
    Width = 77
    Height = 27
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 88
    Width = 249
    Height = 65
    Caption = 'Attributes'
    TabOrder = 2
    object ReadOnly: TCheckBox
      Left = 16
      Top = 16
      Width = 97
      Height = 17
      Caption = '&Read Only'
      TabOrder = 0
    end
    object Archive: TCheckBox
      Left = 16
      Top = 40
      Width = 97
      Height = 17
      Caption = '&Archive'
      TabOrder = 1
    end
    object System: TCheckBox
      Left = 120
      Top = 16
      Width = 97
      Height = 17
      Caption = '&System'
      TabOrder = 2
    end
    object Hidden: TCheckBox
      Left = 120
      Top = 40
      Width = 97
      Height = 17
      Caption = '&Hidden'
      TabOrder = 3
    end
  end
end
