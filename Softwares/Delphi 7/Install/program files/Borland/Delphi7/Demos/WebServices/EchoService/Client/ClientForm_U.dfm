object ClientForm: TClientForm
  Left = 243
  Top = 143
  Width = 615
  Height = 536
  Caption = 'Client'
  Color = clBtnFace
  Constraints.MinHeight = 450
  Constraints.MinWidth = 550
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 607
    Height = 468
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Simple Types'
      object Edit8: TEdit
        Left = 224
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 96
        Top = 8
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'String'
      end
      object Edit2: TEdit
        Left = 224
        Top = 8
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 96
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'WideString'
      end
      object Edit4: TEdit
        Left = 224
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object Button1: TButton
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Caption = 'String'
        TabOrder = 5
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 8
        Top = 32
        Width = 75
        Height = 25
        Caption = 'WideString'
        TabOrder = 6
        OnClick = Button2Click
      end
      object Button4: TButton
        Left = 8
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Int'
        TabOrder = 7
        OnClick = Button4Click
      end
      object Edit5: TEdit
        Left = 96
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 8
        Text = '32767'
      end
      object Edit6: TEdit
        Left = 224
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 9
      end
      object Button6: TButton
        Left = 8
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Float'
        TabOrder = 10
        OnClick = Button6Click
      end
      object Edit7: TEdit
        Left = 96
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 11
        Text = '10.20'
      end
      object Button9: TButton
        Left = 8
        Top = 104
        Width = 75
        Height = 25
        Caption = 'XSDateTime'
        TabOrder = 12
        OnClick = Button9Click
      end
      object Edit19: TEdit
        Left = 96
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 13
        Text = '12/12/2000'
      end
      object Edit20: TEdit
        Left = 224
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 14
      end
      object Edit22: TEdit
        Left = 224
        Top = 128
        Width = 121
        Height = 21
        TabOrder = 15
      end
      object Edit24: TEdit
        Left = 224
        Top = 152
        Width = 121
        Height = 21
        TabOrder = 16
      end
      object Edit23: TEdit
        Left = 96
        Top = 152
        Width = 121
        Height = 21
        TabOrder = 17
        Text = 'true'
      end
      object Edit21: TEdit
        Left = 96
        Top = 128
        Width = 121
        Height = 21
        TabOrder = 18
        Text = '12.12'
      end
      object Button10: TButton
        Left = 8
        Top = 128
        Width = 75
        Height = 25
        Caption = 'XSDecimal'
        TabOrder = 19
        OnClick = Button10Click
      end
      object Button11: TButton
        Left = 8
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Boolean'
        TabOrder = 20
        OnClick = Button11Click
      end
      object Button20: TButton
        Left = 8
        Top = 176
        Width = 75
        Height = 25
        Caption = 'TDateTime'
        TabOrder = 21
        OnClick = Button20Click
      end
      object Edit9: TEdit
        Left = 96
        Top = 176
        Width = 121
        Height = 21
        TabOrder = 22
        Text = '12/12/2000'
      end
      object Edit25: TEdit
        Left = 224
        Top = 176
        Width = 121
        Height = 21
        TabOrder = 23
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Array Types'
      ImageIndex = 1
      object Button7: TButton
        Left = 8
        Top = 248
        Width = 75
        Height = 25
        Caption = 'Float Array'
        TabOrder = 0
        OnClick = Button7Click
      end
      object Button3: TButton
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Caption = 'String Array'
        TabOrder = 1
        OnClick = Button3Click
      end
      object ValueListEditor1: TValueListEditor
        Left = 96
        Top = 8
        Width = 249
        Height = 141
        DisplayOptions = [doColumnTitles, doAutoColResize]
        KeyOptions = [keyEdit, keyAdd, keyDelete]
        Strings.Strings = (
          'String 1='
          'String 2='
          'String 3='
          'String 4='
          'String 5=')
        TabOrder = 2
        TitleCaptions.Strings = (
          'Send'
          'Receive'
          '')
        ColWidths = (
          121
          122)
      end
      object Button5: TButton
        Left = 8
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Integer Array'
        TabOrder = 3
        OnClick = Button5Click
      end
      object ValueListEditor2: TValueListEditor
        Left = 96
        Top = 152
        Width = 249
        Height = 93
        DisplayOptions = [doColumnTitles, doAutoColResize]
        KeyOptions = [keyEdit, keyAdd, keyDelete]
        Strings.Strings = (
          '1='
          '2='
          '3=')
        TabOrder = 4
        TitleCaptions.Strings = (
          'Send'
          'Receive'
          '')
        ColWidths = (
          113
          114)
      end
      object ValueListEditor3: TValueListEditor
        Left = 96
        Top = 248
        Width = 249
        Height = 93
        DisplayOptions = [doColumnTitles, doAutoColResize]
        KeyOptions = [keyEdit, keyAdd, keyDelete]
        Strings.Strings = (
          '1.1='
          '2.2='
          '3.3=')
        TabOrder = 5
        TitleCaptions.Strings = (
          'Send'
          'Receive'
          '')
        ColWidths = (
          113
          114)
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Structure'
      ImageIndex = 3
      object Edit17: TEdit
        Left = 96
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '10.20'
      end
      object Button8: TButton
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Structure'
        TabOrder = 1
        OnClick = Button8Click
      end
      object Edit11: TEdit
        Left = 96
        Top = 8
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'String'
      end
      object Edit12: TEdit
        Left = 224
        Top = 8
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object Edit13: TEdit
        Left = 96
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'WideString'
      end
      object Edit14: TEdit
        Left = 224
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object Edit15: TEdit
        Left = 96
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 6
        Text = '32767'
      end
      object Edit16: TEdit
        Left = 224
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object Edit18: TEdit
        Left = 224
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 8
      end
      object Button14: TButton
        Left = 8
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Structure array'
        TabOrder = 9
        OnClick = Button14Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Attachment'
      ImageIndex = 4
      DesignSize = (
        599
        440)
      object Label3: TLabel
        Left = 8
        Top = 12
        Width = 76
        Height = 13
        Caption = 'Files on Server::'
        Transparent = False
      end
      object Button16: TButton
        Left = 11
        Top = 206
        Width = 104
        Height = 24
        Caption = 'Download File'
        Enabled = False
        TabOrder = 0
        OnClick = Button16Click
      end
      object Button17: TButton
        Left = 11
        Top = 235
        Width = 104
        Height = 25
        Caption = 'Upload File'
        TabOrder = 1
        OnClick = Button17Click
      end
      object Button18: TButton
        Left = 11
        Top = 176
        Width = 104
        Height = 26
        Caption = 'Update File List'
        TabOrder = 2
        OnClick = Button18Click
      end
      object ListBox1: TListBox
        Left = 2
        Top = 30
        Width = 135
        Height = 141
        ItemHeight = 13
        TabOrder = 3
      end
      object Panel2: TPanel
        Left = 150
        Top = 30
        Width = 327
        Height = 310
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvLowered
        Caption = '(Image)'
        TabOrder = 4
        object Image2: TImage
          Left = 1
          Top = 1
          Width = 325
          Height = 308
          Align = alClient
          Stretch = True
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 607
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      607
      41)
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 59
      Height = 13
      Caption = 'Server URL:'
      Transparent = False
    end
    object Button19: TButton
      Left = 521
      Top = 9
      Width = 75
      Height = 19
      Anchors = [akTop, akRight]
      Caption = 'Connect'
      TabOrder = 0
      OnClick = Button19Click
    end
    object ComboBox1: TComboBox
      Left = 72
      Top = 8
      Width = 425
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 1
      Text = 
        'http://localhost:1024/EchoService_WAD.EchoService/soap/IEchoServ' +
        'ice'
      Items.Strings = (
        
          'http://localhost:1024/EchoService_WAD.EchoService/soap/IEchoServ' +
          'ice'
        'http://localhost/cgi-bin/EchoService_CGI.exe/soap/IEchoService'
        
          'http://<your-web-server>/cgi-bin/EchoService_CGI.exe/soap/IEchoS' +
          'ervice'
        
          'http://<your-web-server>/scripts/EchoService_CGI.exe/soap/IEchoS' +
          'ervice')
    end
  end
  object HTTPRIO1: THTTPRIO
    WSDLLocation = 
      'http://localhost:1024/Test_AppServer_WebApp.test_app/wsdl/IServi' +
      'ceX'
    HTTPWebNode.Agent = 'Borland SOAP 1.1'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody]
    Converter.Encoding = 'UTF-8'
    Left = 424
    Top = 40
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = '.bmp'
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    InitialDir = '..\revc'
    Left = 456
    Top = 40
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 488
    Top = 40
  end
end
