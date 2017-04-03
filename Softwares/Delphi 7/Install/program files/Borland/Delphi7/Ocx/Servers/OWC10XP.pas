unit OWC10XP;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 6/19/2002 4:58:05 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\Common Files\Microsoft Shared\Web Components\10\OWC10.DLL (1)
// LIBID: {0002E550-0000-0000-C000-000000000046}
// LCID: 0
// Helpfile: C:\Program Files\Common Files\Microsoft Shared\Web Components\10\owcvba10.chm
// HelpString: Microsoft Office XP Web Components
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINNT\System32\stdole2.tlb)
//   (2) v1.0 MSDATASRC, (C:\WINNT\System32\msdatsrc.tlb)
//   (3) v2.0 MSComctlLib, (C:\WINNT\System32\MSCOMCTL.OCX)
//   (4) v2.1 ADODB, (C:\Program Files\Common Files\System\ado\msado21.tlb)
// Parent TypeLibrary:
//   (0) v9.0 Access, (h:\typelib\typelib\typelibraries\OfficeXP\msacc.olb)
// Errors:
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'Label' of 'PivotResultAxis' changed to 'Label_'
//   Hint: Parameter 'Label' of PivotResultAxis.Label changed to 'Label_'
//   Hint: Member 'Label' of 'PivotData' changed to 'Label_'
//   Hint: Parameter 'Label' of PivotData.Label changed to 'Label_'
//   Hint: Member 'Label' of 'PivotView' changed to 'Label_'
//   Hint: Parameter 'Label' of PivotView.Label changed to 'Label_'
//   Hint: Parameter 'Label' of PivotView.TitleBar changed to 'Label_'
//   Hint: Parameter 'Function' of PivotView.AddTotal changed to 'Function_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of PivotFieldSet.Type changed to 'Type_'
//   Hint: Parameter 'Type' of PivotField.DataType changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of PivotField.Type changed to 'Type_'
//   Hint: Member 'Function' of 'PivotTotal' changed to 'Function_'
//   Hint: Parameter 'Function' of PivotTotal.Function changed to 'Function_'
//   Hint: Parameter 'Function' of PivotTotal.Function changed to 'Function_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of PivotTotal.Type changed to 'Type_'
//   Hint: Parameter 'Type' of PivotMember.CustomGroupType changed to 'Type_'
//   Hint: Member 'Label' of 'PivotAxis' changed to 'Label_'
//   Hint: Parameter 'Label' of PivotAxis.Label changed to 'Label_'
//   Hint: Parameter 'Object' of DropTarget.DragEnter changed to 'Object_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'Begin' of 'ChSegment' changed to 'Begin_'
//   Hint: Member 'End' of 'ChSegment' changed to 'End_'
//   Hint: Parameter 'File' of _Range.LoadText changed to 'File_'
//   Hint: Parameter 'var' of _Range._Default changed to 'var_'
//   Hint: Parameter 'var' of _Range._Default changed to 'var_'
//   Hint: Member 'End' of '_Range' changed to 'End_'
//   Hint: Parameter 'Object' of ISpreadsheet.msDataSourceObject changed to 'Object_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'Name' of 'Name' changed to 'Name_'
//   Hint: Parameter 'Type' of Sheets.Add changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of Worksheets.Add changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Repeat' of GroupLevel.DataPageSize changed to 'Repeat_'
//   Hint: Parameter 'Repeat' of GroupLevel.DataPageSize changed to 'Repeat_'
//   Hint: Parameter 'Type' of IDataSourceControl.ValidateDrop changed to 'Type_'
//   Hint: Member 'Do' of 'IOleUndoUnit' changed to 'Do_'
//   Hint: Member 'Object' of 'FieldListDragData' changed to 'Object_'
//   Hint: Parameter 'In' of IXRangeEnum.ChangeType changed to 'In_'
//   Hint: Parameter 'Object' of ViewObject.Query changed to 'Object_'
//   Hint: Member 'ActiveObject' of 'ActiveObject' changed to 'ActiveObject_'
//   Hint: Member 'Moniker' of 'Moniker' changed to 'Moniker_'
//   Hint: Parameter 'Object' of Moniker.Parse changed to 'Object_'
//   Hint: Parameter 'Object' of PropertyNotify.OnPropertyChange changed to 'Object_'
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, ADODBXP, Classes, Graphics, MSComctlLibXP, MSDATASRCXP, OleCtrls, 
OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  OWC10MajorVersion = 1;
  OWC10MinorVersion = 0;

  LIBID_OWC10: TGUID = '{0002E550-0000-0000-C000-000000000046}';

  DIID_IChartEvents: TGUID = '{F5B39A7A-1480-11D3-8549-00C04FAC67D7}';
  IID_ByRef: TGUID = '{0B817E8E-5A5A-11D3-BE88-0050041DB15A}';
  IID_ChChartDraw: TGUID = '{278585C3-D74B-4E30-ACEB-77D4777639E6}';
  IID_ChInterior: TGUID = '{56C833A6-3E1C-11D3-831A-00C04F991C70}';
  IID_ChBorder: TGUID = '{F5B39A72-1480-11D3-8549-00C04FAC67D7}';
  IID_ChFont: TGUID = '{F5B39A86-1480-11D3-8549-00C04FAC67D7}';
  IID_ChLine: TGUID = '{966CCC26-4469-11D3-8324-00C04F991C70}';
  IID_ChChartSpace: TGUID = '{F5B39A82-1480-11D3-8549-00C04FAC67D7}';
  CLASS_ChartSpace: TGUID = '{0002E556-0000-0000-C000-000000000046}';
  IID_ChCharts: TGUID = '{F5B39AE4-1480-11D3-8549-00C04FAC67D7}';
  IID_ChChart: TGUID = '{F5B39AE5-1480-11D3-8549-00C04FAC67D7}';
  IID_ChAxes: TGUID = '{F5B39AE6-1480-11D3-8549-00C04FAC67D7}';
  IID_ChScaling: TGUID = '{F5B39ABB-1480-11D3-8549-00C04FAC67D7}';
  IID_ChAxis: TGUID = '{F5B39AE7-1480-11D3-8549-00C04FAC67D7}';
  IID_ChGridlines: TGUID = '{F5B39AC4-1480-11D3-8549-00C04FAC67D7}';
  IID_ChTitle: TGUID = '{F5B39ABE-1480-11D3-8549-00C04FAC67D7}';
  IID_ChCategoryLabels: TGUID = '{EDF774DC-D540-40F4-99F2-75C83379CAA8}';
  IID_ChCategoryLabel: TGUID = '{D4765783-5F64-4A53-BD65-66839B65B4C9}';
  IID_PivotResultAxis: TGUID = '{D1AFFCE4-FCE5-11D2-8F35-00600893B533}';
  IID_PivotResultGroupAxis: TGUID = '{2C8CED10-01AF-11D3-8F35-00600893B533}';
  IID_PivotData: TGUID = '{F5B39B30-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotView: TGUID = '{F5B39B29-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotFieldSets: TGUID = '{F5B39AAD-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotFieldSet: TGUID = '{F5B39AAE-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotFields: TGUID = '{F5B39B2A-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotField: TGUID = '{F5B39B2C-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotFont: TGUID = '{F5B39B01-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotTotal: TGUID = '{F5B39B2F-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotMemberProperties: TGUID = '{0F57F292-726F-4817-A78B-52D452498519}';
  IID_PivotMemberProperty: TGUID = '{6ADF4A9E-5E7D-47EE-A3B8-CE06023D6A14}';
  IID_PivotMember: TGUID = '{F5B39B33-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotMembers: TGUID = '{F5B39B32-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotFilterUpdate: TGUID = '{A5E83EE4-5A92-11D3-BF58-00C04F61319A}';
  IID_PivotAxis: TGUID = '{F5B39B2B-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotGroupAxis: TGUID = '{F5B39AA7-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotLabel: TGUID = '{F5B39B2D-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotDataAxis: TGUID = '{F5B39B43-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotTotals: TGUID = '{F5B39B2E-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotFilterAxis: TGUID = '{F5B39AFD-1480-11D3-8549-00C04FAC67D7}';
  IID_IPivotControl: TGUID = '{F5B39B08-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotClassFactory: TGUID = '{73F4D511-C851-11D2-8F2D-00600893B533}';
  IID_PivotDetailCell: TGUID = '{F5B39B48-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotCell: TGUID = '{F5B39B31-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotAggregates: TGUID = '{F5B39A77-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotAggregate: TGUID = '{F5B39A78-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotAxisMember: TGUID = '{1D40A583-EBA2-11D2-8F35-00600893B533}';
  IID_PivotRowMember: TGUID = '{1D40A584-EBA2-11D2-8F35-00600893B533}';
  IID_PivotAxisMembers: TGUID = '{30971540-EEB8-11D2-8F35-00600893B533}';
  IID_PivotHyperlink: TGUID = '{F5B39A9C-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotResultMemberProperties: TGUID = '{23E41747-B2E7-4A36-9CEB-99799D619D02}';
  IID_PivotResultMemberProperty: TGUID = '{07C8959F-2E2A-4149-B6EA-6C511B21F485}';
  IID_PivotResultField: TGUID = '{682A2445-8F22-4E2D-A73B-D04E4CC273B5}';
  IID_PivotResultGroupField: TGUID = '{DC0342FE-039A-4D2D-80BF-BCA659270822}';
  IID_PivotRowMembers: TGUID = '{30971541-EEB8-11D2-8F35-00600893B533}';
  IID_PivotColumnMember: TGUID = '{1D40A585-EBA2-11D2-8F35-00600893B533}';
  IID_PivotColumnMembers: TGUID = '{30971542-EEB8-11D2-8F35-00600893B533}';
  IID_PivotDetailRange: TGUID = '{F5B39B47-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotPageMember: TGUID = '{C575AE1E-3959-441A-BED4-D3DEA9EB8037}';
  IID_PivotPageMembers: TGUID = '{E3AB2FF8-B95F-4C05-BF3F-6E9BA007F81C}';
  IID_DropSource: TGUID = '{D6CE4620-E224-11D2-8F35-00600893B533}';
  IID_DropTarget: TGUID = '{77186960-CDB1-11D2-8F2E-00600893B533}';
  IID_OCCommands: TGUID = '{85FE02E2-51A7-11D3-BE84-0050041DB15A}';
  IID_OCCommand: TGUID = '{B9B7C776-51A7-11D3-BE84-0050041DB15A}';
  IID_PivotResultRowAxis: TGUID = '{2C8CED11-01AF-11D3-8F35-00600893B533}';
  IID_PivotResultColumnAxis: TGUID = '{2C8CED12-01AF-11D3-8F35-00600893B533}';
  IID_PivotResultFilterAxis: TGUID = '{2C8CED13-01AF-11D3-8F35-00600893B533}';
  IID_PivotResultDataAxis: TGUID = '{2C8CED15-01AF-11D3-8F35-00600893B533}';
  IID_PivotRange: TGUID = '{F5B39B4A-1480-11D3-8549-00C04FAC67D7}';
  IID_PivotResultLabel: TGUID = '{D5A2B201-0334-11D3-8F39-00600893B533}';
  IID_PivotResultPageAxis: TGUID = '{2719FF1C-6999-4C17-94B3-887FCA2DCFA0}';
  IID_PivotResultGroupFields: TGUID = '{3A3AF091-8C35-4CC7-A1F4-B70D239D773B}';
  IID_Coordinate: TGUID = '{08801567-AFB8-45B0-A076-CC91579EC10E}';
  IID_ChLegend: TGUID = '{F5B39AEC-1480-11D3-8549-00C04FAC67D7}';
  IID_ChLegendEntries: TGUID = '{F5B39AB8-1480-11D3-8549-00C04FAC67D7}';
  IID_ChLegendEntry: TGUID = '{F5B39AB9-1480-11D3-8549-00C04FAC67D7}';
  IID_ChPlotArea: TGUID = '{F5B39ABA-1480-11D3-8549-00C04FAC67D7}';
  IID_ChSurface: TGUID = '{C592C1D2-448A-11D3-82BA-00C04F4C2A96}';
  IID_ChSeriesCollection: TGUID = '{F5B39ABD-1480-11D3-8549-00C04FAC67D7}';
  IID_ChSeries: TGUID = '{F5B39AC1-1480-11D3-8549-00C04FAC67D7}';
  IID_ChDataLabelsCollection: TGUID = '{F5B39A71-1480-11D3-8549-00C04FAC67D7}';
  IID_ChDataLabels: TGUID = '{F5B39AC2-1480-11D3-8549-00C04FAC67D7}';
  IID_ChDataLabel: TGUID = '{F5B39AE8-1480-11D3-8549-00C04FAC67D7}';
  IID_ChPoints: TGUID = '{F5B39AEA-1480-11D3-8549-00C04FAC67D7}';
  IID_ChPoint: TGUID = '{F5B39AE9-1480-11D3-8549-00C04FAC67D7}';
  IID_ChErrorBarsCollection: TGUID = '{F5B39AB7-1480-11D3-8549-00C04FAC67D7}';
  IID_ChErrorBars: TGUID = '{F5B39AEB-1480-11D3-8549-00C04FAC67D7}';
  IID_ChMarker: TGUID = '{F5B39ABC-1480-11D3-8549-00C04FAC67D7}';
  IID_ChTrendlines: TGUID = '{F5B39AC0-1480-11D3-8549-00C04FAC67D7}';
  IID_ChTrendline: TGUID = '{F5B39ABF-1480-11D3-8549-00C04FAC67D7}';
  IID_ChFormatMap: TGUID = '{BEAE3F40-6FB5-11D2-A8FF-00C04FAC6830}';
  IID_ChSegments: TGUID = '{BEAE3F41-6FB5-11D2-A8FF-00C04FAC6830}';
  IID_ChSegment: TGUID = '{EB509C25-4748-4D52-A6FE-137BA0642027}';
  IID_ChSegmentBoundary: TGUID = '{186FEDB0-6FB6-11D2-A8FF-00C04FAC6830}';
  IID_ChDropZone: TGUID = '{F0706B76-6BB3-11D3-A18A-00C04F612970}';
  IID_ChChartFields: TGUID = '{BB4C16FA-6BEC-11D3-A18A-00C04F612970}';
  IID_ChChartField: TGUID = '{D7842C36-6BEC-11D3-A18A-00C04F612970}';
  IID_OWCLanguageSettings: TGUID = '{6F5A76C3-0AC7-4DED-9A6B-A3547FD7B7BB}';
  DIID_ISpreadsheetEventSink: TGUID = '{F5B39A75-1480-11D3-8549-00C04FAC67D7}';
  IID__Range: TGUID = '{F5B39B05-1480-11D3-8549-00C04FAC67D7}';
  IID_ISpreadsheet: TGUID = '{F5B39A79-1480-11D3-8549-00C04FAC67D7}';
  IID_Worksheet: TGUID = '{F5B39A88-1480-11D3-8549-00C04FAC67D7}';
  IID_AutoFilter: TGUID = '{F5B39B0E-1480-11D3-8549-00C04FAC67D7}';
  IID_Filters: TGUID = '{F5B39B04-1480-11D3-8549-00C04FAC67D7}';
  IID_Filter: TGUID = '{F5B39B03-1480-11D3-8549-00C04FAC67D7}';
  IID_Criteria: TGUID = '{F5B39B02-1480-11D3-8549-00C04FAC67D7}';
  IID_Names: TGUID = '{F5B39BAD-1480-11D3-8549-00C04FAC67D7}';
  IID_Name: TGUID = '{F5B39BAC-1480-11D3-8549-00C04FAC67D7}';
  IID_Workbook: TGUID = '{F5B39BA6-1480-11D3-8549-00C04FAC67D7}';
  IID_Sheets: TGUID = '{F5B39BA7-1480-11D3-8549-00C04FAC67D7}';
  IID_Windows: TGUID = '{F5B39BAB-1480-11D3-8549-00C04FAC67D7}';
  IID_Window: TGUID = '{F5B39BAA-1480-11D3-8549-00C04FAC67D7}';
  IID_Pane: TGUID = '{F5B39AB2-1480-11D3-8549-00C04FAC67D7}';
  IID_Headings: TGUID = '{F5B39BA3-1480-11D3-8549-00C04FAC67D7}';
  IID_Heading: TGUID = '{F5B39BA4-1480-11D3-8549-00C04FAC67D7}';
  IID_Panes: TGUID = '{F5B39AB5-1480-11D3-8549-00C04FAC67D7}';
  IID_Worksheets: TGUID = '{F5B39BA8-1480-11D3-8549-00C04FAC67D7}';
  IID_Protection: TGUID = '{F5B39B3D-1480-11D3-8549-00C04FAC67D7}';
  IID_TitleBar: TGUID = '{F5B39B0B-1480-11D3-8549-00C04FAC67D7}';
  IID_Font: TGUID = '{6F5A761A-0AC7-4DED-9A6B-A3547FD7B7BB}';
  IID_Interior: TGUID = '{6F5A761B-0AC7-4DED-9A6B-A3547FD7B7BB}';
  IID_Workbooks: TGUID = '{F5B39BA5-1480-11D3-8549-00C04FAC67D7}';
  IID_Borders: TGUID = '{F5B39A7D-1480-11D3-8549-00C04FAC67D7}';
  IID_Border: TGUID = '{6F5A7618-0AC7-4DED-9A6B-A3547FD7B7BB}';
  IID_Hyperlink: TGUID = '{6F5A7620-0AC7-4DED-9A6B-A3547FD7B7BB}';
  CLASS_Spreadsheet: TGUID = '{0002E551-0000-0000-C000-000000000046}';
  IID_IOleCommandTargetArgument: TGUID = '{FB8D568A-AE5F-4136-8223-6E24ABE10A28}';
  IID__NumberFormat: TGUID = '{81FDD9FE-6464-4A19-82AB-878823E85A5E}';
  CLASS_NumberFormat: TGUID = '{6A8E5006-3EEB-4505-97F9-F357CA315E91}';
  IID_OCDirty: TGUID = '{B166E2BE-A46C-49AC-A76C-D0F2D1257C16}';
  IID_IOMEvent: TGUID = '{F5B39AE3-1480-11D3-8549-00C04FAC67D7}';
  IID_DesignAdviseSink: TGUID = '{9B3E2331-87A6-11D1-BACD-00C04FAC6863}';
  IID_SchemaFields: TGUID = '{F5B39AA3-1480-11D3-8549-00C04FAC67D7}';
  IID_SchemaField: TGUID = '{F5B39A67-1480-11D3-8549-00C04FAC67D7}';
  IID_SchemaProperties: TGUID = '{C233A511-A2BB-11D3-80F9-0050041DC1A6}';
  IID_SchemaProperty: TGUID = '{C233A512-A2BB-11D3-80F9-0050041DC1A6}';
  IID_SchemaDiagram: TGUID = '{30C37029-25CD-11D4-8D9D-00500483860C}';
  IID_SchemaRowsources: TGUID = '{F5B39AA4-1480-11D3-8549-00C04FAC67D7}';
  IID_SchemaRowsource: TGUID = '{F5B39AC8-1480-11D3-8549-00C04FAC67D7}';
  IID_LookupSchemaRelationships: TGUID = '{F5B39AF1-1480-11D3-8549-00C04FAC67D7}';
  IID_SchemaRelationship: TGUID = '{F5B39AEE-1480-11D3-8549-00C04FAC67D7}';
  IID_SchemaRelatedFields: TGUID = '{F5B39A6D-1480-11D3-8549-00C04FAC67D7}';
  IID_SchemaRelatedField: TGUID = '{F5B39A6E-1480-11D3-8549-00C04FAC67D7}';
  IID_SublistSchemaRelationships: TGUID = '{F5B39AF0-1480-11D3-8549-00C04FAC67D7}';
  IID_SchemaParameters: TGUID = '{F5B39AED-1480-11D3-8549-00C04FAC67D7}';
  IID_SchemaParameter: TGUID = '{F5B39A89-1480-11D3-8549-00C04FAC67D7}';
  IID_SchemaDiagrams: TGUID = '{30C37028-25CD-11D4-8D9D-00500483860C}';
  IID_SchemaRelationships: TGUID = '{F5B39A6C-1480-11D3-8549-00C04FAC67D7}';
  IID_PageRowsources: TGUID = '{F5B39AA5-1480-11D3-8549-00C04FAC67D7}';
  IID_PageRowsource: TGUID = '{F5B39A9F-1480-11D3-8549-00C04FAC67D7}';
  IID_RecordsetDef: TGUID = '{F5B39A9D-1480-11D3-8549-00C04FAC67D7}';
  IID_SublistRelationships: TGUID = '{F5B39AE1-1480-11D3-8549-00C04FAC67D7}';
  IID_PageRelationship: TGUID = '{F5B39A6B-1480-11D3-8549-00C04FAC67D7}';
  IID_PageRelatedFields: TGUID = '{F5B39A6F-1480-11D3-8549-00C04FAC67D7}';
  IID_PageRelatedField: TGUID = '{F5B39A70-1480-11D3-8549-00C04FAC67D7}';
  IID_PageField: TGUID = '{F5B39AC7-1480-11D3-8549-00C04FAC67D7}';
  IID_GroupingDef: TGUID = '{F5B39A7B-1480-11D3-8549-00C04FAC67D7}';
  IID_PageFields: TGUID = '{F5B39AB1-1480-11D3-8549-00C04FAC67D7}';
  IID_GroupingDefs: TGUID = '{F5B39A7C-1480-11D3-8549-00C04FAC67D7}';
  IID_ParameterValues: TGUID = '{F5B39AFF-1480-11D3-8549-00C04FAC67D7}';
  IID_ParameterValue: TGUID = '{F5B39B0F-1480-11D3-8549-00C04FAC67D7}';
  IID_LookupRelationships: TGUID = '{F5B39A74-1480-11D3-8549-00C04FAC67D7}';
  IID_RecordsetDefs: TGUID = '{F5B39AA2-1480-11D3-8549-00C04FAC67D7}';
  IID_AllPageFields: TGUID = '{F5B39B45-1480-11D3-8549-00C04FAC67D7}';
  IID_AllGroupingDefs: TGUID = '{F5B39AF9-1480-11D3-8549-00C04FAC67D7}';
  IID_IDARef: TGUID = '{97D6D375-23BB-11D1-A0E1-00C04FC9E20F}';
  IID_Section: TGUID = '{F5B39A68-1480-11D3-8549-00C04FAC67D7}';
  IID_DataPage: TGUID = '{F5B39AB4-1480-11D3-8549-00C04FAC67D7}';
  IID_GroupLevel: TGUID = '{F5B39A76-1480-11D3-8549-00C04FAC67D7}';
  IID_GroupLevels: TGUID = '{F5B39B00-1480-11D3-8549-00C04FAC67D7}';
  IID_DataPages: TGUID = '{F5B39A85-1480-11D3-8549-00C04FAC67D7}';
  IID_ElementExtension: TGUID = '{F5B39AAC-1480-11D3-8549-00C04FAC67D7}';
  IID_ElementExtensions: TGUID = '{F5B39AC9-1480-11D3-8549-00C04FAC67D7}';
  IID_IDataSourceControl: TGUID = '{F5B39AAF-1480-11D3-8549-00C04FAC67D7}';
  IID_DSCEventInfo: TGUID = '{F5B39B06-1480-11D3-8549-00C04FAC67D7}';
  DIID__DataSourceControlEvent: TGUID = '{F5B39A9B-1480-11D3-8549-00C04FAC67D7}';
  CLASS_DataSourceControl: TGUID = '{0002E553-0000-0000-C000-000000000046}';
  IID_INavigationControl: TGUID = '{F5B39AA8-1480-11D3-8549-00C04FAC67D7}';
  IID_INavUIHost: TGUID = '{F5B39AC5-1480-11D3-8549-00C04FAC67D7}';
  DIID__NavigationEvent: TGUID = '{4BD09D02-45CC-11D1-B1D1-006097C97F9B}';
  CLASS_RecordNavigationControl: TGUID = '{0002E554-0000-0000-C000-000000000046}';
  IID_IDataPageDesigner: TGUID = '{F5B39ADD-1480-11D3-8549-00C04FAC67D7}';
  IID_IOleUndoManager: TGUID = '{D001F200-EF97-11CE-9BC9-00AA00608E01}';
  IID_IOleUndoUnit: TGUID = '{894AD3B0-EF97-11CE-9BC9-00AA00608E01}';
  IID_IOleParentUndoUnit: TGUID = '{A1FAF330-EF97-11CE-9BC9-00AA00608E01}';
  IID_IEnumOleUndoUnits: TGUID = '{B3E7C340-EF97-11CE-9BC9-00AA00608E01}';
  IID_ISimpleDataConverter: TGUID = '{78667670-3C3D-11D2-91F9-006097C97F9B}';
  IID_FieldListHierarchy: TGUID = '{7BD180A4-0406-11D3-8549-00C04FAC67D7}';
  IID_FieldListHierarchySite: TGUID = '{FA99DB40-2043-11D3-854E-00C04FAC67D7}';
  IID_FieldListNode: TGUID = '{F7DDE2F0-0895-11D3-8549-00C04FAC67D7}';
  IID_FieldListType: TGUID = '{63F85AD0-1ACC-11D3-854A-00C04FAC67D7}';
  IID_FieldList: TGUID = '{7BD1809E-0406-11D3-8549-00C04FAC67D7}';
  IID_FieldListDragData: TGUID = '{6EAC3754-49CC-11D3-AE50-00C04F613171}';
  IID_FieldListDragDataList: TGUID = '{2A9DDE7C-D83E-11D3-AE6C-00C04F613171}';
  CLASS_FieldListControl: TGUID = '{0002E557-0000-0000-C000-000000000046}';
  IID_IOfflineInfo: TGUID = '{E2AC0C69-7079-11D3-8D01-0050048383A8}';
  CLASS_OfflineInfo: TGUID = '{E2AC0C6A-7079-11D3-8D01-0050048383A8}';
  IID_ChUserDefinedSelection: TGUID = '{22C1AB70-4BFF-40FB-95EE-C8CA647833C6}';
  IID_IAddinHost: TGUID = '{FAA0B9C0-F635-44C7-B825-B805F59B3D66}';
  DIID_IRangeEvents: TGUID = '{B8891063-2B00-48EC-957F-6DEBEADE9D8B}';
  CLASS_Range: TGUID = '{19A4E1A0-9334-4EB0-BD78-0AE080B8B4A7}';
  IID_IXRangeEnum: TGUID = '{F5B39B09-1480-11D3-8549-00C04FAC67D7}';
  IID_IAddinClient: TGUID = '{198924BD-4102-4CB0-B7E8-DBF8BE7EB5A1}';
  DIID_IPivotControlEvents: TGUID = '{F5B39A87-1480-11D3-8549-00C04FAC67D7}';
  CLASS_PivotTable: TGUID = '{0002E552-0000-0000-C000-000000000046}';
  IID_TextFormat: TGUID = '{58573A81-5025-11D3-BE84-0050041DB15A}';
  IID_ViewSurface: TGUID = '{EE658610-D8B3-11D2-8F30-00600893B533}';
  IID_ViewObject: TGUID = '{8C950530-C84C-11D2-8F2D-00600893B533}';
  IID_MouseTarget: TGUID = '{8F8E5640-CDB0-11D2-8F2E-00600893B533}';
  IID_SelectionHighlight: TGUID = '{58573A80-5025-11D3-BE84-0050041DB15A}';
  IID_ActiveObject: TGUID = '{A809B678-545A-11D3-BE86-0050041DB15A}';
  IID_PopupMenu: TGUID = '{04B21422-1F84-4DD3-8CD6-1C6ECC68E521}';
  IID_AutoFitObject: TGUID = '{99049AFE-271D-4568-95D8-3BC879AA73E3}';
  IID_Moniker: TGUID = '{5055F752-6848-4CEA-9BAB-265EC4B5380A}';
  IID_InplaceObject: TGUID = '{EDAC92DC-84DB-4CD1-AE98-EB436F4D99EB}';
  IID_PropertyNotify: TGUID = '{7BB4EDA1-862A-4AB2-92F2-557E1BAB3408}';
  IID_MutualExpando: TGUID = '{F9328F0C-1862-4BD5-81D8-2052A7EC80FA}';
  IID_EditableObject: TGUID = '{EB3286D3-226C-48F0-8049-2DB1E01DEE9C}';
  IID_TipProvider: TGUID = '{8966D336-AACA-4ADB-9315-F3A541B16917}';
  IID_IPivotCopy: TGUID = '{CD44E547-FEC9-4ADC-AB6A-3129B44801BA}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum ChartPatternTypeEnum
type
  ChartPatternTypeEnum = TOleEnum;
const
  chPattern5Percent = $00000001;
  chPattern10Percent = $00000002;
  chPattern20Percent = $00000003;
  chPattern25Percent = $00000004;
  chPattern30Percent = $00000005;
  chPattern40Percent = $00000006;
  chPattern50Percent = $00000007;
  chPattern60Percent = $00000008;
  chPattern70Percent = $00000009;
  chPattern75Percent = $0000000A;
  chPattern80Percent = $0000000B;
  chPattern90Percent = $0000000C;
  chPatternDarkHorizontal = $0000000D;
  chPatternDarkVertical = $0000000E;
  chPatternDarkDownwardDiagonal = $0000000F;
  chPatternDarkUpwardDiagonal = $00000010;
  chPatternSmallCheckerBoard = $00000011;
  chPatternTrellis = $00000012;
  chPatternLightHorizontal = $00000013;
  chPatternLightVertical = $00000014;
  chPatternLightDownwardDiagonal = $00000015;
  chPatternLightUpwardDiagonal = $00000016;
  chPatternSmallGrid = $00000017;
  chPatternDottedDiamond = $00000018;
  chPatternWideDownwardDiagonal = $00000019;
  chPatternWideUpwardDiagonal = $0000001A;
  chPatternDashedUpwardDiagonal = $0000001B;
  chPatternDashedDownwardDiagonal = $0000001C;
  chPatternNarrowVertical = $0000001D;
  chPatternNarrowHorizontal = $0000001E;
  chPatternDashedVertical = $0000001F;
  chPatternDashedHorizontal = $00000020;
  chPatternLargeConfetti = $00000021;
  chPatternLargeGrid = $00000022;
  chPatternHorizontalBrick = $00000023;
  chPatternLargeCheckerBoard = $00000024;
  chPatternSmallConfetti = $00000025;
  chPatternZigZag = $00000026;
  chPatternSolidDiamond = $00000027;
  chPatternDiagonalBrick = $00000028;
  chPatternOutlinedDiamond = $00000029;
  chPatternPlaid = $0000002A;
  chPatternSphere = $0000002B;
  chPatternWeave = $0000002C;
  chPatternDottedGrid = $0000002D;
  chPatternDivot = $0000002E;
  chPatternShingle = $0000002F;
  chPatternWave = $00000030;

// Constants for enum ChartFillTypeEnum
type
  ChartFillTypeEnum = TOleEnum;
const
  chFillSolid = $00000001;
  chFillPatterned = $00000002;
  chFillGradientOneColor = $00000003;
  chFillGradientTwoColors = $00000004;
  chFillGradientPresetColors = $00000005;
  chFillTexturePreset = $00000006;
  chFillTextureUserDefined = $00000007;

// Constants for enum ChartPresetGradientTypeEnum
type
  ChartPresetGradientTypeEnum = TOleEnum;
const
  chGradientEarlySunset = $00000001;
  chGradientLateSunset = $00000002;
  chGradientNightfall = $00000003;
  chGradientDaybreak = $00000004;
  chGradientHorizon = $00000005;
  chGradientDesert = $00000006;
  chGradientOcean = $00000007;
  chGradientCalmWater = $00000008;
  chGradientFire = $00000009;
  chGradientFog = $0000000A;
  chGradientMoss = $0000000B;
  chGradientPeacock = $0000000C;
  chGradientWheat = $0000000D;
  chGradientParchment = $0000000E;
  chGradientMahogany = $0000000F;
  chGradientRainbow = $00000010;
  chGradientRainbowII = $00000011;
  chGradientGold = $00000012;
  chGradientGoldII = $00000013;
  chGradientBrass = $00000014;
  chGradientChrome = $00000015;
  chGradientChromeII = $00000016;
  chGradientSilver = $00000017;
  chGradientSapphire = $00000018;

// Constants for enum ChartGradientStyleEnum
type
  ChartGradientStyleEnum = TOleEnum;
const
  chGradientHorizontal = $00000001;
  chGradientVertical = $00000002;
  chGradientDiagonalUp = $00000003;
  chGradientDiagonalDown = $00000004;
  chGradientFromCorner = $00000005;
  chGradientFromCenter = $00000007;

// Constants for enum ChartGradientVariantEnum
type
  ChartGradientVariantEnum = TOleEnum;
const
  chGradientVariantStart = $00000001;
  chGradientVariantEnd = $00000002;
  chGradientVariantCenter = $00000003;
  chGradientVariantEdges = $00000004;

// Constants for enum ChartPresetTextureEnum
type
  ChartPresetTextureEnum = TOleEnum;
const
  chTexturePapyrus = $00000001;
  chTextureCanvas = $00000002;
  chTextureDenim = $00000003;
  chTextureWovenMat = $00000004;
  chTextureWaterDroplets = $00000005;
  chTexturePaperBag = $00000006;
  chTextureFishFossil = $00000007;
  chTextureSand = $00000008;
  chTextureGreenMarble = $00000009;
  chTextureWhiteMarble = $0000000A;
  chTextureBrownMarble = $0000000B;
  chTextureGranite = $0000000C;
  chTextureNewsprint = $0000000D;
  chTextureRecycledPaper = $0000000E;
  chTextureParchment = $0000000F;
  chTextureStationery = $00000010;
  chTextureBlueTissuePaper = $00000011;
  chTexturePinkTissuePaper = $00000012;
  chTexturePurpleMesh = $00000013;
  chTextureBouquet = $00000014;
  chTextureCork = $00000015;
  chTextureWalnut = $00000016;
  chTextureOak = $00000017;
  chTextureMediumWood = $00000018;

// Constants for enum ChartTextureFormatEnum
type
  ChartTextureFormatEnum = TOleEnum;
const
  chStack = $00000001;
  chStackScale = $00000002;
  chStretch = $00000003;
  chTile = $00000004;
  chStretchPlot = $00000005;

// Constants for enum ChartTexturePlacementEnum
type
  ChartTexturePlacementEnum = TOleEnum;
const
  chAllFaces = $00000007;
  chEnd = $00000002;
  chEndSides = $00000006;
  chFront = $00000001;
  chFrontEnd = $00000003;
  chFrontSides = $00000005;
  chSides = $00000004;
  chProjectFront = $00000008;

// Constants for enum ChartLineDashStyleEnum
type
  ChartLineDashStyleEnum = TOleEnum;
const
  chLineDash = $00000000;
  chLineDashDot = $00000001;
  chLineDashDotDot = $00000002;
  chLineLongDash = $00000004;
  chLineLongDashDot = $00000005;
  chLineRoundDot = $00000006;
  chLineSolid = $00000007;
  chLineSquareDot = $00000008;

// Constants for enum LineWeightEnum
type
  LineWeightEnum = TOleEnum;
const
  owcLineWeightHairline = $00000000;
  owcLineWeightThin = $00000001;
  owcLineWeightMedium = $00000002;
  owcLineWeightThick = $00000003;

// Constants for enum UnderlineStyleEnum
type
  UnderlineStyleEnum = TOleEnum;
const
  owcUnderlineStyleNone = $00000000;
  owcUnderlineStyleSingle = $00000001;
  owcUnderlineStyleDouble = $00000002;
  owcUnderlineStyleSingleAccounting = $00000003;
  owcUnderlineStyleDoubleAccounting = $00000004;

// Constants for enum ChartLineMiterEnum
type
  ChartLineMiterEnum = TOleEnum;
const
  chLineMiterBevel = $00000000;
  chLineMiterMiter = $00000001;
  chLineMiterRound = $00000002;

// Constants for enum ChartDrawModesEnum
type
  ChartDrawModesEnum = TOleEnum;
const
  chDrawModePaint = $00000001;
  chDrawModeSelection = $00000002;
  chDrawModeHitTest = $00000003;
  chDrawModeScale = $00000004;

// Constants for enum ChartChartLayoutEnum
type
  ChartChartLayoutEnum = TOleEnum;
const
  chChartLayoutAutomatic = $00000000;
  chChartLayoutHorizontal = $00000001;
  chChartLayoutVertical = $00000002;

// Constants for enum ChartScaleOrientationEnum
type
  ChartScaleOrientationEnum = TOleEnum;
const
  chScaleOrientationMinMax = $00000000;
  chScaleOrientationMaxMin = $00000001;

// Constants for enum ChartScaleTypeEnum
type
  ChartScaleTypeEnum = TOleEnum;
const
  chScaleTypeLinear = $00000000;
  chScaleTypeLogarithmic = $00000001;

// Constants for enum ChartAxisCrossesEnum
type
  ChartAxisCrossesEnum = TOleEnum;
const
  chAxisCrossesAutomatic = $00000000;
  chAxisCrossesCustom = $00000003;

// Constants for enum ChartSelectionsEnum
type
  ChartSelectionsEnum = TOleEnum;
const
  chSelectionNone = $FFFFFFFF;
  chSelectionAxis = $00000000;
  chSelectionChart = $00000001;
  chSelectionPlotArea = $00000002;
  chSelectionDataLabels = $00000003;
  chSelectionErrorbars = $00000004;
  chSelectionGridlines = $00000005;
  chSelectionLegend = $00000006;
  chSelectionLegendEntry = $00000007;
  chSelectionPoint = $00000008;
  chSelectionSeries = $00000009;
  chSelectionTitle = $0000000A;
  chSelectionTrendline = $0000000B;
  chSelectionChartSpace = $0000000C;
  chSelectionSurface = $0000000D;
  chSelectionField = $0000000E;
  chSelectionUserDefined = $FFFFFFFE;
  chSelectionCategoryLabel = $00000010;
  chSelectionDropZone = $00000011;
  chSelectionDataLabel = $00000012;

// Constants for enum ChartTickMarkEnum
type
  ChartTickMarkEnum = TOleEnum;
const
  chTickMarkAutomatic = $00000000;
  chTickMarkNone = $00000001;
  chTickMarkInside = $00000002;
  chTickMarkOutside = $00000003;
  chTickMarkCross = $00000004;

// Constants for enum ChartAxisPositionEnum
type
  ChartAxisPositionEnum = TOleEnum;
const
  chAxisPositionTop = $FFFFFFFF;
  chAxisPositionBottom = $FFFFFFFE;
  chAxisPositionLeft = $FFFFFFFD;
  chAxisPositionRight = $FFFFFFFC;
  chAxisPositionRadial = $FFFFFFFB;
  chAxisPositionCircular = $FFFFFFFA;
  chAxisPositionCategory = $FFFFFFF9;
  chAxisPositionTimescale = $FFFFFFF9;
  chAxisPositionValue = $FFFFFFF8;
  chAxisPositionSeries = $FFFFFFF7;
  chAxisPositionPrimary = $FFFFFFF6;
  chAxisPositionSecondary = $FFFFFFF5;

// Constants for enum ChartTitlePositionEnum
type
  ChartTitlePositionEnum = TOleEnum;
const
  chTitlePositionAutomatic = $00000000;
  chTitlePositionTop = $00000001;
  chTitlePositionBottom = $00000002;
  chTitlePositionLeft = $00000003;
  chTitlePositionRight = $00000004;

// Constants for enum ChartAxisTypeEnum
type
  ChartAxisTypeEnum = TOleEnum;
const
  chCategoryAxis = $00000000;
  chValueAxis = $00000001;
  chTimescaleAxis = $00000002;
  chSeriesAxis = $00000003;

// Constants for enum ChartAxisGroupingEnum
type
  ChartAxisGroupingEnum = TOleEnum;
const
  chAxisGroupingNone = $00000000;
  chAxisGroupingAuto = $00000001;
  chAxisGroupingManual = $00000002;

// Constants for enum ChartAxisUnitTypeEnum
type
  ChartAxisUnitTypeEnum = TOleEnum;
const
  chAxisUnitDay = $00000000;
  chAxisUnitWeek = $00000001;
  chAxisUnitMonth = $00000002;
  chAxisUnitQuarter = $00000003;
  chAxisUnitYear = $00000004;

// Constants for enum ChartGroupingTotalFunctionEnum
type
  ChartGroupingTotalFunctionEnum = TOleEnum;
const
  chFunctionSum = $00000001;
  chFunctionCount = $00000002;
  chFunctionMin = $00000003;
  chFunctionMax = $00000004;
  chFunctionAvg = $00000005;
  chFunctionDefault = $00000006;

// Constants for enum PivotHAlignmentEnum
type
  PivotHAlignmentEnum = TOleEnum;
const
  plHAlignAutomatic = $00000000;
  plHAlignLeft = $00000001;
  plHAlignCenter = $00000002;
  plHAlignRight = $00000003;

// Constants for enum PivotFieldGroupOnEnum
type
  PivotFieldGroupOnEnum = TOleEnum;
const
  plGroupOnEachValue = $00000000;
  plGroupOnPrefixChars = $00000001;
  plGroupOnYears = $00000002;
  plGroupOnQtrs = $00000003;
  plGroupOnMonths = $00000004;
  plGroupOnWeeks = $00000005;
  plGroupOnDays = $00000006;
  plGroupOnHours = $00000007;
  plGroupOnMinutes = $00000008;
  plGroupOnSeconds = $00000009;
  plGroupOnInterval = $0000000A;

// Constants for enum PivotFieldSortDirectionEnum
type
  PivotFieldSortDirectionEnum = TOleEnum;
const
  plSortDirectionDefault = $00000000;
  plSortDirectionAscending = $00000001;
  plSortDirectionDescending = $00000002;
  plSortDirectionCustom = $00000004;
  plSortDirectionCustomAscending = $00000005;
  plSortDirectionCustomDescending = $00000006;

// Constants for enum PivotFieldTypeEnum
type
  PivotFieldTypeEnum = TOleEnum;
const
  plTypeRegular = $00000001;
  plTypeCalculated = $00000002;
  plTypeTimeYears = $00000004;
  plTypeTimeHalfYears = $00000005;
  plTypeTimeQuarters = $00000006;
  plTypeTimeMonths = $00000007;
  plTypeTimeWeeks = $00000008;
  plTypeTimeDays = $00000009;
  plTypeTimeHours = $0000000A;
  plTypeTimeMinutes = $0000000B;
  plTypeTimeSeconds = $0000000C;
  plTypeTimeUndefined = $0000000D;
  plTypeUnknown = $0000000E;
  plTypeUserDefined = $0000000F;
  plTypeTimeWeekdays = $00000010;
  plTypeCustomGroup = $00000011;

// Constants for enum PivotFieldFilterFunctionEnum
type
  PivotFieldFilterFunctionEnum = TOleEnum;
const
  plFilterFunctionNone = $00000000;
  plFilterFunctionTopCount = $00000003;
  plFilterFunctionBottomCount = $00000004;
  plFilterFunctionTopPercent = $00000005;
  plFilterFunctionBottomPercent = $00000006;
  plFilterFunctionTopSum = $00000007;
  plFilterFunctionBottomSum = $00000008;

// Constants for enum PivotTotalFunctionEnum
type
  PivotTotalFunctionEnum = TOleEnum;
const
  plFunctionUnknown = $00000000;
  plFunctionSum = $00000001;
  plFunctionCount = $00000002;
  plFunctionMin = $00000003;
  plFunctionMax = $00000004;
  plFunctionAverage = $00000005;
  plFunctionStdDev = $00000006;
  plFunctionVar = $00000007;
  plFunctionStdDevP = $0000000A;
  plFunctionVarP = $0000000B;
  plFunctionCalculated = $0000007F;

// Constants for enum PivotTotalTypeEnum
type
  PivotTotalTypeEnum = TOleEnum;
const
  plTotalTypeIntrinsic = $00000001;
  plTotalTypeUserDefined = $00000002;
  plTotalTypeCalculated = $00000003;

// Constants for enum PivotShowAsEnum
type
  PivotShowAsEnum = TOleEnum;
const
  plShowAsNormal = $00000000;
  plShowAsPercentOfRowTotal = $00000001;
  plShowAsPercentOfColumnTotal = $00000002;
  plShowAsPercentOfRowParent = $00000003;
  plShowAsPercentOfColumnParent = $00000004;
  plShowAsPercentOfGrandTotal = $00000005;

// Constants for enum PivotMemberPropertyDisplayEnum
type
  PivotMemberPropertyDisplayEnum = TOleEnum;
const
  plDisplayPropertyNone = $00000000;
  plDisplayPropertyInReport = $00000001;
  plDisplayPropertyInScreenTip = $00000002;
  plDisplayPropertyInAll = $00000003;

// Constants for enum PivotMemberFindFormatEnum
type
  PivotMemberFindFormatEnum = TOleEnum;
const
  plFindFormatMember = $00000000;
  plFindFormatPathName = $00000001;
  plFindFormatPathInt = $00000002;
  plFindFormatPathHex = $00000003;

// Constants for enum PivotMemberCustomGroupTypeEnum
type
  PivotMemberCustomGroupTypeEnum = TOleEnum;
const
  plGroupTypeRegular = $00000001;
  plGroupTypeCustomGroup = $00000002;
  plGroupTypeFallThrough = $00000003;
  plGroupTypePlaceHolder = $00000004;
  plGroupTypeStaticOther = $00000005;
  plGroupTypeDynamicOther = $00000006;

// Constants for enum PivotFieldSetOrientationEnum
type
  PivotFieldSetOrientationEnum = TOleEnum;
const
  plOrientationNone = $00000000;
  plOrientationColumnAxis = $00000001;
  plOrientationRowAxis = $00000002;
  plOrientationFilterAxis = $00000004;
  plOrientationDataAxis = $00000008;
  plOrientationPageAxis = $00000010;

// Constants for enum PivotFieldSetTypeEnum
type
  PivotFieldSetTypeEnum = TOleEnum;
const
  plFieldSetTypeTime = $00000001;
  plFieldSetTypeOther = $00000002;
  plFieldSetTypeUnknown = $00000003;
  plFieldSetTypeUserDefined = $00000004;

// Constants for enum PivotMembersCompareByEnum
type
  PivotMembersCompareByEnum = TOleEnum;
const
  plMembersCompareByUniqueName = $00000000;
  plMembersCompareByName = $00000001;

// Constants for enum PivotFilterUpdateMemberStateEnum
type
  PivotFilterUpdateMemberStateEnum = TOleEnum;
const
  plMemberStateClear = $00000001;
  plMemberStateChecked = $00000002;
  plMemberStateGray = $00000003;

// Constants for enum PivotFieldSetAllIncludeExcludeEnum
type
  PivotFieldSetAllIncludeExcludeEnum = TOleEnum;
const
  plAllDefault = $00000000;
  plAllInclude = $00000001;
  plAllExclude = $00000002;

// Constants for enum PivotViewTotalOrientationEnum
type
  PivotViewTotalOrientationEnum = TOleEnum;
const
  plTotalOrientationRow = $00000001;
  plTotalOrientationColumn = $00000002;

// Constants for enum PivotTableExpandEnum
type
  PivotTableExpandEnum = TOleEnum;
const
  plExpandAutomatic = $00000000;
  plExpandAlways = $00000001;
  plExpandNever = $00000002;

// Constants for enum PivotExportActionEnum
type
  PivotExportActionEnum = TOleEnum;
const
  plExportActionNone = $00000000;
  plExportActionOpenInExcel = $00000001;

// Constants for enum ProviderType
type
  ProviderType = TOleEnum;
const
  providerTypeUnknown = $00000001;
  providerTypeRelational = $00000002;
  providerTypeMultidimensional = $00000003;

// Constants for enum PivotTableMemberExpandEnum
type
  PivotTableMemberExpandEnum = TOleEnum;
const
  plMemberExpandAutomatic = $00000000;
  plMemberExpandAlways = $00000001;
  plMemberExpandNever = $00000002;

// Constants for enum PivotScrollTypeEnum
type
  PivotScrollTypeEnum = TOleEnum;
const
  plScrollTypeNone = $00000000;
  plScrollTypeTop = $00000001;
  plScrollTypeLeft = $00000002;
  plScrollTypeBottom = $00000004;
  plScrollTypeRight = $00000008;
  plScrollTypeAll = $0000000F;

// Constants for enum PivotArrowModeEnum
type
  PivotArrowModeEnum = TOleEnum;
const
  plArrowModeAccept = $00000000;
  plArrowModeEdit = $00000001;

// Constants for enum PivotCaretPositionEnum
type
  PivotCaretPositionEnum = TOleEnum;
const
  plCaretPositionAtEnd = $00000000;
  plCaretPositionAtMouse = $00000001;

// Constants for enum PivotEditModeEnum
type
  PivotEditModeEnum = TOleEnum;
const
  plEditNone = $00000000;
  plEditInProgress = $00000001;

// Constants for enum ChartLegendPositionEnum
type
  ChartLegendPositionEnum = TOleEnum;
const
  chLegendPositionAutomatic = $00000000;
  chLegendPositionTop = $00000001;
  chLegendPositionBottom = $00000002;
  chLegendPositionLeft = $00000003;
  chLegendPositionRight = $00000004;

// Constants for enum ChartProjectionModeEnum
type
  ChartProjectionModeEnum = TOleEnum;
const
  chProjectionModePerspective = $00000000;
  chProjectionModeOrthographic = $00000001;

// Constants for enum ChartDataLabelPositionEnum
type
  ChartDataLabelPositionEnum = TOleEnum;
const
  chLabelPositionAutomatic = $00000000;
  chLabelPositionCenter = $00000001;
  chLabelPositionInsideEnd = $00000002;
  chLabelPositionInsideBase = $00000003;
  chLabelPositionOutsideEnd = $00000004;
  chLabelPositionOutsideBase = $00000005;
  chLabelPositionLeft = $00000006;
  chLabelPositionRight = $00000007;
  chLabelPositionTop = $00000008;
  chLabelPositionBottom = $00000009;

// Constants for enum ChartDimensionsEnum
type
  ChartDimensionsEnum = TOleEnum;
const
  chDimSeriesNames = $00000000;
  chDimCategories = $00000001;
  chDimValues = $00000002;
  chDimYValues = $00000003;
  chDimXValues = $00000004;
  chDimOpenValues = $00000005;
  chDimCloseValues = $00000006;
  chDimHighValues = $00000007;
  chDimLowValues = $00000008;
  chDimBubbleValues = $00000009;
  chDimRValues = $0000000A;
  chDimThetaValues = $0000000B;
  chDimFilter = $0000000E;
  chDimCharts = $0000000F;
  chDimFormatValues = $00000010;

// Constants for enum ChartEndStyleEnum
type
  ChartEndStyleEnum = TOleEnum;
const
  chEndStyleNone = $00000001;
  chEndStyleCap = $00000002;

// Constants for enum ChartErrorBarDirectionEnum
type
  ChartErrorBarDirectionEnum = TOleEnum;
const
  chErrorBarDirectionY = $00000000;
  chErrorBarDirectionX = $00000001;

// Constants for enum ChartErrorBarIncludeEnum
type
  ChartErrorBarIncludeEnum = TOleEnum;
const
  chErrorBarIncludePlusValues = $00000000;
  chErrorBarIncludeMinusValues = $00000001;
  chErrorBarIncludeBoth = $00000002;

// Constants for enum ChartErrorBarTypeEnum
type
  ChartErrorBarTypeEnum = TOleEnum;
const
  chErrorBarTypeFixedValue = $00000000;
  chErrorBarTypePercent = $00000001;
  chErrorBarTypeCustom = $00000002;

// Constants for enum ChartErrorBarCustomValuesEnum
type
  ChartErrorBarCustomValuesEnum = TOleEnum;
const
  chErrorBarPlusValues = $0000000C;
  chErrorBarMinusValues = $0000000D;

// Constants for enum ChartMarkerStyleEnum
type
  ChartMarkerStyleEnum = TOleEnum;
const
  chMarkerStyleNone = $00000000;
  chMarkerStyleSquare = $00000001;
  chMarkerStyleDiamond = $00000002;
  chMarkerStyleTriangle = $00000003;
  chMarkerStyleX = $00000004;
  chMarkerStyleStar = $00000005;
  chMarkerStyleDot = $00000006;
  chMarkerStyleDash = $00000007;
  chMarkerStyleCircle = $00000008;
  chMarkerStylePlus = $00000009;

// Constants for enum ChartTrendlineTypeEnum
type
  ChartTrendlineTypeEnum = TOleEnum;
const
  chTrendlineTypeExponential = $00000000;
  chTrendlineTypeLinear = $00000001;
  chTrendlineTypeLogarithmic = $00000002;
  chTrendlineTypePolynomial = $00000003;
  chTrendlineTypePower = $00000004;
  chTrendlineTypeMovingAverage = $00000005;

// Constants for enum ChartChartTypeEnum
type
  ChartChartTypeEnum = TOleEnum;
const
  chChartTypeCombo3D = $FFFFFFFE;
  chChartTypeCombo = $FFFFFFFF;
  chChartTypeColumnClustered = $00000000;
  chChartTypeColumnStacked = $00000001;
  chChartTypeColumnStacked100 = $00000002;
  chChartTypeBarClustered = $00000003;
  chChartTypeBarStacked = $00000004;
  chChartTypeBarStacked100 = $00000005;
  chChartTypeLine = $00000006;
  chChartTypeLineStacked = $00000008;
  chChartTypeLineStacked100 = $0000000A;
  chChartTypeLineMarkers = $00000007;
  chChartTypeLineStackedMarkers = $00000009;
  chChartTypeLineStacked100Markers = $0000000B;
  chChartTypeSmoothLine = $0000000C;
  chChartTypeSmoothLineStacked = $0000000E;
  chChartTypeSmoothLineStacked100 = $00000010;
  chChartTypeSmoothLineMarkers = $0000000D;
  chChartTypeSmoothLineStackedMarkers = $0000000F;
  chChartTypeSmoothLineStacked100Markers = $00000011;
  chChartTypePie = $00000012;
  chChartTypePieExploded = $00000013;
  chChartTypePieStacked = $00000014;
  chChartTypeScatterMarkers = $00000015;
  chChartTypeScatterLine = $00000019;
  chChartTypeScatterLineMarkers = $00000018;
  chChartTypeScatterLineFilled = $0000001A;
  chChartTypeScatterSmoothLine = $00000017;
  chChartTypeScatterSmoothLineMarkers = $00000016;
  chChartTypeBubble = $0000001B;
  chChartTypeBubbleLine = $0000001C;
  chChartTypeArea = $0000001D;
  chChartTypeAreaStacked = $0000001E;
  chChartTypeAreaStacked100 = $0000001F;
  chChartTypeDoughnut = $00000020;
  chChartTypeDoughnutExploded = $00000021;
  chChartTypeRadarLine = $00000022;
  chChartTypeRadarLineMarkers = $00000023;
  chChartTypeRadarLineFilled = $00000024;
  chChartTypeRadarSmoothLine = $00000025;
  chChartTypeRadarSmoothLineMarkers = $00000026;
  chChartTypeStockHLC = $00000027;
  chChartTypeStockOHLC = $00000028;
  chChartTypePolarMarkers = $00000029;
  chChartTypePolarLine = $0000002A;
  chChartTypePolarLineMarkers = $0000002B;
  chChartTypePolarSmoothLine = $0000002C;
  chChartTypePolarSmoothLineMarkers = $0000002D;
  chChartTypeColumn3D = $0000002E;
  chChartTypeColumnClustered3D = $0000002F;
  chChartTypeColumnStacked3D = $00000030;
  chChartTypeColumnStacked1003D = $00000031;
  chChartTypeBar3D = $00000032;
  chChartTypeBarClustered3D = $00000033;
  chChartTypeBarStacked3D = $00000034;
  chChartTypeBarStacked1003D = $00000035;
  chChartTypeLine3D = $00000036;
  chChartTypeLineOverlapped3D = $00000037;
  chChartTypeLineStacked3D = $00000038;
  chChartTypeLineStacked1003D = $00000039;
  chChartTypePie3D = $0000003A;
  chChartTypePieExploded3D = $0000003B;
  chChartTypeArea3D = $0000003C;
  chChartTypeAreaOverlapped3D = $0000003D;
  chChartTypeAreaStacked3D = $0000003E;
  chChartTypeAreaStacked1003D = $0000003F;

// Constants for enum ChartBoundaryValueTypeEnum
type
  ChartBoundaryValueTypeEnum = TOleEnum;
const
  chBoundaryValuePercent = $00000000;
  chBoundaryValueAbsolute = $00000001;

// Constants for enum ChartSizeRepresentsEnum
type
  ChartSizeRepresentsEnum = TOleEnum;
const
  chSizeIsWidth = $00000000;
  chSizeIsArea = $00000001;

// Constants for enum ChartDataSourceTypeEnum
type
  ChartDataSourceTypeEnum = TOleEnum;
const
  chDataSourceTypeUnknown = $00000000;
  chDataSourceTypeSpreadsheet = $00000001;
  chDataSourceTypePivotTable = $00000003;
  chDataSourceTypeQuery = $00000004;
  chDataSourceTypeDSC = $00000005;

// Constants for enum ChartSelectionMarksEnum
type
  ChartSelectionMarksEnum = TOleEnum;
const
  chSelectionMarksNone = $00000000;
  chSelectionMarksAll = $00000001;
  chSelectionMarksPivot = $00000002;

// Constants for enum ChartPlotAggregatesEnum
type
  ChartPlotAggregatesEnum = TOleEnum;
const
  chPlotAggregatesNone = $00000000;
  chPlotAggregatesSeries = $00000001;
  chPlotAggregatesCategories = $00000002;
  chPlotAggregatesCharts = $00000003;
  chPlotAggregatesFromTotalOrientation = $00000004;

// Constants for enum ChartDropZonesEnum
type
  ChartDropZonesEnum = TOleEnum;
const
  chDropZoneFilter = $00000000;
  chDropZoneSeries = $00000001;
  chDropZoneCategories = $00000002;
  chDropZoneData = $00000003;
  chDropZoneCharts = $00000004;

// Constants for enum MsoAppLanguageID
type
  MsoAppLanguageID = TOleEnum;
const
  msoLanguageIDInstall = $00000001;
  msoLanguageIDUI = $00000002;
  msoLanguageIDHelp = $00000003;
  msoLanguageIDExeMode = $00000004;
  msoLanguageIDUIPrevious = $00000005;

// Constants for enum MsoLanguageID
type
  MsoLanguageID = TOleEnum;
const
  msoLanguageIDMixed = $FFFFFFFE;
  msoLanguageIDNone = $00000000;
  msoLanguageIDNoProofing = $00000400;
  msoLanguageIDAfrikaans = $00000436;
  msoLanguageIDAlbanian = $0000041C;
  msoLanguageIDArabicAlgeria = $00001401;
  msoLanguageIDArabicBahrain = $00003C01;
  msoLanguageIDArabicEgypt = $00000C01;
  msoLanguageIDArabicIraq = $00000801;
  msoLanguageIDArabicJordan = $00002C01;
  msoLanguageIDArabicKuwait = $00003401;
  msoLanguageIDArabicLebanon = $00003001;
  msoLanguageIDArabicLibya = $00001001;
  msoLanguageIDArabicMorocco = $00001801;
  msoLanguageIDArabicOman = $00002001;
  msoLanguageIDArabicQatar = $00004001;
  msoLanguageIDArabic = $00000401;
  msoLanguageIDArabicSyria = $00002801;
  msoLanguageIDArabicTunisia = $00001C01;
  msoLanguageIDArabicUAE = $00003801;
  msoLanguageIDArabicYemen = $00002401;
  msoLanguageIDArmenian = $0000042B;
  msoLanguageIDAssamese = $0000044D;
  msoLanguageIDAzeriCyrillic = $0000082C;
  msoLanguageIDAzeriLatin = $0000042C;
  msoLanguageIDBasque = $0000042D;
  msoLanguageIDByelorussian = $00000423;
  msoLanguageIDBengali = $00000445;
  msoLanguageIDBulgarian = $00000402;
  msoLanguageIDBurmese = $00000455;
  msoLanguageIDCatalan = $00000403;
  msoLanguageIDChineseHongKong = $00000C04;
  msoLanguageIDChineseMacao = $00001404;
  msoLanguageIDSimplifiedChinese = $00000804;
  msoLanguageIDChineseSingapore = $00001004;
  msoLanguageIDTraditionalChinese = $00000404;
  msoLanguageIDCroatian = $0000041A;
  msoLanguageIDCzech = $00000405;
  msoLanguageIDDanish = $00000406;
  msoLanguageIDBelgianDutch = $00000813;
  msoLanguageIDDutch = $00000413;
  msoLanguageIDEnglishAUS = $00000C09;
  msoLanguageIDEnglishBelize = $00002809;
  msoLanguageIDEnglishCanadian = $00001009;
  msoLanguageIDEnglishCaribbean = $00002409;
  msoLanguageIDEnglishIreland = $00001809;
  msoLanguageIDEnglishJamaica = $00002009;
  msoLanguageIDEnglishNewZealand = $00001409;
  msoLanguageIDEnglishPhilippines = $00003409;
  msoLanguageIDEnglishSouthAfrica = $00001C09;
  msoLanguageIDEnglishTrinidad = $00002C09;
  msoLanguageIDEnglishUK = $00000809;
  msoLanguageIDEnglishUS = $00000409;
  msoLanguageIDEnglishZimbabwe = $00003009;
  msoLanguageIDEstonian = $00000425;
  msoLanguageIDFaeroese = $00000438;
  msoLanguageIDFarsi = $00000429;
  msoLanguageIDFinnish = $0000040B;
  msoLanguageIDBelgianFrench = $0000080C;
  msoLanguageIDFrenchCameroon = $00002C0C;
  msoLanguageIDFrenchCanadian = $00000C0C;
  msoLanguageIDFrenchCotedIvoire = $0000300C;
  msoLanguageIDFrench = $0000040C;
  msoLanguageIDFrenchLuxembourg = $0000140C;
  msoLanguageIDFrenchMali = $0000340C;
  msoLanguageIDFrenchMonaco = $0000180C;
  msoLanguageIDFrenchReunion = $0000200C;
  msoLanguageIDFrenchSenegal = $0000280C;
  msoLanguageIDSwissFrench = $0000100C;
  msoLanguageIDFrenchWestIndies = $00001C0C;
  msoLanguageIDFrenchZaire = $0000240C;
  msoLanguageIDFrisianNetherlands = $00000462;
  msoLanguageIDGaelicIreland = $0000083C;
  msoLanguageIDGaelicScotland = $0000043C;
  msoLanguageIDGalician = $00000456;
  msoLanguageIDGeorgian = $00000437;
  msoLanguageIDGermanAustria = $00000C07;
  msoLanguageIDGerman = $00000407;
  msoLanguageIDGermanLiechtenstein = $00001407;
  msoLanguageIDGermanLuxembourg = $00001007;
  msoLanguageIDSwissGerman = $00000807;
  msoLanguageIDGreek = $00000408;
  msoLanguageIDGujarati = $00000447;
  msoLanguageIDHebrew = $0000040D;
  msoLanguageIDHindi = $00000439;
  msoLanguageIDHungarian = $0000040E;
  msoLanguageIDIcelandic = $0000040F;
  msoLanguageIDIndonesian = $00000421;
  msoLanguageIDItalian = $00000410;
  msoLanguageIDSwissItalian = $00000810;
  msoLanguageIDJapanese = $00000411;
  msoLanguageIDKannada = $0000044B;
  msoLanguageIDKashmiri = $00000460;
  msoLanguageIDKazakh = $0000043F;
  msoLanguageIDKhmer = $00000453;
  msoLanguageIDKirghiz = $00000440;
  msoLanguageIDKonkani = $00000457;
  msoLanguageIDKorean = $00000412;
  msoLanguageIDLao = $00000454;
  msoLanguageIDLatvian = $00000426;
  msoLanguageIDLithuanian = $00000427;
  msoLanguageIDMacedonian = $0000042F;
  msoLanguageIDMalaysian = $0000043E;
  msoLanguageIDMalayBruneiDarussalam = $0000083E;
  msoLanguageIDMalayalam = $0000044C;
  msoLanguageIDMaltese = $0000043A;
  msoLanguageIDManipuri = $00000458;
  msoLanguageIDMarathi = $0000044E;
  msoLanguageIDMongolian = $00000450;
  msoLanguageIDNepali = $00000461;
  msoLanguageIDNorwegianBokmol = $00000414;
  msoLanguageIDNorwegianNynorsk = $00000814;
  msoLanguageIDOriya = $00000448;
  msoLanguageIDPolish = $00000415;
  msoLanguageIDBrazilianPortuguese = $00000416;
  msoLanguageIDPortuguese = $00000816;
  msoLanguageIDPunjabi = $00000446;
  msoLanguageIDRhaetoRomanic = $00000417;
  msoLanguageIDRomanianMoldova = $00000818;
  msoLanguageIDRomanian = $00000418;
  msoLanguageIDRussianMoldova = $00000819;
  msoLanguageIDRussian = $00000419;
  msoLanguageIDSamiLappish = $0000043B;
  msoLanguageIDSanskrit = $0000044F;
  msoLanguageIDSerbianCyrillic = $00000C1A;
  msoLanguageIDSerbianLatin = $0000081A;
  msoLanguageIDSesotho = $00000430;
  msoLanguageIDSindhi = $00000459;
  msoLanguageIDSlovak = $0000041B;
  msoLanguageIDSlovenian = $00000424;
  msoLanguageIDSorbian = $0000042E;
  msoLanguageIDSpanishArgentina = $00002C0A;
  msoLanguageIDSpanishBolivia = $0000400A;
  msoLanguageIDSpanishChile = $0000340A;
  msoLanguageIDSpanishColombia = $0000240A;
  msoLanguageIDSpanishCostaRica = $0000140A;
  msoLanguageIDSpanishDominicanRepublic = $00001C0A;
  msoLanguageIDSpanishEcuador = $0000300A;
  msoLanguageIDSpanishElSalvador = $0000440A;
  msoLanguageIDSpanishGuatemala = $0000100A;
  msoLanguageIDSpanishHonduras = $0000480A;
  msoLanguageIDMexicanSpanish = $0000080A;
  msoLanguageIDSpanishNicaragua = $00004C0A;
  msoLanguageIDSpanishPanama = $0000180A;
  msoLanguageIDSpanishParaguay = $00003C0A;
  msoLanguageIDSpanishPeru = $0000280A;
  msoLanguageIDSpanishPuertoRico = $0000500A;
  msoLanguageIDSpanishModernSort = $00000C0A;
  msoLanguageIDSpanish = $0000040A;
  msoLanguageIDSpanishUruguay = $0000380A;
  msoLanguageIDSpanishVenezuela = $0000200A;
  msoLanguageIDSutu = $00000430;
  msoLanguageIDSwahili = $00000441;
  msoLanguageIDSwedishFinland = $0000081D;
  msoLanguageIDSwedish = $0000041D;
  msoLanguageIDTajik = $00000428;
  msoLanguageIDTamil = $00000449;
  msoLanguageIDTatar = $00000444;
  msoLanguageIDTelugu = $0000044A;
  msoLanguageIDThai = $0000041E;
  msoLanguageIDTibetan = $00000451;
  msoLanguageIDTsonga = $00000431;
  msoLanguageIDTswana = $00000432;
  msoLanguageIDTurkish = $0000041F;
  msoLanguageIDTurkmen = $00000442;
  msoLanguageIDUkrainian = $00000422;
  msoLanguageIDUrdu = $00000420;
  msoLanguageIDUzbekCyrillic = $00000843;
  msoLanguageIDUzbekLatin = $00000443;
  msoLanguageIDVenda = $00000433;
  msoLanguageIDVietnamese = $0000042A;
  msoLanguageIDWelsh = $00000452;
  msoLanguageIDXhosa = $00000434;
  msoLanguageIDZulu = $00000435;

// Constants for enum XlBorderWeight
type
  XlBorderWeight = TOleEnum;
const
  xlHairline = $00000001;
  xlThin = $00000002;
  xlMedium = $FFFFEFD6;
  xlThick = $00000004;

// Constants for enum XlColorIndex
type
  XlColorIndex = TOleEnum;
const
  xlColorIndexAutomatic = $FFFFEFF7;
  xlColorIndexNone = $FFFFEFD2;

// Constants for enum XlSearchDirection
type
  XlSearchDirection = TOleEnum;
const
  xlNext = $00000001;
  xlPrevious = $00000002;

// Constants for enum XlSortOrder
type
  XlSortOrder = TOleEnum;
const
  xlAscending = $00000001;
  xlDescending = $00000002;

// Constants for enum XlYesNoGuess
type
  XlYesNoGuess = TOleEnum;
const
  xlGuess = $00000000;
  xlYes = $00000001;
  xlNo = $00000002;

// Constants for enum XlReferenceStyle
type
  XlReferenceStyle = TOleEnum;
const
  xlA1 = $00000001;
  xlR1C1 = $FFFFEFCA;

// Constants for enum SheetExportActionEnum
type
  SheetExportActionEnum = TOleEnum;
const
  ssExportActionNone = $00000000;
  ssExportActionOpenInExcel = $00000001;

// Constants for enum SheetExportFormat
type
  SheetExportFormat = TOleEnum;
const
  ssExportAsAppropriate = $00000000;
  ssExportXMLSpreadsheet = $00000001;
  ssExportHTML = $00000002;

// Constants for enum SheetFilterFunction
type
  SheetFilterFunction = TOleEnum;
const
  ssFilterFunctionInclude = $00000001;
  ssFilterFunctionExclude = $00000002;

// Constants for enum XlWindowType
type
  XlWindowType = TOleEnum;
const
  xlWorkbook = $00000001;

// Constants for enum XlSheetType
type
  XlSheetType = TOleEnum;
const
  xlWorksheet = $FFFFEFB9;

// Constants for enum XlSheetVisibility
type
  XlSheetVisibility = TOleEnum;
const
  xlSheetVisible = $FFFFFFFF;
  xlSheetHidden = $00000000;
  xlSheetVeryHidden = $00000002;

// Constants for enum XlCalculation
type
  XlCalculation = TOleEnum;
const
  xlCalculationAutomatic = $FFFFEFF7;
  xlCalculationManual = $FFFFEFD9;

// Constants for enum XlDirection
type
  XlDirection = TOleEnum;
const
  xlDown = $FFFFEFE7;
  xlToLeft = $FFFFEFC1;
  xlToRight = $FFFFEFBF;
  xlUp = $FFFFEFBE;

// Constants for enum XlUnderlineStyle
type
  XlUnderlineStyle = TOleEnum;
const
  xlUnderlineStyleNone = $FFFFEFD2;
  xlUnderlineStyleSingle = $00000002;
  xlUnderlineStyleDouble = $FFFFEFE9;
  xlUnderlineStyleSingleAccounting = $00000004;
  xlUnderlineStyleDoubleAccounting = $00000005;

// Constants for enum XlBordersIndex
type
  XlBordersIndex = TOleEnum;
const
  xlEdgeLeft = $00000007;
  xlEdgeTop = $00000008;
  xlEdgeBottom = $00000009;
  xlEdgeRight = $0000000A;
  xlInsideVertical = $0000000B;
  xlInsideHorizontal = $0000000C;

// Constants for enum XlLineStyle
type
  XlLineStyle = TOleEnum;
const
  xlLineStyleNone = $FFFFEFD2;
  xlContinuous = $00000001;
  xlDash = $FFFFEFED;
  xlDot = $FFFFEFEA;
  xlDashDot = $00000004;
  xlDashDotDot = $00000005;

// Constants for enum XlHAlign
type
  XlHAlign = TOleEnum;
const
  xlHAlignGeneral = $00000001;
  xlHAlignLeft = $FFFFEFDD;
  xlHAlignCenter = $FFFFEFF4;
  xlHAlignRight = $FFFFEFC8;
  xlHAlignFill = $00000005;

// Constants for enum XlReadingOrder
type
  XlReadingOrder = TOleEnum;
const
  xlContext = $FFFFEC76;
  xlLTR = $FFFFEC75;
  xlRTL = $FFFFEC74;

// Constants for enum XlVAlign
type
  XlVAlign = TOleEnum;
const
  xlVAlignBottom = $FFFFEFF5;
  xlVAlignCenter = $FFFFEFF4;
  xlVAlignTop = $FFFFEFC0;

// Constants for enum TipTypeEnum
type
  TipTypeEnum = TOleEnum;
const
  eTipTypeNone = $FFFFFFFF;
  eTipTypeText = $00000000;
  eTipTypeHTML = $00000001;
  eTipTypeAuto = $00000002;

// Constants for enum LineStyleEnum
type
  LineStyleEnum = TOleEnum;
const
  owcLineStyleNone = $00000000;
  owcLineStyleAutomatic = $00000001;
  owcLineStyleSolid = $00000002;
  owcLineStyleDash = $00000003;
  owcLineStyleDot = $00000004;
  owcLineStyleDashDot = $00000005;
  owcLineStyleDashDotDot = $00000006;

// Constants for enum ExpandBitmapTypeEnum
type
  ExpandBitmapTypeEnum = TOleEnum;
const
  ecBitmapPlusMinus = $00000000;
  ecBitmapUpDownArrow = $00000001;
  ecBitmapOpenCloseFolder = $00000002;

// Constants for enum DscFieldTypeEnum
type
  DscFieldTypeEnum = TOleEnum;
const
  dscParameter = $FFFFFFFF;
  dscOutput = $00000001;
  dscCalculated = $00000002;
  dscGrouping = $00000003;

// Constants for enum DscTotalTypeEnum
type
  DscTotalTypeEnum = TOleEnum;
const
  dscNone = $00000000;
  dscSum = $00000001;
  dscAvg = $00000002;
  dscMin = $00000003;
  dscMax = $00000004;
  dscCount = $00000005;
  dscAny = $00000006;
  dscStdev = $00000007;

// Constants for enum DscGroupOnEnum
type
  DscGroupOnEnum = TOleEnum;
const
  dscEachValue = $00000000;
  dscPrefix = $00000001;
  dscYear = $00000002;
  dscQuarter = $00000003;
  dscMonth = $00000004;
  dscWeek = $00000005;
  dscDay = $00000006;
  dscHour = $00000007;
  dscMinute = $00000008;
  dscInterval = $00000009;

// Constants for enum DscJoinTypeEnum
type
  DscJoinTypeEnum = TOleEnum;
const
  dscInnerJoin = $00000001;
  dscLeftOuterJoin = $00000002;
  dscRightOuterJoin = $00000003;

// Constants for enum DscPageRelTypeEnum
type
  DscPageRelTypeEnum = TOleEnum;
const
  dscSublist = $00000001;
  dscLookup = $00000002;

// Constants for enum DscObjectTypeEnum
type
  DscObjectTypeEnum = TOleEnum;
const
  dscobjUnknown = $FFFFFFFF;
  dscobjSchemaRowsource = $00000001;
  dscobjSchemaField = $00000002;
  dscobjSchemaRelationship = $00000004;
  dscobjRecordsetDef = $00000008;
  dscobjPageRowsource = $00000010;
  dscobjPageField = $00000020;
  dscobjSublistRelationship = $00000040;
  dscobjLookupRelationship = $00000080;
  dscobjGroupingDef = $00000100;
  dscobjDatamodel = $00000200;
  dscobjPageRelatedField = $00000400;
  dscobjParameterValue = $00000800;
  dscobjSchemaRelatedField = $00001000;
  dscobjSchemaParameter = $00002000;
  dscobjSchemaProperty = $00004000;
  dscobjSchemaDiagram = $00008000;

// Constants for enum NavButtonEnum
type
  NavButtonEnum = TOleEnum;
const
  navbtnMoveFirst = $00000000;
  navbtnMovePrev = $00000001;
  navbtnMoveNext = $00000002;
  navbtnMoveLast = $00000003;
  navbtnNew = $00000004;
  navbtnDelete = $00000005;
  navbtnSave = $00000006;
  navbtnUndo = $00000007;
  navbtnSortAscending = $00000008;
  navbtnSortDescending = $00000009;
  navbtnApplyFilter = $0000000A;
  navbtnToggleFilter = $0000000B;
  navbtnHelp = $0000000C;

// Constants for enum DscDropTypeEnum
type
  DscDropTypeEnum = TOleEnum;
const
  dscDefault = $00000000;
  dscGrid = $00000001;
  dscFields = $00000002;

// Constants for enum DscDropLocationEnum
type
  DscDropLocationEnum = TOleEnum;
const
  dscAbove = $00000001;
  dscWithin = $00000002;
  dscBelow = $00000003;

// Constants for enum DscHyperlinkPartEnum
type
  DscHyperlinkPartEnum = TOleEnum;
const
  dschlDisplayedValue = $00000000;
  dschlDisplayText = $00000001;
  dschlAddress = $00000002;
  dschlSubAddress = $00000003;
  dschlScreenTip = $00000004;
  dschlFullAddress = $00000005;

// Constants for enum DscLocationEnum
type
  DscLocationEnum = TOleEnum;
const
  dscSystem = $FFFFFFFF;
  dscClient = $00000000;
  dscServer = $00000001;

// Constants for enum DscRecordsetTypeEnum
type
  DscRecordsetTypeEnum = TOleEnum;
const
  dscSnapshot = $00000001;
  dscUpdatableSnapshot = $00000002;

// Constants for enum DscRowsourceTypeEnum
type
  DscRowsourceTypeEnum = TOleEnum;
const
  dscTable = $00000001;
  dscView = $00000002;
  dscCommandText = $00000003;
  dscProcedure = $00000004;
  dscCommandFile = $00000005;

// Constants for enum DscFetchTypeEnum
type
  DscFetchTypeEnum = TOleEnum;
const
  dscFull = $00000001;
  dscParameterized = $00000002;
  dscSelectControl = $00008000;

// Constants for enum DscAdviseTypeEnum
type
  DscAdviseTypeEnum = TOleEnum;
const
  dscAdd = $00000001;
  dscDelete = $00000002;
  dscMove = $00000003;
  dscLoad = $00000004;
  dscChange = $00000005;
  dscDeleteComplete = $00000006;
  dscRename = $00000007;

// Constants for enum OCCommandId
type
  OCCommandId = TOleEnum;
const
  ocCommandAbout = $000003EF;
  ocCommandUndo = $000003E8;
  ocCommandCut = $000003E9;
  ocCommandCopy = $000003EA;
  ocCommandPaste = $000003EB;
  ocCommandProperties = $000003ED;
  ocCommandHelp = $000003EE;
  ocCommandExport = $000003EC;
  ocCommandSortAsc = $000007D0;
  ocCommandSortDesc = $000007EF;
  ocCommandChooser = $000003F2;
  ocCommandAutoFilter = $000003F9;
  ocCommandAutoCalc = $000003F8;
  ocCommandCollapse = $000003F5;
  ocCommandExpand = $000003F4;
  ocCommandRefresh = $000003F6;

// Constants for enum XlApplicationInternational
type
  XlApplicationInternational = TOleEnum;
const
  xl24HourClock = $00000021;
  xl4DigitYears = $0000002B;
  xlAlternateArraySeparator = $00000010;
  xlColumnSeparator = $0000000E;
  xlCountryCode = $00000001;
  xlCountrySetting = $00000002;
  xlCurrencyBefore = $00000025;
  xlCurrencyCode = $00000019;
  xlCurrencyDigits = $0000001B;
  xlCurrencyLeadingZeros = $00000028;
  xlCurrencyMinusSign = $00000026;
  xlCurrencyNegative = $0000001C;
  xlCurrencySpaceBefore = $00000024;
  xlCurrencyTrailingZeros = $00000027;
  xlDateOrder = $00000020;
  xlDateSeparator = $00000011;
  xlDayCode = $00000015;
  xlDayLeadingZero = $0000002A;
  xlDecimalSeparator = $00000003;
  xlGeneralFormatName = $0000001A;
  xlHourCode = $00000016;
  xlLeftBrace = $0000000C;
  xlLeftBracket = $0000000A;
  xlListSeparator = $00000005;
  xlLowerCaseColumnLetter = $00000009;
  xlLowerCaseRowLetter = $00000008;
  xlMDY = $0000002C;
  xlMetric = $00000023;
  xlMinuteCode = $00000017;
  xlMonthCode = $00000014;
  xlMonthLeadingZero = $00000029;
  xlMonthNameChars = $0000001E;
  xlNoncurrencyDigits = $0000001D;
  xlNonEnglishFunctions = $00000022;
  xlRightBrace = $0000000D;
  xlRightBracket = $0000000B;
  xlRowSeparator = $0000000F;
  xlSecondCode = $00000018;
  xlThousandsSeparator = $00000004;
  xlTimeLeadingZero = $0000002D;
  xlTimeSeparator = $00000012;
  xlUpperCaseColumnLetter = $00000007;
  xlUpperCaseRowLetter = $00000006;
  xlWeekdayNameChars = $0000001F;
  xlYearCode = $00000013;

// Constants for enum FieldListRelationshipTypeEnum
type
  FieldListRelationshipTypeEnum = TOleEnum;
const
  flrelNoRel = $00000000;
  flrelOneToMany = $00000001;
  flrelManyToOne = $00000002;
  flrelOneToOnePrimaryPrimary = $00000004;
  flrelOneToOnePrimaryForeign = $00000008;
  flrelUniqueConstraint = $00000010;
  flrelUniqueIndex = $00000020;

// Constants for enum FieldListObjectTypeEnum
type
  FieldListObjectTypeEnum = TOleEnum;
const
  flTables = $00000001;
  flViews = $00000002;
  flStoredProcedures = $00000004;
  flCmdText = $00000008;
  flSchemaDiagrams = $00000010;
  flOLAPCube = $00000020;
  flAll = $0000003F;

// Constants for enum DaAttrEnum
type
  DaAttrEnum = TOleEnum;
const
  daLength = $00000001;
  daPrecision = $00000002;
  daScale = $00000003;

// Constants for enum SectTypeEnum
type
  SectTypeEnum = TOleEnum;
const
  sectTypeNone = $00000000;
  sectTypeCaption = $00000001;
  sectTypeHeader = $00000002;
  sectTypeFooter = $00000003;
  sectTypeRecNav = $00000004;

// Constants for enum DscStatusEnum
type
  DscStatusEnum = TOleEnum;
const
  dscDeleteOK = $00000000;
  dscDeleteCancel = $00000001;
  dscDeleteUserCancel = $00000002;

// Constants for enum DscDisplayAlert
type
  DscDisplayAlert = TOleEnum;
const
  dscDataAlertContinue = $00000000;
  dscDataAlertDisplay = $00000001;

// Constants for enum DefaultControlTypeEnum
type
  DefaultControlTypeEnum = TOleEnum;
const
  ctlTypeTextBox = $00000000;
  ctlTypeBoundSpan = $00000001;
  ctlTypeBoundHTML = $00000001;

// Constants for enum DataPageDesignerFlags
type
  DataPageDesignerFlags = TOleEnum;
const
  designFlagDontDelete = $00000001;
  designFlagDontCleanup = $00000002;

// Constants for enum ExportableConnectStringEnum
type
  ExportableConnectStringEnum = TOleEnum;
const
  exportNone = $00000000;
  exportForExcel = $00000001;

// Constants for enum DscOfflineTypeEnum
type
  DscOfflineTypeEnum = TOleEnum;
const
  dscOfflineNone = $00000000;
  dscOfflineMerge = $00000001;
  dscOfflineXMLDataFile = $00000002;

// Constants for enum DscXMLLocationEnum
type
  DscXMLLocationEnum = TOleEnum;
const
  dscXMLEmbedded = $00000000;
  dscXMLDataFile = $00000001;

// Constants for enum DscSaveAsEnum
type
  DscSaveAsEnum = TOleEnum;
const
  dscSaveAsEmbeddedXML = $00000000;
  dscSaveAsXMLDataFile = $00000001;

// Constants for enum DscEncodingEnum
type
  DscEncodingEnum = TOleEnum;
const
  dscUTF8 = $00000000;
  dscUTF16 = $00000001;

// Constants for enum NotificationType
type
  NotificationType = TOleEnum;
const
  dscConnectionReset = $00000000;
  dscDataReset = $00000001;

// Constants for enum RefreshType
type
  RefreshType = TOleEnum;
const
  dscRefreshConnection = $00000000;
  dscRefreshData = $00000001;

// Constants for enum SynchronizationStatus
type
  SynchronizationStatus = TOleEnum;
const
  dscSynchronizing = $00000000;
  dscSynchronizationDone = $00000001;

// Constants for enum FieldListSelectRestriction
type
  FieldListSelectRestriction = TOleEnum;
const
  flSRNone = $00000000;
  flSRParent = $00000001;
  flSRParentAndType = $00000002;

// Constants for enum ChartFillStyleEnum
type
  ChartFillStyleEnum = TOleEnum;
const
  chNone = $FFFFFFFF;
  chSolid = $00000000;

// Constants for enum ChartColorIndexEnum
type
  ChartColorIndexEnum = TOleEnum;
const
  chColorAutomatic = $FFFFFFFF;
  chColorNone = $FFFFFFFE;

// Constants for enum ChartDataGroupingFunctionEnum
type
  ChartDataGroupingFunctionEnum = TOleEnum;
const
  chDataGroupingFunctionMinimum = $00000000;
  chDataGroupingFunctionMaximum = $00000001;
  chDataGroupingFunctionSum = $00000002;
  chDataGroupingFunctionAverage = $00000003;

// Constants for enum ChartSeriesByEnum
type
  ChartSeriesByEnum = TOleEnum;
const
  chSeriesByRows = $00000000;
  chSeriesByColumns = $00000001;

// Constants for enum ChartSpecialDataSourcesEnum
type
  ChartSpecialDataSourcesEnum = TOleEnum;
const
  chDataBound = $00000000;
  chDataLiteral = $FFFFFFFF;
  chDataNone = $FFFFFFFE;
  chDataLinked = $FFFFFFFD;

// Constants for enum ChartPivotDataReferenceEnum
type
  ChartPivotDataReferenceEnum = TOleEnum;
const
  chPivotColumns = $FFFFFFFF;
  chPivotRows = $FFFFFFFE;
  chPivotColAggregates = $FFFFFFFD;
  chPivotRowAggregates = $FFFFFFFC;

// Constants for enum Chart3DSurfaceEnum
type
  Chart3DSurfaceEnum = TOleEnum;
const
  chSurfaceBackWall = $00000000;
  chSurfaceSideWall = $00000001;
  chSurfaceFloor = $00000002;

// Constants for enum ChartLabelOrientationEnum
type
  ChartLabelOrientationEnum = TOleEnum;
const
  chLabelOrientationAutomatic = $000003E8;
  chLabelOrientationHorizontal = $00000000;
  chLabelOrientationUpward = $0000005A;
  chLabelOrientationDownward = $FFFFFFA6;

// Constants for enum ChartCommandIdEnum
type
  ChartCommandIdEnum = TOleEnum;
const
  chCommandCut = $000003E9;
  chCommandDeleteSelection = $000003F3;
  chCommandShowPropertyToolbox = $000003ED;
  chCommandShowContextMenu = $00001771;
  chCommandUndo = $000003E8;
  chCommandSelectPrevMinor = $00001772;
  chCommandSelectNextMinor = $00001773;
  chCommandSelectPrevMajor = $00001774;
  chCommandSelectNextMajor = $00001775;
  chCommandShowHelp = $000003EE;
  chCommandShowAbout = $000003EF;
  chCommandPassiveAlert = $0000178A;
  chCommandLaunchDataFinder = $0000178B;
  chCommandShowLegend = $0000178C;
  chCommandRefresh = $000003F6;
  chCommandByRowCol = $00001790;
  chCommandSortAscending = $000007D0;
  chCommandSortDescending = $000007EF;
  chCommandAutoFilter = $000003F9;
  chCommandAutoCalc = $000003F8;
  chCommandExpand = $000003F4;
  chCommandCollapse = $000003F5;
  chCommandDrill = $00001792;
  chCommandFieldList = $000003F2;
  chCommandFilterByMenu = $000003F7;
  chCommandSortAscendingByTotal = $00001793;
  chCommandSortDescendingByTotal = $00001794;
  chCommandDrillOut = $00001795;
  chCommandTogglePropertiesInScreenTip = $00001796;
  chCommandChartType = $00001797;
  chCommandShowWizard = $00001798;
  chCommandSum = $00001799;
  chCommandCount = $0000179A;
  chCommandMin = $0000179B;
  chCommandMax = $0000179C;
  chCommandAverage = $0000179D;
  chCommandStdDev = $0000179E;
  chCommandVar = $0000179F;
  chCommandStdDevP = $000017A0;
  chCommandVarP = $000017A1;
  chCommandFontName = $0000041A;
  chCommandFontSize = $0000041B;
  chCommandBold = $0000041C;
  chCommandItalic = $0000041D;
  chCommandUnderline = $0000041E;
  chCommandLineColor = $0000041F;
  chCommandInteriorColor = $00000420;
  chCommandFontColor = $00000421;
  chCommandMultiChart = $000017A2;
  chCommandUnifiedScales = $000017A3;
  chCommandShowDropZones = $000017A4;
  chCommandShowToolbar = $000017A5;
  chCommandShowTop1 = $0000044C;
  chCommandShowTop2 = $0000044D;
  chCommandShowTop5 = $0000044E;
  chCommandShowTop10 = $0000044F;
  chCommandShowTop25 = $00000450;
  chCommandShowTop1Percent = $00000451;
  chCommandShowTop2Percent = $00000452;
  chCommandShowTop5Percent = $00000453;
  chCommandShowTop10Percent = $00000454;
  chCommandShowTop25Percent = $00000455;
  chCommandShowBottom1 = $00000456;
  chCommandShowBottom2 = $00000457;
  chCommandShowBottom5 = $00000458;
  chCommandShowBottom10 = $00000459;
  chCommandShowBottom25 = $0000045A;
  chCommandShowBottom1Percent = $0000045B;
  chCommandShowBottom2Percent = $0000045C;
  chCommandShowBottom5Percent = $0000045D;
  chCommandShowBottom10Percent = $0000045E;
  chCommandShowBottom25Percent = $0000045F;
  chCommandShowOther = $00000460;
  chCommandShowAll = $00000461;
  chCommandShowTopNMenu = $00000463;
  chCommandShowBottomNMenu = $00000464;
  chCommandConditionalFilter = $00000465;
  chCommandMoveToFilterArea = $000017A6;
  chCommandMoveToSeriesArea = $000017A7;
  chCommandMoveToCategoryArea = $000017A8;
  chCommandMoveToChartArea = $000017A9;

// Constants for enum AddinClientTypeEnum
type
  AddinClientTypeEnum = TOleEnum;
const
  ssCoerceNum = $00000001;
  ssCoerceStr = $00000002;
  ssCoerceBool = $00000004;
  ssCoerceErr = $00000010;
  ssCoerceMulti = $00000040;
  ssCoerceInt = $00000800;

// Constants for enum SpreadSheetCommandId
type
  SpreadSheetCommandId = TOleEnum;
const
  ssCommandUndo = $000003E8;
  ssCommandCut = $000003E9;
  ssCommandCopy = $000003EA;
  ssCommandPaste = $000003EB;
  ssCommandExport = $000003EC;
  ssCommandProperties = $000003ED;
  ssCommandHelp = $000003EE;
  ssCommandAbout = $000003EF;
  ssCommandSortAsc = $000007D0;
  ssCommandSortAscLast = $000007EE;
  ssCommandSortDesc = $000007EF;
  ssCommandSortDescLast = $0000080D;
  ssCommandAutosum = $00002710;
  ssCommandAutoFilter = $00002711;
  ssCommandClear = $00002712;
  ssCommandBold = $0000041C;
  ssCommandItalic = $0000041D;
  ssCommandUnderline = $0000041E;
  ssCommandDeleteRows = $00002716;
  ssCommandDeleteCols = $00002717;
  ssCommandInsertRows = $00002718;
  ssCommandInsertCols = $00002719;
  ssCommandRecalcForce = $0000271A;
  ssCommandSelectRow = $0000271B;
  ssCommandSelectCol = $0000271C;
  ssCommandSelectAll = $0000271D;
  ssCommandMoveLeft = $0000271E;
  ssCommandMoveUp = $0000271F;
  ssCommandMoveRight = $00002720;
  ssCommandMoveDown = $00002721;
  ssCommandScrollLeft = $00002722;
  ssCommandScrollUp = $00002723;
  ssCommandScrollRight = $00002724;
  ssCommandScrollDown = $00002725;
  ssCommandMoveNext = $00002726;
  ssCommandMovePrevious = $00002727;
  ssCommandTabNext = $00002728;
  ssCommandTabPrevious = $00002729;
  ssCommandMoveToEndLeft = $0000272A;
  ssCommandMoveToEndUp = $0000272B;
  ssCommandMoveToEndRight = $0000272C;
  ssCommandMoveToEndDown = $0000272D;
  ssCommandExpandLeft = $0000272E;
  ssCommandExpandUp = $0000272F;
  ssCommandExpandRight = $00002730;
  ssCommandExpandDown = $00002731;
  ssCommandExpandToEndLeft = $00002732;
  ssCommandExpandToEndUp = $00002733;
  ssCommandExpandToEndRight = $00002734;
  ssCommandExpandToEndDown = $00002735;
  ssCommandEnterEditMode = $00002736;
  ssCommandShowContextMenu = $00002737;
  ssCommandToggleToolbar = $00002738;
  ssCommandEscape = $00002739;
  ssCommandMoveToLast = $0000273A;
  ssCommandExpandToLast = $0000273B;
  ssCommandMoveToLastInRow = $0000273C;
  ssCommandMovePageDown = $0000273D;
  ssCommandExpandPageDown = $0000273E;
  ssCommandMovePageUp = $0000273F;
  ssCommandExpandPageUp = $00002740;
  ssCommandMovePageRight = $0000274E;
  ssCommandExpandPageRight = $0000274F;
  ssCommandMovePageLeft = $00002750;
  ssCommandExpandPageLeft = $00002751;
  ssCommandMoveToOrigin = $00002741;
  ssCommandExpandToOrigin = $00002742;
  ssCommandMoveToHome = $00002743;
  ssCommandExpandToHome = $00002744;
  ssCommandExpandMenu = $00002745;
  ssCommandEat = $00002746;
  ssCommandNextSheet = $00002747;
  ssCommandPrevSheet = $00002748;
  ssCommandNewSheet = $00002749;
  ssCommandSelectArray = $0000274A;
  ssCommandSelectArraySilent = $00002753;
  ssCommandRecalc = $0000274B;
  ssCommandRefresh = $0000274C;
  ssCommandRefreshAll = $0000274D;
  ssCommandMakeActiveCellVisible = $00002752;

// Constants for enum SheetCommandEnum
type
  SheetCommandEnum = TOleEnum;
const
  ssCalculate = $00000000;
  ssInsertRows = $00000002;
  ssInsertColumns = $00000003;
  ssDeleteRows = $00000004;
  ssDeleteColumns = $00000005;
  ssCut = $00000006;
  ssCopy = $00000007;
  ssPaste = $00000008;
  ssExport = $00000009;
  ssUndo = $0000000A;
  ssSortAscending = $0000000B;
  ssSortDescending = $0000000C;
  ssFind = $0000000D;
  ssClear = $0000000E;
  ssAutoFilter = $0000000F;
  ssProperties = $00000010;
  ssHelp = $00000011;

// Constants for enum XlConstants
type
  XlConstants = TOleEnum;
const
  xlAutomatic = $FFFFEFF7;
  xlNone = $FFFFEFD2;

// Constants for enum XlDeleteShiftDirection
type
  XlDeleteShiftDirection = TOleEnum;
const
  xlShiftToLeft = $FFFFEFC1;
  xlShiftUp = $FFFFEFBE;

// Constants for enum XlInsertShiftDirection
type
  XlInsertShiftDirection = TOleEnum;
const
  xlShiftDown = $FFFFEFE7;
  xlShiftToRight = $FFFFEFBF;

// Constants for enum XlFindLookIn
type
  XlFindLookIn = TOleEnum;
const
  xlFormulas = $FFFFEFE5;
  xlValues = $FFFFEFBD;

// Constants for enum XlLookAt
type
  XlLookAt = TOleEnum;
const
  xlPart = $00000002;
  xlWhole = $00000001;

// Constants for enum XlOrientation
type
  XlOrientation = TOleEnum;
const
  xlDownward = $FFFFEFB6;
  xlHorizontal = $FFFFEFE0;
  xlUpward = $FFFFEFB5;
  xlVertical = $FFFFEFBA;

// Constants for enum XlSearchOrder
type
  XlSearchOrder = TOleEnum;
const
  xlByColumns = $00000002;
  xlByRows = $00000001;

// Constants for enum XlRangeValueType
type
  XlRangeValueType = TOleEnum;
const
  xlRangeValueDefault = $0000000A;
  xlRangeValueXMLSpreadsheet = $0000000B;
  xlRangeValueHTML = $000003E8;
  xlRangeValueCSV = $000003E9;

// Constants for enum PivotViewReasonEnum
type
  PivotViewReasonEnum = TOleEnum;
const
  plViewReasonSelectionChange = $00000000;
  plViewReasonSystemColorChange = $00000001;
  plViewReasonDataChange = $00000002;
  plViewReasonFontNameChange = $00000003;
  plViewReasonFontSizeChange = $00000004;
  plViewReasonFontBoldChange = $00000005;
  plViewReasonFontItalicChange = $00000006;
  plViewReasonFontUnderlineChange = $00000007;
  plViewReasonMemberExpandedChange = $00000008;
  plViewReasonCellExpandedChange = $00000009;
  plViewReasonDetailRowHeightChange = $0000000A;
  plViewReasonFieldDetailWidthChange = $0000000B;
  plViewReasonFieldGroupedWidthChange = $0000000C;
  plViewReasonViewDetailWidthChange = $0000000D;
  plViewReasonFieldSetWidthChange = $0000000E;
  plViewReasonTotalWidthChange = $0000000F;
  plViewReasonForeColorChange = $00000010;
  plViewReasonBackColorChange = $00000011;
  plViewReasonAlignmentChange = $00000012;
  plViewReasonNumberFormatChange = $00000013;
  plViewReasonDetailTopChange = $00000014;
  plViewReasonDetailLeftChange = $00000015;
  plViewReasonTopChange = $00000016;
  plViewReasonLeftChange = $00000017;
  plViewReasonRightToLeftChange = $00000018;
  plViewReasonTotalOrientationChange = $00000019;
  plViewReasonDisplayOutlineChange = $0000001A;
  plViewReasonFieldCaptionChange = $0000001B;
  plViewReasonFieldSetCaptionChange = $0000001C;
  plViewReasonLabelCaptionChange = $0000001D;
  plViewReasonMemberCaptionChange = $0000001E;
  plViewReasonTotalCaptionChange = $0000001F;
  plViewReasonAllowFilteringChange = $00000020;
  plViewReasonAllowGroupingChange = $00000021;
  plViewReasonWidthChange = $00000022;
  plViewReasonHeightChange = $00000023;
  plViewReasonLabelVisibleChange = $00000024;
  plViewReasonDisplayToolbarChange = $00000025;
  plViewReasonMaxHeightChange = $00000026;
  plViewReasonMaxWidthChange = $00000027;
  plViewReasonAutoFitChange = $00000028;
  plViewReasonFieldExpandedChange = $00000029;
  plViewReasonExpandDetailsChange = $0000002A;
  plViewReasonDetailMaxWidthChange = $0000002B;
  plViewReasonDetailMaxHeightChange = $0000002C;
  plViewReasonTopOffsetChange = $0000002D;
  plViewReasonLeftOffsetChange = $0000002E;
  plViewReasonDetailTopOffsetChange = $0000002F;
  plViewReasonDetailLeftOffsetChange = $00000030;
  plViewReasonIsHyperlinkChange = $00000031;
  plViewReasonMemberPropertyDisplayInChange = $00000032;
  plViewReasonMemberPropertyCaptionChange = $00000033;
  plViewReasonMemberPropertiesOrderChange = $00000034;
  plViewReasonFieldGroupedHeightChange = $00000035;
  plViewReasonMemberHeightChange = $00000036;
  plViewReasonMemberWidthChange = $00000037;
  plViewReasonPropertyValueWidthChange = $00000038;
  plViewReasonPropertyHeightChange = $00000039;
  plViewReasonShowDetails = $0000003A;
  plViewReasonHideDetails = $0000003B;
  plViewReasonAllowCustomOrderingChange = $0000003C;
  plViewReasonAllowPropertyToolbox = $0000003D;
  plViewReasonExpandMembersChange = $0000003E;
  plViewReasonAllowEditsChange = $0000003F;
  plViewReasonAllowAdditionsChange = $00000040;
  plViewReasonAllowDeletionsChange = $00000041;
  plViewReasonSetFocus = $00000042;
  plViewReasonKillFocus = $00000043;
  plViewReasonDisplayScreenTipsChange = $00000044;
  plViewReasonShowAsChange = $00000045;
  plViewReasonMemberCaptionsChange = $00000046;
  plViewReasonPropertyCaptionWidthChange = $00000047;
  plViewReasonDataMemberCaptionChange = $00000048;
  plViewReasonDisplayInFieldListChange = $00000049;
  plViewReasonToolbarChange = $0000004A;
  plViewReasonUseProviderFormattingChange = $0000004B;

// Constants for enum PivotDataReasonEnum
type
  PivotDataReasonEnum = TOleEnum;
const
  plDataReasonInsertFieldSet = $00000000;
  plDataReasonRemoveFieldSet = $00000001;
  plDataReasonInsertTotal = $00000002;
  plDataReasonRemoveTotal = $00000003;
  plDataReasonAllowDetailsChange = $00000004;
  plDataReasonSortDirectionChange = $00000005;
  plDataReasonSortOnChange = $00000006;
  plDataReasonSortOnScopeChange = $00000007;
  plDataReasonFilterFunctionChange = $00000008;
  plDataReasonFilterContextChange = $00000009;
  plDataReasonDisplayCalculatedMembersChange = $0000000A;
  plDataReasonFilterOnChange = $0000000B;
  plDataReasonFilterOnScopeChange = $0000000C;
  plDataReasonFilterFunctionValueChange = $0000000D;
  plDataReasonTotalNameChange = $0000000E;
  plDataReasonIncludedMembersChange = $0000000F;
  plDataReasonExcludedMembersChange = $00000010;
  plDataReasonIsIncludedChange = $00000011;
  plDataReasonDisplayEmptyMembersChange = $00000013;
  plDataReasonTotalFunctionChange = $00000014;
  plDataReasonUser = $00000015;
  plDataReasonDataSourceChange = $00000016;
  plDataReasonDataMemberChange = $00000017;
  plDataReasonGroupOnChange = $00000018;
  plDataReasonUnknown = $00000019;
  plDataReasonGroupStartChange = $0000001A;
  plDataReasonGroupIntervalChange = $0000001B;
  plDataReasonIsFilteredChange = $0000001C;
  plDataReasonOrderedMembersChange = $0000001D;
  plDataReasonGroupEndChange = $0000001E;
  plDataReasonCommandTextChange = $0000001F;
  plDataReasonConnectionStringChange = $00000020;
  plDataReasonMemberPropertyIsIncludedChange = $00000021;
  plDataReasonMemberPropertyDisplayInChange = $00000022;
  plDataReasonSubtotalsChange = $00000023;
  plDataReasonTotalExpressionChange = $00000024;
  plDataReasonTotalSolveOrderChange = $00000025;
  plDataReasonTotalDeleted = $00000026;
  plDataReasonFieldSetDeleted = $00000027;
  plDataReasonRecordChanged = $00000028;
  plDataReasonAllowMultiFilterChange = $00000029;
  plDataReasonAllIncludeExcludeChange = $0000002A;
  plDataReasonAdhocFieldAdded = $0000002B;
  plDataReasonAdhocFieldDeleted = $0000002C;
  plDataReasonAdhocMemberChanged = $0000002D;
  plDataReasonAlwaysIncludeInCubeChange = $0000002E;
  plDataReasonExpressionChange = $0000002F;
  plDataReasonTotalAllMembersChange = $00000030;
  plDataReasonDisplayCellColorChange = $00000031;
  plDataReasonFilterCrossJoinsChange = $00000032;
  plDataReasonRefreshDataSource = $00000033;
  plDataReasonFieldSetNameChange = $00000034;
  plDataReasonFieldNameChange = $00000035;

// Constants for enum PivotTableReasonEnum
type
  PivotTableReasonEnum = TOleEnum;
const
  plPivotTableReasonTotalAdded = $00000000;
  plPivotTableReasonTotalDeleted = $00000001;
  plPivotTableReasonFieldSetAdded = $00000002;
  plPivotTableReasonFieldAdded = $00000003;

// Constants for enum PivotCommandId
type
  PivotCommandId = TOleEnum;
const
  plCommandAbout = $000003EF;
  plCommandDelete = $000003F3;
  plCommandFilterBySel = $00002EE1;
  plCommandChooser = $000003F2;
  plCommandProperties = $000003ED;
  plCommandInsertField = $00002EE4;
  plCommandAutoSum = $00002EE5;
  plCommandAutoCount = $00002EE6;
  plCommandAutoMin = $00002EE7;
  plCommandAutoMax = $00002EE8;
  plCommandDropzones = $00002EE9;
  plCommandRemove = $00002EEA;
  plCommandNextHorz = $00002EEC;
  plCommandNextVert = $00002EED;
  plCommandLeftEdge = $00002EEE;
  plCommandRightEdge = $00002EEF;
  plCommandTopLeftEdge = $00002EF0;
  plCommandBottomRightEdge = $00002EF1;
  plCommandNextHorzCell = $00002EF2;
  plCommandPrevHorzCell = $00002EF3;
  plCommandLastLeft = $00002EF4;
  plCommandLastRight = $00002EF5;
  plCommandLastUp = $00002EF6;
  plCommandLastDown = $00002EF7;
  plCommandEnterDetails = $00002EF8;
  plCommandExitDetails = $00002EF9;
  plCommandLeft = $00002EFA;
  plCommandRight = $00002EFB;
  plCommandUp = $00002EFC;
  plCommandDown = $00002EFD;
  plCommandPageUp = $00002EFE;
  plCommandPageDown = $00002EFF;
  plCommandPageLeft = $00002F00;
  plCommandPageRight = $00002F01;
  plCommandGroupByRow = $00002F02;
  plCommandGroupByColumn = $00002F03;
  plCommandUngroup = $00002F04;
  plCommandFilter = $00002F05;
  plCommandPromote = $00002F06;
  plCommandDemote = $00002F07;
  plCommandExpand = $000003F4;
  plCommandCollapse = $000003F5;
  plCommandSubtotal = $00002F0A;
  plCommandExport = $000003EC;
  plCommandToolbar = $00002F0C;
  plCommandSortAsc = $000007D0;
  plCommandSortDesc = $000007EF;
  plCommandClearCustomOrdering = $00002F7A;
  plCommandHelp = $000003EE;
  plCommandRefresh = $000003F6;
  plCommandAutoFilter = $000003F9;
  plCommandCopy = $000003EA;
  plCommandExpandIndicator = $00002F13;
  plCommandSelectField = $00002F14;
  plCommandSelectRow = $00002F15;
  plCommandSelectAll = $00002F16;
  plCommandFormatGeneral = $00002F17;
  plCommandFormatCurrency = $00002F18;
  plCommandFormatPercent = $00002F19;
  plCommandFormatExponent = $00002F1A;
  plCommandFormatDate = $00002F1B;
  plCommandFormatTime = $00002F1C;
  plCommandFormatComma = $00002F1D;
  plCommandFormatBold = $00002F1E;
  plCommandFormatItalic = $00002F1F;
  plCommandFormatUnderline = $00002F20;
  plCommandFormatUnderline2 = $00002F72;
  plCommandFilterByMenu = $00002F21;
  plCommandContextMenu = $00002F22;
  plCommandPrevHorz = $00002F23;
  plCommandPrevVert = $00002F24;
  plCommandNextVertCell = $00002F25;
  plCommandPrevVertCell = $00002F26;
  plCommandExtendLeft = $00002F28;
  plCommandExtendRight = $00002F29;
  plCommandExtendUp = $00002F2A;
  plCommandExtendDown = $00002F2B;
  plCommandExtendPageLeft = $00002F2C;
  plCommandExtendPageRight = $00002F2D;
  plCommandExtendPageUp = $00002F2E;
  plCommandExtendPageDown = $00002F2F;
  plCommandHyperlink = $00002F32;
  plCommandOpenHyperlinkInPlace = $00002F33;
  plCommandOpenHyperlinkInWindow = $00002F34;
  plCommandMoveMemUp = $00002F35;
  plCommandMoveMemDown = $00002F36;
  plCommandMoveMemLeft = $00002F37;
  plCommandMoveMemRight = $00002F38;
  plCommandAutoAverage = $00002F39;
  plCommandAutoStdDev = $00002F3A;
  plCommandAutoVar = $00002F3B;
  plCommandAutoStdDevP = $00002F3C;
  plCommandAutoVarP = $00002F3D;
  plCommandShowDetails = $00002F3F;
  plCommandHideDetails = $00002F40;
  plCommandTogglePropertiesInReport = $00002F41;
  plCommandTogglePropertiesInScreenTip = $00002F42;
  plCommandStartEdit = $00002F43;
  plCommandEndEdit = $00002F44;
  plCommandDeleteRow = $00002F45;
  plCommandCreateCalculatedTotal = $00002F46;
  plCommandPaste = $000003EB;
  plCommandExtendTopLeftEdge = $00002F4B;
  plCommandExtendBottomRightEdge = $00002F4C;
  plCommandTogglePropertyInReport = $00003264;
  plCommandTogglePropertyInScreenTip = $00003296;
  plCommandAutoCalc = $000003F8;
  plCommandCalculated = $00002F4E;
  plCommandShowTop1 = $0000044C;
  plCommandShowTop2 = $0000044D;
  plCommandShowTop5 = $0000044E;
  plCommandShowTop10 = $0000044F;
  plCommandShowTop25 = $00000450;
  plCommandShowTop1Percent = $00000451;
  plCommandShowTop2Percent = $00000452;
  plCommandShowTop5Percent = $00000453;
  plCommandShowTop10Percent = $00000454;
  plCommandShowTop25Percent = $00000455;
  plCommandShowBottom1 = $00000456;
  plCommandShowBottom2 = $00000457;
  plCommandShowBottom5 = $00000458;
  plCommandShowBottom10 = $00000459;
  plCommandShowBottom25 = $0000045A;
  plCommandShowBottom1Percent = $0000045B;
  plCommandShowBottom2Percent = $0000045C;
  plCommandShowBottom5Percent = $0000045D;
  plCommandShowBottom10Percent = $0000045E;
  plCommandShowBottom25Percent = $0000045F;
  plCommandShowOther = $00000460;
  plCommandShowAll = $00000461;
  plCommandShowTopNMenu = $00000463;
  plCommandShowBottomNMenu = $00000464;
  plCommandConditionalFilter = $00000465;
  plCommandShowAs = $00002F66;
  plCommandShowAsNormal = $00002F67;
  plCommandShowAsPercentOfRowTotal = $00002F68;
  plCommandShowAsPercentOfColumnTotal = $00002F69;
  plCommandShowAsPercentOfRowParent = $00002F6A;
  plCommandShowAsPercentOfColumnParent = $00002F6B;
  plCommandShowAsPercentOfGrandTotal = $00002F6C;
  plCommandFormatAlignLeft = $00002F6D;
  plCommandFormatAlignCenter = $00002F6E;
  plCommandFormatAlignRight = $00002F6F;
  plCommandFormatAlignAutomatic = $00002F7E;
  plCommandFormatName = $00002F70;
  plCommandFormatSize = $00002F71;
  plCommandFormatForeColor = $00002F73;
  plCommandFormatBackColor = $00002F74;
  plCommandShowAllPropertiesInReport = $00002F75;
  plCommandHideAllPropertiesInReport = $00002F76;
  plCommandShowAllPropertiesInScreenTip = $00002F77;
  plCommandHideAllPropertiesInScreenTip = $00002F78;
  plCommandProfile = $00002F79;
  plCommandGroupMembers = $00002F7B;
  plCommandUngroupMembers = $00002F7C;
  plCommandCut = $00002F7D;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IChartEvents = dispinterface;
  ByRef = interface;
  ByRefDisp = dispinterface;
  ChChartDraw = interface;
  ChChartDrawDisp = dispinterface;
  ChInterior = interface;
  ChInteriorDisp = dispinterface;
  ChBorder = interface;
  ChBorderDisp = dispinterface;
  ChFont = interface;
  ChFontDisp = dispinterface;
  ChLine = interface;
  ChLineDisp = dispinterface;
  ChChartSpace = interface;
  ChChartSpaceDisp = dispinterface;
  ChCharts = interface;
  ChChartsDisp = dispinterface;
  ChChart = interface;
  ChChartDisp = dispinterface;
  ChAxes = interface;
  ChAxesDisp = dispinterface;
  ChScaling = interface;
  ChScalingDisp = dispinterface;
  ChAxis = interface;
  ChAxisDisp = dispinterface;
  ChGridlines = interface;
  ChGridlinesDisp = dispinterface;
  ChTitle = interface;
  ChTitleDisp = dispinterface;
  ChCategoryLabels = interface;
  ChCategoryLabelsDisp = dispinterface;
  ChCategoryLabel = interface;
  ChCategoryLabelDisp = dispinterface;
  PivotResultAxis = interface;
  PivotResultAxisDisp = dispinterface;
  PivotResultGroupAxis = interface;
  PivotResultGroupAxisDisp = dispinterface;
  PivotData = interface;
  PivotDataDisp = dispinterface;
  PivotView = interface;
  PivotViewDisp = dispinterface;
  PivotFieldSets = interface;
  PivotFieldSetsDisp = dispinterface;
  PivotFieldSet = interface;
  PivotFieldSetDisp = dispinterface;
  PivotFields = interface;
  PivotFieldsDisp = dispinterface;
  PivotField = interface;
  PivotFieldDisp = dispinterface;
  PivotFont = interface;
  PivotFontDisp = dispinterface;
  PivotTotal = interface;
  PivotTotalDisp = dispinterface;
  PivotMemberProperties = interface;
  PivotMemberPropertiesDisp = dispinterface;
  PivotMemberProperty = interface;
  PivotMemberPropertyDisp = dispinterface;
  PivotMember = interface;
  PivotMemberDisp = dispinterface;
  PivotMembers = interface;
  PivotMembersDisp = dispinterface;
  PivotFilterUpdate = interface;
  PivotFilterUpdateDisp = dispinterface;
  PivotAxis = interface;
  PivotAxisDisp = dispinterface;
  PivotGroupAxis = interface;
  PivotGroupAxisDisp = dispinterface;
  PivotLabel = interface;
  PivotLabelDisp = dispinterface;
  PivotDataAxis = interface;
  PivotDataAxisDisp = dispinterface;
  PivotTotals = interface;
  PivotTotalsDisp = dispinterface;
  PivotFilterAxis = interface;
  PivotFilterAxisDisp = dispinterface;
  IPivotControl = interface;
  IPivotControlDisp = dispinterface;
  PivotClassFactory = interface;
  PivotClassFactoryDisp = dispinterface;
  PivotDetailCell = interface;
  PivotDetailCellDisp = dispinterface;
  PivotCell = interface;
  PivotCellDisp = dispinterface;
  PivotAggregates = interface;
  PivotAggregatesDisp = dispinterface;
  PivotAggregate = interface;
  PivotAggregateDisp = dispinterface;
  PivotAxisMember = interface;
  PivotAxisMemberDisp = dispinterface;
  PivotRowMember = interface;
  PivotRowMemberDisp = dispinterface;
  PivotAxisMembers = interface;
  PivotAxisMembersDisp = dispinterface;
  PivotHyperlink = interface;
  PivotHyperlinkDisp = dispinterface;
  PivotResultMemberProperties = interface;
  PivotResultMemberPropertiesDisp = dispinterface;
  PivotResultMemberProperty = interface;
  PivotResultMemberPropertyDisp = dispinterface;
  PivotResultField = interface;
  PivotResultFieldDisp = dispinterface;
  PivotResultGroupField = interface;
  PivotResultGroupFieldDisp = dispinterface;
  PivotRowMembers = interface;
  PivotRowMembersDisp = dispinterface;
  PivotColumnMember = interface;
  PivotColumnMemberDisp = dispinterface;
  PivotColumnMembers = interface;
  PivotColumnMembersDisp = dispinterface;
  PivotDetailRange = interface;
  PivotDetailRangeDisp = dispinterface;
  PivotPageMember = interface;
  PivotPageMemberDisp = dispinterface;
  PivotPageMembers = interface;
  PivotPageMembersDisp = dispinterface;
  DropSource = interface;
  DropSourceDisp = dispinterface;
  DropTarget = interface;
  DropTargetDisp = dispinterface;
  OCCommands = interface;
  OCCommandsDisp = dispinterface;
  OCCommand = interface;
  OCCommandDisp = dispinterface;
  PivotResultRowAxis = interface;
  PivotResultRowAxisDisp = dispinterface;
  PivotResultColumnAxis = interface;
  PivotResultColumnAxisDisp = dispinterface;
  PivotResultFilterAxis = interface;
  PivotResultFilterAxisDisp = dispinterface;
  PivotResultDataAxis = interface;
  PivotResultDataAxisDisp = dispinterface;
  PivotRange = interface;
  PivotRangeDisp = dispinterface;
  PivotResultLabel = interface;
  PivotResultLabelDisp = dispinterface;
  PivotResultPageAxis = interface;
  PivotResultPageAxisDisp = dispinterface;
  PivotResultGroupFields = interface;
  PivotResultGroupFieldsDisp = dispinterface;
  Coordinate = interface;
  CoordinateDisp = dispinterface;
  ChLegend = interface;
  ChLegendDisp = dispinterface;
  ChLegendEntries = interface;
  ChLegendEntriesDisp = dispinterface;
  ChLegendEntry = interface;
  ChLegendEntryDisp = dispinterface;
  ChPlotArea = interface;
  ChPlotAreaDisp = dispinterface;
  ChSurface = interface;
  ChSurfaceDisp = dispinterface;
  ChSeriesCollection = interface;
  ChSeriesCollectionDisp = dispinterface;
  ChSeries = interface;
  ChSeriesDisp = dispinterface;
  ChDataLabelsCollection = interface;
  ChDataLabelsCollectionDisp = dispinterface;
  ChDataLabels = interface;
  ChDataLabelsDisp = dispinterface;
  ChDataLabel = interface;
  ChDataLabelDisp = dispinterface;
  ChPoints = interface;
  ChPointsDisp = dispinterface;
  ChPoint = interface;
  ChPointDisp = dispinterface;
  ChErrorBarsCollection = interface;
  ChErrorBarsCollectionDisp = dispinterface;
  ChErrorBars = interface;
  ChErrorBarsDisp = dispinterface;
  ChMarker = interface;
  ChMarkerDisp = dispinterface;
  ChTrendlines = interface;
  ChTrendlinesDisp = dispinterface;
  ChTrendline = interface;
  ChTrendlineDisp = dispinterface;
  ChFormatMap = interface;
  ChFormatMapDisp = dispinterface;
  ChSegments = interface;
  ChSegmentsDisp = dispinterface;
  ChSegment = interface;
  ChSegmentDisp = dispinterface;
  ChSegmentBoundary = interface;
  ChSegmentBoundaryDisp = dispinterface;
  ChDropZone = interface;
  ChDropZoneDisp = dispinterface;
  ChChartFields = interface;
  ChChartFieldsDisp = dispinterface;
  ChChartField = interface;
  ChChartFieldDisp = dispinterface;
  OWCLanguageSettings = interface;
  OWCLanguageSettingsDisp = dispinterface;
  ISpreadsheetEventSink = dispinterface;
  _Range = interface;
  _RangeDisp = dispinterface;
  ISpreadsheet = interface;
  ISpreadsheetDisp = dispinterface;
  Worksheet = interface;
  WorksheetDisp = dispinterface;
  AutoFilter = interface;
  AutoFilterDisp = dispinterface;
  Filters = interface;
  FiltersDisp = dispinterface;
  Filter = interface;
  FilterDisp = dispinterface;
  Criteria = interface;
  CriteriaDisp = dispinterface;
  Names = interface;
  NamesDisp = dispinterface;
  Name = interface;
  NameDisp = dispinterface;
  Workbook = interface;
  WorkbookDisp = dispinterface;
  Sheets = interface;
  SheetsDisp = dispinterface;
  Windows = interface;
  WindowsDisp = dispinterface;
  Window = interface;
  WindowDisp = dispinterface;
  Pane = interface;
  PaneDisp = dispinterface;
  Headings = interface;
  HeadingsDisp = dispinterface;
  Heading = interface;
  HeadingDisp = dispinterface;
  Panes = interface;
  PanesDisp = dispinterface;
  Worksheets = interface;
  WorksheetsDisp = dispinterface;
  Protection = interface;
  ProtectionDisp = dispinterface;
  TitleBar = interface;
  TitleBarDisp = dispinterface;
  Font = interface;
  FontDisp = dispinterface;
  Interior = interface;
  InteriorDisp = dispinterface;
  Workbooks = interface;
  WorkbooksDisp = dispinterface;
  Borders = interface;
  BordersDisp = dispinterface;
  Border = interface;
  BorderDisp = dispinterface;
  Hyperlink = interface;
  HyperlinkDisp = dispinterface;
  IOleCommandTargetArgument = interface;
  IOleCommandTargetArgumentDisp = dispinterface;
  _NumberFormat = interface;
  _NumberFormatDisp = dispinterface;
  OCDirty = interface;
  IOMEvent = interface;
  IOMEventDisp = dispinterface;
  DesignAdviseSink = interface;
  SchemaFields = interface;
  SchemaFieldsDisp = dispinterface;
  SchemaField = interface;
  SchemaFieldDisp = dispinterface;
  SchemaProperties = interface;
  SchemaPropertiesDisp = dispinterface;
  SchemaProperty = interface;
  SchemaPropertyDisp = dispinterface;
  SchemaDiagram = interface;
  SchemaDiagramDisp = dispinterface;
  SchemaRowsources = interface;
  SchemaRowsourcesDisp = dispinterface;
  SchemaRowsource = interface;
  SchemaRowsourceDisp = dispinterface;
  LookupSchemaRelationships = interface;
  LookupSchemaRelationshipsDisp = dispinterface;
  SchemaRelationship = interface;
  SchemaRelationshipDisp = dispinterface;
  SchemaRelatedFields = interface;
  SchemaRelatedFieldsDisp = dispinterface;
  SchemaRelatedField = interface;
  SchemaRelatedFieldDisp = dispinterface;
  SublistSchemaRelationships = interface;
  SublistSchemaRelationshipsDisp = dispinterface;
  SchemaParameters = interface;
  SchemaParametersDisp = dispinterface;
  SchemaParameter = interface;
  SchemaParameterDisp = dispinterface;
  SchemaDiagrams = interface;
  SchemaDiagramsDisp = dispinterface;
  SchemaRelationships = interface;
  SchemaRelationshipsDisp = dispinterface;
  PageRowsources = interface;
  PageRowsourcesDisp = dispinterface;
  PageRowsource = interface;
  PageRowsourceDisp = dispinterface;
  RecordsetDef = interface;
  RecordsetDefDisp = dispinterface;
  SublistRelationships = interface;
  SublistRelationshipsDisp = dispinterface;
  PageRelationship = interface;
  PageRelationshipDisp = dispinterface;
  PageRelatedFields = interface;
  PageRelatedFieldsDisp = dispinterface;
  PageRelatedField = interface;
  PageRelatedFieldDisp = dispinterface;
  PageField = interface;
  PageFieldDisp = dispinterface;
  GroupingDef = interface;
  GroupingDefDisp = dispinterface;
  PageFields = interface;
  PageFieldsDisp = dispinterface;
  GroupingDefs = interface;
  GroupingDefsDisp = dispinterface;
  ParameterValues = interface;
  ParameterValuesDisp = dispinterface;
  ParameterValue = interface;
  ParameterValueDisp = dispinterface;
  LookupRelationships = interface;
  LookupRelationshipsDisp = dispinterface;
  RecordsetDefs = interface;
  RecordsetDefsDisp = dispinterface;
  AllPageFields = interface;
  AllPageFieldsDisp = dispinterface;
  AllGroupingDefs = interface;
  AllGroupingDefsDisp = dispinterface;
  IDARef = interface;
  IDARefDisp = dispinterface;
  Section = interface;
  SectionDisp = dispinterface;
  DataPage = interface;
  DataPageDisp = dispinterface;
  GroupLevel = interface;
  GroupLevelDisp = dispinterface;
  GroupLevels = interface;
  GroupLevelsDisp = dispinterface;
  DataPages = interface;
  DataPagesDisp = dispinterface;
  ElementExtension = interface;
  ElementExtensionDisp = dispinterface;
  ElementExtensions = interface;
  ElementExtensionsDisp = dispinterface;
  IDataSourceControl = interface;
  IDataSourceControlDisp = dispinterface;
  DSCEventInfo = interface;
  DSCEventInfoDisp = dispinterface;
  _DataSourceControlEvent = dispinterface;
  INavigationControl = interface;
  INavigationControlDisp = dispinterface;
  INavUIHost = interface;
  _NavigationEvent = dispinterface;
  IDataPageDesigner = interface;
  IOleUndoManager = interface;
  IOleUndoUnit = interface;
  IOleParentUndoUnit = interface;
  IEnumOleUndoUnits = interface;
  ISimpleDataConverter = interface;
  FieldListHierarchy = interface;
  FieldListHierarchyDisp = dispinterface;
  FieldListHierarchySite = interface;
  FieldListNode = interface;
  FieldListNodeDisp = dispinterface;
  FieldListType = interface;
  FieldListTypeDisp = dispinterface;
  FieldList = interface;
  FieldListDisp = dispinterface;
  FieldListDragData = interface;
  FieldListDragDataDisp = dispinterface;
  FieldListDragDataList = interface;
  FieldListDragDataListDisp = dispinterface;
  IOfflineInfo = interface;
  ChUserDefinedSelection = interface;
  ChUserDefinedSelectionDisp = dispinterface;
  IAddinHost = interface;
  IAddinHostDisp = dispinterface;
  IRangeEvents = dispinterface;
  IXRangeEnum = interface;
  IXRangeEnumDisp = dispinterface;
  IAddinClient = interface;
  IAddinClientDisp = dispinterface;
  IPivotControlEvents = dispinterface;
  TextFormat = interface;
  TextFormatDisp = dispinterface;
  ViewSurface = interface;
  ViewSurfaceDisp = dispinterface;
  ViewObject = interface;
  ViewObjectDisp = dispinterface;
  MouseTarget = interface;
  MouseTargetDisp = dispinterface;
  SelectionHighlight = interface;
  SelectionHighlightDisp = dispinterface;
  ActiveObject = interface;
  ActiveObjectDisp = dispinterface;
  PopupMenu = interface;
  PopupMenuDisp = dispinterface;
  AutoFitObject = interface;
  AutoFitObjectDisp = dispinterface;
  Moniker = interface;
  MonikerDisp = dispinterface;
  InplaceObject = interface;
  InplaceObjectDisp = dispinterface;
  PropertyNotify = interface;
  PropertyNotifyDisp = dispinterface;
  MutualExpando = interface;
  MutualExpandoDisp = dispinterface;
  EditableObject = interface;
  EditableObjectDisp = dispinterface;
  TipProvider = interface;
  TipProviderDisp = dispinterface;
  IPivotCopy = interface;
  IPivotCopyDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ChartSpace = ChChartSpace;
  Spreadsheet = ISpreadsheet;
  NumberFormat = _NumberFormat;
  DataSourceControl = IDataSourceControl;
  RecordNavigationControl = INavigationControl;
  FieldListControl = FieldList;
  OfflineInfo = IOfflineInfo;
  Range = _Range;
  PivotTable = IPivotControl;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}
  PInteger1 = ^Integer; {*}
  PWideString1 = ^WideString; {*}
  PIUnknown1 = ^IUnknown; {*}
  PPUserType1 = ^IOleUndoManager; {*}
  PPUserType2 = ^PageRowsource; {*}
  PPUserType3 = ^SchemaRelationship; {*}
  PPWideChar1 = ^PWideChar; {*}
  PWordBool1 = ^WordBool; {*}


// *********************************************************************//
// DispIntf:  IChartEvents
// Flags:     (4096) Dispatchable
// GUID:      {F5B39A7A-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  IChartEvents = dispinterface
    ['{F5B39A7A-1480-11D3-8549-00C04FAC67D7}']
    procedure DataSetChange; dispid 5101;
    procedure DblClick; dispid 5102;
    procedure Click; dispid 5103;
    procedure KeyDown(KeyCode: Integer; Shift: Integer); dispid 1009;
    procedure KeyUp(KeyCode: Integer; Shift: Integer); dispid 1008;
    procedure KeyPress(KeyAscii: Integer); dispid 1010;
    procedure BeforeKeyDown(KeyCode: Integer; Shift: Integer; const Cancel: ByRef); dispid 1006;
    procedure BeforeKeyUp(KeyCode: Integer; Shift: Integer; const Cancel: ByRef); dispid 1005;
    procedure BeforeKeyPress(KeyAscii: Integer; const Cancel: ByRef); dispid 1007;
    procedure MouseDown(Button: Integer; Shift: Integer; x: Integer; y: Integer); dispid 5107;
    procedure MouseMove(Button: Integer; Shift: Integer; x: Integer; y: Integer); dispid 5108;
    procedure MouseUp(Button: Integer; Shift: Integer; x: Integer; y: Integer); dispid 5109;
    procedure MouseWheel(Page: WordBool; Count: Integer); dispid 5118;
    procedure SelectionChange; dispid 5110;
    procedure BeforeScreenTip(const TipText: ByRef; const ContextObject: IDispatch); dispid 5120;
    procedure CommandEnabled(Command: OleVariant; const Enabled: ByRef); dispid 1000;
    procedure CommandChecked(Command: OleVariant; const Checked: ByRef); dispid 1001;
    procedure CommandTipText(Command: OleVariant; const Caption: ByRef); dispid 1002;
    procedure CommandBeforeExecute(Command: OleVariant; const Cancel: ByRef); dispid 1003;
    procedure CommandExecute(Command: OleVariant; Succeeded: WordBool); dispid 1004;
    procedure BeforeContextMenu(x: Integer; y: Integer; const Menu: ByRef; const Cancel: ByRef); dispid 1011;
    procedure BeforeRender(const drawObject: ChChartDraw; const chartObject: IDispatch; 
                           const Cancel: ByRef); dispid 5111;
    procedure AfterRender(const drawObject: ChChartDraw; const chartObject: IDispatch); dispid 5112;
    procedure AfterFinalRender(const drawObject: ChChartDraw); dispid 5113;
    procedure AfterLayout(const drawObject: ChChartDraw); dispid 5114;
    procedure ViewChange; dispid 5119;
  end;

// *********************************************************************//
// Interface: ByRef
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0B817E8E-5A5A-11D3-BE88-0050041DB15A}
// *********************************************************************//
  ByRef = interface(IDispatch)
    ['{0B817E8E-5A5A-11D3-BE88-0050041DB15A}']
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(Value: OleVariant); safecall;
    property Value: OleVariant read Get_Value write Set_Value;
  end;

// *********************************************************************//
// DispIntf:  ByRefDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0B817E8E-5A5A-11D3-BE88-0050041DB15A}
// *********************************************************************//
  ByRefDisp = dispinterface
    ['{0B817E8E-5A5A-11D3-BE88-0050041DB15A}']
    property Value: OleVariant dispid 0;
  end;

// *********************************************************************//
// Interface: ChChartDraw
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {278585C3-D74B-4E30-ACEB-77D4777639E6}
// *********************************************************************//
  ChChartDraw = interface(IDispatch)
    ['{278585C3-D74B-4E30-ACEB-77D4777639E6}']
    function Get_Interior: ChInterior; safecall;
    function Get_Border: ChBorder; safecall;
    function Get_Font: ChFont; safecall;
    function Get_Line: ChLine; safecall;
    function Get_DrawType: ChartDrawModesEnum; safecall;
    function Get_hDC: Integer; safecall;
    procedure BeginObject(id: Integer); safecall;
    procedure EndObject; safecall;
    procedure DrawLine(x0: Integer; y0: Integer; x1: Integer; y1: Integer); safecall;
    procedure DrawRectangle(Left: Integer; Top: Integer; Right: Integer; Bottom: Integer); safecall;
    procedure DrawEllipse(Left: Integer; Top: Integer; Right: Integer; Bottom: Integer); safecall;
    procedure DrawText(const bstrText: WideString; Left: Integer; Top: Integer); safecall;
    procedure DrawPolyLine(xValues: OleVariant; yValues: OleVariant); safecall;
    procedure DrawPolygon(xValues: OleVariant; yValues: OleVariant); safecall;
    function TextWidth(const Text: WideString): OleVariant; safecall;
    function TextHeight(const Text: WideString): OleVariant; safecall;
    property Interior: ChInterior read Get_Interior;
    property Border: ChBorder read Get_Border;
    property Font: ChFont read Get_Font;
    property Line: ChLine read Get_Line;
    property DrawType: ChartDrawModesEnum read Get_DrawType;
    property hDC: Integer read Get_hDC;
  end;

// *********************************************************************//
// DispIntf:  ChChartDrawDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {278585C3-D74B-4E30-ACEB-77D4777639E6}
// *********************************************************************//
  ChChartDrawDisp = dispinterface
    ['{278585C3-D74B-4E30-ACEB-77D4777639E6}']
    property Interior: ChInterior readonly dispid 1610743808;
    property Border: ChBorder readonly dispid 1610743809;
    property Font: ChFont readonly dispid 1610743810;
    property Line: ChLine readonly dispid 1610743811;
    property DrawType: ChartDrawModesEnum readonly dispid 1610743812;
    property hDC: Integer readonly dispid 1610743813;
    procedure BeginObject(id: Integer); dispid 1610743814;
    procedure EndObject; dispid 1610743815;
    procedure DrawLine(x0: Integer; y0: Integer; x1: Integer; y1: Integer); dispid 1610743816;
    procedure DrawRectangle(Left: Integer; Top: Integer; Right: Integer; Bottom: Integer); dispid 1610743817;
    procedure DrawEllipse(Left: Integer; Top: Integer; Right: Integer; Bottom: Integer); dispid 1610743818;
    procedure DrawText(const bstrText: WideString; Left: Integer; Top: Integer); dispid 1610743819;
    procedure DrawPolyLine(xValues: OleVariant; yValues: OleVariant); dispid 1610743820;
    procedure DrawPolygon(xValues: OleVariant; yValues: OleVariant); dispid 1610743821;
    function TextWidth(const Text: WideString): OleVariant; dispid 1610743822;
    function TextHeight(const Text: WideString): OleVariant; dispid 1610743823;
  end;

// *********************************************************************//
// Interface: ChInterior
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {56C833A6-3E1C-11D3-831A-00C04F991C70}
// *********************************************************************//
  ChInterior = interface(IDispatch)
    ['{56C833A6-3E1C-11D3-831A-00C04F991C70}']
    function Get_Color: OleVariant; safecall;
    procedure Set_Color(Color: OleVariant); safecall;
    function Get_DefaultColor: OleVariant; safecall;
    function Get_BackColor: OleVariant; safecall;
    procedure Set_BackColor(BackColor: OleVariant); safecall;
    function Get_Pattern: ChartPatternTypeEnum; safecall;
    function Get_FillType: ChartFillTypeEnum; safecall;
    function Get_PresetGradientType: ChartPresetGradientTypeEnum; safecall;
    function Get_GradientStyle: ChartGradientStyleEnum; safecall;
    function Get_GradientVariant: ChartGradientVariantEnum; safecall;
    function Get_GradientDegree: Double; safecall;
    function Get_PresetTexture: ChartPresetTextureEnum; safecall;
    function Get_TextureName: WideString; safecall;
    function Get_TextureFormat: ChartTextureFormatEnum; safecall;
    function Get_TextureStackUnit: Double; safecall;
    function Get_TexturePlacement: ChartTexturePlacementEnum; safecall;
    procedure SetPatterned(patternType: ChartPatternTypeEnum; Color: OleVariant; 
                           BackColor: OleVariant); safecall;
    procedure SetPresetGradient(GradientStyle: ChartGradientStyleEnum; 
                                gradientVarient: ChartGradientVariantEnum; 
                                gradientPreset: ChartPresetGradientTypeEnum); safecall;
    procedure SetTextured(textureFile: OleVariant; TextureFormat: ChartTextureFormatEnum; 
                          stackUnit: Double; TexturePlacement: ChartTexturePlacementEnum); safecall;
    procedure SetOneColorGradient(GradientStyle: ChartGradientStyleEnum; 
                                  GradientVariant: ChartGradientVariantEnum; 
                                  GradientDegree: Double; Color: OleVariant); safecall;
    procedure SetSolid(Color: OleVariant); safecall;
    procedure SetTwoColorGradient(GradientStyle: ChartGradientStyleEnum; 
                                  GradientVariant: ChartGradientVariantEnum; Color: OleVariant; 
                                  BackColor: OleVariant); safecall;
    property Color: OleVariant read Get_Color;
    property DefaultColor: OleVariant read Get_DefaultColor;
    property BackColor: OleVariant read Get_BackColor;
    property Pattern: ChartPatternTypeEnum read Get_Pattern;
    property FillType: ChartFillTypeEnum read Get_FillType;
    property PresetGradientType: ChartPresetGradientTypeEnum read Get_PresetGradientType;
    property GradientStyle: ChartGradientStyleEnum read Get_GradientStyle;
    property GradientVariant: ChartGradientVariantEnum read Get_GradientVariant;
    property GradientDegree: Double read Get_GradientDegree;
    property PresetTexture: ChartPresetTextureEnum read Get_PresetTexture;
    property TextureName: WideString read Get_TextureName;
    property TextureFormat: ChartTextureFormatEnum read Get_TextureFormat;
    property TextureStackUnit: Double read Get_TextureStackUnit;
    property TexturePlacement: ChartTexturePlacementEnum read Get_TexturePlacement;
  end;

// *********************************************************************//
// DispIntf:  ChInteriorDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {56C833A6-3E1C-11D3-831A-00C04F991C70}
// *********************************************************************//
  ChInteriorDisp = dispinterface
    ['{56C833A6-3E1C-11D3-831A-00C04F991C70}']
    property Color: OleVariant readonly dispid 1610743808;
    property DefaultColor: OleVariant readonly dispid 1610743810;
    property BackColor: OleVariant readonly dispid 1610743811;
    property Pattern: ChartPatternTypeEnum readonly dispid 1610743813;
    property FillType: ChartFillTypeEnum readonly dispid 1610743814;
    property PresetGradientType: ChartPresetGradientTypeEnum readonly dispid 1610743815;
    property GradientStyle: ChartGradientStyleEnum readonly dispid 1610743816;
    property GradientVariant: ChartGradientVariantEnum readonly dispid 1610743817;
    property GradientDegree: Double readonly dispid 1610743818;
    property PresetTexture: ChartPresetTextureEnum readonly dispid 1610743819;
    property TextureName: WideString readonly dispid 1610743820;
    property TextureFormat: ChartTextureFormatEnum readonly dispid 1610743821;
    property TextureStackUnit: Double readonly dispid 1610743822;
    property TexturePlacement: ChartTexturePlacementEnum readonly dispid 1610743823;
    procedure SetPatterned(patternType: ChartPatternTypeEnum; Color: OleVariant; 
                           BackColor: OleVariant); dispid 1610743824;
    procedure SetPresetGradient(GradientStyle: ChartGradientStyleEnum; 
                                gradientVarient: ChartGradientVariantEnum; 
                                gradientPreset: ChartPresetGradientTypeEnum); dispid 1610743825;
    procedure SetTextured(textureFile: OleVariant; TextureFormat: ChartTextureFormatEnum; 
                          stackUnit: Double; TexturePlacement: ChartTexturePlacementEnum); dispid 1610743826;
    procedure SetOneColorGradient(GradientStyle: ChartGradientStyleEnum; 
                                  GradientVariant: ChartGradientVariantEnum; 
                                  GradientDegree: Double; Color: OleVariant); dispid 1610743827;
    procedure SetSolid(Color: OleVariant); dispid 1610743828;
    procedure SetTwoColorGradient(GradientStyle: ChartGradientStyleEnum; 
                                  GradientVariant: ChartGradientVariantEnum; Color: OleVariant; 
                                  BackColor: OleVariant); dispid 1610743829;
  end;

// *********************************************************************//
// Interface: ChBorder
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A72-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChBorder = interface(IDispatch)
    ['{F5B39A72-1480-11D3-8549-00C04FAC67D7}']
    function Get_Color: OleVariant; safecall;
    procedure Set_Color(Color: OleVariant); safecall;
    function Get_DashStyle: ChartLineDashStyleEnum; safecall;
    procedure Set_DashStyle(pwclds: ChartLineDashStyleEnum); safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Weight: OleVariant; safecall;
    procedure Set_Weight(LineWeight: LineWeightEnum); safecall;
    property Color: OleVariant read Get_Color;
    property DashStyle: ChartLineDashStyleEnum read Get_DashStyle;
    property Parent: IDispatch read Get_Parent;
    property Weight: OleVariant read Get_Weight;
  end;

// *********************************************************************//
// DispIntf:  ChBorderDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A72-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChBorderDisp = dispinterface
    ['{F5B39A72-1480-11D3-8549-00C04FAC67D7}']
    property Color: OleVariant readonly dispid 1610743808;
    property DashStyle: ChartLineDashStyleEnum readonly dispid 1610743810;
    property Parent: IDispatch readonly dispid 5201;
    property Weight: OleVariant readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: ChFont
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A86-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChFont = interface(IDispatch)
    ['{F5B39A86-1480-11D3-8549-00C04FAC67D7}']
    function Get_Bold: WordBool; safecall;
    procedure Set_Bold(Bold: WordBool); safecall;
    function Get_Color: OleVariant; safecall;
    procedure Set_Color(Color: OleVariant); safecall;
    function Get_Italic: WordBool; safecall;
    procedure Set_Italic(Italic: WordBool); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Size: Integer; safecall;
    procedure Set_Size(Size: Integer); safecall;
    function Get_Underline: UnderlineStyleEnum; safecall;
    procedure Set_Underline(UnderlineStyle: UnderlineStyleEnum); safecall;
    property Bold: WordBool read Get_Bold write Set_Bold;
    property Color: OleVariant read Get_Color;
    property Italic: WordBool read Get_Italic write Set_Italic;
    property Name: WideString read Get_Name write Set_Name;
    property Size: Integer read Get_Size write Set_Size;
    property Underline: UnderlineStyleEnum read Get_Underline write Set_Underline;
  end;

// *********************************************************************//
// DispIntf:  ChFontDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A86-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChFontDisp = dispinterface
    ['{F5B39A86-1480-11D3-8549-00C04FAC67D7}']
    property Bold: WordBool dispid 3;
    property Color: OleVariant readonly dispid 1610743810;
    property Italic: WordBool dispid 4;
    property Name: WideString dispid 0;
    property Size: Integer dispid 2;
    property Underline: UnderlineStyleEnum dispid 5;
  end;

// *********************************************************************//
// Interface: ChLine
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {966CCC26-4469-11D3-8324-00C04F991C70}
// *********************************************************************//
  ChLine = interface(IDispatch)
    ['{966CCC26-4469-11D3-8324-00C04F991C70}']
    function Get_Color: OleVariant; safecall;
    procedure Set_Color(Color: OleVariant); safecall;
    function Get_DashStyle: ChartLineDashStyleEnum; safecall;
    procedure Set_DashStyle(pwclds: ChartLineDashStyleEnum); safecall;
    function Get_Weight: OleVariant; safecall;
    procedure Set_Weight(LineWeight: LineWeightEnum); safecall;
    function Get_Miter: ChartLineMiterEnum; safecall;
    procedure Set_Miter(pwclm: ChartLineMiterEnum); safecall;
    property Color: OleVariant read Get_Color;
    property DashStyle: ChartLineDashStyleEnum read Get_DashStyle;
    property Weight: OleVariant read Get_Weight;
    property Miter: ChartLineMiterEnum read Get_Miter;
  end;

// *********************************************************************//
// DispIntf:  ChLineDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {966CCC26-4469-11D3-8324-00C04F991C70}
// *********************************************************************//
  ChLineDisp = dispinterface
    ['{966CCC26-4469-11D3-8324-00C04F991C70}']
    property Color: OleVariant readonly dispid 1610743808;
    property DashStyle: ChartLineDashStyleEnum readonly dispid 1610743810;
    property Weight: OleVariant readonly dispid 1610743812;
    property Miter: ChartLineMiterEnum readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: ChChartSpace
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A82-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChChartSpace = interface(IDispatch)
    ['{F5B39A82-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_ChartLayout(pChartChartLayout: ChartChartLayoutEnum); safecall;
    function Get_ChartLayout: ChartChartLayoutEnum; safecall;
    procedure Set_ChartWrapCount(plcount: Integer); safecall;
    function Get_ChartWrapCount: Integer; safecall;
    procedure Set_EnableEvents(pfEnableEvents: WordBool); safecall;
    function Get_EnableEvents: WordBool; safecall;
    procedure Set_HasChartSpaceLegend(pfHasChartSpaceLegend: WordBool); safecall;
    function Get_HasChartSpaceLegend: WordBool; safecall;
    function Get_MajorVersion: Integer; safecall;
    function Get_MinorVersion: WideString; safecall;
    function Get_BuildNumber: WideString; safecall;
    procedure Set_ScreenUpdating(pfUpdate: WordBool); safecall;
    function Get_ScreenUpdating: WordBool; safecall;
    function Get_Border: ChBorder; safecall;
    function Get_Charts: ChCharts; safecall;
    procedure _Set_DataSource(const ppidatasource: DataSource); safecall;
    procedure Set_DataSource(const ppidatasource: DataSource); safecall;
    function Get_DataSource: DataSource; safecall;
    procedure Set_DataMember(const pdatamember: DataMember); safecall;
    function Get_DataMember: DataMember; safecall;
    function Get_DataSourceType: ChartDataSourceTypeEnum; safecall;
    procedure Set_HasChartSpaceTitle(pfHasChartSpaceTitle: WordBool); safecall;
    function Get_HasChartSpaceTitle: WordBool; safecall;
    function Get_Interior: ChInterior; safecall;
    function Get_ChartSpaceLegend: ChLegend; safecall;
    function Get_Selection: IDispatch; safecall;
    function Get_SelectionType: ChartSelectionsEnum; safecall;
    procedure Set_HasSelectionMarks(fMarks: ChartSelectionMarksEnum); safecall;
    function Get_HasSelectionMarks: ChartSelectionMarksEnum; safecall;
    procedure Set_DisplayPropertyToolbox(fMenu: WordBool); safecall;
    function Get_DisplayPropertyToolbox: WordBool; safecall;
    function Get_ChartSpaceTitle: ChTitle; safecall;
    function Get_Version: WideString; safecall;
    function Get_XMLData: WideString; safecall;
    procedure Set_XMLData(const pbstrHTML: WideString); safecall;
    function Get_Constants: IDispatch; safecall;
    function Get_CanUndo: WordBool; safecall;
    function Get_AllowLayoutEvents: WordBool; safecall;
    procedure Set_AllowLayoutEvents(pvbAllowLayoutEvents: WordBool); safecall;
    function Get_AllowRenderEvents: WordBool; safecall;
    procedure Set_AllowRenderEvents(pvbAllowRenderEvents: WordBool); safecall;
    function Get_AllowPointRenderEvents: WordBool; safecall;
    procedure Set_AllowPointRenderEvents(pvbAllowPointRenderEvents: WordBool); safecall;
    procedure BuildLitChart; safecall;
    procedure Load(const Filename: WideString); safecall;
    procedure Clear; safecall;
    procedure ShowHelp(iTopic: Integer); safecall;
    procedure ExportPicture(const Filename: WideString; const FilterName: WideString; 
                            Width: Integer; Height: Integer); safecall;
    procedure Refresh; safecall;
    procedure Select; safecall;
    procedure BeginUndo; safecall;
    procedure EndUndo; safecall;
    procedure Undo; safecall;
    function RangeFromPoint(x: SYSINT; y: SYSINT): IDispatch; safecall;
    procedure Set_Enabled(fEnabled: WordBool); safecall;
    function Get_Enabled: WordBool; safecall;
    function Get_RevisionNumber: WideString; safecall;
    procedure Set_PrintQuality3D(prquality: Double); safecall;
    function Get_PrintQuality3D: Double; safecall;
    procedure Set_DisplayScreenTips(pfDisplayScreenTips: WordBool); safecall;
    function Get_DisplayScreenTips: WordBool; safecall;
    procedure Set_ConnectionString(const ConnectionString: WideString); safecall;
    function Get_ConnectionString: WideString; safecall;
    procedure Set_CommandText(const CommandText: WideString); safecall;
    function Get_CommandText: WideString; safecall;
    function Get_InternalPivotTable: IDispatch; safecall;
    procedure SetData(Dimension: ChartDimensionsEnum; DataSourceIndex: Integer; 
                      DataReference: OleVariant); safecall;
    procedure Set_HasSeriesByRows(HasSeriesByRows: WordBool); safecall;
    function Get_HasSeriesByRows: WordBool; safecall;
    procedure Set_PlotAllAggregates(PlotMultipleAggregates: ChartPlotAggregatesEnum); safecall;
    function Get_PlotAllAggregates: ChartPlotAggregatesEnum; safecall;
    procedure Set_HasMultipleCharts(HasMultiplePlots: WordBool); safecall;
    function Get_HasMultipleCharts: WordBool; safecall;
    procedure Set_DisplayFieldList(DisplayFieldList: WordBool); safecall;
    function Get_DisplayFieldList: WordBool; safecall;
    procedure Set_HasPassiveAlerts(pfHasPassiveAlerts: WordBool); safecall;
    function Get_HasPassiveAlerts: WordBool; safecall;
    function DropZones(dz: ChartDropZonesEnum): ChDropZone; safecall;
    procedure Set_DataSourceName(const pbstrDSName: WideString); safecall;
    function Get_DataSourceName: WideString; safecall;
    procedure Set_DisplayFieldButtons(DisplayFieldButtons: WordBool); safecall;
    function Get_DisplayFieldButtons: WordBool; safecall;
    function Get_SelectionList: OleVariant; safecall;
    procedure Set_HasPlotDetails(pvbPlotDetails: WordBool); safecall;
    function Get_HasPlotDetails: WordBool; safecall;
    procedure FieldListAddTo(const punk: IUnknown; lPos: Integer); safecall;
    procedure Set_AllowScreenTipEvents(pfAllowScreenTipEvents: WordBool); safecall;
    function Get_AllowScreenTipEvents: WordBool; safecall;
    function Get_Commands: OCCommands; safecall;
    procedure Set_AllowPropertyToolbox(fMenu: WordBool); safecall;
    function Get_AllowPropertyToolbox: WordBool; safecall;
    function Get_AllowGrouping: WordBool; safecall;
    procedure Set_AllowGrouping(AllowGrouping: WordBool); safecall;
    function Get_AllowFiltering: WordBool; safecall;
    procedure Set_AllowFiltering(AllowFiltering: WordBool); safecall;
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_HasUnifiedScales: WordBool; safecall;
    procedure Set_HasUnifiedScales(HasUnifiedScales: WordBool); safecall;
    function Get_DisplayToolbar: WordBool; safecall;
    procedure Set_DisplayToolbar(DisplayToolbar: WordBool); safecall;
    function Get_Toolbar: IToolbar; safecall;
    function Get_ViewOnlyMode: WordBool; safecall;
    procedure LocateDataSource; safecall;
    procedure ShowContextMenu(x: Integer; y: Integer; Menu: OleVariant); safecall;
    function GetPicture(const FilterName: WideString; Width: Integer; Height: Integer): OleVariant; safecall;
    procedure SetSpreadsheetData(const DataReference: WideString; SeriesByRows: WordBool); safecall;
    procedure Repaint; safecall;
    function Get_IsDirty: WordBool; safecall;
    procedure Set_IsDirty(IsDirty: WordBool); safecall;
    function Get_International(Index: OleVariant): OleVariant; safecall;
    function Get_LanguageSettings: OWCLanguageSettings; safecall;
    function Get_Parent: IDispatch; safecall;
    function GetDataSourceIndex(Dimension: ChartDimensionsEnum): Integer; safecall;
    function Get_HasRuntimeSelection: WordBool; safecall;
    procedure Set_HasRuntimeSelection(pvb: WordBool); safecall;
    procedure ClearUndo; safecall;
    function Get_DisplayBranding: WordBool; safecall;
    procedure Set_DisplayBranding(DisplayBranding: WordBool); safecall;
    function Get_DisplayOfficeLogo: WordBool; safecall;
    procedure Set_DisplayOfficeLogo(DisplayOfficeLogo: WordBool); safecall;
    procedure OkToBindToControlByName; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property ChartLayout: ChartChartLayoutEnum read Get_ChartLayout write Set_ChartLayout;
    property ChartWrapCount: Integer read Get_ChartWrapCount write Set_ChartWrapCount;
    property EnableEvents: WordBool read Get_EnableEvents write Set_EnableEvents;
    property HasChartSpaceLegend: WordBool read Get_HasChartSpaceLegend write Set_HasChartSpaceLegend;
    property MajorVersion: Integer read Get_MajorVersion;
    property MinorVersion: WideString read Get_MinorVersion;
    property BuildNumber: WideString read Get_BuildNumber;
    property ScreenUpdating: WordBool read Get_ScreenUpdating write Set_ScreenUpdating;
    property Border: ChBorder read Get_Border;
    property Charts: ChCharts read Get_Charts;
    property DataSource: DataSource read Get_DataSource write Set_DataSource;
    property DataMember: DataMember read Get_DataMember write Set_DataMember;
    property DataSourceType: ChartDataSourceTypeEnum read Get_DataSourceType;
    property HasChartSpaceTitle: WordBool read Get_HasChartSpaceTitle write Set_HasChartSpaceTitle;
    property Interior: ChInterior read Get_Interior;
    property ChartSpaceLegend: ChLegend read Get_ChartSpaceLegend;
    property Selection: IDispatch read Get_Selection;
    property SelectionType: ChartSelectionsEnum read Get_SelectionType;
    property HasSelectionMarks: ChartSelectionMarksEnum read Get_HasSelectionMarks write Set_HasSelectionMarks;
    property DisplayPropertyToolbox: WordBool read Get_DisplayPropertyToolbox write Set_DisplayPropertyToolbox;
    property ChartSpaceTitle: ChTitle read Get_ChartSpaceTitle;
    property Version: WideString read Get_Version;
    property XMLData: WideString read Get_XMLData write Set_XMLData;
    property Constants: IDispatch read Get_Constants;
    property CanUndo: WordBool read Get_CanUndo;
    property AllowLayoutEvents: WordBool read Get_AllowLayoutEvents write Set_AllowLayoutEvents;
    property AllowRenderEvents: WordBool read Get_AllowRenderEvents write Set_AllowRenderEvents;
    property AllowPointRenderEvents: WordBool read Get_AllowPointRenderEvents write Set_AllowPointRenderEvents;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property RevisionNumber: WideString read Get_RevisionNumber;
    property PrintQuality3D: Double read Get_PrintQuality3D write Set_PrintQuality3D;
    property DisplayScreenTips: WordBool read Get_DisplayScreenTips write Set_DisplayScreenTips;
    property ConnectionString: WideString read Get_ConnectionString write Set_ConnectionString;
    property CommandText: WideString read Get_CommandText write Set_CommandText;
    property InternalPivotTable: IDispatch read Get_InternalPivotTable;
    property HasSeriesByRows: WordBool read Get_HasSeriesByRows write Set_HasSeriesByRows;
    property PlotAllAggregates: ChartPlotAggregatesEnum read Get_PlotAllAggregates write Set_PlotAllAggregates;
    property HasMultipleCharts: WordBool read Get_HasMultipleCharts write Set_HasMultipleCharts;
    property DisplayFieldList: WordBool read Get_DisplayFieldList write Set_DisplayFieldList;
    property HasPassiveAlerts: WordBool read Get_HasPassiveAlerts write Set_HasPassiveAlerts;
    property DataSourceName: WideString read Get_DataSourceName write Set_DataSourceName;
    property DisplayFieldButtons: WordBool read Get_DisplayFieldButtons write Set_DisplayFieldButtons;
    property SelectionList: OleVariant read Get_SelectionList;
    property HasPlotDetails: WordBool read Get_HasPlotDetails write Set_HasPlotDetails;
    property AllowScreenTipEvents: WordBool read Get_AllowScreenTipEvents write Set_AllowScreenTipEvents;
    property Commands: OCCommands read Get_Commands;
    property AllowPropertyToolbox: WordBool read Get_AllowPropertyToolbox write Set_AllowPropertyToolbox;
    property AllowGrouping: WordBool read Get_AllowGrouping write Set_AllowGrouping;
    property AllowFiltering: WordBool read Get_AllowFiltering write Set_AllowFiltering;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property HasUnifiedScales: WordBool read Get_HasUnifiedScales write Set_HasUnifiedScales;
    property DisplayToolbar: WordBool read Get_DisplayToolbar write Set_DisplayToolbar;
    property Toolbar: IToolbar read Get_Toolbar;
    property ViewOnlyMode: WordBool read Get_ViewOnlyMode;
    property IsDirty: WordBool read Get_IsDirty write Set_IsDirty;
    property International[Index: OleVariant]: OleVariant read Get_International;
    property LanguageSettings: OWCLanguageSettings read Get_LanguageSettings;
    property Parent: IDispatch read Get_Parent;
    property HasRuntimeSelection: WordBool read Get_HasRuntimeSelection write Set_HasRuntimeSelection;
    property DisplayBranding: WordBool read Get_DisplayBranding;
    property DisplayOfficeLogo: WordBool read Get_DisplayOfficeLogo;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChChartSpaceDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A82-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChChartSpaceDisp = dispinterface
    ['{F5B39A82-1480-11D3-8549-00C04FAC67D7}']
    property ChartLayout: ChartChartLayoutEnum dispid 5000;
    property ChartWrapCount: Integer dispid 5001;
    property EnableEvents: WordBool dispid 5016;
    property HasChartSpaceLegend: WordBool dispid 5002;
    property MajorVersion: Integer readonly dispid 5026;
    property MinorVersion: WideString readonly dispid 5027;
    property BuildNumber: WideString readonly dispid 5028;
    property ScreenUpdating: WordBool dispid 5003;
    property Border: ChBorder readonly dispid 5004;
    property Charts: ChCharts readonly dispid 5005;
    property DataSource: DataSource dispid 5020;
    property DataMember: DataMember dispid 5021;
    property DataSourceType: ChartDataSourceTypeEnum readonly dispid 5023;
    property HasChartSpaceTitle: WordBool dispid 5017;
    property Interior: ChInterior readonly dispid 5007;
    property ChartSpaceLegend: ChLegend readonly dispid 5008;
    property Selection: IDispatch readonly dispid 5029;
    property SelectionType: ChartSelectionsEnum readonly dispid 5030;
    property HasSelectionMarks: ChartSelectionMarksEnum dispid 5031;
    property DisplayPropertyToolbox: WordBool dispid 4002;
    property ChartSpaceTitle: ChTitle readonly dispid 5009;
    property Version: WideString readonly dispid 5010;
    property XMLData: WideString dispid 5022;
    property Constants: IDispatch readonly dispid 1610743843;
    property CanUndo: WordBool readonly dispid 5033;
    property AllowLayoutEvents: WordBool dispid 5068;
    property AllowRenderEvents: WordBool dispid 5069;
    property AllowPointRenderEvents: WordBool dispid 5070;
    procedure BuildLitChart; dispid 5019;
    procedure Load(const Filename: WideString); dispid 5018;
    procedure Clear; dispid 5012;
    procedure ShowHelp(iTopic: Integer); dispid 5034;
    procedure ExportPicture(const Filename: WideString; const FilterName: WideString; 
                            Width: Integer; Height: Integer); dispid 5035;
    procedure Refresh; dispid 5014;
    procedure Select; dispid 5036;
    procedure BeginUndo; dispid 5037;
    procedure EndUndo; dispid 5038;
    procedure Undo; dispid 5039;
    function RangeFromPoint(x: SYSINT; y: SYSINT): IDispatch; dispid 5025;
    property Enabled: WordBool dispid 5040;
    property RevisionNumber: WideString readonly dispid 5042;
    property PrintQuality3D: Double dispid 5043;
    property DisplayScreenTips: WordBool dispid 5062;
    property ConnectionString: WideString dispid 5052;
    property CommandText: WideString dispid 5045;
    property InternalPivotTable: IDispatch readonly dispid 5046;
    procedure SetData(Dimension: ChartDimensionsEnum; DataSourceIndex: Integer; 
                      DataReference: OleVariant); dispid 5047;
    property HasSeriesByRows: WordBool dispid 5048;
    property PlotAllAggregates: ChartPlotAggregatesEnum dispid 5049;
    property HasMultipleCharts: WordBool dispid 5050;
    property DisplayFieldList: WordBool dispid 4001;
    property HasPassiveAlerts: WordBool dispid 5044;
    function DropZones(dz: ChartDropZonesEnum): ChDropZone; dispid 5054;
    property DataSourceName: WideString dispid 5055;
    property DisplayFieldButtons: WordBool dispid 5056;
    property SelectionList: OleVariant readonly dispid 5057;
    property HasPlotDetails: WordBool dispid 5058;
    procedure FieldListAddTo(const punk: IUnknown; lPos: Integer); dispid 5059;
    property AllowScreenTipEvents: WordBool dispid 5061;
    property Commands: OCCommands readonly dispid 5064;
    property AllowPropertyToolbox: WordBool dispid 5065;
    property AllowGrouping: WordBool dispid 5066;
    property AllowFiltering: WordBool dispid 5067;
    property Top: Integer readonly dispid 1610743903;
    property Left: Integer readonly dispid 1610743904;
    property Bottom: Integer readonly dispid 1610743905;
    property Right: Integer readonly dispid 1610743906;
    property HasUnifiedScales: WordBool dispid 5071;
    property DisplayToolbar: WordBool dispid 5072;
    property Toolbar: IToolbar readonly dispid 5076;
    property ViewOnlyMode: WordBool readonly dispid 1610743912;
    procedure LocateDataSource; dispid 5073;
    procedure ShowContextMenu(x: Integer; y: Integer; Menu: OleVariant); dispid 5074;
    function GetPicture(const FilterName: WideString; Width: Integer; Height: Integer): OleVariant; dispid 5075;
    procedure SetSpreadsheetData(const DataReference: WideString; SeriesByRows: WordBool); dispid 1610743916;
    procedure Repaint; dispid 5077;
    property IsDirty: WordBool dispid 5078;
    property International[Index: OleVariant]: OleVariant readonly dispid 1610743920;
    property LanguageSettings: OWCLanguageSettings readonly dispid 1610743921;
    property Parent: IDispatch readonly dispid 5201;
    function GetDataSourceIndex(Dimension: ChartDimensionsEnum): Integer; dispid 1610743923;
    property HasRuntimeSelection: WordBool dispid 5079;
    procedure ClearUndo; dispid 1610743926;
    property DisplayBranding: WordBool readonly dispid 1610743927;
    property DisplayOfficeLogo: WordBool readonly dispid 1610743929;
    procedure OkToBindToControlByName; dispid 1610743931;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743932;
  end;

// *********************************************************************//
// Interface: ChCharts
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE4-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChCharts = interface(IDispatch)
    ['{F5B39AE4-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Add(Index: Integer): ChChart; safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Get_Item(Index: OleVariant): ChChart; safecall;
    property Count: Integer read Get_Count;
    property Parent: IDispatch read Get_Parent;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: ChChart read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ChChartsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE4-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChChartsDisp = dispinterface
    ['{F5B39AE4-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 5201;
    property _NewEnum: IUnknown readonly dispid -4;
    function Add(Index: Integer): ChChart; dispid 1610743811;
    procedure Delete(Index: OleVariant); dispid 5202;
    property Item[Index: OleVariant]: ChChart readonly dispid 0; default;
  end;

// *********************************************************************//
// Interface: ChChart
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE5-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChChart = interface(IDispatch)
    ['{F5B39AE5-1480-11D3-8549-00C04FAC67D7}']
    function Get_Axes: ChAxes; safecall;
    function Get_Border: ChBorder; safecall;
    procedure Set_HasLegend(pfHasLegend: WordBool); safecall;
    function Get_HasLegend: WordBool; safecall;
    procedure Set_HasTitle(pfHasTitle: WordBool); safecall;
    function Get_HasTitle: WordBool; safecall;
    procedure Set_WidthRatio(pratio: Integer); safecall;
    function Get_WidthRatio: Integer; safecall;
    procedure Set_HeightRatio(pratio: Integer); safecall;
    function Get_HeightRatio: Integer; safecall;
    function Get_Index: Integer; safecall;
    function Get_Interior: ChInterior; safecall;
    function Get_Legend: ChLegend; safecall;
    procedure Set_Name(const pbstr: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_PlotArea: ChPlotArea; safecall;
    function Get_Title: ChTitle; safecall;
    procedure Set_ExtrudeAngle(protation: Double); safecall;
    function Get_ExtrudeAngle: Double; safecall;
    procedure Set_DirectionalLightRotation(protation: Double); safecall;
    function Get_DirectionalLightRotation: Double; safecall;
    procedure Set_DirectionalLightInclination(pinclination: Double); safecall;
    function Get_DirectionalLightInclination: Double; safecall;
    procedure Set_DirectionalLightIntensity(pintensity: Double); safecall;
    function Get_DirectionalLightIntensity: Double; safecall;
    procedure Set_AmbientLightIntensity(pintensity: Double); safecall;
    function Get_AmbientLightIntensity: Double; safecall;
    procedure Set_LightNormal(pnormal: Double); safecall;
    function Get_LightNormal: Double; safecall;
    procedure Set_ProjectionMode(pmode: ChartProjectionModeEnum); safecall;
    function Get_ProjectionMode: ChartProjectionModeEnum; safecall;
    procedure Set_Inclination(pinclination: Double); safecall;
    function Get_Inclination: Double; safecall;
    procedure Set_Rotation(protation: Double); safecall;
    function Get_Rotation: Double; safecall;
    procedure Set_Perspective(pperspective: Integer); safecall;
    function Get_Perspective: Integer; safecall;
    procedure Set_GapDepth(pgapdepth: Integer); safecall;
    function Get_GapDepth: Integer; safecall;
    procedure Set_HasAutoChartDepth(pfHasAutoChartDepth: WordBool); safecall;
    function Get_HasAutoChartDepth: WordBool; safecall;
    procedure Set_HasAutoAspectRatio(pfHasAutoAspectRatio: WordBool); safecall;
    function Get_HasAutoAspectRatio: WordBool; safecall;
    procedure Set_ChartDepth(pchartdepth: Integer); safecall;
    function Get_ChartDepth: Integer; safecall;
    procedure Set_AspectRatio(paspectratio: Integer); safecall;
    function Get_AspectRatio: Integer; safecall;
    procedure Select; safecall;
    procedure Set_BubbleScale(pdBubbleScalew: Double); safecall;
    function Get_BubbleScale: Double; safecall;
    procedure Set_FirstSliceAngle(panFirst: Integer); safecall;
    function Get_FirstSliceAngle: Integer; safecall;
    procedure Set_GapWidth(plGapWidth: Integer); safecall;
    function Get_GapWidth: Integer; safecall;
    procedure Set_HoleSize(plHoleSize: Integer); safecall;
    function Get_HoleSize: Integer; safecall;
    procedure Set_Overlap(plOverlap: Integer); safecall;
    function Get_Overlap: Integer; safecall;
    function Get_SeriesCollection: ChSeriesCollection; safecall;
    procedure Set_SizeRepresents(pocpSR: ChartSizeRepresentsEnum); safecall;
    function Get_SizeRepresents: ChartSizeRepresentsEnum; safecall;
    function Get_Scalings(Dimension: ChartDimensionsEnum): ChScaling; safecall;
    procedure Set_type_(pocpGT: ChartChartTypeEnum); safecall;
    function Get_type_: ChartChartTypeEnum; safecall;
    procedure SetData(Dimension: ChartDimensionsEnum; DataSourceIndex: Integer; 
                      DataReference: OleVariant); safecall;
    function GetDataReference(Dimension: ChartDimensionsEnum): WideString; safecall;
    function GetDataSourceIndex(Dimension: ChartDimensionsEnum): Integer; safecall;
    procedure GetData(Dimension: ChartDimensionsEnum; out DataSourceIndex: OleVariant; 
                      out DataReference: OleVariant); safecall;
    function Get_LayerCount: Integer; safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Top(ptop: Integer); safecall;
    function Get_Left: Integer; safecall;
    procedure Set_Left(pleft: Integer); safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_TypeFlags: SYSINT; safecall;
    procedure SetSpreadsheetData(const DataReference: WideString; SeriesByRows: WordBool); safecall;
    procedure DuplicateFormat; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property Axes: ChAxes read Get_Axes;
    property Border: ChBorder read Get_Border;
    property HasLegend: WordBool write Set_HasLegend;
    property HasTitle: WordBool write Set_HasTitle;
    property WidthRatio: Integer write Set_WidthRatio;
    property HeightRatio: Integer write Set_HeightRatio;
    property Index: Integer read Get_Index;
    property Interior: ChInterior read Get_Interior;
    property Legend: ChLegend read Get_Legend;
    property Name: WideString write Set_Name;
    property Parent: IDispatch read Get_Parent;
    property PlotArea: ChPlotArea read Get_PlotArea;
    property Title: ChTitle read Get_Title;
    property ExtrudeAngle: Double write Set_ExtrudeAngle;
    property DirectionalLightRotation: Double write Set_DirectionalLightRotation;
    property DirectionalLightInclination: Double write Set_DirectionalLightInclination;
    property DirectionalLightIntensity: Double write Set_DirectionalLightIntensity;
    property AmbientLightIntensity: Double write Set_AmbientLightIntensity;
    property LightNormal: Double write Set_LightNormal;
    property ProjectionMode: ChartProjectionModeEnum write Set_ProjectionMode;
    property Inclination: Double write Set_Inclination;
    property Rotation: Double write Set_Rotation;
    property Perspective: Integer write Set_Perspective;
    property GapDepth: Integer write Set_GapDepth;
    property HasAutoChartDepth: WordBool write Set_HasAutoChartDepth;
    property HasAutoAspectRatio: WordBool write Set_HasAutoAspectRatio;
    property ChartDepth: Integer write Set_ChartDepth;
    property AspectRatio: Integer write Set_AspectRatio;
    property BubbleScale: Double write Set_BubbleScale;
    property FirstSliceAngle: Integer write Set_FirstSliceAngle;
    property GapWidth: Integer write Set_GapWidth;
    property HoleSize: Integer write Set_HoleSize;
    property Overlap: Integer write Set_Overlap;
    property SeriesCollection: ChSeriesCollection read Get_SeriesCollection;
    property SizeRepresents: ChartSizeRepresentsEnum write Set_SizeRepresents;
    property Scalings[Dimension: ChartDimensionsEnum]: ChScaling read Get_Scalings;
    property type_: ChartChartTypeEnum write Set_type_;
    property LayerCount: Integer read Get_LayerCount;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property TypeFlags: SYSINT read Get_TypeFlags;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChChartDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE5-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChChartDisp = dispinterface
    ['{F5B39AE5-1480-11D3-8549-00C04FAC67D7}']
    property Axes: ChAxes readonly dispid 1610743808;
    property Border: ChBorder readonly dispid 5004;
    property HasLegend: WordBool writeonly dispid 1610743810;
    property HasTitle: WordBool writeonly dispid 1610743812;
    property WidthRatio: Integer writeonly dispid 1610743814;
    property HeightRatio: Integer writeonly dispid 1610743816;
    property Index: Integer readonly dispid 5204;
    property Interior: ChInterior readonly dispid 5007;
    property Legend: ChLegend readonly dispid 1610743820;
    property Name: WideString writeonly dispid 1610743821;
    property Parent: IDispatch readonly dispid 5201;
    property PlotArea: ChPlotArea readonly dispid 1610743824;
    property Title: ChTitle readonly dispid 1610743825;
    property ExtrudeAngle: Double writeonly dispid 1610743826;
    property DirectionalLightRotation: Double writeonly dispid 1610743828;
    property DirectionalLightInclination: Double writeonly dispid 1610743830;
    property DirectionalLightIntensity: Double writeonly dispid 1610743832;
    property AmbientLightIntensity: Double writeonly dispid 1610743834;
    property LightNormal: Double writeonly dispid 1610743836;
    property ProjectionMode: ChartProjectionModeEnum writeonly dispid 1610743838;
    property Inclination: Double writeonly dispid 1610743840;
    property Rotation: Double writeonly dispid 1610743842;
    property Perspective: Integer writeonly dispid 1610743844;
    property GapDepth: Integer writeonly dispid 1610743846;
    property HasAutoChartDepth: WordBool writeonly dispid 1610743848;
    property HasAutoAspectRatio: WordBool writeonly dispid 1610743850;
    property ChartDepth: Integer writeonly dispid 1610743852;
    property AspectRatio: Integer writeonly dispid 1610743854;
    procedure Select; dispid 5036;
    property BubbleScale: Double writeonly dispid 1610743857;
    property FirstSliceAngle: Integer writeonly dispid 1610743859;
    property GapWidth: Integer writeonly dispid 1610743861;
    property HoleSize: Integer writeonly dispid 1610743863;
    property Overlap: Integer writeonly dispid 1610743865;
    property SeriesCollection: ChSeriesCollection readonly dispid 1610743867;
    property SizeRepresents: ChartSizeRepresentsEnum writeonly dispid 1610743868;
    property Scalings[Dimension: ChartDimensionsEnum]: ChScaling readonly dispid 1610743870;
    property type_: ChartChartTypeEnum writeonly dispid 1610743871;
    procedure SetData(Dimension: ChartDimensionsEnum; DataSourceIndex: Integer; 
                      DataReference: OleVariant); dispid 1610743873;
    function GetDataReference(Dimension: ChartDimensionsEnum): WideString; dispid 1610743874;
    function GetDataSourceIndex(Dimension: ChartDimensionsEnum): Integer; dispid 1610743875;
    procedure GetData(Dimension: ChartDimensionsEnum; out DataSourceIndex: OleVariant; 
                      out DataReference: OleVariant); dispid 1610743876;
    property LayerCount: Integer readonly dispid 1610743877;
    property Top: Integer readonly dispid 1610743878;
    property Left: Integer readonly dispid 1610743880;
    property Bottom: Integer readonly dispid 1610743882;
    property Right: Integer readonly dispid 1610743883;
    property TypeFlags: SYSINT readonly dispid 1610743884;
    procedure SetSpreadsheetData(const DataReference: WideString; SeriesByRows: WordBool); dispid 1610743885;
    procedure DuplicateFormat; dispid 1610743886;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743887;
  end;

// *********************************************************************//
// Interface: ChAxes
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE6-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChAxes = interface(IDispatch)
    ['{F5B39AE6-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Parent: ChChart; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Add(const Scaling: ChScaling): ChAxis; safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Get_Item(Index: OleVariant): ChAxis; safecall;
    property Count: Integer read Get_Count;
    property Parent: ChChart read Get_Parent;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: ChAxis read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ChAxesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE6-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChAxesDisp = dispinterface
    ['{F5B39AE6-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1610743808;
    property Parent: ChChart readonly dispid 5201;
    property _NewEnum: IUnknown readonly dispid -4;
    function Add(const Scaling: ChScaling): ChAxis; dispid 1610743811;
    procedure Delete(Index: OleVariant); dispid 5202;
    property Item[Index: OleVariant]: ChAxis readonly dispid 0; default;
  end;

// *********************************************************************//
// Interface: ChScaling
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39ABB-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChScaling = interface(IDispatch)
    ['{F5B39ABB-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_HasAutoMaximum(pfAutoMax: WordBool); safecall;
    function Get_HasAutoMaximum: WordBool; safecall;
    procedure Set_HasAutoMinimum(pfHasAutoMinimum: WordBool); safecall;
    function Get_HasAutoMinimum: WordBool; safecall;
    procedure Set_HasSplit(pfHasSplit: WordBool); safecall;
    function Get_HasSplit: WordBool; safecall;
    procedure Set_LogBase(pdLogBase: Double); safecall;
    function Get_LogBase: Double; safecall;
    procedure Set_Maximum(pdMax: Double); safecall;
    function Get_Maximum: Double; safecall;
    procedure Set_Minimum(pdMin: Double); safecall;
    function Get_Minimum: Double; safecall;
    procedure Set_Orientation(pocpSO: ChartScaleOrientationEnum); safecall;
    function Get_Orientation: ChartScaleOrientationEnum; safecall;
    procedure Set_type_(pocpST: ChartScaleTypeEnum); safecall;
    function Get_type_: ChartScaleTypeEnum; safecall;
    procedure Set_SplitMaximum(pdSplitMax: Double); safecall;
    function Get_SplitMaximum: Double; safecall;
    procedure Set_SplitMinimum(pdSplitMin: Double); safecall;
    function Get_SplitMinimum: Double; safecall;
    property HasAutoMaximum: WordBool write Set_HasAutoMaximum;
    property HasAutoMinimum: WordBool write Set_HasAutoMinimum;
    property HasSplit: WordBool write Set_HasSplit;
    property LogBase: Double write Set_LogBase;
    property Maximum: Double write Set_Maximum;
    property Minimum: Double write Set_Minimum;
    property Orientation: ChartScaleOrientationEnum write Set_Orientation;
    property type_: ChartScaleTypeEnum write Set_type_;
    property SplitMaximum: Double write Set_SplitMaximum;
    property SplitMinimum: Double write Set_SplitMinimum;
  end;

// *********************************************************************//
// DispIntf:  ChScalingDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39ABB-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChScalingDisp = dispinterface
    ['{F5B39ABB-1480-11D3-8549-00C04FAC67D7}']
    property HasAutoMaximum: WordBool writeonly dispid 1610743808;
    property HasAutoMinimum: WordBool writeonly dispid 1610743810;
    property HasSplit: WordBool writeonly dispid 1610743812;
    property LogBase: Double writeonly dispid 1610743814;
    property Maximum: Double writeonly dispid 1610743816;
    property Minimum: Double writeonly dispid 1610743818;
    property Orientation: ChartScaleOrientationEnum writeonly dispid 1610743820;
    property type_: ChartScaleTypeEnum writeonly dispid 1610743822;
    property SplitMaximum: Double writeonly dispid 1610743824;
    property SplitMinimum: Double writeonly dispid 1610743826;
  end;

// *********************************************************************//
// Interface: ChAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE7-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChAxis = interface(IDispatch)
    ['{F5B39AE7-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_Crosses(pocpACT: ChartAxisCrossesEnum); safecall;
    function Get_Crosses: ChartAxisCrossesEnum; safecall;
    procedure Set_CrossesAtValue(pdCrossesAt: Double); safecall;
    function Get_CrossesAtValue: Double; safecall;
    procedure Set_CrossingAxis(const ppaxis: ChAxis); safecall;
    function Get_CrossingAxis: ChAxis; safecall;
    function Get_Font: ChFont; safecall;
    procedure Set_HasAutoMajorUnit(pfHasAutoMajorUnit: WordBool); safecall;
    function Get_HasAutoMajorUnit: WordBool; safecall;
    procedure Set_HasAutoMinorUnit(pfHasAutoMinorUnit: WordBool); safecall;
    function Get_HasAutoMinorUnit: WordBool; safecall;
    procedure Set_HasMajorGridlines(pfHasMajorGridlines: WordBool); safecall;
    function Get_HasMajorGridlines: WordBool; safecall;
    procedure Set_HasMinorGridlines(pfHasMinorGridlines: WordBool); safecall;
    function Get_HasMinorGridlines: WordBool; safecall;
    procedure Set_HasTitle(pfHasTitle: WordBool); safecall;
    function Get_HasTitle: WordBool; safecall;
    function Get_Line: ChLine; safecall;
    function Get_MajorGridlines: ChGridlines; safecall;
    procedure Set_MajorTickMarks(pocpTMT: ChartTickMarkEnum); safecall;
    function Get_MajorTickMarks: ChartTickMarkEnum; safecall;
    procedure Set_MajorUnit(pdMajorUnit: Double); safecall;
    function Get_MajorUnit: Double; safecall;
    function Get_MinorGridlines: ChGridlines; safecall;
    procedure Set_MinorTickMarks(pocpTMT: ChartTickMarkEnum); safecall;
    function Get_MinorTickMarks: ChartTickMarkEnum; safecall;
    procedure Set_MinorUnit(pdMinorUnit: Double); safecall;
    function Get_MinorUnit: Double; safecall;
    procedure Set_Name(const pbstr: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_Parent: ChChart; safecall;
    procedure Set_Position(pChartAxisPosition: ChartAxisPositionEnum); safecall;
    function Get_Position: ChartAxisPositionEnum; safecall;
    function Get_Scaling: ChScaling; safecall;
    procedure Set_HasTickLabels(pfLabels: WordBool); safecall;
    function Get_HasTickLabels: WordBool; safecall;
    procedure Set_TickLabelSpacing(pcCat: Integer); safecall;
    function Get_TickLabelSpacing: Integer; safecall;
    procedure Set_TickMarkSpacing(pcCat: Integer); safecall;
    function Get_TickMarkSpacing: Integer; safecall;
    function Get_Title: ChTitle; safecall;
    function Get_type_: ChartAxisTypeEnum; safecall;
    function Get_Index: Integer; safecall;
    procedure Set_NumberFormat(const pbstrNumberFormat: WideString); safecall;
    function Get_NumberFormat: WideString; safecall;
    procedure Select; safecall;
    function Get_GroupingType: ChartAxisGroupingEnum; safecall;
    procedure Set_GroupingType(pgroupenum: ChartAxisGroupingEnum); safecall;
    function Get_TickLabelUnitType: ChartAxisUnitTypeEnum; safecall;
    procedure Set_TickLabelUnitType(punittype: ChartAxisUnitTypeEnum); safecall;
    function Get_TickMarkUnitType: ChartAxisUnitTypeEnum; safecall;
    procedure Set_TickMarkUnitType(punittype: ChartAxisUnitTypeEnum); safecall;
    function Get_GroupingUnit: Integer; safecall;
    procedure Set_GroupingUnit(GroupingUnit: Integer); safecall;
    function Get_GroupingUnitType: ChartAxisUnitTypeEnum; safecall;
    procedure Set_GroupingUnitType(proupingUnitType: ChartAxisUnitTypeEnum); safecall;
    function Get_GroupingTotalFunction: ChartGroupingTotalFunctionEnum; safecall;
    procedure Set_GroupingTotalFunction(ptotal: ChartGroupingTotalFunctionEnum); safecall;
    procedure Set_Orientation(porientation: Integer); safecall;
    function Get_Orientation: Integer; safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Top(ptop: Integer); safecall;
    function Get_Left: Integer; safecall;
    procedure Set_Left(pleft: Integer); safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_CategoryLabels: ChCategoryLabels; safecall;
    function ValueToPoint(Value: OleVariant): Coordinate; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property Crosses: ChartAxisCrossesEnum write Set_Crosses;
    property CrossesAtValue: Double write Set_CrossesAtValue;
    property CrossingAxis: ChAxis write Set_CrossingAxis;
    property Font: ChFont read Get_Font;
    property HasAutoMajorUnit: WordBool write Set_HasAutoMajorUnit;
    property HasAutoMinorUnit: WordBool write Set_HasAutoMinorUnit;
    property HasMajorGridlines: WordBool write Set_HasMajorGridlines;
    property HasMinorGridlines: WordBool write Set_HasMinorGridlines;
    property HasTitle: WordBool write Set_HasTitle;
    property Line: ChLine read Get_Line;
    property MajorGridlines: ChGridlines read Get_MajorGridlines;
    property MajorTickMarks: ChartTickMarkEnum write Set_MajorTickMarks;
    property MajorUnit: Double write Set_MajorUnit;
    property MinorGridlines: ChGridlines read Get_MinorGridlines;
    property MinorTickMarks: ChartTickMarkEnum write Set_MinorTickMarks;
    property MinorUnit: Double write Set_MinorUnit;
    property Name: WideString write Set_Name;
    property Parent: ChChart read Get_Parent;
    property Position: ChartAxisPositionEnum write Set_Position;
    property Scaling: ChScaling read Get_Scaling;
    property HasTickLabels: WordBool write Set_HasTickLabels;
    property TickLabelSpacing: Integer write Set_TickLabelSpacing;
    property TickMarkSpacing: Integer write Set_TickMarkSpacing;
    property Title: ChTitle read Get_Title;
    property type_: ChartAxisTypeEnum read Get_type_;
    property Index: Integer read Get_Index;
    property NumberFormat: WideString read Get_NumberFormat write Set_NumberFormat;
    property GroupingType: ChartAxisGroupingEnum read Get_GroupingType;
    property TickLabelUnitType: ChartAxisUnitTypeEnum read Get_TickLabelUnitType;
    property TickMarkUnitType: ChartAxisUnitTypeEnum read Get_TickMarkUnitType;
    property GroupingUnit: Integer read Get_GroupingUnit;
    property GroupingUnitType: ChartAxisUnitTypeEnum read Get_GroupingUnitType;
    property GroupingTotalFunction: ChartGroupingTotalFunctionEnum read Get_GroupingTotalFunction;
    property Orientation: Integer write Set_Orientation;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property CategoryLabels: ChCategoryLabels read Get_CategoryLabels;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE7-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChAxisDisp = dispinterface
    ['{F5B39AE7-1480-11D3-8549-00C04FAC67D7}']
    property Crosses: ChartAxisCrossesEnum writeonly dispid 1610743808;
    property CrossesAtValue: Double writeonly dispid 1610743810;
    property CrossingAxis: ChAxis writeonly dispid 1610743812;
    property Font: ChFont readonly dispid 5200;
    property HasAutoMajorUnit: WordBool writeonly dispid 1610743815;
    property HasAutoMinorUnit: WordBool writeonly dispid 1610743817;
    property HasMajorGridlines: WordBool writeonly dispid 1610743819;
    property HasMinorGridlines: WordBool writeonly dispid 1610743821;
    property HasTitle: WordBool writeonly dispid 1610743823;
    property Line: ChLine readonly dispid 5205;
    property MajorGridlines: ChGridlines readonly dispid 1610743826;
    property MajorTickMarks: ChartTickMarkEnum writeonly dispid 1610743827;
    property MajorUnit: Double writeonly dispid 1610743829;
    property MinorGridlines: ChGridlines readonly dispid 1610743831;
    property MinorTickMarks: ChartTickMarkEnum writeonly dispid 1610743832;
    property MinorUnit: Double writeonly dispid 1610743834;
    property Name: WideString writeonly dispid 1610743836;
    property Parent: ChChart readonly dispid 5201;
    property Position: ChartAxisPositionEnum writeonly dispid 1610743839;
    property Scaling: ChScaling readonly dispid 1610743841;
    property HasTickLabels: WordBool writeonly dispid 1610743842;
    property TickLabelSpacing: Integer writeonly dispid 1610743844;
    property TickMarkSpacing: Integer writeonly dispid 1610743846;
    property Title: ChTitle readonly dispid 1610743848;
    property type_: ChartAxisTypeEnum readonly dispid 1610743849;
    property Index: Integer readonly dispid 5204;
    property NumberFormat: WideString dispid 5203;
    procedure Select; dispid 5036;
    property GroupingType: ChartAxisGroupingEnum readonly dispid 1610743854;
    property TickLabelUnitType: ChartAxisUnitTypeEnum readonly dispid 1610743856;
    property TickMarkUnitType: ChartAxisUnitTypeEnum readonly dispid 1610743858;
    property GroupingUnit: Integer readonly dispid 1610743860;
    property GroupingUnitType: ChartAxisUnitTypeEnum readonly dispid 1610743862;
    property GroupingTotalFunction: ChartGroupingTotalFunctionEnum readonly dispid 1610743864;
    property Orientation: Integer writeonly dispid 1610743866;
    property Top: Integer readonly dispid 1610743868;
    property Left: Integer readonly dispid 1610743870;
    property Bottom: Integer readonly dispid 1610743872;
    property Right: Integer readonly dispid 1610743873;
    property CategoryLabels: ChCategoryLabels readonly dispid 1610743874;
    function ValueToPoint(Value: OleVariant): Coordinate; dispid 1610743875;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743876;
  end;

// *********************************************************************//
// Interface: ChGridlines
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC4-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChGridlines = interface(IDispatch)
    ['{F5B39AC4-1480-11D3-8549-00C04FAC67D7}']
    function Get_Line: ChLine; safecall;
    function Get_Parent: ChAxis; safecall;
    procedure Select; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property Line: ChLine read Get_Line;
    property Parent: ChAxis read Get_Parent;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChGridlinesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC4-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChGridlinesDisp = dispinterface
    ['{F5B39AC4-1480-11D3-8549-00C04FAC67D7}']
    property Line: ChLine readonly dispid 5205;
    property Parent: ChAxis readonly dispid 5201;
    procedure Select; dispid 5036;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743811;
  end;

// *********************************************************************//
// Interface: ChTitle
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39ABE-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChTitle = interface(IDispatch)
    ['{F5B39ABE-1480-11D3-8549-00C04FAC67D7}']
    function Get_Border: ChBorder; safecall;
    procedure Set_Caption(const pbstr: WideString); safecall;
    function Get_Caption: WideString; safecall;
    function Get_Font: ChFont; safecall;
    function Get_Interior: ChInterior; safecall;
    function Get_Parent: IDispatch; safecall;
    procedure Set_Position(pocpPos: ChartTitlePositionEnum); safecall;
    function Get_Position: ChartTitlePositionEnum; safecall;
    procedure Select; safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Top(ptop: Integer); safecall;
    function Get_Left: Integer; safecall;
    procedure Set_Left(pleft: Integer); safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property Border: ChBorder read Get_Border;
    property Caption: WideString write Set_Caption;
    property Font: ChFont read Get_Font;
    property Interior: ChInterior read Get_Interior;
    property Parent: IDispatch read Get_Parent;
    property Position: ChartTitlePositionEnum write Set_Position;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChTitleDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39ABE-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChTitleDisp = dispinterface
    ['{F5B39ABE-1480-11D3-8549-00C04FAC67D7}']
    property Border: ChBorder readonly dispid 5004;
    property Caption: WideString writeonly dispid 1610743809;
    property Font: ChFont readonly dispid 5200;
    property Interior: ChInterior readonly dispid 5007;
    property Parent: IDispatch readonly dispid 5201;
    property Position: ChartTitlePositionEnum writeonly dispid 1610743814;
    procedure Select; dispid 5036;
    property Top: Integer readonly dispid 1610743817;
    property Left: Integer readonly dispid 1610743819;
    property Bottom: Integer readonly dispid 1610743821;
    property Right: Integer readonly dispid 1610743822;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743823;
  end;

// *********************************************************************//
// Interface: ChCategoryLabels
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EDF774DC-D540-40F4-99F2-75C83379CAA8}
// *********************************************************************//
  ChCategoryLabels = interface(IDispatch)
    ['{EDF774DC-D540-40F4-99F2-75C83379CAA8}']
    function Get_LevelCount: Integer; safecall;
    function Get_ItemCount(Level: Integer): Integer; safecall;
    function Get_Parent: ChAxis; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant; Level: Integer): ChCategoryLabel; safecall;
    function Get_PivotAxis: PivotResultGroupAxis; safecall;
    property LevelCount: Integer read Get_LevelCount;
    property ItemCount[Level: Integer]: Integer read Get_ItemCount;
    property Parent: ChAxis read Get_Parent;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant; Level: Integer]: ChCategoryLabel read Get_Item;
    property PivotAxis: PivotResultGroupAxis read Get_PivotAxis;
  end;

// *********************************************************************//
// DispIntf:  ChCategoryLabelsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EDF774DC-D540-40F4-99F2-75C83379CAA8}
// *********************************************************************//
  ChCategoryLabelsDisp = dispinterface
    ['{EDF774DC-D540-40F4-99F2-75C83379CAA8}']
    property LevelCount: Integer readonly dispid 1610743808;
    property ItemCount[Level: Integer]: Integer readonly dispid 1610743809;
    property Parent: ChAxis readonly dispid 5201;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant; Level: Integer]: ChCategoryLabel readonly dispid 0;
    property PivotAxis: PivotResultGroupAxis readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: ChCategoryLabel
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D4765783-5F64-4A53-BD65-66839B65B4C9}
// *********************************************************************//
  ChCategoryLabel = interface(IDispatch)
    ['{D4765783-5F64-4A53-BD65-66839B65B4C9}']
    function Get_Caption: WideString; safecall;
    function Get_PivotObject: IDispatch; safecall;
    function Get_Level: Integer; safecall;
    function Get_Index: Integer; safecall;
    function Get_Parent: ChAxis; safecall;
    function Get_ParentLabel: ChCategoryLabel; safecall;
    procedure Select; safecall;
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property Caption: WideString read Get_Caption;
    property PivotObject: IDispatch read Get_PivotObject;
    property Level: Integer read Get_Level;
    property Index: Integer read Get_Index;
    property Parent: ChAxis read Get_Parent;
    property ParentLabel: ChCategoryLabel read Get_ParentLabel;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChCategoryLabelDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D4765783-5F64-4A53-BD65-66839B65B4C9}
// *********************************************************************//
  ChCategoryLabelDisp = dispinterface
    ['{D4765783-5F64-4A53-BD65-66839B65B4C9}']
    property Caption: WideString readonly dispid 1610743808;
    property PivotObject: IDispatch readonly dispid 1610743809;
    property Level: Integer readonly dispid 1610743810;
    property Index: Integer readonly dispid 5204;
    property Parent: ChAxis readonly dispid 5201;
    property ParentLabel: ChCategoryLabel readonly dispid 1610743813;
    procedure Select; dispid 5036;
    property Top: Integer readonly dispid 1610743815;
    property Left: Integer readonly dispid 1610743816;
    property Bottom: Integer readonly dispid 1610743817;
    property Right: Integer readonly dispid 1610743818;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743819;
  end;

// *********************************************************************//
// Interface: PivotResultAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D1AFFCE4-FCE5-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotResultAxis = interface(IDispatch)
    ['{D1AFFCE4-FCE5-11D2-8F35-00600893B533}']
    function Get_Data: PivotData; safecall;
    function Get_SourceAxis: PivotAxis; safecall;
    function Get_Label_: PivotResultLabel; safecall;
    function Get_Left: Integer; safecall;
    function Get_Top: Integer; safecall;
    function Get_Width: Integer; safecall;
    function Get_Height: Integer; safecall;
    property Data: PivotData read Get_Data;
    property SourceAxis: PivotAxis read Get_SourceAxis;
    property Label_: PivotResultLabel read Get_Label_;
    property Left: Integer read Get_Left;
    property Top: Integer read Get_Top;
    property Width: Integer read Get_Width;
    property Height: Integer read Get_Height;
  end;

// *********************************************************************//
// DispIntf:  PivotResultAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D1AFFCE4-FCE5-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotResultAxisDisp = dispinterface
    ['{D1AFFCE4-FCE5-11D2-8F35-00600893B533}']
    property Data: PivotData readonly dispid 1610743808;
    property SourceAxis: PivotAxis readonly dispid 1610743809;
    property Label_: PivotResultLabel readonly dispid 1610743810;
    property Left: Integer readonly dispid 1610743811;
    property Top: Integer readonly dispid 1610743812;
    property Width: Integer readonly dispid 1610743813;
    property Height: Integer readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: PivotResultGroupAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2C8CED10-01AF-11D3-8F35-00600893B533}
// *********************************************************************//
  PivotResultGroupAxis = interface(PivotResultAxis)
    ['{2C8CED10-01AF-11D3-8F35-00600893B533}']
    procedure GhostMethod_PivotResultGroupAxis_0_1; safecall;
    procedure GhostMethod_PivotResultGroupAxis_4_2; safecall;
    procedure GhostMethod_PivotResultGroupAxis_8_3; safecall;
    procedure GhostMethod_PivotResultGroupAxis_12_4; safecall;
    procedure GhostMethod_PivotResultGroupAxis_16_5; safecall;
    procedure GhostMethod_PivotResultGroupAxis_20_6; safecall;
    procedure GhostMethod_PivotResultGroupAxis_24_7; safecall;
    procedure GhostMethod_PivotResultGroupAxis_28_8; safecall;
    procedure GhostMethod_PivotResultGroupAxis_32_9; safecall;
    procedure GhostMethod_PivotResultGroupAxis_36_10; safecall;
    procedure GhostMethod_PivotResultGroupAxis_40_11; safecall;
    procedure GhostMethod_PivotResultGroupAxis_44_12; safecall;
    procedure GhostMethod_PivotResultGroupAxis_48_13; safecall;
    procedure GhostMethod_PivotResultGroupAxis_52_14; safecall;
    function Get_Fields: PivotFields; safecall;
    function Get_GroupFields: PivotResultGroupFields; safecall;
    function Get_Member: PivotAxisMember; safecall;
    property Fields: PivotFields read Get_Fields;
    property GroupFields: PivotResultGroupFields read Get_GroupFields;
    property Member: PivotAxisMember read Get_Member;
  end;

// *********************************************************************//
// DispIntf:  PivotResultGroupAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2C8CED10-01AF-11D3-8F35-00600893B533}
// *********************************************************************//
  PivotResultGroupAxisDisp = dispinterface
    ['{2C8CED10-01AF-11D3-8F35-00600893B533}']
    procedure GhostMethod_PivotResultGroupAxis_0_1; dispid 1610678272;
    procedure GhostMethod_PivotResultGroupAxis_4_2; dispid 1610678273;
    procedure GhostMethod_PivotResultGroupAxis_8_3; dispid 1610678274;
    procedure GhostMethod_PivotResultGroupAxis_12_4; dispid 1610678275;
    procedure GhostMethod_PivotResultGroupAxis_16_5; dispid 1610678276;
    procedure GhostMethod_PivotResultGroupAxis_20_6; dispid 1610678277;
    procedure GhostMethod_PivotResultGroupAxis_24_7; dispid 1610678278;
    procedure GhostMethod_PivotResultGroupAxis_28_8; dispid 1610678279;
    procedure GhostMethod_PivotResultGroupAxis_32_9; dispid 1610678280;
    procedure GhostMethod_PivotResultGroupAxis_36_10; dispid 1610678281;
    procedure GhostMethod_PivotResultGroupAxis_40_11; dispid 1610678282;
    procedure GhostMethod_PivotResultGroupAxis_44_12; dispid 1610678283;
    procedure GhostMethod_PivotResultGroupAxis_48_13; dispid 1610678284;
    procedure GhostMethod_PivotResultGroupAxis_52_14; dispid 1610678285;
    property Fields: PivotFields readonly dispid 1610809344;
    property GroupFields: PivotResultGroupFields readonly dispid 1610809345;
    property Member: PivotAxisMember readonly dispid 1610809346;
    property Data: PivotData readonly dispid 1610743808;
    property SourceAxis: PivotAxis readonly dispid 1610743809;
    property Label_: PivotResultLabel readonly dispid 1610743810;
    property Left: Integer readonly dispid 1610743811;
    property Top: Integer readonly dispid 1610743812;
    property Width: Integer readonly dispid 1610743813;
    property Height: Integer readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: PivotData
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B30-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotData = interface(IDispatch)
    ['{F5B39B30-1480-11D3-8549-00C04FAC67D7}']
    function Get_View: PivotView; safecall;
    function Get_RowAxis: PivotResultRowAxis; safecall;
    function Get_ColumnAxis: PivotResultColumnAxis; safecall;
    function Get_FilterAxis: PivotResultFilterAxis; safecall;
    function Get_DataAxis: PivotResultDataAxis; safecall;
    function Get_Left: PivotColumnMember; safecall;
    procedure _Set_Left(const Left: PivotColumnMember); safecall;
    function Get_Top: PivotRowMember; safecall;
    procedure _Set_Top(const Top: PivotRowMember); safecall;
    function Get_Cells(const Row: PivotRowMember; const Column: PivotColumnMember): PivotCell; safecall;
    function Get_DetailLeft(const Column: PivotColumnMember): Integer; safecall;
    procedure Set_DetailLeft(const Column: PivotColumnMember; DetailLeft: Integer); safecall;
    function Get_Range(const TopLeft: PivotCell; const BottomRight: PivotCell): PivotRange; safecall;
    function Get_Left2: Integer; safecall;
    function Get_Top2: Integer; safecall;
    function Get_Label_: PivotResultLabel; safecall;
    procedure MoveTop(const Top: PivotRowMember; TopOffset: Integer; Update: WordBool); safecall;
    procedure MoveLeft(const Left: PivotColumnMember; LeftOffset: Integer; Update: WordBool); safecall;
    function Get_Control: IPivotControl; safecall;
    function Get_RowMembers: PivotRowMembers; safecall;
    function Get_ColumnMembers: PivotColumnMembers; safecall;
    function Get_CurrentCell: PivotCell; safecall;
    function Get_LeftOffset: Integer; safecall;
    procedure Set_LeftOffset(LeftOffset: Integer); safecall;
    function Get_TopOffset: Integer; safecall;
    procedure Set_TopOffset(TopOffset: Integer); safecall;
    function Get_ViewportTop: Integer; safecall;
    procedure Set_ViewportTop(ViewportTop: Integer); safecall;
    function Get_ViewportLeft: Integer; safecall;
    procedure Set_ViewportLeft(ViewportLeft: Integer); safecall;
    function Get_CellsEx(const Row: PivotRowMember; const Column: PivotColumnMember; 
                         const Page: PivotPageMember): PivotCell; safecall;
    function Get_PageAxis: PivotResultPageAxis; safecall;
    function Get_Recordset: Recordset; safecall;
    procedure ShowDetails; safecall;
    procedure HideDetails; safecall;
    function Get_IsConsistent: WordBool; safecall;
    property View: PivotView read Get_View;
    property RowAxis: PivotResultRowAxis read Get_RowAxis;
    property ColumnAxis: PivotResultColumnAxis read Get_ColumnAxis;
    property FilterAxis: PivotResultFilterAxis read Get_FilterAxis;
    property DataAxis: PivotResultDataAxis read Get_DataAxis;
    property Left: PivotColumnMember read Get_Left;
    property Top: PivotRowMember read Get_Top;
    property Cells[const Row: PivotRowMember; const Column: PivotColumnMember]: PivotCell read Get_Cells;
    property DetailLeft[const Column: PivotColumnMember]: Integer read Get_DetailLeft write Set_DetailLeft;
    property Range[const TopLeft: PivotCell; const BottomRight: PivotCell]: PivotRange read Get_Range;
    property Left2: Integer read Get_Left2;
    property Top2: Integer read Get_Top2;
    property Label_: PivotResultLabel read Get_Label_;
    property Control: IPivotControl read Get_Control;
    property RowMembers: PivotRowMembers read Get_RowMembers;
    property ColumnMembers: PivotColumnMembers read Get_ColumnMembers;
    property CurrentCell: PivotCell read Get_CurrentCell;
    property LeftOffset: Integer read Get_LeftOffset;
    property TopOffset: Integer read Get_TopOffset;
    property ViewportTop: Integer read Get_ViewportTop;
    property ViewportLeft: Integer read Get_ViewportLeft;
    property CellsEx[const Row: PivotRowMember; const Column: PivotColumnMember; 
                     const Page: PivotPageMember]: PivotCell read Get_CellsEx;
    property PageAxis: PivotResultPageAxis read Get_PageAxis;
    property Recordset: Recordset read Get_Recordset;
    property IsConsistent: WordBool read Get_IsConsistent;
  end;

// *********************************************************************//
// DispIntf:  PivotDataDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B30-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotDataDisp = dispinterface
    ['{F5B39B30-1480-11D3-8549-00C04FAC67D7}']
    property View: PivotView readonly dispid 1610743808;
    property RowAxis: PivotResultRowAxis readonly dispid 1610743809;
    property ColumnAxis: PivotResultColumnAxis readonly dispid 1610743810;
    property FilterAxis: PivotResultFilterAxis readonly dispid 1610743811;
    property DataAxis: PivotResultDataAxis readonly dispid 1610743812;
    property Left: PivotColumnMember readonly dispid 1610743813;
    property Top: PivotRowMember readonly dispid 1610743815;
    property Cells[const Row: PivotRowMember; const Column: PivotColumnMember]: PivotCell readonly dispid 1610743817;
    property DetailLeft[const Column: PivotColumnMember]: Integer dispid 2005;
    property Range[const TopLeft: PivotCell; const BottomRight: PivotCell]: PivotRange readonly dispid 1610743820;
    property Left2: Integer readonly dispid 1610743821;
    property Top2: Integer readonly dispid 1610743822;
    property Label_: PivotResultLabel readonly dispid 1610743823;
    procedure MoveTop(const Top: PivotRowMember; TopOffset: Integer; Update: WordBool); dispid 1610743824;
    procedure MoveLeft(const Left: PivotColumnMember; LeftOffset: Integer; Update: WordBool); dispid 1610743825;
    property Control: IPivotControl readonly dispid 1610743826;
    property RowMembers: PivotRowMembers readonly dispid 1610743827;
    property ColumnMembers: PivotColumnMembers readonly dispid 1610743828;
    property CurrentCell: PivotCell readonly dispid 1610743829;
    property LeftOffset: Integer readonly dispid 1610743830;
    property TopOffset: Integer readonly dispid 1610743832;
    property ViewportTop: Integer readonly dispid 1610743834;
    property ViewportLeft: Integer readonly dispid 1610743836;
    property CellsEx[const Row: PivotRowMember; const Column: PivotColumnMember; 
                     const Page: PivotPageMember]: PivotCell readonly dispid 1610743838;
    property PageAxis: PivotResultPageAxis readonly dispid 1610743839;
    property Recordset: Recordset readonly dispid 1610743840;
    procedure ShowDetails; dispid 1610743841;
    procedure HideDetails; dispid 1610743842;
    property IsConsistent: WordBool readonly dispid 1610743843;
  end;

// *********************************************************************//
// Interface: PivotView
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B29-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotView = interface(IDispatch)
    ['{F5B39B29-1480-11D3-8549-00C04FAC67D7}']
    function Get_FieldSets: PivotFieldSets; safecall;
    function Get_RowAxis: PivotGroupAxis; safecall;
    function Get_ColumnAxis: PivotGroupAxis; safecall;
    function Get_DataAxis: PivotDataAxis; safecall;
    function Get_FilterAxis: PivotFilterAxis; safecall;
    function Get_Label_: PivotLabel; safecall;
    function Get_TitleBar: PivotLabel; safecall;
    function Get_Totals: PivotTotals; safecall;
    function Get_TotalFont: PivotFont; safecall;
    function Get_TotalForeColor: OleVariant; safecall;
    procedure Set_TotalForeColor(Color: OleVariant); safecall;
    function Get_TotalBackColor: OleVariant; safecall;
    procedure Set_TotalBackColor(Color: OleVariant); safecall;
    function Get_HeaderFont: PivotFont; safecall;
    function Get_HeaderForeColor: OleVariant; safecall;
    procedure Set_HeaderForeColor(Color: OleVariant); safecall;
    function Get_HeaderBackColor: OleVariant; safecall;
    procedure Set_HeaderBackColor(Color: OleVariant); safecall;
    function Get_HeaderHAlignment: PivotHAlignmentEnum; safecall;
    procedure Set_HeaderHAlignment(HAlignment: PivotHAlignmentEnum); safecall;
    function Get_HeaderHeight: Integer; safecall;
    function Get_FieldLabelFont: PivotFont; safecall;
    function Get_FieldLabelForeColor: OleVariant; safecall;
    procedure Set_FieldLabelForeColor(Color: OleVariant); safecall;
    function Get_FieldLabelBackColor: OleVariant; safecall;
    procedure Set_FieldLabelBackColor(Color: OleVariant); safecall;
    function Get_FieldLabelHeight: Integer; safecall;
    function Get_DetailRowHeight: Integer; safecall;
    procedure Set_DetailRowHeight(Height: Integer); safecall;
    function Get_DetailSortOrder: OleVariant; safecall;
    procedure Set_DetailSortOrder(DetailSortOrder: OleVariant); safecall;
    function Get_TotalOrientation: PivotViewTotalOrientationEnum; safecall;
    procedure Set_TotalOrientation(TotalOrientation: PivotViewTotalOrientationEnum); safecall;
    function AddTotal(const Name: WideString; const Field: PivotField; 
                      Function_: PivotTotalFunctionEnum): PivotTotal; safecall;
    procedure DeleteTotal(Total: OleVariant); safecall;
    function AddFieldSet(const Name: WideString): PivotFieldSet; safecall;
    procedure DeleteFieldSet(FieldSet: OleVariant); safecall;
    procedure AutoLayout(MaxDataFields: Integer); safecall;
    function Get_TotalAllMembers: WordBool; safecall;
    procedure Set_TotalAllMembers(TotalAllMembers: WordBool); safecall;
    function Get_DetailMaxWidth: Integer; safecall;
    procedure Set_DetailMaxWidth(DetailMaxWidth: Integer); safecall;
    function Get_DetailMaxHeight: Integer; safecall;
    procedure Set_DetailMaxHeight(DetailMaxHeight: Integer); safecall;
    function Get_DetailAutoFit: WordBool; safecall;
    procedure Set_DetailAutoFit(DetailAutoFit: WordBool); safecall;
    function Get_IsFiltered: WordBool; safecall;
    procedure Set_IsFiltered(IsFiltered: WordBool); safecall;
    function Get_DisplayCalculatedMembers: WordBool; safecall;
    procedure Set_DisplayCalculatedMembers(DisplayCalculatedMembers: WordBool); safecall;
    function Get_UseProviderFormatting: WordBool; safecall;
    procedure Set_UseProviderFormatting(UseProviderFormatting: WordBool); safecall;
    function Get_ExpandDetails: PivotTableExpandEnum; safecall;
    procedure Set_ExpandDetails(ExpandDetails: PivotTableExpandEnum); safecall;
    function Get_Control: IPivotControl; safecall;
    function AddCalculatedTotal(const Name: WideString; const Caption: WideString; 
                                const Expression: WideString; SolveOrder: Integer): PivotTotal; safecall;
    function Get_PageAxis: PivotGroupAxis; safecall;
    function Get_ExpandMembers: PivotTableExpandEnum; safecall;
    procedure Set_ExpandMembers(ExpandDetails: PivotTableExpandEnum); safecall;
    function Get_AllowEdits: WordBool; safecall;
    procedure Set_AllowEdits(AllowEdits: WordBool); safecall;
    function Get_AllowAdditions: WordBool; safecall;
    procedure Set_AllowAdditions(AllowAdditions: WordBool); safecall;
    function Get_AllowDeletions: WordBool; safecall;
    procedure Set_AllowDeletions(AllowDeletions: WordBool); safecall;
    function Get_PropertyCaptionFont: PivotFont; safecall;
    function Get_PropertyValueFont: PivotFont; safecall;
    function Get_PropertyCaptionHAlignment: PivotHAlignmentEnum; safecall;
    procedure Set_PropertyCaptionHAlignment(HAlignment: PivotHAlignmentEnum); safecall;
    function Get_PropertyValueHAlignment: PivotHAlignmentEnum; safecall;
    procedure Set_PropertyValueHAlignment(HAlignment: PivotHAlignmentEnum); safecall;
    function Get_DisplayCellColor: WordBool; safecall;
    procedure Set_DisplayCellColor(DisplayCellColor: WordBool); safecall;
    function Get_FilterCrossJoins: WordBool; safecall;
    procedure Set_FilterCrossJoins(FilterCrossJoins: WordBool); safecall;
    property FieldSets: PivotFieldSets read Get_FieldSets;
    property RowAxis: PivotGroupAxis read Get_RowAxis;
    property ColumnAxis: PivotGroupAxis read Get_ColumnAxis;
    property DataAxis: PivotDataAxis read Get_DataAxis;
    property FilterAxis: PivotFilterAxis read Get_FilterAxis;
    property Label_: PivotLabel read Get_Label_;
    property TitleBar: PivotLabel read Get_TitleBar;
    property Totals: PivotTotals read Get_Totals;
    property TotalFont: PivotFont read Get_TotalFont;
    property TotalForeColor: OleVariant read Get_TotalForeColor;
    property TotalBackColor: OleVariant read Get_TotalBackColor;
    property HeaderFont: PivotFont read Get_HeaderFont;
    property HeaderForeColor: OleVariant read Get_HeaderForeColor;
    property HeaderBackColor: OleVariant read Get_HeaderBackColor;
    property HeaderHAlignment: PivotHAlignmentEnum read Get_HeaderHAlignment;
    property HeaderHeight: Integer read Get_HeaderHeight;
    property FieldLabelFont: PivotFont read Get_FieldLabelFont;
    property FieldLabelForeColor: OleVariant read Get_FieldLabelForeColor;
    property FieldLabelBackColor: OleVariant read Get_FieldLabelBackColor;
    property FieldLabelHeight: Integer read Get_FieldLabelHeight;
    property DetailRowHeight: Integer read Get_DetailRowHeight;
    property DetailSortOrder: OleVariant read Get_DetailSortOrder;
    property TotalOrientation: PivotViewTotalOrientationEnum read Get_TotalOrientation;
    property TotalAllMembers: WordBool read Get_TotalAllMembers;
    property DetailMaxWidth: Integer read Get_DetailMaxWidth;
    property DetailMaxHeight: Integer read Get_DetailMaxHeight;
    property DetailAutoFit: WordBool read Get_DetailAutoFit;
    property IsFiltered: WordBool read Get_IsFiltered;
    property DisplayCalculatedMembers: WordBool read Get_DisplayCalculatedMembers;
    property UseProviderFormatting: WordBool read Get_UseProviderFormatting;
    property ExpandDetails: PivotTableExpandEnum read Get_ExpandDetails;
    property Control: IPivotControl read Get_Control;
    property PageAxis: PivotGroupAxis read Get_PageAxis;
    property ExpandMembers: PivotTableExpandEnum read Get_ExpandMembers;
    property AllowEdits: WordBool read Get_AllowEdits;
    property AllowAdditions: WordBool read Get_AllowAdditions;
    property AllowDeletions: WordBool read Get_AllowDeletions;
    property PropertyCaptionFont: PivotFont read Get_PropertyCaptionFont;
    property PropertyValueFont: PivotFont read Get_PropertyValueFont;
    property PropertyCaptionHAlignment: PivotHAlignmentEnum read Get_PropertyCaptionHAlignment;
    property PropertyValueHAlignment: PivotHAlignmentEnum read Get_PropertyValueHAlignment;
    property DisplayCellColor: WordBool read Get_DisplayCellColor;
    property FilterCrossJoins: WordBool read Get_FilterCrossJoins;
  end;

// *********************************************************************//
// DispIntf:  PivotViewDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B29-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotViewDisp = dispinterface
    ['{F5B39B29-1480-11D3-8549-00C04FAC67D7}']
    property FieldSets: PivotFieldSets readonly dispid 1610743808;
    property RowAxis: PivotGroupAxis readonly dispid 1610743809;
    property ColumnAxis: PivotGroupAxis readonly dispid 1610743810;
    property DataAxis: PivotDataAxis readonly dispid 1610743811;
    property FilterAxis: PivotFilterAxis readonly dispid 1610743812;
    property Label_: PivotLabel readonly dispid 1610743813;
    property TitleBar: PivotLabel readonly dispid 1610743814;
    property Totals: PivotTotals readonly dispid 1610743815;
    property TotalFont: PivotFont readonly dispid 1610743816;
    property TotalForeColor: OleVariant readonly dispid 1610743817;
    property TotalBackColor: OleVariant readonly dispid 1610743819;
    property HeaderFont: PivotFont readonly dispid 1610743821;
    property HeaderForeColor: OleVariant readonly dispid 1610743822;
    property HeaderBackColor: OleVariant readonly dispid 1610743824;
    property HeaderHAlignment: PivotHAlignmentEnum readonly dispid 1610743826;
    property HeaderHeight: Integer readonly dispid 1610743828;
    property FieldLabelFont: PivotFont readonly dispid 1610743829;
    property FieldLabelForeColor: OleVariant readonly dispid 1610743830;
    property FieldLabelBackColor: OleVariant readonly dispid 1610743832;
    property FieldLabelHeight: Integer readonly dispid 1610743834;
    property DetailRowHeight: Integer readonly dispid 1610743835;
    property DetailSortOrder: OleVariant readonly dispid 1610743837;
    property TotalOrientation: PivotViewTotalOrientationEnum readonly dispid 1610743839;
    function AddTotal(const Name: WideString; const Field: PivotField; 
                      Function_: PivotTotalFunctionEnum): PivotTotal; dispid 1610743841;
    procedure DeleteTotal(Total: OleVariant); dispid 1610743842;
    function AddFieldSet(const Name: WideString): PivotFieldSet; dispid 1610743843;
    procedure DeleteFieldSet(FieldSet: OleVariant); dispid 1610743844;
    procedure AutoLayout(MaxDataFields: Integer); dispid 1610743845;
    property TotalAllMembers: WordBool readonly dispid 1610743846;
    property DetailMaxWidth: Integer readonly dispid 1610743848;
    property DetailMaxHeight: Integer readonly dispid 1610743850;
    property DetailAutoFit: WordBool readonly dispid 1610743852;
    property IsFiltered: WordBool readonly dispid 1610743854;
    property DisplayCalculatedMembers: WordBool readonly dispid 1610743856;
    property UseProviderFormatting: WordBool readonly dispid 1610743858;
    property ExpandDetails: PivotTableExpandEnum readonly dispid 1610743860;
    property Control: IPivotControl readonly dispid 1610743862;
    function AddCalculatedTotal(const Name: WideString; const Caption: WideString; 
                                const Expression: WideString; SolveOrder: Integer): PivotTotal; dispid 1610743863;
    property PageAxis: PivotGroupAxis readonly dispid 1610743864;
    property ExpandMembers: PivotTableExpandEnum readonly dispid 1610743865;
    property AllowEdits: WordBool readonly dispid 1610743867;
    property AllowAdditions: WordBool readonly dispid 1610743869;
    property AllowDeletions: WordBool readonly dispid 1610743871;
    property PropertyCaptionFont: PivotFont readonly dispid 1610743873;
    property PropertyValueFont: PivotFont readonly dispid 1610743874;
    property PropertyCaptionHAlignment: PivotHAlignmentEnum readonly dispid 1610743875;
    property PropertyValueHAlignment: PivotHAlignmentEnum readonly dispid 1610743877;
    property DisplayCellColor: WordBool readonly dispid 1610743879;
    property FilterCrossJoins: WordBool readonly dispid 1610743881;
  end;

// *********************************************************************//
// Interface: PivotFieldSets
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AAD-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotFieldSets = interface(IDispatch)
    ['{F5B39AAD-1480-11D3-8549-00C04FAC67D7}']
    function Get_Item(Index: OleVariant): PivotFieldSet; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: OleVariant]: PivotFieldSet read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PivotFieldSetsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AAD-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotFieldSetsDisp = dispinterface
    ['{F5B39AAD-1480-11D3-8549-00C04FAC67D7}']
    property Item[Index: OleVariant]: PivotFieldSet readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PivotFieldSet
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AAE-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotFieldSet = interface(IDispatch)
    ['{F5B39AAE-1480-11D3-8549-00C04FAC67D7}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Caption: WideString); safecall;
    function Get_Fields: PivotFields; safecall;
    function Get_Members: PivotMembers; safecall;
    function Get_Orientation: PivotFieldSetOrientationEnum; safecall;
    function Get_type_: PivotFieldSetTypeEnum; safecall;
    function AddCalculatedField(const Name: WideString; const Caption: WideString; 
                                const DataField: WideString; const Expression: WideString): PivotField; safecall;
    function Get_BoundField: PivotField; safecall;
    function Get_UniqueName: WideString; safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(Width: Integer); safecall;
    function Get_DefaultMember: PivotMember; safecall;
    function Get_Member: PivotMember; safecall;
    function Get_AllMember: PivotMember; safecall;
    function Get_CompareOrderedMembersBy: PivotMembersCompareByEnum; safecall;
    procedure Set_CompareOrderedMembersBy(CompareOrderedMembersBy: PivotMembersCompareByEnum); safecall;
    function Get_View: PivotView; safecall;
    function Get_CreateFilterUpdate: PivotFilterUpdate; safecall;
    function Get_AllowMultiFilter: WordBool; safecall;
    procedure Set_AllowMultiFilter(Allow: WordBool); safecall;
    function Get_FilterCaption: WideString; safecall;
    function Get_AllIncludeExclude: PivotFieldSetAllIncludeExcludeEnum; safecall;
    procedure Set_AllIncludeExclude(AllIncludeExclude: PivotFieldSetAllIncludeExcludeEnum); safecall;
    function AddCustomGroupField(const Name: WideString; const Caption: WideString; 
                                 Before: OleVariant): PivotField; safecall;
    procedure DeleteField(Field: OleVariant); safecall;
    function Get_CompareMemberCaptionsBy: PivotMembersCompareByEnum; safecall;
    procedure Set_CompareMemberCaptionsBy(CompareMemberCaptionsBy: PivotMembersCompareByEnum); safecall;
    function Get_DisplayInFieldList: WordBool; safecall;
    procedure Set_DisplayInFieldList(DisplayInFieldList: WordBool); safecall;
    function Get_AlwaysIncludeInCube: WordBool; safecall;
    procedure Set_AlwaysIncludeInCube(AlwaysInclude: WordBool); safecall;
    function Get_FindMember(NameOrPath: OleVariant; Format: PivotMemberFindFormatEnum): PivotMember; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Caption: WideString read Get_Caption;
    property Fields: PivotFields read Get_Fields;
    property Members: PivotMembers read Get_Members;
    property Orientation: PivotFieldSetOrientationEnum read Get_Orientation;
    property type_: PivotFieldSetTypeEnum read Get_type_;
    property BoundField: PivotField read Get_BoundField;
    property UniqueName: WideString read Get_UniqueName;
    property Width: Integer read Get_Width;
    property DefaultMember: PivotMember read Get_DefaultMember;
    property Member: PivotMember read Get_Member;
    property AllMember: PivotMember read Get_AllMember;
    property CompareOrderedMembersBy: PivotMembersCompareByEnum read Get_CompareOrderedMembersBy;
    property View: PivotView read Get_View;
    property CreateFilterUpdate: PivotFilterUpdate read Get_CreateFilterUpdate;
    property AllowMultiFilter: WordBool read Get_AllowMultiFilter;
    property FilterCaption: WideString read Get_FilterCaption;
    property AllIncludeExclude: PivotFieldSetAllIncludeExcludeEnum read Get_AllIncludeExclude;
    property CompareMemberCaptionsBy: PivotMembersCompareByEnum read Get_CompareMemberCaptionsBy;
    property DisplayInFieldList: WordBool read Get_DisplayInFieldList;
    property AlwaysIncludeInCube: WordBool read Get_AlwaysIncludeInCube;
    property FindMember[NameOrPath: OleVariant; Format: PivotMemberFindFormatEnum]: PivotMember read Get_FindMember;
  end;

// *********************************************************************//
// DispIntf:  PivotFieldSetDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AAE-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotFieldSetDisp = dispinterface
    ['{F5B39AAE-1480-11D3-8549-00C04FAC67D7}']
    property Name: WideString dispid 6023;
    property Caption: WideString readonly dispid 1610743810;
    property Fields: PivotFields readonly dispid 1610743812;
    property Members: PivotMembers readonly dispid 1610743813;
    property Orientation: PivotFieldSetOrientationEnum readonly dispid 1610743814;
    property type_: PivotFieldSetTypeEnum readonly dispid 1610743815;
    function AddCalculatedField(const Name: WideString; const Caption: WideString; 
                                const DataField: WideString; const Expression: WideString): PivotField; dispid 1610743816;
    property BoundField: PivotField readonly dispid 1610743817;
    property UniqueName: WideString readonly dispid 6022;
    property Width: Integer readonly dispid 1610743819;
    property DefaultMember: PivotMember readonly dispid 1610743821;
    property Member: PivotMember readonly dispid 1610743822;
    property AllMember: PivotMember readonly dispid 1610743823;
    property CompareOrderedMembersBy: PivotMembersCompareByEnum readonly dispid 1610743824;
    property View: PivotView readonly dispid 1610743826;
    property CreateFilterUpdate: PivotFilterUpdate readonly dispid 1610743827;
    property AllowMultiFilter: WordBool readonly dispid 1610743828;
    property FilterCaption: WideString readonly dispid 1610743830;
    property AllIncludeExclude: PivotFieldSetAllIncludeExcludeEnum readonly dispid 1610743831;
    function AddCustomGroupField(const Name: WideString; const Caption: WideString; 
                                 Before: OleVariant): PivotField; dispid 1610743833;
    procedure DeleteField(Field: OleVariant); dispid 1610743834;
    property CompareMemberCaptionsBy: PivotMembersCompareByEnum readonly dispid 1610743835;
    property DisplayInFieldList: WordBool readonly dispid 1610743837;
    property AlwaysIncludeInCube: WordBool readonly dispid 1610743839;
    property FindMember[NameOrPath: OleVariant; Format: PivotMemberFindFormatEnum]: PivotMember readonly dispid 1610743841;
  end;

// *********************************************************************//
// Interface: PivotFields
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B2A-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotFields = interface(IDispatch)
    ['{F5B39B2A-1480-11D3-8549-00C04FAC67D7}']
    function Get_Item(Index: OleVariant): PivotField; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: OleVariant]: PivotField read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PivotFieldsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B2A-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotFieldsDisp = dispinterface
    ['{F5B39B2A-1480-11D3-8549-00C04FAC67D7}']
    property Item[Index: OleVariant]: PivotField readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PivotField
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B2C-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotField = interface(IDispatch)
    ['{F5B39B2C-1480-11D3-8549-00C04FAC67D7}']
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Caption: WideString); safecall;
    function Get_BaseName: WideString; safecall;
    function Get_DataType: DataTypeEnum; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_DetailWidth: Integer; safecall;
    procedure Set_DetailWidth(Width: Integer); safecall;
    function Get_GroupedWidth: Integer; safecall;
    procedure Set_GroupedWidth(Width: Integer); safecall;
    function Get_Subtotals(Subtotals: Integer): WordBool; safecall;
    procedure Set_Subtotals(Subtotals: Integer; Display: WordBool); safecall;
    function Get_DetailFont: PivotFont; safecall;
    function Get_DetailForeColor: OleVariant; safecall;
    procedure Set_DetailForeColor(Color: OleVariant); safecall;
    function Get_DetailBackColor: OleVariant; safecall;
    procedure Set_DetailBackColor(Color: OleVariant); safecall;
    function Get_DetailHAlignment: PivotHAlignmentEnum; safecall;
    procedure Set_DetailHAlignment(HAlignment: PivotHAlignmentEnum); safecall;
    function Get_SubtotalFont: PivotFont; safecall;
    function Get_SubtotalForeColor: OleVariant; safecall;
    procedure Set_SubtotalForeColor(Color: OleVariant); safecall;
    function Get_SubtotalBackColor: OleVariant; safecall;
    procedure Set_SubtotalBackColor(Color: OleVariant); safecall;
    function Get_GroupOn: PivotFieldGroupOnEnum; safecall;
    procedure Set_GroupOn(GroupOn: PivotFieldGroupOnEnum); safecall;
    function Get_GroupInterval: Double; safecall;
    procedure Set_GroupInterval(GroupInterval: Double); safecall;
    function Get_Expression: WideString; safecall;
    procedure Set_Expression(const Expression: WideString); safecall;
    function Get_NumberFormat: WideString; safecall;
    procedure Set_NumberFormat(const NumberFormat: WideString); safecall;
    function Get_DataField: WideString; safecall;
    function Get_IsIncluded: WordBool; safecall;
    procedure Set_IsIncluded(IsIncluded: WordBool); safecall;
    function Get_SortDirection: PivotFieldSortDirectionEnum; safecall;
    procedure Set_SortDirection(SortDirection: PivotFieldSortDirectionEnum); safecall;
    procedure Set_OrderedMembers(OrderedMembers: OleVariant); safecall;
    function Get_OrderedMembers: OleVariant; safecall;
    procedure Set_MemberCaptions(MemberCaptions: OleVariant); safecall;
    function Get_MemberCaptions: OleVariant; safecall;
    function Get_type_: PivotFieldTypeEnum; safecall;
    function Get_FilterFunction: PivotFieldFilterFunctionEnum; safecall;
    procedure Set_FilterFunction(FilterFunction: PivotFieldFilterFunctionEnum); safecall;
    function Get_DetailAutoFit: WordBool; safecall;
    procedure Set_DetailAutoFit(AutoFit: WordBool); safecall;
    function Get_GroupedAutoFit: WordBool; safecall;
    procedure Set_GroupedAutoFit(AutoFit: WordBool); safecall;
    function Get_FieldSet: PivotFieldSet; safecall;
    function Get_Expanded: WordBool; safecall;
    procedure Set_Expanded(Expanded: WordBool); safecall;
    function Get_SortOn: PivotTotal; safecall;
    procedure _Set_SortOn(const Total: PivotTotal); safecall;
    function Get_SortOnScope: OleVariant; safecall;
    procedure Set_SortOnScope(Scope: OleVariant); safecall;
    function Get_IsHyperlink: WordBool; safecall;
    procedure Set_IsHyperlink(IsHyperlink: WordBool); safecall;
    function Get_UniqueName: WideString; safecall;
    function Get_GroupStart: OleVariant; safecall;
    procedure Set_GroupStart(GroupStart: OleVariant); safecall;
    function Get_GroupEnd: OleVariant; safecall;
    procedure Set_GroupEnd(GroupEnd: OleVariant); safecall;
    function Get_IncludedMembers: OleVariant; safecall;
    procedure Set_IncludedMembers(Members: OleVariant); safecall;
    function Get_ExcludedMembers: OleVariant; safecall;
    procedure Set_ExcludedMembers(Members: OleVariant); safecall;
    function Get_MemberProperties: PivotMemberProperties; safecall;
    function Get_MemberPropertiesOrder: OleVariant; safecall;
    procedure Set_MemberPropertiesOrder(MemberPropertiesOrder: OleVariant); safecall;
    function Get_PropertyCaptionWidth: Integer; safecall;
    procedure Set_PropertyCaptionWidth(Width: Integer); safecall;
    function Get_GroupedHeight: Integer; safecall;
    procedure Set_GroupedHeight(Height: Integer); safecall;
    function Get_PropertyValueWidth: Integer; safecall;
    procedure Set_PropertyValueWidth(Width: Integer); safecall;
    function Get_PropertyHeight: Integer; safecall;
    procedure Set_PropertyHeight(Height: Integer); safecall;
    function Get_FilterContext: PivotField; safecall;
    procedure _Set_FilterContext(const Field: PivotField); safecall;
    function Get_FilterOn: PivotTotal; safecall;
    procedure _Set_FilterOn(const Total: PivotTotal); safecall;
    function Get_FilterOnScope: OleVariant; safecall;
    procedure Set_FilterOnScope(Scope: OleVariant); safecall;
    function Get_FilterFunctionValue: OleVariant; safecall;
    procedure Set_FilterFunctionValue(Value: OleVariant); safecall;
    function Get_GroupedFont: PivotFont; safecall;
    function Get_GroupedForeColor: OleVariant; safecall;
    procedure Set_GroupedForeColor(Color: OleVariant); safecall;
    function Get_GroupedBackColor: OleVariant; safecall;
    procedure Set_GroupedBackColor(Color: OleVariant); safecall;
    function Get_GroupedHAlignment: PivotHAlignmentEnum; safecall;
    procedure Set_GroupedHAlignment(HAlignment: PivotHAlignmentEnum); safecall;
    function AddCustomGroupMember(Parent: OleVariant; varChildMembers: OleVariant; 
                                  const bstrCaption: WideString): PivotMember; safecall;
    procedure DeleteCustomGroupMember(CustomGroupMember: OleVariant); safecall;
    function Get_CustomGroupMembers: PivotMembers; safecall;
    function Get_DefaultValue: OleVariant; safecall;
    procedure Set_DefaultValue(DefaultValue: OleVariant); safecall;
    function Get_SubtotalLabelFont: PivotFont; safecall;
    function Get_SubtotalLabelForeColor: OleVariant; safecall;
    procedure Set_SubtotalLabelForeColor(Color: OleVariant); safecall;
    function Get_SubtotalLabelBackColor: OleVariant; safecall;
    procedure Set_SubtotalLabelBackColor(Color: OleVariant); safecall;
    function Get_SubtotalLabelHAlignment: PivotHAlignmentEnum; safecall;
    procedure Set_SubtotalLabelHAlignment(HAlignment: PivotHAlignmentEnum); safecall;
    property Caption: WideString read Get_Caption;
    property BaseName: WideString read Get_BaseName;
    property DataType: DataTypeEnum read Get_DataType;
    property Name: WideString read Get_Name write Set_Name;
    property DetailWidth: Integer read Get_DetailWidth;
    property GroupedWidth: Integer read Get_GroupedWidth;
    property Subtotals[Subtotals: Integer]: WordBool read Get_Subtotals;
    property DetailFont: PivotFont read Get_DetailFont;
    property DetailForeColor: OleVariant read Get_DetailForeColor;
    property DetailBackColor: OleVariant read Get_DetailBackColor;
    property DetailHAlignment: PivotHAlignmentEnum read Get_DetailHAlignment;
    property SubtotalFont: PivotFont read Get_SubtotalFont;
    property SubtotalForeColor: OleVariant read Get_SubtotalForeColor;
    property SubtotalBackColor: OleVariant read Get_SubtotalBackColor;
    property GroupOn: PivotFieldGroupOnEnum read Get_GroupOn;
    property GroupInterval: Double read Get_GroupInterval;
    property Expression: WideString read Get_Expression;
    property NumberFormat: WideString read Get_NumberFormat;
    property DataField: WideString read Get_DataField;
    property IsIncluded: WordBool read Get_IsIncluded;
    property SortDirection: PivotFieldSortDirectionEnum read Get_SortDirection;
    property OrderedMembers: OleVariant write Set_OrderedMembers;
    property MemberCaptions: OleVariant write Set_MemberCaptions;
    property type_: PivotFieldTypeEnum read Get_type_;
    property FilterFunction: PivotFieldFilterFunctionEnum read Get_FilterFunction;
    property DetailAutoFit: WordBool read Get_DetailAutoFit;
    property GroupedAutoFit: WordBool read Get_GroupedAutoFit;
    property FieldSet: PivotFieldSet read Get_FieldSet;
    property Expanded: WordBool read Get_Expanded;
    property SortOn: PivotTotal read Get_SortOn;
    property SortOnScope: OleVariant read Get_SortOnScope;
    property IsHyperlink: WordBool read Get_IsHyperlink;
    property UniqueName: WideString read Get_UniqueName;
    property GroupStart: OleVariant read Get_GroupStart;
    property GroupEnd: OleVariant read Get_GroupEnd;
    property IncludedMembers: OleVariant read Get_IncludedMembers;
    property ExcludedMembers: OleVariant read Get_ExcludedMembers;
    property MemberProperties: PivotMemberProperties read Get_MemberProperties;
    property MemberPropertiesOrder: OleVariant read Get_MemberPropertiesOrder;
    property PropertyCaptionWidth: Integer read Get_PropertyCaptionWidth;
    property GroupedHeight: Integer read Get_GroupedHeight;
    property PropertyValueWidth: Integer read Get_PropertyValueWidth;
    property PropertyHeight: Integer read Get_PropertyHeight;
    property FilterContext: PivotField read Get_FilterContext;
    property FilterOn: PivotTotal read Get_FilterOn;
    property FilterOnScope: OleVariant read Get_FilterOnScope;
    property FilterFunctionValue: OleVariant read Get_FilterFunctionValue;
    property GroupedFont: PivotFont read Get_GroupedFont;
    property GroupedForeColor: OleVariant read Get_GroupedForeColor;
    property GroupedBackColor: OleVariant read Get_GroupedBackColor;
    property GroupedHAlignment: PivotHAlignmentEnum read Get_GroupedHAlignment;
    property CustomGroupMembers: PivotMembers read Get_CustomGroupMembers;
    property DefaultValue: OleVariant read Get_DefaultValue;
    property SubtotalLabelFont: PivotFont read Get_SubtotalLabelFont;
    property SubtotalLabelForeColor: OleVariant read Get_SubtotalLabelForeColor;
    property SubtotalLabelBackColor: OleVariant read Get_SubtotalLabelBackColor;
    property SubtotalLabelHAlignment: PivotHAlignmentEnum read Get_SubtotalLabelHAlignment;
  end;

// *********************************************************************//
// DispIntf:  PivotFieldDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B2C-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotFieldDisp = dispinterface
    ['{F5B39B2C-1480-11D3-8549-00C04FAC67D7}']
    property Caption: WideString readonly dispid 1610743808;
    property BaseName: WideString readonly dispid 1610743810;
    property DataType: DataTypeEnum readonly dispid 1610743811;
    property Name: WideString dispid 6023;
    property DetailWidth: Integer readonly dispid 1610743814;
    property GroupedWidth: Integer readonly dispid 1610743816;
    property Subtotals[Subtotals: Integer]: WordBool readonly dispid 1610743818;
    property DetailFont: PivotFont readonly dispid 1610743820;
    property DetailForeColor: OleVariant readonly dispid 1610743821;
    property DetailBackColor: OleVariant readonly dispid 1610743823;
    property DetailHAlignment: PivotHAlignmentEnum readonly dispid 1610743825;
    property SubtotalFont: PivotFont readonly dispid 1610743827;
    property SubtotalForeColor: OleVariant readonly dispid 1610743828;
    property SubtotalBackColor: OleVariant readonly dispid 1610743830;
    property GroupOn: PivotFieldGroupOnEnum readonly dispid 1610743832;
    property GroupInterval: Double readonly dispid 1610743834;
    property Expression: WideString readonly dispid 1610743836;
    property NumberFormat: WideString readonly dispid 1610743838;
    property DataField: WideString readonly dispid 1610743840;
    property IsIncluded: WordBool readonly dispid 1610743841;
    property SortDirection: PivotFieldSortDirectionEnum readonly dispid 1610743843;
    property OrderedMembers: OleVariant writeonly dispid 1610743845;
    property MemberCaptions: OleVariant writeonly dispid 1610743847;
    property type_: PivotFieldTypeEnum readonly dispid 1610743849;
    property FilterFunction: PivotFieldFilterFunctionEnum readonly dispid 1610743850;
    property DetailAutoFit: WordBool readonly dispid 1610743852;
    property GroupedAutoFit: WordBool readonly dispid 1610743854;
    property FieldSet: PivotFieldSet readonly dispid 1610743856;
    property Expanded: WordBool readonly dispid 1610743857;
    property SortOn: PivotTotal readonly dispid 1610743859;
    property SortOnScope: OleVariant readonly dispid 1610743861;
    property IsHyperlink: WordBool readonly dispid 1610743863;
    property UniqueName: WideString readonly dispid 6022;
    property GroupStart: OleVariant readonly dispid 1610743866;
    property GroupEnd: OleVariant readonly dispid 1610743868;
    property IncludedMembers: OleVariant readonly dispid 1610743870;
    property ExcludedMembers: OleVariant readonly dispid 1610743872;
    property MemberProperties: PivotMemberProperties readonly dispid 1610743874;
    property MemberPropertiesOrder: OleVariant readonly dispid 1610743875;
    property PropertyCaptionWidth: Integer readonly dispid 1610743877;
    property GroupedHeight: Integer readonly dispid 1610743879;
    property PropertyValueWidth: Integer readonly dispid 1610743881;
    property PropertyHeight: Integer readonly dispid 1610743883;
    property FilterContext: PivotField readonly dispid 1610743885;
    property FilterOn: PivotTotal readonly dispid 1610743887;
    property FilterOnScope: OleVariant readonly dispid 1610743889;
    property FilterFunctionValue: OleVariant readonly dispid 1610743891;
    property GroupedFont: PivotFont readonly dispid 1610743893;
    property GroupedForeColor: OleVariant readonly dispid 1610743894;
    property GroupedBackColor: OleVariant readonly dispid 1610743896;
    property GroupedHAlignment: PivotHAlignmentEnum readonly dispid 1610743898;
    function AddCustomGroupMember(Parent: OleVariant; varChildMembers: OleVariant; 
                                  const bstrCaption: WideString): PivotMember; dispid 1610743900;
    procedure DeleteCustomGroupMember(CustomGroupMember: OleVariant); dispid 1610743901;
    property CustomGroupMembers: PivotMembers readonly dispid 1610743902;
    property DefaultValue: OleVariant readonly dispid 1610743903;
    property SubtotalLabelFont: PivotFont readonly dispid 1610743905;
    property SubtotalLabelForeColor: OleVariant readonly dispid 1610743906;
    property SubtotalLabelBackColor: OleVariant readonly dispid 1610743908;
    property SubtotalLabelHAlignment: PivotHAlignmentEnum readonly dispid 1610743910;
  end;

// *********************************************************************//
// Interface: PivotFont
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B01-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotFont = interface(IDispatch)
    ['{F5B39B01-1480-11D3-8549-00C04FAC67D7}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Size: Integer; safecall;
    procedure Set_Size(Size: Integer); safecall;
    function Get_Bold: WordBool; safecall;
    procedure Set_Bold(Bold: WordBool); safecall;
    function Get_Italic: WordBool; safecall;
    procedure Set_Italic(Italic: WordBool); safecall;
    function Get_Underline: UnderlineStyleEnum; safecall;
    procedure Set_Underline(Underline: UnderlineStyleEnum); safecall;
    function Get_Color: OleVariant; safecall;
    procedure Set_Color(Color: OleVariant); safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Size: Integer read Get_Size write Set_Size;
    property Bold: WordBool read Get_Bold write Set_Bold;
    property Italic: WordBool read Get_Italic write Set_Italic;
    property Underline: UnderlineStyleEnum read Get_Underline write Set_Underline;
    property Color: OleVariant read Get_Color;
  end;

// *********************************************************************//
// DispIntf:  PivotFontDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B01-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotFontDisp = dispinterface
    ['{F5B39B01-1480-11D3-8549-00C04FAC67D7}']
    property Name: WideString dispid 0;
    property Size: Integer dispid 2;
    property Bold: WordBool dispid 3;
    property Italic: WordBool dispid 4;
    property Underline: UnderlineStyleEnum dispid 5;
    property Color: OleVariant readonly dispid 1610743818;
  end;

// *********************************************************************//
// Interface: PivotTotal
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B2F-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotTotal = interface(IDispatch)
    ['{F5B39B2F-1480-11D3-8549-00C04FAC67D7}']
    function Get_Field: PivotField; safecall;
    function Get_Function_: PivotTotalFunctionEnum; safecall;
    procedure Set_Function_(Function_: PivotTotalFunctionEnum); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Caption: WideString); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(Width: Integer); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_NumberFormat: WideString; safecall;
    procedure Set_NumberFormat(const NumberFormat: WideString); safecall;
    function Get_HAlignment: PivotHAlignmentEnum; safecall;
    procedure Set_HAlignment(HAlignment: PivotHAlignmentEnum); safecall;
    function Get_CaptionHAlignment: PivotHAlignmentEnum; safecall;
    procedure Set_CaptionHAlignment(CaptionHAlignment: PivotHAlignmentEnum); safecall;
    function Get_type_: PivotTotalTypeEnum; safecall;
    function Get_AutoFit: WordBool; safecall;
    procedure Set_AutoFit(AutoFit: WordBool); safecall;
    function Get_UniqueName: WideString; safecall;
    function Get_View: PivotView; safecall;
    function Get_Expression: WideString; safecall;
    procedure Set_Expression(const Expression: WideString); safecall;
    function Get_SolveOrder: Integer; safecall;
    procedure Set_SolveOrder(SolveOrder: Integer); safecall;
    function Get_ShowAs: PivotShowAsEnum; safecall;
    procedure Set_ShowAs(ShowAs: PivotShowAsEnum); safecall;
    function Get_DisplayInFieldList: WordBool; safecall;
    procedure Set_DisplayInFieldList(DisplayInFieldList: WordBool); safecall;
    property Field: PivotField read Get_Field;
    property Function_: PivotTotalFunctionEnum read Get_Function_;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Width: Integer read Get_Width;
    property Name: WideString read Get_Name write Set_Name;
    property NumberFormat: WideString read Get_NumberFormat;
    property HAlignment: PivotHAlignmentEnum read Get_HAlignment;
    property CaptionHAlignment: PivotHAlignmentEnum read Get_CaptionHAlignment;
    property type_: PivotTotalTypeEnum read Get_type_;
    property AutoFit: WordBool read Get_AutoFit;
    property UniqueName: WideString read Get_UniqueName;
    property View: PivotView read Get_View;
    property Expression: WideString read Get_Expression;
    property SolveOrder: Integer read Get_SolveOrder;
    property ShowAs: PivotShowAsEnum read Get_ShowAs;
    property DisplayInFieldList: WordBool read Get_DisplayInFieldList;
  end;

// *********************************************************************//
// DispIntf:  PivotTotalDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B2F-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotTotalDisp = dispinterface
    ['{F5B39B2F-1480-11D3-8549-00C04FAC67D7}']
    property Field: PivotField readonly dispid 1610743808;
    property Function_: PivotTotalFunctionEnum readonly dispid 1610743809;
    property Caption: WideString dispid 6028;
    property Width: Integer readonly dispid 1610743813;
    property Name: WideString dispid 6023;
    property NumberFormat: WideString readonly dispid 1610743817;
    property HAlignment: PivotHAlignmentEnum readonly dispid 1610743819;
    property CaptionHAlignment: PivotHAlignmentEnum readonly dispid 1610743821;
    property type_: PivotTotalTypeEnum readonly dispid 1610743823;
    property AutoFit: WordBool readonly dispid 1610743824;
    property UniqueName: WideString readonly dispid 6022;
    property View: PivotView readonly dispid 1610743827;
    property Expression: WideString readonly dispid 1610743828;
    property SolveOrder: Integer readonly dispid 1610743830;
    property ShowAs: PivotShowAsEnum readonly dispid 1610743832;
    property DisplayInFieldList: WordBool readonly dispid 1610743834;
  end;

// *********************************************************************//
// Interface: PivotMemberProperties
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0F57F292-726F-4817-A78B-52D452498519}
// *********************************************************************//
  PivotMemberProperties = interface(IDispatch)
    ['{0F57F292-726F-4817-A78B-52D452498519}']
    function Get_Item(varIndex: OleVariant): PivotMemberProperty; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[varIndex: OleVariant]: PivotMemberProperty read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PivotMemberPropertiesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0F57F292-726F-4817-A78B-52D452498519}
// *********************************************************************//
  PivotMemberPropertiesDisp = dispinterface
    ['{0F57F292-726F-4817-A78B-52D452498519}']
    property Item[varIndex: OleVariant]: PivotMemberProperty readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PivotMemberProperty
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6ADF4A9E-5E7D-47EE-A3B8-CE06023D6A14}
// *********************************************************************//
  PivotMemberProperty = interface(IDispatch)
    ['{6ADF4A9E-5E7D-47EE-A3B8-CE06023D6A14}']
    function Get_Name: WideString; safecall;
    procedure Set_Caption(const Caption: WideString); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_IsIncluded(IsIncluded: WordBool); safecall;
    function Get_IsIncluded: WordBool; safecall;
    procedure Set_DisplayIn(DisplayIn: PivotMemberPropertyDisplayEnum); safecall;
    function Get_DisplayIn: PivotMemberPropertyDisplayEnum; safecall;
    function Get_NumberFormat: WideString; safecall;
    procedure Set_NumberFormat(const NumberFormat: WideString); safecall;
    property Name: WideString read Get_Name;
    property Caption: WideString write Set_Caption;
    property IsIncluded: WordBool write Set_IsIncluded;
    property DisplayIn: PivotMemberPropertyDisplayEnum write Set_DisplayIn;
    property NumberFormat: WideString read Get_NumberFormat;
  end;

// *********************************************************************//
// DispIntf:  PivotMemberPropertyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6ADF4A9E-5E7D-47EE-A3B8-CE06023D6A14}
// *********************************************************************//
  PivotMemberPropertyDisp = dispinterface
    ['{6ADF4A9E-5E7D-47EE-A3B8-CE06023D6A14}']
    property Name: WideString readonly dispid 6023;
    property Caption: WideString writeonly dispid 1610743809;
    property IsIncluded: WordBool writeonly dispid 1610743811;
    property DisplayIn: PivotMemberPropertyDisplayEnum writeonly dispid 1610743813;
    property NumberFormat: WideString readonly dispid 1610743815;
  end;

// *********************************************************************//
// Interface: PivotMember
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B33-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotMember = interface(IDispatch)
    ['{F5B39B33-1480-11D3-8549-00C04FAC67D7}']
    function Get_View: PivotView; safecall;
    function Get_ChildMembers: PivotMembers; safecall;
    function Get_ParentMember: PivotMember; safecall;
    function Get_FindMember(const Path: WideString; Format: PivotMemberFindFormatEnum): PivotMember; safecall;
    function Get_Name: WideString; safecall;
    function Get_Caption: WideString; safecall;
    function Get_Value: OleVariant; safecall;
    function Get_UniqueName: WideString; safecall;
    function Get_Field: PivotField; safecall;
    function Get_Path(Format: PivotMemberFindFormatEnum): WideString; safecall;
    function Get_TimeValue: OleVariant; safecall;
    function Get_IsValid: WordBool; safecall;
    function Get_CustomGroupType: PivotMemberCustomGroupTypeEnum; safecall;
    property View: PivotView read Get_View;
    property ChildMembers: PivotMembers read Get_ChildMembers;
    property ParentMember: PivotMember read Get_ParentMember;
    property FindMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotMember read Get_FindMember;
    property Name: WideString read Get_Name;
    property Caption: WideString read Get_Caption;
    property Value: OleVariant read Get_Value;
    property UniqueName: WideString read Get_UniqueName;
    property Field: PivotField read Get_Field;
    property Path[Format: PivotMemberFindFormatEnum]: WideString read Get_Path;
    property TimeValue: OleVariant read Get_TimeValue;
    property IsValid: WordBool read Get_IsValid;
    property CustomGroupType: PivotMemberCustomGroupTypeEnum read Get_CustomGroupType;
  end;

// *********************************************************************//
// DispIntf:  PivotMemberDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B33-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotMemberDisp = dispinterface
    ['{F5B39B33-1480-11D3-8549-00C04FAC67D7}']
    property View: PivotView readonly dispid 1610743808;
    property ChildMembers: PivotMembers readonly dispid 1610743809;
    property ParentMember: PivotMember readonly dispid 1610743810;
    property FindMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotMember readonly dispid 1610743811;
    property Name: WideString readonly dispid 6023;
    property Caption: WideString readonly dispid 6028;
    property Value: OleVariant readonly dispid 1610743814;
    property UniqueName: WideString readonly dispid 6022;
    property Field: PivotField readonly dispid 1610743816;
    property Path[Format: PivotMemberFindFormatEnum]: WideString readonly dispid 1610743817;
    property TimeValue: OleVariant readonly dispid 1610743818;
    property IsValid: WordBool readonly dispid 1610743819;
    property CustomGroupType: PivotMemberCustomGroupTypeEnum readonly dispid 1610743820;
  end;

// *********************************************************************//
// Interface: PivotMembers
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B32-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotMembers = interface(IDispatch)
    ['{F5B39B32-1480-11D3-8549-00C04FAC67D7}']
    function Get_Item(Index: OleVariant): PivotMember; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: OleVariant]: PivotMember read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PivotMembersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B32-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotMembersDisp = dispinterface
    ['{F5B39B32-1480-11D3-8549-00C04FAC67D7}']
    property Item[Index: OleVariant]: PivotMember readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PivotFilterUpdate
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A5E83EE4-5A92-11D3-BF58-00C04F61319A}
// *********************************************************************//
  PivotFilterUpdate = interface(IDispatch)
    ['{A5E83EE4-5A92-11D3-BF58-00C04F61319A}']
    function Get_StateOf(const Member: PivotMember): PivotFilterUpdateMemberStateEnum; safecall;
    procedure Click(const Member: PivotMember); safecall;
    procedure ClickFromTo(const Member: PivotMember; 
                          OldMemberState: PivotFilterUpdateMemberStateEnum; 
                          NewMemberState: PivotFilterUpdateMemberStateEnum); safecall;
    function Get_IsDirty: WordBool; safecall;
    procedure Apply; safecall;
    property StateOf[const Member: PivotMember]: PivotFilterUpdateMemberStateEnum read Get_StateOf;
    property IsDirty: WordBool read Get_IsDirty;
  end;

// *********************************************************************//
// DispIntf:  PivotFilterUpdateDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A5E83EE4-5A92-11D3-BF58-00C04F61319A}
// *********************************************************************//
  PivotFilterUpdateDisp = dispinterface
    ['{A5E83EE4-5A92-11D3-BF58-00C04F61319A}']
    property StateOf[const Member: PivotMember]: PivotFilterUpdateMemberStateEnum readonly dispid 1610743808;
    procedure Click(const Member: PivotMember); dispid 1610743809;
    procedure ClickFromTo(const Member: PivotMember; 
                          OldMemberState: PivotFilterUpdateMemberStateEnum; 
                          NewMemberState: PivotFilterUpdateMemberStateEnum); dispid 1610743810;
    property IsDirty: WordBool readonly dispid 1610743811;
    procedure Apply; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: PivotAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B2B-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotAxis = interface(IDispatch)
    ['{F5B39B2B-1480-11D3-8549-00C04FAC67D7}']
    function Get_View: PivotView; safecall;
    function Get_FieldSets: PivotFieldSets; safecall;
    procedure InsertFieldSet(const FieldSet: PivotFieldSet; Before: OleVariant; Remove: WordBool); safecall;
    procedure RemoveFieldSet(FieldSet: OleVariant); safecall;
    function Get_Label_: PivotLabel; safecall;
    property View: PivotView read Get_View;
    property FieldSets: PivotFieldSets read Get_FieldSets;
    property Label_: PivotLabel read Get_Label_;
  end;

// *********************************************************************//
// DispIntf:  PivotAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B2B-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotAxisDisp = dispinterface
    ['{F5B39B2B-1480-11D3-8549-00C04FAC67D7}']
    property View: PivotView readonly dispid 1610743808;
    property FieldSets: PivotFieldSets readonly dispid 1610743809;
    procedure InsertFieldSet(const FieldSet: PivotFieldSet; Before: OleVariant; Remove: WordBool); dispid 1610743810;
    procedure RemoveFieldSet(FieldSet: OleVariant); dispid 1610743811;
    property Label_: PivotLabel readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: PivotGroupAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AA7-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotGroupAxis = interface(PivotAxis)
    ['{F5B39AA7-1480-11D3-8549-00C04FAC67D7}']
    procedure GhostMethod_PivotGroupAxis_0_1; safecall;
    procedure GhostMethod_PivotGroupAxis_4_2; safecall;
    procedure GhostMethod_PivotGroupAxis_8_3; safecall;
    procedure GhostMethod_PivotGroupAxis_12_4; safecall;
    procedure GhostMethod_PivotGroupAxis_16_5; safecall;
    procedure GhostMethod_PivotGroupAxis_20_6; safecall;
    procedure GhostMethod_PivotGroupAxis_24_7; safecall;
    procedure GhostMethod_PivotGroupAxis_28_8; safecall;
    procedure GhostMethod_PivotGroupAxis_32_9; safecall;
    procedure GhostMethod_PivotGroupAxis_36_10; safecall;
    procedure GhostMethod_PivotGroupAxis_40_11; safecall;
    procedure GhostMethod_PivotGroupAxis_44_12; safecall;
    function Get_DisplayEmptyMembers: WordBool; safecall;
    procedure Set_DisplayEmptyMembers(DisplayEmptyMembers: WordBool); safecall;
    property DisplayEmptyMembers: WordBool read Get_DisplayEmptyMembers write Set_DisplayEmptyMembers;
  end;

// *********************************************************************//
// DispIntf:  PivotGroupAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AA7-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotGroupAxisDisp = dispinterface
    ['{F5B39AA7-1480-11D3-8549-00C04FAC67D7}']
    procedure GhostMethod_PivotGroupAxis_0_1; dispid 1610678272;
    procedure GhostMethod_PivotGroupAxis_4_2; dispid 1610678273;
    procedure GhostMethod_PivotGroupAxis_8_3; dispid 1610678274;
    procedure GhostMethod_PivotGroupAxis_12_4; dispid 1610678275;
    procedure GhostMethod_PivotGroupAxis_16_5; dispid 1610678276;
    procedure GhostMethod_PivotGroupAxis_20_6; dispid 1610678277;
    procedure GhostMethod_PivotGroupAxis_24_7; dispid 1610678278;
    procedure GhostMethod_PivotGroupAxis_28_8; dispid 1610678279;
    procedure GhostMethod_PivotGroupAxis_32_9; dispid 1610678280;
    procedure GhostMethod_PivotGroupAxis_36_10; dispid 1610678281;
    procedure GhostMethod_PivotGroupAxis_40_11; dispid 1610678282;
    procedure GhostMethod_PivotGroupAxis_44_12; dispid 1610678283;
    property DisplayEmptyMembers: WordBool dispid 1610809344;
    property View: PivotView readonly dispid 1610743808;
    property FieldSets: PivotFieldSets readonly dispid 1610743809;
    procedure InsertFieldSet(const FieldSet: PivotFieldSet; Before: OleVariant; Remove: WordBool); dispid 1610743810;
    procedure RemoveFieldSet(FieldSet: OleVariant); dispid 1610743811;
    property Label_: PivotLabel readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: PivotLabel
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B2D-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotLabel = interface(IDispatch)
    ['{F5B39B2D-1480-11D3-8549-00C04FAC67D7}']
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Caption: WideString); safecall;
    function Get_HAlignment: PivotHAlignmentEnum; safecall;
    procedure Set_HAlignment(HAlignment: PivotHAlignmentEnum); safecall;
    function Get_ForeColor: OleVariant; safecall;
    procedure Set_ForeColor(Color: OleVariant); safecall;
    function Get_BackColor: OleVariant; safecall;
    procedure Set_BackColor(Color: OleVariant); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Visible: WordBool); safecall;
    function Get_Font: PivotFont; safecall;
    property Caption: WideString read Get_Caption;
    property HAlignment: PivotHAlignmentEnum read Get_HAlignment;
    property ForeColor: OleVariant read Get_ForeColor;
    property BackColor: OleVariant read Get_BackColor;
    property Visible: WordBool read Get_Visible;
    property Font: PivotFont read Get_Font;
  end;

// *********************************************************************//
// DispIntf:  PivotLabelDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B2D-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotLabelDisp = dispinterface
    ['{F5B39B2D-1480-11D3-8549-00C04FAC67D7}']
    property Caption: WideString readonly dispid 1610743808;
    property HAlignment: PivotHAlignmentEnum readonly dispid 1610743810;
    property ForeColor: OleVariant readonly dispid 1610743812;
    property BackColor: OleVariant readonly dispid 1610743814;
    property Visible: WordBool readonly dispid 1610743816;
    property Font: PivotFont readonly dispid 1610743818;
  end;

// *********************************************************************//
// Interface: PivotDataAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B43-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotDataAxis = interface(PivotAxis)
    ['{F5B39B43-1480-11D3-8549-00C04FAC67D7}']
    function Get_Totals: PivotTotals; safecall;
    procedure InsertTotal(const Total: PivotTotal; Before: OleVariant); safecall;
    procedure RemoveTotal(Total: OleVariant); safecall;
    property Totals: PivotTotals read Get_Totals;
  end;

// *********************************************************************//
// DispIntf:  PivotDataAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B43-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotDataAxisDisp = dispinterface
    ['{F5B39B43-1480-11D3-8549-00C04FAC67D7}']
    property Totals: PivotTotals readonly dispid 1610809344;
    procedure InsertTotal(const Total: PivotTotal; Before: OleVariant); dispid 1610809345;
    procedure RemoveTotal(Total: OleVariant); dispid 1610809346;
    property View: PivotView readonly dispid 1610743808;
    property FieldSets: PivotFieldSets readonly dispid 1610743809;
    procedure InsertFieldSet(const FieldSet: PivotFieldSet; Before: OleVariant; Remove: WordBool); dispid 1610743810;
    procedure RemoveFieldSet(FieldSet: OleVariant); dispid 1610743811;
    property Label_: PivotLabel readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: PivotTotals
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B2E-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotTotals = interface(IDispatch)
    ['{F5B39B2E-1480-11D3-8549-00C04FAC67D7}']
    function Get_Item(Index: OleVariant): PivotTotal; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: OleVariant]: PivotTotal read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PivotTotalsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B2E-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotTotalsDisp = dispinterface
    ['{F5B39B2E-1480-11D3-8549-00C04FAC67D7}']
    property Item[Index: OleVariant]: PivotTotal readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PivotFilterAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AFD-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotFilterAxis = interface(PivotAxis)
    ['{F5B39AFD-1480-11D3-8549-00C04FAC67D7}']
  end;

// *********************************************************************//
// DispIntf:  PivotFilterAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AFD-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotFilterAxisDisp = dispinterface
    ['{F5B39AFD-1480-11D3-8549-00C04FAC67D7}']
    property View: PivotView readonly dispid 1610743808;
    property FieldSets: PivotFieldSets readonly dispid 1610743809;
    procedure InsertFieldSet(const FieldSet: PivotFieldSet; Before: OleVariant; Remove: WordBool); dispid 1610743810;
    procedure RemoveFieldSet(FieldSet: OleVariant); dispid 1610743811;
    property Label_: PivotLabel readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: IPivotControl
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B08-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  IPivotControl = interface(IDispatch)
    ['{F5B39B08-1480-11D3-8549-00C04FAC67D7}']
    function Get_ActiveView: PivotView; safecall;
    function Get_Selection: IDispatch; safecall;
    procedure _Set_Selection(const Selection: IDispatch); safecall;
    function Get_DataMember: DataMember; safecall;
    procedure Set_DataMember(const DataMember: DataMember); safecall;
    function Get_ActiveData: PivotData; safecall;
    function Get_Version: WideString; safecall;
    function Get_HasDetails: WordBool; safecall;
    function Get_DisplayToolbar: WordBool; safecall;
    procedure Set_DisplayToolbar(DisplayToolbar: WordBool); safecall;
    function Get_AllowGrouping: WordBool; safecall;
    procedure Set_AllowGrouping(AllowGrouping: WordBool); safecall;
    function Get_AllowFiltering: WordBool; safecall;
    procedure Set_AllowFiltering(AllowFiltering: WordBool); safecall;
    function Get_AllowDetails: WordBool; safecall;
    procedure Set_AllowDetails(EnableDetails: WordBool); safecall;
    function Get_AllowPropertyToolbox: WordBool; safecall;
    procedure Set_AllowPropertyToolbox(AllowPropertyToolbox: WordBool); safecall;
    function Get_AllowCustomOrdering: WordBool; safecall;
    procedure Set_AllowCustomOrdering(AllowCustomOrdering: WordBool); safecall;
    function Get_AutoFit: WordBool; safecall;
    procedure Set_AutoFit(AutoFit: WordBool); safecall;
    procedure Export(const Filename: WideString; Action: PivotExportActionEnum); safecall;
    procedure Set_DataSource(const DataSource: DataSource); safecall;
    procedure _Set_DataSource(const DataSource: DataSource); safecall;
    function Get_DataSource: DataSource; safecall;
    function Get_BackColor: OleVariant; safecall;
    procedure Set_BackColor(BackColor: OleVariant); safecall;
    function Get_DisplayExpandIndicator: WordBool; safecall;
    procedure Set_DisplayExpandIndicator(DisplayExpandIndicator: WordBool); safecall;
    function Get_RightToLeft: WordBool; safecall;
    procedure Set_RightToLeft(RightToLeft: WordBool); safecall;
    function Get_MaxWidth: Integer; safecall;
    procedure Set_MaxWidth(MaxWidth: Integer); safecall;
    function Get_MaxHeight: Integer; safecall;
    procedure Set_MaxHeight(MaxHeight: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(Width: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(Height: Integer); safecall;
    function Get_XMLData: WideString; safecall;
    procedure Set_XMLData(const XMLData: WideString); safecall;
    procedure Refresh; safecall;
    function Get_DisplayPropertyToolbox: WordBool; safecall;
    procedure Set_DisplayPropertyToolbox(DisplayPropertyToolbox: WordBool); safecall;
    function Get_DisplayFieldList: WordBool; safecall;
    procedure Set_DisplayFieldList(DisplayFieldList: WordBool); safecall;
    function Get_Constants: IDispatch; safecall;
    function Get_MajorVersion: Integer; safecall;
    function Get_MinorVersion: WideString; safecall;
    function Get_BuildNumber: WideString; safecall;
    procedure ExportPicture(const Filename: WideString; const FilterName: WideString; 
                            Width: Integer; Height: Integer); safecall;
    function Get_ConnectionString: WideString; safecall;
    procedure Set_ConnectionString(const ConnectionString: WideString); safecall;
    function Get_CommandText: WideString; safecall;
    procedure Set_CommandText(const CommandText: WideString); safecall;
    function Get_ProviderType: ProviderType; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_MemberExpand: PivotTableMemberExpandEnum; safecall;
    procedure Set_MemberExpand(MemberExpand: PivotTableMemberExpandEnum); safecall;
    procedure LocateDataSource; safecall;
    procedure _Set_Connection(const Connection: Connection); safecall;
    function Get_Connection: Connection; safecall;
    procedure Copy(const Selection: IDispatch); safecall;
    function Get_RevisionNumber: WideString; safecall;
    function Get_DisplayAlerts: WordBool; safecall;
    procedure Set_DisplayAlerts(DisplayAlerts: WordBool); safecall;
    function Get_DataMemberStrings: OleVariant; safecall;
    function Get_ClassFactory: PivotClassFactory; safecall;
    procedure _Set_ClassFactory(const ClassFactory: PivotClassFactory); safecall;
    function Get_Left: Integer; safecall;
    function Get_Top: Integer; safecall;
    function Get_Hwnd: Integer; safecall;
    procedure DoDragDrop(const Source: DropSource; const DragItem: IDispatch; 
                         const Target: DropTarget; dwLegalEffect: Integer); safecall;
    procedure Select(const Selection: IDispatch; const ActiveObject: IDispatch; 
                     ScrollType: PivotScrollTypeEnum; Update: WordBool; Notify: WordBool); safecall;
    function Get_ActiveObject: IDispatch; safecall;
    procedure _Set_ActiveObject(const ActiveObject: IDispatch); safecall;
    function Get_Commands: OCCommands; safecall;
    procedure ShowHelp(Topic: Integer); safecall;
    procedure ShowAbout; safecall;
    function Get_UserMode: WordBool; safecall;
    procedure ShowContextMenu(x: Integer; y: Integer; Menu: OleVariant); safecall;
    function Get_DataMemberCaption: WideString; safecall;
    procedure Set_DataMemberCaption(const Caption: WideString); safecall;
    function Get_DataSourceEx: IDispatch; safecall;
    procedure _Set_DataSourceEx(const DataSourceEx: IDispatch); safecall;
    procedure StartEdit(InitialValue: OleVariant; ArrowMode: PivotArrowModeEnum; 
                        CaretPosition: PivotCaretPositionEnum); safecall;
    procedure EndEdit(Accept: WordBool); safecall;
    procedure CancelDragDrop; safecall;
    function Get_IsDirty: WordBool; safecall;
    procedure Set_IsDirty(IsDirty: WordBool); safecall;
    function Get_CubeProvider: WideString; safecall;
    procedure Set_CubeProvider(const CubeProvider: WideString); safecall;
    function Get_SelectionType: WideString; safecall;
    function Get_DisplayScreenTips: WordBool; safecall;
    procedure Set_DisplayScreenTips(DisplayScreenTips: WordBool); safecall;
    function Get_ViewOnlyMode: WordBool; safecall;
    function Get_DisplayDesignTimeUI: WordBool; safecall;
    procedure Set_DisplayDesignTimeUI(DisplayDesignTimeUI: WordBool); safecall;
    function Get_Toolbar: IToolbar; safecall;
    function Get_EditMode: PivotEditModeEnum; safecall;
    function Get_HTMLData: WideString; safecall;
    function Get_DataSourceName: WideString; safecall;
    procedure Set_DataSourceName(const DataSourceName: WideString); safecall;
    function Get_DisplayBranding: WordBool; safecall;
    procedure Set_DisplayBranding(DisplayBranding: WordBool); safecall;
    function Get_DisplayOfficeLogo: WordBool; safecall;
    procedure Set_DisplayOfficeLogo(DisplayOfficeLogo: WordBool); safecall;
    procedure OkToBindToControlByName; safecall;
    property ActiveView: PivotView read Get_ActiveView;
    property Selection: IDispatch read Get_Selection write _Set_Selection;
    property DataMember: DataMember read Get_DataMember write Set_DataMember;
    property ActiveData: PivotData read Get_ActiveData;
    property Version: WideString read Get_Version;
    property HasDetails: WordBool read Get_HasDetails;
    property DisplayToolbar: WordBool read Get_DisplayToolbar write Set_DisplayToolbar;
    property AllowGrouping: WordBool read Get_AllowGrouping write Set_AllowGrouping;
    property AllowFiltering: WordBool read Get_AllowFiltering write Set_AllowFiltering;
    property AllowDetails: WordBool read Get_AllowDetails write Set_AllowDetails;
    property AllowPropertyToolbox: WordBool read Get_AllowPropertyToolbox write Set_AllowPropertyToolbox;
    property AllowCustomOrdering: WordBool read Get_AllowCustomOrdering write Set_AllowCustomOrdering;
    property AutoFit: WordBool read Get_AutoFit write Set_AutoFit;
    property DataSource: DataSource read Get_DataSource write Set_DataSource;
    property BackColor: OleVariant read Get_BackColor write Set_BackColor;
    property DisplayExpandIndicator: WordBool read Get_DisplayExpandIndicator write Set_DisplayExpandIndicator;
    property RightToLeft: WordBool read Get_RightToLeft write Set_RightToLeft;
    property MaxWidth: Integer read Get_MaxWidth write Set_MaxWidth;
    property MaxHeight: Integer read Get_MaxHeight write Set_MaxHeight;
    property Width: Integer read Get_Width;
    property Height: Integer read Get_Height;
    property XMLData: WideString read Get_XMLData write Set_XMLData;
    property DisplayPropertyToolbox: WordBool read Get_DisplayPropertyToolbox write Set_DisplayPropertyToolbox;
    property DisplayFieldList: WordBool read Get_DisplayFieldList write Set_DisplayFieldList;
    property Constants: IDispatch read Get_Constants;
    property MajorVersion: Integer read Get_MajorVersion;
    property MinorVersion: WideString read Get_MinorVersion;
    property BuildNumber: WideString read Get_BuildNumber;
    property ConnectionString: WideString read Get_ConnectionString write Set_ConnectionString;
    property CommandText: WideString read Get_CommandText write Set_CommandText;
    property ProviderType: ProviderType read Get_ProviderType;
    property Parent: IDispatch read Get_Parent;
    property MemberExpand: PivotTableMemberExpandEnum read Get_MemberExpand;
    property RevisionNumber: WideString read Get_RevisionNumber;
    property DisplayAlerts: WordBool read Get_DisplayAlerts write Set_DisplayAlerts;
    property DataMemberStrings: OleVariant read Get_DataMemberStrings;
    property ClassFactory: PivotClassFactory read Get_ClassFactory;
    property Left: Integer read Get_Left;
    property Top: Integer read Get_Top;
    property Hwnd: Integer read Get_Hwnd;
    property ActiveObject: IDispatch read Get_ActiveObject;
    property Commands: OCCommands read Get_Commands;
    property UserMode: WordBool read Get_UserMode;
    property DataMemberCaption: WideString read Get_DataMemberCaption write Set_DataMemberCaption;
    property DataSourceEx: IDispatch read Get_DataSourceEx;
    property IsDirty: WordBool read Get_IsDirty write Set_IsDirty;
    property CubeProvider: WideString read Get_CubeProvider write Set_CubeProvider;
    property SelectionType: WideString read Get_SelectionType;
    property DisplayScreenTips: WordBool read Get_DisplayScreenTips write Set_DisplayScreenTips;
    property ViewOnlyMode: WordBool read Get_ViewOnlyMode;
    property DisplayDesignTimeUI: WordBool read Get_DisplayDesignTimeUI write Set_DisplayDesignTimeUI;
    property Toolbar: IToolbar read Get_Toolbar;
    property EditMode: PivotEditModeEnum read Get_EditMode;
    property HTMLData: WideString read Get_HTMLData;
    property DataSourceName: WideString read Get_DataSourceName;
    property DisplayBranding: WordBool read Get_DisplayBranding;
    property DisplayOfficeLogo: WordBool read Get_DisplayOfficeLogo;
  end;

// *********************************************************************//
// DispIntf:  IPivotControlDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B08-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  IPivotControlDisp = dispinterface
    ['{F5B39B08-1480-11D3-8549-00C04FAC67D7}']
    property ActiveView: PivotView readonly dispid 1610743808;
    property Selection: IDispatch dispid 6031;
    property DataMember: DataMember dispid 6000;
    property ActiveData: PivotData readonly dispid 6048;
    property Version: WideString readonly dispid 1610743814;
    property HasDetails: WordBool readonly dispid 1610743815;
    property DisplayToolbar: WordBool dispid 6008;
    property AllowGrouping: WordBool dispid 6009;
    property AllowFiltering: WordBool dispid 6010;
    property AllowDetails: WordBool dispid 6011;
    property AllowPropertyToolbox: WordBool dispid 6012;
    property AllowCustomOrdering: WordBool dispid 6027;
    property AutoFit: WordBool dispid 6013;
    procedure Export(const Filename: WideString; Action: PivotExportActionEnum); dispid 1610743830;
    property DataSource: DataSource dispid 6037;
    property BackColor: OleVariant dispid 6014;
    property DisplayExpandIndicator: WordBool dispid 6015;
    property RightToLeft: WordBool dispid 6016;
    property MaxWidth: Integer dispid 6017;
    property MaxHeight: Integer dispid 6018;
    property Width: Integer readonly dispid 1610743844;
    property Height: Integer readonly dispid 1610743846;
    property XMLData: WideString dispid 6002;
    procedure Refresh; dispid 1610743850;
    property DisplayPropertyToolbox: WordBool dispid 4002;
    property DisplayFieldList: WordBool dispid 4001;
    property Constants: IDispatch readonly dispid 1610743855;
    property MajorVersion: Integer readonly dispid 1610743856;
    property MinorVersion: WideString readonly dispid 1610743857;
    property BuildNumber: WideString readonly dispid 1610743858;
    procedure ExportPicture(const Filename: WideString; const FilterName: WideString; 
                            Width: Integer; Height: Integer); dispid 1610743859;
    property ConnectionString: WideString dispid 6038;
    property CommandText: WideString dispid 6036;
    property ProviderType: ProviderType readonly dispid 1610743864;
    property Parent: IDispatch readonly dispid 1610743865;
    property MemberExpand: PivotTableMemberExpandEnum readonly dispid 1610743866;
    procedure LocateDataSource; dispid 1610743868;
    procedure Copy(const Selection: IDispatch); dispid 1610743871;
    property RevisionNumber: WideString readonly dispid 1610743872;
    property DisplayAlerts: WordBool dispid 6025;
    property DataMemberStrings: OleVariant readonly dispid 1610743875;
    property ClassFactory: PivotClassFactory readonly dispid 1610743876;
    property Left: Integer readonly dispid 1610743878;
    property Top: Integer readonly dispid 1610743879;
    property Hwnd: Integer readonly dispid 1610743880;
    procedure DoDragDrop(const Source: DropSource; const DragItem: IDispatch; 
                         const Target: DropTarget; dwLegalEffect: Integer); dispid 1610743881;
    procedure Select(const Selection: IDispatch; const ActiveObject: IDispatch; 
                     ScrollType: PivotScrollTypeEnum; Update: WordBool; Notify: WordBool); dispid 1610743882;
    property ActiveObject: IDispatch readonly dispid 1610743883;
    property Commands: OCCommands readonly dispid 1610743885;
    procedure ShowHelp(Topic: Integer); dispid 1610743886;
    procedure ShowAbout; dispid 1610743887;
    property UserMode: WordBool readonly dispid 1610743888;
    procedure ShowContextMenu(x: Integer; y: Integer; Menu: OleVariant); dispid 1610743889;
    property DataMemberCaption: WideString dispid 6040;
    property DataSourceEx: IDispatch readonly dispid 1610743892;
    procedure StartEdit(InitialValue: OleVariant; ArrowMode: PivotArrowModeEnum; 
                        CaretPosition: PivotCaretPositionEnum); dispid 1610743894;
    procedure EndEdit(Accept: WordBool); dispid 1610743895;
    procedure CancelDragDrop; dispid 1610743896;
    property IsDirty: WordBool dispid 6047;
    property CubeProvider: WideString dispid 6041;
    property SelectionType: WideString readonly dispid 1610743901;
    property DisplayScreenTips: WordBool dispid 6042;
    property ViewOnlyMode: WordBool readonly dispid 1610743904;
    property DisplayDesignTimeUI: WordBool dispid 6050;
    property Toolbar: IToolbar readonly dispid 1610743907;
    property EditMode: PivotEditModeEnum readonly dispid 1610743908;
    property HTMLData: WideString readonly dispid 1610743909;
    property DataSourceName: WideString readonly dispid 1610743910;
    property DisplayBranding: WordBool readonly dispid 1610743912;
    property DisplayOfficeLogo: WordBool readonly dispid 1610743914;
    procedure OkToBindToControlByName; dispid 1610743916;
  end;

// *********************************************************************//
// Interface: PivotClassFactory
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {73F4D511-C851-11D2-8F2D-00600893B533}
// *********************************************************************//
  PivotClassFactory = interface(IDispatch)
    ['{73F4D511-C851-11D2-8F2D-00600893B533}']
    function Get_NewDetailCell(const DetailCell: PivotDetailCell): IDispatch; safecall;
    function Get_NewAggregate(const Aggregate: PivotAggregate): IDispatch; safecall;
    function Get_NewRowMember(const RowMember: PivotRowMember): IDispatch; safecall;
    function Get_NewColumnMember(const ColumnMember: PivotColumnMember): IDispatch; safecall;
    function Get_NewCell(const Cell: PivotCell): IDispatch; safecall;
    property NewDetailCell[const DetailCell: PivotDetailCell]: IDispatch read Get_NewDetailCell;
    property NewAggregate[const Aggregate: PivotAggregate]: IDispatch read Get_NewAggregate;
    property NewRowMember[const RowMember: PivotRowMember]: IDispatch read Get_NewRowMember;
    property NewColumnMember[const ColumnMember: PivotColumnMember]: IDispatch read Get_NewColumnMember;
    property NewCell[const Cell: PivotCell]: IDispatch read Get_NewCell;
  end;

// *********************************************************************//
// DispIntf:  PivotClassFactoryDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {73F4D511-C851-11D2-8F2D-00600893B533}
// *********************************************************************//
  PivotClassFactoryDisp = dispinterface
    ['{73F4D511-C851-11D2-8F2D-00600893B533}']
    property NewDetailCell[const DetailCell: PivotDetailCell]: IDispatch readonly dispid 1610743808;
    property NewAggregate[const Aggregate: PivotAggregate]: IDispatch readonly dispid 1610743809;
    property NewRowMember[const RowMember: PivotRowMember]: IDispatch readonly dispid 1610743810;
    property NewColumnMember[const ColumnMember: PivotColumnMember]: IDispatch readonly dispid 1610743811;
    property NewCell[const Cell: PivotCell]: IDispatch readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: PivotDetailCell
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B48-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotDetailCell = interface(IDispatch)
    ['{F5B39B48-1480-11D3-8549-00C04FAC67D7}']
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(Value: OleVariant); safecall;
    function Get_Text: WideString; safecall;
    function Get_Cell: PivotCell; safecall;
    function Get_Field: PivotField; safecall;
    function Get_Row: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Top: Integer; safecall;
    function Get_Width: Integer; safecall;
    function Get_Height: Integer; safecall;
    function Get_Column: Integer; safecall;
    function Get_Hyperlink: PivotHyperlink; safecall;
    function Get_Bookmark: OleVariant; safecall;
    property Value: OleVariant read Get_Value write Set_Value;
    property Text: WideString read Get_Text;
    property Cell: PivotCell read Get_Cell;
    property Field: PivotField read Get_Field;
    property Row: Integer read Get_Row;
    property Left: Integer read Get_Left;
    property Top: Integer read Get_Top;
    property Width: Integer read Get_Width;
    property Height: Integer read Get_Height;
    property Column: Integer read Get_Column;
    property Hyperlink: PivotHyperlink read Get_Hyperlink;
    property Bookmark: OleVariant read Get_Bookmark;
  end;

// *********************************************************************//
// DispIntf:  PivotDetailCellDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B48-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotDetailCellDisp = dispinterface
    ['{F5B39B48-1480-11D3-8549-00C04FAC67D7}']
    property Value: OleVariant dispid 0;
    property Text: WideString readonly dispid 1610743810;
    property Cell: PivotCell readonly dispid 1610743811;
    property Field: PivotField readonly dispid 1610743812;
    property Row: Integer readonly dispid 1610743813;
    property Left: Integer readonly dispid 1610743814;
    property Top: Integer readonly dispid 1610743815;
    property Width: Integer readonly dispid 1610743816;
    property Height: Integer readonly dispid 1610743817;
    property Column: Integer readonly dispid 1610743818;
    property Hyperlink: PivotHyperlink readonly dispid 1610743819;
    property Bookmark: OleVariant readonly dispid 1610743820;
  end;

// *********************************************************************//
// Interface: PivotCell
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B31-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotCell = interface(IDispatch)
    ['{F5B39B31-1480-11D3-8549-00C04FAC67D7}']
    function Get_Aggregates: PivotAggregates; safecall;
    function Get_Expanded: WordBool; safecall;
    procedure Set_Expanded(Expanded: WordBool); safecall;
    function Get_Recordset: Recordset; safecall;
    function Get_RowMember: PivotRowMember; safecall;
    function Get_ColumnMember: PivotColumnMember; safecall;
    function Get_DetailTop: Integer; safecall;
    procedure Set_DetailTop(DetailTop: Integer); safecall;
    function Get_DetailCells(Row: Integer; Column: Integer): PivotDetailCell; safecall;
    function Get_DetailRange(const TopLeft: PivotDetailCell; const BottomRight: PivotDetailCell): PivotDetailRange; safecall;
    function Get_Data: PivotData; safecall;
    function Get_DetailTopOffset: Integer; safecall;
    procedure Set_DetailTopOffset(DetailTopOffset: Integer); safecall;
    procedure MoveDetailTop(DetailTop: Integer; DetailTopOffset: Integer; Update: WordBool); safecall;
    function Get_DetailRowCount: Integer; safecall;
    function Get_DetailColumnCount: Integer; safecall;
    function Get_PageMember: PivotPageMember; safecall;
    property Aggregates: PivotAggregates read Get_Aggregates;
    property Expanded: WordBool read Get_Expanded;
    property Recordset: Recordset read Get_Recordset;
    property RowMember: PivotRowMember read Get_RowMember;
    property ColumnMember: PivotColumnMember read Get_ColumnMember;
    property DetailTop: Integer read Get_DetailTop;
    property DetailCells[Row: Integer; Column: Integer]: PivotDetailCell read Get_DetailCells;
    property DetailRange[const TopLeft: PivotDetailCell; const BottomRight: PivotDetailCell]: PivotDetailRange read Get_DetailRange;
    property Data: PivotData read Get_Data;
    property DetailTopOffset: Integer read Get_DetailTopOffset;
    property DetailRowCount: Integer read Get_DetailRowCount;
    property DetailColumnCount: Integer read Get_DetailColumnCount;
    property PageMember: PivotPageMember read Get_PageMember;
  end;

// *********************************************************************//
// DispIntf:  PivotCellDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B31-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotCellDisp = dispinterface
    ['{F5B39B31-1480-11D3-8549-00C04FAC67D7}']
    property Aggregates: PivotAggregates readonly dispid 1610743808;
    property Expanded: WordBool readonly dispid 1610743809;
    property Recordset: Recordset readonly dispid 1610743811;
    property RowMember: PivotRowMember readonly dispid 1610743812;
    property ColumnMember: PivotColumnMember readonly dispid 1610743813;
    property DetailTop: Integer readonly dispid 1610743814;
    property DetailCells[Row: Integer; Column: Integer]: PivotDetailCell readonly dispid 1610743816;
    property DetailRange[const TopLeft: PivotDetailCell; const BottomRight: PivotDetailCell]: PivotDetailRange readonly dispid 1610743817;
    property Data: PivotData readonly dispid 1610743818;
    property DetailTopOffset: Integer readonly dispid 1610743819;
    procedure MoveDetailTop(DetailTop: Integer; DetailTopOffset: Integer; Update: WordBool); dispid 1610743821;
    property DetailRowCount: Integer readonly dispid 1610743822;
    property DetailColumnCount: Integer readonly dispid 1610743823;
    property PageMember: PivotPageMember readonly dispid 1610743824;
  end;

// *********************************************************************//
// Interface: PivotAggregates
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A77-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotAggregates = interface(IDispatch)
    ['{F5B39A77-1480-11D3-8549-00C04FAC67D7}']
    function Get_Item(Index: OleVariant): PivotAggregate; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: OleVariant]: PivotAggregate read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PivotAggregatesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A77-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotAggregatesDisp = dispinterface
    ['{F5B39A77-1480-11D3-8549-00C04FAC67D7}']
    property Item[Index: OleVariant]: PivotAggregate readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PivotAggregate
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A78-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotAggregate = interface(IDispatch)
    ['{F5B39A78-1480-11D3-8549-00C04FAC67D7}']
    function Get_Value: OleVariant; safecall;
    function Get_Name: WideString; safecall;
    function Get_Text: WideString; safecall;
    function Get_Cell: PivotCell; safecall;
    function Get_Total: PivotTotal; safecall;
    function Get_Left: Integer; safecall;
    function Get_Top: Integer; safecall;
    function Get_Width: Integer; safecall;
    function Get_Height: Integer; safecall;
    function Get_ShowAsValue: OleVariant; safecall;
    function Get_ProviderFormattedValue: OleVariant; safecall;
    function Get_ForeColor: OleVariant; safecall;
    function Get_BackColor: OleVariant; safecall;
    property Value: OleVariant read Get_Value;
    property Name: WideString read Get_Name;
    property Text: WideString read Get_Text;
    property Cell: PivotCell read Get_Cell;
    property Total: PivotTotal read Get_Total;
    property Left: Integer read Get_Left;
    property Top: Integer read Get_Top;
    property Width: Integer read Get_Width;
    property Height: Integer read Get_Height;
    property ShowAsValue: OleVariant read Get_ShowAsValue;
    property ProviderFormattedValue: OleVariant read Get_ProviderFormattedValue;
    property ForeColor: OleVariant read Get_ForeColor;
    property BackColor: OleVariant read Get_BackColor;
  end;

// *********************************************************************//
// DispIntf:  PivotAggregateDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A78-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotAggregateDisp = dispinterface
    ['{F5B39A78-1480-11D3-8549-00C04FAC67D7}']
    property Value: OleVariant readonly dispid 0;
    property Name: WideString readonly dispid 6023;
    property Text: WideString readonly dispid 1610743810;
    property Cell: PivotCell readonly dispid 1610743811;
    property Total: PivotTotal readonly dispid 1610743812;
    property Left: Integer readonly dispid 1610743813;
    property Top: Integer readonly dispid 1610743814;
    property Width: Integer readonly dispid 1610743815;
    property Height: Integer readonly dispid 1610743816;
    property ShowAsValue: OleVariant readonly dispid 1610743817;
    property ProviderFormattedValue: OleVariant readonly dispid 1610743818;
    property ForeColor: OleVariant readonly dispid 1610743819;
    property BackColor: OleVariant readonly dispid 1610743820;
  end;

// *********************************************************************//
// Interface: PivotAxisMember
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1D40A583-EBA2-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotAxisMember = interface(PivotMember)
    ['{1D40A583-EBA2-11D2-8F35-00600893B533}']
    function Get_ChildAxisMembers: PivotAxisMembers; safecall;
    function Get_ParentAxisMember: PivotAxisMember; safecall;
    function Get_FindAxisMember(const Path: WideString; Format: PivotMemberFindFormatEnum): PivotAxisMember; safecall;
    function Get_TotalMember: PivotAxisMember; safecall;
    function Get_Axis: PivotResultGroupAxis; safecall;
    function Get_Expanded: WordBool; safecall;
    procedure Set_Expanded(Expanded: WordBool); safecall;
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(Width: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(Height: Integer); safecall;
    function Get_AutoFit: WordBool; safecall;
    procedure Set_AutoFit(AutoFit: WordBool); safecall;
    function Get_Hyperlink: PivotHyperlink; safecall;
    function Get_MemberProperties: PivotResultMemberProperties; safecall;
    function Get_GroupField: PivotResultGroupField; safecall;
    procedure ShowDetails; safecall;
    procedure HideDetails; safecall;
    function Get_IsTotal: WordBool; safecall;
    function Get_SourceMember: PivotMember; safecall;
    property ChildAxisMembers: PivotAxisMembers read Get_ChildAxisMembers;
    property ParentAxisMember: PivotAxisMember read Get_ParentAxisMember;
    property FindAxisMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotAxisMember read Get_FindAxisMember;
    property TotalMember: PivotAxisMember read Get_TotalMember;
    property Axis: PivotResultGroupAxis read Get_Axis;
    property Expanded: WordBool read Get_Expanded;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Width: Integer read Get_Width;
    property Height: Integer read Get_Height;
    property AutoFit: WordBool read Get_AutoFit;
    property Hyperlink: PivotHyperlink read Get_Hyperlink;
    property MemberProperties: PivotResultMemberProperties read Get_MemberProperties;
    property GroupField: PivotResultGroupField read Get_GroupField;
    property IsTotal: WordBool read Get_IsTotal;
    property SourceMember: PivotMember read Get_SourceMember;
  end;

// *********************************************************************//
// DispIntf:  PivotAxisMemberDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1D40A583-EBA2-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotAxisMemberDisp = dispinterface
    ['{1D40A583-EBA2-11D2-8F35-00600893B533}']
    property ChildAxisMembers: PivotAxisMembers readonly dispid 1610809344;
    property ParentAxisMember: PivotAxisMember readonly dispid 1610809345;
    property FindAxisMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotAxisMember readonly dispid 1610809346;
    property TotalMember: PivotAxisMember readonly dispid 1610809347;
    property Axis: PivotResultGroupAxis readonly dispid 1610809348;
    property Expanded: WordBool readonly dispid 1610809349;
    property Top: Integer readonly dispid 1610809351;
    property Left: Integer readonly dispid 1610809352;
    property Width: Integer readonly dispid 1610809353;
    property Height: Integer readonly dispid 1610809355;
    property AutoFit: WordBool readonly dispid 1610809357;
    property Hyperlink: PivotHyperlink readonly dispid 1610809359;
    property MemberProperties: PivotResultMemberProperties readonly dispid 1610809360;
    property GroupField: PivotResultGroupField readonly dispid 1610809361;
    procedure ShowDetails; dispid 1610809362;
    procedure HideDetails; dispid 1610809363;
    property IsTotal: WordBool readonly dispid 1610809364;
    property SourceMember: PivotMember readonly dispid 1610809365;
    property View: PivotView readonly dispid 1610743808;
    property ChildMembers: PivotMembers readonly dispid 1610743809;
    property ParentMember: PivotMember readonly dispid 1610743810;
    property FindMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotMember readonly dispid 1610743811;
    property Name: WideString readonly dispid 6023;
    property Caption: WideString readonly dispid 6028;
    property Value: OleVariant readonly dispid 1610743814;
    property UniqueName: WideString readonly dispid 6022;
    property Field: PivotField readonly dispid 1610743816;
    property Path[Format: PivotMemberFindFormatEnum]: WideString readonly dispid 1610743817;
    property TimeValue: OleVariant readonly dispid 1610743818;
    property IsValid: WordBool readonly dispid 1610743819;
    property CustomGroupType: PivotMemberCustomGroupTypeEnum readonly dispid 1610743820;
  end;

// *********************************************************************//
// Interface: PivotRowMember
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1D40A584-EBA2-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotRowMember = interface(PivotAxisMember)
    ['{1D40A584-EBA2-11D2-8F35-00600893B533}']
    procedure GhostMethod_PivotRowMember_0_1; safecall;
    procedure GhostMethod_PivotRowMember_4_2; safecall;
    procedure GhostMethod_PivotRowMember_8_3; safecall;
    procedure GhostMethod_PivotRowMember_12_4; safecall;
    procedure GhostMethod_PivotRowMember_16_5; safecall;
    procedure GhostMethod_PivotRowMember_20_6; safecall;
    procedure GhostMethod_PivotRowMember_24_7; safecall;
    procedure GhostMethod_PivotRowMember_28_8; safecall;
    procedure GhostMethod_PivotRowMember_32_9; safecall;
    procedure GhostMethod_PivotRowMember_36_10; safecall;
    procedure GhostMethod_PivotRowMember_40_11; safecall;
    procedure GhostMethod_PivotRowMember_44_12; safecall;
    procedure GhostMethod_PivotRowMember_48_13; safecall;
    procedure GhostMethod_PivotRowMember_52_14; safecall;
    procedure GhostMethod_PivotRowMember_56_15; safecall;
    procedure GhostMethod_PivotRowMember_60_16; safecall;
    procedure GhostMethod_PivotRowMember_64_17; safecall;
    procedure GhostMethod_PivotRowMember_68_18; safecall;
    procedure GhostMethod_PivotRowMember_72_19; safecall;
    procedure GhostMethod_PivotRowMember_76_20; safecall;
    procedure GhostMethod_PivotRowMember_80_21; safecall;
    procedure GhostMethod_PivotRowMember_84_22; safecall;
    procedure GhostMethod_PivotRowMember_88_23; safecall;
    procedure GhostMethod_PivotRowMember_92_24; safecall;
    procedure GhostMethod_PivotRowMember_96_25; safecall;
    procedure GhostMethod_PivotRowMember_100_26; safecall;
    procedure GhostMethod_PivotRowMember_104_27; safecall;
    procedure GhostMethod_PivotRowMember_108_28; safecall;
    procedure GhostMethod_PivotRowMember_112_29; safecall;
    procedure GhostMethod_PivotRowMember_116_30; safecall;
    procedure GhostMethod_PivotRowMember_120_31; safecall;
    procedure GhostMethod_PivotRowMember_124_32; safecall;
    procedure GhostMethod_PivotRowMember_128_33; safecall;
    procedure GhostMethod_PivotRowMember_132_34; safecall;
    procedure GhostMethod_PivotRowMember_136_35; safecall;
    procedure GhostMethod_PivotRowMember_140_36; safecall;
    procedure GhostMethod_PivotRowMember_144_37; safecall;
    procedure GhostMethod_PivotRowMember_148_38; safecall;
    procedure GhostMethod_PivotRowMember_152_39; safecall;
    procedure GhostMethod_PivotRowMember_156_40; safecall;
    procedure GhostMethod_PivotRowMember_160_41; safecall;
    procedure GhostMethod_PivotRowMember_164_42; safecall;
    function Get_ChildRowMembers: PivotRowMembers; safecall;
    function Get_ParentRowMember: PivotRowMember; safecall;
    function Get_FindRowMember(const Path: WideString; Format: PivotMemberFindFormatEnum): PivotRowMember; safecall;
    function Get_TotalRowMember: PivotRowMember; safecall;
    function Get_TotalRowHeight: Integer; safecall;
    procedure Set_TotalRowHeight(TotalRowHeight: Integer); safecall;
    property ChildRowMembers: PivotRowMembers read Get_ChildRowMembers;
    property ParentRowMember: PivotRowMember read Get_ParentRowMember;
    property FindRowMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotRowMember read Get_FindRowMember;
    property TotalRowMember: PivotRowMember read Get_TotalRowMember;
    property TotalRowHeight: Integer read Get_TotalRowHeight write Set_TotalRowHeight;
  end;

// *********************************************************************//
// DispIntf:  PivotRowMemberDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1D40A584-EBA2-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotRowMemberDisp = dispinterface
    ['{1D40A584-EBA2-11D2-8F35-00600893B533}']
    procedure GhostMethod_PivotRowMember_0_1; dispid 1610678272;
    procedure GhostMethod_PivotRowMember_4_2; dispid 1610678273;
    procedure GhostMethod_PivotRowMember_8_3; dispid 1610678274;
    procedure GhostMethod_PivotRowMember_12_4; dispid 1610678275;
    procedure GhostMethod_PivotRowMember_16_5; dispid 1610678276;
    procedure GhostMethod_PivotRowMember_20_6; dispid 1610678277;
    procedure GhostMethod_PivotRowMember_24_7; dispid 1610678278;
    procedure GhostMethod_PivotRowMember_28_8; dispid 1610678279;
    procedure GhostMethod_PivotRowMember_32_9; dispid 1610678280;
    procedure GhostMethod_PivotRowMember_36_10; dispid 1610678281;
    procedure GhostMethod_PivotRowMember_40_11; dispid 1610678282;
    procedure GhostMethod_PivotRowMember_44_12; dispid 1610678283;
    procedure GhostMethod_PivotRowMember_48_13; dispid 1610678284;
    procedure GhostMethod_PivotRowMember_52_14; dispid 1610678285;
    procedure GhostMethod_PivotRowMember_56_15; dispid 1610678286;
    procedure GhostMethod_PivotRowMember_60_16; dispid 1610678287;
    procedure GhostMethod_PivotRowMember_64_17; dispid 1610678288;
    procedure GhostMethod_PivotRowMember_68_18; dispid 1610678289;
    procedure GhostMethod_PivotRowMember_72_19; dispid 1610678290;
    procedure GhostMethod_PivotRowMember_76_20; dispid 1610678291;
    procedure GhostMethod_PivotRowMember_80_21; dispid 1610678292;
    procedure GhostMethod_PivotRowMember_84_22; dispid 1610678293;
    procedure GhostMethod_PivotRowMember_88_23; dispid 1610678294;
    procedure GhostMethod_PivotRowMember_92_24; dispid 1610678295;
    procedure GhostMethod_PivotRowMember_96_25; dispid 1610678296;
    procedure GhostMethod_PivotRowMember_100_26; dispid 1610678297;
    procedure GhostMethod_PivotRowMember_104_27; dispid 1610678298;
    procedure GhostMethod_PivotRowMember_108_28; dispid 1610678299;
    procedure GhostMethod_PivotRowMember_112_29; dispid 1610678300;
    procedure GhostMethod_PivotRowMember_116_30; dispid 1610678301;
    procedure GhostMethod_PivotRowMember_120_31; dispid 1610678302;
    procedure GhostMethod_PivotRowMember_124_32; dispid 1610678303;
    procedure GhostMethod_PivotRowMember_128_33; dispid 1610678304;
    procedure GhostMethod_PivotRowMember_132_34; dispid 1610678305;
    procedure GhostMethod_PivotRowMember_136_35; dispid 1610678306;
    procedure GhostMethod_PivotRowMember_140_36; dispid 1610678307;
    procedure GhostMethod_PivotRowMember_144_37; dispid 1610678308;
    procedure GhostMethod_PivotRowMember_148_38; dispid 1610678309;
    procedure GhostMethod_PivotRowMember_152_39; dispid 1610678310;
    procedure GhostMethod_PivotRowMember_156_40; dispid 1610678311;
    procedure GhostMethod_PivotRowMember_160_41; dispid 1610678312;
    procedure GhostMethod_PivotRowMember_164_42; dispid 1610678313;
    property ChildRowMembers: PivotRowMembers readonly dispid 1610874880;
    property ParentRowMember: PivotRowMember readonly dispid 1610874881;
    property FindRowMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotRowMember readonly dispid 1610874882;
    property TotalRowMember: PivotRowMember readonly dispid 1610874883;
    property TotalRowHeight: Integer dispid 1610874884;
    property ChildAxisMembers: PivotAxisMembers readonly dispid 1610809344;
    property ParentAxisMember: PivotAxisMember readonly dispid 1610809345;
    property FindAxisMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotAxisMember readonly dispid 1610809346;
    property TotalMember: PivotAxisMember readonly dispid 1610809347;
    property Axis: PivotResultGroupAxis readonly dispid 1610809348;
    property Expanded: WordBool readonly dispid 1610809349;
    property Top: Integer readonly dispid 1610809351;
    property Left: Integer readonly dispid 1610809352;
    property Width: Integer readonly dispid 1610809353;
    property Height: Integer readonly dispid 1610809355;
    property AutoFit: WordBool readonly dispid 1610809357;
    property Hyperlink: PivotHyperlink readonly dispid 1610809359;
    property MemberProperties: PivotResultMemberProperties readonly dispid 1610809360;
    property GroupField: PivotResultGroupField readonly dispid 1610809361;
    procedure ShowDetails; dispid 1610809362;
    procedure HideDetails; dispid 1610809363;
    property IsTotal: WordBool readonly dispid 1610809364;
    property SourceMember: PivotMember readonly dispid 1610809365;
    property View: PivotView readonly dispid 1610743808;
    property ChildMembers: PivotMembers readonly dispid 1610743809;
    property ParentMember: PivotMember readonly dispid 1610743810;
    property FindMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotMember readonly dispid 1610743811;
    property Name: WideString readonly dispid 6023;
    property Caption: WideString readonly dispid 6028;
    property Value: OleVariant readonly dispid 1610743814;
    property UniqueName: WideString readonly dispid 6022;
    property Field: PivotField readonly dispid 1610743816;
    property Path[Format: PivotMemberFindFormatEnum]: WideString readonly dispid 1610743817;
    property TimeValue: OleVariant readonly dispid 1610743818;
    property IsValid: WordBool readonly dispid 1610743819;
    property CustomGroupType: PivotMemberCustomGroupTypeEnum readonly dispid 1610743820;
  end;

// *********************************************************************//
// Interface: PivotAxisMembers
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {30971540-EEB8-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotAxisMembers = interface(IDispatch)
    ['{30971540-EEB8-11D2-8F35-00600893B533}']
    function Get_Item(Index: OleVariant): PivotAxisMember; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: OleVariant]: PivotAxisMember read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PivotAxisMembersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {30971540-EEB8-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotAxisMembersDisp = dispinterface
    ['{30971540-EEB8-11D2-8F35-00600893B533}']
    property Item[Index: OleVariant]: PivotAxisMember readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PivotHyperlink
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A9C-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotHyperlink = interface(IDispatch)
    ['{F5B39A9C-1480-11D3-8549-00C04FAC67D7}']
    procedure Delete; safecall;
    procedure Follow(NewWindow: WordBool); safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Address: WideString; safecall;
    procedure Set_Address(const Address: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_SubAddress: WideString; safecall;
    procedure Set_SubAddress(const SubAddress: WideString); safecall;
    property Parent: IDispatch read Get_Parent;
    property Address: WideString read Get_Address;
    property Name: WideString read Get_Name;
    property SubAddress: WideString read Get_SubAddress;
  end;

// *********************************************************************//
// DispIntf:  PivotHyperlinkDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A9C-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotHyperlinkDisp = dispinterface
    ['{F5B39A9C-1480-11D3-8549-00C04FAC67D7}']
    procedure Delete; dispid 1610743808;
    procedure Follow(NewWindow: WordBool); dispid 1610743809;
    property Parent: IDispatch readonly dispid 1610743810;
    property Address: WideString readonly dispid 1610743811;
    property Name: WideString readonly dispid 1610743813;
    property SubAddress: WideString readonly dispid 1610743815;
  end;

// *********************************************************************//
// Interface: PivotResultMemberProperties
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {23E41747-B2E7-4A36-9CEB-99799D619D02}
// *********************************************************************//
  PivotResultMemberProperties = interface(IDispatch)
    ['{23E41747-B2E7-4A36-9CEB-99799D619D02}']
    function Get_Item(varIndex: OleVariant): PivotResultMemberProperty; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[varIndex: OleVariant]: PivotResultMemberProperty read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PivotResultMemberPropertiesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {23E41747-B2E7-4A36-9CEB-99799D619D02}
// *********************************************************************//
  PivotResultMemberPropertiesDisp = dispinterface
    ['{23E41747-B2E7-4A36-9CEB-99799D619D02}']
    property Item[varIndex: OleVariant]: PivotResultMemberProperty readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PivotResultMemberProperty
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {07C8959F-2E2A-4149-B6EA-6C511B21F485}
// *********************************************************************//
  PivotResultMemberProperty = interface(IDispatch)
    ['{07C8959F-2E2A-4149-B6EA-6C511B21F485}']
    function Get_Name: WideString; safecall;
    function Get_Caption: WideString; safecall;
    function Get_Value: OleVariant; safecall;
    function Get_MemberProperty: PivotMemberProperty; safecall;
    property Name: WideString read Get_Name;
    property Caption: WideString read Get_Caption;
    property Value: OleVariant read Get_Value;
    property MemberProperty: PivotMemberProperty read Get_MemberProperty;
  end;

// *********************************************************************//
// DispIntf:  PivotResultMemberPropertyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {07C8959F-2E2A-4149-B6EA-6C511B21F485}
// *********************************************************************//
  PivotResultMemberPropertyDisp = dispinterface
    ['{07C8959F-2E2A-4149-B6EA-6C511B21F485}']
    property Name: WideString readonly dispid 6023;
    property Caption: WideString readonly dispid 6028;
    property Value: OleVariant readonly dispid 0;
    property MemberProperty: PivotMemberProperty readonly dispid 1610743811;
  end;

// *********************************************************************//
// Interface: PivotResultField
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {682A2445-8F22-4E2D-A73B-D04E4CC273B5}
// *********************************************************************//
  PivotResultField = interface(IDispatch)
    ['{682A2445-8F22-4E2D-A73B-D04E4CC273B5}']
    function Get_SourceField: PivotField; safecall;
    function Get_Axis: PivotResultAxis; safecall;
    property SourceField: PivotField read Get_SourceField;
    property Axis: PivotResultAxis read Get_Axis;
  end;

// *********************************************************************//
// DispIntf:  PivotResultFieldDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {682A2445-8F22-4E2D-A73B-D04E4CC273B5}
// *********************************************************************//
  PivotResultFieldDisp = dispinterface
    ['{682A2445-8F22-4E2D-A73B-D04E4CC273B5}']
    property SourceField: PivotField readonly dispid 1610743808;
    property Axis: PivotResultAxis readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: PivotResultGroupField
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DC0342FE-039A-4D2D-80BF-BCA659270822}
// *********************************************************************//
  PivotResultGroupField = interface(PivotResultField)
    ['{DC0342FE-039A-4D2D-80BF-BCA659270822}']
    procedure GhostMethod_PivotResultGroupField_0_1; safecall;
    procedure GhostMethod_PivotResultGroupField_4_2; safecall;
    procedure GhostMethod_PivotResultGroupField_8_3; safecall;
    procedure GhostMethod_PivotResultGroupField_12_4; safecall;
    procedure GhostMethod_PivotResultGroupField_16_5; safecall;
    procedure GhostMethod_PivotResultGroupField_20_6; safecall;
    procedure GhostMethod_PivotResultGroupField_24_7; safecall;
    procedure GhostMethod_PivotResultGroupField_28_8; safecall;
    procedure GhostMethod_PivotResultGroupField_32_9; safecall;
    function Get_DisplayTotal: WordBool; safecall;
    property DisplayTotal: WordBool read Get_DisplayTotal;
  end;

// *********************************************************************//
// DispIntf:  PivotResultGroupFieldDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DC0342FE-039A-4D2D-80BF-BCA659270822}
// *********************************************************************//
  PivotResultGroupFieldDisp = dispinterface
    ['{DC0342FE-039A-4D2D-80BF-BCA659270822}']
    procedure GhostMethod_PivotResultGroupField_0_1; dispid 1610678272;
    procedure GhostMethod_PivotResultGroupField_4_2; dispid 1610678273;
    procedure GhostMethod_PivotResultGroupField_8_3; dispid 1610678274;
    procedure GhostMethod_PivotResultGroupField_12_4; dispid 1610678275;
    procedure GhostMethod_PivotResultGroupField_16_5; dispid 1610678276;
    procedure GhostMethod_PivotResultGroupField_20_6; dispid 1610678277;
    procedure GhostMethod_PivotResultGroupField_24_7; dispid 1610678278;
    procedure GhostMethod_PivotResultGroupField_28_8; dispid 1610678279;
    procedure GhostMethod_PivotResultGroupField_32_9; dispid 1610678280;
    property DisplayTotal: WordBool readonly dispid 1610809344;
    property SourceField: PivotField readonly dispid 1610743808;
    property Axis: PivotResultAxis readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: PivotRowMembers
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {30971541-EEB8-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotRowMembers = interface(IDispatch)
    ['{30971541-EEB8-11D2-8F35-00600893B533}']
    function Get_Item(Index: OleVariant): PivotRowMember; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: OleVariant]: PivotRowMember read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PivotRowMembersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {30971541-EEB8-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotRowMembersDisp = dispinterface
    ['{30971541-EEB8-11D2-8F35-00600893B533}']
    property Item[Index: OleVariant]: PivotRowMember readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PivotColumnMember
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1D40A585-EBA2-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotColumnMember = interface(PivotAxisMember)
    ['{1D40A585-EBA2-11D2-8F35-00600893B533}']
    function Get_ChildColumnMembers: PivotColumnMembers; safecall;
    function Get_ParentColumnMember: PivotColumnMember; safecall;
    function Get_FindColumnMember(const Path: WideString; Format: PivotMemberFindFormatEnum): PivotColumnMember; safecall;
    function Get_TotalColumnMember: PivotColumnMember; safecall;
    function Get_DetailLeft: Integer; safecall;
    procedure Set_DetailLeft(DetailLeft: Integer); safecall;
    function Get_DetailLeftOffset: Integer; safecall;
    procedure Set_DetailLeftOffset(DetailLeftOffset: Integer); safecall;
    procedure MoveDetailLeft(DetailLeft: Integer; DetailLeftOffset: Integer; Update: WordBool); safecall;
    function Get_DetailsExpanded: WordBool; safecall;
    property ChildColumnMembers: PivotColumnMembers read Get_ChildColumnMembers;
    property ParentColumnMember: PivotColumnMember read Get_ParentColumnMember;
    property FindColumnMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotColumnMember read Get_FindColumnMember;
    property TotalColumnMember: PivotColumnMember read Get_TotalColumnMember;
    property DetailLeft: Integer read Get_DetailLeft;
    property DetailLeftOffset: Integer read Get_DetailLeftOffset;
    property DetailsExpanded: WordBool read Get_DetailsExpanded;
  end;

// *********************************************************************//
// DispIntf:  PivotColumnMemberDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1D40A585-EBA2-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotColumnMemberDisp = dispinterface
    ['{1D40A585-EBA2-11D2-8F35-00600893B533}']
    property ChildColumnMembers: PivotColumnMembers readonly dispid 1610874880;
    property ParentColumnMember: PivotColumnMember readonly dispid 1610874881;
    property FindColumnMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotColumnMember readonly dispid 1610874882;
    property TotalColumnMember: PivotColumnMember readonly dispid 1610874883;
    property DetailLeft: Integer readonly dispid 1610874884;
    property DetailLeftOffset: Integer readonly dispid 1610874886;
    procedure MoveDetailLeft(DetailLeft: Integer; DetailLeftOffset: Integer; Update: WordBool); dispid 1610874888;
    property DetailsExpanded: WordBool readonly dispid 1610874889;
    property ChildAxisMembers: PivotAxisMembers readonly dispid 1610809344;
    property ParentAxisMember: PivotAxisMember readonly dispid 1610809345;
    property FindAxisMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotAxisMember readonly dispid 1610809346;
    property TotalMember: PivotAxisMember readonly dispid 1610809347;
    property Axis: PivotResultGroupAxis readonly dispid 1610809348;
    property Expanded: WordBool readonly dispid 1610809349;
    property Top: Integer readonly dispid 1610809351;
    property Left: Integer readonly dispid 1610809352;
    property Width: Integer readonly dispid 1610809353;
    property Height: Integer readonly dispid 1610809355;
    property AutoFit: WordBool readonly dispid 1610809357;
    property Hyperlink: PivotHyperlink readonly dispid 1610809359;
    property MemberProperties: PivotResultMemberProperties readonly dispid 1610809360;
    property GroupField: PivotResultGroupField readonly dispid 1610809361;
    procedure ShowDetails; dispid 1610809362;
    procedure HideDetails; dispid 1610809363;
    property IsTotal: WordBool readonly dispid 1610809364;
    property SourceMember: PivotMember readonly dispid 1610809365;
    property View: PivotView readonly dispid 1610743808;
    property ChildMembers: PivotMembers readonly dispid 1610743809;
    property ParentMember: PivotMember readonly dispid 1610743810;
    property FindMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotMember readonly dispid 1610743811;
    property Name: WideString readonly dispid 6023;
    property Caption: WideString readonly dispid 6028;
    property Value: OleVariant readonly dispid 1610743814;
    property UniqueName: WideString readonly dispid 6022;
    property Field: PivotField readonly dispid 1610743816;
    property Path[Format: PivotMemberFindFormatEnum]: WideString readonly dispid 1610743817;
    property TimeValue: OleVariant readonly dispid 1610743818;
    property IsValid: WordBool readonly dispid 1610743819;
    property CustomGroupType: PivotMemberCustomGroupTypeEnum readonly dispid 1610743820;
  end;

// *********************************************************************//
// Interface: PivotColumnMembers
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {30971542-EEB8-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotColumnMembers = interface(IDispatch)
    ['{30971542-EEB8-11D2-8F35-00600893B533}']
    function Get_Item(Index: OleVariant): PivotColumnMember; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: OleVariant]: PivotColumnMember read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PivotColumnMembersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {30971542-EEB8-11D2-8F35-00600893B533}
// *********************************************************************//
  PivotColumnMembersDisp = dispinterface
    ['{30971542-EEB8-11D2-8F35-00600893B533}']
    property Item[Index: OleVariant]: PivotColumnMember readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PivotDetailRange
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B47-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotDetailRange = interface(IDispatch)
    ['{F5B39B47-1480-11D3-8549-00C04FAC67D7}']
    function Get_Cell: PivotCell; safecall;
    function Get_TopLeft: PivotDetailCell; safecall;
    function Get_BottomRight: PivotDetailCell; safecall;
    function Get_Fields: PivotFields; safecall;
    property Cell: PivotCell read Get_Cell;
    property TopLeft: PivotDetailCell read Get_TopLeft;
    property BottomRight: PivotDetailCell read Get_BottomRight;
    property Fields: PivotFields read Get_Fields;
  end;

// *********************************************************************//
// DispIntf:  PivotDetailRangeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B47-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotDetailRangeDisp = dispinterface
    ['{F5B39B47-1480-11D3-8549-00C04FAC67D7}']
    property Cell: PivotCell readonly dispid 1610743808;
    property TopLeft: PivotDetailCell readonly dispid 1610743809;
    property BottomRight: PivotDetailCell readonly dispid 1610743810;
    property Fields: PivotFields readonly dispid 1610743811;
  end;

// *********************************************************************//
// Interface: PivotPageMember
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C575AE1E-3959-441A-BED4-D3DEA9EB8037}
// *********************************************************************//
  PivotPageMember = interface(PivotAxisMember)
    ['{C575AE1E-3959-441A-BED4-D3DEA9EB8037}']
    function Get_ChildPageMembers: PivotPageMembers; safecall;
    function Get_ParentPageMember: PivotPageMember; safecall;
    function Get_FindPageMember(const Path: WideString; Format: PivotMemberFindFormatEnum): PivotPageMember; safecall;
    function Get_TotalPageMember: PivotPageMember; safecall;
    property ChildPageMembers: PivotPageMembers read Get_ChildPageMembers;
    property ParentPageMember: PivotPageMember read Get_ParentPageMember;
    property FindPageMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotPageMember read Get_FindPageMember;
    property TotalPageMember: PivotPageMember read Get_TotalPageMember;
  end;

// *********************************************************************//
// DispIntf:  PivotPageMemberDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C575AE1E-3959-441A-BED4-D3DEA9EB8037}
// *********************************************************************//
  PivotPageMemberDisp = dispinterface
    ['{C575AE1E-3959-441A-BED4-D3DEA9EB8037}']
    property ChildPageMembers: PivotPageMembers readonly dispid 1610874880;
    property ParentPageMember: PivotPageMember readonly dispid 1610874881;
    property FindPageMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotPageMember readonly dispid 1610874882;
    property TotalPageMember: PivotPageMember readonly dispid 1610874883;
    property ChildAxisMembers: PivotAxisMembers readonly dispid 1610809344;
    property ParentAxisMember: PivotAxisMember readonly dispid 1610809345;
    property FindAxisMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotAxisMember readonly dispid 1610809346;
    property TotalMember: PivotAxisMember readonly dispid 1610809347;
    property Axis: PivotResultGroupAxis readonly dispid 1610809348;
    property Expanded: WordBool readonly dispid 1610809349;
    property Top: Integer readonly dispid 1610809351;
    property Left: Integer readonly dispid 1610809352;
    property Width: Integer readonly dispid 1610809353;
    property Height: Integer readonly dispid 1610809355;
    property AutoFit: WordBool readonly dispid 1610809357;
    property Hyperlink: PivotHyperlink readonly dispid 1610809359;
    property MemberProperties: PivotResultMemberProperties readonly dispid 1610809360;
    property GroupField: PivotResultGroupField readonly dispid 1610809361;
    procedure ShowDetails; dispid 1610809362;
    procedure HideDetails; dispid 1610809363;
    property IsTotal: WordBool readonly dispid 1610809364;
    property SourceMember: PivotMember readonly dispid 1610809365;
    property View: PivotView readonly dispid 1610743808;
    property ChildMembers: PivotMembers readonly dispid 1610743809;
    property ParentMember: PivotMember readonly dispid 1610743810;
    property FindMember[const Path: WideString; Format: PivotMemberFindFormatEnum]: PivotMember readonly dispid 1610743811;
    property Name: WideString readonly dispid 6023;
    property Caption: WideString readonly dispid 6028;
    property Value: OleVariant readonly dispid 1610743814;
    property UniqueName: WideString readonly dispid 6022;
    property Field: PivotField readonly dispid 1610743816;
    property Path[Format: PivotMemberFindFormatEnum]: WideString readonly dispid 1610743817;
    property TimeValue: OleVariant readonly dispid 1610743818;
    property IsValid: WordBool readonly dispid 1610743819;
    property CustomGroupType: PivotMemberCustomGroupTypeEnum readonly dispid 1610743820;
  end;

// *********************************************************************//
// Interface: PivotPageMembers
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E3AB2FF8-B95F-4C05-BF3F-6E9BA007F81C}
// *********************************************************************//
  PivotPageMembers = interface(IDispatch)
    ['{E3AB2FF8-B95F-4C05-BF3F-6E9BA007F81C}']
    function Get_Item(Index: OleVariant): PivotPageMember; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: OleVariant]: PivotPageMember read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PivotPageMembersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E3AB2FF8-B95F-4C05-BF3F-6E9BA007F81C}
// *********************************************************************//
  PivotPageMembersDisp = dispinterface
    ['{E3AB2FF8-B95F-4C05-BF3F-6E9BA007F81C}']
    property Item[Index: OleVariant]: PivotPageMember readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: DropSource
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D6CE4620-E224-11D2-8F35-00600893B533}
// *********************************************************************//
  DropSource = interface(IDispatch)
    ['{D6CE4620-E224-11D2-8F35-00600893B533}']
    procedure GiveFeedback(dwEffect: LongWord); safecall;
    procedure QueryContinueDrag(EscapePressed: WordBool; KeyState: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  DropSourceDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D6CE4620-E224-11D2-8F35-00600893B533}
// *********************************************************************//
  DropSourceDisp = dispinterface
    ['{D6CE4620-E224-11D2-8F35-00600893B533}']
    procedure GiveFeedback(dwEffect: LongWord); dispid 1610743808;
    procedure QueryContinueDrag(EscapePressed: WordBool; KeyState: Integer); dispid 1610743809;
  end;

// *********************************************************************//
// Interface: DropTarget
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {77186960-CDB1-11D2-8F2E-00600893B533}
// *********************************************************************//
  DropTarget = interface(IDispatch)
    ['{77186960-CDB1-11D2-8F2E-00600893B533}']
    procedure DragEnter(x: Integer; y: Integer; KeyState: Integer; var Effect: LongWord; 
                        const Object_: IDispatch); safecall;
    procedure DragOver(x: Integer; y: Integer; KeyState: Integer; var Effect: LongWord); safecall;
    procedure DragLeave; safecall;
    procedure Drop(x: Integer; y: Integer; KeyState: Integer; var Effect: LongWord); safecall;
  end;

// *********************************************************************//
// DispIntf:  DropTargetDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {77186960-CDB1-11D2-8F2E-00600893B533}
// *********************************************************************//
  DropTargetDisp = dispinterface
    ['{77186960-CDB1-11D2-8F2E-00600893B533}']
    procedure DragEnter(x: Integer; y: Integer; KeyState: Integer; var Effect: LongWord; 
                        const Object_: IDispatch); dispid 1610743808;
    procedure DragOver(x: Integer; y: Integer; KeyState: Integer; var Effect: LongWord); dispid 1610743809;
    procedure DragLeave; dispid 1610743810;
    procedure Drop(x: Integer; y: Integer; KeyState: Integer; var Effect: LongWord); dispid 1610743811;
  end;

// *********************************************************************//
// Interface: OCCommands
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {85FE02E2-51A7-11D3-BE84-0050041DB15A}
// *********************************************************************//
  OCCommands = interface(IDispatch)
    ['{85FE02E2-51A7-11D3-BE84-0050041DB15A}']
    function Get_Item(Index: OleVariant): OCCommand; safecall;
    property Item[Index: OleVariant]: OCCommand read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  OCCommandsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {85FE02E2-51A7-11D3-BE84-0050041DB15A}
// *********************************************************************//
  OCCommandsDisp = dispinterface
    ['{85FE02E2-51A7-11D3-BE84-0050041DB15A}']
    property Item[Index: OleVariant]: OCCommand readonly dispid 0; default;
  end;

// *********************************************************************//
// Interface: OCCommand
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B9B7C776-51A7-11D3-BE84-0050041DB15A}
// *********************************************************************//
  OCCommand = interface(IDispatch)
    ['{B9B7C776-51A7-11D3-BE84-0050041DB15A}']
    function Get_Enabled: WordBool; safecall;
    function Get_Checked: WordBool; safecall;
    function Get_TipText: WideString; safecall;
    procedure Execute; safecall;
    property Enabled: WordBool read Get_Enabled;
    property Checked: WordBool read Get_Checked;
    property TipText: WideString read Get_TipText;
  end;

// *********************************************************************//
// DispIntf:  OCCommandDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B9B7C776-51A7-11D3-BE84-0050041DB15A}
// *********************************************************************//
  OCCommandDisp = dispinterface
    ['{B9B7C776-51A7-11D3-BE84-0050041DB15A}']
    property Enabled: WordBool readonly dispid 1610743808;
    property Checked: WordBool readonly dispid 1610743809;
    property TipText: WideString readonly dispid 1610743810;
    procedure Execute; dispid 1610743811;
  end;

// *********************************************************************//
// Interface: PivotResultRowAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2C8CED11-01AF-11D3-8F35-00600893B533}
// *********************************************************************//
  PivotResultRowAxis = interface(PivotResultGroupAxis)
    ['{2C8CED11-01AF-11D3-8F35-00600893B533}']
    function Get_SourceRowAxis: PivotGroupAxis; safecall;
    function Get_RowMember: PivotRowMember; safecall;
    property SourceRowAxis: PivotGroupAxis read Get_SourceRowAxis;
    property RowMember: PivotRowMember read Get_RowMember;
  end;

// *********************************************************************//
// DispIntf:  PivotResultRowAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2C8CED11-01AF-11D3-8F35-00600893B533}
// *********************************************************************//
  PivotResultRowAxisDisp = dispinterface
    ['{2C8CED11-01AF-11D3-8F35-00600893B533}']
    property SourceRowAxis: PivotGroupAxis readonly dispid 1610874880;
    property RowMember: PivotRowMember readonly dispid 1610874881;
    procedure GhostMethod_PivotResultGroupAxis_0_1; dispid 1610678272;
    procedure GhostMethod_PivotResultGroupAxis_4_2; dispid 1610678273;
    procedure GhostMethod_PivotResultGroupAxis_8_3; dispid 1610678274;
    procedure GhostMethod_PivotResultGroupAxis_12_4; dispid 1610678275;
    procedure GhostMethod_PivotResultGroupAxis_16_5; dispid 1610678276;
    procedure GhostMethod_PivotResultGroupAxis_20_6; dispid 1610678277;
    procedure GhostMethod_PivotResultGroupAxis_24_7; dispid 1610678278;
    procedure GhostMethod_PivotResultGroupAxis_28_8; dispid 1610678279;
    procedure GhostMethod_PivotResultGroupAxis_32_9; dispid 1610678280;
    procedure GhostMethod_PivotResultGroupAxis_36_10; dispid 1610678281;
    procedure GhostMethod_PivotResultGroupAxis_40_11; dispid 1610678282;
    procedure GhostMethod_PivotResultGroupAxis_44_12; dispid 1610678283;
    procedure GhostMethod_PivotResultGroupAxis_48_13; dispid 1610678284;
    procedure GhostMethod_PivotResultGroupAxis_52_14; dispid 1610678285;
    property Fields: PivotFields readonly dispid 1610809344;
    property GroupFields: PivotResultGroupFields readonly dispid 1610809345;
    property Member: PivotAxisMember readonly dispid 1610809346;
    property Data: PivotData readonly dispid 1610743808;
    property SourceAxis: PivotAxis readonly dispid 1610743809;
    property Label_: PivotResultLabel readonly dispid 1610743810;
    property Left: Integer readonly dispid 1610743811;
    property Top: Integer readonly dispid 1610743812;
    property Width: Integer readonly dispid 1610743813;
    property Height: Integer readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: PivotResultColumnAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2C8CED12-01AF-11D3-8F35-00600893B533}
// *********************************************************************//
  PivotResultColumnAxis = interface(PivotResultGroupAxis)
    ['{2C8CED12-01AF-11D3-8F35-00600893B533}']
    function Get_SourceColumnAxis: PivotGroupAxis; safecall;
    function Get_ColumnMember: PivotColumnMember; safecall;
    property SourceColumnAxis: PivotGroupAxis read Get_SourceColumnAxis;
    property ColumnMember: PivotColumnMember read Get_ColumnMember;
  end;

// *********************************************************************//
// DispIntf:  PivotResultColumnAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2C8CED12-01AF-11D3-8F35-00600893B533}
// *********************************************************************//
  PivotResultColumnAxisDisp = dispinterface
    ['{2C8CED12-01AF-11D3-8F35-00600893B533}']
    property SourceColumnAxis: PivotGroupAxis readonly dispid 1610874880;
    property ColumnMember: PivotColumnMember readonly dispid 1610874881;
    procedure GhostMethod_PivotResultGroupAxis_0_1; dispid 1610678272;
    procedure GhostMethod_PivotResultGroupAxis_4_2; dispid 1610678273;
    procedure GhostMethod_PivotResultGroupAxis_8_3; dispid 1610678274;
    procedure GhostMethod_PivotResultGroupAxis_12_4; dispid 1610678275;
    procedure GhostMethod_PivotResultGroupAxis_16_5; dispid 1610678276;
    procedure GhostMethod_PivotResultGroupAxis_20_6; dispid 1610678277;
    procedure GhostMethod_PivotResultGroupAxis_24_7; dispid 1610678278;
    procedure GhostMethod_PivotResultGroupAxis_28_8; dispid 1610678279;
    procedure GhostMethod_PivotResultGroupAxis_32_9; dispid 1610678280;
    procedure GhostMethod_PivotResultGroupAxis_36_10; dispid 1610678281;
    procedure GhostMethod_PivotResultGroupAxis_40_11; dispid 1610678282;
    procedure GhostMethod_PivotResultGroupAxis_44_12; dispid 1610678283;
    procedure GhostMethod_PivotResultGroupAxis_48_13; dispid 1610678284;
    procedure GhostMethod_PivotResultGroupAxis_52_14; dispid 1610678285;
    property Fields: PivotFields readonly dispid 1610809344;
    property GroupFields: PivotResultGroupFields readonly dispid 1610809345;
    property Member: PivotAxisMember readonly dispid 1610809346;
    property Data: PivotData readonly dispid 1610743808;
    property SourceAxis: PivotAxis readonly dispid 1610743809;
    property Label_: PivotResultLabel readonly dispid 1610743810;
    property Left: Integer readonly dispid 1610743811;
    property Top: Integer readonly dispid 1610743812;
    property Width: Integer readonly dispid 1610743813;
    property Height: Integer readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: PivotResultFilterAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2C8CED13-01AF-11D3-8F35-00600893B533}
// *********************************************************************//
  PivotResultFilterAxis = interface(PivotResultAxis)
    ['{2C8CED13-01AF-11D3-8F35-00600893B533}']
    function Get_SourceFilterAxis: PivotFilterAxis; safecall;
    function Get_FieldSets: PivotFieldSets; safecall;
    property SourceFilterAxis: PivotFilterAxis read Get_SourceFilterAxis;
    property FieldSets: PivotFieldSets read Get_FieldSets;
  end;

// *********************************************************************//
// DispIntf:  PivotResultFilterAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2C8CED13-01AF-11D3-8F35-00600893B533}
// *********************************************************************//
  PivotResultFilterAxisDisp = dispinterface
    ['{2C8CED13-01AF-11D3-8F35-00600893B533}']
    property SourceFilterAxis: PivotFilterAxis readonly dispid 1610809344;
    property FieldSets: PivotFieldSets readonly dispid 1610809345;
    property Data: PivotData readonly dispid 1610743808;
    property SourceAxis: PivotAxis readonly dispid 1610743809;
    property Label_: PivotResultLabel readonly dispid 1610743810;
    property Left: Integer readonly dispid 1610743811;
    property Top: Integer readonly dispid 1610743812;
    property Width: Integer readonly dispid 1610743813;
    property Height: Integer readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: PivotResultDataAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2C8CED15-01AF-11D3-8F35-00600893B533}
// *********************************************************************//
  PivotResultDataAxis = interface(PivotResultAxis)
    ['{2C8CED15-01AF-11D3-8F35-00600893B533}']
    function Get_SourceDataAxis: PivotDataAxis; safecall;
    function Get_Fields: PivotFields; safecall;
    function Get_Totals: PivotTotals; safecall;
    property SourceDataAxis: PivotDataAxis read Get_SourceDataAxis;
    property Fields: PivotFields read Get_Fields;
    property Totals: PivotTotals read Get_Totals;
  end;

// *********************************************************************//
// DispIntf:  PivotResultDataAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2C8CED15-01AF-11D3-8F35-00600893B533}
// *********************************************************************//
  PivotResultDataAxisDisp = dispinterface
    ['{2C8CED15-01AF-11D3-8F35-00600893B533}']
    property SourceDataAxis: PivotDataAxis readonly dispid 1610809344;
    property Fields: PivotFields readonly dispid 1610809345;
    property Totals: PivotTotals readonly dispid 1610809346;
    property Data: PivotData readonly dispid 1610743808;
    property SourceAxis: PivotAxis readonly dispid 1610743809;
    property Label_: PivotResultLabel readonly dispid 1610743810;
    property Left: Integer readonly dispid 1610743811;
    property Top: Integer readonly dispid 1610743812;
    property Width: Integer readonly dispid 1610743813;
    property Height: Integer readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: PivotRange
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B4A-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotRange = interface(IDispatch)
    ['{F5B39B4A-1480-11D3-8549-00C04FAC67D7}']
    function Get_TopLeft: PivotCell; safecall;
    function Get_BottomRight: PivotCell; safecall;
    function Get_RowMembers: PivotRowMembers; safecall;
    function Get_ColumnMembers: PivotColumnMembers; safecall;
    function Get_Cells(const Row: PivotRowMember; const Column: PivotColumnMember): PivotCell; safecall;
    property TopLeft: PivotCell read Get_TopLeft;
    property BottomRight: PivotCell read Get_BottomRight;
    property RowMembers: PivotRowMembers read Get_RowMembers;
    property ColumnMembers: PivotColumnMembers read Get_ColumnMembers;
    property Cells[const Row: PivotRowMember; const Column: PivotColumnMember]: PivotCell read Get_Cells;
  end;

// *********************************************************************//
// DispIntf:  PivotRangeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B4A-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PivotRangeDisp = dispinterface
    ['{F5B39B4A-1480-11D3-8549-00C04FAC67D7}']
    property TopLeft: PivotCell readonly dispid 1610743808;
    property BottomRight: PivotCell readonly dispid 1610743809;
    property RowMembers: PivotRowMembers readonly dispid 1610743810;
    property ColumnMembers: PivotColumnMembers readonly dispid 1610743811;
    property Cells[const Row: PivotRowMember; const Column: PivotColumnMember]: PivotCell readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: PivotResultLabel
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D5A2B201-0334-11D3-8F39-00600893B533}
// *********************************************************************//
  PivotResultLabel = interface(IDispatch)
    ['{D5A2B201-0334-11D3-8F39-00600893B533}']
    function Get_SourceLabel: PivotLabel; safecall;
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Width: Integer; safecall;
    function Get_Height: Integer; safecall;
    property SourceLabel: PivotLabel read Get_SourceLabel;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Width: Integer read Get_Width;
    property Height: Integer read Get_Height;
  end;

// *********************************************************************//
// DispIntf:  PivotResultLabelDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D5A2B201-0334-11D3-8F39-00600893B533}
// *********************************************************************//
  PivotResultLabelDisp = dispinterface
    ['{D5A2B201-0334-11D3-8F39-00600893B533}']
    property SourceLabel: PivotLabel readonly dispid 1610743808;
    property Top: Integer readonly dispid 1610743809;
    property Left: Integer readonly dispid 1610743810;
    property Width: Integer readonly dispid 1610743811;
    property Height: Integer readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: PivotResultPageAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2719FF1C-6999-4C17-94B3-887FCA2DCFA0}
// *********************************************************************//
  PivotResultPageAxis = interface(PivotResultGroupAxis)
    ['{2719FF1C-6999-4C17-94B3-887FCA2DCFA0}']
    function Get_SourcePageAxis: PivotGroupAxis; safecall;
    function Get_PageMember: PivotPageMember; safecall;
    property SourcePageAxis: PivotGroupAxis read Get_SourcePageAxis;
    property PageMember: PivotPageMember read Get_PageMember;
  end;

// *********************************************************************//
// DispIntf:  PivotResultPageAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2719FF1C-6999-4C17-94B3-887FCA2DCFA0}
// *********************************************************************//
  PivotResultPageAxisDisp = dispinterface
    ['{2719FF1C-6999-4C17-94B3-887FCA2DCFA0}']
    property SourcePageAxis: PivotGroupAxis readonly dispid 1610874880;
    property PageMember: PivotPageMember readonly dispid 1610874881;
    procedure GhostMethod_PivotResultGroupAxis_0_1; dispid 1610678272;
    procedure GhostMethod_PivotResultGroupAxis_4_2; dispid 1610678273;
    procedure GhostMethod_PivotResultGroupAxis_8_3; dispid 1610678274;
    procedure GhostMethod_PivotResultGroupAxis_12_4; dispid 1610678275;
    procedure GhostMethod_PivotResultGroupAxis_16_5; dispid 1610678276;
    procedure GhostMethod_PivotResultGroupAxis_20_6; dispid 1610678277;
    procedure GhostMethod_PivotResultGroupAxis_24_7; dispid 1610678278;
    procedure GhostMethod_PivotResultGroupAxis_28_8; dispid 1610678279;
    procedure GhostMethod_PivotResultGroupAxis_32_9; dispid 1610678280;
    procedure GhostMethod_PivotResultGroupAxis_36_10; dispid 1610678281;
    procedure GhostMethod_PivotResultGroupAxis_40_11; dispid 1610678282;
    procedure GhostMethod_PivotResultGroupAxis_44_12; dispid 1610678283;
    procedure GhostMethod_PivotResultGroupAxis_48_13; dispid 1610678284;
    procedure GhostMethod_PivotResultGroupAxis_52_14; dispid 1610678285;
    property Fields: PivotFields readonly dispid 1610809344;
    property GroupFields: PivotResultGroupFields readonly dispid 1610809345;
    property Member: PivotAxisMember readonly dispid 1610809346;
    property Data: PivotData readonly dispid 1610743808;
    property SourceAxis: PivotAxis readonly dispid 1610743809;
    property Label_: PivotResultLabel readonly dispid 1610743810;
    property Left: Integer readonly dispid 1610743811;
    property Top: Integer readonly dispid 1610743812;
    property Width: Integer readonly dispid 1610743813;
    property Height: Integer readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: PivotResultGroupFields
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3A3AF091-8C35-4CC7-A1F4-B70D239D773B}
// *********************************************************************//
  PivotResultGroupFields = interface(IDispatch)
    ['{3A3AF091-8C35-4CC7-A1F4-B70D239D773B}']
    function Get_Item(Index: OleVariant): PivotResultGroupField; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: OleVariant]: PivotResultGroupField read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PivotResultGroupFieldsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3A3AF091-8C35-4CC7-A1F4-B70D239D773B}
// *********************************************************************//
  PivotResultGroupFieldsDisp = dispinterface
    ['{3A3AF091-8C35-4CC7-A1F4-B70D239D773B}']
    property Item[Index: OleVariant]: PivotResultGroupField readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: Coordinate
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {08801567-AFB8-45B0-A076-CC91579EC10E}
// *********************************************************************//
  Coordinate = interface(IDispatch)
    ['{08801567-AFB8-45B0-A076-CC91579EC10E}']
    function Get_x: Integer; safecall;
    function Get_y: Integer; safecall;
    property x: Integer read Get_x;
    property y: Integer read Get_y;
  end;

// *********************************************************************//
// DispIntf:  CoordinateDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {08801567-AFB8-45B0-A076-CC91579EC10E}
// *********************************************************************//
  CoordinateDisp = dispinterface
    ['{08801567-AFB8-45B0-A076-CC91579EC10E}']
    property x: Integer readonly dispid 1610743808;
    property y: Integer readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: ChLegend
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AEC-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChLegend = interface(IDispatch)
    ['{F5B39AEC-1480-11D3-8549-00C04FAC67D7}']
    function Get_Border: ChBorder; safecall;
    function Get_Font: ChFont; safecall;
    function Get_Interior: ChInterior; safecall;
    function Get_LegendEntries: ChLegendEntries; safecall;
    function Get_Parent: IDispatch; safecall;
    procedure Set_Position(pocpPos: ChartLegendPositionEnum); safecall;
    function Get_Position: ChartLegendPositionEnum; safecall;
    procedure Select; safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Top(ptop: Integer); safecall;
    function Get_Left: Integer; safecall;
    procedure Set_Left(pleft: Integer); safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property Border: ChBorder read Get_Border;
    property Font: ChFont read Get_Font;
    property Interior: ChInterior read Get_Interior;
    property LegendEntries: ChLegendEntries read Get_LegendEntries;
    property Parent: IDispatch read Get_Parent;
    property Position: ChartLegendPositionEnum write Set_Position;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChLegendDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AEC-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChLegendDisp = dispinterface
    ['{F5B39AEC-1480-11D3-8549-00C04FAC67D7}']
    property Border: ChBorder readonly dispid 5004;
    property Font: ChFont readonly dispid 5200;
    property Interior: ChInterior readonly dispid 5007;
    property LegendEntries: ChLegendEntries readonly dispid 1610743811;
    property Parent: IDispatch readonly dispid 5201;
    property Position: ChartLegendPositionEnum writeonly dispid 1610743813;
    procedure Select; dispid 5036;
    property Top: Integer readonly dispid 1610743816;
    property Left: Integer readonly dispid 1610743818;
    property Bottom: Integer readonly dispid 1610743820;
    property Right: Integer readonly dispid 1610743821;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743822;
  end;

// *********************************************************************//
// Interface: ChLegendEntries
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB8-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChLegendEntries = interface(IDispatch)
    ['{F5B39AB8-1480-11D3-8549-00C04FAC67D7}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): ChLegendEntry; safecall;
    function Get_Parent: ChLegend; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: ChLegendEntry read Get_Item; default;
    property Parent: ChLegend read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  ChLegendEntriesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB8-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChLegendEntriesDisp = dispinterface
    ['{F5B39AB8-1480-11D3-8549-00C04FAC67D7}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1610743809;
    property Item[Index: Integer]: ChLegendEntry readonly dispid 0; default;
    property Parent: ChLegend readonly dispid 5201;
  end;

// *********************************************************************//
// Interface: ChLegendEntry
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB9-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChLegendEntry = interface(IDispatch)
    ['{F5B39AB9-1480-11D3-8549-00C04FAC67D7}']
    function Get_Font: ChFont; safecall;
    procedure Set_Visible(pfVisible: WordBool); safecall;
    function Get_Visible: WordBool; safecall;
    function Get_Index: Integer; safecall;
    function Get_Parent: ChLegend; safecall;
    procedure Select; safecall;
    function Get_PivotObject: IDispatch; safecall;
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property Font: ChFont read Get_Font;
    property Visible: WordBool write Set_Visible;
    property Index: Integer read Get_Index;
    property Parent: ChLegend read Get_Parent;
    property PivotObject: IDispatch read Get_PivotObject;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChLegendEntryDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB9-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChLegendEntryDisp = dispinterface
    ['{F5B39AB9-1480-11D3-8549-00C04FAC67D7}']
    property Font: ChFont readonly dispid 5200;
    property Visible: WordBool writeonly dispid 1610743809;
    property Index: Integer readonly dispid 5204;
    property Parent: ChLegend readonly dispid 5201;
    procedure Select; dispid 5036;
    property PivotObject: IDispatch readonly dispid 1610743814;
    property Top: Integer readonly dispid 1610743815;
    property Left: Integer readonly dispid 1610743816;
    property Bottom: Integer readonly dispid 1610743817;
    property Right: Integer readonly dispid 1610743818;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743819;
  end;

// *********************************************************************//
// Interface: ChPlotArea
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39ABA-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChPlotArea = interface(IDispatch)
    ['{F5B39ABA-1480-11D3-8549-00C04FAC67D7}']
    function Get_Border: ChBorder; safecall;
    function Get_Interior: ChInterior; safecall;
    function Get_Parent: ChChart; safecall;
    procedure FlipHorizontal; safecall;
    procedure FlipVertical; safecall;
    procedure RotateClockwise; safecall;
    procedure RotateCounterClockwise; safecall;
    procedure Select; safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Top(ptop: Integer); safecall;
    function Get_Left: Integer; safecall;
    procedure Set_Left(pleft: Integer); safecall;
    function Get_Bottom: Integer; safecall;
    procedure Set_Bottom(pbottom: Integer); safecall;
    function Get_Right: Integer; safecall;
    procedure Set_Right(pright: Integer); safecall;
    function Get_BackWall: ChSurface; safecall;
    function Get_SideWall: ChSurface; safecall;
    function Get_Floor: ChSurface; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property Border: ChBorder read Get_Border;
    property Interior: ChInterior read Get_Interior;
    property Parent: ChChart read Get_Parent;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property BackWall: ChSurface read Get_BackWall;
    property SideWall: ChSurface read Get_SideWall;
    property Floor: ChSurface read Get_Floor;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChPlotAreaDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39ABA-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChPlotAreaDisp = dispinterface
    ['{F5B39ABA-1480-11D3-8549-00C04FAC67D7}']
    property Border: ChBorder readonly dispid 5004;
    property Interior: ChInterior readonly dispid 5007;
    property Parent: ChChart readonly dispid 5201;
    procedure FlipHorizontal; dispid 1610743811;
    procedure FlipVertical; dispid 1610743812;
    procedure RotateClockwise; dispid 1610743813;
    procedure RotateCounterClockwise; dispid 1610743814;
    procedure Select; dispid 5036;
    property Top: Integer readonly dispid 1610743816;
    property Left: Integer readonly dispid 1610743818;
    property Bottom: Integer readonly dispid 1610743820;
    property Right: Integer readonly dispid 1610743822;
    property BackWall: ChSurface readonly dispid 1610743824;
    property SideWall: ChSurface readonly dispid 1610743825;
    property Floor: ChSurface readonly dispid 1610743826;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743827;
  end;

// *********************************************************************//
// Interface: ChSurface
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C592C1D2-448A-11D3-82BA-00C04F4C2A96}
// *********************************************************************//
  ChSurface = interface(IDispatch)
    ['{C592C1D2-448A-11D3-82BA-00C04F4C2A96}']
    function Get_Border: ChBorder; safecall;
    procedure Set_Thickness(pl: Integer); safecall;
    function Get_Thickness: Integer; safecall;
    function Get_Interior: ChInterior; safecall;
    procedure Select; safecall;
    function Get_Parent: ChPlotArea; safecall;
    property Border: ChBorder read Get_Border;
    property Thickness: Integer write Set_Thickness;
    property Interior: ChInterior read Get_Interior;
    property Parent: ChPlotArea read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  ChSurfaceDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C592C1D2-448A-11D3-82BA-00C04F4C2A96}
// *********************************************************************//
  ChSurfaceDisp = dispinterface
    ['{C592C1D2-448A-11D3-82BA-00C04F4C2A96}']
    property Border: ChBorder readonly dispid 5004;
    property Thickness: Integer writeonly dispid 1610743809;
    property Interior: ChInterior readonly dispid 5007;
    procedure Select; dispid 5036;
    property Parent: ChPlotArea readonly dispid 5201;
  end;

// *********************************************************************//
// Interface: ChSeriesCollection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39ABD-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChSeriesCollection = interface(IDispatch)
    ['{F5B39ABD-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): ChSeries; safecall;
    function Get_Parent: ChChart; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Add(Index: Integer): ChSeries; safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Get_PivotAxis: PivotResultGroupAxis; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: ChSeries read Get_Item; default;
    property Parent: ChChart read Get_Parent;
    property _NewEnum: IUnknown read Get__NewEnum;
    property PivotAxis: PivotResultGroupAxis read Get_PivotAxis;
  end;

// *********************************************************************//
// DispIntf:  ChSeriesCollectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39ABD-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChSeriesCollectionDisp = dispinterface
    ['{F5B39ABD-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1610743808;
    property Item[Index: OleVariant]: ChSeries readonly dispid 0; default;
    property Parent: ChChart readonly dispid 5201;
    property _NewEnum: IUnknown readonly dispid -4;
    function Add(Index: Integer): ChSeries; dispid 1610743812;
    procedure Delete(Index: OleVariant); dispid 5202;
    property PivotAxis: PivotResultGroupAxis readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: ChSeries
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC1-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChSeries = interface(IDispatch)
    ['{F5B39AC1-1480-11D3-8549-00C04FAC67D7}']
    function Get_Border: ChBorder; safecall;
    function Get_DataLabelsCollection: ChDataLabelsCollection; safecall;
    function Get_Points: ChPoints; safecall;
    procedure Set_Caption(const pbstr: WideString); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Explosion(pl: Integer); safecall;
    function Get_Explosion: Integer; safecall;
    procedure Set_Thickness(pl: Integer); safecall;
    function Get_Thickness: Integer; safecall;
    function Get_ErrorBarsCollection: ChErrorBarsCollection; safecall;
    function Get_Index: Integer; safecall;
    function Get_Interior: ChInterior; safecall;
    function Get_Line: ChLine; safecall;
    function Get_Marker: ChMarker; safecall;
    function Get_Parent: ChChart; safecall;
    procedure Set_Name(const pbstr: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_Scalings(Dimension: ChartDimensionsEnum): ChScaling; safecall;
    function Get_Trendlines: ChTrendlines; safecall;
    procedure Set_type_(pocpGT: ChartChartTypeEnum); safecall;
    function Get_type_: ChartChartTypeEnum; safecall;
    procedure SetData(Dimension: ChartDimensionsEnum; DataSourceIndex: Integer; 
                      DataReference: OleVariant); safecall;
    function GetDataReference(Dimension: ChartDimensionsEnum): WideString; safecall;
    function GetDataSourceIndex(Dimension: ChartDimensionsEnum): Integer; safecall;
    procedure GetData(Dimension: ChartDimensionsEnum; out DataSourceIndex: OleVariant; 
                      out DataReference: OleVariant); safecall;
    procedure Select; safecall;
    procedure Set_Index(pIndex: Integer); safecall;
    procedure Ungroup(UseNewScaling: WordBool); safecall;
    procedure Group(const Series: ChSeries); safecall;
    procedure Set_ZOrder(pzorder: Integer); safecall;
    function Get_ZOrder: Integer; safecall;
    function Get_PivotObject: IDispatch; safecall;
    procedure Set_GapWidth(plGapWidth: Integer); safecall;
    function Get_GapWidth: Integer; safecall;
    procedure Set_Overlap(plOverlap: Integer); safecall;
    function Get_Overlap: Integer; safecall;
    function Get_FormatMap: ChFormatMap; safecall;
    procedure Set_TipText(const pbstr: WideString); safecall;
    function Get_TipText: WideString; safecall;
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_LayerIndex: Integer; safecall;
    function ValueToPoint(xvalue: OleVariant; yvalue: OleVariant; zvalue: OleVariant): Coordinate; safecall;
    function Get_TypeFlags: SYSINT; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property Border: ChBorder read Get_Border;
    property DataLabelsCollection: ChDataLabelsCollection read Get_DataLabelsCollection;
    property Points: ChPoints read Get_Points;
    property Caption: WideString write Set_Caption;
    property Explosion: Integer write Set_Explosion;
    property Thickness: Integer write Set_Thickness;
    property ErrorBarsCollection: ChErrorBarsCollection read Get_ErrorBarsCollection;
    property Index: Integer read Get_Index write Set_Index;
    property Interior: ChInterior read Get_Interior;
    property Line: ChLine read Get_Line;
    property Marker: ChMarker read Get_Marker;
    property Parent: ChChart read Get_Parent;
    property Name: WideString write Set_Name;
    property Scalings[Dimension: ChartDimensionsEnum]: ChScaling read Get_Scalings;
    property Trendlines: ChTrendlines read Get_Trendlines;
    property type_: ChartChartTypeEnum write Set_type_;
    property ZOrder: Integer write Set_ZOrder;
    property PivotObject: IDispatch read Get_PivotObject;
    property GapWidth: Integer write Set_GapWidth;
    property Overlap: Integer write Set_Overlap;
    property FormatMap: ChFormatMap read Get_FormatMap;
    property TipText: WideString write Set_TipText;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property LayerIndex: Integer read Get_LayerIndex;
    property TypeFlags: SYSINT read Get_TypeFlags;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChSeriesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC1-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChSeriesDisp = dispinterface
    ['{F5B39AC1-1480-11D3-8549-00C04FAC67D7}']
    property Border: ChBorder readonly dispid 5004;
    property DataLabelsCollection: ChDataLabelsCollection readonly dispid 1610743809;
    property Points: ChPoints readonly dispid 1610743810;
    property Caption: WideString writeonly dispid 1610743811;
    property Explosion: Integer writeonly dispid 1610743813;
    property Thickness: Integer writeonly dispid 1610743815;
    property ErrorBarsCollection: ChErrorBarsCollection readonly dispid 1610743817;
    property Index: Integer dispid 5204;
    property Interior: ChInterior readonly dispid 5007;
    property Line: ChLine readonly dispid 5205;
    property Marker: ChMarker readonly dispid 1610743821;
    property Parent: ChChart readonly dispid 5201;
    property Name: WideString writeonly dispid 1610743823;
    property Scalings[Dimension: ChartDimensionsEnum]: ChScaling readonly dispid 1610743825;
    property Trendlines: ChTrendlines readonly dispid 1610743826;
    property type_: ChartChartTypeEnum writeonly dispid 1610743827;
    procedure SetData(Dimension: ChartDimensionsEnum; DataSourceIndex: Integer; 
                      DataReference: OleVariant); dispid 1610743829;
    function GetDataReference(Dimension: ChartDimensionsEnum): WideString; dispid 1610743830;
    function GetDataSourceIndex(Dimension: ChartDimensionsEnum): Integer; dispid 1610743831;
    procedure GetData(Dimension: ChartDimensionsEnum; out DataSourceIndex: OleVariant; 
                      out DataReference: OleVariant); dispid 1610743832;
    procedure Select; dispid 5036;
    procedure Ungroup(UseNewScaling: WordBool); dispid 1610743835;
    procedure Group(const Series: ChSeries); dispid 1610743836;
    property ZOrder: Integer writeonly dispid 1610743837;
    property PivotObject: IDispatch readonly dispid 1610743839;
    property GapWidth: Integer writeonly dispid 1610743840;
    property Overlap: Integer writeonly dispid 1610743842;
    property FormatMap: ChFormatMap readonly dispid 1610743844;
    property TipText: WideString writeonly dispid 1610743845;
    property Top: Integer readonly dispid 1610743847;
    property Left: Integer readonly dispid 1610743848;
    property Bottom: Integer readonly dispid 1610743849;
    property Right: Integer readonly dispid 1610743850;
    property LayerIndex: Integer readonly dispid 1610743851;
    function ValueToPoint(xvalue: OleVariant; yvalue: OleVariant; zvalue: OleVariant): Coordinate; dispid 1610743852;
    property TypeFlags: SYSINT readonly dispid 1610743853;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743854;
  end;

// *********************************************************************//
// Interface: ChDataLabelsCollection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A71-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChDataLabelsCollection = interface(IDispatch)
    ['{F5B39A71-1480-11D3-8549-00C04FAC67D7}']
    function Get_Parent: ChSeries; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): ChDataLabels; safecall;
    function Get_Count: Integer; safecall;
    function Add: ChDataLabels; safecall;
    procedure Delete(Index: Integer); safecall;
    property Parent: ChSeries read Get_Parent;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: ChDataLabels read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ChDataLabelsCollectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A71-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChDataLabelsCollectionDisp = dispinterface
    ['{F5B39A71-1480-11D3-8549-00C04FAC67D7}']
    property Parent: ChSeries readonly dispid 5201;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: ChDataLabels readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743811;
    function Add: ChDataLabels; dispid 1610743812;
    procedure Delete(Index: Integer); dispid 5202;
  end;

// *********************************************************************//
// Interface: ChDataLabels
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC2-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChDataLabels = interface(IDispatch)
    ['{F5B39AC2-1480-11D3-8549-00C04FAC67D7}']
    function Get_Border: ChBorder; safecall;
    function Get_Font: ChFont; safecall;
    procedure Set_HasBubbleSize(pfHasBubbleSize: WordBool); safecall;
    function Get_HasBubbleSize: WordBool; safecall;
    procedure Set_HasCategoryName(pfHasCategoryName: WordBool); safecall;
    function Get_HasCategoryName: WordBool; safecall;
    procedure Set_HasPercentage(pfHasPercentage: WordBool); safecall;
    function Get_HasPercentage: WordBool; safecall;
    procedure Set_HasSeriesName(pfHasSeriesName: WordBool); safecall;
    function Get_HasSeriesName: WordBool; safecall;
    procedure Set_HasValue(pfHasValue: WordBool); safecall;
    function Get_HasValue: WordBool; safecall;
    function Get_Interior: ChInterior; safecall;
    procedure Set_NumberFormat(const pbstrNumberFormat: WideString); safecall;
    function Get_NumberFormat: WideString; safecall;
    function Get_Parent: ChSeries; safecall;
    procedure Set_Position(pocpDLP: ChartDataLabelPositionEnum); safecall;
    function Get_Position: ChartDataLabelPositionEnum; safecall;
    procedure Set_Separator(const pbstrSeperator: WideString); safecall;
    function Get_Separator: WideString; safecall;
    procedure Select; safecall;
    function Get_Index: Integer; safecall;
    function Get_Item(Index: Integer): ChDataLabel; safecall;
    function Get_Count: Integer; safecall;
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property Border: ChBorder read Get_Border;
    property Font: ChFont read Get_Font;
    property HasBubbleSize: WordBool write Set_HasBubbleSize;
    property HasCategoryName: WordBool write Set_HasCategoryName;
    property HasPercentage: WordBool write Set_HasPercentage;
    property HasSeriesName: WordBool write Set_HasSeriesName;
    property HasValue: WordBool write Set_HasValue;
    property Interior: ChInterior read Get_Interior;
    property NumberFormat: WideString read Get_NumberFormat write Set_NumberFormat;
    property Parent: ChSeries read Get_Parent;
    property Position: ChartDataLabelPositionEnum write Set_Position;
    property Separator: WideString write Set_Separator;
    property Index: Integer read Get_Index;
    property Item[Index: Integer]: ChDataLabel read Get_Item; default;
    property Count: Integer read Get_Count;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChDataLabelsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC2-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChDataLabelsDisp = dispinterface
    ['{F5B39AC2-1480-11D3-8549-00C04FAC67D7}']
    property Border: ChBorder readonly dispid 5004;
    property Font: ChFont readonly dispid 5200;
    property HasBubbleSize: WordBool writeonly dispid 1610743810;
    property HasCategoryName: WordBool writeonly dispid 1610743812;
    property HasPercentage: WordBool writeonly dispid 1610743814;
    property HasSeriesName: WordBool writeonly dispid 1610743816;
    property HasValue: WordBool writeonly dispid 1610743818;
    property Interior: ChInterior readonly dispid 5007;
    property NumberFormat: WideString dispid 5203;
    property Parent: ChSeries readonly dispid 5201;
    property Position: ChartDataLabelPositionEnum writeonly dispid 1610743824;
    property Separator: WideString writeonly dispid 1610743826;
    procedure Select; dispid 5036;
    property Index: Integer readonly dispid 5204;
    property Item[Index: Integer]: ChDataLabel readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743831;
    property Top: Integer readonly dispid 1610743832;
    property Left: Integer readonly dispid 1610743833;
    property Bottom: Integer readonly dispid 1610743834;
    property Right: Integer readonly dispid 1610743835;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743836;
  end;

// *********************************************************************//
// Interface: ChDataLabel
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE8-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChDataLabel = interface(IDispatch)
    ['{F5B39AE8-1480-11D3-8549-00C04FAC67D7}']
    function Get_Font: ChFont; safecall;
    function Get_Interior: ChInterior; safecall;
    function Get_Border: ChBorder; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(pfVisible: WordBool); safecall;
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    procedure Select; safecall;
    function Get_Parent: ChDataLabels; safecall;
    function Get_Index: Integer; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property Font: ChFont read Get_Font;
    property Interior: ChInterior read Get_Interior;
    property Border: ChBorder read Get_Border;
    property Visible: WordBool read Get_Visible;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property Parent: ChDataLabels read Get_Parent;
    property Index: Integer read Get_Index;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChDataLabelDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE8-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChDataLabelDisp = dispinterface
    ['{F5B39AE8-1480-11D3-8549-00C04FAC67D7}']
    property Font: ChFont readonly dispid 5200;
    property Interior: ChInterior readonly dispid 5007;
    property Border: ChBorder readonly dispid 5004;
    property Visible: WordBool readonly dispid 1610743811;
    property Top: Integer readonly dispid 1610743813;
    property Left: Integer readonly dispid 1610743814;
    property Bottom: Integer readonly dispid 1610743815;
    property Right: Integer readonly dispid 1610743816;
    procedure Select; dispid 5036;
    property Parent: ChDataLabels readonly dispid 5201;
    property Index: Integer readonly dispid 5204;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743820;
  end;

// *********************************************************************//
// Interface: ChPoints
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AEA-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChPoints = interface(IDispatch)
    ['{F5B39AEA-1480-11D3-8549-00C04FAC67D7}']
    function Get_Parent: ChSeries; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): ChPoint; safecall;
    function Get_Count: Integer; safecall;
    property Parent: ChSeries read Get_Parent;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: ChPoint read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ChPointsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AEA-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChPointsDisp = dispinterface
    ['{F5B39AEA-1480-11D3-8549-00C04FAC67D7}']
    property Parent: ChSeries readonly dispid 5201;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: ChPoint readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743811;
  end;

// *********************************************************************//
// Interface: ChPoint
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE9-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChPoint = interface(IDispatch)
    ['{F5B39AE9-1480-11D3-8549-00C04FAC67D7}']
    function Get_Border: ChBorder; safecall;
    procedure Set_Explosion(pExplode: Integer); safecall;
    function Get_Explosion: Integer; safecall;
    function Get_Interior: ChInterior; safecall;
    function Get_Parent: ChSeries; safecall;
    function Get_Index: Integer; safecall;
    procedure Select; safecall;
    function GetValue(Dimension: ChartDimensionsEnum; scaled: OleVariant): OleVariant; safecall;
    function Get_Line: ChLine; safecall;
    function Get_PivotObject(Dimension: ChartDimensionsEnum): IDispatch; safecall;
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property Border: ChBorder read Get_Border;
    property Explosion: Integer write Set_Explosion;
    property Interior: ChInterior read Get_Interior;
    property Parent: ChSeries read Get_Parent;
    property Index: Integer read Get_Index;
    property Line: ChLine read Get_Line;
    property PivotObject[Dimension: ChartDimensionsEnum]: IDispatch read Get_PivotObject;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChPointDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE9-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChPointDisp = dispinterface
    ['{F5B39AE9-1480-11D3-8549-00C04FAC67D7}']
    property Border: ChBorder readonly dispid 5004;
    property Explosion: Integer writeonly dispid 1610743809;
    property Interior: ChInterior readonly dispid 5007;
    property Parent: ChSeries readonly dispid 5201;
    property Index: Integer readonly dispid 5204;
    procedure Select; dispid 5036;
    function GetValue(Dimension: ChartDimensionsEnum; scaled: OleVariant): OleVariant; dispid 1610743815;
    property Line: ChLine readonly dispid 5205;
    property PivotObject[Dimension: ChartDimensionsEnum]: IDispatch readonly dispid 1610743817;
    property Top: Integer readonly dispid 1610743818;
    property Left: Integer readonly dispid 1610743819;
    property Bottom: Integer readonly dispid 1610743820;
    property Right: Integer readonly dispid 1610743821;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743822;
  end;

// *********************************************************************//
// Interface: ChErrorBarsCollection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB7-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChErrorBarsCollection = interface(IDispatch)
    ['{F5B39AB7-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): ChErrorBars; safecall;
    function Get_Parent: ChSeries; safecall;
    function Add: ChErrorBars; safecall;
    procedure Delete(Index: Integer); safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: ChErrorBars read Get_Item; default;
    property Parent: ChSeries read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  ChErrorBarsCollectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB7-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChErrorBarsCollectionDisp = dispinterface
    ['{F5B39AB7-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1610743808;
    property Item[Index: Integer]: ChErrorBars readonly dispid 0; default;
    property Parent: ChSeries readonly dispid 5201;
    function Add: ChErrorBars; dispid 1610743811;
    procedure Delete(Index: Integer); dispid 5202;
  end;

// *********************************************************************//
// Interface: ChErrorBars
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AEB-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChErrorBars = interface(IDispatch)
    ['{F5B39AEB-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_EndStyle(pocpESC: ChartEndStyleEnum); safecall;
    function Get_EndStyle: ChartEndStyleEnum; safecall;
    procedure Set_Direction(pocpdir: ChartErrorBarDirectionEnum); safecall;
    function Get_Direction: ChartErrorBarDirectionEnum; safecall;
    function Get_Index: Integer; safecall;
    function Get_Line: ChLine; safecall;
    function Get_Parent: ChSeries; safecall;
    procedure Set_Amount(pramount: Double); safecall;
    function Get_Amount: Double; safecall;
    procedure Set_Include(pocpEBI: ChartErrorBarIncludeEnum); safecall;
    function Get_Include: ChartErrorBarIncludeEnum; safecall;
    procedure Set_type_(pocpEBT: ChartErrorBarTypeEnum); safecall;
    function Get_type_: ChartErrorBarTypeEnum; safecall;
    procedure SetData(Dimension: ChartErrorBarCustomValuesEnum; DataSourceIndex: Integer; 
                      DataReference: OleVariant); safecall;
    function GetDataReference(ErrorBarDirection: ChartErrorBarCustomValuesEnum): WideString; safecall;
    function GetDataSourceIndex(ErrorBarDirection: ChartErrorBarCustomValuesEnum): Integer; safecall;
    procedure GetData(ErrorBarDirection: ChartErrorBarCustomValuesEnum; 
                      out DataSourceIndex: OleVariant; out DataReference: OleVariant); safecall;
    procedure Select; safecall;
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property EndStyle: ChartEndStyleEnum write Set_EndStyle;
    property Direction: ChartErrorBarDirectionEnum write Set_Direction;
    property Index: Integer read Get_Index;
    property Line: ChLine read Get_Line;
    property Parent: ChSeries read Get_Parent;
    property Amount: Double write Set_Amount;
    property Include: ChartErrorBarIncludeEnum write Set_Include;
    property type_: ChartErrorBarTypeEnum write Set_type_;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChErrorBarsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AEB-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChErrorBarsDisp = dispinterface
    ['{F5B39AEB-1480-11D3-8549-00C04FAC67D7}']
    property EndStyle: ChartEndStyleEnum writeonly dispid 1610743808;
    property Direction: ChartErrorBarDirectionEnum writeonly dispid 1610743810;
    property Index: Integer readonly dispid 5204;
    property Line: ChLine readonly dispid 5205;
    property Parent: ChSeries readonly dispid 5201;
    property Amount: Double writeonly dispid 1610743815;
    property Include: ChartErrorBarIncludeEnum writeonly dispid 1610743817;
    property type_: ChartErrorBarTypeEnum writeonly dispid 1610743819;
    procedure SetData(Dimension: ChartErrorBarCustomValuesEnum; DataSourceIndex: Integer; 
                      DataReference: OleVariant); dispid 1610743821;
    function GetDataReference(ErrorBarDirection: ChartErrorBarCustomValuesEnum): WideString; dispid 1610743822;
    function GetDataSourceIndex(ErrorBarDirection: ChartErrorBarCustomValuesEnum): Integer; dispid 1610743823;
    procedure GetData(ErrorBarDirection: ChartErrorBarCustomValuesEnum; 
                      out DataSourceIndex: OleVariant; out DataReference: OleVariant); dispid 1610743824;
    procedure Select; dispid 5036;
    property Top: Integer readonly dispid 1610743826;
    property Left: Integer readonly dispid 1610743827;
    property Bottom: Integer readonly dispid 1610743828;
    property Right: Integer readonly dispid 1610743829;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743830;
  end;

// *********************************************************************//
// Interface: ChMarker
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39ABC-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChMarker = interface(IDispatch)
    ['{F5B39ABC-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_Style(plStyle: ChartMarkerStyleEnum); safecall;
    function Get_Style: ChartMarkerStyleEnum; safecall;
    procedure Set_Size(plSize: Integer); safecall;
    function Get_Size: Integer; safecall;
    property Style: ChartMarkerStyleEnum write Set_Style;
    property Size: Integer write Set_Size;
  end;

// *********************************************************************//
// DispIntf:  ChMarkerDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39ABC-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChMarkerDisp = dispinterface
    ['{F5B39ABC-1480-11D3-8549-00C04FAC67D7}']
    property Style: ChartMarkerStyleEnum writeonly dispid 1610743808;
    property Size: Integer writeonly dispid 1610743810;
  end;

// *********************************************************************//
// Interface: ChTrendlines
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC0-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChTrendlines = interface(IDispatch)
    ['{F5B39AC0-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): ChTrendline; safecall;
    function Get_Parent: ChSeries; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Add: ChTrendline; safecall;
    procedure Delete(Index: Integer); safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: ChTrendline read Get_Item; default;
    property Parent: ChSeries read Get_Parent;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  ChTrendlinesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC0-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChTrendlinesDisp = dispinterface
    ['{F5B39AC0-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1610743808;
    property Item[Index: Integer]: ChTrendline readonly dispid 0; default;
    property Parent: ChSeries readonly dispid 5201;
    property _NewEnum: IUnknown readonly dispid -4;
    function Add: ChTrendline; dispid 1610743812;
    procedure Delete(Index: Integer); dispid 5202;
  end;

// *********************************************************************//
// Interface: ChTrendline
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39ABF-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChTrendline = interface(IDispatch)
    ['{F5B39ABF-1480-11D3-8549-00C04FAC67D7}']
    function Get_DataLabel: ChDataLabel; safecall;
    function Get_Index: Integer; safecall;
    procedure Set_IsDisplayingEquation(pfIsDisplEquation: WordBool); safecall;
    function Get_IsDisplayingEquation: WordBool; safecall;
    procedure Set_IsDisplayingRSquared(pfIsDisplRSquared: WordBool); safecall;
    function Get_IsDisplayingRSquared: WordBool; safecall;
    function Get_Line: ChLine; safecall;
    procedure Set_Order(plOrder: Integer); safecall;
    function Get_Order: Integer; safecall;
    procedure Set_Period(plPeriod: Integer); safecall;
    function Get_Period: Integer; safecall;
    function Get_Parent: ChSeries; safecall;
    procedure Set_type_(pocpTT: ChartTrendlineTypeEnum); safecall;
    function Get_type_: ChartTrendlineTypeEnum; safecall;
    procedure Set_Caption(const pbstr: WideString); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_HasAutoCaption(pfAuto: WordBool); safecall;
    function Get_HasAutoCaption: WordBool; safecall;
    procedure Select; safecall;
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property DataLabel: ChDataLabel read Get_DataLabel;
    property Index: Integer read Get_Index;
    property IsDisplayingEquation: WordBool write Set_IsDisplayingEquation;
    property IsDisplayingRSquared: WordBool write Set_IsDisplayingRSquared;
    property Line: ChLine read Get_Line;
    property Order: Integer write Set_Order;
    property Period: Integer write Set_Period;
    property Parent: ChSeries read Get_Parent;
    property type_: ChartTrendlineTypeEnum write Set_type_;
    property Caption: WideString write Set_Caption;
    property HasAutoCaption: WordBool write Set_HasAutoCaption;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChTrendlineDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39ABF-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ChTrendlineDisp = dispinterface
    ['{F5B39ABF-1480-11D3-8549-00C04FAC67D7}']
    property DataLabel: ChDataLabel readonly dispid 1610743808;
    property Index: Integer readonly dispid 5204;
    property IsDisplayingEquation: WordBool writeonly dispid 1610743810;
    property IsDisplayingRSquared: WordBool writeonly dispid 1610743812;
    property Line: ChLine readonly dispid 5205;
    property Order: Integer writeonly dispid 1610743815;
    property Period: Integer writeonly dispid 1610743817;
    property Parent: ChSeries readonly dispid 5201;
    property type_: ChartTrendlineTypeEnum writeonly dispid 1610743820;
    property Caption: WideString writeonly dispid 1610743822;
    property HasAutoCaption: WordBool writeonly dispid 1610743824;
    procedure Select; dispid 5036;
    property Top: Integer readonly dispid 1610743827;
    property Left: Integer readonly dispid 1610743828;
    property Bottom: Integer readonly dispid 1610743829;
    property Right: Integer readonly dispid 1610743830;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743831;
  end;

// *********************************************************************//
// Interface: ChFormatMap
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BEAE3F40-6FB5-11D2-A8FF-00C04FAC6830}
// *********************************************************************//
  ChFormatMap = interface(IDispatch)
    ['{BEAE3F40-6FB5-11D2-A8FF-00C04FAC6830}']
    function Get_Segments: ChSegments; safecall;
    property Segments: ChSegments read Get_Segments;
  end;

// *********************************************************************//
// DispIntf:  ChFormatMapDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BEAE3F40-6FB5-11D2-A8FF-00C04FAC6830}
// *********************************************************************//
  ChFormatMapDisp = dispinterface
    ['{BEAE3F40-6FB5-11D2-A8FF-00C04FAC6830}']
    property Segments: ChSegments readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: ChSegments
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BEAE3F41-6FB5-11D2-A8FF-00C04FAC6830}
// *********************************************************************//
  ChSegments = interface(IDispatch)
    ['{BEAE3F41-6FB5-11D2-A8FF-00C04FAC6830}']
    function Get_Count: Integer; safecall;
    function Get_Parent: ChFormatMap; safecall;
    function Add: ChSegment; safecall;
    procedure Delete(Index: Integer); safecall;
    function Get_Item(Index: Integer): ChSegment; safecall;
    property Count: Integer read Get_Count;
    property Parent: ChFormatMap read Get_Parent;
    property Item[Index: Integer]: ChSegment read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ChSegmentsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BEAE3F41-6FB5-11D2-A8FF-00C04FAC6830}
// *********************************************************************//
  ChSegmentsDisp = dispinterface
    ['{BEAE3F41-6FB5-11D2-A8FF-00C04FAC6830}']
    property Count: Integer readonly dispid 1610743808;
    property Parent: ChFormatMap readonly dispid 5201;
    function Add: ChSegment; dispid 1610743810;
    procedure Delete(Index: Integer); dispid 5202;
    property Item[Index: Integer]: ChSegment readonly dispid 0; default;
  end;

// *********************************************************************//
// Interface: ChSegment
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EB509C25-4748-4D52-A6FE-137BA0642027}
// *********************************************************************//
  ChSegment = interface(IDispatch)
    ['{EB509C25-4748-4D52-A6FE-137BA0642027}']
    function Get_Begin_: ChSegmentBoundary; safecall;
    function Get_End_: ChSegmentBoundary; safecall;
    function Get_HasAbsoluteLabels: WordBool; safecall;
    procedure Set_HasAbsoluteLabels(pfAbsolute: WordBool); safecall;
    function Get_HasDiscreteDivisions: WordBool; safecall;
    procedure Set_HasDiscreteDivisions(pfDiscrete: WordBool); safecall;
    function Get_HasAutoDivisions: WordBool; safecall;
    procedure Set_HasAutoDivisions(pfAuto: WordBool); safecall;
    function Get_Divisions: Integer; safecall;
    procedure Set_Divisions(pDivisions: Integer); safecall;
    property Begin_: ChSegmentBoundary read Get_Begin_;
    property End_: ChSegmentBoundary read Get_End_;
    property HasAbsoluteLabels: WordBool read Get_HasAbsoluteLabels;
    property HasDiscreteDivisions: WordBool read Get_HasDiscreteDivisions;
    property HasAutoDivisions: WordBool read Get_HasAutoDivisions;
    property Divisions: Integer read Get_Divisions;
  end;

// *********************************************************************//
// DispIntf:  ChSegmentDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EB509C25-4748-4D52-A6FE-137BA0642027}
// *********************************************************************//
  ChSegmentDisp = dispinterface
    ['{EB509C25-4748-4D52-A6FE-137BA0642027}']
    property Begin_: ChSegmentBoundary readonly dispid 1610743808;
    property End_: ChSegmentBoundary readonly dispid 1610743809;
    property HasAbsoluteLabels: WordBool readonly dispid 1610743810;
    property HasDiscreteDivisions: WordBool readonly dispid 1610743812;
    property HasAutoDivisions: WordBool readonly dispid 1610743814;
    property Divisions: Integer readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: ChSegmentBoundary
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {186FEDB0-6FB6-11D2-A8FF-00C04FAC6830}
// *********************************************************************//
  ChSegmentBoundary = interface(IDispatch)
    ['{186FEDB0-6FB6-11D2-A8FF-00C04FAC6830}']
    function Get_Border: ChBorder; safecall;
    function Get_Interior: ChInterior; safecall;
    function Get_Line: ChLine; safecall;
    function Get_Value: Double; safecall;
    procedure Set_Value(prvalue: Double); safecall;
    function Get_ValueType: ChartBoundaryValueTypeEnum; safecall;
    procedure Set_ValueType(pvt: ChartBoundaryValueTypeEnum); safecall;
    property Border: ChBorder read Get_Border;
    property Interior: ChInterior read Get_Interior;
    property Line: ChLine read Get_Line;
    property Value: Double read Get_Value;
    property ValueType: ChartBoundaryValueTypeEnum read Get_ValueType;
  end;

// *********************************************************************//
// DispIntf:  ChSegmentBoundaryDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {186FEDB0-6FB6-11D2-A8FF-00C04FAC6830}
// *********************************************************************//
  ChSegmentBoundaryDisp = dispinterface
    ['{186FEDB0-6FB6-11D2-A8FF-00C04FAC6830}']
    property Border: ChBorder readonly dispid 5004;
    property Interior: ChInterior readonly dispid 1610743809;
    property Line: ChLine readonly dispid 1610743810;
    property Value: Double readonly dispid 1610743811;
    property ValueType: ChartBoundaryValueTypeEnum readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: ChDropZone
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F0706B76-6BB3-11D3-A18A-00C04F612970}
// *********************************************************************//
  ChDropZone = interface(IDispatch)
    ['{F0706B76-6BB3-11D3-A18A-00C04F612970}']
    function Get_ButtonFont: ChFont; safecall;
    function Get_ButtonInterior: ChInterior; safecall;
    function Get_ButtonBorder: ChBorder; safecall;
    function Get_WatermarkFont: ChFont; safecall;
    function Get_WatermarkInterior: ChInterior; safecall;
    function Get_WatermarkBorder: ChBorder; safecall;
    function Get_ChartFields: ChChartFields; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Top(ptop: Integer); safecall;
    function Get_Left: Integer; safecall;
    procedure Set_Left(pleft: Integer); safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_Index: ChartDropZonesEnum; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property ButtonFont: ChFont read Get_ButtonFont;
    property ButtonInterior: ChInterior read Get_ButtonInterior;
    property ButtonBorder: ChBorder read Get_ButtonBorder;
    property WatermarkFont: ChFont read Get_WatermarkFont;
    property WatermarkInterior: ChInterior read Get_WatermarkInterior;
    property WatermarkBorder: ChBorder read Get_WatermarkBorder;
    property ChartFields: ChChartFields read Get_ChartFields;
    property Parent: IDispatch read Get_Parent;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property Index: ChartDropZonesEnum read Get_Index;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChDropZoneDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F0706B76-6BB3-11D3-A18A-00C04F612970}
// *********************************************************************//
  ChDropZoneDisp = dispinterface
    ['{F0706B76-6BB3-11D3-A18A-00C04F612970}']
    property ButtonFont: ChFont readonly dispid 5200;
    property ButtonInterior: ChInterior readonly dispid 5007;
    property ButtonBorder: ChBorder readonly dispid 5004;
    property WatermarkFont: ChFont readonly dispid 1610743811;
    property WatermarkInterior: ChInterior readonly dispid 1610743812;
    property WatermarkBorder: ChBorder readonly dispid 1610743813;
    property ChartFields: ChChartFields readonly dispid 1610743814;
    property Parent: IDispatch readonly dispid 5201;
    property Top: Integer readonly dispid 1610743816;
    property Left: Integer readonly dispid 1610743818;
    property Bottom: Integer readonly dispid 1610743820;
    property Right: Integer readonly dispid 1610743821;
    property Index: ChartDropZonesEnum readonly dispid 5204;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743823;
  end;

// *********************************************************************//
// Interface: ChChartFields
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BB4C16FA-6BEC-11D3-A18A-00C04F612970}
// *********************************************************************//
  ChChartFields = interface(IDispatch)
    ['{BB4C16FA-6BEC-11D3-A18A-00C04F612970}']
    function Get_Item(Index: Integer): ChChartField; safecall;
    function Get_Count: Integer; safecall;
    function Get_Parent: ChDropZone; safecall;
    property Item[Index: Integer]: ChChartField read Get_Item; default;
    property Count: Integer read Get_Count;
    property Parent: ChDropZone read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  ChChartFieldsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BB4C16FA-6BEC-11D3-A18A-00C04F612970}
// *********************************************************************//
  ChChartFieldsDisp = dispinterface
    ['{BB4C16FA-6BEC-11D3-A18A-00C04F612970}']
    property Item[Index: Integer]: ChChartField readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    property Parent: ChDropZone readonly dispid 5201;
  end;

// *********************************************************************//
// Interface: ChChartField
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D7842C36-6BEC-11D3-A18A-00C04F612970}
// *********************************************************************//
  ChChartField = interface(IDispatch)
    ['{D7842C36-6BEC-11D3-A18A-00C04F612970}']
    function Get_PivotObject: IDispatch; safecall;
    function Get_Parent: ChDropZone; safecall;
    procedure Select; safecall;
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Bottom: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_ObjectType: ChartSelectionsEnum; safecall;
    property PivotObject: IDispatch read Get_PivotObject;
    property Parent: ChDropZone read Get_Parent;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Bottom: Integer read Get_Bottom;
    property Right: Integer read Get_Right;
    property ObjectType: ChartSelectionsEnum read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  ChChartFieldDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D7842C36-6BEC-11D3-A18A-00C04F612970}
// *********************************************************************//
  ChChartFieldDisp = dispinterface
    ['{D7842C36-6BEC-11D3-A18A-00C04F612970}']
    property PivotObject: IDispatch readonly dispid 1610743808;
    property Parent: ChDropZone readonly dispid 5201;
    procedure Select; dispid 5036;
    property Top: Integer readonly dispid 1610743811;
    property Left: Integer readonly dispid 1610743812;
    property Bottom: Integer readonly dispid 1610743813;
    property Right: Integer readonly dispid 1610743814;
    property ObjectType: ChartSelectionsEnum readonly dispid 1610743815;
  end;

// *********************************************************************//
// Interface: OWCLanguageSettings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6F5A76C3-0AC7-4DED-9A6B-A3547FD7B7BB}
// *********************************************************************//
  OWCLanguageSettings = interface(IDispatch)
    ['{6F5A76C3-0AC7-4DED-9A6B-A3547FD7B7BB}']
    function Get_Application: IDispatch; safecall;
    function Get_LanguageID(id: MsoAppLanguageID): Integer; safecall;
    function Get_LanguagePreferredForEditing(lid: MsoLanguageID): WordBool; safecall;
    property Application: IDispatch read Get_Application;
    property LanguageID[id: MsoAppLanguageID]: Integer read Get_LanguageID;
    property LanguagePreferredForEditing[lid: MsoLanguageID]: WordBool read Get_LanguagePreferredForEditing;
  end;

// *********************************************************************//
// DispIntf:  OWCLanguageSettingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6F5A76C3-0AC7-4DED-9A6B-A3547FD7B7BB}
// *********************************************************************//
  OWCLanguageSettingsDisp = dispinterface
    ['{6F5A76C3-0AC7-4DED-9A6B-A3547FD7B7BB}']
    property Application: IDispatch readonly dispid 1610743808;
    property LanguageID[id: MsoAppLanguageID]: Integer readonly dispid 1610743809;
    property LanguagePreferredForEditing[lid: MsoLanguageID]: WordBool readonly dispid 1610743810;
  end;

// *********************************************************************//
// DispIntf:  ISpreadsheetEventSink
// Flags:     (4096) Dispatchable
// GUID:      {F5B39A75-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ISpreadsheetEventSink = dispinterface
    ['{F5B39A75-1480-11D3-8549-00C04FAC67D7}']
    procedure BeforeContextMenu(x: Integer; y: Integer; const Menu: ByRef; const Cancel: ByRef); dispid 1011;
    procedure BeforeKeyDown(KeyCode: Integer; Shift: Integer; const Cancel: ByRef); dispid 1006;
    procedure BeforeKeyPress(KeyAscii: Integer; const Cancel: ByRef); dispid 1007;
    procedure BeforeKeyUp(KeyCode: Integer; Shift: Integer; const Cancel: ByRef); dispid 1005;
    procedure Click; dispid 1502;
    procedure CommandEnabled(Command: OleVariant; const Enabled: ByRef); dispid 1000;
    procedure CommandChecked(Command: OleVariant; const Checked: ByRef); dispid 1001;
    procedure CommandTipText(Command: OleVariant; const Caption: ByRef); dispid 1002;
    procedure CommandBeforeExecute(Command: OleVariant; const Cancel: ByRef); dispid 1003;
    procedure CommandExecute(Command: OleVariant; Succeeded: WordBool); dispid 1004;
    procedure DblClick; dispid 1503;
    procedure EndEdit(Accept: WordBool; const FinalValue: ByRef; const Cancel: ByRef; 
                      const ErrorDescription: ByRef); dispid 1504;
    procedure Initialize; dispid 1523;
    procedure KeyDown(KeyCode: Integer; Shift: Integer); dispid 1009;
    procedure KeyPress(KeyAscii: Integer); dispid 1010;
    procedure KeyUp(KeyCode: Integer; Shift: Integer); dispid 1008;
    procedure LoadCompleted; dispid 1522;
    procedure MouseDown(Button: Integer; Shift: Integer; x: Integer; y: Integer); dispid 1505;
    procedure MouseOut(Button: Integer; Shift: Integer; const Target: _Range); dispid 1506;
    procedure MouseOver(Button: Integer; Shift: Integer; const Target: _Range); dispid 1507;
    procedure MouseUp(Button: Integer; Shift: Integer; x: Integer; y: Integer); dispid 1508;
    procedure MouseWheel(Page: WordBool; Count: Integer); dispid 1509;
    procedure SelectionChange; dispid 1511;
    procedure SelectionChanging(const Range: _Range); dispid 1512;
    procedure SheetActivate(const Sh: Worksheet); dispid 1513;
    procedure SheetCalculate(const Sh: Worksheet); dispid 1516;
    procedure SheetChange(const Sh: Worksheet; const Target: _Range); dispid 1517;
    procedure SheetDeactivate(const Sh: Worksheet); dispid 1518;
    procedure SheetFollowHyperlink(const Sh: Worksheet; const Target: Hyperlink); dispid 1519;
    procedure StartEdit(const Selection: IDispatch; const InitialValue: ByRef; const Cancel: ByRef; 
                        const ErrorDescription: ByRef); dispid 1520;
    procedure ViewChange(const Target: _Range); dispid 1521;
  end;

// *********************************************************************//
// Interface: _Range
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B05-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  _Range = interface(IDispatch)
    ['{F5B39B05-1480-11D3-8549-00C04FAC67D7}']
    procedure Activate; safecall;
    procedure AutoFilter(var Field: OleVariant; var Criteria1: OleVariant; 
                         var Operator: OleVariant; var Criteria2: OleVariant; 
                         var VisibleDropDown: OleVariant); safecall;
    procedure AutoFit; safecall;
    procedure BorderAround(LineStyle: OleVariant; Weight: XlBorderWeight; ColorIndex: XlColorIndex; 
                           Color: OleVariant); safecall;
    procedure Calculate; safecall;
    procedure Clear; safecall;
    procedure ClearFormats; safecall;
    procedure ClearContents; safecall;
    procedure Copy(Destination: OleVariant); safecall;
    function CopyFromRecordset(const Data: IUnknown; MaxRows: OleVariant; MaxColumns: OleVariant): SYSINT; safecall;
    procedure Cut(Destination: OleVariant); safecall;
    procedure Delete(var Shift: OleVariant); safecall;
    procedure FillDown; safecall;
    procedure FillRight; safecall;
    function Find(What: OleVariant; var After: OleVariant; var LookIn: OleVariant; 
                  var LookAt: OleVariant; var SearchOrder: OleVariant; 
                  SearchDirection: XlSearchDirection; var MatchCase: OleVariant; 
                  var MatchByte: OleVariant): _Range; safecall;
    function FindNext(var After: OleVariant): _Range; safecall;
    function FindPrevious(var After: OleVariant): _Range; safecall;
    procedure Insert(var Shift: OleVariant); safecall;
    procedure LoadText(const File_: WideString; const Delimiters: WideString; 
                       ConsecutiveDelimAsOne: WordBool; const TextQualifier: WideString); safecall;
    procedure Merge(var Across: OleVariant); safecall;
    procedure ParseText(const Text: WideString; const Delimiters: WideString; 
                        ConsecutiveDelimAsOne: WordBool; const TextQualifier: WideString); safecall;
    procedure Paste; safecall;
    procedure Select; safecall;
    procedure Show; safecall;
    procedure Sort(ColumnKey: SYSINT; Order: XlSortOrder; Header: XlYesNoGuess); safecall;
    procedure UnMerge; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get__Default(Row: OleVariant; Column: OleVariant): OleVariant; safecall;
    procedure Set__Default(Row: OleVariant; Column: OleVariant; var_: OleVariant); safecall;
    function Get_Address(var RowAbsolute: OleVariant; var ColumnAbsolute: OleVariant; 
                         ReferenceStyle: XlReferenceStyle; var External: OleVariant; 
                         var RelativeTo: OleVariant): WideString; safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_Borders: Borders; safecall;
    function Get_Cells: _Range; safecall;
    function Get_Column: Integer; safecall;
    function Get_Columns: _Range; safecall;
    function Get_ColumnWidth: OleVariant; safecall;
    procedure Set_ColumnWidth(ColumnWidth: Double); safecall;
    function Get_Count: Integer; safecall;
    function Get_CurrentArray: _Range; safecall;
    function Get_CurrentRegion: _Range; safecall;
    function Get_End_(Direction: XlDirection): _Range; safecall;
    function Get_EntireColumn: _Range; safecall;
    function Get_EntireRow: _Range; safecall;
    function Get_Font: Font; safecall;
    function Get_Formula: OleVariant; safecall;
    procedure Set_Formula(Formula: OleVariant); safecall;
    function Get_FormulaArray: OleVariant; safecall;
    procedure Set_FormulaArray(FormulaArray: OleVariant); safecall;
    function Get_FormulaLocal: OleVariant; safecall;
    procedure Set_FormulaLocal(Formula: OleVariant); safecall;
    function Get_HasArray: OleVariant; safecall;
    function Get_HasFormula: OleVariant; safecall;
    function Get_Height: OleVariant; safecall;
    function Get_Hidden: WordBool; safecall;
    procedure Set_Hidden(Hidden: WordBool); safecall;
    function Get_HorizontalAlignment: OleVariant; safecall;
    procedure Set_HorizontalAlignment(HAlign: XlHAlign); safecall;
    function Get_HTMLData: WideString; safecall;
    function Get_Hyperlink: Hyperlink; safecall;
    function Get_Interior: Interior; safecall;
    function Get_Item(RowIndex: OleVariant; ColumnIndex: OleVariant): _Range; safecall;
    function Get_Left: OleVariant; safecall;
    function Get_Locked: OleVariant; safecall;
    procedure Set_Locked(Locked: WordBool); safecall;
    function Get_MergeArea: _Range; safecall;
    function Get_MergeCells: OleVariant; safecall;
    procedure Set_MergeCells(MergeCells: WordBool); safecall;
    function Get_Name: Name; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Next: _Range; safecall;
    function Get_NumberFormat: OleVariant; safecall;
    procedure Set_NumberFormat(const NumberFormat: WideString); safecall;
    function Get_Offset(RowOffset: OleVariant; ColumnOffset: OleVariant): _Range; safecall;
    function Get_Parent: Worksheet; safecall;
    function Get_PrefixCharacter: OleVariant; safecall;
    function Get_Previous: _Range; safecall;
    function Get_Range(Cell1: OleVariant; Cell2: OleVariant): _Range; safecall;
    function Get_ReadingOrder: OleVariant; safecall;
    procedure Set_ReadingOrder(ReadingOrder: XlReadingOrder); safecall;
    function Get_Row: Integer; safecall;
    function Get_RowHeight: OleVariant; safecall;
    procedure Set_RowHeight(RowHeight: Double); safecall;
    function Get_Rows: _Range; safecall;
    function Get_Text: OleVariant; safecall;
    function Get_Top: OleVariant; safecall;
    function Get_UseStandardHeight: OleVariant; safecall;
    procedure Set_UseStandardHeight(pbool: WordBool); safecall;
    function Get_UseStandardWidth: OleVariant; safecall;
    procedure Set_UseStandardWidth(pbool: WordBool); safecall;
    function Get_Value(RangeValueDataType: OleVariant): OleVariant; safecall;
    procedure Set_Value(RangeValueDataType: OleVariant; Value: OleVariant); safecall;
    function Get_Value2: OleVariant; safecall;
    procedure Set_Value2(Value: OleVariant); safecall;
    function Get_VerticalAlignment: OleVariant; safecall;
    procedure Set_VerticalAlignment(VAlignment: XlVAlign); safecall;
    function Get_Width: OleVariant; safecall;
    function Get_Worksheet: Worksheet; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property _Default[Row: OleVariant; Column: OleVariant]: OleVariant read Get__Default write Set__Default;
    property Address[var RowAbsolute: OleVariant; var ColumnAbsolute: OleVariant; 
                     ReferenceStyle: XlReferenceStyle; var External: OleVariant; 
                     var RelativeTo: OleVariant]: WideString read Get_Address;
    property Application: ISpreadsheet read Get_Application;
    property Borders: Borders read Get_Borders;
    property Cells: _Range read Get_Cells;
    property Column: Integer read Get_Column;
    property Columns: _Range read Get_Columns;
    property Count: Integer read Get_Count;
    property CurrentArray: _Range read Get_CurrentArray;
    property CurrentRegion: _Range read Get_CurrentRegion;
    property End_[Direction: XlDirection]: _Range read Get_End_;
    property EntireColumn: _Range read Get_EntireColumn;
    property EntireRow: _Range read Get_EntireRow;
    property Font: Font read Get_Font;
    property Formula: OleVariant read Get_Formula write Set_Formula;
    property FormulaArray: OleVariant read Get_FormulaArray;
    property FormulaLocal: OleVariant read Get_FormulaLocal;
    property HasArray: OleVariant read Get_HasArray;
    property HasFormula: OleVariant read Get_HasFormula;
    property Height: OleVariant read Get_Height;
    property Hidden: WordBool read Get_Hidden;
    property HTMLData: WideString read Get_HTMLData;
    property Hyperlink: Hyperlink read Get_Hyperlink;
    property Interior: Interior read Get_Interior;
    property Item[RowIndex: OleVariant; ColumnIndex: OleVariant]: _Range read Get_Item;
    property Left: OleVariant read Get_Left;
    property MergeArea: _Range read Get_MergeArea;
    property MergeCells: OleVariant read Get_MergeCells;
    property Name: Name read Get_Name;
    property Next: _Range read Get_Next;
    property Offset[RowOffset: OleVariant; ColumnOffset: OleVariant]: _Range read Get_Offset;
    property Parent: Worksheet read Get_Parent;
    property PrefixCharacter: OleVariant read Get_PrefixCharacter;
    property Previous: _Range read Get_Previous;
    property Range[Cell1: OleVariant; Cell2: OleVariant]: _Range read Get_Range;
    property ReadingOrder: OleVariant read Get_ReadingOrder;
    property Row: Integer read Get_Row;
    property Rows: _Range read Get_Rows;
    property Text: OleVariant read Get_Text;
    property Top: OleVariant read Get_Top;
    property UseStandardHeight: OleVariant read Get_UseStandardHeight;
    property UseStandardWidth: OleVariant read Get_UseStandardWidth;
    property Value[RangeValueDataType: OleVariant]: OleVariant read Get_Value write Set_Value;
    property Value2: OleVariant read Get_Value2 write Set_Value2;
    property Width: OleVariant read Get_Width;
    property Worksheet: Worksheet read Get_Worksheet;
  end;

// *********************************************************************//
// DispIntf:  _RangeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B05-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  _RangeDisp = dispinterface
    ['{F5B39B05-1480-11D3-8549-00C04FAC67D7}']
    procedure Activate; dispid 1610743808;
    procedure AutoFilter(var Field: OleVariant; var Criteria1: OleVariant; 
                         var Operator: OleVariant; var Criteria2: OleVariant; 
                         var VisibleDropDown: OleVariant); dispid 1610743809;
    procedure AutoFit; dispid 1610743810;
    procedure BorderAround(LineStyle: OleVariant; Weight: XlBorderWeight; ColorIndex: XlColorIndex; 
                           Color: OleVariant); dispid 1610743811;
    procedure Calculate; dispid 1610743812;
    procedure Clear; dispid 1610743813;
    procedure ClearFormats; dispid 1610743814;
    procedure ClearContents; dispid 1610743815;
    procedure Copy(Destination: OleVariant); dispid 1610743816;
    function CopyFromRecordset(const Data: IUnknown; MaxRows: OleVariant; MaxColumns: OleVariant): SYSINT; dispid 1610743817;
    procedure Cut(Destination: OleVariant); dispid 1610743818;
    procedure Delete(var Shift: OleVariant); dispid 1610743819;
    procedure FillDown; dispid 1610743820;
    procedure FillRight; dispid 1610743821;
    function Find(What: OleVariant; var After: OleVariant; var LookIn: OleVariant; 
                  var LookAt: OleVariant; var SearchOrder: OleVariant; 
                  SearchDirection: XlSearchDirection; var MatchCase: OleVariant; 
                  var MatchByte: OleVariant): _Range; dispid 1702;
    function FindNext(var After: OleVariant): _Range; dispid 1610743823;
    function FindPrevious(var After: OleVariant): _Range; dispid 1610743824;
    procedure Insert(var Shift: OleVariant); dispid 1610743825;
    procedure LoadText(const File_: WideString; const Delimiters: WideString; 
                       ConsecutiveDelimAsOne: WordBool; const TextQualifier: WideString); dispid 1610743826;
    procedure Merge(var Across: OleVariant); dispid 1700;
    procedure ParseText(const Text: WideString; const Delimiters: WideString; 
                        ConsecutiveDelimAsOne: WordBool; const TextQualifier: WideString); dispid 1610743828;
    procedure Paste; dispid 1610743829;
    procedure Select; dispid 1610743830;
    procedure Show; dispid 1610743831;
    procedure Sort(ColumnKey: SYSINT; Order: XlSortOrder; Header: XlYesNoGuess); dispid 1610743832;
    procedure UnMerge; dispid 1701;
    property _NewEnum: IUnknown readonly dispid -4;
    property _Default[Row: OleVariant; Column: OleVariant]: OleVariant dispid 0;
    property Address[var RowAbsolute: OleVariant; var ColumnAbsolute: OleVariant; 
                     ReferenceStyle: XlReferenceStyle; var External: OleVariant; 
                     var RelativeTo: OleVariant]: WideString readonly dispid 1610743837;
    property Application: ISpreadsheet readonly dispid 1610743838;
    property Borders: Borders readonly dispid 1610743839;
    property Cells: _Range readonly dispid 1610743840;
    property Column: Integer readonly dispid 1610743841;
    property Columns: _Range readonly dispid 1610743842;
    function ColumnWidth: OleVariant; dispid 1011;
    property Count: Integer readonly dispid 1610743845;
    property CurrentArray: _Range readonly dispid 1610743846;
    property CurrentRegion: _Range readonly dispid 1610743847;
    property End_[Direction: XlDirection]: _Range readonly dispid 1610743848;
    property EntireColumn: _Range readonly dispid 1610743849;
    property EntireRow: _Range readonly dispid 1610743850;
    property Font: Font readonly dispid 1030;
    property Formula: OleVariant dispid 1031;
    property FormulaArray: OleVariant readonly dispid 1610743854;
    property FormulaLocal: OleVariant readonly dispid 1610743856;
    property HasArray: OleVariant readonly dispid 1610743858;
    property HasFormula: OleVariant readonly dispid 1610743859;
    property Height: OleVariant readonly dispid 1610743860;
    property Hidden: WordBool readonly dispid 1610743861;
    function HorizontalAlignment: OleVariant; dispid 1032;
    property HTMLData: WideString readonly dispid 1610743865;
    property Hyperlink: Hyperlink readonly dispid 1610743866;
    property Interior: Interior readonly dispid 1610743867;
    property Item[RowIndex: OleVariant; ColumnIndex: OleVariant]: _Range readonly dispid 1610743868;
    property Left: OleVariant readonly dispid 1610743869;
    function Locked: OleVariant; dispid 1034;
    property MergeArea: _Range readonly dispid 1610743872;
    property MergeCells: OleVariant readonly dispid 1610743873;
    property Name: Name readonly dispid 1610743875;
    property Next: _Range readonly dispid 1610743877;
    function NumberFormat: OleVariant; dispid 1041;
    property Offset[RowOffset: OleVariant; ColumnOffset: OleVariant]: _Range readonly dispid 1610743880;
    property Parent: Worksheet readonly dispid 1610743881;
    property PrefixCharacter: OleVariant readonly dispid 1610743882;
    property Previous: _Range readonly dispid 1610743883;
    property Range[Cell1: OleVariant; Cell2: OleVariant]: _Range readonly dispid 1610743884;
    property ReadingOrder: OleVariant readonly dispid 1610743885;
    property Row: Integer readonly dispid 1610743887;
    function RowHeight: OleVariant; dispid 1043;
    property Rows: _Range readonly dispid 1610743890;
    property Text: OleVariant readonly dispid 1610743891;
    property Top: OleVariant readonly dispid 1610743892;
    property UseStandardHeight: OleVariant readonly dispid 1610743893;
    property UseStandardWidth: OleVariant readonly dispid 1610743895;
    property Value[RangeValueDataType: OleVariant]: OleVariant dispid 1049;
    property Value2: OleVariant dispid 1050;
    function VerticalAlignment: OleVariant; dispid 1047;
    property Width: OleVariant readonly dispid 1610743903;
    property Worksheet: Worksheet readonly dispid 1610743904;
  end;

// *********************************************************************//
// Interface: ISpreadsheet
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A79-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ISpreadsheet = interface(IDispatch)
    ['{F5B39A79-1480-11D3-8549-00C04FAC67D7}']
    procedure AddIn(const AddIn: IDispatch); safecall;
    procedure BeginUndo; safecall;
    procedure Calculate; safecall;
    procedure CalculateFull; safecall;
    procedure EndUndo(Cancel: WordBool); safecall;
    function _Evaluate(Expression: OleVariant): OleVariant; safecall;
    function Evaluate(Expression: OleVariant): OleVariant; safecall;
    procedure Export(const Filename: WideString; Action: SheetExportActionEnum; 
                     Format: SheetExportFormat); safecall;
    procedure LocateDataSource; safecall;
    function msDataSourceObject(const bstr: WideString): IUnknown; safecall;
    function RectIntersect(const Range1: _Range; const Range2: _Range): _Range; safecall;
    function RectUnion(const Range1: _Range; const Range2: _Range): _Range; safecall;
    procedure Refresh; safecall;
    procedure Repaint; safecall;
    procedure ShowAbout; safecall;
    procedure ShowContextMenu(x: Integer; y: Integer; Menu: OleVariant); safecall;
    procedure ShowHelp(Topic: Integer); safecall;
    procedure Undo; safecall;
    procedure UpdatePropertyToolbox; safecall;
    function Get_ActiveCell: _Range; safecall;
    function Get_ActiveSheet: Worksheet; safecall;
    function Get_ActiveWindow: Window; safecall;
    function Get_ActiveWorkbook: Workbook; safecall;
    function Get_AllowPropertyToolbox: WordBool; safecall;
    procedure Set_AllowPropertyToolbox(AllowPropertyToolbox: WordBool); safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_AutoFit: WordBool; safecall;
    procedure Set_AutoFit(AutoFit: WordBool); safecall;
    function Get_Build: Integer; safecall;
    function Get_BuildNumber: WideString; safecall;
    function Get_Calculation: XlCalculation; safecall;
    procedure Set_Calculation(calc: XlCalculation); safecall;
    function Get_CalculationVersion: Integer; safecall;
    function Get_CanUndo: WordBool; safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Caption: WideString); safecall;
    function Get_Cells: _Range; safecall;
    function Get_Columns: _Range; safecall;
    function Get_Commands: OCCommands; safecall;
    function Get_Constants: IDispatch; safecall;
    function Get_CSVData: WideString; safecall;
    procedure Set_CSVData(const Data: WideString); safecall;
    function Get_CSVURL: WideString; safecall;
    procedure Set_CSVURL(const URL: WideString); safecall;
    function Get_DataMember: DataMember; safecall;
    procedure Set_DataMember(const DataMember: DataMember); safecall;
    function Get_DataSource: DataSource; safecall;
    procedure Set_DataSource(const DataSource: DataSource); safecall;
    procedure _Set_DataSource(const DataSource: DataSource); safecall;
    function Get_DataType: WideString; safecall;
    procedure Set_DataType(const DataType: WideString); safecall;
    function Get_DesignMode: WordBool; safecall;
    function Get_Dirty: WordBool; safecall;
    procedure Set_Dirty(Dirty: WordBool); safecall;
    function Get_DisplayBranding: WordBool; safecall;
    procedure Set_DisplayBranding(DisplayBranding: WordBool); safecall;
    function Get_DisplayColumnHeadings: WordBool; safecall;
    procedure Set_DisplayColumnHeadings(pf: WordBool); safecall;
    function Get_DisplayDesignTimeUI: WordBool; safecall;
    procedure Set_DisplayDesignTimeUI(DisplayDesignTimeUI: WordBool); safecall;
    function Get_DisplayGridlines: WordBool; safecall;
    procedure Set_DisplayGridlines(pf: WordBool); safecall;
    function Get_DisplayHorizontalScrollBar: WordBool; safecall;
    procedure Set_DisplayHorizontalScrollBar(pf: WordBool); safecall;
    function Get_DisplayOfficeLogo: WordBool; safecall;
    procedure Set_DisplayOfficeLogo(DisplayOfficeLogo: WordBool); safecall;
    function Get_DisplayPropertyToolbox: WordBool; safecall;
    procedure Set_DisplayPropertyToolbox(pf: WordBool); safecall;
    function Get_DisplayRowHeadings: WordBool; safecall;
    procedure Set_DisplayRowHeadings(pf: WordBool); safecall;
    function Get_DisplayTitleBar: WordBool; safecall;
    procedure Set_DisplayTitleBar(DisplayTitleBar: WordBool); safecall;
    function Get_DisplayToolbar: WordBool; safecall;
    procedure Set_DisplayToolbar(DisplayToolbar: WordBool); safecall;
    function Get_DisplayVerticalScrollBar: WordBool; safecall;
    procedure Set_DisplayVerticalScrollBar(pf: WordBool); safecall;
    function Get_DisplayWorkbookTabs: WordBool; safecall;
    procedure Set_DisplayWorkbookTabs(pf: WordBool); safecall;
    function Get_EnableEvents: WordBool; safecall;
    procedure Set_EnableEvents(EnableEvents: WordBool); safecall;
    function Get_EnableUndo: WordBool; safecall;
    procedure Set_EnableUndo(EnableUndo: WordBool); safecall;
    function Get_HTMLData: WideString; safecall;
    procedure Set_HTMLData(const Data: WideString); safecall;
    function Get_HTMLURL: WideString; safecall;
    procedure Set_HTMLURL(const URL: WideString); safecall;
    function Get_InstanceID: LongWord; safecall;
    function Get_International(Index: OleVariant): OleVariant; safecall;
    function Get_LanguageSettings: OWCLanguageSettings; safecall;
    function Get_MaxHeight: OleVariant; safecall;
    procedure Set_MaxHeight(MaxHeight: OleVariant); safecall;
    function Get_MaxWidth: OleVariant; safecall;
    procedure Set_MaxWidth(MaxWidth: OleVariant); safecall;
    function Get_MajorVersion: Integer; safecall;
    function Get_MinorVersion: WideString; safecall;
    function Get_MoveAfterReturn: WordBool; safecall;
    procedure Set_MoveAfterReturn(MoveAfterReturn: WordBool); safecall;
    function Get_MoveAfterReturnDirection: XlDirection; safecall;
    procedure Set_MoveAfterReturnDirection(MoveAfterReturnDirection: XlDirection); safecall;
    function Get_Name: WideString; safecall;
    function Get_Names: Names; safecall;
    function Get_Range(Cell1: OleVariant; Cell2: OleVariant): _Range; safecall;
    function Get_RevisionNumber: WideString; safecall;
    function Get_RightToLeft: WordBool; safecall;
    procedure Set_RightToLeft(RightToLeft: WordBool); safecall;
    function Get_Rows: _Range; safecall;
    function Get_ScreenUpdating: WordBool; safecall;
    procedure Set_ScreenUpdating(ScreenUpdating: WordBool); safecall;
    function Get_Selection: _Range; safecall;
    function Get_Sheets: Sheets; safecall;
    function Get_TitleBar: TitleBar; safecall;
    function Get_Toolbar: IToolbar; safecall;
    function Get_Value: WideString; safecall;
    function Get_Version: WideString; safecall;
    function Get_ViewableRange: WideString; safecall;
    procedure Set_ViewableRange(const ViewableRange: WideString); safecall;
    function Get_ViewOnlyMode: WordBool; safecall;
    function Get_Windows: Windows; safecall;
    function Get_Workbooks: Workbooks; safecall;
    function Get_Worksheets: Worksheets; safecall;
    function Get_XMLData: WideString; safecall;
    procedure Set_XMLData(const Data: WideString); safecall;
    function Get_XMLURL: WideString; safecall;
    procedure Set_XMLURL(const URL: WideString); safecall;
    property ActiveCell: _Range read Get_ActiveCell;
    property ActiveSheet: Worksheet read Get_ActiveSheet;
    property ActiveWindow: Window read Get_ActiveWindow;
    property ActiveWorkbook: Workbook read Get_ActiveWorkbook;
    property AllowPropertyToolbox: WordBool read Get_AllowPropertyToolbox write Set_AllowPropertyToolbox;
    property Application: ISpreadsheet read Get_Application;
    property AutoFit: WordBool read Get_AutoFit write Set_AutoFit;
    property Build: Integer read Get_Build;
    property BuildNumber: WideString read Get_BuildNumber;
    property Calculation: XlCalculation read Get_Calculation write Set_Calculation;
    property CalculationVersion: Integer read Get_CalculationVersion;
    property CanUndo: WordBool read Get_CanUndo;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Cells: _Range read Get_Cells;
    property Columns: _Range read Get_Columns;
    property Commands: OCCommands read Get_Commands;
    property Constants: IDispatch read Get_Constants;
    property CSVData: WideString read Get_CSVData write Set_CSVData;
    property CSVURL: WideString read Get_CSVURL write Set_CSVURL;
    property DataMember: DataMember read Get_DataMember write Set_DataMember;
    property DataSource: DataSource read Get_DataSource write Set_DataSource;
    property DataType: WideString read Get_DataType write Set_DataType;
    property DesignMode: WordBool read Get_DesignMode;
    property Dirty: WordBool read Get_Dirty write Set_Dirty;
    property DisplayBranding: WordBool read Get_DisplayBranding write Set_DisplayBranding;
    property DisplayColumnHeadings: WordBool read Get_DisplayColumnHeadings write Set_DisplayColumnHeadings;
    property DisplayDesignTimeUI: WordBool read Get_DisplayDesignTimeUI write Set_DisplayDesignTimeUI;
    property DisplayGridlines: WordBool read Get_DisplayGridlines write Set_DisplayGridlines;
    property DisplayHorizontalScrollBar: WordBool read Get_DisplayHorizontalScrollBar write Set_DisplayHorizontalScrollBar;
    property DisplayOfficeLogo: WordBool read Get_DisplayOfficeLogo write Set_DisplayOfficeLogo;
    property DisplayPropertyToolbox: WordBool read Get_DisplayPropertyToolbox write Set_DisplayPropertyToolbox;
    property DisplayRowHeadings: WordBool read Get_DisplayRowHeadings write Set_DisplayRowHeadings;
    property DisplayTitleBar: WordBool read Get_DisplayTitleBar write Set_DisplayTitleBar;
    property DisplayToolbar: WordBool read Get_DisplayToolbar write Set_DisplayToolbar;
    property DisplayVerticalScrollBar: WordBool read Get_DisplayVerticalScrollBar write Set_DisplayVerticalScrollBar;
    property DisplayWorkbookTabs: WordBool read Get_DisplayWorkbookTabs write Set_DisplayWorkbookTabs;
    property EnableEvents: WordBool read Get_EnableEvents write Set_EnableEvents;
    property EnableUndo: WordBool read Get_EnableUndo write Set_EnableUndo;
    property HTMLData: WideString read Get_HTMLData write Set_HTMLData;
    property HTMLURL: WideString read Get_HTMLURL write Set_HTMLURL;
    property InstanceID: LongWord read Get_InstanceID;
    property International[Index: OleVariant]: OleVariant read Get_International;
    property LanguageSettings: OWCLanguageSettings read Get_LanguageSettings;
    property MaxHeight: OleVariant read Get_MaxHeight write Set_MaxHeight;
    property MaxWidth: OleVariant read Get_MaxWidth write Set_MaxWidth;
    property MajorVersion: Integer read Get_MajorVersion;
    property MinorVersion: WideString read Get_MinorVersion;
    property MoveAfterReturn: WordBool read Get_MoveAfterReturn write Set_MoveAfterReturn;
    property MoveAfterReturnDirection: XlDirection read Get_MoveAfterReturnDirection write Set_MoveAfterReturnDirection;
    property Name: WideString read Get_Name;
    property Names: Names read Get_Names;
    property Range[Cell1: OleVariant; Cell2: OleVariant]: _Range read Get_Range;
    property RevisionNumber: WideString read Get_RevisionNumber;
    property RightToLeft: WordBool read Get_RightToLeft write Set_RightToLeft;
    property Rows: _Range read Get_Rows;
    property ScreenUpdating: WordBool read Get_ScreenUpdating write Set_ScreenUpdating;
    property Selection: _Range read Get_Selection;
    property Sheets: Sheets read Get_Sheets;
    property TitleBar: TitleBar read Get_TitleBar;
    property Toolbar: IToolbar read Get_Toolbar;
    property Value: WideString read Get_Value;
    property Version: WideString read Get_Version;
    property ViewableRange: WideString read Get_ViewableRange write Set_ViewableRange;
    property ViewOnlyMode: WordBool read Get_ViewOnlyMode;
    property Windows: Windows read Get_Windows;
    property Workbooks: Workbooks read Get_Workbooks;
    property Worksheets: Worksheets read Get_Worksheets;
    property XMLData: WideString read Get_XMLData write Set_XMLData;
    property XMLURL: WideString read Get_XMLURL write Set_XMLURL;
  end;

// *********************************************************************//
// DispIntf:  ISpreadsheetDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A79-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ISpreadsheetDisp = dispinterface
    ['{F5B39A79-1480-11D3-8549-00C04FAC67D7}']
    procedure AddIn(const AddIn: IDispatch); dispid 1710;
    procedure BeginUndo; dispid 1711;
    procedure Calculate; dispid 1712;
    procedure CalculateFull; dispid 1713;
    procedure EndUndo(Cancel: WordBool); dispid 1714;
    function _Evaluate(Expression: OleVariant): OleVariant; dispid -5;
    function Evaluate(Expression: OleVariant): OleVariant; dispid 1715;
    procedure Export(const Filename: WideString; Action: SheetExportActionEnum; 
                     Format: SheetExportFormat); dispid 1716;
    procedure LocateDataSource; dispid 1717;
    function msDataSourceObject(const bstr: WideString): IUnknown; dispid -3900;
    function RectIntersect(const Range1: _Range; const Range2: _Range): _Range; dispid 1718;
    function RectUnion(const Range1: _Range; const Range2: _Range): _Range; dispid 1719;
    procedure Refresh; dispid 1720;
    procedure Repaint; dispid 1721;
    procedure ShowAbout; dispid 1722;
    procedure ShowContextMenu(x: Integer; y: Integer; Menu: OleVariant); dispid 1723;
    procedure ShowHelp(Topic: Integer); dispid 1724;
    procedure Undo; dispid 1725;
    procedure UpdatePropertyToolbox; dispid 1726;
    property ActiveCell: _Range readonly dispid 1101;
    property ActiveSheet: Worksheet readonly dispid 1102;
    property ActiveWindow: Window readonly dispid 1103;
    property ActiveWorkbook: Workbook readonly dispid 1104;
    property AllowPropertyToolbox: WordBool dispid 1008;
    property Application: ISpreadsheet readonly dispid 1105;
    property AutoFit: WordBool dispid 1009;
    property Build: Integer readonly dispid 1106;
    property BuildNumber: WideString readonly dispid 1107;
    property Calculation: XlCalculation dispid 1025;
    property CalculationVersion: Integer readonly dispid 1108;
    property CanUndo: WordBool readonly dispid 1109;
    property Caption: WideString dispid 0;
    property Cells: _Range readonly dispid 1110;
    property Columns: _Range readonly dispid 1111;
    property Commands: OCCommands readonly dispid 1112;
    property Constants: IDispatch readonly dispid 1113;
    property CSVData: WideString dispid 1002;
    property CSVURL: WideString dispid 1003;
    property DataMember: DataMember dispid 1114;
    property DataSource: DataSource dispid 1115;
    property DataType: WideString dispid 1001;
    property DesignMode: WordBool readonly dispid 1116;
    property Dirty: WordBool dispid 1117;
    property DisplayBranding: WordBool dispid 1118;
    property DisplayColumnHeadings: WordBool dispid 1013;
    property DisplayDesignTimeUI: WordBool dispid 1119;
    property DisplayGridlines: WordBool dispid 1015;
    property DisplayHorizontalScrollBar: WordBool dispid 1017;
    property DisplayOfficeLogo: WordBool dispid 1018;
    property DisplayPropertyToolbox: WordBool dispid 4002;
    property DisplayRowHeadings: WordBool dispid 1019;
    property DisplayTitleBar: WordBool dispid 1022;
    property DisplayToolbar: WordBool dispid 1023;
    property DisplayVerticalScrollBar: WordBool dispid 1021;
    property DisplayWorkbookTabs: WordBool dispid 1024;
    property EnableEvents: WordBool dispid 1026;
    property EnableUndo: WordBool dispid 1029;
    property HTMLData: WideString dispid 1004;
    property HTMLURL: WideString dispid 1005;
    property InstanceID: LongWord readonly dispid 1033;
    property International[Index: OleVariant]: OleVariant readonly dispid 1120;
    property LanguageSettings: OWCLanguageSettings readonly dispid 1121;
    property MaxHeight: OleVariant dispid 1036;
    property MaxWidth: OleVariant dispid 1038;
    property MajorVersion: Integer readonly dispid 1122;
    property MinorVersion: WideString readonly dispid 1123;
    property MoveAfterReturn: WordBool dispid 1039;
    property MoveAfterReturnDirection: XlDirection dispid 1040;
    property Name: WideString readonly dispid 1124;
    property Names: Names readonly dispid 1125;
    property Range[Cell1: OleVariant; Cell2: OleVariant]: _Range readonly dispid 1126;
    property RevisionNumber: WideString readonly dispid 1127;
    property RightToLeft: WordBool dispid 1042;
    property Rows: _Range readonly dispid 1128;
    property ScreenUpdating: WordBool dispid 1044;
    property Selection: _Range readonly dispid 1045;
    property Sheets: Sheets readonly dispid 1129;
    property TitleBar: TitleBar readonly dispid 1130;
    property Toolbar: IToolbar readonly dispid 1131;
    property Value: WideString readonly dispid 1132;
    property Version: WideString readonly dispid 1133;
    property ViewableRange: WideString dispid 1048;
    property ViewOnlyMode: WordBool readonly dispid 1134;
    property Windows: Windows readonly dispid 1135;
    property Workbooks: Workbooks readonly dispid 1136;
    property Worksheets: Worksheets readonly dispid 1137;
    property XMLData: WideString dispid 1006;
    property XMLURL: WideString dispid 1007;
  end;

// *********************************************************************//
// Interface: Worksheet
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A88-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Worksheet = interface(IDispatch)
    ['{F5B39A88-1480-11D3-8549-00C04FAC67D7}']
    procedure Activate; safecall;
    procedure Calculate; safecall;
    procedure Copy(Before: OleVariant; After: OleVariant); safecall;
    procedure Delete; safecall;
    procedure DumpStringTable; safecall;
    function _Evaluate(Expression: OleVariant): OleVariant; safecall;
    function Evaluate(Expression: OleVariant): OleVariant; safecall;
    procedure Move(Before: OleVariant; After: OleVariant); safecall;
    procedure Paste(var Destination: OleVariant; var Link: OleVariant); safecall;
    procedure Protect(var Password: OleVariant; var DrawingObjects: OleVariant; 
                      var Contents: OleVariant; var Scenarios: OleVariant; 
                      var UserInterfaceOnly: OleVariant; var AllowFormattingCells: OleVariant; 
                      var AllowFormattingColumns: OleVariant; var AllowFormattingRows: OleVariant; 
                      var AllowInsertingColumns: OleVariant; var AllowInsertingRows: OleVariant; 
                      var AllowInsertingHyperlinks: OleVariant; 
                      var AllowDeletingColumns: OleVariant; var AllowDeletingRows: OleVariant; 
                      var AllowSorting: OleVariant; var AllowFiltering: OleVariant; 
                      var AllowUsingPivotTableReports: OleVariant); safecall;
    procedure Refresh; safecall;
    procedure Select(var Replace: OleVariant); safecall;
    procedure ShowAllData; safecall;
    procedure Unprotect(var Password: OleVariant); safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_AutoFilter: AutoFilter; safecall;
    function Get_AutoFilterMode: WordBool; safecall;
    procedure Set_AutoFilterMode(AutoFilterMode: WordBool); safecall;
    function Get_Cells: _Range; safecall;
    function Get_Columns: _Range; safecall;
    function Get_CommandText: WideString; safecall;
    procedure Set_CommandText(const CommandText: WideString); safecall;
    function Get_ConnectionString: WideString; safecall;
    procedure Set_ConnectionString(const ConnectionString: WideString); safecall;
    function Get_DataMember: DataMember; safecall;
    procedure Set_DataMember(const DataMember: DataMember); safecall;
    function Get_EnableAutoFilter: WordBool; safecall;
    procedure Set_EnableAutoFilter(EnableAutoFilter: WordBool); safecall;
    function Get_FilterMode: WordBool; safecall;
    function Get_Index: Integer; safecall;
    function Get_IsDataBound: WordBool; safecall;
    procedure Set_IsDataBound(pf: WordBool); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Names: Names; safecall;
    function Get_Next: Worksheet; safecall;
    function Get_Parent: Workbook; safecall;
    function Get_Previous: Worksheet; safecall;
    function Get_ProtectContents: WordBool; safecall;
    function Get_Protection: Protection; safecall;
    function Get_ProtectionMode: WordBool; safecall;
    function Get_Range(Cell1: OleVariant; Cell2: OleVariant): _Range; safecall;
    function Get_Rows: _Range; safecall;
    function Get_StandardHeight: Double; safecall;
    function Get_StandardWidth: Double; safecall;
    procedure Set_StandardWidth(wid: Double); safecall;
    function Get_type_: XlSheetType; safecall;
    function Get_UsedRange: _Range; safecall;
    function Get_Visible: XlSheetVisibility; safecall;
    procedure Set_Visible(vis: XlSheetVisibility); safecall;
    property Application: ISpreadsheet read Get_Application;
    property AutoFilter: AutoFilter read Get_AutoFilter;
    property AutoFilterMode: WordBool read Get_AutoFilterMode;
    property Cells: _Range read Get_Cells;
    property Columns: _Range read Get_Columns;
    property CommandText: WideString read Get_CommandText;
    property ConnectionString: WideString read Get_ConnectionString;
    property DataMember: DataMember read Get_DataMember;
    property EnableAutoFilter: WordBool read Get_EnableAutoFilter;
    property FilterMode: WordBool read Get_FilterMode;
    property Index: Integer read Get_Index;
    property IsDataBound: WordBool read Get_IsDataBound;
    property Name: WideString read Get_Name;
    property Names: Names read Get_Names;
    property Next: Worksheet read Get_Next;
    property Parent: Workbook read Get_Parent;
    property Previous: Worksheet read Get_Previous;
    property ProtectContents: WordBool read Get_ProtectContents;
    property Protection: Protection read Get_Protection;
    property ProtectionMode: WordBool read Get_ProtectionMode;
    property Range[Cell1: OleVariant; Cell2: OleVariant]: _Range read Get_Range;
    property Rows: _Range read Get_Rows;
    property StandardHeight: Double read Get_StandardHeight;
    property StandardWidth: Double read Get_StandardWidth;
    property type_: XlSheetType read Get_type_;
    property UsedRange: _Range read Get_UsedRange;
    property Visible: XlSheetVisibility read Get_Visible;
  end;

// *********************************************************************//
// DispIntf:  WorksheetDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A88-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  WorksheetDisp = dispinterface
    ['{F5B39A88-1480-11D3-8549-00C04FAC67D7}']
    procedure Activate; dispid 1610743808;
    procedure Calculate; dispid 1610743809;
    procedure Copy(Before: OleVariant; After: OleVariant); dispid 1610743810;
    procedure Delete; dispid 1610743811;
    procedure DumpStringTable; dispid 1610743812;
    function _Evaluate(Expression: OleVariant): OleVariant; dispid -5;
    function Evaluate(Expression: OleVariant): OleVariant; dispid 1610743814;
    procedure Move(Before: OleVariant; After: OleVariant); dispid 1610743815;
    procedure Paste(var Destination: OleVariant; var Link: OleVariant); dispid 1610743816;
    procedure Protect(var Password: OleVariant; var DrawingObjects: OleVariant; 
                      var Contents: OleVariant; var Scenarios: OleVariant; 
                      var UserInterfaceOnly: OleVariant; var AllowFormattingCells: OleVariant; 
                      var AllowFormattingColumns: OleVariant; var AllowFormattingRows: OleVariant; 
                      var AllowInsertingColumns: OleVariant; var AllowInsertingRows: OleVariant; 
                      var AllowInsertingHyperlinks: OleVariant; 
                      var AllowDeletingColumns: OleVariant; var AllowDeletingRows: OleVariant; 
                      var AllowSorting: OleVariant; var AllowFiltering: OleVariant; 
                      var AllowUsingPivotTableReports: OleVariant); dispid 1610743817;
    procedure Refresh; dispid 1610743818;
    procedure Select(var Replace: OleVariant); dispid 1610743819;
    procedure ShowAllData; dispid 1610743820;
    procedure Unprotect(var Password: OleVariant); dispid 1610743821;
    property Application: ISpreadsheet readonly dispid 1610743822;
    property AutoFilter: AutoFilter readonly dispid 1610743823;
    property AutoFilterMode: WordBool readonly dispid 1610743824;
    property Cells: _Range readonly dispid 1610743826;
    property Columns: _Range readonly dispid 1610743827;
    property CommandText: WideString readonly dispid 1610743828;
    property ConnectionString: WideString readonly dispid 1610743830;
    property DataMember: DataMember readonly dispid 1610743832;
    property EnableAutoFilter: WordBool readonly dispid 1610743834;
    property FilterMode: WordBool readonly dispid 1610743836;
    property Index: Integer readonly dispid 1610743837;
    property IsDataBound: WordBool readonly dispid 1610743838;
    property Name: WideString readonly dispid 1610743840;
    property Names: Names readonly dispid 1610743842;
    property Next: Worksheet readonly dispid 1610743843;
    property Parent: Workbook readonly dispid 1610743844;
    property Previous: Worksheet readonly dispid 1610743845;
    property ProtectContents: WordBool readonly dispid 1610743846;
    property Protection: Protection readonly dispid 1610743847;
    property ProtectionMode: WordBool readonly dispid 1610743848;
    property Range[Cell1: OleVariant; Cell2: OleVariant]: _Range readonly dispid 1610743849;
    property Rows: _Range readonly dispid 1610743850;
    property StandardHeight: Double readonly dispid 1610743851;
    property StandardWidth: Double readonly dispid 1610743852;
    property type_: XlSheetType readonly dispid 1610743854;
    property UsedRange: _Range readonly dispid 1610743855;
    property Visible: XlSheetVisibility readonly dispid 1610743856;
  end;

// *********************************************************************//
// Interface: AutoFilter
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B0E-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  AutoFilter = interface(IDispatch)
    ['{F5B39B0E-1480-11D3-8549-00C04FAC67D7}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Filters: Filters; safecall;
    function Get_Parent: Worksheet; safecall;
    function Get_Range: _Range; safecall;
    procedure Apply; safecall;
    property Application: ISpreadsheet read Get_Application;
    property Filters: Filters read Get_Filters;
    property Parent: Worksheet read Get_Parent;
    property Range: _Range read Get_Range;
  end;

// *********************************************************************//
// DispIntf:  AutoFilterDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B0E-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  AutoFilterDisp = dispinterface
    ['{F5B39B0E-1480-11D3-8549-00C04FAC67D7}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    property Filters: Filters readonly dispid 1610743809;
    property Parent: Worksheet readonly dispid 1610743810;
    property Range: _Range readonly dispid 1610743811;
    procedure Apply; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: Filters
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B04-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Filters = interface(IDispatch)
    ['{F5B39B04-1480-11D3-8549-00C04FAC67D7}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): Filter; safecall;
    function Get_Parent: AutoFilter; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Application: ISpreadsheet read Get_Application;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: Filter read Get_Item; default;
    property Parent: AutoFilter read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  FiltersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B04-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  FiltersDisp = dispinterface
    ['{F5B39B04-1480-11D3-8549-00C04FAC67D7}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Application: ISpreadsheet readonly dispid 1610743809;
    property Count: Integer readonly dispid 1610743810;
    property Item[Index: Integer]: Filter readonly dispid 0; default;
    property Parent: AutoFilter readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: Filter
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B03-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Filter = interface(IDispatch)
    ['{F5B39B03-1480-11D3-8549-00C04FAC67D7}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Criteria: Criteria; safecall;
    function Get_Parent: AutoFilter; safecall;
    property Application: ISpreadsheet read Get_Application;
    property Criteria: Criteria read Get_Criteria;
    property Parent: AutoFilter read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  FilterDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B03-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  FilterDisp = dispinterface
    ['{F5B39B03-1480-11D3-8549-00C04FAC67D7}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    property Criteria: Criteria readonly dispid 1610743809;
    property Parent: AutoFilter readonly dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Criteria
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B02-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Criteria = interface(IDispatch)
    ['{F5B39B02-1480-11D3-8549-00C04FAC67D7}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_Count: Integer; safecall;
    function Get_FilterFunction: SheetFilterFunction; safecall;
    procedure Set_FilterFunction(FilterFunction: SheetFilterFunction); safecall;
    function Get_Item(Index: Integer): OleVariant; safecall;
    function Get_Parent: Filter; safecall;
    function Get_ShowAll: WordBool; safecall;
    procedure Set_ShowAll(ShowAll: WordBool); safecall;
    procedure Add(const Criterion: WideString); safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Application: ISpreadsheet read Get_Application;
    property Count: Integer read Get_Count;
    property FilterFunction: SheetFilterFunction read Get_FilterFunction;
    property Item[Index: Integer]: OleVariant read Get_Item; default;
    property Parent: Filter read Get_Parent;
    property ShowAll: WordBool read Get_ShowAll;
  end;

// *********************************************************************//
// DispIntf:  CriteriaDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B02-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  CriteriaDisp = dispinterface
    ['{F5B39B02-1480-11D3-8549-00C04FAC67D7}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Application: ISpreadsheet readonly dispid 1610743809;
    property Count: Integer readonly dispid 1610743810;
    property FilterFunction: SheetFilterFunction readonly dispid 1610743811;
    property Item[Index: Integer]: OleVariant readonly dispid 0; default;
    property Parent: Filter readonly dispid 1610743814;
    property ShowAll: WordBool readonly dispid 1610743815;
    procedure Add(const Criterion: WideString); dispid 1610743817;
  end;

// *********************************************************************//
// Interface: Names
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BAD-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Names = interface(IDispatch)
    ['{F5B39BAD-1480-11D3-8549-00C04FAC67D7}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_Count: Integer; safecall;
    function Get_Parent: IDispatch; safecall;
    function Item(Index: OleVariant; IndexLocal: OleVariant; RefersTo: OleVariant): Name; safecall;
    procedure Add(Name: OleVariant; RefersTo: OleVariant; Visible: OleVariant; 
                  MacroType: OleVariant; ShortcutKey: OleVariant; Category: OleVariant; 
                  NameLocal: OleVariant; RefersToLocal: OleVariant; CategoryLocal: OleVariant; 
                  RefersToR1C1: OleVariant; RefersToR1C1Local: OleVariant); safecall;
    procedure AddUI(varName: OleVariant; varRefersTo: OleVariant; varVisible: OleVariant; 
                    varMacroType: OleVariant; varShortcutKey: OleVariant; varCategory: OleVariant; 
                    varNameLocal: OleVariant; varRefersToLocal: OleVariant; 
                    varCategoryLocal: OleVariant; varRefersToR1C1: OleVariant; 
                    varRefersToR1C1Local: OleVariant); safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Application: ISpreadsheet read Get_Application;
    property Count: Integer read Get_Count;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  NamesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BAD-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  NamesDisp = dispinterface
    ['{F5B39BAD-1480-11D3-8549-00C04FAC67D7}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Application: ISpreadsheet readonly dispid 1610743809;
    property Count: Integer readonly dispid 1610743810;
    property Parent: IDispatch readonly dispid 1610743811;
    function Item(Index: OleVariant; IndexLocal: OleVariant; RefersTo: OleVariant): Name; dispid 0;
    procedure Add(Name: OleVariant; RefersTo: OleVariant; Visible: OleVariant; 
                  MacroType: OleVariant; ShortcutKey: OleVariant; Category: OleVariant; 
                  NameLocal: OleVariant; RefersToLocal: OleVariant; CategoryLocal: OleVariant; 
                  RefersToR1C1: OleVariant; RefersToR1C1Local: OleVariant); dispid 1610743813;
    procedure AddUI(varName: OleVariant; varRefersTo: OleVariant; varVisible: OleVariant; 
                    varMacroType: OleVariant; varShortcutKey: OleVariant; varCategory: OleVariant; 
                    varNameLocal: OleVariant; varRefersToLocal: OleVariant; 
                    varCategoryLocal: OleVariant; varRefersToR1C1: OleVariant; 
                    varRefersToR1C1Local: OleVariant); dispid 1610743814;
  end;

// *********************************************************************//
// Interface: Name
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BAC-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Name = interface(IDispatch)
    ['{F5B39BAC-1480-11D3-8549-00C04FAC67D7}']
    procedure Delete; safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_Index: Integer; safecall;
    function Get_Name_: WideString; safecall;
    procedure Set_Name_(const pbstr: WideString); safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_RefersTo: OleVariant; safecall;
    procedure Set_RefersTo(pvarVal: OleVariant); safecall;
    function Get_RefersToLocal: OleVariant; safecall;
    procedure Set_RefersToLocal(pvarVal: OleVariant); safecall;
    function Get_RefersToRange: _Range; safecall;
    function Get_Value: WideString; safecall;
    property Application: ISpreadsheet read Get_Application;
    property Index: Integer read Get_Index;
    property Name_: WideString read Get_Name_;
    property Parent: IDispatch read Get_Parent;
    property RefersTo: OleVariant read Get_RefersTo;
    property RefersToLocal: OleVariant read Get_RefersToLocal;
    property RefersToRange: _Range read Get_RefersToRange;
    property Value: WideString read Get_Value;
  end;

// *********************************************************************//
// DispIntf:  NameDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BAC-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  NameDisp = dispinterface
    ['{F5B39BAC-1480-11D3-8549-00C04FAC67D7}']
    procedure Delete; dispid 1610743808;
    property Application: ISpreadsheet readonly dispid 1610743809;
    property Index: Integer readonly dispid 1610743810;
    property Name_: WideString readonly dispid 1610743811;
    property Parent: IDispatch readonly dispid 1610743813;
    property RefersTo: OleVariant readonly dispid 1610743814;
    property RefersToLocal: OleVariant readonly dispid 1610743816;
    property RefersToRange: _Range readonly dispid 1610743818;
    property Value: WideString readonly dispid 0;
  end;

// *********************************************************************//
// Interface: Workbook
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BA6-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Workbook = interface(IDispatch)
    ['{F5B39BA6-1480-11D3-8549-00C04FAC67D7}']
    function Get_ActiveSheet: Worksheet; safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_CalculationVersion: Integer; safecall;
    function Get_Colors(Index: OleVariant): OleVariant; safecall;
    procedure Set_Colors(Index: OleVariant; Color: OleVariant); safecall;
    function Get_Name: WideString; safecall;
    function Get_Names: Names; safecall;
    function Get_Parent: ISpreadsheet; safecall;
    function Get_ProtectStructure: WordBool; safecall;
    function Get_Sheets: Sheets; safecall;
    function Get_Windows: Windows; safecall;
    function Get_Worksheets: Worksheets; safecall;
    procedure Protect(Password: OleVariant; Structure: OleVariant; Windows: OleVariant); safecall;
    procedure ResetColors; safecall;
    procedure Unprotect(Password: OleVariant); safecall;
    property ActiveSheet: Worksheet read Get_ActiveSheet;
    property Application: ISpreadsheet read Get_Application;
    property CalculationVersion: Integer read Get_CalculationVersion;
    property Colors[Index: OleVariant]: OleVariant read Get_Colors;
    property Name: WideString read Get_Name;
    property Names: Names read Get_Names;
    property Parent: ISpreadsheet read Get_Parent;
    property ProtectStructure: WordBool read Get_ProtectStructure;
    property Sheets: Sheets read Get_Sheets;
    property Windows: Windows read Get_Windows;
    property Worksheets: Worksheets read Get_Worksheets;
  end;

// *********************************************************************//
// DispIntf:  WorkbookDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BA6-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  WorkbookDisp = dispinterface
    ['{F5B39BA6-1480-11D3-8549-00C04FAC67D7}']
    property ActiveSheet: Worksheet readonly dispid 1610743808;
    property Application: ISpreadsheet readonly dispid 1610743809;
    property CalculationVersion: Integer readonly dispid 1610743810;
    property Colors[Index: OleVariant]: OleVariant readonly dispid 1610743811;
    property Name: WideString readonly dispid 1610743813;
    property Names: Names readonly dispid 1610743814;
    property Parent: ISpreadsheet readonly dispid 1610743815;
    property ProtectStructure: WordBool readonly dispid 1610743816;
    property Sheets: Sheets readonly dispid 1610743817;
    property Windows: Windows readonly dispid 1610743818;
    property Worksheets: Worksheets readonly dispid 1610743819;
    procedure Protect(Password: OleVariant; Structure: OleVariant; Windows: OleVariant); dispid 1610743820;
    procedure ResetColors; dispid 1610743821;
    procedure Unprotect(Password: OleVariant); dispid 1610743822;
  end;

// *********************************************************************//
// Interface: Sheets
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BA7-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Sheets = interface(IDispatch)
    ['{F5B39BA7-1480-11D3-8549-00C04FAC67D7}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): IDispatch; safecall;
    function Get_Parent: Workbook; safecall;
    function Get_Visible: OleVariant; safecall;
    procedure Set_Visible(Visible: OleVariant); safecall;
    function Add(Before: OleVariant; After: OleVariant; Count: OleVariant; Type_: OleVariant): IDispatch; safecall;
    procedure Copy(Before: OleVariant; After: OleVariant); safecall;
    procedure Delete; safecall;
    procedure Move(Before: OleVariant; After: OleVariant); safecall;
    procedure Select(Replace: OleVariant); safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Application: ISpreadsheet read Get_Application;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: IDispatch read Get_Item; default;
    property Parent: Workbook read Get_Parent;
    property Visible: OleVariant read Get_Visible;
  end;

// *********************************************************************//
// DispIntf:  SheetsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BA7-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SheetsDisp = dispinterface
    ['{F5B39BA7-1480-11D3-8549-00C04FAC67D7}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Application: ISpreadsheet readonly dispid 1610743809;
    property Count: Integer readonly dispid 1610743810;
    property Item[Index: OleVariant]: IDispatch readonly dispid 0; default;
    property Parent: Workbook readonly dispid 1610743812;
    property Visible: OleVariant readonly dispid 1610743813;
    function Add(Before: OleVariant; After: OleVariant; Count: OleVariant; Type_: OleVariant): IDispatch; dispid 1610743815;
    procedure Copy(Before: OleVariant; After: OleVariant); dispid 1610743816;
    procedure Delete; dispid 1610743817;
    procedure Move(Before: OleVariant; After: OleVariant); dispid 1610743818;
    procedure Select(Replace: OleVariant); dispid 1610743819;
  end;

// *********************************************************************//
// Interface: Windows
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BAB-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Windows = interface(IDispatch)
    ['{F5B39BAB-1480-11D3-8549-00C04FAC67D7}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): Window; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Application: ISpreadsheet read Get_Application;
    property Parent: IDispatch read Get_Parent;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: Window read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  WindowsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BAB-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  WindowsDisp = dispinterface
    ['{F5B39BAB-1480-11D3-8549-00C04FAC67D7}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
    property Count: Integer readonly dispid 1610743810;
    property Item[Index: Integer]: Window readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: Window
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BAA-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Window = interface(IDispatch)
    ['{F5B39BAA-1480-11D3-8549-00C04FAC67D7}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Parent: Workbook; safecall;
    function Get_ActiveCell: _Range; safecall;
    function Get_ActivePane: Pane; safecall;
    function Get_ActiveSheet: Worksheet; safecall;
    function Get_ColumnHeadings: Headings; safecall;
    function Get_DisplayColumnHeadings: WordBool; safecall;
    procedure Set_DisplayColumnHeadings(pf: WordBool); safecall;
    function Get_DisplayCustomHeadings: WordBool; safecall;
    procedure Set_DisplayCustomHeadings(pf: WordBool); safecall;
    function Get_DisplayGridlines: WordBool; safecall;
    procedure Set_DisplayGridlines(pf: WordBool); safecall;
    function Get_DisplayHeadings: WordBool; safecall;
    procedure Set_DisplayHeadings(pf: WordBool); safecall;
    function Get_DisplayHorizontalScrollBar: WordBool; safecall;
    procedure Set_DisplayHorizontalScrollBar(pf: WordBool); safecall;
    function Get_DisplayRowHeadings: WordBool; safecall;
    procedure Set_DisplayRowHeadings(pf: WordBool); safecall;
    function Get_DisplayVerticalScrollBar: WordBool; safecall;
    procedure Set_DisplayVerticalScrollBar(pf: WordBool); safecall;
    function Get_DisplayWorkbookTabs: WordBool; safecall;
    procedure Set_DisplayWorkbookTabs(pf: WordBool); safecall;
    function Get_DisplayZeros: WordBool; safecall;
    procedure Set_DisplayZeros(pf: WordBool); safecall;
    function Get_EnableResize: WordBool; safecall;
    procedure Set_EnableResize(pf: WordBool); safecall;
    function Get_FreezePanes: WordBool; safecall;
    procedure Set_FreezePanes(pf: WordBool); safecall;
    function Get_GridlineColor: Integer; safecall;
    procedure Set_GridlineColor(clr: POleVariant1); safecall;
    function Get_GridlineColorIndex: XlColorIndex; safecall;
    procedure Set_GridlineColorIndex(iclr: XlColorIndex); safecall;
    function Get_Height: Double; safecall;
    function Get_Index: Integer; safecall;
    function Get_Left: Double; safecall;
    function Get_Panes: Panes; safecall;
    function Get_RangeSelection: _Range; safecall;
    function Get_RowHeadings: Headings; safecall;
    function Get_ScrollColumn: Integer; safecall;
    procedure Set_ScrollColumn(col: Integer); safecall;
    function Get_ScrollRow: Integer; safecall;
    procedure Set_ScrollRow(Row: Integer); safecall;
    function Get_SelectedSheets: Sheets; safecall;
    function Get_Selection: _Range; safecall;
    function Get_TabRatio: Double; safecall;
    procedure Set_TabRatio(ratio: Double); safecall;
    function Get_Top: Double; safecall;
    function Get_type_: XlWindowType; safecall;
    function Get_UsableHeight: Double; safecall;
    function Get_UsableWidth: Double; safecall;
    function Get_ViewableRange: WideString; safecall;
    procedure Set_ViewableRange(const rng: WideString); safecall;
    function Get_Visible: WordBool; safecall;
    function Get_VisibleRange: _Range; safecall;
    function Get_Width: Double; safecall;
    function Get_WindowNumber: Integer; safecall;
    procedure LargeScroll(var Down: OleVariant; var Up: OleVariant; var ToRight: OleVariant; 
                          var ToLeft: OleVariant); safecall;
    function PointsToScreenPixelsX(Points: Integer): Integer; safecall;
    function PointsToScreenPixelsY(Points: Integer): Integer; safecall;
    function RangeFromPoint(x: Integer; y: Integer): _Range; safecall;
    procedure ResetHeadings; safecall;
    procedure ScrollIntoView(Left: Integer; Top: Integer; Width: Integer; Height: Integer; 
                             var Start: OleVariant); safecall;
    procedure SmallScroll(var Down: OleVariant; var Up: OleVariant; var ToRight: OleVariant; 
                          var ToLeft: OleVariant); safecall;
    property Application: ISpreadsheet read Get_Application;
    property Parent: Workbook read Get_Parent;
    property ActiveCell: _Range read Get_ActiveCell;
    property ActivePane: Pane read Get_ActivePane;
    property ActiveSheet: Worksheet read Get_ActiveSheet;
    property ColumnHeadings: Headings read Get_ColumnHeadings;
    property DisplayColumnHeadings: WordBool read Get_DisplayColumnHeadings write Set_DisplayColumnHeadings;
    property DisplayCustomHeadings: WordBool read Get_DisplayCustomHeadings;
    property DisplayGridlines: WordBool read Get_DisplayGridlines write Set_DisplayGridlines;
    property DisplayHeadings: WordBool read Get_DisplayHeadings write Set_DisplayHeadings;
    property DisplayHorizontalScrollBar: WordBool read Get_DisplayHorizontalScrollBar write Set_DisplayHorizontalScrollBar;
    property DisplayRowHeadings: WordBool read Get_DisplayRowHeadings write Set_DisplayRowHeadings;
    property DisplayVerticalScrollBar: WordBool read Get_DisplayVerticalScrollBar write Set_DisplayVerticalScrollBar;
    property DisplayWorkbookTabs: WordBool read Get_DisplayWorkbookTabs;
    property DisplayZeros: WordBool read Get_DisplayZeros;
    property EnableResize: WordBool read Get_EnableResize;
    property FreezePanes: WordBool read Get_FreezePanes;
    property GridlineColor: Integer read Get_GridlineColor;
    property GridlineColorIndex: XlColorIndex read Get_GridlineColorIndex;
    property Height: Double read Get_Height;
    property Index: Integer read Get_Index;
    property Left: Double read Get_Left;
    property Panes: Panes read Get_Panes;
    property RangeSelection: _Range read Get_RangeSelection;
    property RowHeadings: Headings read Get_RowHeadings;
    property ScrollColumn: Integer read Get_ScrollColumn;
    property ScrollRow: Integer read Get_ScrollRow;
    property SelectedSheets: Sheets read Get_SelectedSheets;
    property Selection: _Range read Get_Selection;
    property TabRatio: Double read Get_TabRatio;
    property Top: Double read Get_Top;
    property type_: XlWindowType read Get_type_;
    property UsableHeight: Double read Get_UsableHeight;
    property UsableWidth: Double read Get_UsableWidth;
    property ViewableRange: WideString read Get_ViewableRange;
    property Visible: WordBool read Get_Visible;
    property VisibleRange: _Range read Get_VisibleRange;
    property Width: Double read Get_Width;
    property WindowNumber: Integer read Get_WindowNumber;
  end;

// *********************************************************************//
// DispIntf:  WindowDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BAA-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  WindowDisp = dispinterface
    ['{F5B39BAA-1480-11D3-8549-00C04FAC67D7}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    property Parent: Workbook readonly dispid 1610743809;
    property ActiveCell: _Range readonly dispid 1610743810;
    property ActivePane: Pane readonly dispid 1610743811;
    property ActiveSheet: Worksheet readonly dispid 1610743812;
    property ColumnHeadings: Headings readonly dispid 1610743813;
    property DisplayColumnHeadings: WordBool dispid 1013;
    property DisplayCustomHeadings: WordBool readonly dispid 1610743816;
    property DisplayGridlines: WordBool dispid 1015;
    property DisplayHeadings: WordBool dispid 1016;
    property DisplayHorizontalScrollBar: WordBool dispid 1017;
    property DisplayRowHeadings: WordBool dispid 1019;
    property DisplayVerticalScrollBar: WordBool dispid 1021;
    property DisplayWorkbookTabs: WordBool readonly dispid 1610743828;
    property DisplayZeros: WordBool readonly dispid 1610743830;
    property EnableResize: WordBool readonly dispid 1610743832;
    property FreezePanes: WordBool readonly dispid 1610743834;
    property GridlineColor: Integer readonly dispid 1610743836;
    property GridlineColorIndex: XlColorIndex readonly dispid 1610743838;
    property Height: Double readonly dispid 1610743840;
    property Index: Integer readonly dispid 1610743841;
    property Left: Double readonly dispid 1610743842;
    property Panes: Panes readonly dispid 1610743843;
    property RangeSelection: _Range readonly dispid 1610743844;
    property RowHeadings: Headings readonly dispid 1610743845;
    property ScrollColumn: Integer readonly dispid 1610743846;
    property ScrollRow: Integer readonly dispid 1610743848;
    property SelectedSheets: Sheets readonly dispid 1610743850;
    property Selection: _Range readonly dispid 1610743851;
    property TabRatio: Double readonly dispid 1610743852;
    property Top: Double readonly dispid 1610743854;
    property type_: XlWindowType readonly dispid 1610743855;
    property UsableHeight: Double readonly dispid 1610743856;
    property UsableWidth: Double readonly dispid 1610743857;
    property ViewableRange: WideString readonly dispid 1610743858;
    property Visible: WordBool readonly dispid 1610743860;
    property VisibleRange: _Range readonly dispid 1610743861;
    property Width: Double readonly dispid 1610743862;
    property WindowNumber: Integer readonly dispid 1610743863;
    procedure LargeScroll(var Down: OleVariant; var Up: OleVariant; var ToRight: OleVariant; 
                          var ToLeft: OleVariant); dispid 1610743864;
    function PointsToScreenPixelsX(Points: Integer): Integer; dispid 1610743865;
    function PointsToScreenPixelsY(Points: Integer): Integer; dispid 1610743866;
    function RangeFromPoint(x: Integer; y: Integer): _Range; dispid 1610743867;
    procedure ResetHeadings; dispid 1610743868;
    procedure ScrollIntoView(Left: Integer; Top: Integer; Width: Integer; Height: Integer; 
                             var Start: OleVariant); dispid 1610743869;
    procedure SmallScroll(var Down: OleVariant; var Up: OleVariant; var ToRight: OleVariant; 
                          var ToLeft: OleVariant); dispid 1610743870;
  end;

// *********************************************************************//
// Interface: Pane
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB2-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Pane = interface(IDispatch)
    ['{F5B39AB2-1480-11D3-8549-00C04FAC67D7}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Index: Integer; safecall;
    function Get_Parent: Window; safecall;
    function Get_VisibleRange: _Range; safecall;
    property Application: ISpreadsheet read Get_Application;
    property Index: Integer read Get_Index;
    property Parent: Window read Get_Parent;
    property VisibleRange: _Range read Get_VisibleRange;
  end;

// *********************************************************************//
// DispIntf:  PaneDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB2-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PaneDisp = dispinterface
    ['{F5B39AB2-1480-11D3-8549-00C04FAC67D7}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    property Index: Integer readonly dispid 1610743809;
    property Parent: Window readonly dispid 1610743810;
    property VisibleRange: _Range readonly dispid 1610743811;
  end;

// *********************************************************************//
// Interface: Headings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BA3-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Headings = interface(IDispatch)
    ['{F5B39BA3-1480-11D3-8549-00C04FAC67D7}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Parent: Window; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(var Index: OleVariant): Heading; safecall;
    property Application: ISpreadsheet read Get_Application;
    property Parent: Window read Get_Parent;
    property Count: Integer read Get_Count;
    property Item[var Index: OleVariant]: Heading read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  HeadingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BA3-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  HeadingsDisp = dispinterface
    ['{F5B39BA3-1480-11D3-8549-00C04FAC67D7}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    property Parent: Window readonly dispid 1610743809;
    property Count: Integer readonly dispid 1610743810;
    property Item[var Index: OleVariant]: Heading readonly dispid 0; default;
  end;

// *********************************************************************//
// Interface: Heading
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BA4-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Heading = interface(IDispatch)
    ['{F5B39BA4-1480-11D3-8549-00C04FAC67D7}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Parent: Window; safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const bstr: WideString); safecall;
    function Get_Index: Integer; safecall;
    procedure Reset; safecall;
    property Application: ISpreadsheet read Get_Application;
    property Parent: Window read Get_Parent;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Index: Integer read Get_Index;
  end;

// *********************************************************************//
// DispIntf:  HeadingDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BA4-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  HeadingDisp = dispinterface
    ['{F5B39BA4-1480-11D3-8549-00C04FAC67D7}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    property Parent: Window readonly dispid 1610743809;
    property Caption: WideString dispid 0;
    property Index: Integer readonly dispid 1610743812;
    procedure Reset; dispid 1610743813;
  end;

// *********************************************************************//
// Interface: Panes
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB5-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Panes = interface(IDispatch)
    ['{F5B39AB5-1480-11D3-8549-00C04FAC67D7}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): Pane; safecall;
    function Get_Parent: Window; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Application: ISpreadsheet read Get_Application;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: Pane read Get_Item; default;
    property Parent: Window read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  PanesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB5-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PanesDisp = dispinterface
    ['{F5B39AB5-1480-11D3-8549-00C04FAC67D7}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Application: ISpreadsheet readonly dispid 1610743809;
    property Count: Integer readonly dispid 1610743810;
    property Item[Index: Integer]: Pane readonly dispid 0; default;
    property Parent: Window readonly dispid 1610743812;
  end;

// *********************************************************************//
// Interface: Worksheets
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BA8-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Worksheets = interface(IDispatch)
    ['{F5B39BA8-1480-11D3-8549-00C04FAC67D7}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): IDispatch; safecall;
    function Get_Parent: Workbook; safecall;
    function Get_Visible: OleVariant; safecall;
    procedure Set_Visible(Visible: OleVariant); safecall;
    function Add(Before: OleVariant; After: OleVariant; Count: OleVariant; Type_: OleVariant): IDispatch; safecall;
    procedure Copy(Before: OleVariant; After: OleVariant); safecall;
    procedure Delete; safecall;
    procedure Move(Before: OleVariant; After: OleVariant); safecall;
    procedure Select(Replace: OleVariant); safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Application: ISpreadsheet read Get_Application;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: IDispatch read Get_Item; default;
    property Parent: Workbook read Get_Parent;
    property Visible: OleVariant read Get_Visible;
  end;

// *********************************************************************//
// DispIntf:  WorksheetsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BA8-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  WorksheetsDisp = dispinterface
    ['{F5B39BA8-1480-11D3-8549-00C04FAC67D7}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Application: ISpreadsheet readonly dispid 1610743809;
    property Count: Integer readonly dispid 1610743810;
    property Item[Index: OleVariant]: IDispatch readonly dispid 0; default;
    property Parent: Workbook readonly dispid 1610743812;
    property Visible: OleVariant readonly dispid 1610743813;
    function Add(Before: OleVariant; After: OleVariant; Count: OleVariant; Type_: OleVariant): IDispatch; dispid 1610743815;
    procedure Copy(Before: OleVariant; After: OleVariant); dispid 1610743816;
    procedure Delete; dispid 1610743817;
    procedure Move(Before: OleVariant; After: OleVariant); dispid 1610743818;
    procedure Select(Replace: OleVariant); dispid 1610743819;
  end;

// *********************************************************************//
// Interface: Protection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B3D-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Protection = interface(IDispatch)
    ['{F5B39B3D-1480-11D3-8549-00C04FAC67D7}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Parent: Worksheet; safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Enabled: WordBool); safecall;
    function Get_AllowFormattingRows: WordBool; safecall;
    procedure Set_AllowFormattingRows(pf: WordBool); safecall;
    function Get_AllowFormattingColumns: WordBool; safecall;
    procedure Set_AllowFormattingColumns(pf: WordBool); safecall;
    function Get_AllowInsertingRows: WordBool; safecall;
    procedure Set_AllowInsertingRows(pf: WordBool); safecall;
    function Get_AllowInsertingColumns: WordBool; safecall;
    procedure Set_AllowInsertingColumns(pf: WordBool); safecall;
    function Get_AllowDeletingRows: WordBool; safecall;
    procedure Set_AllowDeletingRows(pf: WordBool); safecall;
    function Get_AllowDeletingColumns: WordBool; safecall;
    procedure Set_AllowDeletingColumns(pf: WordBool); safecall;
    function Get_AllowSorting: WordBool; safecall;
    procedure Set_AllowSorting(pf: WordBool); safecall;
    function Get_AllowFiltering: WordBool; safecall;
    procedure Set_AllowFiltering(pf: WordBool); safecall;
    function Get_AllowHeadingRename: WordBool; safecall;
    procedure Set_AllowHeadingRename(pf: WordBool); safecall;
    property Application: ISpreadsheet read Get_Application;
    property Parent: Worksheet read Get_Parent;
    property Enabled: WordBool read Get_Enabled;
    property AllowFormattingRows: WordBool read Get_AllowFormattingRows;
    property AllowFormattingColumns: WordBool read Get_AllowFormattingColumns;
    property AllowInsertingRows: WordBool read Get_AllowInsertingRows;
    property AllowInsertingColumns: WordBool read Get_AllowInsertingColumns;
    property AllowDeletingRows: WordBool read Get_AllowDeletingRows;
    property AllowDeletingColumns: WordBool read Get_AllowDeletingColumns;
    property AllowSorting: WordBool read Get_AllowSorting;
    property AllowFiltering: WordBool read Get_AllowFiltering;
    property AllowHeadingRename: WordBool read Get_AllowHeadingRename;
  end;

// *********************************************************************//
// DispIntf:  ProtectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B3D-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ProtectionDisp = dispinterface
    ['{F5B39B3D-1480-11D3-8549-00C04FAC67D7}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    property Parent: Worksheet readonly dispid 1610743809;
    property Enabled: WordBool readonly dispid 1610743810;
    property AllowFormattingRows: WordBool readonly dispid 1610743812;
    property AllowFormattingColumns: WordBool readonly dispid 1610743814;
    property AllowInsertingRows: WordBool readonly dispid 1610743816;
    property AllowInsertingColumns: WordBool readonly dispid 1610743818;
    property AllowDeletingRows: WordBool readonly dispid 1610743820;
    property AllowDeletingColumns: WordBool readonly dispid 1610743822;
    property AllowSorting: WordBool readonly dispid 1610743824;
    property AllowFiltering: WordBool readonly dispid 1610743826;
    property AllowHeadingRename: WordBool readonly dispid 1610743828;
  end;

// *********************************************************************//
// Interface: TitleBar
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B0B-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  TitleBar = interface(IDispatch)
    ['{F5B39B0B-1480-11D3-8549-00C04FAC67D7}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Caption: WideString); safecall;
    function Get_Font: Font; safecall;
    function Get_Interior: Interior; safecall;
    function Get_Parent: ISpreadsheet; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Visible: WordBool); safecall;
    property Application: ISpreadsheet read Get_Application;
    property Caption: WideString read Get_Caption;
    property Font: Font read Get_Font;
    property Interior: Interior read Get_Interior;
    property Parent: ISpreadsheet read Get_Parent;
    property Visible: WordBool read Get_Visible;
  end;

// *********************************************************************//
// DispIntf:  TitleBarDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B0B-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  TitleBarDisp = dispinterface
    ['{F5B39B0B-1480-11D3-8549-00C04FAC67D7}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    property Caption: WideString readonly dispid 1610743809;
    property Font: Font readonly dispid 1610743811;
    property Interior: Interior readonly dispid 1610743812;
    property Parent: ISpreadsheet readonly dispid 1610743813;
    property Visible: WordBool readonly dispid 1610743814;
  end;

// *********************************************************************//
// Interface: Font
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6F5A761A-0AC7-4DED-9A6B-A3547FD7B7BB}
// *********************************************************************//
  Font = interface(IDispatch)
    ['{6F5A761A-0AC7-4DED-9A6B-A3547FD7B7BB}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Bold: OleVariant; safecall;
    procedure Set_Bold(Bold: WordBool); safecall;
    function Get_Color: OleVariant; safecall;
    procedure Set_Color(Color: POleVariant1); safecall;
    function Get_ColorIndex: OleVariant; safecall;
    procedure Set_ColorIndex(ColorIndex: SYSINT); safecall;
    function Get_Italic: OleVariant; safecall;
    procedure Set_Italic(Italic: WordBool); safecall;
    function Get_Name: OleVariant; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Parent: IDispatch; safecall;
    function Get_Size: OleVariant; safecall;
    procedure Set_Size(Size: Double); safecall;
    function Get_Underline: OleVariant; safecall;
    procedure Set_Underline(UnderlineStyle: XlUnderlineStyle); safecall;
    property Application: ISpreadsheet read Get_Application;
    property Color: OleVariant read Get_Color;
    property ColorIndex: OleVariant read Get_ColorIndex;
    property Name: OleVariant read Get_Name;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  FontDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6F5A761A-0AC7-4DED-9A6B-A3547FD7B7BB}
// *********************************************************************//
  FontDisp = dispinterface
    ['{6F5A761A-0AC7-4DED-9A6B-A3547FD7B7BB}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    function Bold: OleVariant; dispid 3;
    property Color: OleVariant readonly dispid 1610743811;
    property ColorIndex: OleVariant readonly dispid 1610743813;
    function Italic: OleVariant; dispid 4;
    property Name: OleVariant readonly dispid 1610743817;
    property Parent: IDispatch readonly dispid 1610743819;
    function Size: OleVariant; dispid 2;
    function Underline: OleVariant; dispid 5;
  end;

// *********************************************************************//
// Interface: Interior
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6F5A761B-0AC7-4DED-9A6B-A3547FD7B7BB}
// *********************************************************************//
  Interior = interface(IDispatch)
    ['{6F5A761B-0AC7-4DED-9A6B-A3547FD7B7BB}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Color: OleVariant; safecall;
    procedure Set_Color(Color: POleVariant1); safecall;
    function Get_ColorIndex: OleVariant; safecall;
    procedure Set_ColorIndex(ColorIndex: SYSINT); safecall;
    function Get_Parent: IDispatch; safecall;
    property Application: ISpreadsheet read Get_Application;
    property Color: OleVariant read Get_Color;
    property ColorIndex: OleVariant read Get_ColorIndex;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  InteriorDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6F5A761B-0AC7-4DED-9A6B-A3547FD7B7BB}
// *********************************************************************//
  InteriorDisp = dispinterface
    ['{6F5A761B-0AC7-4DED-9A6B-A3547FD7B7BB}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    property Color: OleVariant readonly dispid 1610743809;
    property ColorIndex: OleVariant readonly dispid 1610743811;
    property Parent: IDispatch readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: Workbooks
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BA5-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Workbooks = interface(IDispatch)
    ['{F5B39BA5-1480-11D3-8549-00C04FAC67D7}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_Parent: ISpreadsheet; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): Workbook; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Application: ISpreadsheet read Get_Application;
    property Parent: ISpreadsheet read Get_Parent;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: Workbook read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  WorkbooksDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39BA5-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  WorkbooksDisp = dispinterface
    ['{F5B39BA5-1480-11D3-8549-00C04FAC67D7}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Application: ISpreadsheet readonly dispid 1610743809;
    property Parent: ISpreadsheet readonly dispid 1610743810;
    property Count: Integer readonly dispid 1610743811;
    property Item[Index: OleVariant]: Workbook readonly dispid 0; default;
  end;

// *********************************************************************//
// Interface: Borders
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A7D-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Borders = interface(IDispatch)
    ['{F5B39A7D-1480-11D3-8549-00C04FAC67D7}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Application: ISpreadsheet; safecall;
    function Get_Color: OleVariant; safecall;
    procedure Set_Color(Color: POleVariant1); safecall;
    function Get_ColorIndex: OleVariant; safecall;
    procedure Set_ColorIndex(ColorIndex: SYSINT); safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(Index: XlBordersIndex): Border; safecall;
    function Get_LineStyle: OleVariant; safecall;
    procedure Set_LineStyle(LineStyle: XlLineStyle); safecall;
    function Get_Parent: _Range; safecall;
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(LineStyle: XlLineStyle); safecall;
    function Get_Weight: OleVariant; safecall;
    procedure Set_Weight(LineWeight: XlBorderWeight); safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Application: ISpreadsheet read Get_Application;
    property Color: OleVariant read Get_Color;
    property ColorIndex: OleVariant read Get_ColorIndex;
    property Count: Integer read Get_Count;
    property Item[Index: XlBordersIndex]: Border read Get_Item; default;
    property LineStyle: OleVariant read Get_LineStyle;
    property Parent: _Range read Get_Parent;
    property Value: OleVariant read Get_Value;
    property Weight: OleVariant read Get_Weight;
  end;

// *********************************************************************//
// DispIntf:  BordersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A7D-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  BordersDisp = dispinterface
    ['{F5B39A7D-1480-11D3-8549-00C04FAC67D7}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Application: ISpreadsheet readonly dispid 1610743809;
    property Color: OleVariant readonly dispid 1610743810;
    property ColorIndex: OleVariant readonly dispid 1610743812;
    property Count: Integer readonly dispid 1610743814;
    property Item[Index: XlBordersIndex]: Border readonly dispid 0; default;
    property LineStyle: OleVariant readonly dispid 1610743816;
    property Parent: _Range readonly dispid 1610743818;
    property Value: OleVariant readonly dispid 1610743819;
    property Weight: OleVariant readonly dispid 1610743821;
  end;

// *********************************************************************//
// Interface: Border
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6F5A7618-0AC7-4DED-9A6B-A3547FD7B7BB}
// *********************************************************************//
  Border = interface(IDispatch)
    ['{6F5A7618-0AC7-4DED-9A6B-A3547FD7B7BB}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Color: OleVariant; safecall;
    procedure Set_Color(Color: POleVariant1); safecall;
    function Get_ColorIndex: OleVariant; safecall;
    procedure Set_ColorIndex(ColorIndex: SYSINT); safecall;
    function Get_LineStyle: OleVariant; safecall;
    procedure Set_LineStyle(LineStyle: XlLineStyle); safecall;
    function Get_Parent: _Range; safecall;
    function Get_Weight: OleVariant; safecall;
    procedure Set_Weight(LineWeight: XlBorderWeight); safecall;
    property Application: ISpreadsheet read Get_Application;
    property Color: OleVariant read Get_Color;
    property ColorIndex: OleVariant read Get_ColorIndex;
    property LineStyle: OleVariant read Get_LineStyle;
    property Parent: _Range read Get_Parent;
    property Weight: OleVariant read Get_Weight;
  end;

// *********************************************************************//
// DispIntf:  BorderDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6F5A7618-0AC7-4DED-9A6B-A3547FD7B7BB}
// *********************************************************************//
  BorderDisp = dispinterface
    ['{6F5A7618-0AC7-4DED-9A6B-A3547FD7B7BB}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    property Color: OleVariant readonly dispid 1610743809;
    property ColorIndex: OleVariant readonly dispid 1610743811;
    property LineStyle: OleVariant readonly dispid 1610743813;
    property Parent: _Range readonly dispid 1610743815;
    property Weight: OleVariant readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: Hyperlink
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6F5A7620-0AC7-4DED-9A6B-A3547FD7B7BB}
// *********************************************************************//
  Hyperlink = interface(IDispatch)
    ['{6F5A7620-0AC7-4DED-9A6B-A3547FD7B7BB}']
    function Get_Application: ISpreadsheet; safecall;
    function Get_Address: WideString; safecall;
    procedure Set_Address(const Address: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_Parent: _Range; safecall;
    function Get_SubAddress: WideString; safecall;
    procedure Set_SubAddress(const SubAddress: WideString); safecall;
    procedure Delete; safecall;
    procedure Follow(var NewWindow: OleVariant; var AddHistory: OleVariant; 
                     var ExtraInfo: OleVariant; var Method: OleVariant; var HeaderInfo: OleVariant); safecall;
    property Application: ISpreadsheet read Get_Application;
    property Address: WideString read Get_Address;
    property Name: WideString read Get_Name;
    property Parent: _Range read Get_Parent;
    property SubAddress: WideString read Get_SubAddress;
  end;

// *********************************************************************//
// DispIntf:  HyperlinkDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6F5A7620-0AC7-4DED-9A6B-A3547FD7B7BB}
// *********************************************************************//
  HyperlinkDisp = dispinterface
    ['{6F5A7620-0AC7-4DED-9A6B-A3547FD7B7BB}']
    property Application: ISpreadsheet readonly dispid 1610743808;
    property Address: WideString readonly dispid 1610743809;
    property Name: WideString readonly dispid 1610743811;
    property Parent: _Range readonly dispid 1610743812;
    property SubAddress: WideString readonly dispid 1610743813;
    procedure Delete; dispid 1610743815;
    procedure Follow(var NewWindow: OleVariant; var AddHistory: OleVariant; 
                     var ExtraInfo: OleVariant; var Method: OleVariant; var HeaderInfo: OleVariant); dispid 1610743816;
  end;

// *********************************************************************//
// Interface: IOleCommandTargetArgument
// Flags:     (464) Hidden Dual NonExtensible OleAutomation
// GUID:      {FB8D568A-AE5F-4136-8223-6E24ABE10A28}
// *********************************************************************//
  IOleCommandTargetArgument = interface(IUnknown)
    ['{FB8D568A-AE5F-4136-8223-6E24ABE10A28}']
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(Value: OleVariant); safecall;
    property Value: OleVariant read Get_Value;
  end;

// *********************************************************************//
// DispIntf:  IOleCommandTargetArgumentDisp
// Flags:     (464) Hidden Dual NonExtensible OleAutomation
// GUID:      {FB8D568A-AE5F-4136-8223-6E24ABE10A28}
// *********************************************************************//
  IOleCommandTargetArgumentDisp = dispinterface
    ['{FB8D568A-AE5F-4136-8223-6E24ABE10A28}']
    property Value: OleVariant readonly dispid 1610678272;
  end;

// *********************************************************************//
// Interface: _NumberFormat
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {81FDD9FE-6464-4A19-82AB-878823E85A5E}
// *********************************************************************//
  _NumberFormat = interface(IDispatch)
    ['{81FDD9FE-6464-4A19-82AB-878823E85A5E}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Code: WideString; safecall;
    procedure Set_Code(const Code: WideString); safecall;
    function Get_Format(Value: OleVariant; Count: Integer): WideString; safecall;
    function Get_Width(hDC: Integer; Value: OleVariant): Integer; safecall;
    function Get_Height(hDC: Integer; Value: OleVariant): Integer; safecall;
    procedure Render(hDC: Integer; hDCInfo: Integer; cx1: Integer; cy1: Integer; cx2: Integer; 
                     cy2: Integer; Left: Integer; Top: Integer; Width: Integer; Height: Integer; 
                     HorizontalAlignment: Integer; VerticalAlignment: Integer; Value: OleVariant); safecall;
    property Name: WideString read Get_Name;
    property Code: WideString read Get_Code;
    property Format[Value: OleVariant; Count: Integer]: WideString read Get_Format;
    property Width[hDC: Integer; Value: OleVariant]: Integer read Get_Width;
    property Height[hDC: Integer; Value: OleVariant]: Integer read Get_Height;
  end;

// *********************************************************************//
// DispIntf:  _NumberFormatDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {81FDD9FE-6464-4A19-82AB-878823E85A5E}
// *********************************************************************//
  _NumberFormatDisp = dispinterface
    ['{81FDD9FE-6464-4A19-82AB-878823E85A5E}']
    property Name: WideString readonly dispid 1610743808;
    property Code: WideString readonly dispid 1610743810;
    property Format[Value: OleVariant; Count: Integer]: WideString readonly dispid 1610743812;
    property Width[hDC: Integer; Value: OleVariant]: Integer readonly dispid 1610743813;
    property Height[hDC: Integer; Value: OleVariant]: Integer readonly dispid 1610743814;
    procedure Render(hDC: Integer; hDCInfo: Integer; cx1: Integer; cy1: Integer; cx2: Integer; 
                     cy2: Integer; Left: Integer; Top: Integer; Width: Integer; Height: Integer; 
                     HorizontalAlignment: Integer; VerticalAlignment: Integer; Value: OleVariant); dispid 1610743815;
  end;

// *********************************************************************//
// Interface: OCDirty
// Flags:     (16) Hidden
// GUID:      {B166E2BE-A46C-49AC-A76C-D0F2D1257C16}
// *********************************************************************//
  OCDirty = interface(IUnknown)
    ['{B166E2BE-A46C-49AC-A76C-D0F2D1257C16}']
    function IsDirty: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IOMEvent
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F5B39AE3-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  IOMEvent = interface(IDispatch)
    ['{F5B39AE3-1480-11D3-8549-00C04FAC67D7}']
    function Get_x: Integer; safecall;
    function Get_y: Integer; safecall;
    function Get_KeyCode: Integer; safecall;
    function Get_KeyChar: WideString; safecall;
    function Get_Button: Integer; safecall;
    function Get_AltKey: WordBool; safecall;
    function Get_CtrlKey: WordBool; safecall;
    function Get_ShiftKey: WordBool; safecall;
    property x: Integer read Get_x;
    property y: Integer read Get_y;
    property KeyCode: Integer read Get_KeyCode;
    property KeyChar: WideString read Get_KeyChar;
    property Button: Integer read Get_Button;
    property AltKey: WordBool read Get_AltKey;
    property CtrlKey: WordBool read Get_CtrlKey;
    property ShiftKey: WordBool read Get_ShiftKey;
  end;

// *********************************************************************//
// DispIntf:  IOMEventDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F5B39AE3-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  IOMEventDisp = dispinterface
    ['{F5B39AE3-1480-11D3-8549-00C04FAC67D7}']
    property x: Integer readonly dispid 1610743808;
    property y: Integer readonly dispid 1610743809;
    property KeyCode: Integer readonly dispid 1610743810;
    property KeyChar: WideString readonly dispid 1610743811;
    property Button: Integer readonly dispid 1610743812;
    property AltKey: WordBool readonly dispid 1610743813;
    property CtrlKey: WordBool readonly dispid 1610743814;
    property ShiftKey: WordBool readonly dispid 1610743815;
  end;

// *********************************************************************//
// Interface: DesignAdviseSink
// Flags:     (16) Hidden
// GUID:      {9B3E2331-87A6-11D1-BACD-00C04FAC6863}
// *********************************************************************//
  DesignAdviseSink = interface(IUnknown)
    ['{9B3E2331-87A6-11D1-BACD-00C04FAC6863}']
    function ObjectAdded(dscobjtyp: DscObjectTypeEnum; varObject: OleVariant; fGrid: Integer): HResult; stdcall;
    function ObjectDeleted(dscobjtyp: DscObjectTypeEnum; varObject: OleVariant): HResult; stdcall;
    function ObjectMoved(dscobjtyp: DscObjectTypeEnum; varObject: OleVariant; 
                         const bstrRsd: WideString): HResult; stdcall;
    function DataModelLoad: HResult; stdcall;
    function ObjectChanged(dscobjtyp: DscObjectTypeEnum; varObject: OleVariant): HResult; stdcall;
    function ObjectDeleteComplete(dscobjtyp: DscObjectTypeEnum): HResult; stdcall;
    function ObjectRenamed(dscobjtyp: DscObjectTypeEnum; varObject: OleVariant; 
                           const bstrPreviousName: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: SchemaFields
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AA3-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaFields = interface(IDispatch)
    ['{F5B39AA3-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): SchemaField; safecall;
    function Add(const Name: WideString; DataType: DataTypeEnum; Length: OleVariant): SchemaField; safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: SchemaField read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  SchemaFieldsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AA3-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaFieldsDisp = dispinterface
    ['{F5B39AA3-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: SchemaField readonly dispid 0; default;
    function Add(const Name: WideString; DataType: DataTypeEnum; Length: OleVariant): SchemaField; dispid 2;
    procedure Delete(Index: OleVariant); dispid 3;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: SchemaField
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A67-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaField = interface(IDispatch)
    ['{F5B39A67-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_DataType(DataType: DataTypeEnum); safecall;
    function Get_DataType: DataTypeEnum; safecall;
    procedure Set_Length(Length: Integer); safecall;
    function Get_Length: Integer; safecall;
    procedure Set_IsKey(IsKey: WordBool); safecall;
    function Get_IsKey: WordBool; safecall;
    procedure Delete; safecall;
    function Get_IsRenamed: WordBool; safecall;
    function Get_Properties: SchemaProperties; safecall;
    function Get_IsHyperlink: WordBool; safecall;
    function Get_BaseTableName: WideString; safecall;
    function Get_BaseColumnName: WideString; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property DataType: DataTypeEnum read Get_DataType write Set_DataType;
    property Length: Integer read Get_Length write Set_Length;
    property IsKey: WordBool read Get_IsKey write Set_IsKey;
    property IsRenamed: WordBool read Get_IsRenamed;
    property Properties: SchemaProperties read Get_Properties;
    property IsHyperlink: WordBool read Get_IsHyperlink;
    property BaseTableName: WideString read Get_BaseTableName;
    property BaseColumnName: WideString read Get_BaseColumnName;
  end;

// *********************************************************************//
// DispIntf:  SchemaFieldDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A67-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaFieldDisp = dispinterface
    ['{F5B39A67-1480-11D3-8549-00C04FAC67D7}']
    property Name: WideString dispid 0;
    property DataType: DataTypeEnum dispid 1;
    property Length: Integer dispid 2;
    property IsKey: WordBool dispid 7;
    procedure Delete; dispid 8;
    property IsRenamed: WordBool readonly dispid 9;
    property Properties: SchemaProperties readonly dispid 10;
    property IsHyperlink: WordBool readonly dispid 11;
    property BaseTableName: WideString readonly dispid 12;
    property BaseColumnName: WideString readonly dispid 13;
  end;

// *********************************************************************//
// Interface: SchemaProperties
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C233A511-A2BB-11D3-80F9-0050041DC1A6}
// *********************************************************************//
  SchemaProperties = interface(IDispatch)
    ['{C233A511-A2BB-11D3-80F9-0050041DC1A6}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): SchemaProperty; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: SchemaProperty read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  SchemaPropertiesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C233A511-A2BB-11D3-80F9-0050041DC1A6}
// *********************************************************************//
  SchemaPropertiesDisp = dispinterface
    ['{C233A511-A2BB-11D3-80F9-0050041DC1A6}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: SchemaProperty readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: SchemaProperty
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C233A512-A2BB-11D3-80F9-0050041DC1A6}
// *********************************************************************//
  SchemaProperty = interface(IDispatch)
    ['{C233A512-A2BB-11D3-80F9-0050041DC1A6}']
    function Get_Name: WideString; safecall;
    function Get_Value: OleVariant; safecall;
    property Name: WideString read Get_Name;
    property Value: OleVariant read Get_Value;
  end;

// *********************************************************************//
// DispIntf:  SchemaPropertyDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C233A512-A2BB-11D3-80F9-0050041DC1A6}
// *********************************************************************//
  SchemaPropertyDisp = dispinterface
    ['{C233A512-A2BB-11D3-80F9-0050041DC1A6}']
    property Name: WideString readonly dispid 0;
    property Value: OleVariant readonly dispid 1;
  end;

// *********************************************************************//
// Interface: SchemaDiagram
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {30C37029-25CD-11D4-8D9D-00500483860C}
// *********************************************************************//
  SchemaDiagram = interface(IDispatch)
    ['{30C37029-25CD-11D4-8D9D-00500483860C}']
    function Get_Name: WideString; safecall;
    function Get_SchemaRowsources: SchemaRowsources; safecall;
    property Name: WideString read Get_Name;
    property SchemaRowsources: SchemaRowsources read Get_SchemaRowsources;
  end;

// *********************************************************************//
// DispIntf:  SchemaDiagramDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {30C37029-25CD-11D4-8D9D-00500483860C}
// *********************************************************************//
  SchemaDiagramDisp = dispinterface
    ['{30C37029-25CD-11D4-8D9D-00500483860C}']
    property Name: WideString readonly dispid 0;
    property SchemaRowsources: SchemaRowsources readonly dispid 1;
  end;

// *********************************************************************//
// Interface: SchemaRowsources
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AA4-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaRowsources = interface(IDispatch)
    ['{F5B39AA4-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): SchemaRowsource; safecall;
    function Add(const Name: WideString; RowsourceType: DscRowsourceTypeEnum; 
                 CommandText: OleVariant): SchemaRowsource; safecall;
    function AddNew(const Name: WideString; RowsourceType: DscRowsourceTypeEnum; 
                    CommandText: OleVariant): SchemaRowsource; safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: SchemaRowsource read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  SchemaRowsourcesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AA4-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaRowsourcesDisp = dispinterface
    ['{F5B39AA4-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: SchemaRowsource readonly dispid 0; default;
    function Add(const Name: WideString; RowsourceType: DscRowsourceTypeEnum; 
                 CommandText: OleVariant): SchemaRowsource; dispid 2;
    function AddNew(const Name: WideString; RowsourceType: DscRowsourceTypeEnum; 
                    CommandText: OleVariant): SchemaRowsource; dispid 3;
    procedure Delete(Index: OleVariant); dispid 4;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: SchemaRowsource
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC8-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaRowsource = interface(IDispatch)
    ['{F5B39AC8-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_type_(RowsourceType: DscRowsourceTypeEnum); safecall;
    function Get_type_: DscRowsourceTypeEnum; safecall;
    function Get_CommandText: WideString; safecall;
    function Get_SchemaFields: SchemaFields; safecall;
    function Get_LookupSchemaRelationships: LookupSchemaRelationships; safecall;
    function Get_SublistSchemaRelationships: SublistSchemaRelationships; safecall;
    function Get_SchemaParameters: SchemaParameters; safecall;
    procedure Delete; safecall;
    function Get_Properties: SchemaProperties; safecall;
    function Get_IsHidden: WordBool; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property type_: DscRowsourceTypeEnum read Get_type_ write Set_type_;
    property CommandText: WideString read Get_CommandText;
    property SchemaFields: SchemaFields read Get_SchemaFields;
    property LookupSchemaRelationships: LookupSchemaRelationships read Get_LookupSchemaRelationships;
    property SublistSchemaRelationships: SublistSchemaRelationships read Get_SublistSchemaRelationships;
    property SchemaParameters: SchemaParameters read Get_SchemaParameters;
    property Properties: SchemaProperties read Get_Properties;
    property IsHidden: WordBool read Get_IsHidden;
  end;

// *********************************************************************//
// DispIntf:  SchemaRowsourceDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC8-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaRowsourceDisp = dispinterface
    ['{F5B39AC8-1480-11D3-8549-00C04FAC67D7}']
    property Name: WideString dispid 0;
    property type_: DscRowsourceTypeEnum dispid 1;
    property CommandText: WideString readonly dispid 2;
    property SchemaFields: SchemaFields readonly dispid 3;
    property LookupSchemaRelationships: LookupSchemaRelationships readonly dispid 4;
    property SublistSchemaRelationships: SublistSchemaRelationships readonly dispid 5;
    property SchemaParameters: SchemaParameters readonly dispid 6;
    procedure Delete; dispid 7;
    property Properties: SchemaProperties readonly dispid 8;
    property IsHidden: WordBool readonly dispid 9;
  end;

// *********************************************************************//
// Interface: LookupSchemaRelationships
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AF1-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  LookupSchemaRelationships = interface(IDispatch)
    ['{F5B39AF1-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): SchemaRelationship; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: SchemaRelationship read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  LookupSchemaRelationshipsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AF1-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  LookupSchemaRelationshipsDisp = dispinterface
    ['{F5B39AF1-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: SchemaRelationship readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: SchemaRelationship
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AEE-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaRelationship = interface(IDispatch)
    ['{F5B39AEE-1480-11D3-8549-00C04FAC67D7}']
    function Get_Name: WideString; safecall;
    function Get_ManySide: WideString; safecall;
    function Get_OneSide: WideString; safecall;
    function Get_SchemaRelatedFields: SchemaRelatedFields; safecall;
    procedure Delete; safecall;
    procedure Set_Location(plocation: DscLocationEnum); safecall;
    function Get_Location: DscLocationEnum; safecall;
    property Name: WideString read Get_Name;
    property ManySide: WideString read Get_ManySide;
    property OneSide: WideString read Get_OneSide;
    property SchemaRelatedFields: SchemaRelatedFields read Get_SchemaRelatedFields;
    property Location: DscLocationEnum read Get_Location write Set_Location;
  end;

// *********************************************************************//
// DispIntf:  SchemaRelationshipDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AEE-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaRelationshipDisp = dispinterface
    ['{F5B39AEE-1480-11D3-8549-00C04FAC67D7}']
    property Name: WideString readonly dispid 0;
    property ManySide: WideString readonly dispid 1;
    property OneSide: WideString readonly dispid 2;
    property SchemaRelatedFields: SchemaRelatedFields readonly dispid 3;
    procedure Delete; dispid 4;
    property Location: DscLocationEnum dispid 5;
  end;

// *********************************************************************//
// Interface: SchemaRelatedFields
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A6D-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaRelatedFields = interface(IDispatch)
    ['{F5B39A6D-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): SchemaRelatedField; safecall;
    function Add(const ManySchemaField: WideString; const OneSchemaField: WideString): SchemaRelatedField; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: SchemaRelatedField read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  SchemaRelatedFieldsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A6D-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaRelatedFieldsDisp = dispinterface
    ['{F5B39A6D-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: SchemaRelatedField readonly dispid 0; default;
    function Add(const ManySchemaField: WideString; const OneSchemaField: WideString): SchemaRelatedField; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: SchemaRelatedField
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A6E-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaRelatedField = interface(IDispatch)
    ['{F5B39A6E-1480-11D3-8549-00C04FAC67D7}']
    function Get_Name: WideString; safecall;
    function Get_ManySide: WideString; safecall;
    function Get_OneSide: WideString; safecall;
    property Name: WideString read Get_Name;
    property ManySide: WideString read Get_ManySide;
    property OneSide: WideString read Get_OneSide;
  end;

// *********************************************************************//
// DispIntf:  SchemaRelatedFieldDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A6E-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaRelatedFieldDisp = dispinterface
    ['{F5B39A6E-1480-11D3-8549-00C04FAC67D7}']
    property Name: WideString readonly dispid 0;
    property ManySide: WideString readonly dispid 1;
    property OneSide: WideString readonly dispid 2;
  end;

// *********************************************************************//
// Interface: SublistSchemaRelationships
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AF0-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SublistSchemaRelationships = interface(IDispatch)
    ['{F5B39AF0-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): SchemaRelationship; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: SchemaRelationship read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  SublistSchemaRelationshipsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AF0-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SublistSchemaRelationshipsDisp = dispinterface
    ['{F5B39AF0-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: SchemaRelationship readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: SchemaParameters
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AED-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaParameters = interface(IDispatch)
    ['{F5B39AED-1480-11D3-8549-00C04FAC67D7}']
    function Get_Item(Index: OleVariant): SchemaParameter; safecall;
    function Get_Count: Integer; safecall;
    function Add(const Name: WideString; DataType: OleVariant; Size: OleVariant; Scale: OleVariant; 
                 Precision: OleVariant; Direction: OleVariant): SchemaParameter; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: OleVariant]: SchemaParameter read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  SchemaParametersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AED-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaParametersDisp = dispinterface
    ['{F5B39AED-1480-11D3-8549-00C04FAC67D7}']
    property Item[Index: OleVariant]: SchemaParameter readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
    function Add(const Name: WideString; DataType: OleVariant; Size: OleVariant; Scale: OleVariant; 
                 Precision: OleVariant; Direction: OleVariant): SchemaParameter; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: SchemaParameter
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A89-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaParameter = interface(SchemaField)
    ['{F5B39A89-1480-11D3-8549-00C04FAC67D7}']
    function Get_NumericScale: Integer; safecall;
    function Get_Precision: Integer; safecall;
    function Get_Direction: ParameterDirectionEnum; safecall;
    property NumericScale: Integer read Get_NumericScale;
    property Precision: Integer read Get_Precision;
    property Direction: ParameterDirectionEnum read Get_Direction;
  end;

// *********************************************************************//
// DispIntf:  SchemaParameterDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A89-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaParameterDisp = dispinterface
    ['{F5B39A89-1480-11D3-8549-00C04FAC67D7}']
    property NumericScale: Integer readonly dispid 4;
    property Precision: Integer readonly dispid 5;
    property Direction: ParameterDirectionEnum readonly dispid 6;
    property Name: WideString dispid 0;
    property DataType: DataTypeEnum dispid 1;
    property Length: Integer dispid 2;
    property IsKey: WordBool dispid 7;
    procedure Delete; dispid 8;
    property IsRenamed: WordBool readonly dispid 9;
    property Properties: SchemaProperties readonly dispid 10;
    property IsHyperlink: WordBool readonly dispid 11;
    property BaseTableName: WideString readonly dispid 12;
    property BaseColumnName: WideString readonly dispid 13;
  end;

// *********************************************************************//
// Interface: SchemaDiagrams
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {30C37028-25CD-11D4-8D9D-00500483860C}
// *********************************************************************//
  SchemaDiagrams = interface(IDispatch)
    ['{30C37028-25CD-11D4-8D9D-00500483860C}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): SchemaDiagram; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: SchemaDiagram read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  SchemaDiagramsDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {30C37028-25CD-11D4-8D9D-00500483860C}
// *********************************************************************//
  SchemaDiagramsDisp = dispinterface
    ['{30C37028-25CD-11D4-8D9D-00500483860C}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: SchemaDiagram readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: SchemaRelationships
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A6C-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaRelationships = interface(IDispatch)
    ['{F5B39A6C-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): SchemaRelationship; safecall;
    function Add(const Name: WideString; const ManySchemaRowsource: WideString; 
                 const OneSchemaRowsource: WideString; const ManySchemaField: WideString; 
                 const OneSchemaField: WideString): SchemaRelationship; safecall;
    function AddNew(const Name: WideString; const ManySchemaRowsource: WideString; 
                    const OneSchemaRowsource: WideString; const ManySchemaField: WideString; 
                    const OneSchemaField: WideString): SchemaRelationship; safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: SchemaRelationship read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  SchemaRelationshipsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A6C-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SchemaRelationshipsDisp = dispinterface
    ['{F5B39A6C-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: SchemaRelationship readonly dispid 0; default;
    function Add(const Name: WideString; const ManySchemaRowsource: WideString; 
                 const OneSchemaRowsource: WideString; const ManySchemaField: WideString; 
                 const OneSchemaField: WideString): SchemaRelationship; dispid 2;
    function AddNew(const Name: WideString; const ManySchemaRowsource: WideString; 
                    const OneSchemaRowsource: WideString; const ManySchemaField: WideString; 
                    const OneSchemaField: WideString): SchemaRelationship; dispid 3;
    procedure Delete(Index: OleVariant); dispid 4;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PageRowsources
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AA5-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageRowsources = interface(IDispatch)
    ['{F5B39AA5-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): PageRowsource; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: PageRowsource read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PageRowsourcesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AA5-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageRowsourcesDisp = dispinterface
    ['{F5B39AA5-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: PageRowsource readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PageRowsource
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A9F-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageRowsource = interface(IDispatch)
    ['{F5B39A9F-1480-11D3-8549-00C04FAC67D7}']
    function Get_Name: WideString; safecall;
    procedure Set_Source(const Source: WideString); safecall;
    function Get_Source: WideString; safecall;
    function Get_RecordsetDef: RecordsetDef; safecall;
    function Get_PageFields: PageFields; safecall;
    function Get_LookupRelationships: LookupRelationships; safecall;
    function Promote: RecordsetDef; safecall;
    function IsBound: WordBool; safecall;
    procedure Delete; safecall;
    property Name: WideString read Get_Name;
    property Source: WideString read Get_Source write Set_Source;
    property RecordsetDef: RecordsetDef read Get_RecordsetDef;
    property PageFields: PageFields read Get_PageFields;
    property LookupRelationships: LookupRelationships read Get_LookupRelationships;
  end;

// *********************************************************************//
// DispIntf:  PageRowsourceDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A9F-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageRowsourceDisp = dispinterface
    ['{F5B39A9F-1480-11D3-8549-00C04FAC67D7}']
    property Name: WideString readonly dispid 0;
    property Source: WideString dispid 1;
    property RecordsetDef: RecordsetDef readonly dispid 2;
    property PageFields: PageFields readonly dispid 3;
    property LookupRelationships: LookupRelationships readonly dispid 4;
    function Promote: RecordsetDef; dispid 5;
    function IsBound: WordBool; dispid 6;
    procedure Delete; dispid 7;
  end;

// *********************************************************************//
// Interface: RecordsetDef
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A9D-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  RecordsetDef = interface(IDispatch)
    ['{F5B39A9D-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_ShapeText(FetchType: DscFetchTypeEnum): WideString; safecall;
    function Get_CommandText: WideString; safecall;
    procedure Set_DataEntry(DataEntry: WordBool); safecall;
    function Get_DataEntry: WordBool; safecall;
    procedure Set_ServerFilter(const ServerFilter: WideString); safecall;
    function Get_ServerFilter: WideString; safecall;
    function Get_PrimaryPageRowsource: PageRowsource; safecall;
    function Get_SublistRelationships: SublistRelationships; safecall;
    function Get_PageFields: PageFields; safecall;
    function Get_ParentRecordsetDef: RecordsetDef; safecall;
    function Demote: RecordsetDef; safecall;
    function Get_GroupingDefs: GroupingDefs; safecall;
    function Get_ParameterValues: ParameterValues; safecall;
    function Get_PageRowsources: PageRowsources; safecall;
    procedure Delete; safecall;
    procedure Set_UniqueTable(const TableName: WideString); safecall;
    function Get_UniqueTable: WideString; safecall;
    procedure Set_ResyncCommand(const Command: WideString); safecall;
    function Get_ResyncCommand: WideString; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property ShapeText[FetchType: DscFetchTypeEnum]: WideString read Get_ShapeText;
    property CommandText: WideString read Get_CommandText;
    property DataEntry: WordBool read Get_DataEntry write Set_DataEntry;
    property ServerFilter: WideString read Get_ServerFilter write Set_ServerFilter;
    property PrimaryPageRowsource: PageRowsource read Get_PrimaryPageRowsource;
    property SublistRelationships: SublistRelationships read Get_SublistRelationships;
    property PageFields: PageFields read Get_PageFields;
    property ParentRecordsetDef: RecordsetDef read Get_ParentRecordsetDef;
    property GroupingDefs: GroupingDefs read Get_GroupingDefs;
    property ParameterValues: ParameterValues read Get_ParameterValues;
    property PageRowsources: PageRowsources read Get_PageRowsources;
    property UniqueTable: WideString read Get_UniqueTable write Set_UniqueTable;
    property ResyncCommand: WideString read Get_ResyncCommand write Set_ResyncCommand;
  end;

// *********************************************************************//
// DispIntf:  RecordsetDefDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A9D-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  RecordsetDefDisp = dispinterface
    ['{F5B39A9D-1480-11D3-8549-00C04FAC67D7}']
    property Name: WideString dispid 0;
    property ShapeText[FetchType: DscFetchTypeEnum]: WideString readonly dispid 12;
    property CommandText: WideString readonly dispid 1;
    property DataEntry: WordBool dispid 2;
    property ServerFilter: WideString dispid 3;
    property PrimaryPageRowsource: PageRowsource readonly dispid 6;
    property SublistRelationships: SublistRelationships readonly dispid 7;
    property PageFields: PageFields readonly dispid 8;
    property ParentRecordsetDef: RecordsetDef readonly dispid 9;
    function Demote: RecordsetDef; dispid 10;
    property GroupingDefs: GroupingDefs readonly dispid 11;
    property ParameterValues: ParameterValues readonly dispid 13;
    property PageRowsources: PageRowsources readonly dispid 14;
    procedure Delete; dispid 15;
    property UniqueTable: WideString dispid 16;
    property ResyncCommand: WideString dispid 17;
  end;

// *********************************************************************//
// Interface: SublistRelationships
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE1-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SublistRelationships = interface(IDispatch)
    ['{F5B39AE1-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): PageRelationship; safecall;
    function Add(const PageRowsource: PageRowsource; const SchemaRelationship: SchemaRelationship): PageRelationship; safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: PageRelationship read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  SublistRelationshipsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AE1-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SublistRelationshipsDisp = dispinterface
    ['{F5B39AE1-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: PageRelationship readonly dispid 0; default;
    function Add(const PageRowsource: PageRowsource; const SchemaRelationship: SchemaRelationship): PageRelationship; dispid 2;
    procedure Delete(Index: OleVariant); dispid 3;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PageRelationship
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A6B-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageRelationship = interface(IDispatch)
    ['{F5B39A6B-1480-11D3-8549-00C04FAC67D7}']
    function Get_Name: WideString; safecall;
    function Get_type_: DscPageRelTypeEnum; safecall;
    procedure Set_JoinType(JoinType: DscJoinTypeEnum); safecall;
    function Get_JoinType: DscJoinTypeEnum; safecall;
    function Get_ManySide: PageRowsource; safecall;
    function Get_OneSide: PageRowsource; safecall;
    function Get_PageRelatedFields: PageRelatedFields; safecall;
    procedure Delete; safecall;
    property Name: WideString read Get_Name;
    property type_: DscPageRelTypeEnum read Get_type_;
    property JoinType: DscJoinTypeEnum read Get_JoinType write Set_JoinType;
    property ManySide: PageRowsource read Get_ManySide;
    property OneSide: PageRowsource read Get_OneSide;
    property PageRelatedFields: PageRelatedFields read Get_PageRelatedFields;
  end;

// *********************************************************************//
// DispIntf:  PageRelationshipDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A6B-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageRelationshipDisp = dispinterface
    ['{F5B39A6B-1480-11D3-8549-00C04FAC67D7}']
    property Name: WideString readonly dispid 0;
    property type_: DscPageRelTypeEnum readonly dispid 1;
    property JoinType: DscJoinTypeEnum dispid 2;
    property ManySide: PageRowsource readonly dispid 3;
    property OneSide: PageRowsource readonly dispid 4;
    property PageRelatedFields: PageRelatedFields readonly dispid 5;
    procedure Delete; dispid 6;
  end;

// *********************************************************************//
// Interface: PageRelatedFields
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A6F-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageRelatedFields = interface(IDispatch)
    ['{F5B39A6F-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): PageRelatedField; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: PageRelatedField read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PageRelatedFieldsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A6F-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageRelatedFieldsDisp = dispinterface
    ['{F5B39A6F-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: PageRelatedField readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: PageRelatedField
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A70-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageRelatedField = interface(IDispatch)
    ['{F5B39A70-1480-11D3-8549-00C04FAC67D7}']
    function Get_ManySide: PageField; safecall;
    function Get_OneSide: PageField; safecall;
    property ManySide: PageField read Get_ManySide;
    property OneSide: PageField read Get_OneSide;
  end;

// *********************************************************************//
// DispIntf:  PageRelatedFieldDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A70-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageRelatedFieldDisp = dispinterface
    ['{F5B39A70-1480-11D3-8549-00C04FAC67D7}']
    property ManySide: PageField readonly dispid 0;
    property OneSide: PageField readonly dispid 1;
  end;

// *********************************************************************//
// Interface: PageField
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC7-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageField = interface(IDispatch)
    ['{F5B39AC7-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_FieldType: DscFieldTypeEnum; safecall;
    procedure Set_TotalType(TotalType: DscTotalTypeEnum); safecall;
    function Get_TotalType: DscTotalTypeEnum; safecall;
    procedure Set_GroupOn(GroupOn: DscGroupOnEnum); safecall;
    function Get_GroupOn: DscGroupOnEnum; safecall;
    procedure Set_GroupInterval(Interval: Double); safecall;
    function Get_GroupInterval: Double; safecall;
    function Get_PageRowsource: PageRowsource; safecall;
    function Get_RecordsetDef: RecordsetDef; safecall;
    function MoveGrouping(const GroupingDefDest: WideString; Index: OleVariant): GroupingDef; safecall;
    procedure Set_Location(Location: DscLocationEnum); safecall;
    function Get_Location: DscLocationEnum; safecall;
    procedure Set_Source(const Source: WideString); safecall;
    function Get_Source: WideString; safecall;
    function Get_DataType: DataTypeEnum; safecall;
    function Get_Length: Integer; safecall;
    function Get_SchemaField: SchemaField; safecall;
    function IsBound: WordBool; safecall;
    procedure Delete; safecall;
    procedure ValidateTotalType(TotalType: DscTotalTypeEnum); safecall;
    function DefaultName: WideString; safecall;
    function DefaultCaption: WideString; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property FieldType: DscFieldTypeEnum read Get_FieldType;
    property TotalType: DscTotalTypeEnum read Get_TotalType write Set_TotalType;
    property GroupOn: DscGroupOnEnum read Get_GroupOn write Set_GroupOn;
    property GroupInterval: Double read Get_GroupInterval write Set_GroupInterval;
    property PageRowsource: PageRowsource read Get_PageRowsource;
    property RecordsetDef: RecordsetDef read Get_RecordsetDef;
    property Location: DscLocationEnum read Get_Location write Set_Location;
    property Source: WideString read Get_Source write Set_Source;
    property DataType: DataTypeEnum read Get_DataType;
    property Length: Integer read Get_Length;
    property SchemaField: SchemaField read Get_SchemaField;
  end;

// *********************************************************************//
// DispIntf:  PageFieldDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC7-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageFieldDisp = dispinterface
    ['{F5B39AC7-1480-11D3-8549-00C04FAC67D7}']
    property Name: WideString dispid 0;
    property FieldType: DscFieldTypeEnum readonly dispid 1;
    property TotalType: DscTotalTypeEnum dispid 4;
    property GroupOn: DscGroupOnEnum dispid 5;
    property GroupInterval: Double dispid 6;
    property PageRowsource: PageRowsource readonly dispid 7;
    property RecordsetDef: RecordsetDef readonly dispid 8;
    function MoveGrouping(const GroupingDefDest: WideString; Index: OleVariant): GroupingDef; dispid 9;
    property Location: DscLocationEnum dispid 10;
    property Source: WideString dispid 11;
    property DataType: DataTypeEnum readonly dispid 2;
    property Length: Integer readonly dispid 3;
    property SchemaField: SchemaField readonly dispid 12;
    function IsBound: WordBool; dispid 13;
    procedure Delete; dispid 14;
    procedure ValidateTotalType(TotalType: DscTotalTypeEnum); dispid 15;
    function DefaultName: WideString; dispid 16;
    function DefaultCaption: WideString; dispid 17;
  end;

// *********************************************************************//
// Interface: GroupingDef
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A7B-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  GroupingDef = interface(IDispatch)
    ['{F5B39A7B-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_PageFields: PageFields; safecall;
    procedure Delete; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property PageFields: PageFields read Get_PageFields;
  end;

// *********************************************************************//
// DispIntf:  GroupingDefDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A7B-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  GroupingDefDisp = dispinterface
    ['{F5B39A7B-1480-11D3-8549-00C04FAC67D7}']
    property Name: WideString dispid 0;
    property PageFields: PageFields readonly dispid 1;
    procedure Delete; dispid 2;
  end;

// *********************************************************************//
// Interface: PageFields
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB1-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageFields = interface(IDispatch)
    ['{F5B39AB1-1480-11D3-8549-00C04FAC67D7}']
    function Get_Item(Index: OleVariant): PageField; safecall;
    function Get_Count: Integer; safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Add(Source: OleVariant; FieldType: OleVariant; Name: OleVariant; 
                 TotalType: DscTotalTypeEnum; Index: OleVariant): PageField; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function AddBroken(Source: OleVariant; FieldType: OleVariant; Name: OleVariant; 
                       TotalType: DscTotalTypeEnum; Index: OleVariant): PageField; safecall;
    property Item[Index: OleVariant]: PageField read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  PageFieldsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB1-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  PageFieldsDisp = dispinterface
    ['{F5B39AB1-1480-11D3-8549-00C04FAC67D7}']
    property Item[Index: OleVariant]: PageField readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
    procedure Delete(Index: OleVariant); dispid 3;
    function Add(Source: OleVariant; FieldType: OleVariant; Name: OleVariant; 
                 TotalType: DscTotalTypeEnum; Index: OleVariant): PageField; dispid 4;
    property _NewEnum: IUnknown readonly dispid -4;
    function AddBroken(Source: OleVariant; FieldType: OleVariant; Name: OleVariant; 
                       TotalType: DscTotalTypeEnum; Index: OleVariant): PageField; dispid 5;
  end;

// *********************************************************************//
// Interface: GroupingDefs
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A7C-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  GroupingDefs = interface(IDispatch)
    ['{F5B39A7C-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): GroupingDef; safecall;
    function Add(const GroupingDefName: WideString; const GroupingFieldName: WideString; 
                 const PageFieldName: WideString; Index: OleVariant): GroupingDef; safecall;
    function AddTotal(const GroupingDefName: WideString; const GroupingFieldName: WideString; 
                      const PageFieldName: WideString; TotalType: DscTotalTypeEnum; 
                      Index: OleVariant): GroupingDef; safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: GroupingDef read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  GroupingDefsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A7C-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  GroupingDefsDisp = dispinterface
    ['{F5B39A7C-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: GroupingDef readonly dispid 0; default;
    function Add(const GroupingDefName: WideString; const GroupingFieldName: WideString; 
                 const PageFieldName: WideString; Index: OleVariant): GroupingDef; dispid 2;
    function AddTotal(const GroupingDefName: WideString; const GroupingFieldName: WideString; 
                      const PageFieldName: WideString; TotalType: DscTotalTypeEnum; 
                      Index: OleVariant): GroupingDef; dispid 3;
    procedure Delete(Index: OleVariant); dispid 4;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: ParameterValues
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AFF-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ParameterValues = interface(IDispatch)
    ['{F5B39AFF-1480-11D3-8549-00C04FAC67D7}']
    function Get_Item(Index: OleVariant): ParameterValue; safecall;
    function Get_Count: Integer; safecall;
    function Add(const ParameterName: WideString; Value: OleVariant): ParameterValue; safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Item[Index: OleVariant]: ParameterValue read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  ParameterValuesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AFF-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ParameterValuesDisp = dispinterface
    ['{F5B39AFF-1480-11D3-8549-00C04FAC67D7}']
    property Item[Index: OleVariant]: ParameterValue readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
    function Add(const ParameterName: WideString; Value: OleVariant): ParameterValue; dispid 2;
    procedure Delete(Index: OleVariant); dispid 3;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: ParameterValue
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B0F-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ParameterValue = interface(IDispatch)
    ['{F5B39B0F-1480-11D3-8549-00C04FAC67D7}']
    function Get_Name: WideString; safecall;
    function Get_Expression: WideString; safecall;
    procedure Set_Expression(const Expression: WideString); safecall;
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(Value: OleVariant); safecall;
    property Name: WideString read Get_Name;
    property Expression: WideString read Get_Expression write Set_Expression;
    property Value: OleVariant read Get_Value write Set_Value;
  end;

// *********************************************************************//
// DispIntf:  ParameterValueDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B0F-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ParameterValueDisp = dispinterface
    ['{F5B39B0F-1480-11D3-8549-00C04FAC67D7}']
    property Name: WideString readonly dispid 0;
    property Expression: WideString dispid 1;
    property Value: OleVariant dispid 2;
  end;

// *********************************************************************//
// Interface: LookupRelationships
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A74-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  LookupRelationships = interface(IDispatch)
    ['{F5B39A74-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): PageRelationship; safecall;
    function Add(const PageRowsource: PageRowsource; const SchemaRelationship: SchemaRelationship): PageRelationship; safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: PageRelationship read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  LookupRelationshipsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A74-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  LookupRelationshipsDisp = dispinterface
    ['{F5B39A74-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: PageRelationship readonly dispid 0; default;
    function Add(const PageRowsource: PageRowsource; const SchemaRelationship: SchemaRelationship): PageRelationship; dispid 2;
    procedure Delete(Index: OleVariant); dispid 3;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: RecordsetDefs
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AA2-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  RecordsetDefs = interface(IDispatch)
    ['{F5B39AA2-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): RecordsetDef; safecall;
    function Add(SchemaRowsource: OleVariant; Name: OleVariant): RecordsetDef; safecall;
    function AddNew(const Source: WideString; RowsourceType: OleVariant; Name: OleVariant): RecordsetDef; safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: RecordsetDef read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  RecordsetDefsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AA2-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  RecordsetDefsDisp = dispinterface
    ['{F5B39AA2-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: RecordsetDef readonly dispid 0; default;
    function Add(SchemaRowsource: OleVariant; Name: OleVariant): RecordsetDef; dispid 2;
    function AddNew(const Source: WideString; RowsourceType: OleVariant; Name: OleVariant): RecordsetDef; dispid 3;
    procedure Delete(Index: OleVariant); dispid 4;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: AllPageFields
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B45-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  AllPageFields = interface(IDispatch)
    ['{F5B39B45-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): PageField; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: PageField read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  AllPageFieldsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B45-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  AllPageFieldsDisp = dispinterface
    ['{F5B39B45-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: PageField readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: AllGroupingDefs
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AF9-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  AllGroupingDefs = interface(IDispatch)
    ['{F5B39AF9-1480-11D3-8549-00C04FAC67D7}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: OleVariant): GroupingDef; safecall;
    function Get__NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: OleVariant]: GroupingDef read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  AllGroupingDefsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AF9-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  AllGroupingDefsDisp = dispinterface
    ['{F5B39AF9-1480-11D3-8549-00C04FAC67D7}']
    property Count: Integer readonly dispid 1;
    property Item[Index: OleVariant]: GroupingDef readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// Interface: IDARef
// Flags:     (5072) Hidden Dual NonExtensible OleAutomation Restricted Dispatchable
// GUID:      {97D6D375-23BB-11D1-A0E1-00C04FC9E20F}
// *********************************************************************//
  IDARef = interface(IDispatch)
    ['{97D6D375-23BB-11D1-A0E1-00C04FC9E20F}']
    function Get_ObjType: Integer; safecall;
    function Get_ItemMoniker: WideString; safecall;
    function Get_DAId: WideString; safecall;
    function Get_Reltype: FieldListRelationshipTypeEnum; safecall;
    function Get_RelName: WideString; safecall;
    property ObjType: Integer read Get_ObjType;
    property ItemMoniker: WideString read Get_ItemMoniker;
    property DAId: WideString read Get_DAId;
    property Reltype: FieldListRelationshipTypeEnum read Get_Reltype;
    property RelName: WideString read Get_RelName;
  end;

// *********************************************************************//
// DispIntf:  IDARefDisp
// Flags:     (5072) Hidden Dual NonExtensible OleAutomation Restricted Dispatchable
// GUID:      {97D6D375-23BB-11D1-A0E1-00C04FC9E20F}
// *********************************************************************//
  IDARefDisp = dispinterface
    ['{97D6D375-23BB-11D1-A0E1-00C04FC9E20F}']
    property ObjType: Integer readonly dispid 1;
    property ItemMoniker: WideString readonly dispid 2;
    property DAId: WideString readonly dispid 3;
    property Reltype: FieldListRelationshipTypeEnum readonly dispid 4;
    property RelName: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: Section
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A68-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  Section = interface(IDispatch)
    ['{F5B39A68-1480-11D3-8549-00C04FAC67D7}']
    function Get_type_: SectTypeEnum; safecall;
    function Get_DataPage: DataPage; safecall;
    function Get_HTMLContainer: IDispatch; safecall;
    function Get_ParentSection: Section; safecall;
    function Get_ChildSection: Section; safecall;
    function Get_NextSibling: Section; safecall;
    function Get_PreviousSibling: Section; safecall;
    function Get_NextSection: Section; safecall;
    function Get_PreviousSection: Section; safecall;
    function Get_IsExpanded: WordBool; safecall;
    procedure Expand; safecall;
    procedure Collapse; safecall;
    procedure MakeCurrent(ScrollIntoView: WordBool); safecall;
    property type_: SectTypeEnum read Get_type_;
    property DataPage: DataPage read Get_DataPage;
    property HTMLContainer: IDispatch read Get_HTMLContainer;
    property ParentSection: Section read Get_ParentSection;
    property ChildSection: Section read Get_ChildSection;
    property NextSibling: Section read Get_NextSibling;
    property PreviousSibling: Section read Get_PreviousSibling;
    property NextSection: Section read Get_NextSection;
    property PreviousSection: Section read Get_PreviousSection;
    property IsExpanded: WordBool read Get_IsExpanded;
  end;

// *********************************************************************//
// DispIntf:  SectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A68-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  SectionDisp = dispinterface
    ['{F5B39A68-1480-11D3-8549-00C04FAC67D7}']
    property type_: SectTypeEnum readonly dispid 1106;
    property DataPage: DataPage readonly dispid 1102;
    property HTMLContainer: IDispatch readonly dispid 1103;
    property ParentSection: Section readonly dispid 1107;
    property ChildSection: Section readonly dispid 1108;
    property NextSibling: Section readonly dispid 1109;
    property PreviousSibling: Section readonly dispid 1110;
    property NextSection: Section readonly dispid 1111;
    property PreviousSection: Section readonly dispid 1112;
    property IsExpanded: WordBool readonly dispid 1113;
    procedure Expand; dispid 1104;
    procedure Collapse; dispid 1105;
    procedure MakeCurrent(ScrollIntoView: WordBool); dispid 1114;
  end;

// *********************************************************************//
// Interface: DataPage
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB4-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  DataPage = interface(IDispatch)
    ['{F5B39AB4-1480-11D3-8549-00C04FAC67D7}']
    function Get_GroupLevel: GroupLevel; safecall;
    function Get_Recordset: Recordset; safecall;
    procedure Set_Filter(Criteria: OleVariant); safecall;
    function Get_Filter: OleVariant; safecall;
    procedure Set_IsFilterOn(IsFilterOn: WordBool); safecall;
    function Get_IsFilterOn: WordBool; safecall;
    procedure MoveFirst; safecall;
    procedure MoveLast; safecall;
    procedure MoveNext; safecall;
    procedure MovePrevious; safecall;
    procedure NewRecord; safecall;
    procedure DeleteRecord; safecall;
    function Get_FirstSection: Section; safecall;
    procedure Save; safecall;
    procedure Undo; safecall;
    procedure Requery; safecall;
    procedure SortAscending; safecall;
    procedure SortDescending; safecall;
    procedure ApplyFilter; safecall;
    procedure ToggleFilter; safecall;
    procedure Help; safecall;
    function IsButtonEnabled(Button: NavButtonEnum): WordBool; safecall;
    property GroupLevel: GroupLevel read Get_GroupLevel;
    property Recordset: Recordset read Get_Recordset;
    property Filter: OleVariant read Get_Filter write Set_Filter;
    property IsFilterOn: WordBool read Get_IsFilterOn write Set_IsFilterOn;
    property FirstSection: Section read Get_FirstSection;
  end;

// *********************************************************************//
// DispIntf:  DataPageDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AB4-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  DataPageDisp = dispinterface
    ['{F5B39AB4-1480-11D3-8549-00C04FAC67D7}']
    property GroupLevel: GroupLevel readonly dispid 1300;
    property Recordset: Recordset readonly dispid 1301;
    property Filter: OleVariant dispid 1302;
    property IsFilterOn: WordBool dispid 1303;
    procedure MoveFirst; dispid 1304;
    procedure MoveLast; dispid 1305;
    procedure MoveNext; dispid 1306;
    procedure MovePrevious; dispid 1307;
    procedure NewRecord; dispid 1308;
    procedure DeleteRecord; dispid 1309;
    property FirstSection: Section readonly dispid 1310;
    procedure Save; dispid 1311;
    procedure Undo; dispid 1312;
    procedure Requery; dispid 1313;
    procedure SortAscending; dispid 1314;
    procedure SortDescending; dispid 1315;
    procedure ApplyFilter; dispid 1316;
    procedure ToggleFilter; dispid 1317;
    procedure Help; dispid 1318;
    function IsButtonEnabled(Button: NavButtonEnum): WordBool; dispid 1319;
  end;

// *********************************************************************//
// Interface: GroupLevel
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A76-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  GroupLevel = interface(IDispatch)
    ['{F5B39A76-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_GroupOn(GroupOn: DscGroupOnEnum); safecall;
    function Get_GroupOn: DscGroupOnEnum; safecall;
    procedure Set_GroupInterval(Interval: Double); safecall;
    function Get_GroupInterval: Double; safecall;
    procedure Set_GroupHeader(Header: WordBool); safecall;
    function Get_GroupHeader: WordBool; safecall;
    procedure Set_GroupFooter(Footer: WordBool); safecall;
    function Get_GroupFooter: WordBool; safecall;
    procedure Set_CaptionSection(CaptionSection: WordBool); safecall;
    function Get_CaptionSection: WordBool; safecall;
    procedure Set_RecordNavigationSection(RecNavSection: WordBool); safecall;
    function Get_RecordNavigationSection: WordBool; safecall;
    procedure Set_DataPageSize(Repeat_: Integer); safecall;
    function Get_DataPageSize: Integer; safecall;
    procedure Set_ExpandedByDefault(ExpandedByDefault: WordBool); safecall;
    function Get_ExpandedByDefault: WordBool; safecall;
    procedure Set_GroupFilterControl(const GroupFilterControl: WideString); safecall;
    function Get_GroupFilterControl: WideString; safecall;
    procedure Set_DefaultSort(const DefaultSort: WideString); safecall;
    function Get_DefaultSort: WideString; safecall;
    procedure Set_RecordSource(const RecordSource: WideString); safecall;
    function Get_RecordSource: WideString; safecall;
    procedure Set_CaptionElementId(const CaptionElementId: WideString); safecall;
    function Get_CaptionElementId: WideString; safecall;
    procedure Set_HeaderElementId(const HeaderElementId: WideString); safecall;
    function Get_HeaderElementId: WideString; safecall;
    procedure Set_FooterElementId(const FooterElementId: WideString); safecall;
    function Get_FooterElementId: WideString; safecall;
    procedure Set_RecordNavigationElementId(const RecordNavigationElementId: WideString); safecall;
    function Get_RecordNavigationElementId: WideString; safecall;
    function Get_GroupedOnField: PageField; safecall;
    procedure Set_GroupFilterField(const GroupFilterField: WideString); safecall;
    function Get_GroupFilterField: WideString; safecall;
    procedure Set_SGWindow(Param1: Integer); safecall;
    procedure Set_SGMessage(Param1: SYSUINT); safecall;
    procedure SetDesignerFlags(grfFlags: Integer; vfSet: WordBool); safecall;
    procedure Set_AllowEdits(AllowEdits: WordBool); safecall;
    function Get_AllowEdits: WordBool; safecall;
    procedure Set_AllowAdditions(AllowAdditions: WordBool); safecall;
    function Get_AllowAdditions: WordBool; safecall;
    procedure Set_AllowDeletions(AllowDeletions: WordBool); safecall;
    function Get_AllowDeletions: WordBool; safecall;
    procedure Set_RecordSelector(RecordSelector: WordBool); safecall;
    function Get_RecordSelector: WordBool; safecall;
    procedure Set_AlternateRowColor(const AlternateRowColor: WideString); safecall;
    function Get_AlternateRowColor: WideString; safecall;
    function Get_Name: WideString; safecall;
    property GroupOn: DscGroupOnEnum read Get_GroupOn write Set_GroupOn;
    property GroupInterval: Double read Get_GroupInterval write Set_GroupInterval;
    property GroupHeader: WordBool read Get_GroupHeader write Set_GroupHeader;
    property GroupFooter: WordBool read Get_GroupFooter write Set_GroupFooter;
    property CaptionSection: WordBool read Get_CaptionSection write Set_CaptionSection;
    property RecordNavigationSection: WordBool read Get_RecordNavigationSection write Set_RecordNavigationSection;
    property DataPageSize: Integer read Get_DataPageSize write Set_DataPageSize;
    property ExpandedByDefault: WordBool read Get_ExpandedByDefault write Set_ExpandedByDefault;
    property GroupFilterControl: WideString read Get_GroupFilterControl write Set_GroupFilterControl;
    property DefaultSort: WideString read Get_DefaultSort write Set_DefaultSort;
    property RecordSource: WideString read Get_RecordSource write Set_RecordSource;
    property CaptionElementId: WideString read Get_CaptionElementId write Set_CaptionElementId;
    property HeaderElementId: WideString read Get_HeaderElementId write Set_HeaderElementId;
    property FooterElementId: WideString read Get_FooterElementId write Set_FooterElementId;
    property RecordNavigationElementId: WideString read Get_RecordNavigationElementId write Set_RecordNavigationElementId;
    property GroupedOnField: PageField read Get_GroupedOnField;
    property GroupFilterField: WideString read Get_GroupFilterField write Set_GroupFilterField;
    property SGWindow: Integer write Set_SGWindow;
    property SGMessage: SYSUINT write Set_SGMessage;
    property AllowEdits: WordBool read Get_AllowEdits write Set_AllowEdits;
    property AllowAdditions: WordBool read Get_AllowAdditions write Set_AllowAdditions;
    property AllowDeletions: WordBool read Get_AllowDeletions write Set_AllowDeletions;
    property RecordSelector: WordBool read Get_RecordSelector write Set_RecordSelector;
    property AlternateRowColor: WideString read Get_AlternateRowColor write Set_AlternateRowColor;
    property Name: WideString read Get_Name;
  end;

// *********************************************************************//
// DispIntf:  GroupLevelDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A76-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  GroupLevelDisp = dispinterface
    ['{F5B39A76-1480-11D3-8549-00C04FAC67D7}']
    property GroupOn: DscGroupOnEnum dispid 800;
    property GroupInterval: Double dispid 807;
    property GroupHeader: WordBool dispid 801;
    property GroupFooter: WordBool dispid 802;
    property CaptionSection: WordBool dispid 803;
    property RecordNavigationSection: WordBool dispid 804;
    property DataPageSize: Integer dispid 805;
    property ExpandedByDefault: WordBool dispid 806;
    property GroupFilterControl: WideString dispid 808;
    property DefaultSort: WideString dispid 809;
    property RecordSource: WideString dispid 810;
    property CaptionElementId: WideString dispid 811;
    property HeaderElementId: WideString dispid 812;
    property FooterElementId: WideString dispid 813;
    property RecordNavigationElementId: WideString dispid 814;
    property GroupedOnField: PageField readonly dispid 815;
    property GroupFilterField: WideString dispid 816;
    property SGWindow: Integer writeonly dispid 817;
    property SGMessage: SYSUINT writeonly dispid 818;
    procedure SetDesignerFlags(grfFlags: Integer; vfSet: WordBool); dispid 830;
    property AllowEdits: WordBool dispid 819;
    property AllowAdditions: WordBool dispid 820;
    property AllowDeletions: WordBool dispid 821;
    property RecordSelector: WordBool dispid 822;
    property AlternateRowColor: WideString dispid 823;
    property Name: WideString readonly dispid -800;
  end;

// *********************************************************************//
// Interface: GroupLevels
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B00-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  GroupLevels = interface(IDispatch)
    ['{F5B39B00-1480-11D3-8549-00C04FAC67D7}']
    function Get_Item(Index: OleVariant): GroupLevel; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: OleVariant; safecall;
    function Add(const RecordSource: WideString; FailIfThere: WordBool): GroupLevel; safecall;
    procedure Delete(Index: OleVariant); safecall;
    property Item[Index: OleVariant]: GroupLevel read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: OleVariant read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  GroupLevelsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B00-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  GroupLevelsDisp = dispinterface
    ['{F5B39B00-1480-11D3-8549-00C04FAC67D7}']
    property Item[Index: OleVariant]: GroupLevel readonly dispid 0; default;
    property Count: Integer readonly dispid 850;
    property _NewEnum: OleVariant readonly dispid -4;
    function Add(const RecordSource: WideString; FailIfThere: WordBool): GroupLevel; dispid 851;
    procedure Delete(Index: OleVariant); dispid 852;
  end;

// *********************************************************************//
// Interface: DataPages
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A85-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  DataPages = interface(IDispatch)
    ['{F5B39A85-1480-11D3-8549-00C04FAC67D7}']
    function Get_Item(Index: OleVariant): DataPage; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: OleVariant; safecall;
    property Item[Index: OleVariant]: DataPage read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: OleVariant read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  DataPagesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39A85-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  DataPagesDisp = dispinterface
    ['{F5B39A85-1480-11D3-8549-00C04FAC67D7}']
    property Item[Index: OleVariant]: DataPage readonly dispid 0; default;
    property Count: Integer readonly dispid 850;
    property _NewEnum: OleVariant readonly dispid -4;
  end;

// *********************************************************************//
// Interface: ElementExtension
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AAC-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ElementExtension = interface(IDispatch)
    ['{F5B39AAC-1480-11D3-8549-00C04FAC67D7}']
    function Get_ElementID: WideString; safecall;
    procedure Set_ConsumesRecordset(ConsumesRecordset: WordBool); safecall;
    function Get_ConsumesRecordset: WordBool; safecall;
    procedure Set_AlternateDataSource(const AlternateDataSource: WideString); safecall;
    function Get_AlternateDataSource: WideString; safecall;
    procedure Set_ListRowSource(const ListRowSource: WideString); safecall;
    function Get_ListRowSource: WideString; safecall;
    procedure Set_ListBoundField(const BoundField: WideString); safecall;
    function Get_ListBoundField: WideString; safecall;
    procedure Set_ListDisplayField(const DisplayField: WideString); safecall;
    function Get_ListDisplayField: WideString; safecall;
    procedure Set_ChildLabel(const ChildLabel: WideString); safecall;
    function Get_ChildLabel: WideString; safecall;
    procedure Set_TotalType(TotalType: DscTotalTypeEnum); safecall;
    function Get_TotalType: DscTotalTypeEnum; safecall;
    procedure Set_DefaultValue(const DefaultValue: WideString); safecall;
    function Get_DefaultValue: WideString; safecall;
    procedure Set_RecordSource(const RecordSource: WideString); safecall;
    function Get_RecordSource: WideString; safecall;
    procedure Set_ControlSource(const ControlSource: WideString); safecall;
    function Get_ControlSource: WideString; safecall;
    procedure Set_UniqueTable(const UniqueTable: WideString); safecall;
    function Get_UniqueTable: WideString; safecall;
    procedure Set_ResyncCommand(const ResyncCommand: WideString); safecall;
    function Get_ResyncCommand: WideString; safecall;
    procedure Set_ServerFilter(const ServerFilter: WideString); safecall;
    function Get_ServerFilter: WideString; safecall;
    procedure SetDesignerFlags(grfFlags: Integer; vfSet: WordBool); safecall;
    procedure Set_Format(const Format: WideString); safecall;
    function Get_Format: WideString; safecall;
    procedure FixupNames(const bstrOldSource: WideString; const bstrNewSource: WideString; 
                         const bstrOldDefaultCaption: WideString); safecall;
    procedure Set_ElementID(const ElementID: WideString); safecall;
    procedure Set_RecordsetLabel(const RecordsetLabel: WideString); safecall;
    function Get_RecordsetLabel: WideString; safecall;
    property ElementID: WideString read Get_ElementID write Set_ElementID;
    property ConsumesRecordset: WordBool read Get_ConsumesRecordset write Set_ConsumesRecordset;
    property AlternateDataSource: WideString read Get_AlternateDataSource write Set_AlternateDataSource;
    property ListRowSource: WideString read Get_ListRowSource write Set_ListRowSource;
    property ListBoundField: WideString read Get_ListBoundField write Set_ListBoundField;
    property ListDisplayField: WideString read Get_ListDisplayField write Set_ListDisplayField;
    property ChildLabel: WideString read Get_ChildLabel write Set_ChildLabel;
    property TotalType: DscTotalTypeEnum read Get_TotalType write Set_TotalType;
    property DefaultValue: WideString read Get_DefaultValue write Set_DefaultValue;
    property RecordSource: WideString read Get_RecordSource write Set_RecordSource;
    property ControlSource: WideString read Get_ControlSource write Set_ControlSource;
    property UniqueTable: WideString read Get_UniqueTable write Set_UniqueTable;
    property ResyncCommand: WideString read Get_ResyncCommand write Set_ResyncCommand;
    property ServerFilter: WideString read Get_ServerFilter write Set_ServerFilter;
    property Format: WideString read Get_Format write Set_Format;
    property RecordsetLabel: WideString read Get_RecordsetLabel write Set_RecordsetLabel;
  end;

// *********************************************************************//
// DispIntf:  ElementExtensionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AAC-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ElementExtensionDisp = dispinterface
    ['{F5B39AAC-1480-11D3-8549-00C04FAC67D7}']
    property ElementID: WideString dispid 900;
    property ConsumesRecordset: WordBool dispid 902;
    property AlternateDataSource: WideString dispid 911;
    property ListRowSource: WideString dispid 904;
    property ListBoundField: WideString dispid 905;
    property ListDisplayField: WideString dispid 906;
    property ChildLabel: WideString dispid 907;
    property TotalType: DscTotalTypeEnum dispid 908;
    property DefaultValue: WideString dispid 909;
    property RecordSource: WideString dispid 910;
    property ControlSource: WideString dispid 912;
    property UniqueTable: WideString dispid 913;
    property ResyncCommand: WideString dispid 914;
    property ServerFilter: WideString dispid 916;
    procedure SetDesignerFlags(grfFlags: Integer; vfSet: WordBool); dispid 930;
    property Format: WideString dispid 915;
    procedure FixupNames(const bstrOldSource: WideString; const bstrNewSource: WideString; 
                         const bstrOldDefaultCaption: WideString); dispid 931;
    property RecordsetLabel: WideString dispid 917;
  end;

// *********************************************************************//
// Interface: ElementExtensions
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC9-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ElementExtensions = interface(IDispatch)
    ['{F5B39AC9-1480-11D3-8549-00C04FAC67D7}']
    function Get_Item(Index: OleVariant): ElementExtension; safecall;
    function Get_Count: Integer; safecall;
    function Get__NewEnum: OleVariant; safecall;
    function Add(const ElementID: WideString; FailIfThere: WordBool): ElementExtension; safecall;
    procedure Delete(Index: OleVariant); safecall;
    property Item[Index: OleVariant]: ElementExtension read Get_Item; default;
    property Count: Integer read Get_Count;
    property _NewEnum: OleVariant read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  ElementExtensionsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AC9-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  ElementExtensionsDisp = dispinterface
    ['{F5B39AC9-1480-11D3-8549-00C04FAC67D7}']
    property Item[Index: OleVariant]: ElementExtension readonly dispid 0; default;
    property Count: Integer readonly dispid 950;
    property _NewEnum: OleVariant readonly dispid -4;
    function Add(const ElementID: WideString; FailIfThere: WordBool): ElementExtension; dispid 951;
    procedure Delete(Index: OleVariant); dispid 952;
  end;

// *********************************************************************//
// Interface: IDataSourceControl
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AAF-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  IDataSourceControl = interface(IDispatch)
    ['{F5B39AAF-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_ConnectionString(const ConnectionString: WideString); safecall;
    function Get_ConnectionString: WideString; safecall;
    function Get_CurrentDirectory: WideString; safecall;
    procedure Set_UseRemoteProvider(RemoteProvider: WordBool); safecall;
    function Get_UseRemoteProvider: WordBool; safecall;
    function Get_Connection: Connection; safecall;
    procedure Set_DataEntry(DataEntry: WordBool); safecall;
    function Get_DataEntry: WordBool; safecall;
    procedure Set_MaxRecords(RecordsMax: Integer); safecall;
    function Get_MaxRecords: Integer; safecall;
    function Get_DefaultRecordset: Recordset; safecall;
    function Execute(const RecordsetName: WideString; ExecuteOption: ExecuteOptionEnum; 
                     FetchType: DscFetchTypeEnum): Recordset; safecall;
    function Get_SchemaRowsources: SchemaRowsources; safecall;
    function Get_SchemaRelationships: SchemaRelationships; safecall;
    function Get_PageRowsources: PageRowsources; safecall;
    function Get_RecordsetDefs: RecordsetDefs; safecall;
    function Get_RootRecordsetDefs: RecordsetDefs; safecall;
    function Get_PivotDefs: IDispatch; safecall;
    procedure SetDataAssistant(const DataAssistant: IDispatch); safecall;
    procedure DesignAdvise(const Advise: IUnknown; const SinkName: WideString); safecall;
    procedure DesignUnAdvise(const SinkName: WideString); safecall;
    procedure ProcessDrop(const pUnknownDropGoo: IUnknown; const bstrRecordSetDefName: WideString; 
                          dl: DscDropLocationEnum; dt: DscDropTypeEnum; 
                          const PageRowsource: WideString; const SchemaRelationship: WideString); safecall;
    procedure ScriptDrop(Rowsources: OleVariant; Relationships: OleVariant; Fields: OleVariant; 
                         const bstrRecordSetDefName: WideString; dl: DscDropLocationEnum; 
                         dt: DscDropTypeEnum; const PageRowsource: WideString; 
                         const SchemaRelationship: WideString); safecall;
    procedure Set_DefaultRecordsetName(const DefaultRecordsetName: WideString); safecall;
    function Get_DefaultRecordsetName: WideString; safecall;
    procedure Set_XMLData(const XMLData: WideString); safecall;
    function Get_XMLData: WideString; safecall;
    function Get_GroupLevels: GroupLevels; safecall;
    function GetContainingSection(const Element: IDispatch): Section; safecall;
    function Get_Constants: IDispatch; safecall;
    function Get_ElementExtensions: ElementExtensions; safecall;
    function Get_IsNew: WordBool; safecall;
    procedure ScriptValidate(Rowsources: OleVariant; Relationships: OleVariant; Fields: OleVariant; 
                             const RecordsetDef: WideString; dl: DscDropLocationEnum; 
                             dt: DscDropTypeEnum; out DropRowsource: WideString; 
                             out RowsourcesOut: OleVariant; out RelationshipsOut: OleVariant); safecall;
    procedure Set_RecordsetType(RecordsetType: DscRecordsetTypeEnum); safecall;
    function Get_RecordsetType: DscRecordsetTypeEnum; safecall;
    procedure ValidateDrop(const UnknownDropGoo: IUnknown; const RecordSetDefName: WideString; 
                           Location: DscDropLocationEnum; Type_: DscDropTypeEnum; 
                           out DropRowsource: WideString; out RowsourcesOut: OleVariant; 
                           out RelationshipsOut: OleVariant; out NumberOfDrops: Integer); safecall;
    function HyperlinkPart(Hyperlink: OleVariant; Part: DscHyperlinkPartEnum): WideString; safecall;
    procedure SchemaRefresh; safecall;
    procedure UpdateElementID(const OldID: WideString; const NewID: WideString); safecall;
    function Get_AllPageFields: AllPageFields; safecall;
    function Get_CurrentSection: Section; safecall;
    function Get_ProviderType(DataMember: OleVariant): ProviderType; safecall;
    function Get_AllGroupingDefs: AllGroupingDefs; safecall;
    procedure Set_DisplayAlerts(DisplayAlerts: WordBool); safecall;
    function Get_DisplayAlerts: WordBool; safecall;
    function Get_DataPages: DataPages; safecall;
    procedure Reset; safecall;
    function getDataMemberName(lIndex: Integer): DataMember; safecall;
    function getDataMemberCount: Integer; safecall;
    procedure Set_GridX(xGrid: Integer); safecall;
    function Get_GridX: Integer; safecall;
    procedure Set_GridY(yGrid: Integer); safecall;
    function Get_GridY: Integer; safecall;
    function Get_LoadError: Integer; safecall;
    procedure GetSectionInfo(const SectionElement: IDispatch; out RecordSource: WideString; 
                             out SectionType: SectTypeEnum; out GroupLevel: GroupLevel); safecall;
    procedure DeleteRecordSourceIfUnused(const RecordSource: WideString); safecall;
    procedure DeletePageFieldIfUnused(const RecordSource: WideString; const PageField: WideString); safecall;
    procedure Set_DefaultControlType(ControlType: DefaultControlTypeEnum); safecall;
    function Get_DefaultControlType: DefaultControlTypeEnum; safecall;
    procedure Set_IsDirty(IsDirty: WordBool); safecall;
    function Get_IsDirty: WordBool; safecall;
    function Get_Busy: WordBool; safecall;
    function Get_Version: WideString; safecall;
    function Get_MajorVersion: Integer; safecall;
    function Get_MinorVersion: WideString; safecall;
    function Get_BuildNumber: WideString; safecall;
    function Get_RevisionNumber: WideString; safecall;
    procedure ResetRecordset(const bstrRecordset: WideString); safecall;
    procedure Set_IsDataModelDirty(IsDataModelDirty: WordBool); safecall;
    function Get_IsDataModelDirty: WordBool; safecall;
    procedure GetExportableConnectString(ExportType: ExportableConnectStringEnum; 
                                         out ConnectString: WideString); safecall;
    procedure ExportXML(eEncoding: DscEncodingEnum); safecall;
    procedure SetRootRecordset(const RecordsetName: WideString; const Recordset: Recordset); safecall;
    procedure GetOfflineDisplayInfo(out OnlineServer: WideString; out OnlineDatabase: WideString; 
                                    out OfflineServer: WideString; out OfflineDatabase: WideString); safecall;
    procedure Set_OfflineType(Publication: DscOfflineTypeEnum); safecall;
    function Get_OfflineType: DscOfflineTypeEnum; safecall;
    procedure Set_OfflinePublication(const Publication: WideString); safecall;
    function Get_OfflinePublication: WideString; safecall;
    function Get_Offline: WordBool; safecall;
    procedure Set_OfflineSource(const Source: WideString); safecall;
    function Get_OfflineSource: WideString; safecall;
    procedure Set_XMLLocation(Location: DscXMLLocationEnum); safecall;
    function Get_XMLLocation: DscXMLLocationEnum; safecall;
    procedure Set_UseXMLData(UseXMLData: WordBool); safecall;
    function Get_UseXMLData: WordBool; safecall;
    procedure Set_XMLDataTarget(const Source: WideString); safecall;
    function Get_XMLDataTarget: WideString; safecall;
    procedure Refresh(RefreshType: RefreshType); safecall;
    procedure FindRelatedGroupLevel(const pGroupLevel: GroupLevel; fChild: Integer; 
                                    out ppGrouplevel: GroupLevel); safecall;
    procedure DllNotification(Notification: NotificationType); safecall;
    procedure SuspendUndo(Suspend: WordBool); safecall;
    procedure UpdateFocus; safecall;
    procedure Set_ConnectionFile(const ConnectionFile: WideString); safecall;
    function Get_ConnectionFile: WideString; safecall;
    function IsValidDAPProvider(const ConnectionString: WideString): WordBool; safecall;
    function Get_DefaultRecordsetDefName: WideString; safecall;
    function EuroConvert(Number: Double; const SourceCurrency: WideString; 
                         const TargetCurrency: WideString; FullPrecision: OleVariant; 
                         TriangulationPrecision: OleVariant): Double; safecall;
    function GetDAPProviders: PSafeArray; safecall;
    procedure SetSynchronizing(Synchronizing: WordBool); safecall;
    function Get_ConnectionStringFullPath: WideString; safecall;
    procedure SetDisplayError(DisplayError: WordBool); safecall;
    procedure Set_IsNew(IsNew: WordBool); safecall;
    function Get_SchemaDiagrams: SchemaDiagrams; safecall;
    procedure SuspendXMLReExecute(Suspend: WordBool); safecall;
    function Get_DBNSOwnerName: WideString; safecall;
    procedure SetFirePropChange(FirePropChange: WordBool); safecall;
    function Nz(Value: OleVariant; ValueIfNull: OleVariant): OleVariant; safecall;
    procedure RefreshJetCache; safecall;
    procedure AutoRefreshOfflineSource; safecall;
    property ConnectionString: WideString read Get_ConnectionString write Set_ConnectionString;
    property CurrentDirectory: WideString read Get_CurrentDirectory;
    property UseRemoteProvider: WordBool read Get_UseRemoteProvider write Set_UseRemoteProvider;
    property Connection: Connection read Get_Connection;
    property DataEntry: WordBool read Get_DataEntry write Set_DataEntry;
    property MaxRecords: Integer read Get_MaxRecords write Set_MaxRecords;
    property DefaultRecordset: Recordset read Get_DefaultRecordset;
    property SchemaRowsources: SchemaRowsources read Get_SchemaRowsources;
    property SchemaRelationships: SchemaRelationships read Get_SchemaRelationships;
    property PageRowsources: PageRowsources read Get_PageRowsources;
    property RecordsetDefs: RecordsetDefs read Get_RecordsetDefs;
    property RootRecordsetDefs: RecordsetDefs read Get_RootRecordsetDefs;
    property PivotDefs: IDispatch read Get_PivotDefs;
    property DefaultRecordsetName: WideString read Get_DefaultRecordsetName write Set_DefaultRecordsetName;
    property XMLData: WideString read Get_XMLData write Set_XMLData;
    property GroupLevels: GroupLevels read Get_GroupLevels;
    property Constants: IDispatch read Get_Constants;
    property ElementExtensions: ElementExtensions read Get_ElementExtensions;
    property IsNew: WordBool read Get_IsNew write Set_IsNew;
    property RecordsetType: DscRecordsetTypeEnum read Get_RecordsetType write Set_RecordsetType;
    property AllPageFields: AllPageFields read Get_AllPageFields;
    property CurrentSection: Section read Get_CurrentSection;
    property ProviderType[DataMember: OleVariant]: ProviderType read Get_ProviderType;
    property AllGroupingDefs: AllGroupingDefs read Get_AllGroupingDefs;
    property DisplayAlerts: WordBool read Get_DisplayAlerts write Set_DisplayAlerts;
    property DataPages: DataPages read Get_DataPages;
    property GridX: Integer read Get_GridX write Set_GridX;
    property GridY: Integer read Get_GridY write Set_GridY;
    property LoadError: Integer read Get_LoadError;
    property DefaultControlType: DefaultControlTypeEnum read Get_DefaultControlType write Set_DefaultControlType;
    property IsDirty: WordBool read Get_IsDirty write Set_IsDirty;
    property Busy: WordBool read Get_Busy;
    property Version: WideString read Get_Version;
    property MajorVersion: Integer read Get_MajorVersion;
    property MinorVersion: WideString read Get_MinorVersion;
    property BuildNumber: WideString read Get_BuildNumber;
    property RevisionNumber: WideString read Get_RevisionNumber;
    property IsDataModelDirty: WordBool read Get_IsDataModelDirty write Set_IsDataModelDirty;
    property OfflineType: DscOfflineTypeEnum read Get_OfflineType write Set_OfflineType;
    property OfflinePublication: WideString read Get_OfflinePublication write Set_OfflinePublication;
    property Offline: WordBool read Get_Offline;
    property OfflineSource: WideString read Get_OfflineSource write Set_OfflineSource;
    property XMLLocation: DscXMLLocationEnum read Get_XMLLocation write Set_XMLLocation;
    property UseXMLData: WordBool read Get_UseXMLData write Set_UseXMLData;
    property XMLDataTarget: WideString read Get_XMLDataTarget write Set_XMLDataTarget;
    property ConnectionFile: WideString read Get_ConnectionFile write Set_ConnectionFile;
    property DefaultRecordsetDefName: WideString read Get_DefaultRecordsetDefName;
    property ConnectionStringFullPath: WideString read Get_ConnectionStringFullPath;
    property SchemaDiagrams: SchemaDiagrams read Get_SchemaDiagrams;
    property DBNSOwnerName: WideString read Get_DBNSOwnerName;
  end;

// *********************************************************************//
// DispIntf:  IDataSourceControlDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AAF-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  IDataSourceControlDisp = dispinterface
    ['{F5B39AAF-1480-11D3-8549-00C04FAC67D7}']
    property ConnectionString: WideString dispid 1;
    property CurrentDirectory: WideString readonly dispid 68;
    property UseRemoteProvider: WordBool dispid 11;
    property Connection: Connection readonly dispid 6;
    property DataEntry: WordBool dispid 10;
    property MaxRecords: Integer dispid 12;
    property DefaultRecordset: Recordset readonly dispid 2;
    function Execute(const RecordsetName: WideString; ExecuteOption: ExecuteOptionEnum; 
                     FetchType: DscFetchTypeEnum): Recordset; dispid 18;
    property SchemaRowsources: SchemaRowsources readonly dispid 20;
    property SchemaRelationships: SchemaRelationships readonly dispid 21;
    property PageRowsources: PageRowsources readonly dispid 22;
    property RecordsetDefs: RecordsetDefs readonly dispid 23;
    property RootRecordsetDefs: RecordsetDefs readonly dispid 24;
    property PivotDefs: IDispatch readonly dispid 25;
    procedure SetDataAssistant(const DataAssistant: IDispatch); dispid 26;
    procedure DesignAdvise(const Advise: IUnknown; const SinkName: WideString); dispid 14;
    procedure DesignUnAdvise(const SinkName: WideString); dispid 15;
    procedure ProcessDrop(const pUnknownDropGoo: IUnknown; const bstrRecordSetDefName: WideString; 
                          dl: DscDropLocationEnum; dt: DscDropTypeEnum; 
                          const PageRowsource: WideString; const SchemaRelationship: WideString); dispid 27;
    procedure ScriptDrop(Rowsources: OleVariant; Relationships: OleVariant; Fields: OleVariant; 
                         const bstrRecordSetDefName: WideString; dl: DscDropLocationEnum; 
                         dt: DscDropTypeEnum; const PageRowsource: WideString; 
                         const SchemaRelationship: WideString); dispid 28;
    property DefaultRecordsetName: WideString dispid 60;
    property XMLData: WideString dispid 34;
    property GroupLevels: GroupLevels readonly dispid 13;
    function GetContainingSection(const Element: IDispatch): Section; dispid 603;
    property Constants: IDispatch readonly dispid 35;
    property ElementExtensions: ElementExtensions readonly dispid 40;
    property IsNew: WordBool dispid 70;
    procedure ScriptValidate(Rowsources: OleVariant; Relationships: OleVariant; Fields: OleVariant; 
                             const RecordsetDef: WideString; dl: DscDropLocationEnum; 
                             dt: DscDropTypeEnum; out DropRowsource: WideString; 
                             out RowsourcesOut: OleVariant; out RelationshipsOut: OleVariant); dispid 42;
    property RecordsetType: DscRecordsetTypeEnum dispid 43;
    procedure ValidateDrop(const UnknownDropGoo: IUnknown; const RecordSetDefName: WideString; 
                           Location: DscDropLocationEnum; Type_: DscDropTypeEnum; 
                           out DropRowsource: WideString; out RowsourcesOut: OleVariant; 
                           out RelationshipsOut: OleVariant; out NumberOfDrops: Integer); dispid 44;
    function HyperlinkPart(Hyperlink: OleVariant; Part: DscHyperlinkPartEnum): WideString; dispid 45;
    procedure SchemaRefresh; dispid 47;
    procedure UpdateElementID(const OldID: WideString; const NewID: WideString); dispid 48;
    property AllPageFields: AllPageFields readonly dispid 58;
    property CurrentSection: Section readonly dispid 61;
    property ProviderType[DataMember: OleVariant]: ProviderType readonly dispid 62;
    property AllGroupingDefs: AllGroupingDefs readonly dispid 63;
    property DisplayAlerts: WordBool dispid 65;
    property DataPages: DataPages readonly dispid 69;
    procedure Reset; dispid 72;
    function getDataMemberName(lIndex: Integer): DataMember; dispid 73;
    function getDataMemberCount: Integer; dispid 74;
    property GridX: Integer dispid 75;
    property GridY: Integer dispid 76;
    property LoadError: Integer readonly dispid 77;
    procedure GetSectionInfo(const SectionElement: IDispatch; out RecordSource: WideString; 
                             out SectionType: SectTypeEnum; out GroupLevel: GroupLevel); dispid 78;
    procedure DeleteRecordSourceIfUnused(const RecordSource: WideString); dispid 79;
    procedure DeletePageFieldIfUnused(const RecordSource: WideString; const PageField: WideString); dispid 80;
    property DefaultControlType: DefaultControlTypeEnum dispid 81;
    property IsDirty: WordBool dispid 82;
    property Busy: WordBool readonly dispid 83;
    property Version: WideString readonly dispid 84;
    property MajorVersion: Integer readonly dispid 85;
    property MinorVersion: WideString readonly dispid 86;
    property BuildNumber: WideString readonly dispid 87;
    property RevisionNumber: WideString readonly dispid 88;
    procedure ResetRecordset(const bstrRecordset: WideString); dispid 89;
    property IsDataModelDirty: WordBool dispid 71;
    procedure GetExportableConnectString(ExportType: ExportableConnectStringEnum; 
                                         out ConnectString: WideString); dispid 91;
    procedure ExportXML(eEncoding: DscEncodingEnum); dispid 93;
    procedure SetRootRecordset(const RecordsetName: WideString; const Recordset: Recordset); dispid 94;
    procedure GetOfflineDisplayInfo(out OnlineServer: WideString; out OnlineDatabase: WideString; 
                                    out OfflineServer: WideString; out OfflineDatabase: WideString); dispid 95;
    property OfflineType: DscOfflineTypeEnum dispid 96;
    property OfflinePublication: WideString dispid 97;
    property Offline: WordBool readonly dispid 98;
    property OfflineSource: WideString dispid 99;
    property XMLLocation: DscXMLLocationEnum dispid 100;
    property UseXMLData: WordBool dispid 101;
    property XMLDataTarget: WideString dispid 102;
    procedure Refresh(RefreshType: RefreshType); dispid 103;
    procedure FindRelatedGroupLevel(const pGroupLevel: GroupLevel; fChild: Integer; 
                                    out ppGrouplevel: GroupLevel); dispid 92;
    procedure DllNotification(Notification: NotificationType); dispid 104;
    procedure SuspendUndo(Suspend: WordBool); dispid 105;
    procedure UpdateFocus; dispid 106;
    property ConnectionFile: WideString dispid 108;
    function IsValidDAPProvider(const ConnectionString: WideString): WordBool; dispid 109;
    property DefaultRecordsetDefName: WideString readonly dispid 110;
    function EuroConvert(Number: Double; const SourceCurrency: WideString; 
                         const TargetCurrency: WideString; FullPrecision: OleVariant; 
                         TriangulationPrecision: OleVariant): Double; dispid 111;
    function GetDAPProviders: {??PSafeArray}OleVariant; dispid 112;
    procedure SetSynchronizing(Synchronizing: WordBool); dispid 113;
    property ConnectionStringFullPath: WideString readonly dispid 125;
    procedure SetDisplayError(DisplayError: WordBool); dispid 126;
    property SchemaDiagrams: SchemaDiagrams readonly dispid 128;
    procedure SuspendXMLReExecute(Suspend: WordBool); dispid 129;
    property DBNSOwnerName: WideString readonly dispid 130;
    procedure SetFirePropChange(FirePropChange: WordBool); dispid 131;
    function Nz(Value: OleVariant; ValueIfNull: OleVariant): OleVariant; dispid 132;
    procedure RefreshJetCache; dispid 133;
    procedure AutoRefreshOfflineSource; dispid 1320;
  end;

// *********************************************************************//
// Interface: DSCEventInfo
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B06-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  DSCEventInfo = interface(IDispatch)
    ['{F5B39B06-1480-11D3-8549-00C04FAC67D7}']
    function Get_DataPage: DataPage; safecall;
    function Get_Section: Section; safecall;
    function Get_Error: Error; safecall;
    function Get_ReturnValue: WordBool; safecall;
    procedure Set_ReturnValue(ReturnValue: WordBool); safecall;
    function Get_PercentComplete: Integer; safecall;
    function Get_Status: DscStatusEnum; safecall;
    procedure Set_DisplayAlert(DisplayAlert: DscDisplayAlert); safecall;
    function Get_DisplayAlert: DscDisplayAlert; safecall;
    function Get_Connection: Connection; safecall;
    property DataPage: DataPage read Get_DataPage;
    property Section: Section read Get_Section;
    property Error: Error read Get_Error;
    property ReturnValue: WordBool read Get_ReturnValue;
    property PercentComplete: Integer read Get_PercentComplete;
    property Status: DscStatusEnum read Get_Status;
    property DisplayAlert: DscDisplayAlert write Set_DisplayAlert;
    property Connection: Connection read Get_Connection;
  end;

// *********************************************************************//
// DispIntf:  DSCEventInfoDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B06-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  DSCEventInfoDisp = dispinterface
    ['{F5B39B06-1480-11D3-8549-00C04FAC67D7}']
    property DataPage: DataPage readonly dispid 1610743808;
    property Section: Section readonly dispid 1610743809;
    property Error: Error readonly dispid 1610743810;
    property ReturnValue: WordBool readonly dispid 1610743811;
    property PercentComplete: Integer readonly dispid 1610743813;
    property Status: DscStatusEnum readonly dispid 1610743814;
    property DisplayAlert: DscDisplayAlert writeonly dispid 1610743815;
    property Connection: Connection readonly dispid 1610743817;
  end;

// *********************************************************************//
// DispIntf:  _DataSourceControlEvent
// Flags:     (4096) Dispatchable
// GUID:      {F5B39A9B-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  _DataSourceControlEvent = dispinterface
    ['{F5B39A9B-1480-11D3-8549-00C04FAC67D7}']
    procedure Current(const DSCEventInfo: DSCEventInfo); dispid 624;
    procedure BeforeExpand(const DSCEventInfo: DSCEventInfo); dispid 626;
    procedure BeforeCollapse(const DSCEventInfo: DSCEventInfo); dispid 627;
    procedure BeforeFirstPage(const DSCEventInfo: DSCEventInfo); dispid 628;
    procedure BeforePreviousPage(const DSCEventInfo: DSCEventInfo); dispid 629;
    procedure BeforeNextPage(const DSCEventInfo: DSCEventInfo); dispid 630;
    procedure BeforeLastPage(const DSCEventInfo: DSCEventInfo); dispid 631;
    procedure DataError(const DSCEventInfo: DSCEventInfo); dispid 632;
    procedure DataPageComplete(const DSCEventInfo: DSCEventInfo); dispid 633;
    procedure BeforeInitialBind(const DSCEventInfo: DSCEventInfo); dispid 634;
    procedure RecordsetSaveProgress(const DSCEventInfo: DSCEventInfo); dispid 635;
    procedure AfterDelete(const DSCEventInfo: DSCEventInfo); dispid 636;
    procedure AfterInsert(const DSCEventInfo: DSCEventInfo); dispid 637;
    procedure AfterUpdate(const DSCEventInfo: DSCEventInfo); dispid 638;
    procedure BeforeDelete(const DSCEventInfo: DSCEventInfo); dispid 639;
    procedure BeforeInsert(const DSCEventInfo: DSCEventInfo); dispid 640;
    procedure BeforeOverwrite(const DSCEventInfo: DSCEventInfo); dispid 641;
    procedure BeforeUpdate(const DSCEventInfo: DSCEventInfo); dispid 642;
    procedure Dirty(const DSCEventInfo: DSCEventInfo); dispid 643;
    procedure RecordExit(const DSCEventInfo: DSCEventInfo); dispid 644;
    procedure Undo(const DSCEventInfo: DSCEventInfo); dispid 647;
    procedure Focus(const DSCEventInfo: DSCEventInfo); dispid 648;
  end;

// *********************************************************************//
// Interface: INavigationControl
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AA8-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  INavigationControl = interface(IDispatch)
    ['{F5B39AA8-1480-11D3-8549-00C04FAC67D7}']
    procedure Set_DataSource(const DataSource: DataSource); safecall;
    function Get_DataSource: DataSource; safecall;
    procedure Set_RecordSource(const RecordSource: DataMember); safecall;
    function Get_RecordSource: DataMember; safecall;
    procedure Set_RecordsetLabel(const RecordsetLabel: WideString); safecall;
    function Get_RecordsetLabel: WideString; safecall;
    procedure Set_ShowFirstButton(Show: WordBool); safecall;
    function Get_ShowFirstButton: WordBool; safecall;
    procedure Set_ShowPrevButton(Show: WordBool); safecall;
    function Get_ShowPrevButton: WordBool; safecall;
    procedure Set_ShowNextButton(Show: WordBool); safecall;
    function Get_ShowNextButton: WordBool; safecall;
    procedure Set_ShowLastButton(Show: WordBool); safecall;
    function Get_ShowLastButton: WordBool; safecall;
    procedure Set_ShowNewButton(Show: WordBool); safecall;
    function Get_ShowNewButton: WordBool; safecall;
    procedure Set_ShowDelButton(Show: WordBool); safecall;
    function Get_ShowDelButton: WordBool; safecall;
    procedure Set_ShowSaveButton(Show: WordBool); safecall;
    function Get_ShowSaveButton: WordBool; safecall;
    procedure Set_ShowUndoButton(Show: WordBool); safecall;
    function Get_ShowUndoButton: WordBool; safecall;
    procedure Set_ShowSortAscendingButton(Show: WordBool); safecall;
    function Get_ShowSortAscendingButton: WordBool; safecall;
    procedure Set_ShowSortDescendingButton(Show: WordBool); safecall;
    function Get_ShowSortDescendingButton: WordBool; safecall;
    procedure Set_ShowFilterBySelectionButton(pfShow: WordBool); safecall;
    function Get_ShowFilterBySelectionButton: WordBool; safecall;
    procedure Set_ShowToggleFilterButton(Show: WordBool); safecall;
    function Get_ShowToggleFilterButton: WordBool; safecall;
    procedure Set_ShowHelpButton(Show: WordBool); safecall;
    function Get_ShowHelpButton: WordBool; safecall;
    procedure Set_ShowLabel(Show: WordBool); safecall;
    function Get_ShowLabel: WordBool; safecall;
    function IsButtonEnabled(navbtn: NavButtonEnum): WordBool; safecall;
    procedure Set_FontName(const FontName: WideString); safecall;
    function Get_FontName: WideString; safecall;
    function Get__State: WideString; safecall;
    procedure Set__State(const State: WideString); safecall;
    procedure Redraw; safecall;
    procedure ReleaseDataPage; safecall;
    property DataSource: DataSource read Get_DataSource write Set_DataSource;
    property RecordSource: DataMember read Get_RecordSource write Set_RecordSource;
    property RecordsetLabel: WideString read Get_RecordsetLabel write Set_RecordsetLabel;
    property ShowFirstButton: WordBool read Get_ShowFirstButton write Set_ShowFirstButton;
    property ShowPrevButton: WordBool read Get_ShowPrevButton write Set_ShowPrevButton;
    property ShowNextButton: WordBool read Get_ShowNextButton write Set_ShowNextButton;
    property ShowLastButton: WordBool read Get_ShowLastButton write Set_ShowLastButton;
    property ShowNewButton: WordBool read Get_ShowNewButton write Set_ShowNewButton;
    property ShowDelButton: WordBool read Get_ShowDelButton write Set_ShowDelButton;
    property ShowSaveButton: WordBool read Get_ShowSaveButton write Set_ShowSaveButton;
    property ShowUndoButton: WordBool read Get_ShowUndoButton write Set_ShowUndoButton;
    property ShowSortAscendingButton: WordBool read Get_ShowSortAscendingButton write Set_ShowSortAscendingButton;
    property ShowSortDescendingButton: WordBool read Get_ShowSortDescendingButton write Set_ShowSortDescendingButton;
    property ShowFilterBySelectionButton: WordBool read Get_ShowFilterBySelectionButton write Set_ShowFilterBySelectionButton;
    property ShowToggleFilterButton: WordBool read Get_ShowToggleFilterButton write Set_ShowToggleFilterButton;
    property ShowHelpButton: WordBool read Get_ShowHelpButton write Set_ShowHelpButton;
    property ShowLabel: WordBool read Get_ShowLabel write Set_ShowLabel;
    property FontName: WideString read Get_FontName write Set_FontName;
    property _State: WideString read Get__State write Set__State;
  end;

// *********************************************************************//
// DispIntf:  INavigationControlDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39AA8-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  INavigationControlDisp = dispinterface
    ['{F5B39AA8-1480-11D3-8549-00C04FAC67D7}']
    property DataSource: DataSource dispid 700;
    property RecordSource: DataMember dispid 701;
    property RecordsetLabel: WideString dispid 702;
    property ShowFirstButton: WordBool dispid 704;
    property ShowPrevButton: WordBool dispid 705;
    property ShowNextButton: WordBool dispid 706;
    property ShowLastButton: WordBool dispid 707;
    property ShowNewButton: WordBool dispid 708;
    property ShowDelButton: WordBool dispid 709;
    property ShowSaveButton: WordBool dispid 710;
    property ShowUndoButton: WordBool dispid 711;
    property ShowSortAscendingButton: WordBool dispid 712;
    property ShowSortDescendingButton: WordBool dispid 713;
    property ShowFilterBySelectionButton: WordBool dispid 714;
    property ShowToggleFilterButton: WordBool dispid 715;
    property ShowHelpButton: WordBool dispid 716;
    property ShowLabel: WordBool dispid 718;
    function IsButtonEnabled(navbtn: NavButtonEnum): WordBool; dispid 717;
    property FontName: WideString dispid 719;
    property _State: WideString dispid 720;
    procedure Redraw; dispid 721;
    procedure ReleaseDataPage; dispid 722;
  end;

// *********************************************************************//
// Interface: INavUIHost
// Flags:     (16) Hidden
// GUID:      {F5B39AC5-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  INavUIHost = interface(IUnknown)
    ['{F5B39AC5-1480-11D3-8549-00C04FAC67D7}']
    function IsButtonEnabled(navbtn: Integer): Integer; stdcall;
    function BeforeButtonClick(navbtn: Integer; var Cancel: Integer): HResult; stdcall;
    function AfterButtonClick(navbtn: Integer): HResult; stdcall;
    function GetDisplayText(var DisplayText: WideString): HResult; stdcall;
    function OnNavUIChange: HResult; stdcall;
    function IsFilterOn: Integer; stdcall;
    function IsContextBiDi: Integer; stdcall;
    function GetFontName(var FontName: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _NavigationEvent
// Flags:     (4096) Dispatchable
// GUID:      {4BD09D02-45CC-11D1-B1D1-006097C97F9B}
// *********************************************************************//
  _NavigationEvent = dispinterface
    ['{4BD09D02-45CC-11D1-B1D1-006097C97F9B}']
    procedure ButtonClick(NavButton: NavButtonEnum); dispid 740;
  end;

// *********************************************************************//
// Interface: IDataPageDesigner
// Flags:     (16) Hidden
// GUID:      {F5B39ADD-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  IDataPageDesigner = interface(IUnknown)
    ['{F5B39ADD-1480-11D3-8549-00C04FAC67D7}']
    function ConnectDataComponents(const pDataSourceControl: IDataSourceControl): HResult; stdcall;
    function CreateSection(SectType: SectTypeEnum; wzRecordsetName: PWideChar): HResult; stdcall;
    function DeleteSection(SectType: SectTypeEnum; wzRecordsetName: PWideChar; 
                           fInGroupingDefDelete: Integer): HResult; stdcall;
    function OnGroupLevelAdded(const pGroupLevel: GroupLevel): HResult; stdcall;
    function OnGroupLevelDeleted: HResult; stdcall;
    function RebindGroupLevel(const pGroupLevel: GroupLevel; wzRecordsetNameOld: PWideChar; 
                              wzRecordsetNameNew: PWideChar): HResult; stdcall;
    function GetSharedConnectionObject(wzConnectionString: PWideChar; 
                                       var ppUnknownSharedConnection: IUnknown): HResult; stdcall;
    function TWPerformanceMarker(lMarker: Integer): HResult; stdcall;
    function IsDatabaseSecure(wzConnectionString: PWideChar; var pfSecure: Integer): HResult; stdcall;
    function OnPropChanged(dispidChanged: Integer): HResult; stdcall;
    function GetSharedDBNS(wzConnectionString: PWideChar; var ppUnknownSharedDBNS: IUnknown): HResult; stdcall;
    function GetDatapagePath(var ppbstrFileName: WideString): HResult; stdcall;
    function IsDesignMode(var pfDesignMode: Integer): HResult; stdcall;
    function RefreshDataTools(const pRequestingDSC: IDataSourceControl; vfForceRefresh: WordBool; 
                              rt: RefreshType): HResult; stdcall;
    function GetFieldListInstanceId(var ppbstrInstId: WideString): HResult; stdcall;
    function GetUndoManager(var pioum: IOleUndoManager): HResult; stdcall;
    function DoRelWiz(const pDSC: IDataSourceControl; const bstrRecordSetDef: WideString; 
                      const bstrDropRowsource: WideString; varRowsources: OleVariant; 
                      varRelationships: OleVariant; var ppprs: PageRowsource; 
                      var ppsr: SchemaRelationship): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IOleUndoManager
// Flags:     (0)
// GUID:      {D001F200-EF97-11CE-9BC9-00AA00608E01}
// *********************************************************************//
  IOleUndoManager = interface(IUnknown)
    ['{D001F200-EF97-11CE-9BC9-00AA00608E01}']
    function Open(const pPUU: IOleParentUndoUnit): HResult; stdcall;
    function Close(const pPUU: IOleParentUndoUnit; fCommit: Integer): HResult; stdcall;
    function Add(const pUU: IOleUndoUnit): HResult; stdcall;
    function GetOpenParentState(out pdwState: LongWord): HResult; stdcall;
    function DiscardFrom(const pUU: IOleUndoUnit): HResult; stdcall;
    function UndoTo(const pUU: IOleUndoUnit): HResult; stdcall;
    function RedoTo(const pUU: IOleUndoUnit): HResult; stdcall;
    function EnumUndoable(out ppEnum: IEnumOleUndoUnits): HResult; stdcall;
    function EnumRedoable(out ppEnum: IEnumOleUndoUnits): HResult; stdcall;
    function GetLastUndoDescription(out pbstr: WideString): HResult; stdcall;
    function GetLastRedoDescription(out pbstr: WideString): HResult; stdcall;
    function Enable(fEnable: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IOleUndoUnit
// Flags:     (0)
// GUID:      {894AD3B0-EF97-11CE-9BC9-00AA00608E01}
// *********************************************************************//
  IOleUndoUnit = interface(IUnknown)
    ['{894AD3B0-EF97-11CE-9BC9-00AA00608E01}']
    function Do_(const pUndoManager: IOleUndoManager): HResult; stdcall;
    function GetDescription(out pbstr: WideString): HResult; stdcall;
    function GetUnitType(out pClsid: TGUID; out plID: Integer): HResult; stdcall;
    function OnNextAdd: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IOleParentUndoUnit
// Flags:     (0)
// GUID:      {A1FAF330-EF97-11CE-9BC9-00AA00608E01}
// *********************************************************************//
  IOleParentUndoUnit = interface(IOleUndoUnit)
    ['{A1FAF330-EF97-11CE-9BC9-00AA00608E01}']
    function GhostMethod_IOleParentUndoUnit_0_1: HResult; stdcall;
    function GhostMethod_IOleParentUndoUnit_4_2: HResult; stdcall;
    function GhostMethod_IOleParentUndoUnit_8_3: HResult; stdcall;
    function GhostMethod_IOleParentUndoUnit_12_4: HResult; stdcall;
    function GhostMethod_IOleParentUndoUnit_16_5: HResult; stdcall;
    function GhostMethod_IOleParentUndoUnit_20_6: HResult; stdcall;
    function GhostMethod_IOleParentUndoUnit_24_7: HResult; stdcall;
    function Open(const pPUU: IOleParentUndoUnit): HResult; stdcall;
    function Close(const pPUU: IOleParentUndoUnit; fCommit: Integer): HResult; stdcall;
    function Add(const pUU: IOleUndoUnit): HResult; stdcall;
    function FindUnit(const pUU: IOleUndoUnit): HResult; stdcall;
    function GetParentState(out pdwState: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IEnumOleUndoUnits
// Flags:     (0)
// GUID:      {B3E7C340-EF97-11CE-9BC9-00AA00608E01}
// *********************************************************************//
  IEnumOleUndoUnits = interface(IUnknown)
    ['{B3E7C340-EF97-11CE-9BC9-00AA00608E01}']
    function RemoteNext(cElt: LongWord; out rgElt: IOleUndoUnit; out pcEltFetched: LongWord): HResult; stdcall;
    function Skip(cElt: LongWord): HResult; stdcall;
    function Reset: HResult; stdcall;
    function Clone(out ppEnum: IEnumOleUndoUnits): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ISimpleDataConverter
// Flags:     (16) Hidden
// GUID:      {78667670-3C3D-11D2-91F9-006097C97F9B}
// *********************************************************************//
  ISimpleDataConverter = interface(IUnknown)
    ['{78667670-3C3D-11D2-91F9-006097C97F9B}']
    function ConvertData(varSrc: OleVariant; vtDest: Integer; const pUnknownElement: IUnknown; 
                         var pvarDest: OleVariant): HResult; stdcall;
    function CanConvertData(vt1: Integer; vt2: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: FieldListHierarchy
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7BD180A4-0406-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  FieldListHierarchy = interface(IDispatch)
    ['{7BD180A4-0406-11D3-8549-00C04FAC67D7}']
    procedure SetHierarchySite(const pflhs: FieldListHierarchySite); safecall;
    function AddNode(const pflnParent: FieldListNode; fInsertFirst: WordBool; nID: Integer; 
                     const bstrName: WideString; const bstrData: WideString; nType: Integer): FieldListNode; safecall;
    function GetNode(nID: Integer): FieldListNode; safecall;
    procedure RemoveNode(const pfln: FieldListNode); safecall;
    function Get_Root: FieldListNode; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(pVal: WordBool); safecall;
    function AddType(nType: Integer): FieldListType; safecall;
    function GetType(nTypeId: Integer): FieldListType; safecall;
    function Get_Selection: FieldListNode; safecall;
    function Get_ConcatenateData: WordBool; safecall;
    procedure Set_ConcatenateData(pVal: WordBool); safecall;
    function Get_DataSeparator: WideString; safecall;
    procedure Set_DataSeparator(const pVal: WideString); safecall;
    function GetNextSelected(const pfln: FieldListNode): FieldListNode; safecall;
    property Root: FieldListNode read Get_Root;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Selection: FieldListNode read Get_Selection;
    property ConcatenateData: WordBool read Get_ConcatenateData write Set_ConcatenateData;
    property DataSeparator: WideString read Get_DataSeparator write Set_DataSeparator;
  end;

// *********************************************************************//
// DispIntf:  FieldListHierarchyDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7BD180A4-0406-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  FieldListHierarchyDisp = dispinterface
    ['{7BD180A4-0406-11D3-8549-00C04FAC67D7}']
    procedure SetHierarchySite(const pflhs: FieldListHierarchySite); dispid 1;
    function AddNode(const pflnParent: FieldListNode; fInsertFirst: WordBool; nID: Integer; 
                     const bstrName: WideString; const bstrData: WideString; nType: Integer): FieldListNode; dispid 2;
    function GetNode(nID: Integer): FieldListNode; dispid 3;
    procedure RemoveNode(const pfln: FieldListNode); dispid 4;
    property Root: FieldListNode readonly dispid 5;
    property Visible: WordBool dispid 6;
    function AddType(nType: Integer): FieldListType; dispid 7;
    function GetType(nTypeId: Integer): FieldListType; dispid 8;
    property Selection: FieldListNode readonly dispid 9;
    property ConcatenateData: WordBool dispid 10;
    property DataSeparator: WideString dispid 11;
    function GetNextSelected(const pfln: FieldListNode): FieldListNode; dispid 12;
  end;

// *********************************************************************//
// Interface: FieldListHierarchySite
// Flags:     (272) Hidden OleAutomation
// GUID:      {FA99DB40-2043-11D3-854E-00C04FAC67D7}
// *********************************************************************//
  FieldListHierarchySite = interface(IUnknown)
    ['{FA99DB40-2043-11D3-854E-00C04FAC67D7}']
    function PreSelect(nNodeId: Integer; nTypeId: Integer; nOldNodeId: Integer; 
                       nOldTypeId: Integer; out pfPrevent: Integer): HResult; stdcall;
    function PostSelect(nNodeId: Integer; nTypeId: Integer; nOldNodeId: Integer; nOldTypeId: Integer): HResult; stdcall;
    function PreExpand(nNodeId: Integer; nTypeId: Integer; fExpand: Integer; out pfPrevent: Integer): HResult; stdcall;
    function PostExpand(nNodeId: Integer; nTypeId: Integer; fExpand: Integer): HResult; stdcall;
    function PreDrag(nNodeId: Integer; nTypeId: Integer; out ppobject: IUnknown; 
                     out ppPivotView: IUnknown; out pfPrevent: Integer): HResult; stdcall;
    function PostDrag(nNodeId: Integer; nTypeId: Integer; hRes: HResult): HResult; stdcall;
    function PopulateChildren(nNodeId: Integer; nTypeId: Integer): HResult; stdcall;
    function ContextMenu(nNodeId: Integer; nTypeId: Integer; hMenu: SYSUINT; out pfPrevent: Integer): HResult; stdcall;
    function DoCommand(nNodeId: Integer; nTypeId: Integer; wid: SYSUINT): HResult; stdcall;
    function DoubleClick(nNodeId: Integer; nTypeId: Integer): HResult; stdcall;
    function PostDelete(nNodeId: Integer; nTypeId: Integer): HResult; stdcall;
    function PostMSelect(nSelMask: Integer): HResult; stdcall;
    function Click(nNodeId: Integer; nTypeId: Integer): HResult; stdcall;
    function KeyEvent(nNodeId: Integer; nTypeId: Integer; nMsg: Integer; nwParam: Integer; 
                      nlParam: Integer; out pfStopProcessing: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: FieldListNode
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F7DDE2F0-0895-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  FieldListNode = interface(IDispatch)
    ['{F7DDE2F0-0895-11D3-8549-00C04FAC67D7}']
    function Get_id: Integer; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_TypeId: Integer; safecall;
    function Get_Expanded: WordBool; safecall;
    procedure Set_Expanded(pVal: WordBool); safecall;
    function Get_Selected: WordBool; safecall;
    procedure Set_Selected(pVal: WordBool); safecall;
    function Get_Parent: FieldListNode; safecall;
    function Get_Child: FieldListNode; safecall;
    function Get_NextSibling: FieldListNode; safecall;
    function Get_PrevSibling: FieldListNode; safecall;
    function Get_Bold: WordBool; safecall;
    procedure Set_Bold(pVal: WordBool); safecall;
    function Get_Image: SYSINT; safecall;
    procedure Set_Image(pVal: SYSINT); safecall;
    function Get_Populated: WordBool; safecall;
    procedure Set_Populated(pVal: WordBool); safecall;
    function Get_Data: WideString; safecall;
    procedure Set_Data(const pVal: WideString); safecall;
    function Get_InfoTip: WideString; safecall;
    procedure Set_InfoTip(const pVal: WideString); safecall;
    function Get_HasCaret: WordBool; safecall;
    procedure Set_HasCaret(pVal: WordBool); safecall;
    function Get_Hierarchy: FieldListHierarchy; safecall;
    function Get_OverlayImage: SYSINT; safecall;
    procedure Set_OverlayImage(pVal: SYSINT); safecall;
    procedure SortChildren(vbByData: WordBool); safecall;
    property id: Integer read Get_id;
    property Name: WideString read Get_Name write Set_Name;
    property TypeId: Integer read Get_TypeId;
    property Expanded: WordBool read Get_Expanded write Set_Expanded;
    property Selected: WordBool read Get_Selected write Set_Selected;
    property Parent: FieldListNode read Get_Parent;
    property Child: FieldListNode read Get_Child;
    property NextSibling: FieldListNode read Get_NextSibling;
    property PrevSibling: FieldListNode read Get_PrevSibling;
    property Bold: WordBool read Get_Bold write Set_Bold;
    property Image: SYSINT read Get_Image write Set_Image;
    property Populated: WordBool read Get_Populated write Set_Populated;
    property Data: WideString read Get_Data write Set_Data;
    property InfoTip: WideString read Get_InfoTip write Set_InfoTip;
    property HasCaret: WordBool read Get_HasCaret write Set_HasCaret;
    property Hierarchy: FieldListHierarchy read Get_Hierarchy;
    property OverlayImage: SYSINT read Get_OverlayImage write Set_OverlayImage;
  end;

// *********************************************************************//
// DispIntf:  FieldListNodeDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F7DDE2F0-0895-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  FieldListNodeDisp = dispinterface
    ['{F7DDE2F0-0895-11D3-8549-00C04FAC67D7}']
    property id: Integer readonly dispid 1;
    property Name: WideString dispid 2;
    property TypeId: Integer readonly dispid 3;
    property Expanded: WordBool dispid 4;
    property Selected: WordBool dispid 5;
    property Parent: FieldListNode readonly dispid 6;
    property Child: FieldListNode readonly dispid 7;
    property NextSibling: FieldListNode readonly dispid 8;
    property PrevSibling: FieldListNode readonly dispid 9;
    property Bold: WordBool dispid 10;
    property Image: SYSINT dispid 11;
    property Populated: WordBool dispid 12;
    property Data: WideString dispid 13;
    property InfoTip: WideString dispid 14;
    property HasCaret: WordBool dispid 15;
    property Hierarchy: FieldListHierarchy readonly dispid 16;
    property OverlayImage: SYSINT dispid 17;
    procedure SortChildren(vbByData: WordBool); dispid 18;
  end;

// *********************************************************************//
// Interface: FieldListType
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {63F85AD0-1ACC-11D3-854A-00C04FAC67D7}
// *********************************************************************//
  FieldListType = interface(IDispatch)
    ['{63F85AD0-1ACC-11D3-854A-00C04FAC67D7}']
    function Get_CanDrag: WordBool; safecall;
    procedure Set_CanDrag(pVal: WordBool); safecall;
    function Get_CallbackForChildren: WordBool; safecall;
    procedure Set_CallbackForChildren(pVal: WordBool); safecall;
    function Get_TypeMenu: SYSUINT; safecall;
    procedure Set_TypeMenu(pVal: SYSUINT); safecall;
    function Get_Image: SYSINT; safecall;
    procedure Set_Image(pVal: SYSINT); safecall;
    property CanDrag: WordBool read Get_CanDrag write Set_CanDrag;
    property CallbackForChildren: WordBool read Get_CallbackForChildren write Set_CallbackForChildren;
    property TypeMenu: SYSUINT read Get_TypeMenu write Set_TypeMenu;
    property Image: SYSINT read Get_Image write Set_Image;
  end;

// *********************************************************************//
// DispIntf:  FieldListTypeDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {63F85AD0-1ACC-11D3-854A-00C04FAC67D7}
// *********************************************************************//
  FieldListTypeDisp = dispinterface
    ['{63F85AD0-1ACC-11D3-854A-00C04FAC67D7}']
    property CanDrag: WordBool dispid 1;
    property CallbackForChildren: WordBool dispid 2;
    property TypeMenu: SYSUINT dispid 3;
    property Image: SYSINT dispid 4;
  end;

// *********************************************************************//
// Interface: FieldList
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7BD1809E-0406-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  FieldList = interface(IDispatch)
    ['{7BD1809E-0406-11D3-8549-00C04FAC67D7}']
    function CreateHierarchy(bVisible: WordBool): FieldListHierarchy; safecall;
    function Get_ClipboardFormat: SYSINT; safecall;
    function AddBitmap(iWidth: SYSINT; iHeight: SYSINT; const pip: IPicture; crMask: LongWord): SYSINT; safecall;
    function Get_InstanceID: WideString; safecall;
    function Get_Font: IFont; safecall;
    procedure Set_Font(const pVal: IFont); safecall;
    function Get_MultiSelect: WordBool; safecall;
    procedure Set_MultiSelect(pVal: WordBool); safecall;
    function Get_SelectRestriction: FieldListSelectRestriction; safecall;
    procedure Set_SelectRestriction(pVal: FieldListSelectRestriction); safecall;
    function GetNextSelected(const pfln: FieldListNode): FieldListNode; safecall;
    procedure ClearSelection; safecall;
    procedure SetOverlayImage(iImage: SYSINT; iOverlay: SYSINT); safecall;
    property ClipboardFormat: SYSINT read Get_ClipboardFormat;
    property InstanceID: WideString read Get_InstanceID;
    property Font: IFont read Get_Font write Set_Font;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property SelectRestriction: FieldListSelectRestriction read Get_SelectRestriction write Set_SelectRestriction;
  end;

// *********************************************************************//
// DispIntf:  FieldListDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7BD1809E-0406-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  FieldListDisp = dispinterface
    ['{7BD1809E-0406-11D3-8549-00C04FAC67D7}']
    function CreateHierarchy(bVisible: WordBool): FieldListHierarchy; dispid 1;
    property ClipboardFormat: SYSINT readonly dispid 2;
    function AddBitmap(iWidth: SYSINT; iHeight: SYSINT; const pip: IPicture; crMask: LongWord): SYSINT; dispid 3;
    property InstanceID: WideString readonly dispid 4;
    property Font: IFont dispid 5;
    property MultiSelect: WordBool dispid 6;
    property SelectRestriction: FieldListSelectRestriction dispid 7;
    function GetNextSelected(const pfln: FieldListNode): FieldListNode; dispid 8;
    procedure ClearSelection; dispid 9;
    procedure SetOverlayImage(iImage: SYSINT; iOverlay: SYSINT); dispid 10;
  end;

// *********************************************************************//
// Interface: FieldListDragData
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6EAC3754-49CC-11D3-AE50-00C04F613171}
// *********************************************************************//
  FieldListDragData = interface(IDispatch)
    ['{6EAC3754-49CC-11D3-AE50-00C04F613171}']
    function Get_NodeId: Integer; safecall;
    function Get_TypeId: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_Data: WideString; safecall;
    function Get_FieldListInstanceId: WideString; safecall;
    function Get_Object_: IUnknown; safecall;
    function Get_OwnerObject: IUnknown; safecall;
    property NodeId: Integer read Get_NodeId;
    property TypeId: Integer read Get_TypeId;
    property Name: WideString read Get_Name;
    property Data: WideString read Get_Data;
    property FieldListInstanceId: WideString read Get_FieldListInstanceId;
    property Object_: IUnknown read Get_Object_;
    property OwnerObject: IUnknown read Get_OwnerObject;
  end;

// *********************************************************************//
// DispIntf:  FieldListDragDataDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6EAC3754-49CC-11D3-AE50-00C04F613171}
// *********************************************************************//
  FieldListDragDataDisp = dispinterface
    ['{6EAC3754-49CC-11D3-AE50-00C04F613171}']
    property NodeId: Integer readonly dispid 1;
    property TypeId: Integer readonly dispid 2;
    property Name: WideString readonly dispid 3;
    property Data: WideString readonly dispid 4;
    property FieldListInstanceId: WideString readonly dispid 5;
    property Object_: IUnknown readonly dispid 6;
    property OwnerObject: IUnknown readonly dispid 7;
  end;

// *********************************************************************//
// Interface: FieldListDragDataList
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2A9DDE7C-D83E-11D3-AE6C-00C04F613171}
// *********************************************************************//
  FieldListDragDataList = interface(IDispatch)
    ['{2A9DDE7C-D83E-11D3-AE6C-00C04F613171}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): FieldListDragData; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: FieldListDragData read Get_Item;
  end;

// *********************************************************************//
// DispIntf:  FieldListDragDataListDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2A9DDE7C-D83E-11D3-AE6C-00C04F613171}
// *********************************************************************//
  FieldListDragDataListDisp = dispinterface
    ['{2A9DDE7C-D83E-11D3-AE6C-00C04F613171}']
    property Count: Integer readonly dispid 1;
    property Item[Index: Integer]: FieldListDragData readonly dispid 2;
  end;

// *********************************************************************//
// Interface: IOfflineInfo
// Flags:     (528) Hidden Restricted
// GUID:      {E2AC0C69-7079-11D3-8D01-0050048383A8}
// *********************************************************************//
  IOfflineInfo = interface(IUnknown)
    ['{E2AC0C69-7079-11D3-8D01-0050048383A8}']
    function PutServerFilter(pwzUrl: PWideChar; pwzServerFilter: PWideChar): HResult; stdcall;
    function GetServerFilter(pwzUrl: PWideChar; var pwzServerFilter: PWideChar): HResult; stdcall;
    function GetIsPageSubscribed(pwzUrl: PWideChar; var pfSubscribed: Integer): HResult; stdcall;
    function GetOfflineXMLFileLocation(var pbstrPath: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ChUserDefinedSelection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {22C1AB70-4BFF-40FB-95EE-C8CA647833C6}
// *********************************************************************//
  ChUserDefinedSelection = interface(IDispatch)
    ['{22C1AB70-4BFF-40FB-95EE-C8CA647833C6}']
    function Get_id: Integer; safecall;
    function Get_Parent: IDispatch; safecall;
    property id: Integer read Get_id;
    property Parent: IDispatch read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  ChUserDefinedSelectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {22C1AB70-4BFF-40FB-95EE-C8CA647833C6}
// *********************************************************************//
  ChUserDefinedSelectionDisp = dispinterface
    ['{22C1AB70-4BFF-40FB-95EE-C8CA647833C6}']
    property id: Integer readonly dispid 1610743808;
    property Parent: IDispatch readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: IAddinHost
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FAA0B9C0-F635-44C7-B825-B805F59B3D66}
// *********************************************************************//
  IAddinHost = interface(IDispatch)
    ['{FAA0B9C0-F635-44C7-B825-B805F59B3D66}']
    function CoerceOper(var varoper: OleVariant; grbit: AddinClientTypeEnum): OleVariant; safecall;
    function RandOper: OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IAddinHostDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FAA0B9C0-F635-44C7-B825-B805F59B3D66}
// *********************************************************************//
  IAddinHostDisp = dispinterface
    ['{FAA0B9C0-F635-44C7-B825-B805F59B3D66}']
    function CoerceOper(var varoper: OleVariant; grbit: AddinClientTypeEnum): OleVariant; dispid 1;
    function RandOper: OleVariant; dispid 2;
  end;

// *********************************************************************//
// DispIntf:  IRangeEvents
// Flags:     (4096) Dispatchable
// GUID:      {B8891063-2B00-48EC-957F-6DEBEADE9D8B}
// *********************************************************************//
  IRangeEvents = dispinterface
    ['{B8891063-2B00-48EC-957F-6DEBEADE9D8B}']
    procedure Change; dispid 1510;
  end;

// *********************************************************************//
// Interface: IXRangeEnum
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B09-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  IXRangeEnum = interface(IDispatch)
    ['{F5B39B09-1480-11D3-8549-00C04FAC67D7}']
    procedure Next(cElt: LongWord; out rgvar: OleVariant; out pcEltFetched: LongWord); safecall;
    procedure Skip(cElt: LongWord); safecall;
    procedure Reset; safecall;
    procedure Clone(out ppEnum: IXRangeEnum); safecall;
    procedure SetTraversal(nTraverseCode: SYSUINT); safecall;
    procedure ChangeType(out Out: OleVariant; var In_: OleVariant; vt: Word); safecall;
    procedure GetElements(cElt: LongWord; iStart: LongWord; var rvarDest: OleVariant; 
                          out pcFetched: LongWord; vtCoerceTo: Word; vtbCoerceFrom: LongWord; 
                          var Fill: OleVariant); safecall;
    function Get_RowCount: SYSUINT; safecall;
    function Get_ColCount: SYSUINT; safecall;
    property RowCount: SYSUINT read Get_RowCount;
    property ColCount: SYSUINT read Get_ColCount;
  end;

// *********************************************************************//
// DispIntf:  IXRangeEnumDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F5B39B09-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  IXRangeEnumDisp = dispinterface
    ['{F5B39B09-1480-11D3-8549-00C04FAC67D7}']
    procedure Next(cElt: LongWord; out rgvar: OleVariant; out pcEltFetched: LongWord); dispid 1610743808;
    procedure Skip(cElt: LongWord); dispid 1610743809;
    procedure Reset; dispid 1610743810;
    procedure Clone(out ppEnum: IXRangeEnum); dispid 1610743811;
    procedure SetTraversal(nTraverseCode: SYSUINT); dispid 1610743812;
    procedure ChangeType(out Out: OleVariant; var In_: OleVariant; vt: {??Word}OleVariant); dispid 1610743813;
    procedure GetElements(cElt: LongWord; iStart: LongWord; var rvarDest: OleVariant; 
                          out pcFetched: LongWord; vtCoerceTo: {??Word}OleVariant; 
                          vtbCoerceFrom: LongWord; var Fill: OleVariant); dispid 1610743814;
    property RowCount: SYSUINT readonly dispid 1610743815;
    property ColCount: SYSUINT readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: IAddinClient
// Flags:     (320) Dual OleAutomation
// GUID:      {198924BD-4102-4CB0-B7E8-DBF8BE7EB5A1}
// *********************************************************************//
  IAddinClient = interface(IUnknown)
    ['{198924BD-4102-4CB0-B7E8-DBF8BE7EB5A1}']
    procedure GrantAddinHost(var vardisp: OleVariant); safecall;
    procedure RemoveAddinHost; safecall;
    procedure IsSemiCalced(dispid: Integer; var SemiCalced: WordBool); safecall;
  end;

// *********************************************************************//
// DispIntf:  IAddinClientDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {198924BD-4102-4CB0-B7E8-DBF8BE7EB5A1}
// *********************************************************************//
  IAddinClientDisp = dispinterface
    ['{198924BD-4102-4CB0-B7E8-DBF8BE7EB5A1}']
    procedure GrantAddinHost(var vardisp: OleVariant); dispid 1;
    procedure RemoveAddinHost; dispid 2;
    procedure IsSemiCalced(dispid: Integer; var SemiCalced: WordBool); dispid 3;
  end;

// *********************************************************************//
// DispIntf:  IPivotControlEvents
// Flags:     (4096) Dispatchable
// GUID:      {F5B39A87-1480-11D3-8549-00C04FAC67D7}
// *********************************************************************//
  IPivotControlEvents = dispinterface
    ['{F5B39A87-1480-11D3-8549-00C04FAC67D7}']
    procedure SelectionChange; dispid 6003;
    procedure ViewChange(Reason: PivotViewReasonEnum); dispid 6004;
    procedure DataChange(Reason: PivotDataReasonEnum); dispid 6007;
    procedure PivotTableChange(Reason: PivotTableReasonEnum); dispid 6021;
    procedure BeforeQuery; dispid 6043;
    procedure Query; dispid 6044;
    procedure OnConnect; dispid 6029;
    procedure OnDisconnect; dispid 6030;
    procedure MouseDown(Button: Integer; Shift: Integer; x: Integer; y: Integer); dispid 6034;
    procedure MouseMove(Button: Integer; Shift: Integer; x: Integer; y: Integer); dispid 6032;
    procedure MouseUp(Button: Integer; Shift: Integer; x: Integer; y: Integer); dispid 6033;
    procedure MouseWheel(Page: WordBool; Count: Integer); dispid 6035;
    procedure Click; dispid 6005;
    procedure DblClick; dispid 6006;
    procedure CommandEnabled(Command: OleVariant; const Enabled: ByRef); dispid 1000;
    procedure CommandChecked(Command: OleVariant; const Checked: ByRef); dispid 1001;
    procedure CommandTipText(Command: OleVariant; const Caption: ByRef); dispid 1002;
    procedure CommandBeforeExecute(Command: OleVariant; const Cancel: ByRef); dispid 1003;
    procedure CommandExecute(Command: OleVariant; Succeeded: WordBool); dispid 1004;
    procedure KeyDown(KeyCode: Integer; Shift: Integer); dispid 1009;
    procedure KeyUp(KeyCode: Integer; Shift: Integer); dispid 1008;
    procedure KeyPress(KeyAscii: Integer); dispid 1010;
    procedure BeforeKeyDown(KeyCode: Integer; Shift: Integer; const Cancel: ByRef); dispid 1006;
    procedure BeforeKeyUp(KeyCode: Integer; Shift: Integer; const Cancel: ByRef); dispid 1005;
    procedure BeforeKeyPress(KeyAscii: Integer; const Cancel: ByRef); dispid 1007;
    procedure BeforeContextMenu(x: Integer; y: Integer; const Menu: ByRef; const Cancel: ByRef); dispid 1011;
    procedure StartEdit(const Selection: IDispatch; const ActiveObject: IDispatch; 
                        const InitialValue: ByRef; const ArrowMode: ByRef; 
                        const CaretPosition: ByRef; const Cancel: ByRef; 
                        const ErrorDescription: ByRef); dispid 6045;
    procedure EndEdit(Accept: WordBool; const FinalValue: ByRef; const Cancel: ByRef; 
                      const ErrorDescription: ByRef); dispid 6046;
    procedure BeforeScreenTip(const ScreenTipText: ByRef; const SourceObject: IDispatch); dispid 6049;
  end;

// *********************************************************************//
// Interface: TextFormat
// Flags:     (336) Hidden Dual OleAutomation
// GUID:      {58573A81-5025-11D3-BE84-0050041DB15A}
// *********************************************************************//
  TextFormat = interface(IUnknown)
    ['{58573A81-5025-11D3-BE84-0050041DB15A}']
    function Get_ForeColor: OleVariant; safecall;
    procedure Set_ForeColor(ForeColor: OleVariant); safecall;
    function Get_BackColor: OleVariant; safecall;
    procedure Set_BackColor(BackColor: OleVariant); safecall;
    function Get_HorizontalAlignment: PivotHAlignmentEnum; safecall;
    procedure Set_HorizontalAlignment(HorizontalAlignment: PivotHAlignmentEnum); safecall;
    function Get_NumberFormat: WideString; safecall;
    procedure Set_NumberFormat(const NumberFormat: WideString); safecall;
    function Get_Font: PivotFont; safecall;
    property ForeColor: OleVariant read Get_ForeColor;
    property BackColor: OleVariant read Get_BackColor;
    property HorizontalAlignment: PivotHAlignmentEnum read Get_HorizontalAlignment;
    property NumberFormat: WideString read Get_NumberFormat;
    property Font: PivotFont read Get_Font;
  end;

// *********************************************************************//
// DispIntf:  TextFormatDisp
// Flags:     (336) Hidden Dual OleAutomation
// GUID:      {58573A81-5025-11D3-BE84-0050041DB15A}
// *********************************************************************//
  TextFormatDisp = dispinterface
    ['{58573A81-5025-11D3-BE84-0050041DB15A}']
    property ForeColor: OleVariant readonly dispid 1610678272;
    property BackColor: OleVariant readonly dispid 1610678274;
    property HorizontalAlignment: PivotHAlignmentEnum readonly dispid 1610678276;
    property NumberFormat: WideString readonly dispid 1610678278;
    property Font: PivotFont readonly dispid 1610678280;
  end;

// *********************************************************************//
// Interface: ViewSurface
// Flags:     (464) Hidden Dual NonExtensible OleAutomation
// GUID:      {EE658610-D8B3-11D2-8F30-00600893B533}
// *********************************************************************//
  ViewSurface = interface(IUnknown)
    ['{EE658610-D8B3-11D2-8F30-00600893B533}']
    function Get_hDC: Integer; safecall;
    function Get_hDCInfo: Integer; safecall;
    procedure Rectangle(cx1: Integer; cy1: Integer; cx2: Integer; cy2: Integer; Left: Integer; 
                        Top: Integer; Width: Integer; Height: Integer; Color: LongWord); safecall;
    procedure Line(cx1: Integer; cy1: Integer; cx2: Integer; cy2: Integer; x1: Integer; 
                   y1: Integer; x2: Integer; y2: Integer; Color: LongWord); safecall;
    function Get_AlphaBlend(Color: LongWord): LongWord; safecall;
    procedure Text(cx1: Integer; cy1: Integer; cx2: Integer; cy2: Integer; Left: Integer; 
                   Top: Integer; Width: Integer; Height: Integer; const TextFormat: TextFormat; 
                   Text: OleVariant); safecall;
    function Get_TextHeight(const TextFormat: TextFormat; Text: OleVariant): Integer; safecall;
    function Get_TextWidth(const TextFormat: TextFormat; Text: OleVariant): Integer; safecall;
    procedure Picture(cx1: Integer; cy1: Integer; cx2: Integer; cy2: Integer; Left: Integer; 
                      Top: Integer; Width: Integer; Height: Integer; const Picture: IPictureDisp); safecall;
    procedure PictureMasked(cx1: Integer; cy1: Integer; cx2: Integer; cy2: Integer; Left: Integer; 
                            Top: Integer; Width: Integer; Height: Integer; 
                            const Picture: IPictureDisp; const Mask: IPictureDisp); safecall;
    function Get_PictureAlphaBlended(const Picture: IPictureDisp; const Mask: IPictureDisp): IPictureDisp; safecall;
    function Get_ScaleX(x: Integer): Integer; safecall;
    function Get_ScaleY(y: Integer): Integer; safecall;
    property hDC: Integer read Get_hDC;
    property hDCInfo: Integer read Get_hDCInfo;
    property AlphaBlend[Color: LongWord]: LongWord read Get_AlphaBlend;
    property TextHeight[const TextFormat: TextFormat; Text: OleVariant]: Integer read Get_TextHeight;
    property TextWidth[const TextFormat: TextFormat; Text: OleVariant]: Integer read Get_TextWidth;
    property PictureAlphaBlended[const Picture: IPictureDisp; const Mask: IPictureDisp]: IPictureDisp read Get_PictureAlphaBlended;
    property ScaleX[x: Integer]: Integer read Get_ScaleX;
    property ScaleY[y: Integer]: Integer read Get_ScaleY;
  end;

// *********************************************************************//
// DispIntf:  ViewSurfaceDisp
// Flags:     (464) Hidden Dual NonExtensible OleAutomation
// GUID:      {EE658610-D8B3-11D2-8F30-00600893B533}
// *********************************************************************//
  ViewSurfaceDisp = dispinterface
    ['{EE658610-D8B3-11D2-8F30-00600893B533}']
    property hDC: Integer readonly dispid 1610678272;
    property hDCInfo: Integer readonly dispid 1610678273;
    procedure Rectangle(cx1: Integer; cy1: Integer; cx2: Integer; cy2: Integer; Left: Integer; 
                        Top: Integer; Width: Integer; Height: Integer; Color: LongWord); dispid 1610678274;
    procedure Line(cx1: Integer; cy1: Integer; cx2: Integer; cy2: Integer; x1: Integer; 
                   y1: Integer; x2: Integer; y2: Integer; Color: LongWord); dispid 1610678275;
    property AlphaBlend[Color: LongWord]: LongWord readonly dispid 1610678276;
    procedure Text(cx1: Integer; cy1: Integer; cx2: Integer; cy2: Integer; Left: Integer; 
                   Top: Integer; Width: Integer; Height: Integer; const TextFormat: TextFormat; 
                   Text: OleVariant); dispid 1610678277;
    property TextHeight[const TextFormat: TextFormat; Text: OleVariant]: Integer readonly dispid 1610678278;
    property TextWidth[const TextFormat: TextFormat; Text: OleVariant]: Integer readonly dispid 1610678279;
    procedure Picture(cx1: Integer; cy1: Integer; cx2: Integer; cy2: Integer; Left: Integer; 
                      Top: Integer; Width: Integer; Height: Integer; const Picture: IPictureDisp); dispid 1610678280;
    procedure PictureMasked(cx1: Integer; cy1: Integer; cx2: Integer; cy2: Integer; Left: Integer; 
                            Top: Integer; Width: Integer; Height: Integer; 
                            const Picture: IPictureDisp; const Mask: IPictureDisp); dispid 1610678281;
    property PictureAlphaBlended[const Picture: IPictureDisp; const Mask: IPictureDisp]: IPictureDisp readonly dispid 1610678282;
    property ScaleX[x: Integer]: Integer readonly dispid 1610678283;
    property ScaleY[y: Integer]: Integer readonly dispid 1610678284;
  end;

// *********************************************************************//
// Interface: ViewObject
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8C950530-C84C-11D2-8F2D-00600893B533}
// *********************************************************************//
  ViewObject = interface(IDispatch)
    ['{8C950530-C84C-11D2-8F2D-00600893B533}']
    procedure Draw(const Surface: ViewSurface; cx1: Integer; cy1: Integer; cx2: Integer; 
                   cy2: Integer; Left: Integer; Top: Integer; Width: Integer; Height: Integer); safecall;
    function Get_Query(x: Integer; y: Integer): IDispatch; safecall;
    property Query[x: Integer; y: Integer]: IDispatch read Get_Query;
  end;

// *********************************************************************//
// DispIntf:  ViewObjectDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8C950530-C84C-11D2-8F2D-00600893B533}
// *********************************************************************//
  ViewObjectDisp = dispinterface
    ['{8C950530-C84C-11D2-8F2D-00600893B533}']
    procedure Draw(const Surface: ViewSurface; cx1: Integer; cy1: Integer; cx2: Integer; 
                   cy2: Integer; Left: Integer; Top: Integer; Width: Integer; Height: Integer); dispid 1610743808;
    property Query[x: Integer; y: Integer]: IDispatch readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: MouseTarget
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8F8E5640-CDB0-11D2-8F2E-00600893B533}
// *********************************************************************//
  MouseTarget = interface(IDispatch)
    ['{8F8E5640-CDB0-11D2-8F2E-00600893B533}']
    procedure MouseEnter(x: Integer; y: Integer; var Cursor: Integer); safecall;
    procedure MouseOver(x: Integer; y: Integer; var Cursor: Integer); safecall;
    procedure MouseLeave; safecall;
    procedure MouseDown(x: Integer; y: Integer; Button: Integer); safecall;
    procedure MouseUp(x: Integer; y: Integer; Button: Integer); safecall;
    procedure MouseClick(x: Integer; y: Integer; Button: Integer); safecall;
    procedure MouseDblClick(x: Integer; y: Integer; Button: Integer); safecall;
    procedure MouseWheel(Page: WordBool; Count: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  MouseTargetDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8F8E5640-CDB0-11D2-8F2E-00600893B533}
// *********************************************************************//
  MouseTargetDisp = dispinterface
    ['{8F8E5640-CDB0-11D2-8F2E-00600893B533}']
    procedure MouseEnter(x: Integer; y: Integer; var Cursor: Integer); dispid 1610743808;
    procedure MouseOver(x: Integer; y: Integer; var Cursor: Integer); dispid 1610743809;
    procedure MouseLeave; dispid 1610743810;
    procedure MouseDown(x: Integer; y: Integer; Button: Integer); dispid 1610743811;
    procedure MouseUp(x: Integer; y: Integer; Button: Integer); dispid 1610743812;
    procedure MouseClick(x: Integer; y: Integer; Button: Integer); dispid 1610743813;
    procedure MouseDblClick(x: Integer; y: Integer; Button: Integer); dispid 1610743814;
    procedure MouseWheel(Page: WordBool; Count: Integer); dispid 1610743815;
  end;

// *********************************************************************//
// Interface: SelectionHighlight
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {58573A80-5025-11D3-BE84-0050041DB15A}
// *********************************************************************//
  SelectionHighlight = interface(IDispatch)
    ['{58573A80-5025-11D3-BE84-0050041DB15A}']
    procedure Highlight(const ViewSurface: ViewSurface); safecall;
  end;

// *********************************************************************//
// DispIntf:  SelectionHighlightDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {58573A80-5025-11D3-BE84-0050041DB15A}
// *********************************************************************//
  SelectionHighlightDisp = dispinterface
    ['{58573A80-5025-11D3-BE84-0050041DB15A}']
    procedure Highlight(const ViewSurface: ViewSurface); dispid 1610743808;
  end;

// *********************************************************************//
// Interface: ActiveObject
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A809B678-545A-11D3-BE86-0050041DB15A}
// *********************************************************************//
  ActiveObject = interface(IDispatch)
    ['{A809B678-545A-11D3-BE86-0050041DB15A}']
    function Get_ActiveObject_: IDispatch; safecall;
    procedure Set_ActiveObject_(const ActiveObject: IDispatch); safecall;
    property ActiveObject_: IDispatch read Get_ActiveObject_;
  end;

// *********************************************************************//
// DispIntf:  ActiveObjectDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A809B678-545A-11D3-BE86-0050041DB15A}
// *********************************************************************//
  ActiveObjectDisp = dispinterface
    ['{A809B678-545A-11D3-BE86-0050041DB15A}']
    property ActiveObject_: IDispatch readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: PopupMenu
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {04B21422-1F84-4DD3-8CD6-1C6ECC68E521}
// *********************************************************************//
  PopupMenu = interface(IDispatch)
    ['{04B21422-1F84-4DD3-8CD6-1C6ECC68E521}']
    function Get_hMenu: Integer; safecall;
    property hMenu: Integer read Get_hMenu;
  end;

// *********************************************************************//
// DispIntf:  PopupMenuDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {04B21422-1F84-4DD3-8CD6-1C6ECC68E521}
// *********************************************************************//
  PopupMenuDisp = dispinterface
    ['{04B21422-1F84-4DD3-8CD6-1C6ECC68E521}']
    property hMenu: Integer readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: AutoFitObject
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {99049AFE-271D-4568-95D8-3BC879AA73E3}
// *********************************************************************//
  AutoFitObject = interface(IDispatch)
    ['{99049AFE-271D-4568-95D8-3BC879AA73E3}']
    procedure AutoFit; safecall;
    function Get_BestWidth: Integer; safecall;
    function Get_BestHeight: Integer; safecall;
    property BestWidth: Integer read Get_BestWidth;
    property BestHeight: Integer read Get_BestHeight;
  end;

// *********************************************************************//
// DispIntf:  AutoFitObjectDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {99049AFE-271D-4568-95D8-3BC879AA73E3}
// *********************************************************************//
  AutoFitObjectDisp = dispinterface
    ['{99049AFE-271D-4568-95D8-3BC879AA73E3}']
    procedure AutoFit; dispid 1610743808;
    property BestWidth: Integer readonly dispid 1610743809;
    property BestHeight: Integer readonly dispid 1610743810;
  end;

// *********************************************************************//
// Interface: Moniker
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5055F752-6848-4CEA-9BAB-265EC4B5380A}
// *********************************************************************//
  Moniker = interface(IDispatch)
    ['{5055F752-6848-4CEA-9BAB-265EC4B5380A}']
    function Get_Moniker_(const RelativeTo: IDispatch): WideString; safecall;
    function Get_Parse(const Moniker: WideString): IDispatch; safecall;
    property Moniker_[const RelativeTo: IDispatch]: WideString read Get_Moniker_;
    property Parse[const Moniker: WideString]: IDispatch read Get_Parse;
  end;

// *********************************************************************//
// DispIntf:  MonikerDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5055F752-6848-4CEA-9BAB-265EC4B5380A}
// *********************************************************************//
  MonikerDisp = dispinterface
    ['{5055F752-6848-4CEA-9BAB-265EC4B5380A}']
    property Moniker_[const RelativeTo: IDispatch]: WideString readonly dispid 1610743808;
    property Parse[const Moniker: WideString]: IDispatch readonly dispid 1610743809;
  end;

// *********************************************************************//
// Interface: InplaceObject
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EDAC92DC-84DB-4CD1-AE98-EB436F4D99EB}
// *********************************************************************//
  InplaceObject = interface(IDispatch)
    ['{EDAC92DC-84DB-4CD1-AE98-EB436F4D99EB}']
    procedure Activate(Hwnd: Integer); safecall;
    procedure Deactivate; safecall;
  end;

// *********************************************************************//
// DispIntf:  InplaceObjectDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EDAC92DC-84DB-4CD1-AE98-EB436F4D99EB}
// *********************************************************************//
  InplaceObjectDisp = dispinterface
    ['{EDAC92DC-84DB-4CD1-AE98-EB436F4D99EB}']
    procedure Activate(Hwnd: Integer); dispid 1610743808;
    procedure Deactivate; dispid 1610743809;
  end;

// *********************************************************************//
// Interface: PropertyNotify
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7BB4EDA1-862A-4AB2-92F2-557E1BAB3408}
// *********************************************************************//
  PropertyNotify = interface(IDispatch)
    ['{7BB4EDA1-862A-4AB2-92F2-557E1BAB3408}']
    procedure OnPropertyChange(const Object_: IDispatch; dispid: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  PropertyNotifyDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7BB4EDA1-862A-4AB2-92F2-557E1BAB3408}
// *********************************************************************//
  PropertyNotifyDisp = dispinterface
    ['{7BB4EDA1-862A-4AB2-92F2-557E1BAB3408}']
    procedure OnPropertyChange(const Object_: IDispatch; dispid: Integer); dispid 1610743808;
  end;

// *********************************************************************//
// Interface: MutualExpando
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F9328F0C-1862-4BD5-81D8-2052A7EC80FA}
// *********************************************************************//
  MutualExpando = interface(IDispatch)
    ['{F9328F0C-1862-4BD5-81D8-2052A7EC80FA}']
    procedure Expand; safecall;
    procedure Collapse; safecall;
    function Get_Left: Integer; safecall;
    function Get_Top: Integer; safecall;
    function Get_Width: Integer; safecall;
    function Get_Height: Integer; safecall;
    property Left: Integer read Get_Left;
    property Top: Integer read Get_Top;
    property Width: Integer read Get_Width;
    property Height: Integer read Get_Height;
  end;

// *********************************************************************//
// DispIntf:  MutualExpandoDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F9328F0C-1862-4BD5-81D8-2052A7EC80FA}
// *********************************************************************//
  MutualExpandoDisp = dispinterface
    ['{F9328F0C-1862-4BD5-81D8-2052A7EC80FA}']
    procedure Expand; dispid 1610743808;
    procedure Collapse; dispid 1610743809;
    property Left: Integer readonly dispid 1610743810;
    property Top: Integer readonly dispid 1610743811;
    property Width: Integer readonly dispid 1610743812;
    property Height: Integer readonly dispid 1610743813;
  end;

// *********************************************************************//
// Interface: EditableObject
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EB3286D3-226C-48F0-8049-2DB1E01DEE9C}
// *********************************************************************//
  EditableObject = interface(IDispatch)
    ['{EB3286D3-226C-48F0-8049-2DB1E01DEE9C}']
    procedure StartEdit(InitialValue: OleVariant; ArrowMode: WordBool; CaretPosition: Integer); safecall;
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(Value: OleVariant); safecall;
    procedure EndEdit(Accept: WordBool); safecall;
    property Value: OleVariant read Get_Value;
  end;

// *********************************************************************//
// DispIntf:  EditableObjectDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EB3286D3-226C-48F0-8049-2DB1E01DEE9C}
// *********************************************************************//
  EditableObjectDisp = dispinterface
    ['{EB3286D3-226C-48F0-8049-2DB1E01DEE9C}']
    procedure StartEdit(InitialValue: OleVariant; ArrowMode: WordBool; CaretPosition: Integer); dispid 1610743808;
    property Value: OleVariant readonly dispid 1610743809;
    procedure EndEdit(Accept: WordBool); dispid 1610743811;
  end;

// *********************************************************************//
// Interface: TipProvider
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8966D336-AACA-4ADB-9315-F3A541B16917}
// *********************************************************************//
  TipProvider = interface(IDispatch)
    ['{8966D336-AACA-4ADB-9315-F3A541B16917}']
    function Get_TipText: WideString; safecall;
    property TipText: WideString read Get_TipText;
  end;

// *********************************************************************//
// DispIntf:  TipProviderDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8966D336-AACA-4ADB-9315-F3A541B16917}
// *********************************************************************//
  TipProviderDisp = dispinterface
    ['{8966D336-AACA-4ADB-9315-F3A541B16917}']
    property TipText: WideString readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IPivotCopy
// Flags:     (464) Hidden Dual NonExtensible OleAutomation
// GUID:      {CD44E547-FEC9-4ADC-AB6A-3129B44801BA}
// *********************************************************************//
  IPivotCopy = interface(IUnknown)
    ['{CD44E547-FEC9-4ADC-AB6A-3129B44801BA}']
    procedure Render(Format: Integer; var Output: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPivotCopyDisp
// Flags:     (464) Hidden Dual NonExtensible OleAutomation
// GUID:      {CD44E547-FEC9-4ADC-AB6A-3129B44801BA}
// *********************************************************************//
  IPivotCopyDisp = dispinterface
    ['{CD44E547-FEC9-4ADC-AB6A-3129B44801BA}']
    procedure Render(Format: Integer; var Output: WideString); dispid 1610678272;
  end;

// *********************************************************************//
// The Class CoNumberFormat provides a Create and CreateRemote method to          
// create instances of the default interface _NumberFormat exposed by              
// the CoClass NumberFormat. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNumberFormat = class
    class function Create: _NumberFormat;
    class function CreateRemote(const MachineName: string): _NumberFormat;
  end;

// *********************************************************************//
// The Class CoFieldListControl provides a Create and CreateRemote method to          
// create instances of the default interface FieldList exposed by              
// the CoClass FieldListControl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFieldListControl = class
    class function Create: FieldList;
    class function CreateRemote(const MachineName: string): FieldList;
  end;

// *********************************************************************//
// The Class CoOfflineInfo provides a Create and CreateRemote method to          
// create instances of the default interface IOfflineInfo exposed by              
// the CoClass OfflineInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOfflineInfo = class
    class function Create: IOfflineInfo;
    class function CreateRemote(const MachineName: string): IOfflineInfo;
  end;

// *********************************************************************//
// The Class CoRange provides a Create and CreateRemote method to          
// create instances of the default interface _Range exposed by              
// the CoClass Range. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRange = class
    class function Create: _Range;
    class function CreateRemote(const MachineName: string): _Range;
  end;

implementation

uses ComObj;

class function CoNumberFormat.Create: _NumberFormat;
begin
  Result := CreateComObject(CLASS_NumberFormat) as _NumberFormat;
end;

class function CoNumberFormat.CreateRemote(const MachineName: string): _NumberFormat;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NumberFormat) as _NumberFormat;
end;

class function CoFieldListControl.Create: FieldList;
begin
  Result := CreateComObject(CLASS_FieldListControl) as FieldList;
end;

class function CoFieldListControl.CreateRemote(const MachineName: string): FieldList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FieldListControl) as FieldList;
end;

class function CoOfflineInfo.Create: IOfflineInfo;
begin
  Result := CreateComObject(CLASS_OfflineInfo) as IOfflineInfo;
end;

class function CoOfflineInfo.CreateRemote(const MachineName: string): IOfflineInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OfflineInfo) as IOfflineInfo;
end;

class function CoRange.Create: _Range;
begin
  Result := CreateComObject(CLASS_Range) as _Range;
end;

class function CoRange.CreateRemote(const MachineName: string): _Range;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Range) as _Range;
end;

end.
