object MainForm: TMainForm
  Left = 200
  Top = 108
  Width = 385
  Height = 235
  Caption = 'Memo Editor'
  Color = clAppWorkSpace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  PixelsPerInch = 96
  Position = poDefault
  WindowMenu = WindowMenu
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 8
    Top = 152
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
      object N1: TMenuItem
        Caption = '-'
      end
      object FileExitItem: TMenuItem
        Caption = '&Exit'
        OnClick = FileExitItemClick
      end
    end
    object WindowMenu: TMenuItem
      Caption = '&Window'
      GroupIndex = 1
      object WindowTileItem: TMenuItem
        Caption = '&Tile'
        OnClick = WindowTileItemClick
      end
      object WindowCascadeItem: TMenuItem
        Caption = '&Cascade'
        OnClick = WindowCascadeItemClick
      end
      object WindowArrangeIconsItem: TMenuItem
        Caption = '&Arrange Icons'
        OnClick = WindowArrangeIconsItemClick
      end
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Text file (*.txt)|*.txt|Any file (*.*)|*.*'
    Options = [ofHideReadOnly]
    Left = 40
    Top = 152
  end
  object SaveDialog: TSaveDialog
    Filter = 'Text file (*.txt)|*.txt|Any file (*.*)|*.*'
    Options = [ofHideReadOnly]
    Left = 72
    Top = 152
  end
end
