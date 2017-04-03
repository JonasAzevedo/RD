object Form1: TForm1
  Left = 259
  Top = 138
  Width = 261
  Height = 433
  Caption = 'Word 97 events'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  ShowHint = True
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 10
    Top = 128
    Width = 59
    Height = 16
    Hint = 'Written by Anders Ohlsson. Copyright 1998 by Inprise Corp.'
    Caption = 'Event log:'
  end
  object LaunchButton: TButton
    Left = 10
    Top = 10
    Width = 109
    Height = 31
    Hint = 'Launch Word 97'
    Caption = 'Launch Word'
    TabOrder = 0
    OnClick = LaunchButtonClick
  end
  object CloseButton: TButton
    Left = 128
    Top = 10
    Width = 112
    Height = 31
    Hint = 'Close Word 97'
    Caption = 'Close Word'
    Enabled = False
    TabOrder = 1
    OnClick = CloseButtonClick
  end
  object Memo1: TMemo
    Left = 10
    Top = 148
    Width = 228
    Height = 237
    Hint = 
      'This is a log of all the events that Word 97 has fired off so fa' +
      'r'
    ReadOnly = True
    TabOrder = 5
  end
  object NewDocButton: TButton
    Left = 10
    Top = 49
    Width = 109
    Height = 31
    Hint = 'Open a new document'
    Caption = 'New document'
    Enabled = False
    TabOrder = 2
    OnClick = NewDocButtonClick
  end
  object TypeTextButton: TButton
    Left = 128
    Top = 49
    Width = 110
    Height = 31
    Hint = 'Send the text to the active document in Word 97'
    Caption = 'Type text'
    Enabled = False
    TabOrder = 3
    OnClick = TypeTextButtonClick
  end
  object WordText: TEdit
    Left = 10
    Top = 89
    Width = 228
    Height = 24
    Hint = 'This is the text you'#39'll send to Word 97 by hitting "Type Text"'
    TabOrder = 4
    Text = 'Delphi is RAD!!!'
  end
end
