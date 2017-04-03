object Form1: TForm1
  Left = 299
  Top = 141
  AutoScroll = False
  Caption = 'TXMLTransformProvider'
  ClientHeight = 519
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 646
    Height = 519
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 43
      Width = 280
      Height = 16
      HelpType = htKeyword
      Caption = 'Views and updates the Xml-Document '#39'pos.xml'#39
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 20
      Top = 13
      Width = 340
      Height = 20
      HelpType = htKeyword
      Caption = 'Example of using TXMLTransformProvider '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 330
      Width = 609
      Height = 169
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -10
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Button1: TButton
      Left = 15
      Top = 291
      Width = 90
      Height = 30
      Caption = 'Get data'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 126
      Top = 291
      Width = 121
      Height = 30
      Caption = 'Apply Updates'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Memo1: TMemo
      Left = 16
      Top = 66
      Width = 609
      Height = 205
      Lines.Strings = (
        'TXMLTransformProvider transforms a generic xml-document into a'
        'Datapacket.'
        
          'Data aware controls such as DBGrids,  XMLBroker( Internet Expres' +
          's)  etc. '
        
          'can now be used to display, browse  and update the data from the' +
          'se documents.'
        
          'The updated data can then be resolved back to the original xml-d' +
          'ocument.'
        ''
        ''
        'TXMLTransformProvider  description:'
        ''
        'XMLDataFile:'
        'Points to the generic xml-file  '
        ''
        'TransformRead.TransformationFile:'
        
          'Points to the transformation file ('#39'.xtr'#39')  for '#39'Xml to Datapack' +
          'et'#39'.'
        'Created by '#39'XmlMapper'#39'.'
        ''
        'TransformWrite.TransformationFile:'
        'Points to the transformation file for '#39'Datapacket to Xml'#39'.'
        ''
        'CacheData :'
        'Set property to cache the '#39'transformed'#39' Xml file.'
        ''
        ''
        'Events:'
        ''
        'TransformRead.OnTranslate'
        'TransformWrite.OnTranslate:'
        ''
        
          'Used to intercept and translate field-values marked as '#39'Userdefi' +
          'ned'#39'  in XmlMapper.'
        ''
        ''
        
          'Note: When writing back updates to the xml-file the file is recr' +
          'eated and '
        
          'rewritten, so when creating the transformations all data-fields ' +
          'should be mapped '
        'to avoid data-loss.'
        ''
        
          'Note: As is the case with ClientDatasets, this technology limits' +
          ' data-size'
        'to available memory and is not intended for '#39'huge'#39' xml-files.'
        '')
      ScrollBars = ssBoth
      TabOrder = 3
    end
    object Button3: TButton
      Left = 352
      Top = 291
      Width = 65
      Height = 30
      Caption = 'Save'
      TabOrder = 4
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 440
      Top = 291
      Width = 185
      Height = 21
      TabOrder = 5
      Text = 'DemoTest.xml'
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProvider1'
    Left = 432
    Top = 360
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 480
    Top = 360
  end
  object XMLTransformProvider1: TXMLTransformProvider
    TransformRead.TransformationFile = 'ToDp_pos.xtr'
    TransformRead.OnTranslate = XMLTransformProvider1DataTransformReadTranslate
    TransformWrite.TransformationFile = 'ToXml_pos.xtr'
    TransformWrite.OnTranslate = XMLTransformProvider1DataTransformWriteTranslate
    XMLDataFile = 'pos.xml'
    Left = 368
    Top = 360
  end
end
