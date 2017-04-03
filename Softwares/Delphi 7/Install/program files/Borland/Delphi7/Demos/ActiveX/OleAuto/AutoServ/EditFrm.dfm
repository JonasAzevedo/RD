object EditForm: TEditForm
  Left = 225
  Top = 107
  Width = 304
  Height = 214
  Caption = 'EditForm'
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = MainMenu
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Memo: TMemo
    Left = 0
    Top = 0
    Width = 296
    Height = 168
    Align = alClient
    TabOrder = 0
    OnChange = MemoChange
  end
  object MainMenu: TMainMenu
    Left = 8
    Top = 128
    object FileMenu: TMenuItem
      Caption = '&File'
      object FileNewItem: TMenuItem
        Caption = '&New'
        OnClick = FileNewItemClick
      end
      object FileOpenItem: TMenuItem
        Caption = '&Open...'
        OnClick = FileOpenItemClick
      end
      object FileSaveItem: TMenuItem
        Caption = '&Save'
        OnClick = FileSaveItemClick
      end
      object FileSaveAsItem: TMenuItem
        Caption = 'Save &As...'
        OnClick = FileSaveAsItemClick
      end
      object FileCloseItem: TMenuItem
        Caption = '&Close'
        OnClick = FileCloseItemClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object FileExitItem: TMenuItem
        Caption = 'E&xit'
        OnClick = FileExitItemClick
      end
    end
  end
end
