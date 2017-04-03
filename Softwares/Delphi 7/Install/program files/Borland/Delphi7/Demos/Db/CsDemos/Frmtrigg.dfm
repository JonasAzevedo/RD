object FrmTriggerDemo: TFrmTriggerDemo
  Left = 144
  Top = 75
  Width = 391
  Height = 342
  Hint = 'Explore the EmployeeTable to see the trigger sources'
  ActiveControl = Panel1
  Caption = 'Salary Change Auditing'
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 383
    Height = 41
    Align = alTop
    TabOrder = 0
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 8
      Width = 232
      Height = 25
      DataSource = DmEmployee.EmployeeSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 315
      Top = 8
      Width = 60
      Height = 25
      Hint = 'Exit and close this form'
      Caption = 'E&xit'
      TabOrder = 1
      Kind = bkClose
      Style = bsNew
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 383
    Height = 137
    Align = alTop
    BevelInner = bvLowered
    BorderWidth = 4
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 6
      Top = 6
      Width = 371
      Height = 125
      Hint = 'Changing a salary initiates a trigger'
      Align = alClient
      BorderStyle = bsNone
      Columns = <
        item
          FieldName = 'FULL_NAME'
          ReadOnly = True
          Width = 124
        end
        item
          FieldName = 'SALARY'
        end
        item
          FieldName = 'JOB_GRADE'
          ReadOnly = True
        end>
      DataSource = DmEmployee.EmployeeSource
      TabOrder = 0
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 178
    Width = 383
    Height = 140
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 4
    Caption = 'Panel3'
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 6
      Top = 6
      Width = 371
      Height = 128
      Hint = 'Salary history is maintained by a trigger on salary change'
      Align = alClient
      BorderStyle = bsNone
      Columns = <
        item
          FieldName = 'EMPLOYEE'
          Width = 123
        end
        item
          FieldName = 'CHANGE_DATE'
        end
        item
          FieldName = 'OLD_SALARY'
        end
        item
          FieldName = 'NEW_SALARY'
        end
        item
          FieldName = 'PERCENT_CHANGE'
        end
        item
          FieldName = 'UPDATER_ID'
        end>
      DataSource = DmEmployee.SalaryHistorySource
      ReadOnly = True
      TabOrder = 0
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
end
