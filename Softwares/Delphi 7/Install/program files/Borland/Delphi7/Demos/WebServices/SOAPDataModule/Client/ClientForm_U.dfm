object ClientForm: TClientForm
  Left = 207
  Top = 211
  Width = 550
  Height = 450
  Caption = 'SOAP DataModule Sample Client'
  Color = clBtnFace
  Constraints.MinHeight = 450
  Constraints.MinWidth = 550
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 542
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      542
      41)
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 59
      Height = 13
      Caption = 'Server URL:'
      Transparent = False
    end
    object ConnectBut: TButton
      Left = 455
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Connect'
      TabOrder = 0
      OnClick = ConnectButClick
    end
    object URLList: TComboBox
      Left = 74
      Top = 12
      Width = 370
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'http://localhost:1024/SOAPDMServerWAD.Sample'
      Items.Strings = (
        'http://localhost:1024/SOAPDMServerWAD.Sample'
        'http://<your-web-server>/scripts/SOAPDMCGI.exe'
        'http://<your-web-server>/cgi-bin/SOAPDMCGI.exe')
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 542
    Height = 382
    ActivePage = BasicData
    Align = alClient
    TabOrder = 1
    object BasicData: TTabSheet
      Caption = '&Basic Data Access'
      ImageIndex = 2
      DesignSize = (
        534
        354)
      object ApplyBut: TButton
        Left = 368
        Top = 300
        Width = 81
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = '&Apply Updates'
        TabOrder = 0
        OnClick = ApplyButClick
      end
      object RefreshBut: TButton
        Left = 456
        Top = 300
        Width = 73
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = '&Refresh'
        TabOrder = 1
        OnClick = RefreshButClick
      end
      object DBNavigator1: TDBNavigator
        Left = 32
        Top = 300
        Width = 240
        Height = 25
        DataSource = DataSource1
        Anchors = [akLeft, akBottom]
        TabOrder = 2
      end
      object OpenBut: TButton
        Left = 288
        Top = 300
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = '&Open'
        TabOrder = 3
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 8
        Width = 519
        Height = 275
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource1
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet1: TTabSheet
      Caption = '&Custom Method Access'
      ImageIndex = 1
      object Label2: TLabel
        Left = 16
        Top = 21
        Width = 445
        Height = 13
        Caption = 
          'This service'#39's custom method does not do much - it simply return' +
          's a string with the current time:'
      end
      object CustomMethod: TButton
        Left = 424
        Top = 48
        Width = 97
        Height = 25
        Caption = 'CustomMethod'
        TabOrder = 0
        OnClick = CustomMethodClick
      end
    end
  end
  object SoapConnection1: TSoapConnection
    URL = 'http://localhost:1024/Test_AppServer_WebApp.test_app/soap'
    SOAPServerIID = 'GUID of Custom Interface {233AD9DC-0F93-AEF6-E2A5-6BFEF55D1204}'
    UseSOAPAdapter = True
    Left = 352
    Top = 304
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'StringField'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DateField'
        Attributes = [faUnNamed]
        DataType = ftDate
      end
      item
        Name = 'CurrencyField'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'TimeField'
        Attributes = [faUnNamed]
        DataType = ftDateTime
      end
      item
        Name = 'FloatField'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'BooleanField'
        Attributes = [faUnNamed]
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'XMLTransformProvider1'
    RemoteServer = SoapConnection1
    StoreDefs = True
    Left = 384
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 416
    Top = 304
  end
end
