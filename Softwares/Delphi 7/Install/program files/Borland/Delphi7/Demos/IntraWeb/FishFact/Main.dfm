object formMain: TformMain
  Left = 0
  Top = 0
  Width = 758
  Height = 467
  Visible = False
  Background.Fixed = False
  HandleTabs = False
  Title = 'FishFact Edit Demo'
  SupportedBrowsers = [brIE, brNetscape6]
  OnCreate = IWFormModuleBaseCreate
  DesignLeft = 310
  DesignTop = 119
  object IWDBImage1: TIWDBImage
    Left = 8
    Top = 32
    Width = 281
    Height = 145
    ZIndex = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    UseBorder = False
    UseSize = True
    JpegOptions.CompressionQuality = 90
    JpegOptions.Performance = jpBestSpeed
    JpegOptions.ProgressiveEncoding = False
    JpegOptions.Smoothing = True
    DataField = 'Graphic'
    DataSource = dsrcMain
  end
  object IWDB3Navigator1: TIWDBNavigator
    Left = 266
    Top = 0
    Width = 230
    Height = 25
    Anchors = [akTop]
    ZIndex = 0
    Confirmations.Delete = 'Are you sure you want to delete this record?'
    Confirmations.Post = 'Are you sure you want to update this record?'
    Confirmations.Cancel = 'Are you sure you want to cancel your changes to this record?'
    DataSource = dsrcMain
    ImageHeight = 21
    ImageWidth = 21
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Orientation = orHorizontal
  end
  object dgrdFish: TIWDBGrid
    Left = 301
    Top = 32
    Width = 452
    Height = 145
    Anchors = [akLeft, akTop, akRight]
    ZIndex = 0
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 1
    BorderStyle = tfDefault
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clWindowText
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    OnRenderCell = dgrdFishRenderCell
    UseFrame = True
    UseWidth = True
    Columns = <
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clWindowText
        Font.Enabled = True
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        VAlign = vaMiddle
        Visible = True
        Width = '35%'
        Wrap = False
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'Common_Name'
        LinkField = 'Species No'
        OnClick = IWDBGrid1Columns0Click
        OnTitleClick = IWDBGrid1Columns0TitleClick
        Title.Alignment = taCenter
        Title.BGColor = clSilver
        Title.DoSubmitValidation = True
        Title.Font.Color = clWindowText
        Title.Font.Enabled = True
        Title.Font.Size = 10
        Title.Font.Style = [fsBold]
        Title.Header = True
        Title.Height = '0'
        Title.Text = 'Common Name'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
      end
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clWindowText
        Font.Enabled = True
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        VAlign = vaMiddle
        Visible = True
        Width = '25%'
        Wrap = False
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'Category'
        OnTitleClick = IWDBGrid1Columns0TitleClick
        Title.Alignment = taCenter
        Title.BGColor = clSilver
        Title.DoSubmitValidation = True
        Title.Font.Color = clWindowText
        Title.Font.Enabled = True
        Title.Font.Size = 10
        Title.Font.Style = [fsBold]
        Title.Header = True
        Title.Height = '0'
        Title.Text = 'Category'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
      end
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clWindowText
        Font.Enabled = True
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        VAlign = vaMiddle
        Visible = True
        Width = '40%'
        Wrap = False
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'Species Name'
        OnTitleClick = IWDBGrid1Columns0TitleClick
        Title.Alignment = taCenter
        Title.BGColor = clSilver
        Title.DoSubmitValidation = True
        Title.Font.Color = clWindowText
        Title.Font.Enabled = True
        Title.Font.Size = 10
        Title.Font.Style = [fsBold]
        Title.Header = True
        Title.Height = '0'
        Title.Text = 'Species Name'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
      end>
    DataSource = dsrcMain
    FooterRowCount = 1
    FromStart = True
    HighlightColor = clHighlightText
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 0
    RollOver = False
    RowClick = False
    RollOverColor = clHighlight
    RowHeaderColor = clNone
    RowAlternateColor = clNone
    RowCurrentColor = clNone
  end
  object Label1: TIWLabel
    Left = 304
    Top = 192
    Width = 39
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Notes'
  end
  object Label2: TIWLabel
    Left = 8
    Top = 192
    Width = 102
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Length (Inches):'
  end
  object Label3: TIWLabel
    Left = 144
    Top = 192
    Width = 137
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Length (Centimeters):'
  end
  object Label4: TIWLabel
    Left = 8
    Top = 248
    Width = 102
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Species Name:'
  end
  object Label5: TIWLabel
    Left = 8
    Top = 304
    Width = 106
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Common Name:'
  end
  object Label6: TIWLabel
    Left = 8
    Top = 360
    Width = 63
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Category:'
  end
  object DBEdit1: TIWDBEdit
    Left = 8
    Top = 216
    Width = 64
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = False
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'TIWDBEdit1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 0
    AutoEditable = True
    DataField = 'Length_In'
    DataSource = dsrcMain
    PasswordPrompt = False
  end
  object DBEdit2: TIWDBEdit
    Left = 144
    Top = 216
    Width = 64
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'TIWDBEdit1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 1
    AutoEditable = True
    DataField = 'Length (cm)'
    DataSource = dsrcMain
    PasswordPrompt = False
  end
  object DBEdit3: TIWDBEdit
    Left = 8
    Top = 272
    Width = 265
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'Species Name'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 2
    AutoEditable = True
    DataField = 'Species Name'
    DataSource = dsrcMain
    PasswordPrompt = False
  end
  object DBEdit4: TIWDBEdit
    Left = 8
    Top = 328
    Width = 265
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'Common Name'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 3
    AutoEditable = True
    DataField = 'Common_Name'
    DataSource = dsrcMain
    PasswordPrompt = False
  end
  object DBEdit5: TIWDBEdit
    Left = 8
    Top = 384
    Width = 94
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'Category'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 4
    AutoEditable = True
    DataField = 'Category'
    DataSource = dsrcMain
    PasswordPrompt = False
  end
  object DBMemo1: TIWDBMemo
    Left = 304
    Top = 216
    Width = 449
    Height = 246
    Anchors = [akLeft, akTop, akRight, akBottom]
    ZIndex = 0
    Editable = False
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    RawText = False
    ScriptEvents = <>
    ReadOnly = False
    Required = True
    AutoEditable = True
    DataField = 'Notes'
    DataSource = dsrcMain
  end
  object IWDBEdit1: TIWDBEdit
    Left = 152
    Top = 384
    Width = 121
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clBlue
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'Species No'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 5
    AutoEditable = True
    DataField = 'Species No'
    DataSource = dsrcMain
    PasswordPrompt = False
  end
  object IWLabel1: TIWLabel
    Left = 152
    Top = 360
    Width = 81
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Species No:'
  end
  object IWDBFile1: TIWDBFile
    Left = 8
    Top = 440
    Width = 185
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWDBFile1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 6
    DataField = 'Graphic'
    DataSource = dsrcMain
  end
  object IWLabel2: TIWLabel
    Left = 8
    Top = 420
    Width = 101
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'Update Picture:'
  end
  object qeryMain: TQuery
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    RequestLive = True
    SQL.Strings = (
      'select * from biolife')
    Left = 344
    Top = 40
    object qeryMainSpeciesNo: TFloatField
      FieldName = 'Species No'
      Origin = 'DBDEMOS."biolife.DB".Species No'
    end
    object qeryMainNotes: TMemoField
      FieldName = 'Notes'
      Origin = 'DBDEMOS."biolife.DB".Notes'
      BlobType = ftMemo
      Size = 50
    end
    object qeryMainLength_In: TFloatField
      FieldName = 'Length_In'
      Origin = 'DBDEMOS."biolife.DB".Length_In'
    end
    object qeryMainLengthcm: TFloatField
      FieldName = 'Length (cm)'
      Origin = 'DBDEMOS."biolife.DB".Length (cm)'
    end
    object qeryMainSpeciesName: TStringField
      FieldName = 'Species Name'
      Origin = 'DBDEMOS."biolife.DB".Species Name'
      Size = 40
    end
    object qeryMainCommon_Name: TStringField
      FieldName = 'Common_Name'
      Origin = 'DBDEMOS."biolife.DB".Common_Name'
      Size = 30
    end
    object qeryMainCategory: TStringField
      FieldName = 'Category'
      Origin = 'DBDEMOS."biolife.DB".Category'
      Size = 15
    end
    object qeryMainGraphic: TGraphicField
      FieldName = 'Graphic'
      Origin = 'DBDEMOS."biolife.DB".Graphic'
      BlobType = ftGraphic
    end
  end
  object Session1: TSession
    AutoSessionName = True
    Left = 296
    Top = 40
  end
  object dsrcMain: TDataSource
    DataSet = qeryMain
    Left = 400
    Top = 40
  end
end
