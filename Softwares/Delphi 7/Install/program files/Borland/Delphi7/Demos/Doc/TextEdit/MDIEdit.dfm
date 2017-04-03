object EditForm: TEditForm
  Left = 196
  Top = 112
  Width = 435
  Height = 308
  Caption = 'Untitled'
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = MainMenu1
  PixelsPerInch = 96
  PopupMenu = PopupMenu1
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  TextHeight = 13
  object Editor: TRichEdit
    Left = 0
    Top = 0
    Width = 427
    Height = 262
    Align = alClient
    BorderStyle = bsNone
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 248
    object File1: TMenuItem
      Caption = '&File'
      object New1: TMenuItem
        Caption = '&New'
        OnClick = New1Click
      end
      object Open1: TMenuItem
        Caption = '&Open...'
        OnClick = Open1Click
      end
      object Close1: TMenuItem
        Caption = '&Close'
        OnClick = Close1Click
      end
      object Save1: TMenuItem
        Caption = '&Save'
        OnClick = Save1Click
      end
      object Saveas1: TMenuItem
        Caption = 'Save &as...'
        OnClick = Saveas1Click
      end
      object Print1: TMenuItem
        Caption = '&Print'
        OnClick = Print1Click
      end
      object Printersetup1: TMenuItem
        Caption = 'Printer setup...'
        OnClick = Printersetup1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit1Click
      end
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
      GroupIndex = 1
      OnClick = Edit1Click
      object Cut1: TMenuItem
        Caption = 'Cu&t'
        OnClick = Cut1Click
        ShortCutText = 'Ctrl+X'
      end
      object Copy1: TMenuItem
        Caption = '&Copy'
        OnClick = Copy1Click
        ShortCutText = 'Ctrl+C'
      end
      object Paste1: TMenuItem
        Caption = '&Paste'
        OnClick = Paste1Click
        ShortCutText = 'Ctrl+V'
      end
      object Delete1: TMenuItem
        Caption = 'De&lete'
        OnClick = Delete1Click
        ShortCutText = 'Ctrl+D'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Selectall1: TMenuItem
        Caption = 'Select &all'
        OnClick = Selectall1Click
        ShortCutText = 'Ctrl+A'
      end
    end
    object Character1: TMenuItem
      Caption = '&Character'
      GroupIndex = 1
      object Left1: TMenuItem
        Caption = '&Left'
        Checked = True
        OnClick = AlignClick
      end
      object Right1: TMenuItem
        Caption = '&Right'
        OnClick = AlignClick
      end
      object Center1: TMenuItem
        Caption = '&Center'
        OnClick = AlignClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Wordwrap1: TMenuItem
        Caption = '&Word wrap'
        Checked = True
        OnClick = Wordwrap1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Font1: TMenuItem
        Caption = '&Font...'
        OnClick = Font1Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = Edit1Click
    Left = 96
    Top = 64
    object Cut2: TMenuItem
      Caption = 'Cu&t'
      OnClick = Cut1Click
    end
    object Copy2: TMenuItem
      Caption = '&Copy'
      OnClick = Copy1Click
    end
    object Paste2: TMenuItem
      Caption = '&Paste'
      OnClick = Paste1Click
    end
  end
  object SaveFileDialog: TSaveDialog
    Filter = 
      'Rich text files (*.rtf)|*.rtf|Plain text files (*.txt)|*.txt|All' +
      ' files|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofNoReadOnlyReturn]
    Left = 56
    Top = 64
  end
  object FontDialog1: TFontDialog
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 136
    Top = 64
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 176
    Top = 64
  end
  object PrintDialog1: TPrintDialog
    Left = 216
    Top = 64
  end
end
