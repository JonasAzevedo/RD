object Form1: TForm1
  Left = 565
  Top = 358
  AutoScroll = False
  Caption = 'SetParam Demo'
  ClientHeight = 343
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 187
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object Label2: TLabel
    Left = 260
    Top = 187
    Width = 28
    Height = 13
    Caption = 'Photo'
  end
  object Label3: TLabel
    Left = 16
    Top = 4
    Width = 62
    Height = 13
    Caption = 'Starting Date'
  end
  object Label4: TLabel
    Left = 150
    Top = 6
    Width = 59
    Height = 13
    Caption = 'Ending Date'
  end
  object Bevel1: TBevel
    Left = 10
    Top = 51
    Width = 451
    Height = 2
    Shape = bsTopLine
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 61
    Width = 445
    Height = 120
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object StartDate: TEdit
    Left = 16
    Top = 22
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EndDate: TEdit
    Left = 149
    Top = 22
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DBImage1: TDBImage
    Left = 260
    Top = 203
    Width = 197
    Height = 129
    DataField = 'Event_Photo'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBMemo1: TDBMemo
    Left = 14
    Top = 203
    Width = 235
    Height = 129
    DataField = 'Event_Description'
    DataSource = DataSource1
    TabOrder = 4
  end
  object ShowEvents: TButton
    Left = 296
    Top = 20
    Width = 153
    Height = 25
    Caption = 'Show Events'
    TabOrder = 2
    OnClick = ShowEventsClick
  end
  object DataSource1: TDataSource
    DataSet = Events
    Left = 102
    Top = 139
  end
  object Events: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'Start_Date'
        ParamType = ptUnknown
        Value = 29221d
      end
      item
        DataType = ftDateTime
        Name = 'End_Date'
        ParamType = ptUnknown
        Value = 36161d
      end>
    ProviderName = 'EventProvider'
    RemoteServer = RemoteServer
    Left = 66
    Top = 139
    object EventsEventNo: TIntegerField
      DisplayWidth = 8
      FieldName = 'EventNo'
    end
    object EventsEvent_Name: TStringField
      DisplayLabel = 'Event'
      DisplayWidth = 27
      FieldName = 'Event_Name'
      Size = 30
    end
    object EventsEvent_Date: TDateField
      Alignment = taCenter
      DisplayLabel = 'Date'
      FieldName = 'Event_Date'
    end
    object EventsEvent_Time: TTimeField
      DisplayLabel = 'Time'
      FieldName = 'Event_Time'
    end
    object EventsEvent_Description: TMemoField
      FieldName = 'Event_Description'
      Visible = False
      BlobType = ftMemo
      Size = 100
    end
    object EventsTicket_price: TCurrencyField
      DisplayLabel = 'Ticket Price'
      FieldName = 'Ticket_price'
    end
    object EventsEvent_Photo: TGraphicField
      FieldName = 'Event_Photo'
      Visible = False
      BlobType = ftGraphic
    end
    object EventsVenueNo: TIntegerField
      FieldName = 'VenueNo'
      Visible = False
    end
  end
  object RemoteServer: TDCOMConnection
    Connected = True
    ServerGUID = '{518F9D64-F90A-11D0-9FFC-00A0248E4B9A}'
    ServerName = 'Serv.SetParamDemo'
    Left = 30
    Top = 138
  end
end
