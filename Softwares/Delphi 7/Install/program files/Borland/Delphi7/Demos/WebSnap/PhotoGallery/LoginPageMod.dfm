object LoginPageModule: TLoginPageModule
  OldCreateOrder = False
  PageProducer = AdapterPageProducer
  Left = 503
  Top = 348
  Height = 185
  Width = 270
  object AdapterPageProducer: TAdapterPageProducer
    Styles.Strings = (
      '.submitButton { '
      '  color: #FFFFFF;  font-family: Arial, Helvetica, sans-serif; '
      '  font-size: 9pt; '
      '  font-style: bold; '
      '  background-color: #0099FF;'
      '}')
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '</head>'
      '<body>'
      '<#STYLES><#WARNINGS><#SERVERSCRIPT>'
      '</body>'
      '</html>')
    Left = 48
    Top = 8
    object AdapterForm1: TAdapterForm
      object AdapterErrorList1: TAdapterErrorList
        Adapter = LoginFormAdapter
      end
      object AdapterFieldGroup1: TAdapterFieldGroup
        Adapter = LoginFormAdapter
        object FldUserName: TAdapterDisplayField
          Caption = 'User Name'
          FieldName = 'UserName'
          ViewMode = vmInput
        end
        object FldPassword: TAdapterDisplayField
          FieldName = 'Password'
          ViewMode = vmInput
          InputType = iftPasswordInput
        end
      end
      object AdapterButtonGroup1: TAdapterCommandGroup
        DisplayComponent = AdapterFieldGroup1
        object btnLogin: TAdapterActionButton
          ActionName = 'Login'
          StyleRule = 'submitButton'
        end
      end
    end
  end
  object LoginFormAdapter: TLoginFormAdapter
    Left = 136
    Top = 32
    object TAdapterDefaultActions
    end
    object TAdapterDefaultFields
    end
  end
end
