object ClientForm: TClientForm
  Left = 258
  Top = 192
  Width = 593
  Height = 344
  Caption = 'Bank Client'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageCtrl: TPageControl
    Left = 0
    Top = 0
    Width = 585
    Height = 317
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Banking'
      DesignSize = (
        577
        289)
      object AccountGroupBox: TGroupBox
        Left = 16
        Top = 154
        Width = 545
        Height = 121
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Account'
        TabOrder = 0
        object Label1: TLabel
          Left = 334
          Top = 53
          Width = 42
          Height = 13
          Caption = 'Balance:'
        end
        object BalanceEdit: TEdit
          Left = 381
          Top = 49
          Width = 129
          Height = 21
          TabOrder = 0
        end
        object BalanceButton: TButton
          Left = 429
          Top = 75
          Width = 81
          Height = 25
          Caption = 'Get &Balance'
          TabOrder = 1
          OnClick = BalanceButtonClick
        end
        object PageControl2: TPageControl
          Left = 19
          Top = 19
          Width = 193
          Height = 97
          ActivePage = DepositSheet
          Style = tsFlatButtons
          TabOrder = 2
          object DepositSheet: TTabSheet
            Caption = 'Deposit'
            object Label6: TLabel
              Left = 3
              Top = 7
              Width = 39
              Height = 13
              Caption = 'Amount:'
            end
            object DepositAmount: TEdit
              Left = 48
              Top = 5
              Width = 129
              Height = 21
              TabOrder = 0
              Text = '1'
            end
            object DepositButton: TButton
              Left = 96
              Top = 39
              Width = 81
              Height = 25
              Caption = '&Deposit'
              TabOrder = 1
              OnClick = DepositButtonClick
            end
          end
          object WithdrawSheet: TTabSheet
            Caption = 'Withdraw'
            ImageIndex = 1
            object Label9: TLabel
              Left = 0
              Top = 0
              Width = 39
              Height = 13
              Caption = 'Amount:'
            end
            object WithdrawAmount: TEdit
              Left = 48
              Top = 0
              Width = 129
              Height = 21
              TabOrder = 0
              Text = '1'
            end
            object WithdrawButton: TButton
              Left = 96
              Top = 39
              Width = 81
              Height = 25
              Caption = 'Withdraw'
              TabOrder = 1
              OnClick = WithdrawButtonClick
            end
          end
        end
      end
      object LoginGroupBox: TGroupBox
        Left = 16
        Top = 8
        Width = 545
        Height = 129
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Login'
        TabOrder = 1
        object Label4: TLabel
          Left = 8
          Top = 27
          Width = 25
          Height = 13
          Caption = '&URL:'
          FocusControl = URLList
        end
        object Label3: TLabel
          Left = 8
          Top = 95
          Width = 49
          Height = 13
          Caption = '&Password:'
        end
        object Label2: TLabel
          Left = 8
          Top = 65
          Width = 51
          Height = 13
          Caption = 'User&name:'
        end
        object PasswordEdit: TEdit
          Left = 64
          Top = 92
          Width = 273
          Height = 21
          TabOrder = 0
          Text = 'password'
        end
        object UserEdit: TEdit
          Left = 64
          Top = 62
          Width = 273
          Height = 21
          TabOrder = 1
          Text = 'user'
        end
        object URLList: TComboBox
          Left = 40
          Top = 24
          Width = 489
          Height = 21
          ItemHeight = 13
          TabOrder = 2
          Text = 'http://localhost/cgi-bin/BankAccount_CGI.exe/soap/IBankAccount'
          Items.Strings = (
            'http://localhost/cgi-bin/BankAccount_CGI.exe/soap/IBankAccount'
            
              'http://<your-web-server>/cgi-bin/BankAccount_CGI.exe/soap/IBankA' +
              'ccount'
            
              'http://localhost:8081/BankAccount_WAD.BankAccountDemo/soap/IBank' +
              'Account'
            
              'http://localhost:1024/BankAccount_WAD.BankAccountDemo/soap/IBank' +
              'Account')
        end
        object LoginButton: TButton
          Left = 360
          Top = 59
          Width = 81
          Height = 25
          Caption = 'Log&in'
          TabOrder = 3
          OnClick = LoginButtonClick
        end
        object HeaderChechBox: TCheckBox
          Left = 449
          Top = 95
          Width = 81
          Height = 17
          Caption = 'Use Header'
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
        object LogoutButton: TButton
          Left = 448
          Top = 59
          Width = 81
          Height = 25
          Caption = 'Log&out'
          TabOrder = 5
          OnClick = LogoutButtonClick
        end
        object ButtonHeader: TButton
          Left = 360
          Top = 91
          Width = 81
          Height = 25
          Caption = 'Show Header'
          TabOrder = 6
          OnClick = ButtonHeaderClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'SOAP Packets'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 577
        Height = 289
        Align = alClient
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 1
          Top = 90
          Width = 575
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Memo1: TMemo
          Left = 1
          Top = 1
          Width = 575
          Height = 89
          Align = alTop
          Lines.Strings = (
            'Memo1')
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object Memo2: TMemo
          Left = 1
          Top = 93
          Width = 575
          Height = 195
          Align = alClient
          Lines.Strings = (
            'Memo2')
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
    end
  end
  object HTTPRIO1: THTTPRIO
    OnAfterExecute = HTTPRIO1AfterExecute
    OnBeforeExecute = HTTPRIO1BeforeExecute
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse]
    Converter.Encoding = 'UTF-8'
    Left = 8
    Top = 280
  end
end
