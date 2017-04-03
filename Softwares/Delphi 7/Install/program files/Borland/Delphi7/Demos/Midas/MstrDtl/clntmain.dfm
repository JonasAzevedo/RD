object ClientForm: TClientForm
  Left = 207
  Top = 69
  BorderStyle = bsDialog
  Caption = 'Current Projects'
  ClientHeight = 272
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 159
    Top = 56
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Description:'
  end
  object Label5: TLabel
    Left = 161
    Top = 148
    Width = 159
    Height = 13
    Caption = 'Members (Team leader is bolded):'
  end
  object Label6: TLabel
    Left = 175
    Top = 36
    Width = 40
    Height = 13
    Caption = 'Product:'
  end
  object MemberGrid: TDBGrid
    Left = 160
    Top = 168
    Width = 234
    Height = 101
    DataSource = DM.EmpProjSource
    Options = [dgEditing, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = MemberGridDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'EmployeeName'
        Width = 210
        Visible = True
      end>
  end
  object DescMemo: TDBMemo
    Left = 160
    Top = 72
    Width = 297
    Height = 73
    DataField = 'PROJ_DESC'
    DataSource = DM.ProjectSource
    TabOrder = 1
  end
  object ProjectGrid: TDBGrid
    Left = 7
    Top = 32
    Width = 143
    Height = 237
    DataSource = DM.ProjectSource
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PROJ_NAME'
        Title.Caption = 'Name'
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 400
    Top = 168
    Width = 57
    Height = 25
    Hint = 'Add a new member'
    Caption = 'Add'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = AddBtnClick
  end
  object DeleteBtn: TButton
    Left = 400
    Top = 204
    Width = 57
    Height = 25
    Hint = 'Delete currently selected member'
    Caption = 'Delete'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = DeleteBtnClick
  end
  object LeaderBtn: TButton
    Left = 400
    Top = 240
    Width = 57
    Height = 25
    Hint = 'Set currently selected member as the team leader.'
    Caption = 'Leader'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = LeaderBtnClick
  end
  object ProductCombo: TDBComboBox
    Left = 224
    Top = 32
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'PRODUCT'
    DataSource = DM.ProjectSource
    ItemHeight = 13
    Items.Strings = (
      'software'
      'hardware'
      'other'
      'N/A')
    TabOrder = 6
    TabStop = True
  end
  object Toolbar: TPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 7
    object ApplyUpdatesBtn: TSpeedButton
      Left = 134
      Top = 2
      Width = 83
      Height = 25
      Caption = 'Apply Updates'
      OnClick = ApplyUpdatesBtnClick
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 2
      Width = 120
      Height = 25
      DataSource = DM.ProjectSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert]
      TabOrder = 0
    end
  end
end