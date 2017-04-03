object Form1: TForm1
  Left = 209
  Top = 158
  Width = 783
  Height = 594
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ParentFont = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 301
    Width = 775
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  inline MDFrame: TMasterDetailFrame
    Top = 304
    Width = 775
    Height = 263
    Align = alBottom
    inherited Splitter2: TSplitter
      Height = 263
    end
    inherited MasterFrame: TDataFrame
      Height = 263
      inherited Splitter1: TSplitter
        Top = 159
      end
      inherited DBGrid1: TDBGrid
        Height = 134
      end
      inherited DBNavigator1: TDBNavigator
        Hints.Strings = ()
      end
      inherited FancyFrame1: TFancyFrame
        Top = 162
      end
    end
    inherited DetailFrame: TDataFrame
      Width = 434
      Height = 263
      inherited Splitter1: TSplitter
        Top = 159
        Width = 434
      end
      inherited DBGrid1: TDBGrid
        Width = 434
        Height = 134
      end
      inherited DBNavigator1: TDBNavigator
        Width = 434
        Hints.Strings = ()
      end
      inherited FancyFrame1: TFancyFrame
        Top = 162
        Width = 434
        inherited DBImage1: TDBImage
          Width = 270
        end
      end
    end
  end
  inline SimpleFrame: TDataFrame
    Width = 775
    Height = 301
    Align = alClient
    TabOrder = 1
    inherited Splitter1: TSplitter
      Top = 197
      Width = 775
    end
    inherited DBGrid1: TDBGrid
      Width = 775
      Height = 172
    end
    inherited DBNavigator1: TDBNavigator
      Width = 775
      Hints.Strings = ()
    end
    inherited FancyFrame1: TFancyFrame
      Top = 200
      Width = 775
      inherited Splitter1: TSplitter
        Left = 489
      end
      inherited DBMemo1: TDBMemo
        Width = 489
      end
      inherited DBImage1: TDBImage
        Left = 492
        Width = 283
      end
    end
  end
end
