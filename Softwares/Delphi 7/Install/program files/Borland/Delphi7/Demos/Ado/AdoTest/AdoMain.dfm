object ADODBTest: TADODBTest
  Left = 190
  Top = 138
  HorzScrollBar.Increment = 52
  VertScrollBar.Increment = 45
  AutoScroll = False
  Caption = 'ADO DB Controls Test Application'
  ClientHeight = 460
  ClientWidth = 680
  Color = clBtnFace
  ParentFont = True
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 53
    Width = 3
    Height = 13
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 436
    Width = 680
    Height = 24
    Panels = <
      item
        Text = 'Message'
        Width = 300
      end
      item
        Text = 'Modified'
        Width = 80
      end
      item
        Text = 'Null'
        Width = 50
      end
      item
        Text = 'RecNo'
        Width = 50
      end>
    SimplePanel = False
  end
  object AreaSelector: TPageControl
    Left = 5
    Top = 30
    Width = 501
    Height = 148
    ActivePage = SourcePage
    Anchors = [akLeft, akTop, akRight]
    Constraints.MinWidth = 500
    TabOrder = 1
    object SourcePage: TTabSheet
      Caption = 'Source'
      object EditConnStr: TSpeedButton
        Left = 460
        Top = 14
        Width = 18
        Height = 18
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = EditConnStrClick
      end
      object Label2: TLabel
        Left = 6
        Top = -1
        Width = 87
        Height = 13
        Caption = 'Connection String:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TableNames: TGroupBox
        Left = 5
        Top = 38
        Width = 133
        Height = 76
        Caption = ' Master/Detail Tables '
        TabOrder = 1
        object MasterTableName: TComboBox
          Left = 8
          Top = 18
          Width = 116
          Height = 21
          DropDownCount = 20
          ItemHeight = 13
          Sorted = True
          TabOrder = 0
          Text = 'Customer'
          OnClick = MasterTableNameClick
          OnDropDown = MasterTableNameDropDown
          OnKeyPress = MasterTableNameKeyPress
        end
        object DetailTableName: TComboBox
          Left = 8
          Top = 45
          Width = 116
          Height = 21
          DropDownCount = 20
          ItemHeight = 13
          Sorted = True
          TabOrder = 1
          Text = 'Orders'
          OnClick = DetailTableNameClick
          OnDropDown = MasterTableNameDropDown
          OnKeyPress = MasterTableNameKeyPress
        end
      end
      object QueryStrings: TGroupBox
        Left = 143
        Top = 38
        Width = 212
        Height = 75
        Caption = ' Master/Detail Queries '
        TabOrder = 2
        object PrevQuery1: TSpeedButton
          Left = 189
          Top = 39
          Width = 19
          Height = 13
          Action = PrevQuery
          Flat = True
          Glyph.Data = {
            32010000424D320100000000000036000000280000000B000000070000000100
            180000000000FC000000CE0E0000C40E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
            FF000000000000000000000000000000000000000000000000000000FF00FF00
            0000FF00FFFF00FF000000000000000000000000000000000000000000FF00FF
            FF00FF000000FF00FFFF00FFFF00FF000000000000000000000000000000FF00
            FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FF000000000000000000FF
            00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF000000
            FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000}
          ParentShowHint = False
          ShowHint = True
        end
        object NextQuery1: TSpeedButton
          Left = 189
          Top = 52
          Width = 19
          Height = 13
          Action = NextQuery
          Flat = True
          Glyph.Data = {
            32010000424D320100000000000036000000280000000B000000070000000100
            180000000000FC000000CE0E0000C40E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
            FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF00
            0000FF00FFFF00FFFF00FFFF00FF000000000000000000FF00FFFF00FFFF00FF
            FF00FF000000FF00FFFF00FFFF00FF000000000000000000000000000000FF00
            FFFF00FFFF00FF000000FF00FFFF00FF00000000000000000000000000000000
            0000000000FF00FFFF00FF000000FF00FF000000000000000000000000000000
            000000000000000000000000FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000}
          ParentShowHint = False
          ShowHint = True
        end
        object EditCommandText: TSpeedButton
          Left = 189
          Top = 19
          Width = 18
          Height = 18
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = EditCommandTextClick
        end
        object MasterSQL: TMemo
          Left = 7
          Top = 18
          Width = 180
          Height = 21
          Lines.Strings = (
            'Select * from Customer')
          TabOrder = 0
          OnChange = MasterSQLChange
          OnKeyPress = MasterSQLKeyPress
        end
        object DetailSQL: TMemo
          Left = 7
          Top = 45
          Width = 180
          Height = 21
          Lines.Strings = (
            'select * from orders where CustNo = '
            ':CustNo')
          TabOrder = 1
          OnKeyPress = MasterSQLKeyPress
        end
      end
      object ConnectionString: TComboBox
        Left = 6
        Top = 13
        Width = 450
        Height = 21
        Hint = 'asdfasdf'
        DropDownCount = 20
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = ConnectionStringClick
        OnKeyPress = ConnectionStringKeyPress
      end
      object ProcedureNames: TGroupBox
        Left = 361
        Top = 38
        Width = 125
        Height = 75
        Caption = ' Stored Procedure '
        TabOrder = 3
        object MasterProcName: TComboBox
          Left = 9
          Top = 17
          Width = 108
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          OnClick = MasterProcNameClick
          OnDropDown = ProcNameDropDown
          OnKeyPress = MasterProcNameKeyPress
        end
        object DetailProcName: TComboBox
          Left = 9
          Top = 44
          Width = 108
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          OnClick = DetailProcNameClick
          OnDropDown = ProcNameDropDown
        end
      end
    end
    object FieldsPage: TTabSheet
      Caption = 'Fields'
      OnShow = FieldsPageShow
      object FieldSchemaGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 493
        Height = 120
        Align = alClient
        DataSource = FieldSchemaSource
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object ParamPage: TTabSheet
      Caption = 'Parameters'
      ImageIndex = 6
      OnShow = ParamPageShow
      object ParameterNameLabel: TLabel
        Left = 135
        Top = 2
        Width = 28
        Height = 13
        Caption = 'Name'
      end
      object PTypeLabel: TLabel
        Left = 135
        Top = 40
        Width = 24
        Height = 13
        Caption = 'Type'
      end
      object PValueLabel: TLabel
        Left = 135
        Top = 79
        Width = 27
        Height = 13
        Caption = 'Value'
      end
      object PSizeLabel: TLabel
        Left = 243
        Top = 2
        Width = 20
        Height = 13
        Caption = 'Size'
      end
      object PScaleLabel: TLabel
        Left = 242
        Top = 41
        Width = 27
        Height = 13
        Caption = 'Scale'
      end
      object PPrecisionLabel: TLabel
        Left = 242
        Top = 79
        Width = 43
        Height = 13
        Caption = 'Precision'
      end
      object ParameterList: TListBox
        Left = 2
        Top = 16
        Width = 124
        Height = 74
        ItemHeight = 13
        TabOrder = 0
        OnClick = ParameterListClick
      end
      object ParameterName: TEdit
        Left = 135
        Top = 16
        Width = 101
        Height = 21
        TabOrder = 1
        OnChange = ParameterDataChange
      end
      object ParameterValue: TEdit
        Left = 135
        Top = 93
        Width = 101
        Height = 21
        TabOrder = 2
        OnChange = ParameterDataChange
      end
      object ParameterSize: TEdit
        Left = 242
        Top = 16
        Width = 71
        Height = 21
        TabOrder = 3
        OnChange = ParameterDataChange
      end
      object ParameterScale: TEdit
        Left = 242
        Top = 55
        Width = 71
        Height = 21
        TabOrder = 4
        OnChange = ParameterDataChange
      end
      object ParameterPrecision: TEdit
        Left = 242
        Top = 93
        Width = 71
        Height = 21
        TabOrder = 5
        OnChange = ParameterDataChange
      end
      object ParameterDirectionGroup: TRadioGroup
        Left = 322
        Top = 2
        Width = 162
        Height = 57
        Caption = ' Direction '
        Columns = 2
        Items.Strings = (
          'Input'
          'Output'
          'In/Out'
          'Return')
        TabOrder = 6
        OnClick = ParameterDataChange
      end
      object ParamAttributes: TGroupBox
        Left = 322
        Top = 63
        Width = 162
        Height = 52
        Caption = ' Attributes '
        TabOrder = 7
        object PANullableCheckBox: TCheckBox
          Left = 11
          Top = 13
          Width = 72
          Height = 17
          Caption = 'Nullable'
          TabOrder = 0
          OnClick = ParameterDataChange
        end
        object PASignedCheckBox: TCheckBox
          Left = 11
          Top = 31
          Width = 66
          Height = 17
          Caption = 'Signed'
          TabOrder = 1
          OnClick = ParameterDataChange
        end
        object PALongCheckBox: TCheckBox
          Left = 87
          Top = 13
          Width = 52
          Height = 17
          Caption = 'Long'
          TabOrder = 2
          OnClick = ParameterDataChange
        end
      end
      object AddParameterButton: TButton
        Left = 7
        Top = 94
        Width = 54
        Height = 23
        Caption = 'Add'
        TabOrder = 8
        OnClick = AddParameterButtonClick
      end
      object RefreshParametersButton: TButton
        Left = 66
        Top = 94
        Width = 54
        Height = 23
        Caption = 'Refresh'
        TabOrder = 9
        OnClick = RefreshParametersButtonClick
      end
      object ParameterType: TComboBox
        Left = 135
        Top = 55
        Width = 101
        Height = 21
        ItemHeight = 13
        TabOrder = 10
        OnChange = ParameterDataChange
      end
      object SQLParams: TRadioButton
        Left = 5
        Top = 1
        Width = 43
        Height = 14
        Caption = 'SQL'
        Checked = True
        TabOrder = 11
        TabStop = True
        OnClick = ParameterSourceClick
      end
      object ProcParams: TRadioButton
        Left = 50
        Top = 1
        Width = 73
        Height = 14
        Caption = 'StoredProc'
        TabOrder = 12
        OnClick = ParameterSourceClick
      end
    end
    object IndexPage: TTabSheet
      Caption = 'Indexes'
      OnShow = IndexPageShow
      object Label11: TLabel
        Left = 10
        Top = 2
        Width = 65
        Height = 13
        Caption = 'Index Names:'
      end
      object Label14: TLabel
        Left = 156
        Top = 3
        Width = 30
        Height = 13
        Caption = 'Fields:'
      end
      object Label3: TLabel
        Left = 156
        Top = 40
        Width = 55
        Height = 13
        Caption = 'DescFields:'
      end
      object Label13: TLabel
        Left = 156
        Top = 80
        Width = 68
        Height = 13
        Caption = 'CaseInsFields:'
      end
      object IndexList: TListBox
        Left = 8
        Top = 17
        Width = 137
        Height = 100
        ItemHeight = 13
        TabOrder = 0
        OnClick = IndexListClick
      end
      object IndexFields: TEdit
        Left = 156
        Top = 17
        Width = 164
        Height = 21
        ReadOnly = True
        TabOrder = 1
      end
      object DescFields: TEdit
        Left = 156
        Top = 56
        Width = 164
        Height = 21
        ReadOnly = True
        TabOrder = 2
      end
      object CaseInsFields: TEdit
        Left = 156
        Top = 96
        Width = 164
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
      object IndexOptions: TGroupBox
        Left = 333
        Top = 2
        Width = 159
        Height = 113
        Caption = ' Index Options '
        TabOrder = 4
        object idxCaseInsensitive: TCheckBox
          Left = 12
          Top = 85
          Width = 109
          Height = 17
          Caption = 'Case Insensitive'
          Enabled = False
          TabOrder = 0
        end
        object idxDescending: TCheckBox
          Left = 12
          Top = 64
          Width = 86
          Height = 17
          Caption = 'Descending'
          Enabled = False
          TabOrder = 1
        end
        object idxPrimary: TCheckBox
          Left = 12
          Top = 21
          Width = 97
          Height = 17
          Caption = 'Primary'
          Enabled = False
          TabOrder = 2
        end
        object idxUnique: TCheckBox
          Left = 12
          Top = 42
          Width = 97
          Height = 17
          Caption = 'Unique'
          Enabled = False
          TabOrder = 3
        end
      end
    end
    object FilterPage: TTabSheet
      Caption = 'Filters'
      OnShow = FilterPageShow
      object Label10: TLabel
        Left = 14
        Top = 2
        Width = 25
        Height = 13
        Caption = 'Filter:'
      end
      object Filter: TEdit
        Left = 14
        Top = 17
        Width = 235
        Height = 21
        TabOrder = 0
        OnExit = FilterExit
        OnKeyPress = FilterKeyPress
      end
      object FindFirst: TButton
        Left = 174
        Top = 50
        Width = 75
        Height = 25
        Caption = 'F&ind First'
        TabOrder = 2
        OnClick = FindFirstClick
      end
      object FindNext: TButton
        Left = 174
        Top = 84
        Width = 75
        Height = 25
        Caption = 'Find &Next'
        TabOrder = 3
        OnClick = FindNextClick
      end
      object Filtered: TCheckBox
        Left = 28
        Top = 46
        Width = 97
        Height = 17
        Caption = 'Filtered'
        TabOrder = 1
        OnClick = FilteredClick
      end
      object FilterGroupBox: TRadioGroup
        Left = 288
        Top = 9
        Width = 110
        Height = 105
        Caption = ' Filter Group '
        Items.Strings = (
          'Pending'
          'Affected'
          'Fetched'
          'Conflicting')
        TabOrder = 4
        OnClick = FilterGroupBoxClick
      end
    end
    object LocatePage: TTabSheet
      Caption = 'Locate'
      OnShow = LocatePageShow
      object LocateGroupBox: TGroupBox
        Left = 4
        Top = 1
        Width = 329
        Height = 114
        Caption = ' Locate '
        TabOrder = 0
        object Label16: TLabel
          Left = 10
          Top = 16
          Width = 36
          Height = 13
          Caption = 'Field(s):'
        end
        object Label17: TLabel
          Left = 11
          Top = 61
          Width = 122
          Height = 13
          Caption = 'Values (comma delimited):'
        end
        object LocateButton: TButton
          Left = 216
          Top = 18
          Width = 75
          Height = 25
          Caption = '&Locate'
          TabOrder = 2
          OnClick = LocateButtonClick
        end
        object LocateEdit: TEdit
          Left = 10
          Top = 79
          Width = 183
          Height = 21
          TabOrder = 1
        end
        object LocateField: TComboBox
          Left = 10
          Top = 32
          Width = 183
          Height = 21
          ItemHeight = 13
          Sorted = True
          TabOrder = 0
          OnDropDown = LocateFieldDropDown
        end
        object locPartialKey: TCheckBox
          Left = 217
          Top = 74
          Width = 97
          Height = 16
          Caption = 'Partial Key'
          TabOrder = 4
        end
        object LocateNull: TCheckBox
          Left = 217
          Top = 48
          Width = 97
          Height = 17
          Caption = 'Null Value'
          TabOrder = 3
          OnClick = LocateNullClick
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'MiscTest'
      object TestButton: TButton
        Left = 8
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Test'
        TabOrder = 0
        OnClick = TestButtonClick
      end
    end
  end
  object DataPanel: TPanel
    Left = 5
    Top = 183
    Width = 501
    Height = 250
    Anchors = [akLeft, akTop, akRight, akBottom]
    Constraints.MinHeight = 80
    Constraints.MinWidth = 500
    TabOrder = 2
    object NavigatorPanel: TPanel
      Left = 1
      Top = 1
      Width = 499
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object ReadOnlyLabel: TLabel
        Left = 403
        Top = 9
        Width = 60
        Height = 13
        Caption = 'Read Only'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object DBNavigator1: TDBNavigator
        Left = 4
        Top = 3
        Width = 240
        Height = 25
        DataSource = MasterDataSource
        TabOrder = 0
      end
      object ADOButton: TRadioButton
        Left = 257
        Top = 8
        Width = 42
        Height = 17
        Caption = 'ADO'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = ADOButtonClick
      end
      object MidasButton: TRadioButton
        Left = 312
        Top = 8
        Width = 54
        Height = 17
        Caption = 'Midas'
        TabOrder = 2
        OnClick = MidasButtonClick
      end
    end
    object BlobCtrlPanel: TPanel
      Left = 315
      Top = 30
      Width = 185
      Height = 219
      Align = alRight
      BevelOuter = bvNone
      BorderWidth = 2
      TabOrder = 2
      Visible = False
      object Splitter1: TSplitter
        Left = 2
        Top = 107
        Width = 181
        Height = 2
        Cursor = crVSplit
        Align = alBottom
        Visible = False
      end
      object DBMemo1: TDBMemo
        Left = 2
        Top = 2
        Width = 181
        Height = 105
        Align = alClient
        DataSource = MasterDataSource
        MaxLength = 1024
        PopupMenu = PopupMenu1
        TabOrder = 0
      end
      object DBImage1: TDBImage
        Left = 2
        Top = 109
        Width = 181
        Height = 108
        Align = alBottom
        DataSource = MasterDataSource
        PopupMenu = PopupMenu1
        TabOrder = 1
      end
    end
    object GridPanel: TPanel
      Left = 1
      Top = 30
      Width = 314
      Height = 219
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 2
      TabOrder = 1
      object GridSplitter: TSplitter
        Left = 2
        Top = 107
        Width = 310
        Height = 2
        Cursor = crVSplit
        Align = alBottom
        Visible = False
      end
      object DetailGrid: TDBGrid
        Left = 2
        Top = 109
        Width = 310
        Height = 108
        Align = alBottom
        DataSource = DetailDataSource
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Visible = False
        OnColEnter = GridColEnter
        OnEnter = GridSetFocus
        OnTitleClick = GridTitleClick
      end
      object MasterGrid: TDBGrid
        Left = 2
        Top = 2
        Width = 310
        Height = 105
        Align = alClient
        DataSource = MasterDataSource
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColEnter = GridColEnter
        OnColumnMoved = MasterGridColumnMoved
        OnEnter = GridSetFocus
        OnTitleClick = GridTitleClick
      end
      object DBEditScroller: TScrollBox
        Left = 2
        Top = 2
        Width = 303
        Height = 0
        TabOrder = 2
      end
    end
  end
  object Events: TListBox
    Left = 512
    Top = 50
    Width = 164
    Height = 381
    Anchors = [akTop, akRight, akBottom]
    ItemHeight = 13
    TabOrder = 3
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 680
    Height = 29
    BorderWidth = 1
    Caption = 'ToolBar1'
    Flat = True
    Images = ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    object OpenTableButton: TToolButton
      Left = 0
      Top = 0
      Action = OpenTable
    end
    object OpenQueryButton: TToolButton
      Left = 23
      Top = 0
      Action = OpenQuery
    end
    object ToolButton1: TToolButton
      Left = 46
      Top = 0
      Action = OpenProcedure
    end
    object CloseActiveButton: TToolButton
      Left = 69
      Top = 0
      Action = CloseActiveDataSet
    end
    object Sep1: TToolButton
      Left = 92
      Top = 0
      Width = 14
      Caption = 'Sep1'
      ImageIndex = 11
      Style = tbsSeparator
    end
    object LoadPacketButton: TToolButton
      Left = 106
      Top = 0
      Action = LoadFromFile
    end
    object SavePacketButton: TToolButton
      Left = 129
      Top = 0
      Action = SaveToFile
    end
    object Sep2: TToolButton
      Left = 152
      Top = 0
      Width = 14
      Caption = 'Sep2'
      ImageIndex = 1
      Style = tbsDivider
    end
    object ClearFieldButton: TToolButton
      Left = 166
      Top = 0
      Action = ClearField
    end
    object Sep3: TToolButton
      Left = 189
      Top = 0
      Width = 14
      Caption = 'Sep3'
      ImageIndex = 1
      Style = tbsDivider
    end
    object BatchUpdateButton: TToolButton
      Left = 203
      Top = 0
      Action = BatchUpdate
    end
    object CancelBatchButton: TToolButton
      Left = 226
      Top = 0
      Action = CancelBatch
    end
    object Sep4: TToolButton
      Left = 249
      Top = 0
      Width = 14
      Caption = 'Sep4'
      ImageIndex = 21
      Style = tbsSeparator
    end
    object MidasApplyUpdatesButton: TToolButton
      Left = 263
      Top = 0
      Action = MidasApplyUpdates
    end
    object MidasCancelButton: TToolButton
      Left = 286
      Top = 0
      Action = MidasCancelUpdates
    end
    object ToolButton3: TToolButton
      Left = 309
      Top = 0
      Width = 14
      Caption = 'ToolButton3'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ClearEventsButton: TToolButton
      Left = 323
      Top = 0
      Action = ClearEventLog
    end
  end
  object ProgressBar: TProgressBar
    Left = 0
    Top = 438
    Width = 301
    Height = 22
    Min = 0
    Max = 100
    Step = 1
    TabOrder = 5
    Visible = False
  end
  object MasterDataSource: TDataSource
    OnStateChange = DataSourceStateChange
    OnDataChange = DataSourceDataChange
    OnUpdateData = DataSourceUpdateData
    Left = 19
    Top = 283
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'dtg'
    Filter = 
      'TableGram Files (*.dtg)|*.dtg|Delphi form (*.dfm)|*.dfm|All File' +
      's (*.*)|*.*'
    Title = 'Load Data File'
    Left = 555
    Top = 65
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'dtg'
    Filter = 
      'TableGram Files (*.dtg)|*.dtg|Delphi form (*.dfm)|*.dfm|All File' +
      's (*.*)|*.*'
    Options = [ofOverwritePrompt]
    Title = 'Save Data File'
    Left = 555
    Top = 99
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 520
    Top = 99
    object AssignField1: TMenuItem
      Caption = '&Assign Field'
      OnClick = FieldSelect
    end
  end
  object DetailDataSource: TDataSource
    OnStateChange = DataSourceStateChange
    OnDataChange = DataSourceDataChange
    OnUpdateData = DataSourceUpdateData
    Left = 19
    Top = 393
  end
  object MainMenu1: TMainMenu
    Left = 521
    Top = 66
    object FileMenu: TMenuItem
      Caption = '&File'
      OnClick = FileMenuClick
      object OpenTable1: TMenuItem
        Action = OpenTable
      end
      object OpenQuery1: TMenuItem
        Action = OpenQuery
      end
      object OpenProcedure1: TMenuItem
        Action = OpenProcedure
      end
      object FileReopen: TMenuItem
        Caption = 'Reopen'
        object ReopenHolder: TMenuItem
          Caption = 'PlaceHolder'
        end
      end
      object ExecuteQuery1: TMenuItem
        Action = ExecuteCommand
      end
      object CloseActiveDataset1: TMenuItem
        Action = CloseActiveDataSet
      end
      object DisconnectDataSet1: TMenuItem
        Action = DisconnectDataSet
      end
      object Disconnect1: TMenuItem
        Action = CloseConnection
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object LoadDatapacket1: TMenuItem
        Action = LoadFromFile
      end
      object SaveDataPacket1: TMenuItem
        Action = SaveToFile
      end
      object LoadBlobfromfile1: TMenuItem
        Action = LoadBlobFromFile
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Saveformtofile1: TMenuItem
        Action = StreamFormOut
      end
      object LoadFormfromFile1: TMenuItem
        Action = StreamFormIn
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Action = ExitApplication
      end
    end
    object EditMenu: TMenuItem
      Caption = '&Edit'
      object BatchUpdates1: TMenuItem
        Action = BatchUpdate
      end
      object CancelBatch1: TMenuItem
        Action = CancelBatch
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object ApplyUpdatesMidas1: TMenuItem
        Action = MidasApplyUpdates
      end
      object CancelUpdatesMidas1: TMenuItem
        Action = MidasCancelUpdates
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object ClearField1: TMenuItem
        Action = ClearField
      end
      object RefreshData1: TMenuItem
        Action = RefreshData
      end
    end
    object ViewMenu: TMenuItem
      Caption = '&View'
      object DisplayDetailTable1: TMenuItem
        Action = DisplayDetails
      end
      object BlobfieldasImage1: TMenuItem
        Action = BlobAsImage
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object ViewEvents1: TMenuItem
        Action = ViewEvents
      end
      object ClearEventLog1: TMenuItem
        Action = ClearEventLog
      end
    end
    object SettingsMenu: TMenuItem
      Caption = '&Settings'
      object UseClientCursorItem: TMenuItem
        Action = UseClientCursor
      end
      object UseadCmdTableDirect1: TMenuItem
        Action = UseTableDirect
      end
      object UseShapeProvider1: TMenuItem
        Action = UseShapeProvider
      end
      object CursorTypeItem: TMenuItem
        Caption = 'C&ursor Type'
        object CurTypeUnspecified: TMenuItem
          Caption = '&Unspecified'
          GroupIndex = 1
          RadioItem = True
          OnClick = RadioItemClick
        end
        object CurTypeForwardOnly: TMenuItem
          Caption = '&Forward Only'
          GroupIndex = 1
          RadioItem = True
          OnClick = RadioItemClick
        end
        object CurTypeKeyset: TMenuItem
          Caption = '&Keyset'
          Checked = True
          GroupIndex = 1
          RadioItem = True
          OnClick = RadioItemClick
        end
        object Dynamic1: TMenuItem
          Caption = '&Dynamic'
          GroupIndex = 1
          RadioItem = True
          OnClick = RadioItemClick
        end
        object CurTypeStatic: TMenuItem
          Caption = '&Static'
          GroupIndex = 1
          RadioItem = True
          OnClick = RadioItemClick
        end
      end
      object LockTypeItem: TMenuItem
        Caption = '&Lock Type'
        object LckTypeUnspecified: TMenuItem
          Caption = '&Unspecified'
          GroupIndex = 1
          RadioItem = True
          OnClick = RadioItemClick
        end
        object LckTypeReadOnly: TMenuItem
          Caption = '&Read Only'
          GroupIndex = 1
          RadioItem = True
          OnClick = RadioItemClick
        end
        object LckTypePessimistic: TMenuItem
          Caption = '&Pessimistic'
          GroupIndex = 1
          RadioItem = True
          OnClick = RadioItemClick
        end
        object LckTypeOptimistic: TMenuItem
          Caption = '&Optimistic'
          Checked = True
          GroupIndex = 1
          RadioItem = True
          OnClick = RadioItemClick
        end
        object LckTypeBatchOptimistic: TMenuItem
          Caption = '&Batch Optimistic'
          GroupIndex = 1
          RadioItem = True
          OnClick = RadioItemClick
        end
      end
      object MaxRecords1: TMenuItem
        Action = MaxRecords
      end
      object EnableBCD1: TMenuItem
        Action = EnableBCD
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object AsyncConnect1: TMenuItem
        Action = AsyncConnect
      end
      object AsyncExecute1: TMenuItem
        Action = AsyncExecute
      end
      object AsyncFetch1: TMenuItem
        Action = AsyncFetch
      end
    end
    object HelpMenu: TMenuItem
      Caption = '&Help'
      object HelpAboutItem: TMenuItem
        Action = HelpAbout
        Caption = '&About...'
      end
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 520
    Top = 134
    object BatchUpdate: TAction
      Category = 'Edit'
      Caption = '&Apply Batch Updates'
      Hint = 'Apply pending batch updates to the server'
      ImageIndex = 3
      ShortCut = 16450
      OnExecute = BatchUpdateExecute
      OnUpdate = EditActionsUpdate
    end
    object CancelBatch: TAction
      Category = 'Edit'
      Caption = '&Cancel Batch Updates'
      Hint = 'Cancel pending batch updates'
      ImageIndex = 14
      OnExecute = CancelBatchExecute
    end
    object OpenProcedure: TAction
      Category = 'File'
      Caption = 'Open &Procedure'
      Hint = 'Open stored procedure(s)'
      ImageIndex = 12
      ShortCut = 16464
      OnExecute = OpenProcedureExecute
    end
    object OpenTable: TAction
      Category = 'File'
      Caption = 'Open &Table'
      Hint = 'Open Table(s)'
      ImageIndex = 0
      ShortCut = 16468
      OnExecute = OpenTableExecute
    end
    object OpenQuery: TAction
      Category = 'File'
      Caption = 'Open &Query'
      Hint = 'Open Query(s)'
      ImageIndex = 1
      ShortCut = 16465
      OnExecute = OpenQueryExecute
    end
    object LoadFromFile: TAction
      Category = 'File'
      Caption = 'Load data from a file...'
      Hint = 'Load data from a file'
      ImageIndex = 10
      ShortCut = 16460
      OnExecute = LoadFromFileExecute
    end
    object CloseActiveDataSet: TAction
      Category = 'File'
      Caption = '&Close Active Dataset'
      Hint = 'Close the active dataset'
      ImageIndex = 2
      OnExecute = CloseActiveDataSetExecute
      OnUpdate = FileActionsUpdate
    end
    object SaveToFile: TAction
      Category = 'File'
      Caption = '&Save data to a file...'
      Hint = 'Save data to a file'
      ImageIndex = 11
      ShortCut = 16467
      OnExecute = SaveToFileExecute
    end
    object ExitApplication: TAction
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit the application'
      ShortCut = 32856
      OnExecute = ExitApplicationExecute
    end
    object ExecuteCommand: TAction
      Category = 'File'
      Caption = '&Execute Command'
      Hint = 'Execute the current query'
      ShortCut = 16453
      OnExecute = ExecSQLExecute
    end
    object StreamFormOut: TAction
      Category = 'File'
      Caption = 'Stream &Form Out...'
      Hint = 'Stream for to a form file'
      OnExecute = StreamFormOutClick
    end
    object StreamFormIn: TAction
      Category = 'File'
      Caption = 'Stream Form &In...'
      Hint = 'Stream in form file'
      OnExecute = StreamFormInClick
    end
    object ClearField: TAction
      Category = 'Edit'
      Caption = '&Clear Field'
      Hint = 'Set the current field to Null'
      ImageIndex = 6
      ShortCut = 24643
      OnExecute = ClearFieldExecute
    end
    object ViewEvents: TAction
      Category = 'View'
      Caption = '&Events'
      Hint = 'Display event information'
      OnExecute = ViewEventsExecute
    end
    object DisplayDetails: TAction
      Category = 'View'
      Caption = '&Display Detail Table'
      Checked = True
      Hint = 'Display detail or nested table in the lower grid'
      OnExecute = DisplayDetailsExecute
    end
    object RefreshData: TAction
      Category = 'Edit'
      Caption = 'Re&fresh Data'
      OnExecute = RefreshDataExecute
    end
    object ClearEventLog: TAction
      Category = 'View'
      Caption = '&Clear Event Log'
      Hint = 'Clear the event log'
      ImageIndex = 7
      OnExecute = ClearEventLogExecute
      OnUpdate = ClearEventLogUpdate
    end
    object HelpAbout: TAction
      Caption = 'HelpAbout'
      Hint = 'Display About Box'
      OnExecute = HelpAboutExecute
    end
    object PrevQuery: TAction
      Category = 'File'
      Hint = 'Display the previous query from the history list'
      OnExecute = PrevQueryExecute
      OnUpdate = PrevQueryUpdate
    end
    object NextQuery: TAction
      Category = 'File'
      Hint = 'Display the next query from the history list, or insert new one.'
      OnExecute = NextQueryExecute
    end
    object UseClientCursor: TAction
      Category = 'Settings'
      Caption = 'Use &Client Cursor'
      Checked = True
      Hint = 'Use client side cursor'
      OnExecute = BooleanActionExecute
    end
    object UseTableDirect: TAction
      Category = 'Settings'
      Caption = 'Use adCmd&TableDirect'
      Hint = 'Use the adCmdTableDirect command type'
      OnExecute = BooleanActionExecute
    end
    object UseShapeProvider: TAction
      Category = 'Settings'
      Caption = 'Use &Shape Provider'
      Hint = 'Use the Shape Provider'
      OnExecute = UseShapeProviderExecute
    end
    object CloseConnection: TAction
      Category = 'File'
      Caption = '&Close Connection'
      Hint = 'Close the current connection'
      OnExecute = CloseConnectionExecute
    end
    object AsyncConnect: TAction
      Category = 'Settings'
      Caption = 'AsyncConnect'
      Hint = 'Make the connection asynchronously'
      OnExecute = BooleanActionExecute
    end
    object AsyncExecute: TAction
      Category = 'Settings'
      Caption = 'AsyncExecute'
      Hint = 'Execute the command asynchronously'
      OnExecute = BooleanActionExecute
    end
    object AsyncFetch: TAction
      Category = 'Settings'
      Caption = 'AsyncFetch'
      Hint = 'Fetch records asynchronously'
      OnExecute = BooleanActionExecute
    end
    object MaxRecords: TAction
      Category = 'Settings'
      Caption = '&Max Records...'
      Hint = 'Specify the max number of records in a dataset'
      OnExecute = MaxRecordsExecute
    end
    object MidasApplyUpdates: TAction
      Category = 'Edit'
      Caption = 'Apply Updates (Midas)'
      Hint = 'Apply pending Midas updates'
      ImageIndex = 13
      ShortCut = 16449
      OnExecute = MidasApplyUpdatesExecute
    end
    object MidasCancelUpdates: TAction
      Category = 'Edit'
      Caption = 'Cancel Updates (Midas)'
      Hint = 'Cancel pending Midas updates'
      ImageIndex = 9
      OnExecute = MidasCancelUpdatesExecute
    end
    object EnableBCD: TAction
      Category = 'Settings'
      Caption = 'EnableBCD'
      Checked = True
      Hint = 'Configure datasets to use BCD fields for numeric field types'
      OnExecute = BooleanActionExecute
    end
    object DisconnectDataSet: TAction
      Category = 'File'
      Caption = '&Disconnect DataSet'
      Hint = 'Disconnect the dataset fromt he connection'
      OnExecute = DisconnectDataSetExecute
    end
    object BlobAsImage: TAction
      Category = 'View'
      Caption = '&Blob field as Image'
      Hint = 'View the current blob field in a DBImage'
      OnExecute = BlobAsImageExecute
      OnUpdate = BlobAsImageUpdate
    end
    object LoadBlobFromFile: TAction
      Category = 'Edit'
      Caption = '&Load Blob from file...'
      Hint = 'Load blob data from a file'
      OnExecute = LoadBlobFromFileExecute
    end
  end
  object ImageList1: TImageList
    Left = 555
    Top = 134
    Bitmap = {
      494C01010F001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001001000000000000028
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
      000000000000000000000000000000000000907FFF7FFF7FFF7F7F212D1B0000
      00000000001B0000001400000020000000280000800000080000000000000800
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A7322937A43238010D0433342F39
      B421353A8320A0042F37253CA531353AA50398262932A13921383036B92A3032
      213AA539253CA531353A250000000A2AA936A1332526A9393405A936A1332526
      A939B41804262533B4010B01032A2F3803430003A234B43621380A130B008024
      AC0001078009000200080008807FFF7FFF7F253CA531353AA5039126213CB232
      A3373232B322B832A33AB4320000072AA131B4342F3791262932A13921383036
      B92A3032213AA5398821213AA5332F3939038422A434B403A330303AA9372E03
      91262932A13921383036B92A3032213AA53904242937340395203038AC3C803A
      3032213AA5390014AD34A430B3148A24AD30253CA531353A25008003B420233A
      A9372E05AD303829A5312F39A4398821213AA5332F3939038829253AB434AE33
      B303A330303AA9372E030F13AD303810B232A337323233170E17042429373403
      8E29B032A334A63C003AA8328036213C0037B536A23232102F330039A5312F39
      A43980342E102110A430B430B332B4042F378003B420233AA9372E05A1393937
      2323253A23348821213AA5332F3939038829253AB434AE33B303A330303AA937
      2E038A20B33CAE31A632B431A8032334A531AB32A4040424293734031C23253A
      23340039A5312F39A4398030B33CAE3128392F37AF3A3336B9042F37253CA531
      353AA5031421AF37AC322137A131B4342F37A33AB4328821213AA5332F393903
      8829253AB434AE33B303A330303AA9372E038C20B33CAE31253CA531353AA503
      2334A531AB32A4040424293734038222B832A33AB432003AA8328031AF36AD30
      2E328030B33CAE3128392F37AF3A3336B9042F37253CA531353AA5031421AF37
      AC322137A131B4342F37253CA531353A2500B434AE33B303A330303AA9372E03
      8C20B33CAE31A3372E37A531B4032334A531AB32A4040424293734038226A135
      251034342510A3372E37A531B4342F378030B33CAE3128392F37AF3A3336B904
      2F37253CA531353AA5031421AF37AC322137A131B4342F37253CA531353A2500
      8003B420233AA9372E06A1393937A322B8322F39390304232936A503A330303A
      A9372E030B13A434B3312F37AE32233A0424293734031922A939A3372E37A531
      341034342510A3372E37A531B4342F378927AE22B832A33AB4328708A434B331
      2F37AE32233A253CA531353A25008003B420233AA9372E06A1393937A3212F37
      AE32233A8821213AA5332F3939038829253A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007C007C00000000000000000000
      0000000000000000000000000000007C007C0000000010001000100010001000
      0000000000000000000010000000000000000000000000420042004200420042
      0042004200420042004200000000000000000000000000000000000000000000
      00000000EF3DEF3DF75EFF7FFF7FEF3D00000000007C007C0000000000000000
      000000000000000000000000007C007C00000000000010001000100010000000
      0000000000000000000000001000000000000000E07F00000042004200420042
      0042004200420042004200420000000000000000000000000000000000000000
      00000000EF3DF75EFF7FFF7FF75EF75E000000000000007C007C000000000000
      00000000000000000000007C007C000000000000000010001000100000000000
      0000000000000000000000001000000000000000FF7FEF7F0000E73DE73DE73D
      E73DE73DE73DE73DE73D00420042000000000000000000000000000000000000
      00000000EF3DF75EF75EFF7FFF7FF75E0000000000000000007C007CFF7FFF7F
      FF7FFF7FFF7FFF7F007C007C0000000000000000000010001000000010000000
      0000000000000000000000001000000000000000E07FFF7F0000E73DE73DE73D
      E73DE73DE73DE73DE73D0042004200420000000000000000EF3D000000000000
      00000000EF3DF75EFF7FFF7FF75EF75E0000000000000000F75E007C007CEF3D
      EF3DEF3DEF3D007C007CF75E0000000000000000000010000000000000001000
      1000000000000000000010000000000000000000FF7FEF7FFF7F000000000000
      0000E73DE73DE73DE73D00420042004200000000000000000000000000000000
      00000000EF3DEF3DEF3DEF3DEF3DEF3D0000000000000000FF7F0000007C007C
      FF7FFF7F007C007CFF7F18630000000000000000000000000000000000000000
      0000100010001000100000000000000000000000E07FFF7FEF7FFF7FEF7FFF7F
      E07F000000000000000000000000000000000000000000000000000000000000
      00000000EF3DF75EFF7FFF7FFF7FF75E000000000000000018630000FF7F007C
      007C007C007CEF3DFF7F18630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FEF7FFF7FEF7FFF7FE07F
      FF7F1000FF7FE07F000000000000000000000000000000000000000000000000
      00000000EF3DEF3DFF7FFF7FFF7FEF3D0000000000000000FF7F0000FF7FEF3D
      007C007CEF3DEF3DFF7F18630000000000008708A430B430B332B420263A2539
      2336000000000000000000000000000000000000E07FFF7FEF7FFF7FEF7FFF7F
      E07F1000E07FFF7F000000000000000000000000000000000000000000000000
      000000000000EF3DEF3DEF3DEF3DEF3D0000000000000000F75E0000FF7F007C
      007C007C007CFF7FFF7F18630000000000002F37AE32233AA937AE038A212F37
      AE32233AA9372E05A232A637B2322F382537000000000000EF3DEF3DEF3DEF3D
      EF3D100000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7F0000007C007C
      EF3DEF3D007C007CFF7FF75E000000000000B430B3323427A53BB232A3373232
      8B272E28AF39B42232392F390706A430B4300000000000000000000000000000
      00000F0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000F75E007C007CFF7F
      FF7FFF7FFF7F007C007CF75E00000000000023392F36AC031322213AA129253A
      A232A637B232B331B2372C368B20263A253900000F000F000F000F0000000000
      0F000F000F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C007C00000000
      0000000000000000007C007C000000000000AC031322213AA129253AA232A637
      B232A330AE3125368B20263A2539A330AE3100000F00FF7FFF7F0F000F000F00
      0F000F000F000F00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007C007C0000FF7FF75E
      F75EF75EF75EF75EFF7F007C007C000000000A2125332F39A522A434B4031122
      213AA129253AA232A637B2322532293A892000000F00FF7FFF7F0F0000000000
      0F000F000F00000000000000000000000000000000000000EF3D000000000000
      0000000000000000000000000000000000000000007C007C0000000000000000
      000000000000000000000000007C007C000025378920263A25392F3825370708
      A430B430B332B420263A25392F3825370B2100000F000F000F000F0000000000
      00000F00000000000000000000000000000000000000EF3D0000000000000000
      000000000000000000000000000000000000007C007C00000000000000000000
      0000000000000000000000000000007C007C333A2539B237B2030C22213AA129
      253A2539B2373205B030B230AD32B432B2390000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007C000000000000000000000000
      00000000000000000000000000000000007CA52923392F36AC052133B432B229
      23392F36AC031222213AA129253A2133B43200000000000000000000F75E0000
      FF7FFF7FFF7FFF7FFF7FFF7FF75E00000000007C000000000000000000000000
      0000000000000000000000000000007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF7F0000
      FF7F0F000F000F000F00FF7FF75E00000000007C007C00000000000000000000
      000000000000000000000000007C007C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010421042
      10421042104210421042104210421042000000000000000000000000F75E0000
      FF7FFF7FFF7FFF7FFF7FFF7FF75E000000000000007C007C0000000000000000
      00000000000000000000007C007C000000001863104210421042104210421042
      1042104210421042104200000000000000000000000000000000FF7F18631863
      1863186318631863186318631863104200000000000000000000000000000000
      00000000000000000000000000000000000000000000007C007C000000000000
      0000000000000000007C007C000000000000FF7F186318631863186318631863
      1863186318631863104200000000000000000000000000000000FF7F1863007C
      007C1863186318631863186318631042000000000000000000000000F75E0000
      FF7FF75EF75EF75EF75EF75EF75E00000000000000000000007C007C00000000
      000000000000007C007C0000000000000000FF7F186318631863186318631863
      1863186318631863104200000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007C007C0000
      00000000007C007C00000000000000000000FF7F1863007C007C186318631863
      1863186318631863104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000007C007C
      0000007C007C000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F186300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000007C
      007C007C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF3DEF3DF75EFF7FFF7FEF3D0000
      000000000000000000000000000000000000000000000000000000000000007C
      007C007C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF3DF75EFF7FFF7FF75EF75E0000
      00000000000000000000000000000000000000000000000000000000007C007C
      0000007C007C0000000000000000000000000000000000000000000000000000
      0000E07FEF3DFF7FE07FFF7FE07FFF7F00000000E07FEF3DFF7FE07FFF7FE07F
      FF7F00000000000000000000000000000000EF3DF75EF75EFF7FFF7FF75E0000
      0000000000000000000000000000000000000000000000000000007C007C0000
      00000000007C007C000000000000000000000000000000000000000000000000
      0000E07FEF3DE07FFF7FE07FFF7FE07F00000000E07FEF3DE07FFF7FE07FFF7F
      E07F00000000000000000000000000000000EF3DF75EFF7FFF7FF75EF75E0000
      000000000000000000000000000000000000000000000000007C007C00000000
      000000000000007C007C00000000000000000000000010420000000000000000
      0000E07FEF3DFF7FE07FFF7FE07FFF7F00000000E07FEF3DFF7FE07FFF7FE07F
      FF7F00000000000000000000104200000000EF3DEF3DEF3DEF3DEF3DEF3D0000
      00000000000000000000000000000000000000000000007C007C000000000000
      0000000000000000007C007C0000000000001042000000000000000000000000
      0000E07FEF3DE07FFF7FE07FFF7FE07F00000000E07FEF3DE07FFF7FE07FFF7F
      E07F00000000000000000000000000000000EF3DF75EFF7FFF7FFF7FF75E0000
      0000000000000000000000000000000000000000007C007C0000000000000000
      00000000000000000000007C007C000000000000000000000000000000000000
      0000E07FEF3DFF7FE07FFF7FE07FFF7F00000000E07FEF3DFF7FE07FFF7FE07F
      FF7F00000000000000000000000000000000EF3DEF3DFF7FFF7FFF7FEF3D0000
      000000000000000000000000000000000000007C007C00000000000000000000
      000000000000000000000000007C007C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000EF3DEF3DEF3DEF3DEF3D0000
      000000000000000000000000000000000000007C000000000000000000000000
      0000000000000000000000000000007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FF75E0000000000000000104210421042EF3DEF3D
      EF3DEF3DEF3DEF3DEF3D10421042000000000000FF7FFF7FFF7FFF7FEF3D003C
      003C003CFF7F0000000000000000FF7F00000000000000000000000000000000
      00000000000000000000000000000000000000000000F75E0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FF75E0000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F1042000000000000FF7FFF7FFF7FEF3D007C1F7C
      1F7C0F3C003CFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FF75E0000000000000000FF7F00000000FF7FFF7F
      FF7FFF7FFF7FFF7F0000FF7F1042000000000000FF7FFF7FFF7F007C1F7C007C
      1F7C1F7C0F3C003CFF7F00000000FF7F00000000000000000000000000000000
      00000000000000000000100000000000000000000000F75E0000FF7F10421042
      1042FF7F100010001000100018630000000000000000FF7F000000000000FF7F
      FF7FFF7FFF7F00000000FF7F1042000000000000FF7FFF7FFF7F1F7C007CFF7F
      007C1F7C1F7C0F3C0000FF7FFF7FFF7F00000000000010001000100010001000
      00000000000000000000100000000000000000000000FF7F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F100018630000000000000000FF7FFF7F000000000000
      FF7FFF7F00000000FF7FFF7F1042000000000000FF7F0000FF7F007C1F7CFF7F
      1F7C007C1F7C0000EF010000FF7FFF7F00000000000010001000100010000000
      0000000000000000000000001000000000000000000018630000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F100018630000000000000000FF7FFF7FFF7F00000000
      000000000000FF7FFF7FFF7F1042000000000000FF7FFF7FFF7FFF7F007C1F7C
      FF7F1F7C0000E0010F00EF010000E03D00000000000010001000100000000000
      00000000000000000000000010000000000000000000FF7F0000FF7FFF7FFF7F
      FF7FFF7FFF7F1000FF7F100018630000000000000000FF7FFF7FFF7FFF7F0000
      00000000FF7FFF7FFF7FFF7F1042000000000000FF7F00000000FF7FFF7F007C
      1F7C0000E003E001E0010F00EF01000000000000000010001000000010000000
      00000000000000000000000010000000000000000000F75E0000FF7F00000000
      0000FF7F100010001000100018630000000000000000FF7FFF7FFF7F00000000
      000000000000FF7FFF7FFF7F1042000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      0000E003E07FE003E001E0010000EF3D00000000000010000000000000001000
      10000000000000000000100000000000000000000000FF7F0000FF7FFF7FFF7F
      FF7FFF7FFF7F1000FF7FFF7FF75E0000000000000000FF7FFF7F000000000000
      FF7FFF7F00000000FF7FFF7F1042000000000000FF7F0000000000000000FF7F
      FF7F0000E003E07FE00300000F00EF3DEF3D0000000000000000000000000000
      00001000100010001000000000000000000000000000F75E0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FF75E0000000000000000FF7F000000000000FF7F
      FF7FFF7FFF7F00000000FF7F1042000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F0000E0030000F75EE07F0F00EF3D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F00000000FF7FFF7F
      FF7FFF7FFF7FFF7F0000FF7F1042000000000000000000000000000000000000
      0000000000000000F75EFF7FE07FE07F0F000000000000000000000000000000
      00000000000000000000000000000000000000000000F75E0000FF7FF75EF75E
      F75EF75EF75E18631863FF7FF75E0000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F1042000000000000F75E00001F001F001F001F00
      1F001F001F001F000000FF7FFF7FE07FE07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF7FFF7FE07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E03DE03DE03DE03DE03DE03DE03D
      E03DE03DE03DE03DE03DE03D0000E03DE03D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420042004200420042
      0042004200420042004200000000000000000000000000420042004200420042
      0042004200420042004200000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3DEF3D
      F75EFF7FFF7FEF3D000000000000000000000000E07F00000042004200420042
      0042004200420042004200420000000000000000E07F00000042004200420042
      0042004200420042004200420000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3DF75E
      FF7FFF7FF75EF75E000000000000000000000000FF7F00000000004200420042
      0042004200420042004200420042000000000000FF7FEF7F0000E73DE73DE73D
      E73DE73DE73DE73DE73D00420042000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3DF75E
      F75EFF7FFF7FF75E000000000000000000000000E07F00000000004200420042
      0042004200420042004200420042004200000000E07FFF7F0000E73DE73DE73D
      E73DE73DE73DE73DE73D00420042004200000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3DF75E
      FF7FFF7FF75EF75E000000000000000000000000FF7F0000FF7F000000000000
      0000004200420042004200420042004200000000FF7FEF7FFF7F000000000000
      0000E73DE73DE73DE73D00420042004200000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3DEF3D
      EF3DEF3DEF3DEF3D000000000000000000000000E07F0000FF7F0000FF7FFF7F
      FF7F000000000000000000000000000000000000E07FFF7FEF7FFF7FEF7F1000
      1000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3DF75E
      FF7FFF7FFF7FF75E000000000000000000000000FF7F0000F75E0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FF75E0000000000000000FF7FEF7FFF7FEF7FFF7F1000
      10001000FF7FE07F000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3DEF3D
      FF7FFF7FFF7FEF3D000000000000000000000000E07F0000FF7F0000FF7F0F00
      0F000F000F000F00FF7FF75E0000000000000000E07FFF7FEF7FFF7FEF7FFF7F
      100010001000FF7F000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EF3D
      EF3DEF3DEF3DEF3D00000000000000000000000000000000F75E0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FF75E000000000000000000000000EF3DEF3DEF3DEF3D
      EF3D100010001000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7F0000FF7F0F00
      0F000F000F000F00FF7FF75E0000000000000000000000001000100010000000
      0000000010001000100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000F75E0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FF75E0000000000000000000000001000100010000000
      0000000010001000100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001000100010000000
      0000000010001000100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000F75E0000FF7FF75E
      F75EF75EF75EF75EFF7FF75E0000000000000000000000000000100010001000
      1000100010001000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010001000
      1000100010000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000001000100010000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000FFFC13FFC10000007FF809FF90000
      0003FD80C00300000001FC80C003DFFF0000E000C003D7BD0000EC80C003D7BD
      00002D80C003FFFF000FC780C003FFFF000F39C1C003FFFF800FC7FFC00300F8
      FF7FE9FFC0030000863FEFFFC0030000801FEFFFC0030000863FCFFF80010000
      877F1FFF3FFC0000FFFFFFFF7FFE0000F0010000FFFFF000F00100000007F800
      F0011FF10007F000F0018FE10007F000F001A7C30007F002F001D3930007FFFF
      FFEFD927000FFFF383C7EC67FFFFFFE10183EC4F3F0180F301EFF10F3E000073
      01FFF39F3600007300AFE38F1200004301FFCB270000007F01FF9D33F200007F
      01FF3C79F70180FF83FF7E7CFFFFFFFFFFFFFFFFFFFFFFFFFFFF8001FFFF8001
      FFFF80018003803DFFFF800180038001FFFF80018003800DFFF7800180038011
      C1F780018003A029C3FB800180038045C7FB80018003B083CBFB800180038105
      DCF780018003BC88FF0F800180038050FFFF80018003FFE0FFFF80018003A010
      FFFF80018003FFF8FFFFFFFFFFFF0004000F000FFFFFFC1F00070007FFFFF80F
      00030003EFFDF80F00010001C7FFF80F00000000C3FBF80F00000000E3F7F80F
      00000000F1E7F80F0003000FF8CFF80F0003000FFC1FFC1F8003800FFE3FFF7F
      C003E38FFC1FFE3FC003E38FF8CFFC1FC003E38FE1E7FF7FC003F01FC3F3FFFF
      C003F83FC7FDFDFFFFFFFFFFFFFF6FFF00000000000000000000000000000000
      000000000000}
  end
  object Connection: TADOConnection
    LoginPrompt = False
    Provider = 
      'C:\Program Files\Common Files\System\OLE DB\Data Links\DBDemos.u' +
      'dl'
    OnDisconnect = ConnectionDisconnect
    OnInfoMessage = ConnectionInfoMessage
    OnBeginTransComplete = ConnectionBeginTransComplete
    OnCommitTransComplete = ConnectionCommitTransComplete
    OnRollbackTransComplete = ConnectionRollbackTransComplete
    OnConnectComplete = ConnectionConnectComplete
    OnWillConnect = ConnectionWillConnect
    OnExecuteComplete = ConnectionExecuteComplete
    OnWillExecute = ConnectionWillExecute
    OnLogin = ConnectionLogin
    Left = 525
    Top = 202
  end
  object MasterTable: TADOTable
    Connection = Connection
    BeforeOpen = MasterTableBeforeOpen
    AfterOpen = MasterTableAfterOpen
    BeforeClose = MasterTableBeforeClose
    AfterClose = DataSetAfterClose
    BeforeInsert = DataSetBeforeInsert
    AfterInsert = DataSetAfterInsert
    BeforeEdit = DataSetBeforeEdit
    AfterEdit = DataSetAfterEdit
    BeforePost = DataSetBeforePost
    AfterPost = DataSetAfterPost
    BeforeCancel = DataSetBeforeCancel
    AfterCancel = DataSetAfterCancel
    BeforeDelete = DataSetBeforeDelete
    AfterDelete = DataSetAfterDelete
    BeforeScroll = DataSetBeforeScroll
    AfterScroll = DataSetAfterScroll
    OnDeleteError = DataSetError
    OnEditError = DataSetError
    OnNewRecord = DataSetNewRecord
    OnPostError = DataSetError
    Left = 524
    Top = 235
  end
  object DetailTable: TADOTable
    Connection = Connection
    BeforeOpen = DetailTableBeforeOpen
    AfterOpen = DataSetAfterOpen
    BeforeClose = DataSetBeforeClose
    AfterClose = DataSetAfterClose
    BeforeInsert = DataSetBeforeInsert
    AfterInsert = DataSetAfterInsert
    BeforeEdit = DataSetBeforeEdit
    AfterEdit = DataSetAfterEdit
    BeforePost = DataSetBeforePost
    AfterPost = DataSetAfterPost
    BeforeCancel = DataSetBeforeCancel
    AfterCancel = DataSetAfterCancel
    BeforeDelete = DataSetBeforeDelete
    AfterDelete = DataSetAfterDelete
    BeforeScroll = DataSetBeforeScroll
    AfterScroll = DataSetAfterScroll
    OnDeleteError = DataSetError
    OnEditError = DataSetError
    OnNewRecord = DataSetNewRecord
    OnPostError = DataSetError
    Left = 523
    Top = 268
  end
  object MasterQuery: TADOQuery
    Connection = Connection
    BeforeOpen = MasterQueryBeforeOpen
    AfterOpen = MasterQueryAfterOpen
    BeforeClose = MasterQueryBeforeClose
    AfterClose = DataSetAfterClose
    BeforeInsert = DataSetBeforeInsert
    AfterInsert = DataSetAfterInsert
    BeforeEdit = DataSetBeforeEdit
    AfterEdit = DataSetAfterEdit
    BeforePost = DataSetBeforePost
    AfterPost = DataSetAfterPost
    BeforeCancel = DataSetBeforeCancel
    AfterCancel = DataSetAfterCancel
    BeforeDelete = DataSetBeforeDelete
    AfterDelete = DataSetAfterDelete
    BeforeScroll = DataSetBeforeScroll
    AfterScroll = DataSetAfterScroll
    OnDeleteError = DataSetError
    OnEditError = DataSetError
    OnNewRecord = DataSetNewRecord
    OnPostError = DataSetError
    Parameters = <>
    Left = 558
    Top = 235
  end
  object DetailQuery: TADOQuery
    Connection = Connection
    BeforeOpen = DetailQueryBeforeOpen
    AfterOpen = DataSetAfterOpen
    BeforeClose = DataSetBeforeClose
    BeforeInsert = DataSetBeforeInsert
    AfterInsert = DataSetAfterInsert
    BeforeEdit = DataSetBeforeEdit
    AfterEdit = DataSetAfterEdit
    BeforePost = DataSetBeforePost
    AfterPost = DataSetAfterPost
    BeforeCancel = DataSetBeforeCancel
    AfterCancel = DataSetAfterCancel
    BeforeDelete = DataSetBeforeDelete
    AfterDelete = DataSetAfterDelete
    BeforeScroll = DataSetBeforeScroll
    AfterScroll = DataSetAfterScroll
    OnDeleteError = DataSetError
    OnEditError = DataSetError
    OnNewRecord = DataSetNewRecord
    OnPostError = DataSetError
    DataSource = DetailQuerySource
    Parameters = <>
    Left = 557
    Top = 268
  end
  object MasterProc: TADOStoredProc
    Connection = Connection
    BeforeOpen = MasterProcBeforeOpen
    AfterOpen = MasterProcAfterOpen
    BeforeClose = DataSetBeforeClose
    AfterClose = DataSetAfterClose
    BeforeInsert = DataSetBeforeInsert
    AfterInsert = DataSetAfterInsert
    BeforeEdit = DataSetBeforeEdit
    AfterEdit = DataSetAfterEdit
    BeforePost = DataSetBeforePost
    AfterPost = DataSetAfterPost
    BeforeCancel = DataSetBeforeCancel
    AfterCancel = DataSetAfterCancel
    BeforeDelete = DataSetBeforeDelete
    AfterDelete = DataSetAfterDelete
    BeforeScroll = DataSetBeforeScroll
    AfterScroll = DataSetAfterScroll
    OnDeleteError = DataSetError
    OnEditError = DataSetError
    OnNewRecord = DataSetNewRecord
    OnPostError = DataSetError
    Parameters = <>
    Prepared = True
    Left = 591
    Top = 235
  end
  object ADODataSet: TADODataSet
    Connection = Connection
    BeforeOpen = DataSetBeforeOpen
    AfterOpen = DataSetAfterOpen
    BeforeClose = DataSetBeforeClose
    AfterClose = DataSetAfterClose
    BeforeInsert = DataSetBeforeInsert
    AfterInsert = DataSetAfterInsert
    BeforeEdit = DataSetBeforeEdit
    AfterEdit = DataSetAfterEdit
    BeforePost = DataSetBeforePost
    AfterPost = DataSetAfterPost
    BeforeCancel = DataSetBeforeCancel
    AfterCancel = DataSetAfterCancel
    BeforeDelete = DataSetBeforeDelete
    AfterDelete = DataSetAfterDelete
    BeforeScroll = DataSetBeforeScroll
    AfterScroll = DataSetAfterScroll
    OnDeleteError = DataSetError
    OnEditError = DataSetError
    OnNewRecord = DataSetNewRecord
    OnPostError = DataSetError
    Parameters = <>
    Left = 624
    Top = 235
  end
  object DetailMasterSource: TDataSource
    DataSet = MasterTable
    Left = 523
    Top = 301
  end
  object DetailQuerySource: TDataSource
    DataSet = MasterQuery
    Left = 558
    Top = 301
  end
  object MasterClientData: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    OnReconcileError = MasterClientDataReconcileError
    Left = 524
    Top = 336
  end
  object ADOCommand: TADOCommand
    Connection = Connection
    Prepared = True
    Parameters = <
      item
        Size = -1
        Value = Null
      end>
    Left = 624
    Top = 268
  end
  object Provider: TDataSetProvider
    Constraints = True
    Left = 558
    Top = 336
  end
  object DetailProc: TADOStoredProc
    Connection = Connection
    BeforeOpen = DetailProcBeforeOpen
    AfterOpen = DataSetAfterOpen
    BeforeClose = DataSetBeforeClose
    AfterClose = DataSetAfterClose
    BeforeInsert = DataSetBeforeInsert
    AfterInsert = DataSetAfterInsert
    BeforeEdit = DataSetBeforeEdit
    AfterEdit = DataSetAfterEdit
    BeforePost = DataSetBeforePost
    AfterPost = DataSetAfterPost
    BeforeCancel = DataSetBeforeCancel
    AfterCancel = DataSetAfterCancel
    BeforeDelete = DataSetBeforeDelete
    AfterDelete = DataSetAfterDelete
    BeforeScroll = DataSetBeforeScroll
    AfterScroll = DataSetAfterScroll
    OnDeleteError = DataSetError
    OnEditError = DataSetError
    OnNewRecord = DataSetNewRecord
    OnPostError = DataSetError
    DataSource = DetailProcSource
    Parameters = <>
    Prepared = True
    Left = 592
    Top = 268
  end
  object DetailProcSource: TDataSource
    DataSet = MasterProc
    Left = 593
    Top = 301
  end
  object FieldSchemaSource: TDataSource
    DataSet = FieldSchema
    Left = 626
    Top = 335
  end
  object FieldSchema: TADODataSet
    Parameters = <>
    Left = 625
    Top = 302
    object FieldSchemaCOLUMN_NAME: TWideStringField
      DisplayLabel = 'FieldName'
      DisplayWidth = 20
      FieldName = 'COLUMN_NAME'
      Size = 30
    end
    object FieldSchemaDATA_TYPE: TWordField
      DisplayLabel = 'Type'
      DisplayWidth = 20
      FieldName = 'DATA_TYPE'
      OnGetText = FieldSchemaDATA_TYPEGetText
    end
    object FieldSchemaCHARACTER_MAXIMUM_LENGTH: TIntegerField
      DisplayLabel = 'Size'
      FieldName = 'CHARACTER_MAXIMUM_LENGTH'
    end
    object FieldSchemaNUMERIC_PRECISION: TWordField
      DisplayLabel = 'Precision'
      FieldName = 'NUMERIC_PRECISION'
    end
    object FieldSchemaNUMERIC_SCALE: TSmallintField
      DisplayLabel = 'Scale'
      FieldName = 'NUMERIC_SCALE'
    end
  end
  object DetailClientData: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 384
  end
end
