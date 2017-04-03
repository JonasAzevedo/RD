object fmFilterFrm: TfmFilterFrm
  Left = 332
  Top = 132
  ActiveControl = Memo1
  BorderStyle = bsSingle
  Caption = 'Filter Condition'
  ClientHeight = 298
  ClientWidth = 305
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 128
    Width = 27
    Height = 13
    Caption = '&Fields'
    FocusControl = ListBox1
  end
  object Label2: TLabel
    Left = 8
    Top = 44
    Width = 44
    Height = 13
    Caption = '&Condition'
  end
  object Label3: TLabel
    Left = 161
    Top = 128
    Width = 46
    Height = 13
    Caption = '&Operators'
  end
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 16
    Height = 13
    Caption = '&List'
    FocusControl = ComboBox1
  end
  object ListBox1: TListBox
    Left = 8
    Top = 144
    Width = 143
    Height = 73
    Hint = 'Doubleclick to add'
    TabStop = False
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    Sorted = True
    TabOrder = 2
    OnDblClick = AddFieldName
  end
  object ListBox2: TListBox
    Left = 161
    Top = 144
    Width = 53
    Height = 141
    Hint = 'Double-click to add'
    TabStop = False
    ItemHeight = 13
    Items.Strings = (
      '>'
      '<'
      '= '
      '>='
      '<='
      '<>'
      'AND'
      'OR'
      '('
      ')')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnDblClick = ListBox2DblClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 60
    Width = 289
    Height = 65
    TabOrder = 1
    OnChange = Memo1Change
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 224
    Width = 139
    Height = 61
    Caption = 'F&ilter Options'
    TabOrder = 4
    object cbCaseSensitive: TCheckBox
      Left = 8
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Case Sensitive'
      TabOrder = 0
      OnClick = cbCaseSensitiveClick
    end
    object cbNoPartialCompare: TCheckBox
      Left = 8
      Top = 36
      Width = 125
      Height = 17
      Hint = 'Disable partial string comparisons (strings ending with '#39'*'#39')'
      Caption = 'No Partial Compare'
      TabOrder = 1
      OnClick = cbNoPartialCompareClick
    end
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 24
    Width = 289
    Height = 21
    Cursor = crArrow
    ItemHeight = 13
    Items.Strings = (
      'Company = '#39'S*'#39
      'Country <> '#39'US'#39
      'Country = '#39'US'#39)
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object BtnApplyFilter: TButton
    Left = 224
    Top = 143
    Width = 75
    Height = 25
    Caption = '&Apply'
    TabOrder = 5
    OnClick = ApplyFilter
  end
  object BtnClear: TButton
    Left = 224
    Top = 173
    Width = 75
    Height = 25
    Caption = 'Cl&ear'
    TabOrder = 6
    OnClick = SBtnClearClick
  end
  object BtnClose: TButton
    Left = 224
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Cl&ose'
    TabOrder = 7
    OnClick = SBtnCloseClick
  end
end
