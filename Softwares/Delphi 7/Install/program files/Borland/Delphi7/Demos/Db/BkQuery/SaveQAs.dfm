object SaveQueryAs: TSaveQueryAs
  Left = 240
  Top = 171
  BorderStyle = bsDialog
  Caption = 'Save query as'
  ClientHeight = 102
  ClientWidth = 343
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 329
    Height = 57
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 16
    Top = 11
    Width = 60
    Height = 13
    Caption = 'Query name:'
  end
  object NameEdit: TEdit
    Left = 16
    Top = 27
    Width = 305
    Height = 21
    TabOrder = 0
    OnChange = NameEditChange
  end
  object OKBtn: TButton
    Left = 184
    Top = 72
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 264
    Top = 72
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end
