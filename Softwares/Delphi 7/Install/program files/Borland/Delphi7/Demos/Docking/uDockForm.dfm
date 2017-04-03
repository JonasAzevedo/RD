object DockableForm: TDockableForm
  Left = 117
  Top = 294
  Width = 397
  Height = 241
  Caption = 'DockableForm'
  Color = clBtnFace
  DockSite = True
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDockOver = FormDockOver
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 389
    Height = 213
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
end
