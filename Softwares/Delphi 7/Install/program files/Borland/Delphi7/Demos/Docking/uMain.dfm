object MainForm: TMainForm
  Left = 454
  Top = 257
  Width = 683
  Height = 498
  Caption = 'Docking Demo'
  Color = clWindow
  ParentFont = True
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object VSplitter: TSplitter
    Left = 0
    Top = 58
    Width = 5
    Height = 387
    Cursor = crHSplit
    Visible = False
  end
  object HSplitter: TSplitter
    Left = 0
    Top = 445
    Width = 675
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    Visible = False
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 675
    Height = 58
    AutoSize = True
    BandMaximize = bmDblClick
    Bands = <
      item
        Break = False
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 26
        Width = 671
      end
      item
        Control = ToolBar2
        ImageIndex = -1
        MinHeight = 26
        Width = 671
      end>
    Color = clMenu
    DockSite = True
    ParentColor = False
    OnDockOver = CoolBar1DockOver
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 280
      Height = 26
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 75
      Caption = 'ToolBar1'
      Constraints.MaxWidth = 280
      DragKind = dkDock
      DragMode = dmAutomatic
      Flat = True
      ShowCaptions = True
      TabOrder = 0
      Transparent = True
      Wrapable = False
      object ToolButton13: TToolButton
        Left = 0
        Top = 0
        Action = ExitAction
      end
      object ToolButton16: TToolButton
        Left = 75
        Top = 0
        Width = 14
        Caption = 'ToolButton16'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object btnToolBar1: TToolButton
        Left = 89
        Top = 0
        Action = ViewToolBar1
        Style = tbsCheck
      end
      object btnToolBar2: TToolButton
        Left = 164
        Top = 0
        Action = ViewToolBar2
        Style = tbsCheck
      end
    end
    object ToolBar2: TToolBar
      Left = 9
      Top = 28
      Width = 390
      Height = 26
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 55
      Caption = 'ToolBar2'
      Constraints.MaxWidth = 390
      DragKind = dkDock
      DragMode = dmAutomatic
      Flat = True
      ShowCaptions = True
      TabOrder = 1
      Transparent = True
      Wrapable = False
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = ViewWhiteWindow
      end
      object ToolButton2: TToolButton
        Left = 55
        Top = 0
        Action = ViewBlueWindow
      end
      object ToolButton3: TToolButton
        Left = 110
        Top = 0
        Action = ViewGreenWindow
      end
      object ToolButton5: TToolButton
        Left = 165
        Top = 0
        Action = ViewLimeWindow
      end
      object ToolButton6: TToolButton
        Left = 220
        Top = 0
        Action = ViewPurpleWindow
      end
      object ToolButton7: TToolButton
        Left = 275
        Top = 0
        Action = ViewRedWindow
      end
      object ToolButton4: TToolButton
        Left = 330
        Top = 0
        Action = ViewTealWindow
      end
    end
  end
  object LeftDockPanel: TPanel
    Left = 5
    Top = 58
    Width = 0
    Height = 387
    Align = alLeft
    DockSite = True
    TabOrder = 1
    OnDockDrop = LeftDockPanelDockDrop
    OnDockOver = LeftDockPanelDockOver
    OnGetSiteInfo = LeftDockPanelGetSiteInfo
    OnUnDock = LeftDockPanelUnDock
  end
  object BottomDockPanel: TPanel
    Left = 0
    Top = 445
    Width = 675
    Height = 0
    Align = alBottom
    DockSite = True
    TabOrder = 2
    OnDockDrop = LeftDockPanelDockDrop
    OnDockOver = BottomDockPanelDockOver
    OnGetSiteInfo = LeftDockPanelGetSiteInfo
    OnUnDock = LeftDockPanelUnDock
  end
  object ActionList1: TActionList
    Left = 136
    Top = 80
    object ViewToolBar1: TAction
      Category = 'ViewToolBars'
      Caption = 'ToolBar &1'
      Checked = True
      ImageIndex = 1
      OnExecute = ViewToolBar1Execute
    end
    object ViewToolBar2: TAction
      Category = 'ViewToolBars'
      Caption = 'ToolBar &2'
      Checked = True
      ImageIndex = 2
      OnExecute = ViewToolBar2Execute
    end
    object ViewWhiteWindow: TAction
      Category = 'ViewWindows'
      Caption = '&White'
      Hint = 'View white window'
      OnExecute = ViewWhiteWindowExecute
    end
    object ExitAction: TAction
      Caption = 'E&xit'
      OnExecute = ExitActionExecute
    end
    object ViewBlueWindow: TAction
      Tag = 1
      Category = 'ViewWindows'
      Caption = '&Blue'
      OnExecute = ViewWhiteWindowExecute
    end
    object ViewGreenWindow: TAction
      Tag = 2
      Category = 'ViewWindows'
      Caption = '&Green'
      OnExecute = ViewWhiteWindowExecute
    end
    object ViewRedWindow: TAction
      Tag = 3
      Category = 'ViewWindows'
      Caption = '&Red'
      OnExecute = ViewWhiteWindowExecute
    end
    object ViewTealWindow: TAction
      Tag = 4
      Category = 'ViewWindows'
      Caption = '&Teal'
      OnExecute = ViewWhiteWindowExecute
    end
    object ViewPurpleWindow: TAction
      Tag = 5
      Category = 'ViewWindows'
      Caption = '&Purple'
      OnExecute = ViewWhiteWindowExecute
    end
    object ViewLimeWindow: TAction
      Tag = 6
      Category = 'ViewWindows'
      Caption = '&Lime'
      OnExecute = ViewWhiteWindowExecute
    end
  end
  object MainMenu1: TMainMenu
    Left = 176
    Top = 80
    object File2: TMenuItem
      Caption = '&File'
      object Exit2: TMenuItem
        Action = ExitAction
      end
    end
    object View2: TMenuItem
      Caption = '&View'
      object ToolBar11: TMenuItem
        Action = ViewToolBar1
      end
      object ToolBar21: TMenuItem
        Action = ViewToolBar2
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object White1: TMenuItem
        Action = ViewWhiteWindow
      end
      object Blue1: TMenuItem
        Action = ViewBlueWindow
      end
      object Green1: TMenuItem
        Action = ViewGreenWindow
      end
      object Lime1: TMenuItem
        Action = ViewLimeWindow
      end
      object Purple1: TMenuItem
        Action = ViewPurpleWindow
      end
      object Red1: TMenuItem
        Action = ViewRedWindow
      end
      object Teal1: TMenuItem
        Action = ViewTealWindow
      end
    end
  end
end
