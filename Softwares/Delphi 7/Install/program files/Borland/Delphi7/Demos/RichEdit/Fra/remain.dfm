object MainForm: TMainForm
  Left = 174
  Top = 107
  Width = 625
  Height = 209
  ActiveControl = Editor
  Caption = 'D'#233'mo du contr'#244'le RichEdit'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000088
    88888888888888888888888888000444444444444444444444444444480004FF
    FFFFFFFFFFFFFFFFFFFFFFFF480004F000000FFFFFFFFFFFFFFFFFFF480004F0
    CCCC08000000FFFFFFFFFFFF480004F0CCCC0F09990FFFFFFFFFFFFF480004F0
    CCC00009990FFF00000000FF480004F0CC0BBB0890FFFFFFFFFFFFFF480004F0
    08BBBBB090FFF000000000FF480004FFF0BBBBB80FFFFFFFFFFFFFFF480004FF
    F0BBBBB0FFF00000000000FF480004FFFF0BBB0FFFFFFFFFFFFFFFFF480004FF
    FFF000FFF00000F0000000FF480004FFFFFFFFFFFFFFFFFFFFFFFFFF480004F0
    0000F000000000000F0000FF480004FFFFFFFFFFFFFFFFFFFFFFFFFF480004F0
    000000000F000000000000FF480004FFFFFFFFFFFFFFFFFFFFFFFFFF480004FF
    FFFFFFFFFFFFFFFFFFFFFFFF480004F007FF700F000000FFF000007F480004F7
    00FF700F0087700F0008700F480004FF0000000F008F700F008FFFFF480004FF
    700F007F7087700F007FFFFF480004FFF00700FFF00000FF008FFFFF480004FF
    FF0000FFF007700F7007FFFF480004FFFF0000FFF007700FF000880F480004FF
    FFF007FFF700000FFF00000F480004FFFFFFFFFFFFFFFFFFFFFFFFFF40000444
    444444444444444444444444400000000000000000000000000000000000FFFF
    FFFFFFFFFFFFC000000380000003800000038000000380000003800000038000
    0003800000038000000380000003800000038000000380000003800000038000
    0003800000038000000380000003800000038000000380000003800000038000
    0003800000038000000380000003800000038000000780000007FFFFFFFF}
  Menu = MainMenu
  OldCreateOrder = True
  Position = poDefaultSizeOnly
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Ruler: TPanel
    Left = 0
    Top = 32
    Width = 617
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = 'asdf'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnResize = RulerResize
    object FirstInd: TLabel
      Left = 2
      Top = 2
      Width = 10
      Height = 9
      AutoSize = False
      Caption = #234
      DragCursor = crArrow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Wingdings'
      Font.Style = []
      ParentFont = False
      OnMouseDown = RulerItemMouseDown
      OnMouseMove = RulerItemMouseMove
      OnMouseUp = FirstIndMouseUp
    end
    object LeftInd: TLabel
      Left = 2
      Top = 12
      Width = 10
      Height = 11
      AutoSize = False
      Caption = #233
      DragCursor = crArrow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Wingdings'
      Font.Style = []
      ParentFont = False
      OnMouseDown = RulerItemMouseDown
      OnMouseMove = RulerItemMouseMove
      OnMouseUp = LeftIndMouseUp
    end
    object RulerLine: TBevel
      Left = 4
      Top = 12
      Width = 579
      Height = 2
      Shape = bsTopLine
    end
    object RightInd: TLabel
      Left = 575
      Top = 14
      Width = 9
      Height = 12
      Caption = #241
      DragCursor = crArrow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Wingdings'
      Font.Style = []
      ParentFont = False
      OnMouseDown = RulerItemMouseDown
      OnMouseMove = RulerItemMouseMove
      OnMouseUp = RightIndMouseUp
    end
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 617
      Height = 2
      Align = alTop
      Shape = bsTopLine
    end
  end
  object Editor: TRichEdit
    Left = 0
    Top = 58
    Width = 617
    Height = 86
    Align = alClient
    ScrollBars = ssBoth
    TabOrder = 1
    OnChange = RichEditChange
    OnSelectionChange = SelectionChange
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 144
    Width = 617
    Height = 19
    Panels = <
      item
        Width = 120
      end
      item
        Alignment = taCenter
        Width = 60
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object StandardToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 617
    AutoSize = True
    BorderWidth = 2
    Flat = True
    Images = ToolbarImages
    Indent = 4
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Wrapable = False
    object ToolButton1: TToolButton
      Left = 4
      Top = 0
      Action = FileNewCmd
    end
    object OpenButton: TToolButton
      Left = 27
      Top = 0
      Action = FileOpenCmd
    end
    object SaveButton: TToolButton
      Left = 50
      Top = 0
      Action = FileSaveCmd
    end
    object PrintButton: TToolButton
      Left = 73
      Top = 0
      Action = FilePrintCmd
    end
    object ToolButton5: TToolButton
      Left = 96
      Top = 0
      Width = 8
      ImageIndex = 3
      Style = tbsDivider
    end
    object CutButton: TToolButton
      Left = 104
      Top = 0
      Action = EditCutCmd
    end
    object CopyButton: TToolButton
      Left = 127
      Top = 0
      Action = EditCopyCmd
    end
    object PasteButton: TToolButton
      Left = 150
      Top = 0
      Action = EditPasteCmd
    end
    object UndoButton: TToolButton
      Left = 173
      Top = 0
      Action = EditUndoCmd
    end
    object ToolButton10: TToolButton
      Left = 196
      Top = 0
      Width = 8
      ImageIndex = 7
      Style = tbsSeparator
    end
    object FontName: TComboBox
      Left = 204
      Top = 0
      Width = 173
      Height = 21
      Hint = 'Nom de fonte|S'#233'lectionner le nom de la fonte'
      Ctl3D = False
      DropDownCount = 10
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      OnChange = FontNameChange
    end
    object ToolButton11: TToolButton
      Left = 377
      Top = 0
      Width = 8
      ImageIndex = 8
      Style = tbsSeparator
    end
    object FontSize: TEdit
      Left = 385
      Top = 0
      Width = 26
      Height = 22
      Hint = 'Taille de fonte|S'#233'lectionner la taille de fonte'
      TabOrder = 1
      Text = '0'
      OnChange = FontSizeChange
    end
    object UpDown1: TUpDown
      Left = 411
      Top = 0
      Width = 15
      Height = 22
      Associate = FontSize
      Min = 0
      Position = 0
      TabOrder = 2
      Wrap = False
    end
    object ToolButton2: TToolButton
      Left = 426
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 15
      Style = tbsSeparator
    end
    object BoldButton: TToolButton
      Left = 434
      Top = 0
      Hint = 'Gras'
      ImageIndex = 8
      Style = tbsCheck
      OnClick = BoldButtonClick
    end
    object ItalicButton: TToolButton
      Left = 457
      Top = 0
      Hint = 'Italique'
      ImageIndex = 9
      Style = tbsCheck
      OnClick = ItalicButtonClick
    end
    object UnderlineButton: TToolButton
      Left = 480
      Top = 0
      Hint = 'Soulign'#233
      ImageIndex = 10
      Style = tbsCheck
      OnClick = UnderlineButtonClick
    end
    object ToolButton16: TToolButton
      Left = 503
      Top = 0
      Width = 8
      ImageIndex = 12
      Style = tbsDivider
    end
    object LeftAlign: TToolButton
      Left = 511
      Top = 0
      Hint = 'Aligner '#224' gauche'
      Grouped = True
      ImageIndex = 11
      Style = tbsCheck
      OnClick = AlignButtonClick
    end
    object CenterAlign: TToolButton
      Tag = 2
      Left = 534
      Top = 0
      Hint = 'Centr'#233
      Grouped = True
      ImageIndex = 12
      Style = tbsCheck
      OnClick = AlignButtonClick
    end
    object RightAlign: TToolButton
      Tag = 1
      Left = 557
      Top = 0
      Hint = 'Aligner '#224' droite'
      Grouped = True
      ImageIndex = 13
      Style = tbsCheck
      OnClick = AlignButtonClick
    end
    object ToolButton20: TToolButton
      Left = 580
      Top = 0
      Width = 8
      ImageIndex = 15
      Style = tbsDivider
    end
    object BulletsButton: TToolButton
      Left = 588
      Top = 0
      Hint = 'Marques|Passer en mode marques'
      ImageIndex = 14
      Style = tbsCheck
      OnClick = BulletsButtonClick
    end
  end
  object MainMenu: TMainMenu
    Images = ToolbarImages
    Left = 120
    Top = 68
    object FileMenu: TMenuItem
      Caption = '&Fichier'
      object FileNewItem: TMenuItem
        Action = FileNewCmd
      end
      object FileOpenItem: TMenuItem
        Action = FileOpenCmd
      end
      object FileSaveItem: TMenuItem
        Action = FileSaveCmd
      end
      object FileSaveAsItem: TMenuItem
        Action = FileSaveAsCmd
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object FilePrintItem: TMenuItem
        Action = FilePrintCmd
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object FileExitItem: TMenuItem
        Action = FileExitCmd
      end
    end
    object EditMenu: TMenuItem
      Caption = '&Edition'
      object EditUndoItem: TMenuItem
        Action = EditUndoCmd
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object EditCutItem: TMenuItem
        Action = EditCutCmd
      end
      object EditCopyItem: TMenuItem
        Action = EditCopyCmd
      end
      object EditPasteItem: TMenuItem
        Action = EditPasteCmd
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object miEditFont: TMenuItem
        Caption = '&Fonte...'
        OnClick = SelectFont
      end
    end
    object LanguageMenu: TMenuItem
      Caption = '&Langue'
      object LanguageEnglish: TMenuItem
        Caption = '&Anglais'
        Hint = 'Utiliser la traduction en anglais'
        OnClick = SwitchLanguage
      end
      object LanguageFrench: TMenuItem
        Caption = '&Fran'#231'ais'
        Hint = 'Utiliser la traduction en fran'#231'ais'
        OnClick = SwitchLanguage
      end
      object LanguageGerman: TMenuItem
        Caption = 'Alle&mand'
        Hint = 'Utiliser la traduction en allemand'
        OnClick = SwitchLanguage
      end
    end
    object HelpMenu: TMenuItem
      Caption = '&Aide'
      object HelpAboutItem: TMenuItem
        Caption = '&A propos...'
        Hint = 'Afficher des informations sur le programme'
        OnClick = HelpAbout
      end
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Fichiers Rich Text (*.RTF)|*.RTF|Fichiers texte (*.TXT)|*.TXT'
    Left = 56
    Top = 104
  end
  object SaveDialog: TSaveDialog
    Filter = 'Fichiers Rich Text (*.RTF)|*.RTF|Fichiers texte (*.TXT)|*.TXT'
    Left = 88
    Top = 104
  end
  object PrintDialog: TPrintDialog
    Left = 120
    Top = 104
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 24
    Top = 104
  end
  object ToolbarImages: TImageList
    Left = 88
    Top = 68
    Bitmap = {
      494C01010F001400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001001000000000000028
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010001000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010001000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010001000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010001000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010001000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010001000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010001000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010001000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100010001000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010001000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001000
      1000100010001000100010001000100010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100000000000
      1000000000001000100000000000000000000000000000000000000000000000
      1000100010001000100010001000100010000000000000000000000000001000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100000000000
      1000000010000000000010000000000000000000000000000000000000000000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000104200421042004210421000
      FF7F000000000000000000000000FF7F10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100000000000
      1000000010000000000010000000000000000000000000000000000000000000
      1000FF7F00000000000000000000FF7F10000000004210420042104200421000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000000000000000000000000000
      0000000000000000000010000000000000000000000000000000000010001000
      1000000010000000000010000000000000000000000000000000000000000000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000104200421042004210421000
      FF7F000000000000FF7F10001000100010000000000010001000100010001000
      0000000000000000000010000000000000000000000000000000000000000000
      10000000100010001000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      1000FF7F00000000000000000000FF7F10000000004210420042104200421000
      FF7FFF7FFF7FFF7FFF7F1000FF7F100000000000000010001000100010000000
      0000000000000000000000001000000000000000000000000000000000000000
      10000000100000000000000000000000000000000000FF7F0000000000000000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000104200421042004210421000
      FF7FFF7FFF7FFF7FFF7F10001000000000000000000010001000100000000000
      0000000000000000000000001000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      1000FF7F00000000FF7F10001000100010000000004210420042104200421000
      1000100010001000100010000000000000000000000010001000000010000000
      0000000000000000000000001000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F0000000000000000
      1000FF7FFF7FFF7FFF7F1000FF7F100000000000104200421042004210420042
      1042004210420042104200420000000000000000000010000000000000001000
      1000000000000000000010000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      1000FF7FFF7FFF7FFF7F10001000000000000000004210420000000000000000
      0000000000000000104210420000000000000000000000000000000000000000
      0000100010001000100000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F00000000FF7F0000
      1000100010001000100010000000000000000000104210420000000000000000
      0000000000000000104200420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F0000
      FF7F0000000000000000000000000000000000000042104200420000E07F0000
      0000E07F00001042004210420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F0000
      000000000000000000000000000000000000000000000000000000000000E07F
      E07F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420042000000000000
      0000000000000000000000000042000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000420042004200420042
      0042004200420042000000000000000000000000000000420042000000000000
      0000000000000000000000000042000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000E07F00000042004200420042
      0042004200420042004200000000000000000000000000420042000000000000
      0000000000000000000000000042000000000000000000000000000000000000
      E07FE07FE07F000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FE07F0000004200420042
      0042004200420042004200420000000000000000000000420042000000000000
      0000000000000000000000000042000000000000000000000000000000000000
      104210421042000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000E07FFF7FE07F000000420042
      0042004200420042004200420042000000000000000000420042004200420042
      0042004200420042004200420042000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FE07FFF7FE07F00000000
      0000000000000000000000000000000000000000000000420042000000000000
      0000000000000000000000420042000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000E07FFF7FE07FFF7FE07FFF7F
      E07FFF7FE07F0000000000000000000000000000000000420000000000000000
      0000000000000000000000000042000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FE07FFF7FE07FFF7FE07F
      FF7FE07FFF7F0000000000000000000000000000000000420000000000000000
      000000000000000000000000004200000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F00000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000E07FFF7FE07F000000000000
      0000000000000000000000000000000000000000000000420000000000000000
      0000000000000000000000000042000000000000000000000000FF7F00000000
      000000000000FF7F00000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420000000000000000
      0000000000000000000000000042000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7F0000FF7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420000000000000000
      00000000000000000000000000000000000000000000000000000000FF7F0000
      0000000000000000FF7F0000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420000000000000000
      00000000000000000000000000000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFF8FFF0000C007C0078C030000FFFFFFFF8FFF0000F83FF807FFFF0000
      FFFFFFFFFFFF0000C007C0078FFF0000FFFFFFFF8C030000F01FF8078FFF0000
      FFFFFFFFFFFF0000C007C007FFFF0000FFFFFFFF8FFF0000F83FF8078C030000
      FFFFFFFF8FFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFE00FFFFFFFFFFFFFFFFFC007F00F81FFF83FFFFFF8C7E3FFF39FC03F
      F8C7F1FFF39FFFFFF8C7F8FFF39FC007F80FFC7FF39FFFFFF8C7FE3FF39FC03F
      F8C7FF1FF39FFFFFF8C7FF8FF39FC007F00FFF03E10FFFFFFFFFFFFFFFFFC03F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFC00
      FFFFF6CFFE008000FFFFF6B7FE000000FFFFF6B7FE000000FFF7F8B780000000
      C1F7FE8F80000001C3FBFE3F80000003C7FBFF7F80000003CBFBFE3F80010003
      DCF7FEBF80030003FF0FFC9F80070FC3FFFFFDDF807F0003FFFFFDDF80FF8007
      FFFFFDDF81FFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001C007
      C007001F8031BFEBC007000F80310005C007000780317E31C007000380017E35
      C007000180010006C007000080017FEAC007001F8FF18014C007001F8FF1C00A
      C007001F8FF1E001C0078FF18FF1E007C00FFFF98FF1F007C01FFF758FF5F003
      C03FFF8F8001F803FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ToolbarImages
    Left = 24
    Top = 68
    object FileNewCmd: TAction
      Category = 'File'
      Caption = '&Nouveau'
      Hint = 'Cr'#233'er un nouveau fichier'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = FileNew
    end
    object FileOpenCmd: TAction
      Category = 'File'
      Caption = '&Ouvrir...'
      Hint = 'Ouvrir un fichier existant'
      ImageIndex = 1
      ShortCut = 16463
      OnExecute = FileOpen
    end
    object FileSaveCmd: TAction
      Category = 'File'
      Caption = '&Enregistrer'
      Hint = 'Enregistrer le fichier en cours'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = FileSave
    end
    object FilePrintCmd: TAction
      Category = 'File'
      Caption = '&Imprimer'
      Hint = 'Imprimer le fichier en cours'
      ImageIndex = 3
      ShortCut = 16464
      OnExecute = FilePrint
    end
    object FileExitCmd: TAction
      Category = 'File'
      Caption = '&Quitter'
      Hint = 'Fermer cette application'
      ShortCut = 32856
      OnExecute = FileExit
    end
    object FileSaveAsCmd: TAction
      Category = 'File'
      Caption = 'En&registrer sous...'
      Hint = 'Enregistrer le fichier en cours sous un nouveau nom'
      OnExecute = FileSaveAs
    end
  end
  object ActionList2: TActionList
    Images = ToolbarImages
    OnUpdate = ActionList2Update
    Left = 56
    Top = 68
    object EditUndoCmd: TAction
      Category = 'Edit'
      Caption = '&D'#233'faire'
      Hint = 'D'#233'faire la derni'#232're action'
      ImageIndex = 4
      ShortCut = 16474
      OnExecute = EditUndo
    end
    object EditCutCmd: TAction
      Category = 'Edit'
      Caption = '&Couper'
      Hint = 'Supprimer l'#39#233'l'#233'ment s'#233'lectionn'#233
      ImageIndex = 5
      ShortCut = 16472
      OnExecute = EditCut
    end
    object EditCopyCmd: TAction
      Category = 'Edit'
      Caption = 'Copi&er'
      Hint = 'Copier l'#39#233'l'#233'ment s'#233'lectionn'#233' dans le Presse-papiers'
      ImageIndex = 6
      ShortCut = 16451
      OnExecute = EditCopy
    end
    object EditPasteCmd: TAction
      Category = 'Edit'
      Caption = 'C&oller'
      Hint = 'Coller le contenu du Presse-papiers'
      ImageIndex = 7
      ShortCut = 16470
      OnExecute = EditPaste
    end
    object EditFontCmd: TAction
      Category = 'Edit'
      Caption = '&Fonte...'
      OnExecute = SelectFont
    end
  end
end
