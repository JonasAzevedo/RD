object SetParamDemo: TSetParamDemo
  OldCreateOrder = True
  OnCreate = SetParamDemoCreate
  OnDestroy = SetParamDemoDestroy
  Left = 466
  Top = 290
  Height = 479
  Width = 741
  object Events: TQuery
    AfterOpen = EventsAfterOpen
    DatabaseName = 'DBDEMOS'
    SQL.Strings = (
      'select * from events '
      'where  Event_Date >= :Start_Date and '
      '            Event_Date <= :End_Date'
      'order by Event_Date')
    Left = 18
    Top = 10
    ParamData = <
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
  end
  object EventProvider: TDataSetProvider
    DataSet = Events
    Left = 96
    Top = 8
  end
end
