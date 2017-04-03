object MDIChildForm: TMDIChildForm
  Left = 425
  Top = 134
  AutoScroll = False
  Caption = 'Untitled'
  ClientHeight = 189
  ClientWidth = 336
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = MainMenu1
  Position = poDefault
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 336
    Height = 189
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    Caption = 'Panel1'
    TabOrder = 0
    object OleContainer1: TOleContainer
      Left = 5
      Top = 5
      Width = 326
      Height = 179
      AutoVerbMenu = False
      Align = alClient
      Caption = 'OleContainer1'
      PopupMenu = LocalMenu
      TabOrder = 0
      OnActivate = OleContainer1Activate
    end
  end
  object LocalMenu: TPopupMenu
    OnPopup = LocalMenuPopup
    Left = 45
    Top = 9
    object InsertObject1: TMenuItem
      Caption = '&Insert Object'
      Hint = 'Insert an OLE object'
      ShortCut = 0
      OnClick = InsertObject1Click
    end
    object CopyObject1: TMenuItem
      Caption = '&Copy Object'
      Hint = 'Copy OLE object to the clipboard'
      ShortCut = 0
      OnClick = CopyObject1Click
    end
    object DeleteObject1: TMenuItem
      Caption = '&Delete Object'
      Hint = 'Delete OLE object'
      ShortCut = 0
      OnClick = DeleteObject1Click
    end
    object Properties1: TMenuItem
      Caption = '&Object Properties...'
      Hint = 'Display the OLE objects properties'
      ShortCut = 0
      OnClick = Properties1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 11
    Top = 9
    object Edit1: TMenuItem
      Caption = '&Edit'
      GroupIndex = 1
      ShortCut = 0
      OnClick = Edit1Click
      object Cut1: TMenuItem
        Caption = '&Cut'
        Hint = 'Cut active object to the clipboard'
        ShortCut = 0
        OnClick = Cut1Click
      end
      object Copy1: TMenuItem
        Caption = 'C&opy'
        Hint = 'Copy active object to the clipboard'
        ShortCut = 0
        OnClick = Copy1Click
      end
      object Paste1: TMenuItem
        Caption = '&Paste'
        Hint = 'Insert clipboard contents'
        ShortCut = 0
        OnClick = Paste1Click
      end
      object PasteSpecial1: TMenuItem
        Caption = 'Paste &Special...'
        Hint = 
          'Insert clipboard contents as an embedded object, linked object o' +
          'r other format object'
        ShortCut = 0
        OnClick = PasteSpecial1Click
      end
      object CLear1: TMenuItem
        Caption = 'C&lear'
        Hint = 'Delete active OLE object'
        ShortCut = 0
        OnClick = DeleteObject1Click
      end
      object N3: TMenuItem
        Caption = '-'
        ShortCut = 0
      end
      object Object2: TMenuItem
        Caption = '&Object Properties'
        Hint = 'Display, edit active object properties'
        ShortCut = 0
        OnClick = Properties1Click
      end
      object Insert1: TMenuItem
        Caption = '&Insert Object...'
        Hint = 'Insert an OLE object'
        ShortCut = 0
        OnClick = InsertObject1Click
      end
    end
  end
end
