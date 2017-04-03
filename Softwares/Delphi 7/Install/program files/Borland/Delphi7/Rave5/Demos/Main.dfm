object Form1: TForm1
  Left = 270
  Top = 112
  BorderStyle = bsDialog
  Caption = 'Sample Rave Project'
  ClientHeight = 340
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 83
    Height = 13
    Caption = 'Available Reports'
  end
  object Label2: TLabel
    Left = 312
    Top = 48
    Width = 88
    Height = 13
    Caption = 'Report Description'
  end
  object ReportLB: TListBox
    Left = 8
    Top = 24
    Width = 169
    Height = 257
    ItemHeight = 13
    TabOrder = 0
    OnClick = ReportLBClick
  end
  object DescMemo: TMemo
    Left = 184
    Top = 64
    Width = 329
    Height = 169
    Lines.Strings = (
      'DescMemo')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button1: TButton
    Left = 56
    Top = 296
    Width = 75
    Height = 25
    Hint = 'Print currently selected report'
    Caption = '&Print'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = Button1Click
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Report Setup'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.MarginPercent = 2.500000000000000000
    SystemPreview.ShadowDepth = 5
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 440
    Top = 8
  end
  object RvProject: TRvProject
    Engine = RvSystem1
    ProjectFile = 'RaveDemo.rav'
    Left = 480
    Top = 8
  end
end
