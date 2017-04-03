object fmAboutBox: TfmAboutBox
  Left = 442
  Top = 133
  BorderStyle = bsDialog
  Caption = 'fmAboutBox'
  ClientHeight = 321
  ClientWidth = 299
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 281
    Height = 265
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object ProgramIcon: TImage
      Left = 8
      Top = 8
      Width = 65
      Height = 57
      Picture.Data = {
        07544269746D617076020000424D760200000000000076000000280000002000
        0000200000000100040000000000000200000000000000000000100000000000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00000000000000000000000000000000000EE8787878EEEEEEE03F30878EEE
        EEE00EE8787878EEEEEEE03F30878EEEEEE00EE8787878EEEEEEE03F30878EEE
        EEE00EE8787878EEEEEEE03F30878EEEEEE00887787877788888803F3088787E
        EEE00788787878878887803F3088887EEEE00788887888878887803F3088887E
        EEE00877888887788888703F308887EEEEE00888777778888888037883088888
        8EE007777777777777703787883087777EE00888888888888803787FF8830888
        888008888888888880378777778830888880077777777788037873F3F3F87808
        88E00888888888803787FFFFFFFF8830EEE00887777778800001111111111100
        EEE00888888888888899B999B99999EEEEE00888888888888899B9B99BB9B9EE
        EEE0088888888888899BB9BB99BB99EEEEE0078888888888899B999B999999EE
        EEE0087788888778899B9B9BB9BB99EEEEE00888778778888E9B9B9BB9999EEE
        EEE0088888788888EE9B99B9BB9BEEEEEEE00EE8888888EEEEE999B9999EEEEE
        EEE00EEEE888EEEEEEEE99BB999EEEEEEEE00EEEEE8EEEEEEEEEE999B9EEEEEE
        EEE00EEEEE8EEEEEEEEEEEE999EEEEEEEEE00EEEEE8EEEEEEEEEEEEE99EEEEEE
        EEE00EEEEE8EEEEEEEEEEEEE9EEEEEEEEEE00EEEEE8EEEEEEEEEEEEEEEEEEEEE
        EEE00EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE00000000000000000000000000000
        0000}
      Stretch = True
      IsControl = True
    end
    object ProductName: TLabel
      Left = 88
      Top = 16
      Width = 65
      Height = 13
      Caption = 'Filter Example'
      IsControl = True
    end
    object Version: TLabel
      Left = 88
      Top = 36
      Width = 44
      Height = 13
      Caption = 'Version 1'
      IsControl = True
    end
    object Memo1: TMemo
      Left = 8
      Top = 72
      Width = 265
      Height = 181
      Lines.Strings = (
        'This example illustrates'
        ''
        '-     The use of a Data Module with a '
        '       Query linked through its Datasource'
        '      property for displaying detail records.'
        '-     Switching Between Query- and Table-'
        '      Based datasets.'
        '-     Filtering Records dynamically, by setting '
        '      the Filter property of a Dataset.'
        '-     Filtering Records more statically, '
        '      by providing a value to a variable hooked'
        '      to the OnFilterRecord event .'
        ''
        'At runtime, the Data Module'#39's only master '
        'datasource can be connected to either the '
        'Customer TQuery or the Customer TTable. '
        'This Dataset is linked to a single Datasource '
        'which serves as the link to another dataset,'
        'defined by a dynamic query of the Orders table.'
        ''
        'Filtering is done on the Customer records '
        'dynamically, with the user providing an'
        'arbitrary expression. In contrast, the Filter '
        'button for the Orders table is done in a '
        'more static, code-based fashion, with the'
        'user simply providing a threshold for the '
        'Total Order Amount. An exception is raised'
        'when user entries are inappropriate.')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object OKButton: TButton
    Left = 111
    Top = 284
    Width = 77
    Height = 27
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
end
