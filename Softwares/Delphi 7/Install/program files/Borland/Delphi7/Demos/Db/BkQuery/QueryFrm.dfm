object AdhocForm: TAdhocForm
  Left = 195
  Top = 109
  BorderStyle = bsSingle
  Caption = 'Adhoc Background Query Demo'
  ClientHeight = 297
  ClientWidth = 545
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 74
    Height = 13
    Caption = '&Database Alias:'
    FocusControl = AliasCombo
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 31
    Height = 13
    Caption = '&Query:'
    FocusControl = QueryEdit
  end
  object Label3: TLabel
    Left = 152
    Top = 16
    Width = 56
    Height = 13
    Caption = '&User Name:'
    FocusControl = NameEdit
  end
  object Label4: TLabel
    Left = 304
    Top = 16
    Width = 49
    Height = 13
    Caption = '&Password:'
    FocusControl = PasswordEdit
  end
  object Label5: TLabel
    Left = 15
    Top = 259
    Width = 72
    Height = 13
    Caption = '&Retrieve query:'
    FocusControl = SavedQueryCombo
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 449
    Height = 281
    Shape = bsFrame
  end
  object AliasCombo: TComboBox
    Left = 16
    Top = 32
    Width = 129
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'AliasCombo'
  end
  object QueryEdit: TMemo
    Left = 16
    Top = 72
    Width = 425
    Height = 177
    Lines.Strings = (
      'select Company, Sum(ItemsTotal) - Sum(AmountPaid) as AmountDue '
      '  from customer, orders '
      '  where Customer.CustNo = Orders.CustNo'
      '  group by Company')
    TabOrder = 3
  end
  object NameEdit: TEdit
    Left = 152
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object PasswordEdit: TEdit
    Left = 304
    Top = 32
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
    Text = 'masterkey'
  end
  object ExecuteBtn: TButton
    Left = 464
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Execute'
    Default = True
    TabOrder = 5
    OnClick = ExecuteBtnClick
  end
  object CloseBtn: TButton
    Left = 464
    Top = 134
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Close'
    TabOrder = 6
    OnClick = CloseBtnClick
  end
  object SavedQueryCombo: TComboBox
    Left = 96
    Top = 256
    Width = 345
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    OnChange = SavedQueryComboChange
  end
  object SaveBtn: TButton
    Left = 464
    Top = 72
    Width = 75
    Height = 25
    Caption = '&Save'
    TabOrder = 7
    OnClick = SaveBtnClick
  end
  object SaveAsBtn: TButton
    Left = 464
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Save &as'
    TabOrder = 8
    OnClick = SaveAsBtnClick
  end
  object NewBtn: TButton
    Left = 464
    Top = 40
    Width = 75
    Height = 25
    Caption = '&New'
    TabOrder = 9
    OnClick = NewBtnClick
  end
end
