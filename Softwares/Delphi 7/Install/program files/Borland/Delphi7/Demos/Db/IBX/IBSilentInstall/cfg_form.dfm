object Form1: TForm1
  Left = 432
  Top = 151
  AlphaBlend = True
  BorderStyle = bsSingle
  Caption = 'Interbase 6 Pre-Install '
  ClientHeight = 290
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 8
    Width = 17
    Height = 281
    Brush.Color = clBackground
  end
  object Label6: TLabel
    Left = 24
    Top = 144
    Width = 226
    Height = 13
    Caption = 'Select multiple items by holding  down ctl or shift'
  end
  object lbStep: TLabel
    Left = 19
    Top = 8
    Width = 78
    Height = 20
    Caption = 'Step 1...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbInstall: TLabel
    Left = 24
    Top = 96
    Width = 109
    Height = 16
    Caption = 'Install Location:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 412
    Height = 1
    Anchors = [akLeft, akTop, akRight]
  end
  object Label1: TLabel
    Left = 24
    Top = 121
    Width = 112
    Height = 16
    Caption = 'Config Location:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ListOptions: TListBox
    Left = 24
    Top = 160
    Width = 163
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      'IB_CMD_TOOLS_DB_QUERY'
      'IB_CONNECTIVITY_SERVER'
      'etc...')
    MultiSelect = True
    TabOrder = 0
  end
  object btNext: TButton
    Left = 269
    Top = 264
    Width = 65
    Height = 25
    Caption = '&Next >>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btNextClick
  end
  object btPrev: TButton
    Left = 204
    Top = 264
    Width = 65
    Height = 25
    Caption = '<< &Prev'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btPrevClick
  end
  object btAddStuff: TButton
    Left = 192
    Top = 191
    Width = 25
    Height = 18
    Caption = '>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btAddStuffClick
  end
  object ListCommit: TListBox
    Left = 246
    Top = 160
    Width = 163
    Height = 97
    ItemHeight = 13
    MultiSelect = True
    TabOrder = 4
  end
  object edInstallPath: TEdit
    Left = 136
    Top = 90
    Width = 273
    Height = 21
    TabOrder = 5
    Text = 'C:\Program Files\Interbase'
  end
  object memInstruct: TMemo
    Left = 32
    Top = 32
    Width = 377
    Height = 50
    BorderStyle = bsNone
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Text for brief descripion of what to do at current step...')
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object btDone: TButton
    Left = 334
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 7
    OnClick = btDoneClick
  end
  object edCFG: TEdit
    Left = 136
    Top = 115
    Width = 273
    Height = 21
    TabOrder = 8
    Text = '<default>'
  end
  object btAddAll: TButton
    Left = 203
    Top = 162
    Width = 35
    Height = 20
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btAddAllClick
  end
  object btRmStuff: TButton
    Left = 216
    Top = 216
    Width = 23
    Height = 17
    Caption = '<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = btRmStuffClick
  end
  object btRmAll: TButton
    Left = 201
    Top = 240
    Width = 32
    Height = 17
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = btRmAllClick
  end
  object MainMenu1: TMainMenu
    Left = 368
    Top = 8
    object Typical1: TMenuItem
      Caption = 'Typical'
      object ClientwithTools1: TMenuItem
        Caption = 'Server'
        OnClick = ClientwithTools1Click
      end
      object client1: TMenuItem
        Caption = 'Client w/ Tools'
        OnClick = client1Click
      end
      object ClientwoTools1: TMenuItem
        Caption = 'Client w/o Tools'
        OnClick = ClientwoTools1Click
      end
    end
  end
end
