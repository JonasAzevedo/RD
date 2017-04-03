object OraTypeMain: TOraTypeMain
  Left = 193
  Top = 108
  Width = 711
  Height = 428
  Caption = 'Oracle Types Explorer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 169
    Top = 34
    Width = 3
    Height = 244
    Cursor = crHSplit
  end
  object Splitter2: TSplitter
    Left = 357
    Top = 34
    Width = 3
    Height = 244
    Cursor = crHSplit
  end
  object HorSplitter: TSplitter
    Left = 0
    Top = 278
    Width = 703
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Visible = False
  end
  object SB: TStatusBar
    Left = 0
    Top = 382
    Width = 703
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 703
    Height = 34
    ButtonWidth = 24
    Images = Images
    TabOrder = 2
    object Label1: TLabel
      Left = 0
      Top = 2
      Width = 49
      Height = 22
      Caption = '&Database:'
      FocusControl = EdDB
      Layout = tlCenter
    end
    object EdDB: TEdit
      Left = 49
      Top = 2
      Width = 128
      Height = 22
      TabOrder = 0
      Text = '<TNS Name Entry>'
    end
    object ToolButton1: TToolButton
      Left = 177
      Top = 2
      Width = 16
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object Label2: TLabel
      Left = 193
      Top = 2
      Width = 53
      Height = 22
      Caption = '&UserName:'
      FocusControl = EdUserName
      Layout = tlCenter
    end
    object EdUserName: TEdit
      Left = 246
      Top = 2
      Width = 75
      Height = 22
      TabOrder = 1
      Text = '<UserName>'
    end
    object ToolButton2: TToolButton
      Left = 321
      Top = 2
      Width = 15
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object Label3: TLabel
      Left = 336
      Top = 2
      Width = 49
      Height = 22
      Caption = '&Password:'
      FocusControl = EdPassword
      Layout = tlCenter
    end
    object EdPassword: TEdit
      Left = 385
      Top = 2
      Width = 64
      Height = 22
      PasswordChar = '*'
      TabOrder = 2
    end
    object ToolButton4: TToolButton
      Left = 449
      Top = 2
      Width = 16
      Caption = 'ToolButton4'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object BtnOpen: TToolButton
      Left = 465
      Top = 2
      Hint = 'Open/Close Connection'
      Caption = 'BtnOpen'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnOpenClick
    end
    object ToolButton3: TToolButton
      Left = 489
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
  end
  object TV: TTreeView
    Left = 0
    Top = 34
    Width = 169
    Height = 244
    Align = alLeft
    HideSelection = False
    Indent = 19
    Items.Data = {
      020000001E0000000000000000000000FFFFFFFFFFFFFFFF0000000005000000
      0554797065732B0000000000000000000000FFFFFFFFFFFFFFFF000000000000
      0000124162737472616374204461746120547970652300000000000000000000
      00FFFFFFFFFFFFFFFF00000000000000000A4172726179205479706526000000
      0000000000000000FFFFFFFFFFFFFFFF00000000000000000D4F626A65637420
      5461626C65732A0000000000000000000000FFFFFFFFFFFFFFFF000000000000
      0000114E6573746564205461626C6520547970652C0000000000000000000000
      FFFFFFFFFFFFFFFF0000000000000000134E6573746564204368696C64205461
      626C65731F0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      065461626C6573}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = TVClick
  end
  object ObjectListBox: TListBox
    Left = 172
    Top = 34
    Width = 185
    Height = 244
    Align = alLeft
    ItemHeight = 13
    Sorted = True
    TabOrder = 3
    OnClick = ObjectListBoxClick
  end
  object ParentGrid: TDBGrid
    Left = 0
    Top = 281
    Width = 703
    Height = 101
    Align = alBottom
    DataSource = DataSource1
    PopupMenu = GridPopup
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object PropListView: TListView
    Left = 360
    Top = 34
    Width = 343
    Height = 244
    Align = alClient
    Columns = <>
    HotTrackStyles = []
    TabOrder = 5
    ViewStyle = vsReport
  end
  object ORQuery: TQuery
    DatabaseName = 'x'
    Left = 592
    Top = 2
    ParamData = <>
  end
  object DB: TDatabase
    DatabaseName = 'x'
    DriverName = 'ORACLE'
    LoginPrompt = False
    Params.Strings = (
      'NET PROTOCOL=TNS'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ENABLE INTEGERS=FALSE'
      'LIST SYNONYMS=NONE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'OBJECT MODE=TRUE')
    SessionName = 'Default'
    Left = 560
    Top = 2
  end
  object Images: TImageList
    Left = 528
    Bitmap = {
      4204000002000000424D42040000000000004200000028000000200000001000
      000001001000030000000004000000000000000000000000000000000000007C
      0000E00300001F00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000F75E000000000000
      000000000000000000000000000000000000000000000000F75E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E07F00000000E07F000000000000E07F0000
      0000E07F0000000000000000000000000000000000000000FF7F000000000000
      00000000000000000000000000000000E07FE07FE07F0000E07F0000E07FE07F
      E07F00000000000000000000000000000000000000000000FF7F000000000000
      00000000000000000000000000000000E07FE07FE07F0000FF7F0000E07FE07F
      E07F0000000000000000000000000000000000000000FF7FEF3DFF7F00000000
      0000000000000000000000000000E07FE07FE07F0000FF7FEF3DFF7F0000E07F
      E07FE07F00000000000000000000000000000000FF7FFF7FEF3DFF7FFF7F0000
      0000000000000000000000000000E07FE07F0000FF7FE07FEF3DE07FFF7F0000
      E07FE07F00000000000000000000000000000000FF7FFF7FEF3DFF7FFF7F0000
      00000000000000000000E07FE07FE07FE07F0000E07FFF7FEF3DFF7FE07F0000
      E07FE07FE07FE07F000000000000000000000000FF7FFF7FFF7FFF7FFF7F0000
      0000000000000000000000000000E07FE07F0000FF7FE07FFF7FE07FFF7F0000
      E07FE07F000000000000000000000000000000000000FF7FFF7FFF7F00000000
      0000000000000000000000000000E07FE07FE07F0000FF7FE07FFF7F0000E07F
      E07FE07F00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E07FE07FE07F000000000000E07FE07F
      E07F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E07FE07FE07FE07FE07FE07FE07FE07F
      E07F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E07F00000000E07FE07FE07FE07FE07F0000
      0000E07F00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000E07F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000E07F000000000000
      00000000000000000000424D7E000000000000003E0000002800000020000000
      1000000001000100000000004000000000000000000000000200000002000000
      00000000FFFFFF00FEFFFEFFFC7FFC7FFC7FFC7FFC7FD837FC7FE00FFC7FE00F
      F83FC007F01FC007F01F0001F01FC007F83FC007FC7FE00FFFFFE00FFFFFD837
      FFFFFEFFFFFFFEFF}
  end
  object DataSource1: TDataSource
    DataSet = ORTable
    Left = 656
    Top = 2
  end
  object ORTable: TTable
    ObjectView = True
    DatabaseName = 'x'
    StoreDefs = True
    Left = 624
    Top = 2
  end
  object GridPopup: TPopupMenu
    Left = 512
    Top = 312
    object OVMenuItem: TMenuItem
      Caption = '&ObjectView'
      Checked = True
      ShortCut = 16463
      OnClick = OVMenuItemClick
    end
  end
end
