object UpdateErrorDlg: TUpdateErrorDlg
  Left = 258
  Top = 109
  BorderStyle = bsDialog
  Caption = 'Dialog'
  ClientHeight = 214
  ClientWidth = 313
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 297
    Height = 161
    HelpType = htKeyword
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 32
    Top = 88
    Width = 36
    Height = 13
    HelpType = htKeyword
    Caption = 'IssueID'
  end
  object Label3: TLabel
    Left = 32
    Top = 112
    Width = 31
    Height = 13
    HelpType = htKeyword
    Caption = 'Owner'
  end
  object Label4: TLabel
    Left = 32
    Top = 136
    Width = 23
    Height = 13
    HelpType = htKeyword
    Caption = 'Date'
  end
  object OKBtn: TButton
    Left = 231
    Top = 180
    Width = 75
    Height = 25
    Caption = '&Skip'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 7
    Top = 180
    Width = 90
    Height = 25
    Cancel = True
    Caption = '&Cancel Updates'
    ModalResult = 2
    TabOrder = 1
    OnClick = CancelBtnClick
  end
  object Edit1: TEdit
    Left = 96
    Top = 88
    Width = 145
    Height = 21
    ReadOnly = True
    TabOrder = 2
    Text = 'Edit1'
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 96
    Top = 112
    Width = 145
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = 'Edit2'
    OnChange = Edit2Change
  end
  object Edit3: TEdit
    Left = 96
    Top = 136
    Width = 145
    Height = 21
    ReadOnly = True
    TabOrder = 4
    Text = 'Edit3'
    OnChange = Edit3Change
  end
  object Memo1: TMemo
    Left = 16
    Top = 16
    Width = 281
    Height = 65
    Enabled = False
    TabOrder = 5
  end
  object Button1: TButton
    Left = 96
    Top = 180
    Width = 65
    Height = 25
    Caption = 'C&orrect'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 180
    Width = 75
    Height = 25
    Caption = '&Retry'
    ModalResult = 4
    TabOrder = 7
  end
end
