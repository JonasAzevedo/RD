object formMain: TformMain
  Left = 0
  Top = 0
  Width = 752
  Height = 497
  HorzScrollBar.Range = 737
  VertScrollBar.Range = 471
  Background.Fixed = False
  HandleTabs = False
  Title = 'Features Demo'
  SupportedBrowsers = [brIE, brNetscape6]
  OnCreate = IWAppFormCreate
  OnRender = IWFormModuleBaseRender
  DesignLeft = 273
  DesignTop = 157
  object IWText1: TIWText
    Left = 216
    Top = 112
    Width = 521
    Height = 329
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      
        'This demo is a demo with the purpose of showing many of IntraWeb' +
        #39's amazing '
      
        'features. You can browse and test them at run time, then look at' +
        ' the source'
      'code to see how easy they were to implement.'
      ' '
      
        'Please also note that this demo is being expanded constantly and' +
        ' by no '
      
        'means demonstrates all of IntraWeb'#39's capabilities. This demos so' +
        'le purpose is'
      
        'to show features - not be anything functional. For examples of f' +
        'unctional '
      'demos please see the other demos included with IntraWeb.'
      ' '
      
        'The database functionality is provided using ClientDatasets (CDS' +
        #39's) and '
      
        'embedded data. This is because Paradox is not a reliable server ' +
        'database and '
      
        'we cannot assume what other databases you may have installed. Th' +
        'e CDS'#39's '
      
        'are only used to simulate a database. Nothiing in IntraWeb requi' +
        'res the use of '
      
        'CDS'#39's and they can be replaced with any standard TDataset allowi' +
        'ng you to'
      'use any database that you want with IntraWeb.'
      ' '
      
        'The menu to the left is implemented with a Delphi TFrame, allowi' +
        'ng it to be'
      
        'designed once and coded only once and reused in all the forms. T' +
        'his'
      
        'technique can be used to implement menus, headers, or anything o' +
        'f your'
      'choosing.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object lablIPAddress: TIWLabel
    Left = 216
    Top = 456
    Width = 67
    Height = 15
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'IP Address'
  end
  object IWURL1: TIWURL
    Left = 376
    Top = 80
    Width = 153
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'Click here for IntraWeb!'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TargetOptions.Height = 300
    TargetOptions.Left = 200
    TargetOptions.Resizable = True
    TargetOptions.Scrollbars = True
    TargetOptions.Toolbar = True
    TargetOptions.Top = 25
    TargetOptions.Width = 700
    TargetOptions.WindowName = 'IntraWeb'
    TerminateApp = False
    UseTarget = True
    URL = 'http://www.atozedsoftware.com/'
  end
  object IWImageFile1: TIWImageFile
    Left = 336
    Top = 8
    Width = 224
    Height = 64
    ZIndex = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    UseBorder = False
    UseSize = True
    ImageFile.Filename = 'Files\atozedlogo.gif'
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 201
    Height = 495
    HorzScrollBar.Range = 185
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 468
    VertScrollBar.Visible = False
    Align = alLeft
    AutoScroll = False
    Color = clWhite
    ParentColor = False
    TabOrder = 0
  end
end
