object Form1: TForm1
  Left = 224
  Top = 150
  Width = 664
  Height = 582
  ActiveControl = Memo1
  Caption = 'rexec Client'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 19
  Font.Name = 'MS Sans Serif'
  Font.Pitch = fpVariable
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 113
    Width = 656
    Height = 442
    Align = alClient
    TabOrder = 0
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 654
      Height = 440
      Align = alClient
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = 15
      Font.Name = 'Fixedsys'
      Font.Pitch = fpVariable
      Font.Style = []
      Lines.Strings = (
        'DEMO: rexec'
        ''
        'Usage: fill in the parameters and press execute.'
        ''
        'Parameter fields'
        '----------------------------------------------------------'
        'Server:  Host Name or IP of server with an '
        '         RExec server running on port 512'
        ''
        'UserName: The name of the user to login to the server'
        ''
        'PassWord: Password for the user '
        '          CAUTION: This is sent  as plaintext'
        ''
        'Command : The command to execute on the Server'
        '          A series of commands can be used by seperating '
        '          them with a semicolon ;'
        ''
        'Example Commands:'
        '  ls -l'
        '  DISPLAY=LOCALIP:0.0; xterm'
        '  /usr/local/someApplication/startService'
        '             '
        '                   ')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 656
    Height = 113
    Align = alTop
    TabOrder = 1
    object ConnectLight: TShape
      Left = 255
      Top = 9
      Width = 8
      Height = 8
      Brush.Color = clRed
      Pen.Width = 0
      Shape = stCircle
    end
    object Label3: TLabel
      Left = 5
      Top = 64
      Width = 76
      Height = 16
      AutoSize = False
      Caption = 'Command'
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 7
      Top = 6
      Width = 80
      Height = 16
      AutoSize = False
      Caption = 'Server'
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 5
      Top = 24
      Width = 69
      Height = 16
      AutoSize = False
      Caption = 'UserName'
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 4
      Top = 43
      Width = 70
      Height = 16
      AutoSize = False
      Caption = 'PassWord'
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 271
      Top = 6
      Width = 96
      Height = 16
      AutoSize = False
      Caption = 'Connection'
      Layout = tlCenter
    end
    object EditServer: TEdit
      Left = 87
      Top = 3
      Width = 146
      Height = 32
      MaxLength = 32767
      TabOrder = 0
    end
    object EditCommand: TEdit
      Left = 87
      Top = 62
      Width = 292
      Height = 32
      MaxLength = 32767
      TabOrder = 3
    end
    object EditUser: TEdit
      Left = 87
      Top = 23
      Width = 146
      Height = 32
      MaxLength = 32767
      TabOrder = 1
    end
    object EditPass: TEdit
      Left = 87
      Top = 43
      Width = 146
      Height = 32
      MaxLength = 32767
      TabOrder = 2
    end
    object Button1: TButton
      Left = 382
      Top = 61
      Width = 139
      Height = 20
      Caption = 'Execute'
      TabOrder = 4
      OnClick = Button1Click
    end
    object ButtonClose: TButton
      Left = 383
      Top = 37
      Width = 137
      Height = 20
      Caption = 'Close Connection'
      TabOrder = 5
      OnClick = ButtonCloseClick
    end
    object ButtonClear: TButton
      Left = 383
      Top = 11
      Width = 138
      Height = 20
      Caption = 'Clear Screen'
      TabOrder = 6
      OnClick = ButtonClearClick
    end
  end
  object client: TTcpClient
    Active = False
    RemotePort = '512'
    OnError = clientError
    OnConnect = clientConnect
    Left = 312
    Top = 40
  end
end
