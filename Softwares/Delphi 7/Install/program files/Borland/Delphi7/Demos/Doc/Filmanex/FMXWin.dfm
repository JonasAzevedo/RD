object FMForm: TFMForm
  Left = 555
  Top = 426
  Width = 435
  Height = 300
  Caption = 'File manager example'
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  Position = poDefault
  OnCreate = FormCreate
  ParentFont = True
  PixelsPerInch = 120
  TextHeight = 16
  object StatusBar: TPanel
    Left = 0
    Top = 204
    Width = 427
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object DirectoryPanel: TPanel
      Left = 0
      Top = 0
      Width = 228
      Height = 50
      Align = alLeft
      BevelInner = bvLowered
      BevelWidth = 2
      TabOrder = 0
    end
    object FilePanel: TPanel
      Left = 228
      Top = 0
      Width = 199
      Height = 50
      Align = alClient
      BevelInner = bvLowered
      BevelWidth = 2
      TabOrder = 1
      object Floppy: TImage
        Left = 30
        Top = 20
        Width = 16
        Height = 9
        AutoSize = True
        Picture.Data = {
          07544269746D6170BE000000424DBE0000000000000076000000280000001000
          0000090000000100040000000000480000000000000000000000100000001000
          0000000000000000800000800000008080008000000080008000808000008080
          8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00000000000000000007777777777777700F888888888888700F8880000008
          88700F000000000000700F888000000888700F888888888808700FFFFFFFFFFF
          FF700000000000000000}
        Visible = False
      end
      object Fixed: TImage
        Left = 59
        Top = 20
        Width = 16
        Height = 9
        AutoSize = True
        Picture.Data = {
          07544269746D6170BE000000424DBE0000000000000076000000280000001000
          0000090000000100040000000000480000000000000000000000100000001000
          0000000000000000800000800000008080008000000080008000808000008080
          8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00000000000000000007777777777777700F800888888888700F0000000000
          08700F888888888888700F000000000008700F888888888888700FFFFFFFFFFF
          FF700000000000000000}
        Visible = False
      end
      object Network: TImage
        Left = 89
        Top = 20
        Width = 16
        Height = 9
        AutoSize = True
        Picture.Data = {
          07544269746D6170BE000000424DBE0000000000000076000000280000001000
          0000090000000100040000000000480000000000000000000000100000001000
          0000000000000000800000800000008080008000000080008000808000008080
          8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00000000000000000007777777777777700F888000888888700F8888088888
          88700F888707888888700F000080000008700F888888888888700FFFFFFFFFFF
          FF700000000000000000}
        Visible = False
      end
      object CDRom: TImage
        Left = 121
        Top = 20
        Width = 16
        Height = 9
        AutoSize = True
        Picture.Data = {
          07544269746D6170BE000000424DBE0000000000000076000000280000001000
          0000090000000100040000000000480000000000000000000000100000001000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00000000000000000008888888888888800F777777777777800F7770000770
          07800F770F7F807777800F7088FF770777800F000000000007800FFFFFFFFFFF
          FF800000000000000000}
        Visible = False
      end
      object RamDisk: TImage
        Left = 145
        Top = 20
        Width = 16
        Height = 9
        AutoSize = True
        Picture.Data = {
          07544269746D6170BE000000424DBE0000000000000076000000280000001000
          0000090000000100040000000000480000000000000000000000100000001000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00000000000000000008888888888888800F770707070777800F7000000000
          77800F700000000077800F700000000077800F770707070777800FFFFFFFFFFF
          FF800000000000000000}
        Visible = False
      end
    end
  end
  object DriveTabSet: TTabSet
    Left = 0
    Top = 178
    Width = 427
    Height = 26
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Style = tsOwnerDraw
    OnChange = DriveTabSetChange
    OnDrawTab = DriveTabSetDrawTab
    OnMeasureTab = DriveTabSetMeasureTab
  end
  object DirectoryOutline: TDirectoryOutline
    Left = 0
    Top = 0
    Width = 198
    Height = 178
    Align = alLeft
    ItemHeight = 16
    OnChange = DirectoryOutlineChange
    OnDragDrop = DirectoryOutlineDragDrop
    OnDragOver = DirectoryOutlineDragOver
    Options = [ooDrawFocusRect]
    PictureLeaf.Data = {
      CA010000424DCA0100000000000042000000280000000E0000000E0000000100
      1000030000008801000000000000000000000000000000000000007C0000E003
      00001F0000001040104010401040104010401040104010401040104010401040
      1040104010401040104010401040104010401040104010401040104010401040
      1040104010401040104010401040104010401040104010401040104000000000
      000000000000000000000000000000001040104010400000E07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F00001040104010400000FF7FE07FFF7FE07FFF7FE07F
      FF7FE07FFF7F00001040104010400000E07FFF7FE07FFF7FE07FFF7FE07FFF7F
      E07F00001040104010400000FF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7F0000
      1040104010400000E07FFF7FE07FFF7FE07FFF7FE07FFF7FE07F000010401040
      10400000FF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7F00001040104010400000
      000000000000000000000000000000000000104010401040104010400000FF7F
      E07FFF7FE07F0000104010401040104010401040104010401042000000000000
      0000104210401040104010401040104010401040104010401040104010401040
      1040104010401040104010401040}
    TabOrder = 2
    Data = {10}
  end
  object FileList: TFileListBox
    Left = 198
    Top = 0
    Width = 229
    Height = 178
    Align = alClient
    FileType = [ftReadOnly, ftDirectory, ftArchive, ftNormal]
    ItemHeight = 16
    ShowGlyphs = True
    TabOrder = 3
    OnChange = FileListChange
    OnEndDrag = FileListEndDrag
    OnMouseDown = FileListMouseDown
  end
  object MainMenu1: TMainMenu
    Left = 337
    Top = 251
    object File1: TMenuItem
      Caption = '&File'
      OnClick = File1Click
      object Open1: TMenuItem
        Caption = '&Open'
        ShortCut = 13
        OnClick = Open1Click
      end
      object Move1: TMenuItem
        Caption = '&Move...'
        ShortCut = 118
        OnClick = FileChange
      end
      object Copy1: TMenuItem
        Caption = '&Copy...'
        ShortCut = 119
        OnClick = FileChange
      end
      object Delete1: TMenuItem
        Caption = '&Delete...'
        ShortCut = 46
        OnClick = Delete1Click
      end
      object Rename1: TMenuItem
        Caption = '&Rename...'
        OnClick = FileChange
      end
      object Properties1: TMenuItem
        Caption = '&Properties...'
        ShortCut = 32781
        OnClick = Properties1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit1Click
      end
    end
  end
end
