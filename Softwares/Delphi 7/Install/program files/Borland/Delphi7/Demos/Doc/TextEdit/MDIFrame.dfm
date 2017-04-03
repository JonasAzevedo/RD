object FrameForm: TFrameForm
  Left = 219
  Top = 138
  Width = 435
  Height = 300
  Caption = 'Text editor'
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  Position = poDefault
  WindowMenu = Window1
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    Top = 248
    object File1: TMenuItem
      Caption = '&File'
      ShortCut = 0
      object New1: TMenuItem
        Caption = '&New'
        ShortCut = 0
        OnClick = New1Click
      end
      object Open1: TMenuItem
        Caption = '&Open...'
        ShortCut = 0
        OnClick = Open1Click
      end
      object N1: TMenuItem
        Caption = '-'
        ShortCut = 0
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        GroupIndex = 9
        ShortCut = 0
        OnClick = Exit1Click
      end
    end
    object Window1: TMenuItem
      Caption = '&Window'
      GroupIndex = 9
      ShortCut = 0
      object Tile1: TMenuItem
        Caption = '&Tile'
        ShortCut = 0
        OnClick = Tile1Click
      end
      object Cascade1: TMenuItem
        Caption = '&Cascade'
        ShortCut = 0
        OnClick = Cascade1Click
      end
      object Arrangeicons1: TMenuItem
        Caption = '&Arrange icons'
        ShortCut = 0
        OnClick = Arrangeicons1Click
      end
    end
  end
  object OpenFileDialog: TOpenDialog
    FileEditStyle = fsEdit
    Filter = 
      'Rich text files (*.rtf)|*.rtf|Plain text files (*.txt)|*.txt|All' +
      ' files|*.*'
    Left = 16
    Top = 24
  end
end
