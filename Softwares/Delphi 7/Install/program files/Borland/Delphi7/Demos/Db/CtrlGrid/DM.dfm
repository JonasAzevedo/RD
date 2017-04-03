object DM1: TDM1
  OldCreateOrder = True
  Left = 510
  Top = 138
  Height = 179
  Width = 297
  object tblMaster: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    IndexName = 'SYMBOL'
    TableName = 'MASTER.DBF'
    Left = 24
    Top = 12
    object tblMasterSYMBOL: TStringField
      Alignment = taCenter
      DisplayLabel = 'Symbol'
      DisplayWidth = 7
      FieldName = 'SYMBOL'
      Size = 7
    end
    object tblMasterCO_NAME: TStringField
      DisplayLabel = 'Company'
      DisplayWidth = 20
      FieldName = 'CO_NAME'
    end
    object tblMasterEXCHANGE: TStringField
      DisplayLabel = 'Exchange'
      DisplayWidth = 8
      FieldName = 'EXCHANGE'
      Size = 8
    end
    object tblMasterIndustryLongName: TStringField
      Alignment = taCenter
      DisplayLabel = 'Industry'
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'IndustryLongName'
      LookupDataSet = tblIndustry
      LookupKeyFields = 'IND_CODE'
      LookupResultField = 'LONG_NAME'
      KeyFields = 'INDUSTRY'
      Size = 32
      Lookup = True
    end
    object tblMasterCUR_PRICE: TFloatField
      DisplayLabel = 'Current Price'
      DisplayWidth = 10
      FieldName = 'CUR_PRICE'
      DisplayFormat = '$ #,###.00'
      EditFormat = '#,###.00'
    end
    object tblMasterYRL_HIGH: TFloatField
      DisplayLabel = 'Yr. High'
      DisplayWidth = 10
      FieldName = 'YRL_HIGH'
      DisplayFormat = '$ #,###.00'
      EditFormat = '#,###.00'
    end
    object tblMasterYRL_LOW: TFloatField
      DisplayLabel = 'Yr. Low'
      DisplayWidth = 10
      FieldName = 'YRL_LOW'
      DisplayFormat = '$ #,###.00'
      EditFormat = '#,###.00'
    end
    object tblMasterP_E_RATIO: TFloatField
      Alignment = taCenter
      DisplayLabel = 'P/E Ratio'
      DisplayWidth = 10
      FieldName = 'P_E_RATIO'
    end
    object tblMasterPROJ_GRTH: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Proj. Growth'
      DisplayWidth = 10
      FieldName = 'PROJ_GRTH'
      DisplayFormat = '###%'
      EditFormat = '###'
    end
    object tblMasterINDUSTRY: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'Industry'
      DisplayWidth = 10
      FieldName = 'INDUSTRY'
      Visible = False
    end
    object tblMasterPRICE_CHG: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'Price Change'
      DisplayWidth = 10
      FieldName = 'PRICE_CHG'
      DisplayFormat = '###%'
      EditFormat = '###'
    end
    object tblMasterRATING: TStringField
      Alignment = taCenter
      DisplayLabel = 'Rating'
      DisplayWidth = 5
      FieldName = 'RATING'
      Size = 4
    end
    object tblMasterRANK: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Rank'
      DisplayWidth = 5
      FieldName = 'RANK'
    end
    object tblMasterOUTLOOK: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'Outlook'
      DisplayWidth = 7
      FieldName = 'OUTLOOK'
    end
    object tblMasterRCMNDATION: TStringField
      Alignment = taCenter
      DisplayLabel = 'Recc.'
      DisplayWidth = 6
      FieldName = 'RCMNDATION'
      Size = 5
    end
    object tblMasterRISK: TStringField
      Alignment = taCenter
      DisplayLabel = 'Risk'
      DisplayWidth = 6
      FieldName = 'RISK'
      Size = 4
    end
  end
  object dsMaster: TDataSource
    DataSet = tblMaster
    Left = 76
    Top = 12
  end
  object tblIndustry: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    IndexName = 'IND_CODE'
    MasterFields = 'INDUSTRY'
    TableName = 'INDUSTRY.DBF'
    Left = 156
    Top = 12
    object tblIndustryIND_CODE: TSmallintField
      FieldName = 'IND_CODE'
      Visible = False
    end
    object tblIndustryIND_NAME: TStringField
      FieldName = 'IND_NAME'
      Size = 5
    end
    object tblIndustryLONG_NAME: TStringField
      FieldName = 'LONG_NAME'
    end
  end
  object dsIndustry: TDataSource
    DataSet = tblIndustry
    Left = 208
    Top = 12
  end
  object tblHoldings: TTable
    Active = True
    AfterOpen = tblHoldingsAfterOpen
    AfterPost = tblHoldingsAfterPost
    OnCalcFields = tblHoldingsCalcFields
    DatabaseName = 'DBDEMOS'
    IndexName = 'SYMBOL'
    MasterFields = 'SYMBOL'
    MasterSource = dsMaster
    TableName = 'HOLDINGS.DBF'
    Left = 36
    Top = 76
    object tblHoldingsACCT_NBR: TFloatField
      DisplayLabel = 'Account No.'
      FieldName = 'ACCT_NBR'
    end
    object tblHoldingsSHARES: TFloatField
      DisplayLabel = 'Shares'
      FieldName = 'SHARES'
      DisplayFormat = '###,###,###'
      EditFormat = '###,###,###'
    end
    object tblHoldingsPUR_PRICE: TFloatField
      DisplayLabel = 'Purchase Price'
      FieldName = 'PUR_PRICE'
      DisplayFormat = '$ #,###.00'
      EditFormat = '#,###.00'
    end
    object tblHoldingsPUR_DATE: TDateField
      DisplayLabel = 'Purchase Date'
      FieldName = 'PUR_DATE'
      DisplayFormat = 'mmm. dd, yyyy'
    end
    object tblHoldingsSYMBOL: TStringField
      FieldName = 'SYMBOL'
      Visible = False
      Size = 7
    end
    object tblHoldingsPUR_COST: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PUR_COST'
      Calculated = True
    end
  end
  object dsHoldings: TDataSource
    DataSet = tblHoldings
    Left = 96
    Top = 76
  end
end
