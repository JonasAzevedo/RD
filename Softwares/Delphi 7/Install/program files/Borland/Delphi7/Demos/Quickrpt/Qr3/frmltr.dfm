object frmFormLetter: TfrmFormLetter
  Left = 200
  Top = 108
  Width = 544
  Height = 375
  Caption = 'frmFormLetter'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 16
    Top = 0
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = qryEmployee
    Description.Strings = (
      
        'This is a very simple example of how to generate form letters us' +
        'ing the TQRExpMemo control.')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      127
      2794
      127
      2159
      127
      127
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    ReportTitle = 'Form Letter example'
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 48
      Top = 88
      Width = 720
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        1905)
      BandType = rbDetail
      object QRExprMemo1: TQRExprMemo
        Left = 40
        Top = 8
        Width = 481
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          105.833333333333
          21.1666666666667
          1272.64583333333)
        RemoveBlankLines = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Lines.Strings = (
          '{APPSTARTDATE}'
          'Attention: {FirstName} {LastName}'
          're: special bonus'
          ' '
          'Dear {FirstName}.'
          ' '
          
            'You have been employed here since {Hiredate} and we are pleased ' +
            'to announce that we will including a special bonus with your nex' +
            't paycheck.'
          ' '
          'regards,'
          ' '
          'H.R. Department')
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 48
      Top = 48
      Width = 720
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        1905)
      BandType = rbPageHeader
      object QRSysData1: TQRSysData
        Left = 299
        Top = 0
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          791.104166666667
          0
          320.145833333333)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsReportTitle
        Transparent = False
        FontSize = 10
      end
    end
  end
  object qryEmployee: TQuery
    Active = True
    DatabaseName = 'DBDEMOS'
    SQL.Strings = (
      'SELECT *'
      'FROM Employee'
      'WHERE HireDate < '#39'01/01/1990'#39)
    Left = 8
    Top = 8
    ParamData = <>
    object qryEmployeeEmpNo: TIntegerField
      CustomConstraint = 'Value > 0'
      ConstraintErrorMessage = 'EmpNo cannot be 0 or negative'
      FieldName = 'EmpNo'
      Origin = '"Employee.DB".EmpNo'
      DisplayFormat = 'Emp'#39'#'#39' 0000'
      MaxValue = 9999
      MinValue = 1
    end
    object qryEmployeeLastName: TStringField
      FieldName = 'LastName'
      Origin = '"Employee.DB".LastName'
    end
    object qryEmployeeFirstName: TStringField
      FieldName = 'FirstName'
      Origin = '"Employee.DB".FirstName'
      Size = 15
    end
    object qryEmployeePhoneExt: TStringField
      FieldName = 'PhoneExt'
      Origin = '"Employee.DB".PhoneExt'
      Size = 4
    end
    object qryEmployeeHireDate: TDateTimeField
      FieldName = 'HireDate'
      Origin = '"Employee.DB".HireDate'
    end
    object qryEmployeeSalary: TFloatField
      CustomConstraint = 'X > 4499'
      ConstraintErrorMessage = 'Minimum Salary is $4,500.00'
      FieldName = 'Salary'
      Origin = '"Employee.DB".Salary'
      currency = True
    end
  end
end
