object ChangeDlg: TChangeDlg
  Left = 244
  Top = 129
  ActiveControl = OKBtn
  BorderStyle = bsDialog
  Caption = 'Dialog'
  ClientHeight = 123
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
    Height = 105
    Shape = bsFrame
    IsControl = True
  end
  object CurrentDir: TLabel
    Left = 24
    Top = 24
    Width = 47
    Height = 13
    Caption = 'CurrentDir'
  end
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 26
    Height = 13
    Caption = 'From:'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 16
    Height = 13
    Caption = 'To:'
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
  object ToFileName: TEdit
    Left = 64
    Top = 80
    Width = 209
    Height = 21
    TabOrder = 2
  end
  object FromFileName: TEdit
    Left = 64
    Top = 48
    Width = 209
    Height = 21
    TabOrder = 3
  end
end
