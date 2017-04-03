object FFDatamodule: TFFDatamodule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 318
  Top = 270
  Height = 362
  Width = 537
  object Session1: TSession
    AutoSessionName = True
    Left = 16
    Top = 8
  end
  object qeryMain: TQuery
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_2'
    RequestLive = True
    SQL.Strings = (
      'select * from biolife')
    Left = 64
    Top = 8
    object qeryMainSpeciesNo: TFloatField
      FieldName = 'Species No'
      Origin = 'DBDEMOS."biolife.DB".Species No'
    end
    object qeryMainCategory: TStringField
      FieldName = 'Category'
      Origin = 'DBDEMOS."biolife.DB".Category'
      Size = 15
    end
    object qeryMainCommon_Name: TStringField
      FieldName = 'Common_Name'
      Origin = 'DBDEMOS."biolife.DB".Common_Name'
      Size = 30
    end
    object qeryMainSpeciesName: TStringField
      FieldName = 'Species Name'
      Origin = 'DBDEMOS."biolife.DB".Species Name'
      Size = 40
    end
    object qeryMainLengthcm: TFloatField
      FieldName = 'Length (cm)'
      Origin = 'DBDEMOS."biolife.DB".Length (cm)'
    end
    object qeryMainLength_In: TFloatField
      FieldName = 'Length_In'
      Origin = 'DBDEMOS."biolife.DB".Length_In'
    end
    object qeryMainNotes: TMemoField
      FieldName = 'Notes'
      Origin = 'DBDEMOS."biolife.DB".Notes'
      BlobType = ftMemo
      Size = 50
    end
    object qeryMainGraphic: TGraphicField
      FieldName = 'Graphic'
      Origin = 'DBDEMOS."biolife.DB".Graphic'
      BlobType = ftGraphic
    end
  end
  object dsrcMain: TDataSource
    DataSet = qeryMain
    Left = 120
    Top = 8
  end
end
