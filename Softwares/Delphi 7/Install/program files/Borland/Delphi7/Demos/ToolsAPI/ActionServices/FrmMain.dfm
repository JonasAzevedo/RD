object Form2: TForm2
  Left = 252
  Top = 143
  Width = 415
  Height = 333
  BorderStyle = bsSizeToolWin
  Caption = 'Action Services Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 384
    Height = 306
    Align = alClient
    ItemHeight = 16
    TabOrder = 0
    OnDblClick = ListBox1DblClick
  end
  object ToolBar1: TToolBar
    Left = 384
    Top = 0
    Width = 23
    Height = 306
    Align = alRight
    AutoSize = True
    Caption = 'ToolBar1'
    Flat = True
    Images = ImageList1
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = 'Open File'
      Caption = 'ToolButton1'
      ImageIndex = 0
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 0
      Top = 22
      Hint = 'Close File'
      Caption = 'ToolButton2'
      ImageIndex = 1
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 0
      Top = 44
      Hint = 'Save File'
      Caption = 'ToolButton3'
      ImageIndex = 2
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 0
      Top = 66
      Hint = 'Reload File'
      Caption = 'ToolButton4'
      ImageIndex = 3
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 0
      Top = 88
      Hint = 'Open Project'
      Caption = 'ToolButton5'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton5Click
    end
  end
  object ImageList1: TImageList
    Left = 272
    Top = 8
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001000000000000018
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
      000000000000F75E000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E07FE07FE07F
      E07FE07F00000000F75E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E07F00000000
      0000E07F000000420000F75E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E07F00000042004200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07FE07FE07FE07FE07F
      0000000000000042004200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07F000000000000E07F
      0000F75E00000042004200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07FE07FE07FE07FE07F
      0000F75E00000042004200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07FE07FE07FE07FE07F
      0000000000000042004200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EF3D00000042004200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      EF3DEF3D00000042004200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000004200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000EF3DEF3DEF3DEF3D
      EF3DEF3DEF3D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000042E07F
      0042E07F0042E07F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      E07F0042E07F0042E07F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EF3D
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      E07FEF3DFF7FFF7FFF7FFF7FFF7FE07F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3DEF3D
      EF3DEF3DEF3DEF3DEF3D00000000000000000000000000000000000000000000
      E07FEF3DFF7FFF7FFF7FFF7FFF7FE07F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3DF75E
      F75EF75EF75EF75EF75E00000000000000000000000000000000000000000000
      E07FEF3DFF7FFF7FFF7FFF7FFF7FE07F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3DF75E
      00000000F75EF75EF75E00000000000000000000000000000000000000000000
      E07FEF3DFF7FFF7FFF7FFF7FFF7FE07F00000000000000000000000000000000
      000000000000000000000000000000000000000000000000E07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F000000000000000000000000000000000000EF3DF75E
      00000000F75EF75EF75E00000000000000000000000000000000000000000000
      000000000000EF3DEF3D00000000EF3D0000000000000000E07FF75EE07FF75E
      E07FF75EE07FF75EE07F0000000000000000000000000000FF7FE07FFF7FE07F
      FF7FE07FFF7FE07FFF7F000000000000000000000000000000000000EF3DF75E
      F75EF75EF75EF75EF75E00000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F000000000000EF3DEF3DE07F000000000000FF7F0000E07FF75EE07F
      F75EE07FF75EE07FF75EE07F000000000000000000000000E07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F000000000000EF3DE07FE07F000000000000E07FFF7F0000E07FF75E
      E07FF75EE07FF75EE07FF75EE07F00000000000000000000FF7FE07FFF7FE07F
      FF7FE07FFF7FE07FFF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7F00000000FF7F00000000
      0000FF7F000000000000007C00000000EF3D00000000FF7FE07FFF7F00000000
      000000000000000000000000000000000000000000000000E07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F0000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000000007C007C007C0000000000000000E07FFF7FE07FFF7FE07F
      FF7FE07FFF7FE07F00000000000000000000000000000000FF7FE07FFF7FE07F
      FF7FE07FFF7FE07FFF7F0000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000FF7F0000000000000000FF7F
      0000FF7F0000007C007C007C007C007C000000000000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07FFF7F000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F007C007C007C007C007C007C007C00000000E07FFF7FE07FFF7FE07F
      FF7F000000000000000000000000000000000000000000000000FF7FE07FFF7F
      E07F00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000FF7F00000000FF7F00000000
      0000000000000000007C007C007C00000000000000000000E07FFF7FE07FFF7F
      000000000000000000000000000000000000000000000000EF3D000000000000
      0000EF3D0000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7FFF7F0000FF7F
      FF7F000000000000007C007C007C0000000000000000EF3D0000000000000000
      EF3D000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D000000000000FF7F0000F75EFF7F0000FF7F
      000000000000EF3D007C007C007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7FFF7F00000000
      0000007C007C007C007C007C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C007C007C007C
      007C007C007C007C007C00000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C01F000000000000C00F000000000000
      E007000000000000E00300000000000080030000000000008007000000000000
      8007000000000000800700000000000080070000000000008007000000000000
      E007000000000000C007000000000000C007000000000000E007000000000000
      F803000000000000FC03000000000000FFFFFFFFFFFFFC00FFFFFFFF8003FC00
      FFFFFFFF0001FC00FFFFE0070001FC00C00FC007000100008007C00700010000
      8003C007000100008001C007000100008001C00700010023800FC00700010001
      800FC00F00010000801FE07F00010023C0FFE07F00010063C0FFFFFF000100C3
      FFFFFFFF00010107FFFFFFFF800303FF00000000000000000000000000000000
      000000000000}
  end
end
