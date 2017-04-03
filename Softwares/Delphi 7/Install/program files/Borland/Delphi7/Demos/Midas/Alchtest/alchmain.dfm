object DBClientTest: TDBClientTest
  Left = 130
  Top = 393
  HorzScrollBar.Increment = 52
  VertScrollBar.Increment = 45
  AutoScroll = False
  Caption = 'Client DataSet Test Application'
  ClientHeight = 460
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 436
    Width = 679
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
    Width = 500
    Height = 148
    ActivePage = ProviderPage
    Anchors = [akLeft, akTop, akRight]
    Constraints.MinWidth = 500
    TabIndex = 0
    TabOrder = 1
    object ProviderPage: TTabSheet
      Caption = 'Provider'
      object GroupBox1: TGroupBox
        Left = 4
        Top = 8
        Width = 131
        Height = 99
        Caption = ' Database '
        TabOrder = 0
        object DatabaseName: TComboBox
          Left = 8
          Top = 18
          Width = 115
          Height = 21
          DropDownCount = 20
          ItemHeight = 13
          Sorted = True
          TabOrder = 0
          Text = 'DBDEMOS'
          OnClick = DatabaseNameClick
          OnDropDown = DatabaseNameDropDown
          OnKeyPress = DatabaseNameKeyPress
        end
        object DisableProvider2: TCheckBox
          Left = 11
          Top = 55
          Width = 97
          Height = 17
          Action = DisableProvider
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 140
        Top = 8
        Width = 132
        Height = 99
        Caption = ' Master/Detail Tables '
        TabOrder = 1
        object MasterTableName: TComboBox
          Left = 9
          Top = 18
          Width = 115
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
          Left = 9
          Top = 55
          Width = 115
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
      object GroupBox3: TGroupBox
        Left = 276
        Top = 8
        Width = 212
        Height = 99
        Caption = ' Master/Detail Queries '
        TabOrder = 2
        object PrevQuery1: TSpeedButton
          Left = 189
          Top = 19
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
          Top = 36
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
        object MasterSQL: TMemo
          Left = 7
          Top = 18
          Width = 180
          Height = 32
          Lines.Strings = (
            'Select * from Customer')
          TabOrder = 0
          OnKeyPress = MasterSQLKeyPress
        end
        object DetailSQL: TMemo
          Left = 7
          Top = 55
          Width = 180
          Height = 32
          Lines.Strings = (
            'select * from orders where CustNo = '
            ':CustNo')
          TabOrder = 1
          OnKeyPress = MasterSQLKeyPress
        end
      end
    end
    object CreatePage: TTabSheet
      Caption = 'Create'
      OnShow = CreatePageShow
      object Label12: TLabel
        Left = 368
        Top = 36
        Width = 56
        Height = 13
        Caption = 'Data Rows:'
      end
      object CreateButton: TButton
        Left = 390
        Top = 5
        Width = 75
        Height = 23
        Hint = 'Create dataset'
        Caption = '&Create'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = CreateClientData
      end
      object CreateDataSetDesc: TComboBox
        Left = 10
        Top = 6
        Width = 201
        Height = 21
        ItemHeight = 0
        TabOrder = 0
        OnClick = CreateDataSetDescClick
        OnKeyPress = CreateDataSetDescKeyPress
      end
      object CreateFieldList: TListBox
        Left = 9
        Top = 33
        Width = 202
        Height = 80
        ItemHeight = 13
        TabOrder = 1
        OnClick = CreateFieldListClick
      end
      object CreateFieldType: TComboBox
        Left = 216
        Top = 45
        Width = 145
        Height = 21
        ItemHeight = 0
        TabOrder = 2
        OnChange = CreateFieldTypeChange
        OnDropDown = CreateFieldTypeDropDown
      end
      object UpDown1: TUpDown
        Left = 248
        Top = 69
        Width = 12
        Height = 21
        Associate = CreateFieldSize
        Min = 0
        Position = 0
        TabOrder = 7
        Wrap = False
      end
      object CreateFieldSize: TEdit
        Left = 216
        Top = 69
        Width = 32
        Height = 21
        TabOrder = 3
        Text = '0'
        OnChange = CreateFieldSizeChange
      end
      object CreateFieldParent: TComboBox
        Left = 215
        Top = 93
        Width = 147
        Height = 21
        ItemHeight = 0
        TabOrder = 5
        OnDropDown = CreateFieldParentDropDown
      end
      object CreateFieldRequired: TCheckBox
        Left = 270
        Top = 71
        Width = 67
        Height = 17
        Caption = 'Required'
        TabOrder = 4
      end
      object AddFieldButton: TButton
        Left = 248
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Add Field'
        TabOrder = 8
        TabStop = False
        OnClick = AddFieldButtonClick
      end
      object DataRows: TEdit
        Left = 430
        Top = 33
        Width = 49
        Height = 21
        TabOrder = 9
        Text = '12'
      end
      object SparseArrays2: TCheckBox
        Left = 375
        Top = 98
        Width = 97
        Height = 17
        Action = SparseArrays
        TabOrder = 10
      end
      object ObjectView2: TCheckBox
        Left = 375
        Top = 79
        Width = 77
        Height = 17
        Action = ObjectView
        State = cbChecked
        TabOrder = 11
      end
      object MixedData: TCheckBox
        Left = 374
        Top = 60
        Width = 97
        Height = 17
        Caption = 'Mixed Data'
        TabOrder = 12
      end
    end
    object FieldsPage: TTabSheet
      Caption = 'Fields'
      OnShow = FieldsPageShow
      object Label4: TLabel
        Left = 7
        Top = 4
        Width = 30
        Height = 13
        Caption = 'Fields:'
      end
      object Label5: TLabel
        Left = 239
        Top = 3
        Width = 47
        Height = 13
        Caption = 'FieldDefs:'
      end
      object FieldList: TMemo
        Left = 0
        Top = 18
        Width = 245
        Height = 98
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object FieldDefList: TMemo
        Left = 247
        Top = 18
        Width = 245
        Height = 98
        ScrollBars = ssVertical
        TabOrder = 1
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
        Left = 7
        Top = 17
        Width = 137
        Height = 71
        ItemHeight = 13
        TabOrder = 0
        OnClick = IndexListClick
      end
      object idxCaseInsensitive: TCheckBox
        Left = 347
        Top = 96
        Width = 109
        Height = 17
        Caption = 'Case Insensitive'
        TabOrder = 5
      end
      object idxDescending: TCheckBox
        Left = 347
        Top = 77
        Width = 86
        Height = 17
        Caption = 'Descending'
        TabOrder = 6
      end
      object CreateIndex: TButton
        Left = 332
        Top = 14
        Width = 130
        Height = 25
        Caption = 'Create Index'
        TabOrder = 4
        OnClick = CreateIndexClick
      end
      object DeleteIndex: TButton
        Left = 12
        Top = 92
        Width = 129
        Height = 25
        Caption = 'Delete Index'
        TabOrder = 9
        OnClick = DeleteIndexClick
      end
      object IndexFields: TEdit
        Left = 156
        Top = 17
        Width = 164
        Height = 21
        TabOrder = 1
      end
      object DescFields: TEdit
        Left = 156
        Top = 56
        Width = 164
        Height = 21
        TabOrder = 2
      end
      object CaseInsFields: TEdit
        Left = 156
        Top = 96
        Width = 164
        Height = 21
        TabOrder = 3
      end
      object idxPrimary: TCheckBox
        Left = 347
        Top = 43
        Width = 97
        Height = 17
        Caption = 'Primary'
        TabOrder = 7
      end
      object idxUnique: TCheckBox
        Left = 347
        Top = 60
        Width = 97
        Height = 17
        Caption = 'Unique'
        TabOrder = 8
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
      object foCaseInsensitive: TCheckBox
        Left = 28
        Top = 69
        Width = 97
        Height = 18
        Caption = 'Case Insensitive'
        TabOrder = 2
        OnClick = SetFilterOptions
      end
      object foNoPartialCompare: TCheckBox
        Left = 28
        Top = 92
        Width = 115
        Height = 18
        Caption = 'No Partial Compare'
        TabOrder = 3
        OnClick = SetFilterOptions
      end
      object FindFirst: TButton
        Left = 174
        Top = 50
        Width = 75
        Height = 25
        Caption = 'F&ind First'
        TabOrder = 4
        OnClick = FindFirstClick
      end
      object FindNext: TButton
        Left = 174
        Top = 84
        Width = 75
        Height = 25
        Caption = 'Find &Next'
        TabOrder = 5
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
      object StatusFilterBox: TGroupBox
        Left = 287
        Top = 9
        Width = 157
        Height = 86
        Caption = ' Status Filter'
        TabOrder = 6
        object ModifiedRecords: TCheckBox
          Left = 24
          Top = 18
          Width = 97
          Height = 17
          Caption = 'Modified records'
          TabOrder = 0
          OnClick = StatusFilterClick
        end
        object InsertedRecords: TCheckBox
          Left = 24
          Top = 39
          Width = 97
          Height = 17
          Caption = 'Inserted records'
          TabOrder = 1
          OnClick = StatusFilterClick
        end
        object DeletedRecords: TCheckBox
          Left = 24
          Top = 60
          Width = 97
          Height = 17
          Caption = 'Deleted records'
          TabOrder = 2
          OnClick = StatusFilterClick
        end
      end
    end
    object FindKeyPage: TTabSheet
      Caption = 'FindKey'
      OnShow = FindKeyPageInit
      object FindKeyGroupBox: TGroupBox
        Left = 7
        Top = 3
        Width = 319
        Height = 111
        Caption = ' FindKey/Nearest '
        TabOrder = 0
        object KeyFieldList: TLabel
          Left = 80
          Top = 23
          Width = 5
          Height = 13
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 20
          Top = 22
          Width = 51
          Height = 13
          Caption = 'Key Fields:'
        end
        object Label2: TLabel
          Left = 20
          Top = 41
          Width = 122
          Height = 13
          Caption = 'Values (comma delimited):'
        end
        object FindKey: TButton
          Left = 220
          Top = 29
          Width = 75
          Height = 25
          Caption = 'Find &Key'
          TabOrder = 3
          OnClick = FindKeyClick
        end
        object FindNearest: TButton
          Left = 220
          Top = 67
          Width = 75
          Height = 25
          Caption = 'Find Ne&arest'
          TabOrder = 4
          OnClick = FindKeyClick
        end
        object FindValue: TEdit
          Left = 20
          Top = 59
          Width = 179
          Height = 21
          TabOrder = 0
        end
        object KeyExclusive: TCheckBox
          Left = 19
          Top = 87
          Width = 104
          Height = 17
          Caption = 'Key Exclusive'
          TabOrder = 1
        end
        object FindPartial: TCheckBox
          Left = 122
          Top = 87
          Width = 72
          Height = 17
          Caption = 'Partial Key'
          TabOrder = 2
        end
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
          ItemHeight = 0
          Sorted = True
          TabOrder = 0
          OnDropDown = LocateFieldDropDown
        end
        object locCaseInsensitive: TCheckBox
          Left = 217
          Top = 67
          Width = 97
          Height = 18
          Caption = 'Case Insensitive'
          TabOrder = 4
        end
        object locPartialKey: TCheckBox
          Left = 217
          Top = 89
          Width = 97
          Height = 17
          Caption = 'Partial Key'
          TabOrder = 5
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
      object TestButton1: TButton
        Left = 10
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Test1'
        TabOrder = 0
        OnClick = TestButton1Click
      end
    end
  end
  object DataSetSelector: TTabControl
    Left = 5
    Top = 183
    Width = 500
    Height = 250
    Anchors = [akLeft, akTop, akRight, akBottom]
    Constraints.MinHeight = 250
    Constraints.MinWidth = 500
    TabOrder = 2
    Tabs.Strings = (
      'Data'
      'Delta'
      'Result'
      'Query'
      'Table')
    TabIndex = 0
    OnChange = DataSetSelectorChange
    object NavigatorPanel: TPanel
      Left = 4
      Top = 24
      Width = 492
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 1
        Width = 240
        Height = 25
        DataSource = MasterDataSource
        TabOrder = 0
      end
    end
    object BlobCtrlPanel: TPanel
      Left = 311
      Top = 51
      Width = 185
      Height = 195
      Align = alRight
      BevelOuter = bvNone
      BorderWidth = 2
      TabOrder = 2
      Visible = False
      object DBMemo1: TDBMemo
        Left = 2
        Top = 2
        Width = 181
        Height = 96
        Align = alClient
        DataSource = MasterDataSource
        PopupMenu = PopupMenu1
        TabOrder = 0
      end
      object DBImage1: TDBImage
        Left = 2
        Top = 98
        Width = 181
        Height = 95
        Align = alBottom
        DataSource = MasterDataSource
        PopupMenu = PopupMenu1
        TabOrder = 1
      end
    end
    object GridPanel: TPanel
      Left = 4
      Top = 51
      Width = 307
      Height = 195
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 2
      TabOrder = 1
      object GridSplitter: TSplitter
        Left = 2
        Top = 96
        Width = 303
        Height = 2
        Cursor = crVSplit
        Align = alBottom
        Visible = False
      end
      object DetailGrid: TDBGrid
        Left = 2
        Top = 98
        Width = 303
        Height = 95
        Align = alBottom
        DataSource = DetailDataSource
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
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
        Width = 303
        Height = 94
        Align = alClient
        DataSource = MasterDataSource
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColEnter = GridColEnter
        OnEnter = GridSetFocus
        OnTitleClick = GridTitleClick
      end
    end
  end
  object Events: TListBox
    Left = 511
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
    Width = 679
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
    object CloseActiveButton: TToolButton
      Left = 46
      Top = 0
      Action = CloseActiveDataSet
    end
    object ToolButton3: TToolButton
      Left = 69
      Top = 0
      Width = 14
      Caption = 'ToolButton3'
      ImageIndex = 11
      Style = tbsSeparator
    end
    object LoadPacketButton: TToolButton
      Left = 83
      Top = 0
      Action = LoadDataPacket
    end
    object SavePacketButton: TToolButton
      Left = 106
      Top = 0
      Action = SaveDataPacket
    end
    object ToolButton5: TToolButton
      Left = 129
      Top = 0
      Width = 14
      Caption = 'ToolButton5'
      ImageIndex = 1
      Style = tbsDivider
    end
    object ApplyUpdatesButton: TToolButton
      Left = 143
      Top = 0
      Action = ApplyUpdates
    end
    object ToolButton8: TToolButton
      Left = 166
      Top = 0
      Width = 14
      Caption = 'ToolButton8'
      ImageIndex = 1
      Style = tbsDivider
    end
    object GetNextButton: TToolButton
      Left = 180
      Top = 0
      Action = GetNextPacket
    end
    object ToolButton2: TToolButton
      Left = 203
      Top = 0
      Width = 14
      Caption = 'ToolButton2'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object UndoButton: TToolButton
      Left = 217
      Top = 0
      Action = UndoLastEdit
    end
    object RevertButton: TToolButton
      Left = 240
      Top = 0
      Action = RevertRecord
    end
    object CancelUpdatesButton: TToolButton
      Left = 263
      Top = 0
      Action = CancelUpdates
    end
    object ClearFieldButton: TToolButton
      Left = 286
      Top = 0
      Action = ClearField
    end
    object ToolButton13: TToolButton
      Left = 309
      Top = 0
      Width = 14
      Caption = 'ToolButton13'
      ImageIndex = 21
      Style = tbsSeparator
    end
    object ToolButton1: TToolButton
      Left = 323
      Top = 0
      Action = ClearEventLog
    end
  end
  object MasterDataSource: TDataSource
    DataSet = ClientData
    OnStateChange = DataSourceStateChange
    OnDataChange = DataSourceDataChange
    OnUpdateData = DataSourceUpdateData
    Left = 19
    Top = 306
  end
  object MasterQuery: TQuery
    BeforeOpen = DataSetBeforeOpen
    AfterOpen = MasterQueryAfterOpen
    BeforeClose = MasterQueryBeforeClose
    AfterClose = DataSetAfterClose
    DatabaseName = 'ALCHDB'
    RequestLive = True
    SQL.Strings = (
      'select * from customer')
    Left = 555
    Top = 269
  end
  object ClientData: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BDEProvider'
    BeforeOpen = DataSetBeforeOpen
    AfterOpen = ClientDataAfterOpen
    AfterClose = ClientDataAfterClose
    BeforeInsert = ClientDataBeforeInsert
    AfterInsert = ClientDataAfterInsert
    BeforeEdit = ClientDataBeforeEdit
    AfterEdit = ClientDataAfterEdit
    BeforePost = ClientDataBeforePost
    AfterPost = ClientDataAfterPost
    BeforeCancel = ClientDataBeforeCancel
    AfterCancel = ClientDataAfterCancel
    BeforeDelete = ClientDataBeforeDelete
    AfterDelete = ClientDataAfterDelete
    BeforeScroll = ClientDataBeforeScroll
    AfterScroll = ClientDataAfterScroll
    OnCalcFields = ClientDataCalcFields
    OnDeleteError = ClientDataDeleteError
    OnNewRecord = ClientDataNewRecord
    OnReconcileError = ClientDataReconcileError
    Left = 555
    Top = 335
  end
  object DeltaSet: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeOpen = DataSetBeforeOpen
    Left = 520
    Top = 368
  end
  object BDEProvider: TDataSetProvider
    DataSet = MasterTable
    ResolveToDataSet = True
    OnDataRequest = BDEProviderDataRequest
    OnGetData = BDEProviderGetData
    OnUpdateData = BDEProviderUpdateData
    OnUpdateError = BDEProviderUpdateError
    AfterUpdateRecord = BDEProviderAfterUpdateRecord
    BeforeUpdateRecord = BDEProviderBeforeUpdateRecord
    OnGetDataSetProperties = BDEProviderGetDataSetProperties
    Left = 520
    Top = 335
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'cds'
    Filter = 
      'Data packet (*.cds;*.ds;*.xml)|*.cds;*.ds;*.xml|Delphi form (*.d' +
      'fm)|*.dfm|All Files (*.*)|*.*'
    Options = [ofOverwritePrompt]
    Title = 'Load DataSet'
    Left = 555
    Top = 65
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'cds'
    Filter = 
      'Datapacket (*.cds,*.ds)|*.cds;*.ds|XML Datapacket (*.xml)|*.xml|' +
      'Delphi form (*.dfm)|*.dfm|All Files (*.*)|*.*'
    Options = [ofOverwritePrompt]
    Title = 'Save Dataset'
    Left = 555
    Top = 99
  end
  object MasterTable: TTable
    BeforeOpen = DataSetBeforeOpen
    AfterOpen = MasterTableAfterOpen
    BeforeClose = MasterTableBeforeClose
    AfterClose = MasterTableAfterClose
    BeforeScroll = MasterTableBeforeScroll
    AfterScroll = MasterTableAfterScroll
    DatabaseName = 'ALCHDB'
    TableName = 'CUSTOLY.DB'
    Left = 555
    Top = 204
  end
  object ResultSet: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeOpen = DataSetBeforeOpen
    Left = 520
    Top = 400
  end
  object Database1: TDatabase
    AliasName = 'DBDEMOS'
    DatabaseName = 'ALCHDB'
    HandleShared = True
    LoginPrompt = False
    Params.Strings = (
      'password=betty'
      'USER NAME=zombie')
    SessionName = 'Default'
    Left = 520
    Top = 204
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
    DataSet = DetailDataSet
    OnStateChange = DataSourceStateChange
    OnDataChange = DataSourceDataChange
    OnUpdateData = DataSourceUpdateData
    Left = 19
    Top = 393
  end
  object MainMenu1: TMainMenu
    Left = 520
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
      object FileReopen: TMenuItem
        Caption = 'Reopen'
        object ReopenHolder: TMenuItem
          Caption = 'PlaceHolder'
        end
      end
      object ExecuteQuery1: TMenuItem
        Action = ExecuteQuery
      end
      object CloseActiveDataset1: TMenuItem
        Action = CloseActiveDataSet
      end
      object ClearPasswords1: TMenuItem
        Action = ClearPasswords
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object LoadDatapacket1: TMenuItem
        Caption = '&Open data packet...'
        ShortCut = 16463
        OnClick = LoadDatapacket1Click
      end
      object SaveDataPacket1: TMenuItem
        Action = SaveDataPacket
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
      object ApplyUpdates1: TMenuItem
        Action = ApplyUpdates
      end
      object Mergechangelog1: TMenuItem
        Action = MergeChangeLog
      end
      object CancelUpdates1: TMenuItem
        Action = CancelUpdates
      end
      object GetNextPacket1: TMenuItem
        Action = GetNextPacket
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object UndoLastEdit1: TMenuItem
        Action = UndoLastEdit
      end
      object RevertRecord1: TMenuItem
        Action = RevertRecord
      end
      object ClearField1: TMenuItem
        Action = ClearField
      end
      object RefreshData1: TMenuItem
        Action = RefreshData
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object GetSavepoint1: TMenuItem
        Action = GetSavePoint
      end
      object Reverttosavepoint1: TMenuItem
        Action = RevertToSavepoint
      end
    end
    object ViewMenu: TMenuItem
      Caption = '&View'
      object DisplayDetailTable1: TMenuItem
        Action = DisplayDetails
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
      object Provider1: TMenuItem
        Caption = '&Provider Options'
        object Delayeddetails1: TMenuItem
          Action = poDelayedDetails
        end
        object Delayedblobs1: TMenuItem
          Action = poDelayedBlobs
        end
        object Cascadeddeletes2: TMenuItem
          Action = poCascadedDeletes
        end
        object Cascadedupdates2: TMenuItem
          Action = poCascadedUpdates
        end
        object Includefieldprops1: TMenuItem
          Action = poIncludeFieldProps
        end
        object Readonly1: TMenuItem
          Action = poReadOnly
        end
        object N6: TMenuItem
          Caption = '-'
        end
        object ResolvetoDataset1: TMenuItem
          Action = ResolveToDataSet
        end
      end
      object RequestLiveQueries1: TMenuItem
        Action = RequestLiveQuery
      end
      object SparseArray31: TMenuItem
        Action = SparseArrays
      end
      object ObjectView3: TMenuItem
        Action = ObjectView
      end
      object IncludeNestedObject1: TMenuItem
        Action = IncludeNestedObject
      end
      object SetReferenceTableName1: TMenuItem
        Action = SetRefTableName
      end
      object EnableBCD1: TMenuItem
        Action = EnableBCD
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object DisableProvider1: TMenuItem
        Action = DisableProvider
      end
      object Fetchondemand1: TMenuItem
        Action = FetchOnDemand
      end
      object LogChanges1: TMenuItem
        Action = LogChanges
      end
      object SetPacketRecords1: TMenuItem
        Action = SetPacketRecords
      end
      object SetMaxErrors1: TMenuItem
        Action = SetMaxErrors
      end
      object UseXMLDataPackets1: TMenuItem
        Action = XMLDataPackets
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
    Left = 521
    Top = 132
    object ApplyUpdates: TAction
      Category = 'Edit'
      Caption = '&Apply Updates'
      Hint = 'Apply pending updates to the server'
      ImageIndex = 3
      ShortCut = 16449
      OnExecute = ApplyUpdatesExecute
      OnUpdate = EditActionsUpdate
    end
    object MergeChangeLog: TAction
      Category = 'Edit'
      Caption = '&Merge change log'
      Hint = 'Merge changes in the change log without applying the updates'
      OnExecute = MergeChangeLogExecute
    end
    object DisableProvider: TAction
      Category = 'Settings'
      Caption = 'Disable Provider'
      Hint = 'Disable Provider (just open Table or Query)'
      OnExecute = BooleanActionExecute
    end
    object CancelUpdates: TAction
      Category = 'Edit'
      Caption = '&Cancel Updates'
      Hint = 'Cancel pending updates'
      ImageIndex = 9
      OnExecute = CancelUpdatesExecute
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
    object FetchOnDemand: TAction
      Category = 'Settings'
      Caption = 'Fetch on demand'
      Checked = True
      Hint = 'Specify FetchOnDemand client dataset option'
      OnExecute = BooleanActionExecute
    end
    object LoadDataPacket: TAction
      Category = 'File'
      Caption = 'Load data packet...'
      Hint = 'Load a saved data packet from disk'
      ImageIndex = 10
      ShortCut = 16460
    end
    object GetSavePoint: TAction
      Category = 'Edit'
      Caption = '&Get Savepoint'
      Hint = 'Set a savepoint'
      OnExecute = GetSavePointExecute
    end
    object RevertToSavepoint: TAction
      Category = 'Edit'
      Caption = '&Revert to Savepoint'
      Hint = 'Revert to the last savepoint'
      OnExecute = RevertToSavepointExecute
    end
    object CloseActiveDataSet: TAction
      Category = 'File'
      Caption = '&Close Active Dataset'
      Hint = 'Close the active dataset'
      ImageIndex = 2
      OnExecute = CloseActiveDataSetExecute
      OnUpdate = FileActionsUpdate
    end
    object SaveDataPacket: TAction
      Category = 'File'
      Caption = '&Save data packet...'
      Hint = 'Save data packet to a file'
      ImageIndex = 11
      ShortCut = 16467
      OnExecute = SaveDataPacketExecute
    end
    object ExitApplication: TAction
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit the application'
      ShortCut = 32856
      OnExecute = ExitApplicationExecute
    end
    object RequestLiveQuery: TAction
      Category = 'Settings'
      Caption = '&RequestLive Queries'
      Checked = True
      Hint = 'Specify RequestLive property for queries'
      OnExecute = BooleanActionExecute
    end
    object SparseArrays: TAction
      Category = 'Settings'
      Caption = 'Sparse &Arrays'
      Hint = 'Specify SparseArrays property for datasets'
      OnExecute = BooleanActionExecute
    end
    object ObjectView: TAction
      Category = 'Settings'
      Caption = '&Object View'
      Checked = True
      Hint = 'Specify ObjectView property for datasets'
      OnExecute = BooleanActionExecute
    end
    object EnableBCD: TAction
      Category = 'Settings'
      Caption = 'Enable &BCD'
      Hint = 'Specify EnableBCD option for Database'
      OnExecute = EnableBCDExecute
    end
    object ResolveToDataSet: TAction
      Category = 'Settings'
      Caption = '&Resolve to Dataset'
      Hint = 'Specify ResolveToDataSet provider setting'
      OnExecute = BooleanActionExecute
    end
    object poCascadedDeletes: TAction
      Category = 'ProviderOptions'
      Caption = 'Cascaded deletes'
      Hint = 'Specify poCascadeDeletes provider option'
      OnExecute = BooleanActionExecute
    end
    object poCascadedUpdates: TAction
      Category = 'ProviderOptions'
      Caption = 'Cascaded updates'
      Hint = 'Specify poCascadeUpdates provider option'
      OnExecute = BooleanActionExecute
    end
    object poDelayedDetails: TAction
      Category = 'ProviderOptions'
      Caption = 'Delayed details'
      Checked = True
      Hint = 'Specify poFetchDetailOnDemand fetch provider option'
      OnExecute = BooleanActionExecute
    end
    object poDelayedBlobs: TAction
      Category = 'ProviderOptions'
      Caption = 'Delayed blobs'
      Checked = True
      Hint = 'Specify poFetchBlobsOnDemand provider option'
      OnExecute = BooleanActionExecute
    end
    object poIncludeFieldProps: TAction
      Category = 'ProviderOptions'
      Caption = 'Include field props'
      Hint = 'Specify poIncludeFieldProps provider option'
      OnExecute = BooleanActionExecute
    end
    object poReadOnly: TAction
      Category = 'ProviderOptions'
      Caption = 'Read only'
      Hint = 'Specify poReadOnly provider option'
      OnExecute = BooleanActionExecute
    end
    object LogChanges: TAction
      Category = 'Settings'
      Caption = '&Log Changes'
      Checked = True
      Hint = 'Enable or disable change log'
      OnExecute = LogChangesExecute
    end
    object ExecuteQuery: TAction
      Category = 'File'
      Caption = '&Execute Query'
      Hint = 'Execute the current query'
      ShortCut = 16453
      OnExecute = OpenQueryExecute
    end
    object StreamFormOut: TAction
      Category = 'File'
      Caption = 'Stream &Form Out...'
      Hint = 'Stream for to a form file'
      OnExecute = StreamFormOutExecute
    end
    object StreamFormIn: TAction
      Category = 'File'
      Caption = 'Stream Form &In...'
      Hint = 'Stream in form file'
      OnExecute = StreamFormInExecute
    end
    object UndoLastEdit: TAction
      Category = 'Edit'
      Caption = '&Undo Last Edit'
      Hint = 'Undo most recent edit'
      ImageIndex = 4
      OnExecute = UndoLastEditExecute
    end
    object RevertRecord: TAction
      Category = 'Edit'
      Caption = '&Revert Record'
      Hint = 'Revert changes to the current record'
      ImageIndex = 5
      OnExecute = RevertRecordExecute
    end
    object ClearField: TAction
      Category = 'Edit'
      Caption = '&Clear Field'
      Hint = 'Set the current field to Null'
      ImageIndex = 6
      OnExecute = ClearFieldExecute
    end
    object GetNextPacket: TAction
      Category = 'Edit'
      Caption = 'Get &Next Packet'
      Hint = 'Retrieve next data packet'
      ImageIndex = 8
      OnExecute = GetNextPacketExecute
    end
    object SetMaxErrors: TAction
      Category = 'Edit'
      Caption = 'Set Max Errors...'
      Hint = 'Specify a value for the MaxErrors parameter of ApplyUpdates'
      OnExecute = SetMaxErrorsExecute
    end
    object SetPacketRecords: TAction
      Category = 'Edit'
      Caption = '&Set Packet Records...'
      Hint = 'Specify the a value for PacketRecords property'
      OnExecute = SetPacketRecordsExecute
    end
    object ViewEvents: TAction
      Category = 'View'
      Caption = '&Events'
      Hint = 'Display event information'
      OnExecute = ViewEventsExecute
    end
    object IncludeNestedObject: TAction
      Category = 'Settings'
      Caption = '&Include Nested Object'
      Hint = 'Include ADT Field in nested datasets'
      OnExecute = BooleanActionExecute
    end
    object DisplayDetails: TAction
      Category = 'View'
      Caption = '&Display Detail Table'
      Checked = True
      Hint = 'Display detail or nested table in the lower grid'
      OnExecute = BooleanActionExecute
    end
    object SetRefTableName: TAction
      Category = 'Settings'
      Caption = 'Set ReferenceTableName...'
      Hint = 
        'Set the ReferenceTableName property for inserts on a nested refe' +
        'rence table.'
      OnExecute = SetRefTableNameExecute
    end
    object RefreshData: TAction
      Category = 'Settings'
      Caption = 'Re&fresh Data'
      OnExecute = RefreshDataExecute
    end
    object ClearEventLog: TAction
      Category = 'View'
      Caption = '&Clear Event Log'
      ImageIndex = 7
      OnExecute = ClearEventLogExecute
      OnUpdate = ClearEventLogUpdate
    end
    object HelpAbout: TAction
      Caption = 'HelpAbout'
      Hint = 'Display About Box'
      OnExecute = HelpAboutExecute
    end
    object ClearPasswords: TAction
      Category = 'File'
      Caption = 'Clear &Passwords'
      Hint = 'Clear the list of saved passwords'
      OnExecute = ClearPasswordsExecute
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
    object XMLDataPackets: TAction
      Category = 'Settings'
      Caption = 'Use &XML Data Packets'
      OnExecute = BooleanActionExecute
    end
  end
  object DetailDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeOpen = DataSetBeforeOpen
    BeforeClose = ClientDataBeforeDelete
    AfterClose = ClientDataAfterClose
    BeforeInsert = ClientDataBeforeInsert
    AfterInsert = ClientDataAfterInsert
    BeforeEdit = ClientDataBeforeEdit
    AfterEdit = ClientDataAfterEdit
    BeforePost = ClientDataBeforePost
    AfterPost = ClientDataAfterPost
    BeforeCancel = ClientDataBeforeCancel
    AfterCancel = ClientDataAfterCancel
    AfterDelete = ClientDataAfterDelete
    BeforeScroll = ClientDataBeforeScroll
    AfterScroll = ClientDataAfterScroll
    OnCalcFields = ClientDataCalcFields
    OnDeleteError = ClientDataDeleteError
    OnNewRecord = ClientDataNewRecord
    Left = 555
    Top = 367
  end
  object DetailTable: TTable
    BeforeOpen = DataSetBeforeOpen
    DatabaseName = 'ALCHDB'
    StoreDefs = True
    Left = 555
    Top = 237
  end
  object DetailMasterSource: TDataSource
    DataSet = MasterTable
    Left = 520
    Top = 237
  end
  object DetailQuery: TQuery
    DatabaseName = 'ALCHDB'
    DataSource = DetailQuerySource
    Left = 555
    Top = 301
  end
  object DetailQuerySource: TDataSource
    Left = 520
    Top = 301
  end
  object ImageList1: TImageList
    Left = 555
    Top = 134
    Bitmap = {
      494C01010C000F00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000007B4A730000214A0000423900EF00
      210084002100A5EF6B0000C64A00ADAD6B004A8C730029AD6B009C0821006B00
      21008C00210021EF6B00CE000000000000000000000018000000FF1821000000
      21000000210000E773004A8C730042082100A5085200084A730008AD6B004221
      4200218C63004A00210021EF6B005A000000000000000000000018000000FF18
      210000002100000021000042630029EF63004ACE6B0094000000000000000000
      000018000000FF1821000000210000002100000021000084520029AD6B008408
      2100D6A5390000003100DE214200DE000000000000000000000018000000FF18
      210000002100000021000000210000216B00B5AD6300946B73004AEF6B007308
      2100EF00210094002100A5086B0029CE6B008C00000000000000000000001800
      0000FF18210000002100000021000042520029296300214A4200ADCE630031AD
      63009408290073AD73006B294A00A5AD63006B6B7300630021009C296B00D6AD
      63007BCE630042C64A00ADAD6B004A8C730029AD6B009C2929004A002100298C
      6B009CAD6300F7000000000000000000000018000000FF182100000021000000
      21000042520029296300214A4200ADCE630031AD63009408290073AD73006B29
      4A00A5AD63006B6B73006300210094212900DEA5630008000000000000000000
      000018000000FF1821000000210000C66300738C2900006352004A4A7B0029EF
      4A0031082900B5AD6300946B73004AEF6B00732929004A633900BD0000000000
      00000000000018000000FF1821000000210000216B0031082100B5AD6300946B
      73004AEF6B0073082100F700210094002100A5086B0029CE6B0000844200088C
      7300084A6300086B730029AD4200944A73007B4A7300426352004ACE6B00B529
      630063296B0021CE5200294A73009C296B007BCE6B004A633900940000000000
      00000000000018000000FF1821000000210000C64A00ADAD6B004A8C730029AD
      6B009C082100D6A5390000003100DE002100BD00000000000000000000001800
      0000FF1821000000210000216B0031082100000000000000000018000000FF18
      2100004242007BEF6B00634A3900004242007BEF6B0063AD630008CE6B00DEE7
      630029000000000000000000000018000000FF5A630029EF63004ACE6B004200
      0000000000000000000018000000FF1821000063420063AD6300084A7300DE42
      420084000000000000000000000018000000FF18210000E773004A8C73004208
      21009C8C730094AD630008AD6B00008463007BEF630039000000000000000000
      000018000000FF1821000042630029EF63004ACE6B004A000000000000000000
      000018000000FF182100000021000042520029296300214A4200ADCE630031AD
      630094082900B5AD6300946B73004AEF6B00FF18210000214A0063002100A5AD
      63006B0873006300210073AD73006B294A00A5AD63006B6B7300D60021004ACE
      6B00A5AD630039AD6300946B390008000000000000000000000018000000FF18
      210000424200ADCE630031AD6300944A390000216300944A730008297B00DE08
      310073C6290094003100A5E73100EF0821007BCE63000063420042296300946B
      390094000000000000000000000018000000FF1821000084520029AD6B00846B
      5200A54A7300D60021009C8C730094296B0073EF6300DEC62900840000000000
      00000000000018000000FF18210000C65200294A73009C296B007BCE6B00D600
      2100BDEF6B00948C6300DEE763008400000010296B007329630094297B002129
      6300A52963006300210073296B00638C290000C64200088C6B009CAD63004A63
      390021000000000000000000000018000000FFBD6300738C6300DE846B000000
      0000000000000000000018000000FF1800009400000000000000000000001800
      0000FF18730094EF6B0018AD630021AD730094AD630000845200842963009429
      63006B6B73007342520029296300214A42004ACE6B00084A7300CE8C4200088C
      7300080829009C8C730094AD630008AD6B00D6002100A56B5200A54A73002929
      63006B292900DE21630018000000000000000000000018000000FFDE7300084A
      7300EF0000000000000000000000180000009C08290031296B0063AD6300944A
      39000084520031296B0063AD630094292900DEC66B0029000000000000000000
      000018000000FF5A630029EF63004ACE6B002100000000000000000000001800
      0000FF18210000216B0073086B00294A73004A8C7300298C63000084420029CE
      63004ACE6B002908520094EF6B0084AD6300948C73004AAD63009C0829003129
      6B0063AD630094292900DE216B0008080000000000000000000018000000FF18
      210000C642004A8C6B00294A73007384420029CE63004ACE6B00294A42004ACE
      6B00084A7300CE08520094EF6B0084AD6300948C7300CE08290039844200088C
      730008EF21006300210094AD6300088C6300088C6B00ADAD63004A002100EF00
      210084002100A5086B0029CE6B0000A54200C6296B00A56B3900310000000000
      00000000000018000000FF18210000A56300738C6300DE002100840000000000
      00000000000018000000FF18210000425200296B7300AD8C6B00A5082100D6A5
      390000C66B004A8C6B00DE42730021000000000000000000000018000000FFBD
      6300738C6300DE63730000000000000000000000000018000000FF1800009400
      0000000000000000000018000000FF18730094EF6B0018AD630021AD730094AD
      63000084520084296300942963006B6B73007384420029CE63004ACE6B002908
      520094EF6B0084AD6300948C73004AAD6300A5EF6B00006342007BAD7300738C
      730000A5290000213100008463007BEF6B003900000000000000000000001800
      0000FF1821000042630029EF63004ACE6B004A00000000000000000000001800
      0000FF1821000000210000425200296B7300AD8C6B00A5082100D6A539000084
      520084296300942963006B0829004ACE6B0042AD630094296B00A5AD63002108
      21004A8C730029AD6B009C6B5A004AAD5A004A633900CE000000000000000000
      000018000000FF1821000000210000216B003108210008CE6B009C296B0018EF
      6B006B087300084A7300298C520029087B00A508290094AD63009CAD7300638C
      730073C64A0008AD6B00298C290000C65200FFDE6300ADCE6B00188C73004AEF
      6B0073082100A5085200084A730008AD6B009CCE290031296B00738C63008429
      6300942963006B08290018EF6B00736B7300A5082100B529630063AD7300294A
      390000637300A54A73004ACE6B0039292900D6002100A5085200084A730008AD
      6B00DE21630018000000000000000000000018000000FFDE7300084A73006B00
      0000000000000000000018000000FF18210000214A00D60021004ACE6B00A5AD
      630039AD6300946B390029000000000000000000000018000000FF5A630029EF
      63004ACE6B00E7000000000000000000000018000000FF18210000C663007B4A
      730000214A0000423900EF002100840021000000000000000000000000000000
      000000000000000000000000000000000000219C000000000000390021000000
      0000F7000000000000000000000018000000FF1821000000210000844200088C
      7300084A6300086B730029AD4200944A73007B4A730031AD6B00A50829009C08
      5200084A730008AD6B00298C7300294A730073EF6B00A5CE42007BAD7300738C
      630063002100DECE5200088C6B00ADAD6300EF8C290000E74200298C73002129
      6300A52963009CAD6300A5292900DE2163002100000000000000000000001800
      0000FFBD6300738C6300DE84420000000000000000000000000018000000FF18
      0000C60000000000000000000000180000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD0000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF007B0000007B0000007B0000007B00
      0000FFFFFF00BDBDBD0000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      000000000000BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000C6C6C60084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000000000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C6000000FF000000FF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084848400000000000000000000000000000000000000
      000000000000BDBDBD0000000000FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF0000000000000000000000000000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000FFFFFF00C6C6C6000000FF000000
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000FF000000FF00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00BDBDBD00FFFF
      FF00FFFFFF007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00BDBDBD00FFFFFF00FFFF
      FF00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF007B7B7B00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF007B7B7B00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00BDBDBD00BDBDBD00FFFF
      FF00FFFFFF00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF007B7B7B0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000FFFF007B7B7B0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00BDBDBD00FFFFFF00FFFF
      FF00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000848484000000
      00000000000000000000000000000000000000FFFF007B7B7B00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF007B7B7B00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000008484840000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000008484840000000000000000000000
      00000000000000000000000000000000000000FFFF007B7B7B0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000FFFF007B7B7B0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF007B7B7B00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF007B7B7B00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
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
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD0000000000000000000000000000000000848484008484
      8400848484007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B008484840084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B0000007B0000007B0000007B00FFFFFF00000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF007B7B7B000000FF00FF00FF00FF00FF007B007B0000007B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD0000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF00FF00FF000000FF00FF00FF00FF00FF007B007B0000007B00FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000BDBDBD000000
      0000FFFFFF00848484008484840084848400FFFFFF0084000000840000008400
      000084000000C6C6C60000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF0084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FF00FF000000FF00FFFFFF000000FF00FF00FF00FF00FF007B007B000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000C6C6C60000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF0084848400000000000000000000000000FFFFFF0000000000FFFF
      FF000000FF00FF00FF00FFFFFF00FF00FF000000FF00FF00FF00000000007B7B
      000000000000FFFFFF00FFFFFF00000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000C6C6C60000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF00FF00FF00FFFFFF00FF00FF0000000000007B00007B00
      00007B7B000000000000007B7B00000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFF
      FF0084000000C6C6C60000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF000000FF00FF00FF000000000000FF0000007B0000007B
      00007B0000007B7B000000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000BDBDBD000000
      0000FFFFFF00000000000000000000000000FFFFFF0084000000840000008400
      000084000000C6C6C60000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FF000000FFFF0000FF0000007B
      0000007B0000000000007B7B7B00000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFF
      FF00FFFFFF00BDBDBD0000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF0084848400000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000FF000000FFFF0000FF
      0000000000007B0000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD0000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF0084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF00000000
      0000BDBDBD0000FFFF007B0000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00FFFFFF0000FFFF0000FFFF007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00C6C6C600C6C6
      C600FFFFFF00BDBDBD0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400000000000000000000000000BDBDBD0000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000FFFFFF00FFFFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007B7B00007B7B00007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B0000000000007B7B00007B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B00BDBDBD00FFFFFF00FFFFFF007B7B7B000000
      0000000000000000000000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00FFFFFF00FFFFFF00BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000008484000084840000848400008484000084840000848400008484000084
      84000084840000848400000000000000000000000000FFFFFF007BFFFF000000
      0000397B7B00397B7B00397B7B00397B7B00397B7B00397B7B00397B7B00397B
      7B00008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00BDBDBD00FFFFFF00FFFFFF00BDBDBD000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000848400000000000000000000FFFF00FFFFFF000000
      0000397B7B00397B7B00397B7B00397B7B00397B7B00397B7B00397B7B00397B
      7B00008484000084840000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00FFFFFF00FFFFFF00BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000084840000848400008484000084
      84000084840000848400008484000000000000000000FFFFFF007BFFFF00FFFF
      FF0000000000000000000000000000000000397B7B00397B7B00397B7B00397B
      7B00008484000084840000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF007BFF
      FF00FFFFFF007BFFFF0084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD000000
      00000000000000000000000000000000000000000000FFFFFF0000000000BDBD
      BD0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD0000000000000000000000000000000000FFFFFF007BFFFF00FFFF
      FF007BFFFF00FFFFFF00840000008400000084000000FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF0000000000FFFFFF007B0000007B0000007B0000007B0000007B000000FFFF
      FF00BDBDBD000000000000000000000000000000000000FFFF00FFFFFF007BFF
      FF00FFFFFF007BFFFF00FFFFFF00840000008400000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF007B0000007B0000007B0000007B0000007B000000FFFF
      FF00BDBDBD000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFF
      FF00BDBDBD000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F0010000FFFFF000F00100000007F800
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
  object NestedTable: TNestedTable
    BeforeInsert = NestedTableBeforeInsert
    Left = 520
    Top = 269
  end
end
