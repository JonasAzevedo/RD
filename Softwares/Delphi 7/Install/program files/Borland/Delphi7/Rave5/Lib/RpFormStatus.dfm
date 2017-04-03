object RPStatusForm: TRPStatusForm
  Left = 293
  Top = 241
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Report Status'
  ClientHeight = 113
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object StatusLabel: TLabel
    Left = 8
    Top = 16
    Width = 345
    Height = 49
    Alignment = taCenter
    AutoSize = False
  end
  object CancelButton: TButton
    Left = 144
    Top = 78
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    Default = True
    ModalResult = 2
    TabOrder = 0
    OnClick = CancelButtonClick
  end
end
