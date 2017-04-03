object MainForm: TMainForm
  Left = 191
  Top = 106
  Width = 696
  Height = 358
  Caption = 'MainForm'
  Color = clBtnFace
  ParentFont = True
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object lblOnMessage: TLabel
    Left = 9
    Top = 0
    Width = 77
    Height = 16
    Caption = 'OnMessage:'
  end
  object lblOther: TLabel
    Left = 345
    Top = 48
    Width = 149
    Height = 16
    Caption = 'Other Application Events:'
  end
  object lblOnIdle: TLabel
    Left = 121
    Top = 0
    Width = 42
    Height = 16
    Caption = 'OnIdle:'
  end
  object lblOnActionUpdate: TLabel
    Left = 233
    Top = 0
    Width = 102
    Height = 16
    Caption = 'OnActionUpdate:'
  end
  object HintButton: TButton
    Left = 345
    Top = 16
    Width = 336
    Height = 25
    Hint = 'This is a hint'
    Caption = 'Hint button test (move mouse here)'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object lbOnMessage: TListBox
    Left = 9
    Top = 16
    Width = 104
    Height = 289
    ItemHeight = 16
    TabOrder = 1
  end
  object lbOther: TListBox
    Left = 345
    Top = 64
    Width = 336
    Height = 241
    ItemHeight = 16
    TabOrder = 2
  end
  object lbIdle: TListBox
    Left = 121
    Top = 16
    Width = 104
    Height = 289
    ItemHeight = 16
    TabOrder = 3
  end
  object lbActionUpdate: TListBox
    Left = 231
    Top = 16
    Width = 105
    Height = 289
    ItemHeight = 16
    TabOrder = 4
  end
  object ApplicationEvents: TApplicationEvents
    OnActionExecute = ApplicationEventsActionExecute
    OnActionUpdate = ApplicationEventsActionUpdate
    OnActivate = ApplicationEventsActivate
    OnDeactivate = ApplicationEventsDeactivate
    OnException = ApplicationEventsException
    OnIdle = ApplicationEventsIdle
    OnHelp = ApplicationEventsHelp
    OnHint = ApplicationEventsHint
    OnMessage = ApplicationEventsMessage
    OnMinimize = ApplicationEventsMinimize
    OnRestore = ApplicationEventsRestore
    OnShowHint = ApplicationEventsShowHint
    OnShortCut = ApplicationEventsShortCut
    Left = 648
    Top = 8
  end
  object ActionList: TActionList
    Left = 616
    Top = 8
    object Action: TAction
      Caption = 'Action1'
      OnExecute = ActionExecute
    end
  end
  object MainMenu: TMainMenu
    Left = 632
    Top = 40
    object MenuAction: TMenuItem
      Action = Action
      Caption = '&Action'
    end
    object MenuException: TMenuItem
      Caption = '&Raise Exception'
      OnClick = MenuExceptionClick
    end
  end
end
