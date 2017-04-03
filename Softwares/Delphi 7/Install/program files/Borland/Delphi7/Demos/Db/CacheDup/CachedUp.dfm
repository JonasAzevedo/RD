object CacheDemoForm: TCacheDemoForm
  Left = 239
  Top = 170
  AutoScroll = False
  Caption = 'Cached Updates Example'
  ClientHeight = 327
  ClientWidth = 492
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 9
    Top = 36
    Width = 332
    Height = 281
    Columns = <
      item
        FieldName = 'PROJ_ID'
        Title.Alignment = taCenter
        Title.Caption = 'ProjID'
        Width = 50
      end
      item
        FieldName = 'PROJ_NAME'
        Title.Alignment = taCenter
        Title.Caption = 'Project Name'
        Width = 107
      end
      item
        FieldName = 'UpdateStatus'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Update Status'
        Width = 141
      end>
    DataSource = CacheData.CacheDS
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 59
    Top = 4
    Width = 240
    Height = 25
    DataSource = CacheData.CacheDS
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 351
    Top = 205
    Width = 129
    Height = 109
    Caption = 'Show Records'
    TabOrder = 2
    object UnmodifiedCB: TCheckBox
      Left = 12
      Top = 16
      Width = 81
      Height = 17
      Caption = 'Unmodified'
      State = cbChecked
      TabOrder = 0
      OnClick = UpdateRecordsToShow
    end
    object ModifiedCB: TCheckBox
      Left = 12
      Top = 38
      Width = 81
      Height = 17
      Caption = 'Modified'
      State = cbChecked
      TabOrder = 1
      OnClick = UpdateRecordsToShow
    end
    object InsertedCB: TCheckBox
      Left = 12
      Top = 60
      Width = 81
      Height = 17
      Caption = 'Inserted'
      State = cbChecked
      TabOrder = 2
      OnClick = UpdateRecordsToShow
    end
    object DeletedCB: TCheckBox
      Left = 12
      Top = 82
      Width = 81
      Height = 17
      Caption = 'Deleted'
      TabOrder = 3
      OnClick = UpdateRecordsToShow
    end
  end
  object Panel1: TPanel
    Left = 351
    Top = 36
    Width = 129
    Height = 53
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object CachedUpdates: TCheckBox
      Left = 11
      Top = 7
      Width = 114
      Height = 17
      Caption = '&Cached Updates'
      State = cbChecked
      TabOrder = 0
      OnClick = ToggleUpdateMode
    end
    object UseUpdateSQL: TCheckBox
      Left = 11
      Top = 28
      Width = 110
      Height = 17
      Caption = 'Use Update SQL'
      TabOrder = 1
      OnClick = UseUpdateSQLClick
    end
  end
  object Panel2: TPanel
    Left = 351
    Top = 96
    Width = 129
    Height = 106
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object ApplyUpdatesBtn: TButton
      Left = 9
      Top = 9
      Width = 110
      Height = 25
      Caption = '&Apply Updates'
      TabOrder = 0
      OnClick = ApplyUpdatesBtnClick
    end
    object CancelUpdatesBtn: TButton
      Left = 9
      Top = 41
      Width = 110
      Height = 25
      Caption = '&Cancel Updates'
      TabOrder = 1
      OnClick = CancelUpdatesBtnClick
    end
    object RevertRecordBtn: TButton
      Left = 9
      Top = 72
      Width = 110
      Height = 25
      Caption = '&Revert Record'
      TabOrder = 2
      OnClick = RevertRecordBtnClick
    end
  end
  object ReExecuteButton: TButton
    Left = 352
    Top = 4
    Width = 129
    Height = 25
    Caption = 'Re-execute Query'
    TabOrder = 5
    OnClick = ReExecuteButtonClick
  end
  object MainMenu1: TMainMenu
    Left = 268
    Top = 263
    object miAbout: TMenuItem
      Caption = 'A&bout'
      OnClick = miAboutClick
    end
  end
end
