object Form1: TForm1
  Left = 215
  Top = 116
  Width = 563
  Height = 447
  Caption = 'Soap Attachment Sample'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 555
    Height = 420
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Attachments'
      object Label2: TLabel
        Left = 17
        Top = 0
        Width = 31
        Height = 13
        Caption = '&Server'
        FocusControl = URLList
      end
      object Label1: TLabel
        Left = 17
        Top = 56
        Width = 35
        Height = 13
        Caption = '&File List'
        FocusControl = ListBox1
      end
      object Image1: TImage
        Left = 258
        Top = 217
        Width = 263
        Height = 152
        AutoSize = True
      end
      object Label3: TLabel
        Left = 256
        Top = 200
        Width = 3
        Height = 13
      end
      object Memo1: TMemo
        Left = 258
        Top = 69
        Width = 263
        Height = 124
        Lines.Strings = (
          'This program provides a simple example of a soap '
          'application with attachments.'
          'The server (DBAttachServer.dpr) has a simple '
          'interface with two methods:'
          '1.  function GetCommonNames() which returns all '
          'of the names of fishes in the '
          'BIOLIFE sample (an interbase gdb file).'
          '2.  function GetSpeciesInfo(), which returns a '
          '.bmp for the any common name'
          'passed to.  This function also fills the '
          'TSpeciesInfo object, an out param.'
          ''
          'Heads Up!'
          '1.  The server needs to use the BioLife.cds'
          'included with this demo.'
          'Other versions of Biolife store the picture '
          'data in a format not usable'
          'by a TImage.  '
          '2.  Use the SoapAttachDemo.ini to specify the '
          'location of the BioLife.cds'
          'This .ini file must be in the same location as the '
          'deployed server (typically in'
          'c:\inetpub\scripts) on a Windows machine.).'
          'The BioLife.cds file must at a location which'
          'is accessible to the web application or the'
          'error '#39'Missing Data Packet'#39' exception.')
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object ListBox1: TListBox
        Left = 17
        Top = 73
        Width = 201
        Height = 305
        ItemHeight = 13
        TabOrder = 1
        OnDblClick = ListBox1DblClick
      end
      object Connect: TButton
        Left = 464
        Top = 16
        Width = 75
        Height = 25
        Caption = '&Connect'
        TabOrder = 2
        OnClick = ConnectClick
      end
      object URLList: TComboBox
        Left = 17
        Top = 19
        Width = 432
        Height = 21
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 3
        Text = 'http://localhost/cgi-bin/DBAttachServer.exe/soap/IDBAttachments'
        Items.Strings = (
          'http://localhost/scripts/DBAttachServer.exe/soap/IDBAttachments'
          'http://localhost/cgi-bin/DBAttachServer.exe/soap/IDBAttachments'
          
            'http://<your-web-server>/cgi-bin/DBAttachServer.exe/soap/IDBAtta' +
            'chments')
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'SOAP Packets'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 547
        Height = 392
        Align = alClient
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 1
          Top = 151
          Width = 545
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Memo2: TMemo
          Left = 1
          Top = 1
          Width = 545
          Height = 150
          Align = alTop
          Lines.Strings = (
            'Memo2')
          TabOrder = 0
        end
        object Memo3: TMemo
          Left = 1
          Top = 154
          Width = 545
          Height = 237
          Align = alClient
          Lines.Strings = (
            'Memo3')
          TabOrder = 1
        end
      end
    end
  end
end
