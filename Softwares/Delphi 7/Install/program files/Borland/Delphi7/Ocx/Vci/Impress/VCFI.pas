unit VCFI;

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

// PASTLWTR : 1.1
// File generated on 1/10/00 8:06:28 PM from Type Library described below.

// ************************************************************************ //
// Type Lib: c:\winnt\system32\vcfi32.ocx (1)
// IID\LCID: {5A721583-5AF0-11CE-8384-0020AF2337F2}\0
// Helpfile: C:\WINNT\System32\VCFI.HLP
// DepndLst: 
//   (1) v1.0 stdole, (C:\WINNT\System32\stdole32.tlb)
//   (2) v1.0 StdVCL, (C:\WINNT\System32\STDVCL32.DLL)
//   (3) v1.0 StdType, (C:\WINNT\System32\oc30.dll)
// Errors:
//   Hint: TypeInfo 'Label' changed to 'Label_'
//   Hint: Parameter 'Array' of _DVtChart.CopyDataFromArray changed to 'Array_'
//   Hint: Parameter 'Array' of _DVtChart.CopyDataToArray changed to 'Array_'
//   Hint: Member 'Set' of 'ICoor' changed to 'Set_'
//   Hint: Member 'Set' of 'ILCoor' changed to 'Set_'
//   Hint: Member 'Set' of 'ICoor3' changed to 'Set_'
//   Hint: Member 'Set' of 'IColor' changed to 'Set_'
//   Hint: Member 'Type' of 'IPicture' changed to 'Type_'
//   Hint: Member 'Set' of 'IVcView3d' changed to 'Set_'
//   Hint: Member 'Set' of 'IVcDoughnut' changed to 'Set_'
//   Hint: Member 'Set' of 'IVcPie' changed to 'Set_'
//   Hint: Member 'Set' of 'IVcWeighting' changed to 'Set_'
//   Hint: Parameter 'Type' of IVcStatLines.Style changed to 'Type_'
//   Hint: Parameter 'Type' of IVcStatLines.Style changed to 'Type_'
//   Hint: Member 'Type' of 'IVcScale' changed to 'Type_'
//   Hint: Member 'Set' of 'IVcLightSource' changed to 'Set_'
//   Hint: TypeInfo 'Label' changed to 'Label_'
//   Hint: Member 'Set' of 'ICoor' changed to 'Set_'
//   Hint: Member 'Set' of 'ILCoor' changed to 'Set_'
//   Hint: Member 'Set' of 'ICoor3' changed to 'Set_'
//   Hint: Member 'Set' of 'IColor' changed to 'Set_'
//   Hint: Member 'Type' of 'IPicture' changed to 'Type_'
//   Hint: Member 'Set' of 'IVcView3d' changed to 'Set_'
//   Hint: Member 'Set' of 'IVcDoughnut' changed to 'Set_'
//   Hint: Member 'Set' of 'IVcPie' changed to 'Set_'
//   Hint: Member 'Set' of 'IVcWeighting' changed to 'Set_'
//   Hint: Member 'Type' of 'IVcScale' changed to 'Type_'
//   Hint: Member 'Set' of 'IVcLightSource' changed to 'Set_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WRITEABLECONST ON}
{$WARN SYMBOL_PLATFORM OFF}

interface

uses Windows, ActiveX, Classes, Graphics, OleServer, OleCtrls, StdVCL;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  VCIFiLibMajorVersion = 1;
  VCIFiLibMinorVersion = 0;

  LIBID_VCIFiLib: TGUID = '{5A721583-5AF0-11CE-8384-0020AF2337F2}';

  DIID__DVtChart: TGUID = '{5A721581-5AF0-11CE-8384-0020AF2337F2}';
  DIID__DVtChartEvents: TGUID = '{5A721582-5AF0-11CE-8384-0020AF2337F2}';
  CLASS_VtChart: TGUID = '{5A721580-5AF0-11CE-8384-0020AF2337F2}';
  DIID_ICoor: TGUID = '{EBF97E20-731F-11CE-840F-00AA0042CB33}';
  CLASS_Coor: TGUID = '{EBF97E21-731F-11CE-840F-00AA0042CB33}';
  DIID_ILCoor: TGUID = '{EBF97E22-731F-11CE-840F-00AA0042CB33}';
  CLASS_LCoor: TGUID = '{EBF97E23-731F-11CE-840F-00AA0042CB33}';
  DIID_ICoor3: TGUID = '{177BF2A0-7350-11CE-840F-00AA0042CB33}';
  CLASS_Coor3: TGUID = '{177BF2A1-7350-11CE-840F-00AA0042CB33}';
  DIID_ILRect: TGUID = '{177BF2A2-7350-11CE-840F-00AA0042CB33}';
  CLASS_LRect: TGUID = '{177BF2A3-7350-11CE-840F-00AA0042CB33}';
  DIID_IRect: TGUID = '{FE5517C0-73FE-11CE-840F-00AA0042CB33}';
  CLASS_Rect: TGUID = '{FE5517C1-73FE-11CE-840F-00AA0042CB33}';
  DIID_IColor: TGUID = '{9BA79C60-7403-11CE-840F-00AA0042CB33}';
  CLASS_VtColor: TGUID = '{9BA79C61-7403-11CE-840F-00AA0042CB33}';
  DIID_IBrush: TGUID = '{AFE57020-7409-11CE-840F-00AA0042CB33}';
  CLASS_Brush: TGUID = '{AFE57021-7409-11CE-840F-00AA0042CB33}';
  DIID_IShadow: TGUID = '{AFE57022-7409-11CE-840F-00AA0042CB33}';
  CLASS_Shadow: TGUID = '{AFE57023-7409-11CE-840F-00AA0042CB33}';
  DIID_ITextLayout: TGUID = '{E26C7700-756C-11CE-840F-00AA0042CB33}';
  CLASS_TextLayout: TGUID = '{E26C7701-756C-11CE-840F-00AA0042CB33}';
  DIID_IVcTitle: TGUID = '{C82141A0-7571-11CE-840F-00AA0042CB33}';
  CLASS_Title: TGUID = '{C82141A1-7571-11CE-840F-00AA0042CB33}';
  DIID_ILocation: TGUID = '{EDDF9242-764B-11CE-840F-00AA0042CB33}';
  CLASS_Location: TGUID = '{EDDF9243-764B-11CE-840F-00AA0042CB33}';
  DIID_IFont: TGUID = '{2E6A37A0-77FC-11CE-840F-00AA0042CB33}';
  CLASS_VtFont: TGUID = '{2E6A37A1-77FC-11CE-840F-00AA0042CB33}';
  DIID_IBackdrop: TGUID = '{2E6A37A2-77FC-11CE-840F-00AA0042CB33}';
  CLASS_Backdrop: TGUID = '{2E6A37A3-77FC-11CE-840F-00AA0042CB33}';
  DIID_IFrame: TGUID = '{2E6A37A4-77FC-11CE-840F-00AA0042CB33}';
  CLASS_Frame: TGUID = '{2E6A37A5-77FC-11CE-840F-00AA0042CB33}';
  DIID_IGradient: TGUID = '{2E6A37A6-77FC-11CE-840F-00AA0042CB33}';
  CLASS_Gradient: TGUID = '{2E6A37A7-77FC-11CE-840F-00AA0042CB33}';
  DIID_IPicture: TGUID = '{FD30FB00-789C-11CE-840F-00AA0042CB33}';
  CLASS_VtPicture: TGUID = '{FD30FB01-789C-11CE-840F-00AA0042CB33}';
  DIID_IFill: TGUID = '{FD30FB02-789C-11CE-840F-00AA0042CB33}';
  CLASS_Fill: TGUID = '{FD30FB03-789C-11CE-840F-00AA0042CB33}';
  DIID_IVcPen: TGUID = '{279B5A40-8098-11CE-BECC-00AA0042CB33}';
  CLASS_Pen: TGUID = '{279B5A41-8098-11CE-BECC-00AA0042CB33}';
  DIID_IVcMarker: TGUID = '{3080E742-813F-11CE-BECC-00AA0042CB33}';
  CLASS_Marker: TGUID = '{3080E743-813F-11CE-BECC-00AA0042CB33}';
  DIID_IVcFootnote: TGUID = '{4F053F00-8396-11CE-BECC-00AA0042CB33}';
  CLASS_Footnote: TGUID = '{4F053F01-8396-11CE-BECC-00AA0042CB33}';
  DIID_IVcLegend: TGUID = '{95C52B60-83B1-11CE-BECC-00AA0042CB33}';
  CLASS_Legend: TGUID = '{95C52B61-83B1-11CE-BECC-00AA0042CB33}';
  DIID_IVcPrintInformation: TGUID = '{CFA0AC00-8B6E-11CE-840F-00AA0042CB33}';
  CLASS_PrintInformation: TGUID = '{CFA0AC01-8B6E-11CE-840F-00AA0042CB33}';
  DIID_IVcDataGrid: TGUID = '{6CB603A0-8F70-11CE-840F-00AA0042CB33}';
  CLASS_DataGrid: TGUID = '{6CB603A1-8F70-11CE-840F-00AA0042CB33}';
  DIID_IVcPlot: TGUID = '{F77BA680-9037-11CE-86B3-444553540000}';
  CLASS_Plot: TGUID = '{F77BA681-9037-11CE-86B3-444553540000}';
  DIID_IVcView3d: TGUID = '{21645F62-90F0-11CE-86B3-444553540000}';
  CLASS_View3d: TGUID = '{21645F63-90F0-11CE-86B3-444553540000}';
  DIID_IVcPlotBase: TGUID = '{508D02E0-90FC-11CE-86B3-444553540000}';
  CLASS_PlotBase: TGUID = '{508D02E1-90FC-11CE-86B3-444553540000}';
  DIID_IVcDoughnut: TGUID = '{508D02E2-90FC-11CE-86B3-444553540000}';
  CLASS_Doughnut: TGUID = '{508D02E3-90FC-11CE-86B3-444553540000}';
  DIID_IVcPie: TGUID = '{508D02E4-90FC-11CE-86B3-444553540000}';
  CLASS_Pie: TGUID = '{508D02E5-90FC-11CE-86B3-444553540000}';
  DIID_IVcWeighting: TGUID = '{508D02E6-90FC-11CE-86B3-444553540000}';
  CLASS_Weighting: TGUID = '{508D02E7-90FC-11CE-86B3-444553540000}';
  DIID_IVcWall: TGUID = '{508D02E8-90FC-11CE-86B3-444553540000}';
  CLASS_Wall: TGUID = '{508D02E9-90FC-11CE-86B3-444553540000}';
  DIID_IVcSeries: TGUID = '{0AA0FE20-912A-11CE-86B3-444553540000}';
  CLASS_Series: TGUID = '{0AA0FE21-912A-11CE-86B3-444553540000}';
  DIID_IVcBar: TGUID = '{264931C0-91F1-11CE-840F-00AA0042CB33}';
  CLASS_Bar: TGUID = '{264931C1-91F1-11CE-840F-00AA0042CB33}';
  DIID_IVcHiLo: TGUID = '{51DCC620-95B7-11CE-86B3-444553540000}';
  CLASS_HiLo: TGUID = '{51DCC621-95B7-11CE-86B3-444553540000}';
  DIID_IVcPosition: TGUID = '{51DCC622-95B7-11CE-86B3-444553540000}';
  CLASS_Position: TGUID = '{51DCC623-95B7-11CE-86B3-444553540000}';
  DIID_IVcSeriesMarker: TGUID = '{51DCC624-95B7-11CE-86B3-444553540000}';
  CLASS_SeriesMarker: TGUID = '{51DCC625-95B7-11CE-86B3-444553540000}';
  DIID_IVcSeriesLabel: TGUID = '{51DCC626-95B7-11CE-86B3-444553540000}';
  CLASS_SeriesLabel: TGUID = '{51DCC627-95B7-11CE-86B3-444553540000}';
  DIID_IVcStatLines: TGUID = '{2F6DD6A0-95E5-11CE-86B3-444553540000}';
  CLASS_StatLine: TGUID = '{2F6DD6A1-95E5-11CE-86B3-444553540000}';
  DIID_IVcDataPointLabel: TGUID = '{2F6DD6A2-95E5-11CE-86B3-444553540000}';
  CLASS_DataPointLabel: TGUID = '{2F6DD6A3-95E5-11CE-86B3-444553540000}';
  DIID_IVcDataPoint: TGUID = '{2F6DD6A4-95E5-11CE-86B3-444553540000}';
  CLASS_DataPoint: TGUID = '{2F6DD6A5-95E5-11CE-86B3-444553540000}';
  DIID_IVcAxis: TGUID = '{027D7900-A023-11CE-840F-00AA0042CB33}';
  CLASS_Axis: TGUID = '{027D7901-A023-11CE-840F-00AA0042CB33}';
  DIID_IVcCategoryScale: TGUID = '{62375360-A17D-11CE-840F-00AA0042CB33}';
  CLASS_CategoryScale: TGUID = '{62375361-A17D-11CE-840F-00AA0042CB33}';
  DIID_IVcDateScale: TGUID = '{62375362-A17D-11CE-840F-00AA0042CB33}';
  CLASS_DateScale: TGUID = '{62375363-A17D-11CE-840F-00AA0042CB33}';
  DIID_IVcAxisGrid: TGUID = '{62375364-A17D-11CE-840F-00AA0042CB33}';
  CLASS_AxisGrid: TGUID = '{62375365-A17D-11CE-840F-00AA0042CB33}';
  DIID_IVcIntersection: TGUID = '{62375366-A17D-11CE-840F-00AA0042CB33}';
  CLASS_Intersection: TGUID = '{62375367-A17D-11CE-840F-00AA0042CB33}';
  DIID_IVcTick: TGUID = '{62375368-A17D-11CE-840F-00AA0042CB33}';
  CLASS_Tick: TGUID = '{62375369-A17D-11CE-840F-00AA0042CB33}';
  DIID_IVcScale: TGUID = '{6237536A-A17D-11CE-840F-00AA0042CB33}';
  CLASS_AxisScale: TGUID = '{6237536B-A17D-11CE-840F-00AA0042CB33}';
  DIID_IVcValueScale: TGUID = '{6237536C-A17D-11CE-840F-00AA0042CB33}';
  CLASS_ValueScale: TGUID = '{6237536D-A17D-11CE-840F-00AA0042CB33}';
  DIID_IVcAxisTitle: TGUID = '{6237536E-A17D-11CE-840F-00AA0042CB33}';
  CLASS_AxisTitle: TGUID = '{6237536F-A17D-11CE-840F-00AA0042CB33}';
  DIID_IVcLabel: TGUID = '{62375370-A17D-11CE-840F-00AA0042CB33}';
  CLASS_Label_: TGUID = '{62375371-A17D-11CE-840F-00AA0042CB33}';
  DIID_IVcLight: TGUID = '{B54A6420-A25E-11CE-840F-00AA0042CB33}';
  CLASS_Light: TGUID = '{B54A6421-A25E-11CE-840F-00AA0042CB33}';
  DIID_IVcElevation: TGUID = '{A71FB700-A732-11CE-840F-00AA0042CB33}';
  CLASS_Elevation: TGUID = '{A71FB701-A732-11CE-840F-00AA0042CB33}';
  DIID_IVcAttribute: TGUID = '{A71FB702-A732-11CE-840F-00AA0042CB33}';
  CLASS_Attribute: TGUID = '{A71FB703-A732-11CE-840F-00AA0042CB33}';
  DIID_IVcSurface: TGUID = '{A71FB704-A732-11CE-840F-00AA0042CB33}';
  CLASS_Surface: TGUID = '{A71FB705-A732-11CE-840F-00AA0042CB33}';
  DIID_IVcContour: TGUID = '{A71FB706-A732-11CE-840F-00AA0042CB33}';
  CLASS_Contour: TGUID = '{A71FB707-A732-11CE-840F-00AA0042CB33}';
  DIID_IVcLightSource: TGUID = '{CD9EFA60-AA40-11CE-840F-00AA0042CB33}';
  CLASS_LightSource: TGUID = '{CD9EFA61-AA40-11CE-840F-00AA0042CB33}';
  DIID_IVcSeriesCollection: TGUID = '{C14E8B60-AE2B-11CE-840F-00AA0042CB33}';
  CLASS_SeriesCollection: TGUID = '{C14E8B61-AE2B-11CE-840F-00AA0042CB33}';
  DIID_IVcDataPoints: TGUID = '{C20E5260-B06F-11CE-840F-00AA0042CB33}';
  CLASS_DataPoints: TGUID = '{C20E5261-B06F-11CE-840F-00AA0042CB33}';
  DIID_IVcLabels: TGUID = '{62B9A400-B93D-11CE-8410-00AA0042CB33}';
  CLASS_Labels: TGUID = '{62B9A401-B93D-11CE-8410-00AA0042CB33}';
  DIID_IVcXYZ: TGUID = '{7D001800-BC65-11CE-8410-00AA0042CB33}';
  CLASS_XYZ: TGUID = '{7D001801-BC65-11CE-8410-00AA0042CB33}';
  DIID_IVcLightSources: TGUID = '{6FE35CC0-CE50-11CE-8410-00AA0042CB33}';
  CLASS_LightSources: TGUID = '{6FE35CC1-CE50-11CE-8410-00AA0042CB33}';
  DIID_IVcAttributes: TGUID = '{5A693220-CFEF-11CE-8410-00AA0042CB33}';
  CLASS_Attributes: TGUID = '{5A693221-CFEF-11CE-8410-00AA0042CB33}';
  DIID_IVcContourGradient: TGUID = '{69032720-D303-11CE-8410-00AA0042CB33}';
  CLASS_ContourGradient: TGUID = '{69032721-D303-11CE-8410-00AA0042CB33}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum FontStyleConstants
type
  FontStyleConstants = TOleEnum;
const
  VtFontStyleBold = $00000001;
  VtFontStyleItalic = $00000002;
  VtFontStyleOutline = $00000004;

// Constants for enum FontEffectsConstants
type
  FontEffectsConstants = TOleEnum;
const
  VtFontEffectStrikeThrough = $00000100;
  VtFontEffectUnderline = $00000200;

// Constants for enum FrameStyleConstants
type
  FrameStyleConstants = TOleEnum;
const
  VtFrameStyleNull = $00000000;
  VtFrameStyleSingleLine = $00000001;
  VtFrameStyleDoubleLine = $00000002;
  VtFrameStyleThickInner = $00000003;
  VtFrameStyleThickOuter = $00000004;

// Constants for enum BrushStyleConstants
type
  BrushStyleConstants = TOleEnum;
const
  VtBrushStyleNull = $00000000;
  VtBrushStyleSolid = $00000001;
  VtBrushStylePattern = $00000002;
  VtBrushStyleHatched = $00000003;

// Constants for enum LabelComponentConstants
type
  LabelComponentConstants = TOleEnum;
const
  VtChLabelComponentValue = $00000001;
  VtChLabelComponentPercent = $00000002;
  VtChLabelComponentSeriesName = $00000004;
  VtChLabelComponentPointName = $00000008;

// Constants for enum BrushPatternConstants
type
  BrushPatternConstants = TOleEnum;
const
  VtBrushPattern94Percent = $00000000;
  VtBrushPattern88Percent = $00000001;
  VtBrushPattern75Percent = $00000002;
  VtBrushPattern50Percent = $00000003;
  VtBrushPattern25Percent = $00000004;
  VtBrushPatternBoldHorizontal = $00000005;
  VtBrushPatternBoldVertical = $00000006;
  VtBrushPatternBoldDownDiagonal = $00000007;
  VtBrushPatternBoldUpDiagonal = $00000008;
  VtBrushPatternChecks = $00000009;
  VtBrushPatternWeave = $0000000A;
  VtBrushPatternHorizontal = $0000000B;
  VtBrushPatternVertical = $0000000C;
  VtBrushPatternDownDiagonal = $0000000D;
  VtBrushPatternUpDiagonal = $0000000E;
  VtBrushPatternGrid = $0000000F;
  VtBrushPatternTrellis = $00000010;
  VtBrushPatternInvertedTrellis = $00000011;

// Constants for enum BrushHatchConstants
type
  BrushHatchConstants = TOleEnum;
const
  VtBrushHatchHorizontal = $00000000;
  VtBrushHatchVertical = $00000001;
  VtBrushHatchDownDiagonal = $00000002;
  VtBrushHatchUpDiagonal = $00000003;
  VtBrushHatchCross = $00000004;
  VtBrushHatchDiagonalCross = $00000005;

// Constants for enum ShadowStyleConstants
type
  ShadowStyleConstants = TOleEnum;
const
  VtShadowStyleNull = $00000000;
  VtShadowStyleDrop = $00000001;

// Constants for enum MouseFlagConstants
type
  MouseFlagConstants = TOleEnum;
const
  VtChMouseFlagShiftKeyDown = $00000004;
  VtChMouseFlagControlKeyDown = $00000008;

// Constants for enum PenStyleConstants
type
  PenStyleConstants = TOleEnum;
const
  VtPenStyleNull = $00000000;
  VtPenStyleSolid = $00000001;
  VtPenStyleDashed = $00000002;
  VtPenStyleDotted = $00000003;
  VtPenStyleDashDot = $00000004;
  VtPenStyleDashDotDot = $00000005;
  VtPenStyleDitted = $00000006;
  VtPenStyleDashDit = $00000007;
  VtPenStyleDashDitDit = $00000008;

// Constants for enum PenJoinConstants
type
  PenJoinConstants = TOleEnum;
const
  VtPenJoinMiter = $00000000;
  VtPenJoinRound = $00000001;
  VtPenJoinBevel = $00000002;

// Constants for enum PenCapConstants
type
  PenCapConstants = TOleEnum;
const
  VtPenCapButt = $00000000;
  VtPenCapRound = $00000001;
  VtPenCapSquare = $00000002;

// Constants for enum GradientStyleConstants
type
  GradientStyleConstants = TOleEnum;
const
  VtGradientStyleHorizontal = $00000000;
  VtGradientStyleVertical = $00000001;
  VtGradientStyleRectangle = $00000002;
  VtGradientStyleOval = $00000003;

// Constants for enum PictureTypeConstants
type
  PictureTypeConstants = TOleEnum;
const
  VtPictureTypeNull = $00000000;
  VtPictureTypeBMP = $00000001;
  VtPictureTypeWMF = $00000002;

// Constants for enum PictureOptionConstants
type
  PictureOptionConstants = TOleEnum;
const
  VtPictureOptionNoSizeHeader = $00000000;
  VtPictureOptionTextAsCurves = $00000001;

// Constants for enum PictureMapTypeConstants
type
  PictureMapTypeConstants = TOleEnum;
const
  VtPictureMapTypeActual = $00000000;
  VtPictureMapTypeFitted = $00000001;
  VtPictureMapTypeStretched = $00000002;
  VtPictureMapTypeTiled = $00000003;
  VtPictureMapTypeCropFitted = $00000004;

// Constants for enum FillStyleConstants
type
  FillStyleConstants = TOleEnum;
const
  VtFillStyleNull = $00000000;
  VtFillStyleBrush = $00000001;
  VtFillStyleGradient = $00000002;

// Constants for enum LocationTypeConstants
type
  LocationTypeConstants = TOleEnum;
const
  VtChLocationTypeTopLeft = $00000000;
  VtChLocationTypeTop = $00000001;
  VtChLocationTypeTopRight = $00000002;
  VtChLocationTypeLeft = $00000003;
  VtChLocationTypeRight = $00000004;
  VtChLocationTypeBottomLeft = $00000005;
  VtChLocationTypeBottom = $00000006;
  VtChLocationTypeBottomRight = $00000007;
  VtChLocationTypeCustom = $00000008;

// Constants for enum AxisIdConstants
type
  AxisIdConstants = TOleEnum;
const
  VtChAxisIdX = $00000000;
  VtChAxisIdY = $00000001;
  VtChAxisIdY2 = $00000002;
  VtChAxisIdZ = $00000003;

// Constants for enum AxisTickStyleConstants
type
  AxisTickStyleConstants = TOleEnum;
const
  VtChAxisTickStyleNone = $00000000;
  VtChAxisTickStyleCenter = $00000001;
  VtChAxisTickStyleInside = $00000002;
  VtChAxisTickStyleOutside = $00000003;

// Constants for enum DateIntervalTypeConstants
type
  DateIntervalTypeConstants = TOleEnum;
const
  VtChDateIntervalTypeNone = $00000000;
  VtChDateIntervalTypeDaily = $00000001;
  VtChDateIntervalTypeWeekly = $00000002;
  VtChDateIntervalTypeSemimonthly = $00000003;
  VtChDateIntervalTypeMonthly = $00000004;
  VtChDateIntervalTypeYearly = $00000005;

// Constants for enum ScaleTypeConstants
type
  ScaleTypeConstants = TOleEnum;
const
  VtChScaleTypeLinear = $00000000;
  VtChScaleTypeLogarithmic = $00000001;
  VtChScaleTypePercent = $00000002;

// Constants for enum PercentAxisBasisConstants
type
  PercentAxisBasisConstants = TOleEnum;
const
  VtChPercentAxisBasisMaxChart = $00000000;
  VtChPercentAxisBasisMaxRow = $00000001;
  VtChPercentAxisBasisMaxColumn = $00000002;
  VtChPercentAxisBasisSumChart = $00000003;
  VtChPercentAxisBasisSumRow = $00000004;
  VtChPercentAxisBasisSumColumn = $00000005;

// Constants for enum PieWeightBasisConstants
type
  PieWeightBasisConstants = TOleEnum;
const
  VtChPieWeightBasisNone = $00000000;
  VtChPieWeightBasisTotal = $00000001;
  VtChPieWeightBasisSeries = $00000002;

// Constants for enum PieWeightStyleConstants
type
  PieWeightStyleConstants = TOleEnum;
const
  VtChPieWeightStyleArea = $00000000;
  VtChPieWeightStyleDiameter = $00000001;

// Constants for enum SortTypeConstants
type
  SortTypeConstants = TOleEnum;
const
  VtSortTypeNone = $00000000;
  VtSortTypeAscending = $00000001;
  VtSortTypeDescending = $00000002;

// Constants for enum AngleUnitsConstants
type
  AngleUnitsConstants = TOleEnum;
const
  VtAngleUnitsDegrees = $00000000;
  VtAngleUnitsRadians = $00000001;
  VtAngleUnitsGrads = $00000002;

// Constants for enum SubPlotLabelLocationTypeConstants
type
  SubPlotLabelLocationTypeConstants = TOleEnum;
const
  VtChSubPlotLabelLocationTypeNone = $00000000;
  VtChSubPlotLabelLocationTypeAbove = $00000001;
  VtChSubPlotLabelLocationTypeBelow = $00000002;
  VtChSubPlotLabelLocationTypeCenter = $00000003;

// Constants for enum LabelLineStyleConstants
type
  LabelLineStyleConstants = TOleEnum;
const
  VtChLabelLineStyleNone = $00000000;
  VtChLabelLineStyleStraight = $00000001;
  VtChLabelLineStyleBent = $00000002;

// Constants for enum LabelLocationTypeConstants
type
  LabelLocationTypeConstants = TOleEnum;
const
  VtChLabelLocationTypeNone = $00000000;
  VtChLabelLocationTypeAbovePoint = $00000001;
  VtChLabelLocationTypeBelowPoint = $00000002;
  VtChLabelLocationTypeCenter = $00000003;
  VtChLabelLocationTypeBase = $00000004;
  VtChLabelLocationTypeInside = $00000005;
  VtChLabelLocationTypeOutside = $00000006;
  VtChLabelLocationTypeLeft = $00000007;
  VtChLabelLocationTypeRight = $00000008;

// Constants for enum ContourColorTypeConstants
type
  ContourColorTypeConstants = TOleEnum;
const
  VtChContourColorTypeAutomatic = $00000000;
  VtChContourColorTypeGradient = $00000001;
  VtChContourColorTypeManual = $00000002;

// Constants for enum ContourDisplayTypeConstants
type
  ContourDisplayTypeConstants = TOleEnum;
const
  VtChContourDisplayTypeCBands = $00000000;
  VtChContourDisplayTypeCLines = $00000001;

// Constants for enum SurfaceBaseTypeConstants
type
  SurfaceBaseTypeConstants = TOleEnum;
const
  VtChSurfaceBaseTypePedestal = $00000000;
  VtChSurfaceBaseTypeStandard = $00000001;
  VtChSurfaceBaseTypeStandardWithCBands = $00000002;
  VtChSurfaceBaseTypeStandardWithCLines = $00000003;

// Constants for enum SurfaceDisplayTypeConstants
type
  SurfaceDisplayTypeConstants = TOleEnum;
const
  VtChSurfaceDisplayTypeNone = $00000000;
  VtChSurfaceDisplayTypeCBands = $00000001;
  VtChSurfaceDisplayTypeCLines = $00000002;
  VtChSurfaceDisplayTypeSolid = $00000003;
  VtChSurfaceDisplayTypeSolidWithCLines = $00000004;

// Constants for enum SurfaceProjectionTypeConstants
type
  SurfaceProjectionTypeConstants = TOleEnum;
const
  VtChSurfaceProjectionTypeNone = $00000000;
  VtChSurfaceProjectionTypeCBands = $00000001;
  VtChSurfaceProjectionTypeCLines = $00000002;

// Constants for enum SurfaceWireframeTypeConstants
type
  SurfaceWireframeTypeConstants = TOleEnum;
const
  VtChSurfaceWireframeTypeNone = $00000000;
  VtChSurfaceWireframeTypeMajor = $00000001;
  VtChSurfaceWireframeTypeMajorAndMinor = $00000002;

// Constants for enum MarkerStyleConstants
type
  MarkerStyleConstants = TOleEnum;
const
  VtMarkerStyleDash = $00000000;
  VtMarkerStylePlus = $00000001;
  VtMarkerStyleX = $00000002;
  VtMarkerStyleStar = $00000003;
  VtMarkerStyleCircle = $00000004;
  VtMarkerStyleSquare = $00000005;
  VtMarkerStyleDiamond = $00000006;
  VtMarkerStyleUpTriangle = $00000007;
  VtMarkerStyleDownTriangle = $00000008;
  VtMarkerStyleFilledCircle = $00000009;
  VtMarkerStyleFilledSquare = $0000000A;
  VtMarkerStyleFilledDiamond = $0000000B;
  VtMarkerStyleFilledUpTriangle = $0000000C;
  VtMarkerStyleFilledDownTriangle = $0000000D;
  VtMarkerStyle3dBall = $0000000E;

// Constants for enum ProjectionTypeConstants
type
  ProjectionTypeConstants = TOleEnum;
const
  VtProjectionTypePerspective = $00000000;
  VtProjectionTypeOblique = $00000001;
  VtProjectionTypeOrthogonal = $00000002;

// Constants for enum SmoothingTypeConstants
type
  SmoothingTypeConstants = TOleEnum;
const
  VtSmoothingTypeNone = $00000000;
  VtSmoothingTypeQuadraticBSpline = $00000001;
  VtSmoothingTypeCubicBSpline = $00000002;

// Constants for enum HorizontalAlignmentConstants
type
  HorizontalAlignmentConstants = TOleEnum;
const
  VtHorizontalAlignmentLeft = $00000000;
  VtHorizontalAlignmentRight = $00000001;
  VtHorizontalAlignmentCenter = $00000002;

// Constants for enum VerticalAlignmentConstants
type
  VerticalAlignmentConstants = TOleEnum;
const
  VtVerticalAlignmentTop = $00000000;
  VtVerticalAlignmentBottom = $00000001;
  VtVerticalAlignmentCenter = $00000002;

// Constants for enum OrientationConstants
type
  OrientationConstants = TOleEnum;
const
  VtOrientationHorizontal = $00000000;
  VtOrientationVertical = $00000001;
  VtOrientationUp = $00000002;
  VtOrientationDown = $00000003;

// Constants for enum DcTypeConstants
type
  DcTypeConstants = TOleEnum;
const
  VtDcTypeNull = $00000000;
  VtDcTypeDisplay = $00000001;
  VtDcTypePrinter = $00000002;
  VtDcTypeMetafile = $00000003;

// Constants for enum PrintScaleTypeConstants
type
  PrintScaleTypeConstants = TOleEnum;
const
  VtPrintScaleTypeActual = $00000000;
  VtPrintScaleTypeFitted = $00000001;
  VtPrintScaleTypeStretched = $00000002;

// Constants for enum StatTypeConstants
type
  StatTypeConstants = TOleEnum;
const
  VtChStatsMinimum = $00000001;
  VtChStatsMaximum = $00000002;
  VtChStatsMean = $00000004;
  VtChStatsStddev = $00000008;
  VtChStatsRegression = $00000010;

// Constants for enum PrintOrientationTypeConstants
type
  PrintOrientationTypeConstants = TOleEnum;
const
  VtPrintOrientationPortrait = $00000000;
  VtPrintOrientationLandscape = $00000001;

// Constants for enum TextOutputTypeConstants
type
  TextOutputTypeConstants = TOleEnum;
const
  VtTextOutputTypeHardware = $00000000;
  VtTextOutputTypePolygon = $00000001;

// Constants for enum TextLengthTypeConstants
type
  TextLengthTypeConstants = TOleEnum;
const
  VtTextLengthTypeVirtual = $00000000;
  VtTextLengthTypeDevice = $00000001;

// Constants for enum PartTypeConstants
type
  PartTypeConstants = TOleEnum;
const
  VtChPartTypeChart = $00000000;
  VtChPartTypeTitle = $00000001;
  VtChPartTypeFootnote = $00000002;
  VtChPartTypeLegend = $00000003;
  VtChPartTypePlot = $00000004;
  VtChPartTypeSeries = $00000005;
  VtChPartTypeSeriesLabel = $00000006;
  VtChPartTypePoint = $00000007;
  VtChPartTypePointLabel = $00000008;
  VtChPartTypeAxis = $00000009;
  VtChPartTypeAxisLabel = $0000000A;
  VtChPartTypeAxisTitle = $0000000B;

// Constants for enum DrawModeConstants
type
  DrawModeConstants = TOleEnum;
const
  VtChDrawModeDraw = $00000000;
  VtChDrawModeBlit = $00000001;

// Constants for enum SsLinkModeConstants
type
  SsLinkModeConstants = TOleEnum;
const
  VtChSsLinkModeOff = $00000000;
  VtChSsLinkModeOn = $00000001;
  VtChSsLinkModeAutoParse = $00000002;

// Constants for enum SeriesTypeConstants
type
  SeriesTypeConstants = TOleEnum;
const
  VtChSeriesTypeDefault = $FFFFFFFF;
  VtChSeriesType3dBar = $00000000;
  VtChSeriesType2dBar = $00000001;
  VtChSeriesType3dHorizontalBar = $00000002;
  VtChSeriesType2dHorizontalBar = $00000003;
  VtChSeriesType3dClusteredBar = $00000004;
  VtChSeriesType3dLine = $00000005;
  VtChSeriesType2dLine = $00000006;
  VtChSeriesType3dArea = $00000007;
  VtChSeriesType2dArea = $00000008;
  VtChSeriesType3dStep = $00000009;
  VtChSeriesType2dStep = $0000000A;
  VtChSeriesType2dXY = $0000000B;
  VtChSeriesType2dPolar = $0000000C;
  VtChSeriesType2dRadarLine = $0000000D;
  VtChSeriesType2dRadarArea = $0000000E;
  VtChSeriesType2dBubble = $0000000F;
  VtChSeriesType2dHiLo = $00000010;
  VtChSeriesType2dHLC = $00000011;
  VtChSeriesType2dHLCRight = $00000012;
  VtChSeriesType2dOHLC = $00000013;
  VtChSeriesType2dOHLCBar = $00000014;
  VtChSeriesType2dGantt = $00000015;
  VtChSeriesType3dGantt = $00000016;
  VtChSeriesType3dPie = $00000017;
  VtChSeriesType2dPie = $00000018;
  VtChSeriesType3dDoughnut = $00000019;
  VtChSeriesType2dDates = $0000001A;
  VtChSeriesType3dBarHiLo = $0000001B;
  VtChSeriesType2dBarHiLo = $0000001C;
  VtChSeriesType3dHorizontalBarHiLo = $0000001D;
  VtChSeriesType2dHorizontalBarHiLo = $0000001E;
  VtChSeriesType3dClusteredBarHiLo = $0000001F;
  VtChSeriesType3dSurface = $00000020;
  VtChSeriesType2dContour = $00000021;
  VtChSeriesType3dXYZ = $00000022;

// Constants for enum ChartTypeConstants
type
  ChartTypeConstants = TOleEnum;
const
  VtChChartType3dBar = $00000000;
  VtChChartType2dBar = $00000001;
  VtChChartType3dLine = $00000002;
  VtChChartType2dLine = $00000003;
  VtChChartType3dArea = $00000004;
  VtChChartType2dArea = $00000005;
  VtChChartType3dStep = $00000006;
  VtChChartType2dStep = $00000007;
  VtChChartType3dCombination = $00000008;
  VtChChartType2dCombination = $00000009;
  VtChChartType3dHorizontalBar = $0000000A;
  VtChChartType2dHorizontalBar = $0000000B;
  VtChChartType3dClusteredBar = $0000000C;
  VtChChartType3dPie = $0000000D;
  VtChChartType2dPie = $0000000E;
  VtChChartType3dDoughnut = $0000000F;
  VtChChartType2dXY = $00000010;
  VtChChartType2dPolar = $00000011;
  VtChChartType2dRadar = $00000012;
  VtChChartType2dBubble = $00000013;
  VtChChartType2dHiLo = $00000014;
  VtChChartType2dGantt = $00000015;
  VtChChartType3dGantt = $00000016;
  VtChChartType3dSurface = $00000017;
  VtChChartType2dContour = $00000018;
  VtChChartType3dScatter = $00000019;
  VtChChartType3dXYZ = $0000001A;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _DVtChart = dispinterface;
  _DVtChartEvents = dispinterface;
  ICoor = dispinterface;
  ILCoor = dispinterface;
  ICoor3 = dispinterface;
  ILRect = dispinterface;
  IRect = dispinterface;
  IColor = dispinterface;
  IBrush = dispinterface;
  IShadow = dispinterface;
  ITextLayout = dispinterface;
  IVcTitle = dispinterface;
  ILocation = dispinterface;
  IFont = dispinterface;
  IBackdrop = dispinterface;
  IFrame = dispinterface;
  IGradient = dispinterface;
  IPicture = dispinterface;
  IFill = dispinterface;
  IVcPen = dispinterface;
  IVcMarker = dispinterface;
  IVcFootnote = dispinterface;
  IVcLegend = dispinterface;
  IVcPrintInformation = dispinterface;
  IVcDataGrid = dispinterface;
  IVcPlot = dispinterface;
  IVcView3d = dispinterface;
  IVcPlotBase = dispinterface;
  IVcDoughnut = dispinterface;
  IVcPie = dispinterface;
  IVcWeighting = dispinterface;
  IVcWall = dispinterface;
  IVcSeries = dispinterface;
  IVcBar = dispinterface;
  IVcHiLo = dispinterface;
  IVcPosition = dispinterface;
  IVcSeriesMarker = dispinterface;
  IVcSeriesLabel = dispinterface;
  IVcStatLines = dispinterface;
  IVcDataPointLabel = dispinterface;
  IVcDataPoint = dispinterface;
  IVcAxis = dispinterface;
  IVcCategoryScale = dispinterface;
  IVcDateScale = dispinterface;
  IVcAxisGrid = dispinterface;
  IVcIntersection = dispinterface;
  IVcTick = dispinterface;
  IVcScale = dispinterface;
  IVcValueScale = dispinterface;
  IVcAxisTitle = dispinterface;
  IVcLabel = dispinterface;
  IVcLight = dispinterface;
  IVcElevation = dispinterface;
  IVcAttribute = dispinterface;
  IVcSurface = dispinterface;
  IVcContour = dispinterface;
  IVcLightSource = dispinterface;
  IVcSeriesCollection = dispinterface;
  IVcDataPoints = dispinterface;
  IVcLabels = dispinterface;
  IVcXYZ = dispinterface;
  IVcLightSources = dispinterface;
  IVcAttributes = dispinterface;
  IVcContourGradient = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  VtChart = _DVtChart;
  Coor = ICoor;
  LCoor = ILCoor;
  Coor3 = ICoor3;
  LRect = ILRect;
  Rect = IRect;
  VtColor = IColor;
  Brush = IBrush;
  Shadow = IShadow;
  TextLayout = ITextLayout;
  Title = IVcTitle;
  Location = ILocation;
  VtFont = IFont;
  Backdrop = IBackdrop;
  Frame = IFrame;
  Gradient = IGradient;
  VtPicture = IPicture;
  Fill = IFill;
  Pen = IVcPen;
  Marker = IVcMarker;
  Footnote = IVcFootnote;
  Legend = IVcLegend;
  PrintInformation = IVcPrintInformation;
  DataGrid = IVcDataGrid;
  Plot = IVcPlot;
  View3d = IVcView3d;
  PlotBase = IVcPlotBase;
  Doughnut = IVcDoughnut;
  Pie = IVcPie;
  Weighting = IVcWeighting;
  Wall = IVcWall;
  Series = IVcSeries;
  Bar = IVcBar;
  HiLo = IVcHiLo;
  Position = IVcPosition;
  SeriesMarker = IVcSeriesMarker;
  SeriesLabel = IVcSeriesLabel;
  StatLine = IVcStatLines;
  DataPointLabel = IVcDataPointLabel;
  DataPoint = IVcDataPoint;
  Axis = IVcAxis;
  CategoryScale = IVcCategoryScale;
  DateScale = IVcDateScale;
  AxisGrid = IVcAxisGrid;
  Intersection = IVcIntersection;
  Tick = IVcTick;
  AxisScale = IVcScale;
  ValueScale = IVcValueScale;
  AxisTitle = IVcAxisTitle;
  Label_ = IVcLabel;
  Light = IVcLight;
  Elevation = IVcElevation;
  Attribute = IVcAttribute;
  Surface = IVcSurface;
  Contour = IVcContour;
  LightSource = IVcLightSource;
  SeriesCollection = IVcSeriesCollection;
  DataPoints = IVcDataPoints;
  Labels = IVcLabels;
  XYZ = IVcXYZ;
  LightSources = IVcLightSources;
  Attributes = IVcAttributes;
  ContourGradient = IVcContourGradient;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PSmallint1 = ^Smallint; {*}
  PSYSINT1 = ^OLE_HANDLE; {*}
  PInteger1 = ^Integer; {*}
  PDouble1 = ^Double; {*}


// *********************************************************************//
// DispIntf:  _DVtChart
// Flags:     (4112) Hidden Dispatchable
// GUID:      {5A721581-5AF0-11CE-8384-0020AF2337F2}
// *********************************************************************//
  _DVtChart = dispinterface
    ['{5A721581-5AF0-11CE-8384-0020AF2337F2}']
    property AutoIncrement: WordBool dispid 1;
    property RandomFill: WordBool dispid 2;
    property ChartType: Smallint dispid 3;
    property Column: Smallint dispid 4;
    property ColumnCount: Smallint dispid 5;
    property ColumnLabel: WideString dispid 6;
    property ColumnLabelCount: Smallint dispid 7;
    property ColumnLabelIndex: Smallint dispid 8;
    property Data: WideString dispid 9;
    property FootnoteText: WideString dispid 10;
    property Repaint: WordBool dispid 11;
    property Row: Smallint dispid 12;
    property RowCount: Smallint dispid 13;
    property RowLabel: WideString dispid 14;
    property RowLabelCount: Smallint dispid 15;
    property RowLabelIndex: Smallint dispid 16;
    property SeriesColumn: Smallint dispid 17;
    property SeriesType: Smallint dispid 18;
    property ShowLegend: WordBool dispid 19;
    property SsLinkMode: Smallint dispid 20;
    property SsLinkRange: WideString dispid 21;
    property SsLinkSheet: WideString dispid 22;
    property DrawMode: Smallint dispid 23;
    property BorderStyle: Smallint dispid -504;
    property Enabled: WordBool dispid -514;
    property hWnd: Smallint dispid -515;
    property Handle: Integer readonly dispid 24;
    property Picture: IPictureDisp readonly dispid 25;
    property Title: IDispatch dispid 26;
    property Footnote: IDispatch dispid 27;
    property TitleText: WideString dispid 28;
    property Stacking: WordBool dispid 29;
    property TextLengthType: Smallint dispid 30;
    property AllowUserChanges: WordBool dispid 31;
    property AllowSelections: WordBool dispid 32;
    property AllowSeriesSelection: WordBool dispid 33;
    property AllowDynamicRotation: WordBool dispid 34;
    property ActiveSeriesCount: Smallint dispid 35;
    property Backdrop: IDispatch dispid 36;
    property PrintInformation: IDispatch dispid 37;
    property Legend: IDispatch dispid 38;
    property DataGrid: IDispatch dispid 39;
    property Plot: IDispatch dispid 40;
    property TwipsWidth: Integer dispid 41;
    property TwipsHeight: Integer dispid 42;
    property AllowDithering: WordBool dispid 43;
    property ErrorOffset: Smallint dispid 44;
    property DoSetCursor: WordBool dispid 45;
    property FileName: WideString dispid 46;
    property Chart3d: WordBool dispid 47;
    property SsLinkBook: WideString dispid 48;
    procedure EditPaste; dispid 49;
    procedure EditCopy; dispid 50;
    procedure ActivateSelectionDialog; dispid 51;
    procedure Layout; dispid 52;
    procedure ToDefaults; dispid 53;
    procedure PrintSetupDialog; dispid 54;
    procedure PrintChart; dispid 55;
    procedure SelectPart(part: Smallint; index1: Smallint; index2: Smallint; index3: Smallint; 
                         index4: Smallint); dispid 56;
    procedure GetSelectedPart(var part: Smallint; var index1: Smallint; var index2: Smallint; 
                              var index3: Smallint; var index4: Smallint); dispid 57;
    procedure GetDLLVersion(var major: Smallint; var minor: Smallint); dispid 58;
    procedure TwipsToChartPart(xVal: Integer; yVal: Integer; var part: Smallint; 
                               var index1: Smallint; var index2: Smallint; var index3: Smallint; 
                               var index4: Smallint); dispid 59;
    procedure ReadFromFile(const FileName: WideString); dispid 60;
    procedure WritePictureToFile(const FileName: WideString; pictureType: Smallint; 
                                 options: Smallint); dispid 61;
    procedure WriteToFile(const FileName: WideString); dispid 62;
    procedure ActivateFormatMenu(X: Integer; Y: Integer); dispid 63;
    procedure GetMetafile(options: Smallint; var Handle: OLE_HANDLE; var Width: Integer; 
                          var Height: Integer); dispid 64;
    procedure CopyDataFromArray(Top: Smallint; Left: Smallint; Bottom: Smallint; Right: Smallint; 
                                Array_: OleVariant); dispid 65;
    procedure CopyDataToArray(Top: Smallint; Left: Smallint; Bottom: Smallint; Right: Smallint; 
                              Array_: OleVariant); dispid 66;
    procedure Draw(hDC: OLE_HANDLE; hDCType: Smallint; Top: Integer; Left: Integer; 
                   Bottom: Integer; Right: Integer; Layout: WordBool; Stretch: WordBool); dispid 67;
    property GetBitmap[options: OleVariant]: OLE_HANDLE readonly dispid 70;
    procedure UseWizard; dispid 68;
    procedure EditChartData; dispid 69;
    procedure Refresh; dispid -550;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  _DVtChartEvents
// Flags:     (4096) Dispatchable
// GUID:      {5A721582-5AF0-11CE-8384-0020AF2337F2}
// *********************************************************************//
  _DVtChartEvents = dispinterface
    ['{5A721582-5AF0-11CE-8384-0020AF2337F2}']
    procedure ChartSelected(var MouseFlags: Smallint; var Cancel: Smallint); dispid 1;
    procedure TitleSelected(var MouseFlags: Smallint; var Cancel: Smallint); dispid 2;
    procedure FootnoteSelected(var MouseFlags: Smallint; var Cancel: Smallint); dispid 3;
    procedure LegendSelected(var MouseFlags: Smallint; var Cancel: Smallint); dispid 4;
    procedure PlotSelected(var MouseFlags: Smallint; var Cancel: Smallint); dispid 5;
    procedure AxisSelected(var AxisId: Smallint; var AxisIndex: Smallint; var MouseFlags: Smallint; 
                           var Cancel: Smallint); dispid 6;
    procedure AxisLabelSelected(var AxisId: Smallint; var AxisIndex: Smallint; 
                                var labelSetIndex: Smallint; var LabelIndex: Smallint; 
                                var MouseFlags: Smallint; var Cancel: Smallint); dispid 7;
    procedure AxisTitleSelected(var AxisId: Smallint; var AxisIndex: Smallint; 
                                var MouseFlags: Smallint; var Cancel: Smallint); dispid 8;
    procedure PointSelected(var Series: Smallint; var DataPoint: Smallint; 
                            var MouseFlags: Smallint; var Cancel: Smallint); dispid 9;
    procedure PointLabelSelected(var Series: Smallint; var DataPoint: Smallint; 
                                 var MouseFlags: Smallint; var Cancel: Smallint); dispid 10;
    procedure SeriesSelected(var Series: Smallint; var MouseFlags: Smallint; var Cancel: Smallint); dispid 11;
    procedure SeriesLabelSelected(var Series: Smallint; var MouseFlags: Smallint; 
                                  var Cancel: Smallint); dispid 12;
    procedure ChartActivated(var MouseFlags: Smallint; var Cancel: Smallint); dispid 13;
    procedure TitleActivated(var MouseFlags: Smallint; var Cancel: Smallint); dispid 14;
    procedure FootnoteActivated(var MouseFlags: Smallint; var Cancel: Smallint); dispid 15;
    procedure LegendActivated(var MouseFlags: Smallint; var Cancel: Smallint); dispid 16;
    procedure PlotActivated(var MouseFlags: Smallint; var Cancel: Smallint); dispid 17;
    procedure AxisActivated(var AxisId: Smallint; var AxisIndex: Smallint; 
                            var MouseFlags: Smallint; var Cancel: Smallint); dispid 18;
    procedure AxisLabelActivated(var AxisId: Smallint; var AxisIndex: Smallint; 
                                 var labelSetIndex: Smallint; var LabelIndex: Smallint; 
                                 var MouseFlags: Smallint; var Cancel: Smallint); dispid 19;
    procedure AxisTitleActivated(var AxisId: Smallint; var AxisIndex: Smallint; 
                                 var MouseFlags: Smallint; var Cancel: Smallint); dispid 20;
    procedure PointActivated(var Series: Smallint; var DataPoint: Smallint; 
                             var MouseFlags: Smallint; var Cancel: Smallint); dispid 21;
    procedure PointLabelActivated(var Series: Smallint; var DataPoint: Smallint; 
                                  var MouseFlags: Smallint; var Cancel: Smallint); dispid 22;
    procedure SeriesActivated(var Series: Smallint; var MouseFlags: Smallint; var Cancel: Smallint); dispid 23;
    procedure SeriesLabelActivated(var Series: Smallint; var MouseFlags: Smallint; 
                                   var Cancel: Smallint); dispid 24;
    procedure Click; dispid -600;
    procedure DblClick; dispid -601;
    procedure KeyDown(var KeyCode: Smallint; Shift: Smallint); dispid -602;
    procedure KeyPress(var KeyAscii: Smallint); dispid -603;
    procedure KeyUp(var KeyCode: Smallint; Shift: Smallint); dispid -604;
    procedure MouseDown(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -605;
    procedure MouseMove(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -606;
    procedure MouseUp(Button: Smallint; Shift: Smallint; X: OLE_XPOS_PIXELS; Y: OLE_YPOS_PIXELS); dispid -607;
    procedure ApplyChanges; dispid 25;
  end;

// *********************************************************************//
// DispIntf:  ICoor
// Flags:     (4112) Hidden Dispatchable
// GUID:      {EBF97E20-731F-11CE-840F-00AA0042CB33}
// *********************************************************************//
  ICoor = dispinterface
    ['{EBF97E20-731F-11CE-840F-00AA0042CB33}']
    property X: Single dispid 1;
    property Y: Single dispid 2;
    procedure Set_(X: Single; Y: Single); dispid 3;
  end;

// *********************************************************************//
// DispIntf:  ILCoor
// Flags:     (4112) Hidden Dispatchable
// GUID:      {EBF97E22-731F-11CE-840F-00AA0042CB33}
// *********************************************************************//
  ILCoor = dispinterface
    ['{EBF97E22-731F-11CE-840F-00AA0042CB33}']
    property X: Integer dispid 1;
    property Y: Integer dispid 2;
    procedure Set_(X: Integer; Y: Integer); dispid 3;
  end;

// *********************************************************************//
// DispIntf:  ICoor3
// Flags:     (4112) Hidden Dispatchable
// GUID:      {177BF2A0-7350-11CE-840F-00AA0042CB33}
// *********************************************************************//
  ICoor3 = dispinterface
    ['{177BF2A0-7350-11CE-840F-00AA0042CB33}']
    property X: Single dispid 1;
    property Y: Single dispid 2;
    property Z: Single dispid 3;
    procedure Set_(X: Single; Y: Single; Z: Single); dispid 4;
  end;

// *********************************************************************//
// DispIntf:  ILRect
// Flags:     (4112) Hidden Dispatchable
// GUID:      {177BF2A2-7350-11CE-840F-00AA0042CB33}
// *********************************************************************//
  ILRect = dispinterface
    ['{177BF2A2-7350-11CE-840F-00AA0042CB33}']
    property Min: IDispatch dispid 1;
    property Max: IDispatch dispid 2;
  end;

// *********************************************************************//
// DispIntf:  IRect
// Flags:     (4112) Hidden Dispatchable
// GUID:      {FE5517C0-73FE-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IRect = dispinterface
    ['{FE5517C0-73FE-11CE-840F-00AA0042CB33}']
    property Min: IDispatch dispid 1;
    property Max: IDispatch dispid 2;
  end;

// *********************************************************************//
// DispIntf:  IColor
// Flags:     (4112) Hidden Dispatchable
// GUID:      {9BA79C60-7403-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IColor = dispinterface
    ['{9BA79C60-7403-11CE-840F-00AA0042CB33}']
    property Red: Smallint dispid 1;
    property Green: Smallint dispid 2;
    property Blue: Smallint dispid 3;
    property Automatic: WordBool dispid 4;
    procedure Set_(Red: Smallint; Green: Smallint; Blue: Smallint); dispid 5;
  end;

// *********************************************************************//
// DispIntf:  IBrush
// Flags:     (4112) Hidden Dispatchable
// GUID:      {AFE57020-7409-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IBrush = dispinterface
    ['{AFE57020-7409-11CE-840F-00AA0042CB33}']
    property Style: Smallint dispid 1;
    property FillColor: IDispatch dispid 2;
    property PatternColor: IDispatch dispid 3;
    property Index: Smallint dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IShadow
// Flags:     (4112) Hidden Dispatchable
// GUID:      {AFE57022-7409-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IShadow = dispinterface
    ['{AFE57022-7409-11CE-840F-00AA0042CB33}']
    property Style: Smallint dispid 1;
    property Brush: IDispatch dispid 2;
    property Offset: IDispatch dispid 3;
  end;

// *********************************************************************//
// DispIntf:  ITextLayout
// Flags:     (4112) Hidden Dispatchable
// GUID:      {E26C7700-756C-11CE-840F-00AA0042CB33}
// *********************************************************************//
  ITextLayout = dispinterface
    ['{E26C7700-756C-11CE-840F-00AA0042CB33}']
    property HorzAlignment: Smallint dispid 1;
    property VertAlignment: Smallint dispid 2;
    property Orientation: Smallint dispid 3;
    property WordWrap: WordBool dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IVcTitle
// Flags:     (4112) Hidden Dispatchable
// GUID:      {C82141A0-7571-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcTitle = dispinterface
    ['{C82141A0-7571-11CE-840F-00AA0042CB33}']
    property TextLayout: IDispatch dispid 1;
    property Text: WideString dispid 2;
    property _Text: WideString dispid 0;
    property Location: IDispatch dispid 3;
    property Backdrop: IDispatch dispid 4;
    property VtFont: IDispatch dispid 5;
    property TextLength: Smallint dispid 6;
    procedure Select; dispid 7;
  end;

// *********************************************************************//
// DispIntf:  ILocation
// Flags:     (4112) Hidden Dispatchable
// GUID:      {EDDF9242-764B-11CE-840F-00AA0042CB33}
// *********************************************************************//
  ILocation = dispinterface
    ['{EDDF9242-764B-11CE-840F-00AA0042CB33}']
    property Rect: IDispatch dispid 1;
    property Visible: WordBool dispid 2;
    property LocationType: Smallint dispid 3;
  end;

// *********************************************************************//
// DispIntf:  IFont
// Flags:     (4112) Hidden Dispatchable
// GUID:      {2E6A37A0-77FC-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IFont = dispinterface
    ['{2E6A37A0-77FC-11CE-840F-00AA0042CB33}']
    property Name: WideString dispid 1;
    property Size: Single dispid 2;
    property Style: Smallint dispid 3;
    property Effect: Smallint dispid 4;
    property VtColor: IDispatch dispid 5;
  end;

// *********************************************************************//
// DispIntf:  IBackdrop
// Flags:     (4112) Hidden Dispatchable
// GUID:      {2E6A37A2-77FC-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IBackdrop = dispinterface
    ['{2E6A37A2-77FC-11CE-840F-00AA0042CB33}']
    property Shadow: IDispatch dispid 1;
    property Frame: IDispatch dispid 2;
    property Fill: IDispatch dispid 3;
  end;

// *********************************************************************//
// DispIntf:  IFrame
// Flags:     (4112) Hidden Dispatchable
// GUID:      {2E6A37A4-77FC-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IFrame = dispinterface
    ['{2E6A37A4-77FC-11CE-840F-00AA0042CB33}']
    property Style: Smallint dispid 1;
    property FrameColor: IDispatch dispid 2;
    property SpaceColor: IDispatch dispid 3;
    property Width: Single dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IGradient
// Flags:     (4112) Hidden Dispatchable
// GUID:      {2E6A37A6-77FC-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IGradient = dispinterface
    ['{2E6A37A6-77FC-11CE-840F-00AA0042CB33}']
    property Style: Smallint dispid 1;
    property FromColor: IDispatch dispid 2;
    property ToColor: IDispatch dispid 3;
  end;

// *********************************************************************//
// DispIntf:  IPicture
// Flags:     (4112) Hidden Dispatchable
// GUID:      {FD30FB00-789C-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IPicture = dispinterface
    ['{FD30FB00-789C-11CE-840F-00AA0042CB33}']
    property Type_: Smallint dispid 1;
    property Map: Smallint dispid 2;
    property Embedded: WordBool dispid 3;
    property FileName: WideString dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IFill
// Flags:     (4112) Hidden Dispatchable
// GUID:      {FD30FB02-789C-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IFill = dispinterface
    ['{FD30FB02-789C-11CE-840F-00AA0042CB33}']
    property Style: Smallint dispid 1;
    property Brush: IDispatch dispid 2;
    property Gradient: IDispatch dispid 3;
    property VtPicture: IDispatch dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IVcPen
// Flags:     (4112) Hidden Dispatchable
// GUID:      {279B5A40-8098-11CE-BECC-00AA0042CB33}
// *********************************************************************//
  IVcPen = dispinterface
    ['{279B5A40-8098-11CE-BECC-00AA0042CB33}']
    property Style: Smallint dispid 1;
    property Join: Smallint dispid 2;
    property Cap: Smallint dispid 3;
    property VtColor: IDispatch dispid 4;
    property Width: Single dispid 5;
    property Limit: Single dispid 6;
  end;

// *********************************************************************//
// DispIntf:  IVcMarker
// Flags:     (4112) Hidden Dispatchable
// GUID:      {3080E742-813F-11CE-BECC-00AA0042CB33}
// *********************************************************************//
  IVcMarker = dispinterface
    ['{3080E742-813F-11CE-BECC-00AA0042CB33}']
    property Visible: WordBool dispid 1;
    property Style: Smallint dispid 2;
    property Pen: IDispatch dispid 3;
    property Size: Single dispid 4;
    property FillColor: IDispatch dispid 5;
    property VtPicture: IDispatch dispid 6;
  end;

// *********************************************************************//
// DispIntf:  IVcFootnote
// Flags:     (4112) Hidden Dispatchable
// GUID:      {4F053F00-8396-11CE-BECC-00AA0042CB33}
// *********************************************************************//
  IVcFootnote = dispinterface
    ['{4F053F00-8396-11CE-BECC-00AA0042CB33}']
    property TextLayout: IDispatch dispid 1;
    property Location: IDispatch dispid 2;
    property Backdrop: IDispatch dispid 3;
    property VtFont: IDispatch dispid 4;
    property Text: WideString dispid 5;
    property _Text: WideString dispid 0;
    property TextLength: Smallint dispid 6;
    procedure Select; dispid 7;
  end;

// *********************************************************************//
// DispIntf:  IVcLegend
// Flags:     (4112) Hidden Dispatchable
// GUID:      {95C52B60-83B1-11CE-BECC-00AA0042CB33}
// *********************************************************************//
  IVcLegend = dispinterface
    ['{95C52B60-83B1-11CE-BECC-00AA0042CB33}']
    property Location: IDispatch dispid 1;
    property Backdrop: IDispatch dispid 2;
    property VtFont: IDispatch dispid 3;
    property TextLayout: IDispatch dispid 4;
    procedure Select; dispid 5;
  end;

// *********************************************************************//
// DispIntf:  IVcPrintInformation
// Flags:     (4112) Hidden Dispatchable
// GUID:      {CFA0AC00-8B6E-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcPrintInformation = dispinterface
    ['{CFA0AC00-8B6E-11CE-840F-00AA0042CB33}']
    property ScaleType: Smallint dispid 1;
    property Orientation: Smallint dispid 2;
    property TopMargin: Single dispid 3;
    property BottomMargin: Single dispid 4;
    property LeftMargin: Single dispid 5;
    property RightMargin: Single dispid 6;
    property CenterHorizontally: WordBool dispid 7;
    property CenterVertically: WordBool dispid 8;
    property Monochrome: WordBool dispid 9;
    property LayoutForPrinter: WordBool dispid 10;
    procedure PrintCopies(NumberCopies: Smallint); dispid 11;
  end;

// *********************************************************************//
// DispIntf:  IVcDataGrid
// Flags:     (4112) Hidden Dispatchable
// GUID:      {6CB603A0-8F70-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcDataGrid = dispinterface
    ['{6CB603A0-8F70-11CE-840F-00AA0042CB33}']
    property ColumnCount: Smallint dispid 1;
    property ColumnLabelCount: Smallint dispid 2;
    property RowLabelCount: Smallint dispid 3;
    property RowCount: Smallint dispid 4;
    procedure DeleteColumns(Column: Smallint; Count: Smallint); dispid 5;
    procedure InsertColumns(Column: Smallint; Count: Smallint); dispid 6;
    procedure DeleteColumnLabels(LabelIndex: Smallint; Count: Smallint); dispid 7;
    procedure InsertColumnLabels(LabelIndex: Smallint; Count: Smallint); dispid 8;
    procedure DeleteRows(Row: Smallint; Count: Smallint); dispid 9;
    procedure InsertRows(Row: Smallint; Count: Smallint); dispid 10;
    procedure DeleteRowLabels(LabelIndex: Smallint; Count: Smallint); dispid 11;
    procedure InsertRowLabels(LabelIndex: Smallint; Count: Smallint); dispid 12;
    procedure RandomDataFill; dispid 13;
    procedure SetSize(RowLabelCount: Smallint; ColumnLabelCount: Smallint; DataRowCount: Smallint; 
                      DataColumnCount: Smallint); dispid 14;
    procedure InitializeLabels; dispid 15;
    property ColumnLabel[Column: Smallint; LabelIndex: Smallint]: WideString dispid 21;
    property CompositeColumnLabel[Column: Smallint]: WideString readonly dispid 22;
    property CompositeRowLabel[Row: Smallint]: WideString readonly dispid 23;
    property RowLabel[Row: Smallint; LabelIndex: Smallint]: WideString dispid 24;
    procedure RandomFillColumns(Column: Smallint; Count: Smallint); dispid 16;
    procedure RandomFillRows(Row: Smallint; Count: Smallint); dispid 17;
    procedure MoveData(Top: Smallint; Left: Smallint; Bottom: Smallint; Right: Smallint; 
                       OverOffset: Smallint; DownOffset: Smallint); dispid 18;
    procedure GetData(Row: Smallint; Column: Smallint; var DataPoint: Double; var nullFlag: Smallint); dispid 19;
    procedure SetData(Row: Smallint; Column: Smallint; DataPoint: Double; nullFlag: Smallint); dispid 20;
  end;

// *********************************************************************//
// DispIntf:  IVcPlot
// Flags:     (4112) Hidden Dispatchable
// GUID:      {F77BA680-9037-11CE-86B3-444553540000}
// *********************************************************************//
  IVcPlot = dispinterface
    ['{F77BA680-9037-11CE-86B3-444553540000}']
    property AngleUnit: Smallint dispid 1;
    property Clockwise: WordBool dispid 2;
    property Sort: Smallint dispid 3;
    property MaxBubbleToAxisRatio: Single dispid 4;
    property Backdrop: IDispatch dispid 5;
    property Perspective: IDispatch dispid 6;
    property ScaleAngle: Single dispid 7;
    property StartingAngle: Single dispid 8;
    property SubPlotLabelPosition: Smallint dispid 9;
    property BarGap: Single dispid 10;
    property xGap: Single dispid 11;
    property AutoLayout: WordBool dispid 12;
    property WidthToHeightRatio: Single dispid 13;
    property DepthToHeightRatio: Single dispid 14;
    property LocationRect: IDispatch dispid 15;
    property Projection: Smallint dispid 16;
    property zGap: Single dispid 17;
    property View3d: IDispatch dispid 18;
    property PlotBase: IDispatch dispid 19;
    property Doughnut: IDispatch dispid 20;
    property Pie: IDispatch dispid 21;
    property Weighting: IDispatch dispid 22;
    property Wall: IDispatch dispid 23;
    property Elevation: IDispatch dispid 24;
    property SeriesCollection: IDispatch dispid 25;
    property DataSeriesInRow: WordBool dispid 26;
    property Light: IDispatch dispid 27;
    property XYZ: IDispatch dispid 28;
    property DefaultPercentBasis: Smallint dispid 29;
    property UniformAxis: WordBool dispid 30;
    property Axis[AxisId: Smallint; Index: OleVariant]: IDispatch readonly dispid 31;
  end;

// *********************************************************************//
// DispIntf:  IVcView3d
// Flags:     (4112) Hidden Dispatchable
// GUID:      {21645F62-90F0-11CE-86B3-444553540000}
// *********************************************************************//
  IVcView3d = dispinterface
    ['{21645F62-90F0-11CE-86B3-444553540000}']
    property Rotation: Single dispid 1;
    property Elevation: Single dispid 2;
    procedure Set_(Rotation: Single; Elevation: Single); dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IVcPlotBase
// Flags:     (4112) Hidden Dispatchable
// GUID:      {508D02E0-90FC-11CE-86B3-444553540000}
// *********************************************************************//
  IVcPlotBase = dispinterface
    ['{508D02E0-90FC-11CE-86B3-444553540000}']
    property BaseHeight: Single dispid 1;
    property Brush: IDispatch dispid 2;
    property Pen: IDispatch dispid 3;
  end;

// *********************************************************************//
// DispIntf:  IVcDoughnut
// Flags:     (4112) Hidden Dispatchable
// GUID:      {508D02E2-90FC-11CE-86B3-444553540000}
// *********************************************************************//
  IVcDoughnut = dispinterface
    ['{508D02E2-90FC-11CE-86B3-444553540000}']
    property Sides: Smallint dispid 1;
    property InteriorRatio: Single dispid 2;
    procedure Set_(InteriorRatio: Single; Sides: Smallint); dispid 3;
  end;

// *********************************************************************//
// DispIntf:  IVcPie
// Flags:     (4112) Hidden Dispatchable
// GUID:      {508D02E4-90FC-11CE-86B3-444553540000}
// *********************************************************************//
  IVcPie = dispinterface
    ['{508D02E4-90FC-11CE-86B3-444553540000}']
    property ThicknessRatio: Single dispid 1;
    property TopRadiusRatio: Single dispid 2;
    procedure Set_(ThicknessRatio: Single; TopRadiusRation: Single); dispid 3;
  end;

// *********************************************************************//
// DispIntf:  IVcWeighting
// Flags:     (4112) Hidden Dispatchable
// GUID:      {508D02E6-90FC-11CE-86B3-444553540000}
// *********************************************************************//
  IVcWeighting = dispinterface
    ['{508D02E6-90FC-11CE-86B3-444553540000}']
    property Basis: Smallint dispid 1;
    property Style: Smallint dispid 2;
    procedure Set_(Basis: Smallint; Style: Smallint); dispid 3;
  end;

// *********************************************************************//
// DispIntf:  IVcWall
// Flags:     (4112) Hidden Dispatchable
// GUID:      {508D02E8-90FC-11CE-86B3-444553540000}
// *********************************************************************//
  IVcWall = dispinterface
    ['{508D02E8-90FC-11CE-86B3-444553540000}']
    property Width: Single dispid 1;
    property Brush: IDispatch dispid 2;
    property Pen: IDispatch dispid 3;
  end;

// *********************************************************************//
// DispIntf:  IVcSeries
// Flags:     (4112) Hidden Dispatchable
// GUID:      {0AA0FE20-912A-11CE-86B3-444553540000}
// *********************************************************************//
  IVcSeries = dispinterface
    ['{0AA0FE20-912A-11CE-86B3-444553540000}']
    property SecondaryAxis: WordBool dispid 1;
    property SmoothingType: Smallint dispid 2;
    property SmoothingFactor: Smallint dispid 3;
    property SeriesType: Smallint dispid 4;
    property GuideLinePen: IDispatch dispid 5;
    property ShowLine: WordBool dispid 6;
    property Pen: IDispatch dispid 7;
    property Bar: IDispatch dispid 8;
    property HiLo: IDispatch dispid 9;
    property Position: IDispatch dispid 10;
    property SeriesMarker: IDispatch dispid 11;
    property SeriesLabel: IDispatch dispid 12;
    property StatLine: IDispatch dispid 13;
    property DataPoints: IDispatch dispid 14;
    property LegendText: WideString dispid 15;
    property _LegendText: WideString dispid 0;
    property ShowGuideLine[AxisId: Smallint]: WordBool dispid 17;
    procedure Select; dispid 16;
    property TypeByChartType[ChartType: Smallint]: Smallint readonly dispid 18;
  end;

// *********************************************************************//
// DispIntf:  IVcBar
// Flags:     (4112) Hidden Dispatchable
// GUID:      {264931C0-91F1-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcBar = dispinterface
    ['{264931C0-91F1-11CE-840F-00AA0042CB33}']
    property Sides: Smallint dispid 1;
    property TopRatio: Single dispid 2;
  end;

// *********************************************************************//
// DispIntf:  IVcHiLo
// Flags:     (4112) Hidden Dispatchable
// GUID:      {51DCC620-95B7-11CE-86B3-444553540000}
// *********************************************************************//
  IVcHiLo = dispinterface
    ['{51DCC620-95B7-11CE-86B3-444553540000}']
    property GainColor: IDispatch dispid 1;
    property LossColor: IDispatch dispid 2;
  end;

// *********************************************************************//
// DispIntf:  IVcPosition
// Flags:     (4112) Hidden Dispatchable
// GUID:      {51DCC622-95B7-11CE-86B3-444553540000}
// *********************************************************************//
  IVcPosition = dispinterface
    ['{51DCC622-95B7-11CE-86B3-444553540000}']
    property Excluded: WordBool dispid 1;
    property Hidden: WordBool dispid 2;
    property Order: Smallint dispid 3;
    property StackOrder: Smallint dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IVcSeriesMarker
// Flags:     (4112) Hidden Dispatchable
// GUID:      {51DCC624-95B7-11CE-86B3-444553540000}
// *********************************************************************//
  IVcSeriesMarker = dispinterface
    ['{51DCC624-95B7-11CE-86B3-444553540000}']
    property Auto: WordBool dispid 1;
    property Show: WordBool dispid 2;
  end;

// *********************************************************************//
// DispIntf:  IVcSeriesLabel
// Flags:     (4112) Hidden Dispatchable
// GUID:      {51DCC626-95B7-11CE-86B3-444553540000}
// *********************************************************************//
  IVcSeriesLabel = dispinterface
    ['{51DCC626-95B7-11CE-86B3-444553540000}']
    property Text: WideString dispid 1;
    property _Text: WideString dispid 0;
    property LocationType: Smallint dispid 2;
    property LineStyle: Smallint dispid 3;
    property Offset: IDispatch dispid 4;
    property Backdrop: IDispatch dispid 5;
    property VtFont: IDispatch dispid 6;
    property TextLayout: IDispatch dispid 7;
    property TextLength: Smallint dispid 8;
  end;

// *********************************************************************//
// DispIntf:  IVcStatLines
// Flags:     (4112) Hidden Dispatchable
// GUID:      {2F6DD6A0-95E5-11CE-86B3-444553540000}
// *********************************************************************//
  IVcStatLines = dispinterface
    ['{2F6DD6A0-95E5-11CE-86B3-444553540000}']
    property Flag: Smallint dispid 1;
    property VtColor: IDispatch dispid 2;
    property Width: Single dispid 3;
    property Style[Type_: Smallint]: Smallint dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IVcDataPointLabel
// Flags:     (4112) Hidden Dispatchable
// GUID:      {2F6DD6A2-95E5-11CE-86B3-444553540000}
// *********************************************************************//
  IVcDataPointLabel = dispinterface
    ['{2F6DD6A2-95E5-11CE-86B3-444553540000}']
    property Text: WideString dispid 1;
    property _Text: WideString dispid 0;
    property Backdrop: IDispatch dispid 2;
    property VtFont: IDispatch dispid 3;
    property Offset: IDispatch dispid 4;
    property TextLayout: IDispatch dispid 5;
    property LocationType: Smallint dispid 6;
    property Custom: WordBool dispid 7;
    property Component: Smallint dispid 8;
    property LineStyle: Smallint dispid 9;
    property ValueFormat: WideString dispid 10;
    property PercentFormat: WideString dispid 11;
    property TextLength: Smallint dispid 12;
    procedure ResetCustomLabel; dispid 13;
    procedure Select; dispid 14;
  end;

// *********************************************************************//
// DispIntf:  IVcDataPoint
// Flags:     (4112) Hidden Dispatchable
// GUID:      {2F6DD6A4-95E5-11CE-86B3-444553540000}
// *********************************************************************//
  IVcDataPoint = dispinterface
    ['{2F6DD6A4-95E5-11CE-86B3-444553540000}']
    property DataPointLabel: IDispatch dispid 1;
    property Brush: IDispatch dispid 2;
    property EdgePen: IDispatch dispid 3;
    property Marker: IDispatch dispid 4;
    property Offset: Single dispid 5;
    property VtPicture: IDispatch dispid 6;
    procedure ResetCustom; dispid 7;
    procedure Select; dispid 8;
  end;

// *********************************************************************//
// DispIntf:  IVcAxis
// Flags:     (4112) Hidden Dispatchable
// GUID:      {027D7900-A023-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcAxis = dispinterface
    ['{027D7900-A023-11CE-840F-00AA0042CB33}']
    property Pen: IDispatch dispid 1;
    property LabelLevelCount: Smallint dispid 2;
    property CategoryScale: IDispatch dispid 3;
    property DateScale: IDispatch dispid 4;
    property AxisGrid: IDispatch dispid 5;
    property Intersection: IDispatch dispid 6;
    property Tick: IDispatch dispid 7;
    property AxisScale: IDispatch dispid 8;
    property ValueScale: IDispatch dispid 9;
    property AxisTitle: IDispatch dispid 10;
    property Labels: IDispatch dispid 11;
  end;

// *********************************************************************//
// DispIntf:  IVcCategoryScale
// Flags:     (4112) Hidden Dispatchable
// GUID:      {62375360-A17D-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcCategoryScale = dispinterface
    ['{62375360-A17D-11CE-840F-00AA0042CB33}']
    property Auto: WordBool dispid 1;
    property DivisionsPerLabel: Smallint dispid 2;
    property DivisionsPerTick: Smallint dispid 3;
    property LabelTick: WordBool dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IVcDateScale
// Flags:     (4112) Hidden Dispatchable
// GUID:      {62375362-A17D-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcDateScale = dispinterface
    ['{62375362-A17D-11CE-840F-00AA0042CB33}']
    property Auto: WordBool dispid 1;
    property Minimum: Double dispid 2;
    property Maximum: Double dispid 3;
    property MajInt: Smallint dispid 4;
    property MajFreq: Smallint dispid 5;
    property MinInt: Smallint dispid 6;
    property MinFreq: Smallint dispid 7;
    property SkipWeekend: WordBool dispid 8;
  end;

// *********************************************************************//
// DispIntf:  IVcAxisGrid
// Flags:     (4112) Hidden Dispatchable
// GUID:      {62375364-A17D-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcAxisGrid = dispinterface
    ['{62375364-A17D-11CE-840F-00AA0042CB33}']
    property MinorPen: IDispatch dispid 1;
    property MajorPen: IDispatch dispid 2;
  end;

// *********************************************************************//
// DispIntf:  IVcIntersection
// Flags:     (4112) Hidden Dispatchable
// GUID:      {62375366-A17D-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcIntersection = dispinterface
    ['{62375366-A17D-11CE-840F-00AA0042CB33}']
    property Auto: WordBool dispid 1;
    property Point: Double dispid 2;
    property AxisId: Smallint dispid 3;
    property Index: Smallint dispid 4;
    property LabelsInsidePlot: WordBool dispid 5;
  end;

// *********************************************************************//
// DispIntf:  IVcTick
// Flags:     (4112) Hidden Dispatchable
// GUID:      {62375368-A17D-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcTick = dispinterface
    ['{62375368-A17D-11CE-840F-00AA0042CB33}']
    property Length: Single dispid 1;
    property Style: Smallint dispid 2;
  end;

// *********************************************************************//
// DispIntf:  IVcScale
// Flags:     (4112) Hidden Dispatchable
// GUID:      {6237536A-A17D-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcScale = dispinterface
    ['{6237536A-A17D-11CE-840F-00AA0042CB33}']
    property Hide: WordBool dispid 1;
    property Type_: Smallint dispid 2;
    property LogBase: Smallint dispid 3;
    property PercentBasis: Smallint dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IVcValueScale
// Flags:     (4112) Hidden Dispatchable
// GUID:      {6237536C-A17D-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcValueScale = dispinterface
    ['{6237536C-A17D-11CE-840F-00AA0042CB33}']
    property Auto: WordBool dispid 1;
    property Minimum: Double dispid 2;
    property Maximum: Double dispid 3;
    property MajorDivision: Smallint dispid 4;
    property MinorDivision: Smallint dispid 5;
  end;

// *********************************************************************//
// DispIntf:  IVcAxisTitle
// Flags:     (4112) Hidden Dispatchable
// GUID:      {6237536E-A17D-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcAxisTitle = dispinterface
    ['{6237536E-A17D-11CE-840F-00AA0042CB33}']
    property Text: WideString dispid 1;
    property _Text: WideString dispid 0;
    property Backdrop: IDispatch dispid 2;
    property VtFont: IDispatch dispid 3;
    property Visible: WordBool dispid 4;
    property TextLayout: IDispatch dispid 5;
    property TextLength: Smallint dispid 6;
  end;

// *********************************************************************//
// DispIntf:  IVcLabel
// Flags:     (4112) Hidden Dispatchable
// GUID:      {62375370-A17D-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcLabel = dispinterface
    ['{62375370-A17D-11CE-840F-00AA0042CB33}']
    property Backdrop: IDispatch dispid 1;
    property Format: WideString dispid 2;
    property VtFont: IDispatch dispid 3;
    property Auto: WordBool dispid 4;
    property Standing: WordBool dispid 5;
    property TextLayout: IDispatch dispid 6;
    property FormatLength: Smallint dispid 7;
  end;

// *********************************************************************//
// DispIntf:  IVcLight
// Flags:     (4112) Hidden Dispatchable
// GUID:      {B54A6420-A25E-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcLight = dispinterface
    ['{B54A6420-A25E-11CE-840F-00AA0042CB33}']
    property AmbientIntensity: Single dispid 1;
    property EdgeIntensity: Single dispid 2;
    property EdgeVisible: WordBool dispid 3;
    property LightSources: IDispatch dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IVcElevation
// Flags:     (4112) Hidden Dispatchable
// GUID:      {A71FB700-A732-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcElevation = dispinterface
    ['{A71FB700-A732-11CE-840F-00AA0042CB33}']
    property ColorType: Smallint dispid 1;
    property RowSmoothing: Smallint dispid 2;
    property ColSmoothing: Smallint dispid 3;
    property Surface: IDispatch dispid 4;
    property AutoValues: WordBool dispid 5;
    property SeparateContourData: WordBool dispid 6;
    property Contour: IDispatch dispid 7;
    property Attributes: IDispatch dispid 8;
    property ContourGradient: IDispatch dispid 9;
  end;

// *********************************************************************//
// DispIntf:  IVcAttribute
// Flags:     (4112) Hidden Dispatchable
// GUID:      {A71FB702-A732-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcAttribute = dispinterface
    ['{A71FB702-A732-11CE-840F-00AA0042CB33}']
    property Value: Double dispid 1;
    property Brush: IDispatch dispid 2;
    property Pen: IDispatch dispid 3;
    property Text: WideString dispid 4;
    property _Text: WideString dispid 0;
  end;

// *********************************************************************//
// DispIntf:  IVcSurface
// Flags:     (4112) Hidden Dispatchable
// GUID:      {A71FB704-A732-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcSurface = dispinterface
    ['{A71FB704-A732-11CE-840F-00AA0042CB33}']
    property Brush: IDispatch dispid 1;
    property WireframePen: IDispatch dispid 2;
    property Projection: Smallint dispid 3;
    property DisplayType: Smallint dispid 4;
    property RowWireframe: Smallint dispid 5;
    property ColWireframe: Smallint dispid 6;
    property Base: Smallint dispid 7;
  end;

// *********************************************************************//
// DispIntf:  IVcContour
// Flags:     (4112) Hidden Dispatchable
// GUID:      {A71FB706-A732-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcContour = dispinterface
    ['{A71FB706-A732-11CE-840F-00AA0042CB33}']
    property DisplayType: Smallint dispid 1;
  end;

// *********************************************************************//
// DispIntf:  IVcLightSource
// Flags:     (4112) Hidden Dispatchable
// GUID:      {CD9EFA60-AA40-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcLightSource = dispinterface
    ['{CD9EFA60-AA40-11CE-840F-00AA0042CB33}']
    property Intensity: Single dispid 1;
    property X: Single dispid 2;
    property Y: Single dispid 3;
    property Z: Single dispid 4;
    property _Intensity: Single dispid 0;
    procedure Set_(X: Single; Y: Single; Z: Single; Intensity: Single); dispid 5;
  end;

// *********************************************************************//
// DispIntf:  IVcSeriesCollection
// Flags:     (4112) Hidden Dispatchable
// GUID:      {C14E8B60-AE2B-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcSeriesCollection = dispinterface
    ['{C14E8B60-AE2B-11CE-840F-00AA0042CB33}']
    property Count: Integer dispid 1;
    property Item[Index: Smallint]: IDispatch readonly dispid 2;
  end;

// *********************************************************************//
// DispIntf:  IVcDataPoints
// Flags:     (4112) Hidden Dispatchable
// GUID:      {C20E5260-B06F-11CE-840F-00AA0042CB33}
// *********************************************************************//
  IVcDataPoints = dispinterface
    ['{C20E5260-B06F-11CE-840F-00AA0042CB33}']
    property Count: Integer dispid 1;
    property Item[DataPoint: Smallint]: IDispatch readonly dispid 2;
    property _Item[DataPoint: Smallint]: IDispatch readonly dispid 0; default;
  end;

// *********************************************************************//
// DispIntf:  IVcLabels
// Flags:     (4112) Hidden Dispatchable
// GUID:      {62B9A400-B93D-11CE-8410-00AA0042CB33}
// *********************************************************************//
  IVcLabels = dispinterface
    ['{62B9A400-B93D-11CE-8410-00AA0042CB33}']
    property Count: Integer dispid 1;
    property Item[LabelIndex: Smallint]: IDispatch readonly dispid 2;
    property _Item[LabelIndex: Smallint]: IDispatch readonly dispid 0; default;
  end;

// *********************************************************************//
// DispIntf:  IVcXYZ
// Flags:     (4112) Hidden Dispatchable
// GUID:      {7D001800-BC65-11CE-8410-00AA0042CB33}
// *********************************************************************//
  IVcXYZ = dispinterface
    ['{7D001800-BC65-11CE-8410-00AA0042CB33}']
    property xIntersection: Double dispid 1;
    property yIntersection: Double dispid 2;
    property zIntersection: Double dispid 3;
    property Automatic: WordBool dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IVcLightSources
// Flags:     (4112) Hidden Dispatchable
// GUID:      {6FE35CC0-CE50-11CE-8410-00AA0042CB33}
// *********************************************************************//
  IVcLightSources = dispinterface
    ['{6FE35CC0-CE50-11CE-8410-00AA0042CB33}']
    property Count: Integer dispid 1;
    property Item[Index: Smallint]: IDispatch readonly dispid 4;
    function  Add(X: Single; Y: Single; Z: Single; Intensity: Single): IDispatch; dispid 2;
    procedure Remove(Index: Smallint); dispid 3;
  end;

// *********************************************************************//
// DispIntf:  IVcAttributes
// Flags:     (4112) Hidden Dispatchable
// GUID:      {5A693220-CFEF-11CE-8410-00AA0042CB33}
// *********************************************************************//
  IVcAttributes = dispinterface
    ['{5A693220-CFEF-11CE-8410-00AA0042CB33}']
    property Count: Smallint dispid 1;
    property Item[Index: Smallint]: IDispatch readonly dispid 4;
    property _Item[Index: Smallint]: IDispatch readonly dispid 0; default;
    function  Add(Value: Double): IDispatch; dispid 2;
    procedure Remove(Index: Smallint); dispid 3;
  end;

// *********************************************************************//
// DispIntf:  IVcContourGradient
// Flags:     (4112) Hidden Dispatchable
// GUID:      {69032720-D303-11CE-8410-00AA0042CB33}
// *********************************************************************//
  IVcContourGradient = dispinterface
    ['{69032720-D303-11CE-8410-00AA0042CB33}']
    property FromBrushColor: IDispatch dispid 1;
    property ToBrushColor: IDispatch dispid 2;
    property FromPenColor: IDispatch dispid 3;
    property ToPenColor: IDispatch dispid 4;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TVtChart
// Help String      : VCI First Impression Chart
// Default Interface: _DVtChart
// Def. Intf. DISP? : Yes
// Event   Interface: _DVtChartEvents
// TypeFlags        : (38) CanCreate Licensed Control
// *********************************************************************//
  TVtChartChartSelected = procedure(Sender: TObject; var MouseFlags: Smallint; var Cancel: Smallint) of object;
  TVtChartTitleSelected = procedure(Sender: TObject; var MouseFlags: Smallint; var Cancel: Smallint) of object;
  TVtChartFootnoteSelected = procedure(Sender: TObject; var MouseFlags: Smallint; 
                                                        var Cancel: Smallint) of object;
  TVtChartLegendSelected = procedure(Sender: TObject; var MouseFlags: Smallint; var Cancel: Smallint) of object;
  TVtChartPlotSelected = procedure(Sender: TObject; var MouseFlags: Smallint; var Cancel: Smallint) of object;
  TVtChartAxisSelected = procedure(Sender: TObject; var AxisId: Smallint; var AxisIndex: Smallint; 
                                                    var MouseFlags: Smallint; var Cancel: Smallint) of object;
  TVtChartAxisLabelSelected = procedure(Sender: TObject; var AxisId: Smallint; 
                                                         var AxisIndex: Smallint; 
                                                         var labelSetIndex: Smallint; 
                                                         var LabelIndex: Smallint; 
                                                         var MouseFlags: Smallint; 
                                                         var Cancel: Smallint) of object;
  TVtChartAxisTitleSelected = procedure(Sender: TObject; var AxisId: Smallint; 
                                                         var AxisIndex: Smallint; 
                                                         var MouseFlags: Smallint; 
                                                         var Cancel: Smallint) of object;
  TVtChartPointSelected = procedure(Sender: TObject; var Series: Smallint; var DataPoint: Smallint; 
                                                     var MouseFlags: Smallint; var Cancel: Smallint) of object;
  TVtChartPointLabelSelected = procedure(Sender: TObject; var Series: Smallint; 
                                                          var DataPoint: Smallint; 
                                                          var MouseFlags: Smallint; 
                                                          var Cancel: Smallint) of object;
  TVtChartSeriesSelected = procedure(Sender: TObject; var Series: Smallint; 
                                                      var MouseFlags: Smallint; var Cancel: Smallint) of object;
  TVtChartSeriesLabelSelected = procedure(Sender: TObject; var Series: Smallint; 
                                                           var MouseFlags: Smallint; 
                                                           var Cancel: Smallint) of object;
  TVtChartChartActivated = procedure(Sender: TObject; var MouseFlags: Smallint; var Cancel: Smallint) of object;
  TVtChartTitleActivated = procedure(Sender: TObject; var MouseFlags: Smallint; var Cancel: Smallint) of object;
  TVtChartFootnoteActivated = procedure(Sender: TObject; var MouseFlags: Smallint; 
                                                         var Cancel: Smallint) of object;
  TVtChartLegendActivated = procedure(Sender: TObject; var MouseFlags: Smallint; 
                                                       var Cancel: Smallint) of object;
  TVtChartPlotActivated = procedure(Sender: TObject; var MouseFlags: Smallint; var Cancel: Smallint) of object;
  TVtChartAxisActivated = procedure(Sender: TObject; var AxisId: Smallint; var AxisIndex: Smallint; 
                                                     var MouseFlags: Smallint; var Cancel: Smallint) of object;
  TVtChartAxisLabelActivated = procedure(Sender: TObject; var AxisId: Smallint; 
                                                          var AxisIndex: Smallint; 
                                                          var labelSetIndex: Smallint; 
                                                          var LabelIndex: Smallint; 
                                                          var MouseFlags: Smallint; 
                                                          var Cancel: Smallint) of object;
  TVtChartAxisTitleActivated = procedure(Sender: TObject; var AxisId: Smallint; 
                                                          var AxisIndex: Smallint; 
                                                          var MouseFlags: Smallint; 
                                                          var Cancel: Smallint) of object;
  TVtChartPointActivated = procedure(Sender: TObject; var Series: Smallint; 
                                                      var DataPoint: Smallint; 
                                                      var MouseFlags: Smallint; var Cancel: Smallint) of object;
  TVtChartPointLabelActivated = procedure(Sender: TObject; var Series: Smallint; 
                                                           var DataPoint: Smallint; 
                                                           var MouseFlags: Smallint; 
                                                           var Cancel: Smallint) of object;
  TVtChartSeriesActivated = procedure(Sender: TObject; var Series: Smallint; 
                                                       var MouseFlags: Smallint; 
                                                       var Cancel: Smallint) of object;
  TVtChartSeriesLabelActivated = procedure(Sender: TObject; var Series: Smallint; 
                                                            var MouseFlags: Smallint; 
                                                            var Cancel: Smallint) of object;

  TVtChart = class(TOleControl)
  private
    FOnChartSelected: TVtChartChartSelected;
    FOnTitleSelected: TVtChartTitleSelected;
    FOnFootnoteSelected: TVtChartFootnoteSelected;
    FOnLegendSelected: TVtChartLegendSelected;
    FOnPlotSelected: TVtChartPlotSelected;
    FOnAxisSelected: TVtChartAxisSelected;
    FOnAxisLabelSelected: TVtChartAxisLabelSelected;
    FOnAxisTitleSelected: TVtChartAxisTitleSelected;
    FOnPointSelected: TVtChartPointSelected;
    FOnPointLabelSelected: TVtChartPointLabelSelected;
    FOnSeriesSelected: TVtChartSeriesSelected;
    FOnSeriesLabelSelected: TVtChartSeriesLabelSelected;
    FOnChartActivated: TVtChartChartActivated;
    FOnTitleActivated: TVtChartTitleActivated;
    FOnFootnoteActivated: TVtChartFootnoteActivated;
    FOnLegendActivated: TVtChartLegendActivated;
    FOnPlotActivated: TVtChartPlotActivated;
    FOnAxisActivated: TVtChartAxisActivated;
    FOnAxisLabelActivated: TVtChartAxisLabelActivated;
    FOnAxisTitleActivated: TVtChartAxisTitleActivated;
    FOnPointActivated: TVtChartPointActivated;
    FOnPointLabelActivated: TVtChartPointLabelActivated;
    FOnSeriesActivated: TVtChartSeriesActivated;
    FOnSeriesLabelActivated: TVtChartSeriesLabelActivated;
    FOnApplyChanges: TNotifyEvent;
    FIntf: _DVtChart;
    function  GetControlInterface: _DVtChart;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_Title: IDispatch;
    procedure Set_Title(const Value: IDispatch);
    function Get_Footnote: IDispatch;
    procedure Set_Footnote(const Value: IDispatch);
    function Get_Backdrop: IDispatch;
    procedure Set_Backdrop(const Value: IDispatch);
    function Get_PrintInformation: IDispatch;
    procedure Set_PrintInformation(const Value: IDispatch);
    function Get_Legend: IDispatch;
    procedure Set_Legend(const Value: IDispatch);
    function Get_DataGrid: IDispatch;
    procedure Set_DataGrid(const Value: IDispatch);
    function Get_Plot: IDispatch;
    procedure Set_Plot(const Value: IDispatch);
    function  Get_GetBitmap(options: OleVariant): OLE_HANDLE;
  public
    procedure EditPaste;
    procedure EditCopy;
    procedure ActivateSelectionDialog;
    procedure Layout;
    procedure ToDefaults;
    procedure PrintSetupDialog;
    procedure PrintChart;
    procedure SelectPart(part: Smallint; index1: Smallint; index2: Smallint; index3: Smallint; 
                         index4: Smallint);
    procedure GetSelectedPart(var part: Smallint; var index1: Smallint; var index2: Smallint; 
                              var index3: Smallint; var index4: Smallint);
    procedure GetDLLVersion(var major: Smallint; var minor: Smallint);
    procedure TwipsToChartPart(xVal: Integer; yVal: Integer; var part: Smallint; 
                               var index1: Smallint; var index2: Smallint; var index3: Smallint; 
                               var index4: Smallint);
    procedure ReadFromFile(const FileName: WideString);
    procedure WritePictureToFile(const FileName: WideString; pictureType: Smallint; 
                                 options: Smallint);
    procedure WriteToFile(const FileName: WideString);
    procedure ActivateFormatMenu(X: Integer; Y: Integer);
    procedure GetMetafile(options: Smallint; var Handle: OLE_HANDLE; var Width: Integer; 
                          var Height: Integer);
    procedure CopyDataFromArray(Top: Smallint; Left: Smallint; Bottom: Smallint; Right: Smallint; 
                                Array_: OleVariant);
    procedure CopyDataToArray(Top: Smallint; Left: Smallint; Bottom: Smallint; Right: Smallint; 
                              Array_: OleVariant);
    procedure Draw(hDC: OLE_HANDLE; hDCType: Smallint; Top: Integer; Left: Integer; 
                   Bottom: Integer; Right: Integer; Layout: WordBool; Stretch: WordBool);
    procedure UseWizard;
    procedure EditChartData;
    procedure Refresh;
    procedure AboutBox;
    property  ControlInterface: _DVtChart read GetControlInterface;
    property  DefaultInterface: _DVtChart read GetControlInterface;
    property SsLinkSheet: WideString index 22 read GetWideStringProp write SetWideStringProp;
    property Handle: Integer index 24 read GetIntegerProp;
    property Picture: TPicture index 25 read GetTPictureProp;
    property Title: IDispatch index 26 read GetIDispatchProp write SetIDispatchProp;
    property Footnote: IDispatch index 27 read GetIDispatchProp write SetIDispatchProp;
    property Backdrop: IDispatch index 36 read GetIDispatchProp write SetIDispatchProp;
    property PrintInformation: IDispatch index 37 read GetIDispatchProp write SetIDispatchProp;
    property Legend: IDispatch index 38 read GetIDispatchProp write SetIDispatchProp;
    property DataGrid: IDispatch index 39 read GetIDispatchProp write SetIDispatchProp;
    property Plot: IDispatch index 40 read GetIDispatchProp write SetIDispatchProp;
    property GetBitmap[options: OleVariant]: OLE_HANDLE read Get_GetBitmap;
  published
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property  OnMouseUp;
    property  OnMouseMove;
    property  OnMouseDown;
    property  OnKeyUp;
    property  OnKeyPress;
    property  OnKeyDown;
    property  OnDblClick;
    property  OnClick;
    property AutoIncrement: WordBool index 1 read GetWordBoolProp write SetWordBoolProp stored False;
    property RandomFill: WordBool index 2 read GetWordBoolProp write SetWordBoolProp stored False;
    property ChartType: Smallint index 3 read GetSmallintProp write SetSmallintProp stored False;
    property Column: Smallint index 4 read GetSmallintProp write SetSmallintProp stored False;
    property ColumnCount: Smallint index 5 read GetSmallintProp write SetSmallintProp stored False;
    property ColumnLabel: WideString index 6 read GetWideStringProp write SetWideStringProp stored False;
    property ColumnLabelCount: Smallint index 7 read GetSmallintProp write SetSmallintProp stored False;
    property ColumnLabelIndex: Smallint index 8 read GetSmallintProp write SetSmallintProp stored False;
    property Data: WideString index 9 read GetWideStringProp write SetWideStringProp stored False;
    property FootnoteText: WideString index 10 read GetWideStringProp write SetWideStringProp stored False;
    property Repaint: WordBool index 11 read GetWordBoolProp write SetWordBoolProp stored False;
    property Row: Smallint index 12 read GetSmallintProp write SetSmallintProp stored False;
    property RowCount: Smallint index 13 read GetSmallintProp write SetSmallintProp stored False;
    property RowLabel: WideString index 14 read GetWideStringProp write SetWideStringProp stored False;
    property RowLabelCount: Smallint index 15 read GetSmallintProp write SetSmallintProp stored False;
    property RowLabelIndex: Smallint index 16 read GetSmallintProp write SetSmallintProp stored False;
    property SeriesColumn: Smallint index 17 read GetSmallintProp write SetSmallintProp stored False;
    property SeriesType: Smallint index 18 read GetSmallintProp write SetSmallintProp stored False;
    property ShowLegend: WordBool index 19 read GetWordBoolProp write SetWordBoolProp stored False;
    property SsLinkMode: Smallint index 20 read GetSmallintProp write SetSmallintProp stored False;
    property SsLinkRange: WideString index 21 read GetWideStringProp write SetWideStringProp stored False;
    property DrawMode: Smallint index 23 read GetSmallintProp write SetSmallintProp stored False;
    property BorderStyle: Smallint index -504 read GetSmallintProp write SetSmallintProp stored False;
    property Enabled: WordBool index -514 read GetWordBoolProp write SetWordBoolProp stored False;
    property hWnd: Smallint index -515 read GetSmallintProp write SetSmallintProp stored False;
    property TitleText: WideString index 28 read GetWideStringProp write SetWideStringProp stored False;
    property Stacking: WordBool index 29 read GetWordBoolProp write SetWordBoolProp stored False;
    property TextLengthType: Smallint index 30 read GetSmallintProp write SetSmallintProp stored False;
    property AllowUserChanges: WordBool index 31 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowSelections: WordBool index 32 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowSeriesSelection: WordBool index 33 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowDynamicRotation: WordBool index 34 read GetWordBoolProp write SetWordBoolProp stored False;
    property ActiveSeriesCount: Smallint index 35 read GetSmallintProp write SetSmallintProp stored False;
    property TwipsWidth: Integer index 41 read GetIntegerProp write SetIntegerProp stored False;
    property TwipsHeight: Integer index 42 read GetIntegerProp write SetIntegerProp stored False;
    property AllowDithering: WordBool index 43 read GetWordBoolProp write SetWordBoolProp stored False;
    property ErrorOffset: Smallint index 44 read GetSmallintProp write SetSmallintProp stored False;
    property DoSetCursor: WordBool index 45 read GetWordBoolProp write SetWordBoolProp stored False;
    property FileName: WideString index 46 read GetWideStringProp write SetWideStringProp stored False;
    property Chart3d: WordBool index 47 read GetWordBoolProp write SetWordBoolProp stored False;
    property SsLinkBook: WideString index 48 read GetWideStringProp write SetWideStringProp stored False;
    property OnChartSelected: TVtChartChartSelected read FOnChartSelected write FOnChartSelected;
    property OnTitleSelected: TVtChartTitleSelected read FOnTitleSelected write FOnTitleSelected;
    property OnFootnoteSelected: TVtChartFootnoteSelected read FOnFootnoteSelected write FOnFootnoteSelected;
    property OnLegendSelected: TVtChartLegendSelected read FOnLegendSelected write FOnLegendSelected;
    property OnPlotSelected: TVtChartPlotSelected read FOnPlotSelected write FOnPlotSelected;
    property OnAxisSelected: TVtChartAxisSelected read FOnAxisSelected write FOnAxisSelected;
    property OnAxisLabelSelected: TVtChartAxisLabelSelected read FOnAxisLabelSelected write FOnAxisLabelSelected;
    property OnAxisTitleSelected: TVtChartAxisTitleSelected read FOnAxisTitleSelected write FOnAxisTitleSelected;
    property OnPointSelected: TVtChartPointSelected read FOnPointSelected write FOnPointSelected;
    property OnPointLabelSelected: TVtChartPointLabelSelected read FOnPointLabelSelected write FOnPointLabelSelected;
    property OnSeriesSelected: TVtChartSeriesSelected read FOnSeriesSelected write FOnSeriesSelected;
    property OnSeriesLabelSelected: TVtChartSeriesLabelSelected read FOnSeriesLabelSelected write FOnSeriesLabelSelected;
    property OnChartActivated: TVtChartChartActivated read FOnChartActivated write FOnChartActivated;
    property OnTitleActivated: TVtChartTitleActivated read FOnTitleActivated write FOnTitleActivated;
    property OnFootnoteActivated: TVtChartFootnoteActivated read FOnFootnoteActivated write FOnFootnoteActivated;
    property OnLegendActivated: TVtChartLegendActivated read FOnLegendActivated write FOnLegendActivated;
    property OnPlotActivated: TVtChartPlotActivated read FOnPlotActivated write FOnPlotActivated;
    property OnAxisActivated: TVtChartAxisActivated read FOnAxisActivated write FOnAxisActivated;
    property OnAxisLabelActivated: TVtChartAxisLabelActivated read FOnAxisLabelActivated write FOnAxisLabelActivated;
    property OnAxisTitleActivated: TVtChartAxisTitleActivated read FOnAxisTitleActivated write FOnAxisTitleActivated;
    property OnPointActivated: TVtChartPointActivated read FOnPointActivated write FOnPointActivated;
    property OnPointLabelActivated: TVtChartPointLabelActivated read FOnPointLabelActivated write FOnPointLabelActivated;
    property OnSeriesActivated: TVtChartSeriesActivated read FOnSeriesActivated write FOnSeriesActivated;
    property OnSeriesLabelActivated: TVtChartSeriesLabelActivated read FOnSeriesLabelActivated write FOnSeriesLabelActivated;
    property OnApplyChanges: TNotifyEvent read FOnApplyChanges write FOnApplyChanges;
  end;

// *********************************************************************//
// The Class CoCoor provides a Create and CreateRemote method to          
// create instances of the default interface ICoor exposed by              
// the CoClass Coor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoor = class
    class function Create: ICoor;
    class function CreateRemote(const MachineName: string): ICoor;
  end;

// *********************************************************************//
// The Class CoLCoor provides a Create and CreateRemote method to          
// create instances of the default interface ILCoor exposed by              
// the CoClass LCoor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLCoor = class
    class function Create: ILCoor;
    class function CreateRemote(const MachineName: string): ILCoor;
  end;

// *********************************************************************//
// The Class CoCoor3 provides a Create and CreateRemote method to          
// create instances of the default interface ICoor3 exposed by              
// the CoClass Coor3. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoor3 = class
    class function Create: ICoor3;
    class function CreateRemote(const MachineName: string): ICoor3;
  end;

// *********************************************************************//
// The Class CoLRect provides a Create and CreateRemote method to          
// create instances of the default interface ILRect exposed by              
// the CoClass LRect. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLRect = class
    class function Create: ILRect;
    class function CreateRemote(const MachineName: string): ILRect;
  end;

// *********************************************************************//
// The Class CoRect provides a Create and CreateRemote method to          
// create instances of the default interface IRect exposed by              
// the CoClass Rect. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRect = class
    class function Create: IRect;
    class function CreateRemote(const MachineName: string): IRect;
  end;

// *********************************************************************//
// The Class CoVtColor provides a Create and CreateRemote method to          
// create instances of the default interface IColor exposed by              
// the CoClass VtColor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVtColor = class
    class function Create: IColor;
    class function CreateRemote(const MachineName: string): IColor;
  end;

// *********************************************************************//
// The Class CoBrush provides a Create and CreateRemote method to          
// create instances of the default interface IBrush exposed by              
// the CoClass Brush. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBrush = class
    class function Create: IBrush;
    class function CreateRemote(const MachineName: string): IBrush;
  end;

// *********************************************************************//
// The Class CoShadow provides a Create and CreateRemote method to          
// create instances of the default interface IShadow exposed by              
// the CoClass Shadow. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoShadow = class
    class function Create: IShadow;
    class function CreateRemote(const MachineName: string): IShadow;
  end;

// *********************************************************************//
// The Class CoTextLayout provides a Create and CreateRemote method to          
// create instances of the default interface ITextLayout exposed by              
// the CoClass TextLayout. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTextLayout = class
    class function Create: ITextLayout;
    class function CreateRemote(const MachineName: string): ITextLayout;
  end;

// *********************************************************************//
// The Class CoTitle provides a Create and CreateRemote method to          
// create instances of the default interface IVcTitle exposed by              
// the CoClass Title. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTitle = class
    class function Create: IVcTitle;
    class function CreateRemote(const MachineName: string): IVcTitle;
  end;

// *********************************************************************//
// The Class CoLocation provides a Create and CreateRemote method to          
// create instances of the default interface ILocation exposed by              
// the CoClass Location. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLocation = class
    class function Create: ILocation;
    class function CreateRemote(const MachineName: string): ILocation;
  end;

// *********************************************************************//
// The Class CoVtFont provides a Create and CreateRemote method to          
// create instances of the default interface IFont exposed by              
// the CoClass VtFont. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVtFont = class
    class function Create: IFont;
    class function CreateRemote(const MachineName: string): IFont;
  end;

// *********************************************************************//
// The Class CoBackdrop provides a Create and CreateRemote method to          
// create instances of the default interface IBackdrop exposed by              
// the CoClass Backdrop. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBackdrop = class
    class function Create: IBackdrop;
    class function CreateRemote(const MachineName: string): IBackdrop;
  end;

// *********************************************************************//
// The Class CoFrame provides a Create and CreateRemote method to          
// create instances of the default interface IFrame exposed by              
// the CoClass Frame. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFrame = class
    class function Create: IFrame;
    class function CreateRemote(const MachineName: string): IFrame;
  end;

// *********************************************************************//
// The Class CoGradient provides a Create and CreateRemote method to          
// create instances of the default interface IGradient exposed by              
// the CoClass Gradient. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGradient = class
    class function Create: IGradient;
    class function CreateRemote(const MachineName: string): IGradient;
  end;

// *********************************************************************//
// The Class CoVtPicture provides a Create and CreateRemote method to          
// create instances of the default interface IPicture exposed by              
// the CoClass VtPicture. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVtPicture = class
    class function Create: IPicture;
    class function CreateRemote(const MachineName: string): IPicture;
  end;

// *********************************************************************//
// The Class CoFill provides a Create and CreateRemote method to          
// create instances of the default interface IFill exposed by              
// the CoClass Fill. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFill = class
    class function Create: IFill;
    class function CreateRemote(const MachineName: string): IFill;
  end;

// *********************************************************************//
// The Class CoPen provides a Create and CreateRemote method to          
// create instances of the default interface IVcPen exposed by              
// the CoClass Pen. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPen = class
    class function Create: IVcPen;
    class function CreateRemote(const MachineName: string): IVcPen;
  end;

// *********************************************************************//
// The Class CoMarker provides a Create and CreateRemote method to          
// create instances of the default interface IVcMarker exposed by              
// the CoClass Marker. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMarker = class
    class function Create: IVcMarker;
    class function CreateRemote(const MachineName: string): IVcMarker;
  end;

// *********************************************************************//
// The Class CoFootnote provides a Create and CreateRemote method to          
// create instances of the default interface IVcFootnote exposed by              
// the CoClass Footnote. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFootnote = class
    class function Create: IVcFootnote;
    class function CreateRemote(const MachineName: string): IVcFootnote;
  end;

// *********************************************************************//
// The Class CoLegend provides a Create and CreateRemote method to          
// create instances of the default interface IVcLegend exposed by              
// the CoClass Legend. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLegend = class
    class function Create: IVcLegend;
    class function CreateRemote(const MachineName: string): IVcLegend;
  end;

// *********************************************************************//
// The Class CoPrintInformation provides a Create and CreateRemote method to          
// create instances of the default interface IVcPrintInformation exposed by              
// the CoClass PrintInformation. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPrintInformation = class
    class function Create: IVcPrintInformation;
    class function CreateRemote(const MachineName: string): IVcPrintInformation;
  end;

// *********************************************************************//
// The Class CoDataGrid provides a Create and CreateRemote method to          
// create instances of the default interface IVcDataGrid exposed by              
// the CoClass DataGrid. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataGrid = class
    class function Create: IVcDataGrid;
    class function CreateRemote(const MachineName: string): IVcDataGrid;
  end;

// *********************************************************************//
// The Class CoPlot provides a Create and CreateRemote method to          
// create instances of the default interface IVcPlot exposed by              
// the CoClass Plot. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPlot = class
    class function Create: IVcPlot;
    class function CreateRemote(const MachineName: string): IVcPlot;
  end;

// *********************************************************************//
// The Class CoView3d provides a Create and CreateRemote method to          
// create instances of the default interface IVcView3d exposed by              
// the CoClass View3d. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoView3d = class
    class function Create: IVcView3d;
    class function CreateRemote(const MachineName: string): IVcView3d;
  end;

// *********************************************************************//
// The Class CoPlotBase provides a Create and CreateRemote method to          
// create instances of the default interface IVcPlotBase exposed by              
// the CoClass PlotBase. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPlotBase = class
    class function Create: IVcPlotBase;
    class function CreateRemote(const MachineName: string): IVcPlotBase;
  end;

// *********************************************************************//
// The Class CoDoughnut provides a Create and CreateRemote method to          
// create instances of the default interface IVcDoughnut exposed by              
// the CoClass Doughnut. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDoughnut = class
    class function Create: IVcDoughnut;
    class function CreateRemote(const MachineName: string): IVcDoughnut;
  end;

// *********************************************************************//
// The Class CoPie provides a Create and CreateRemote method to          
// create instances of the default interface IVcPie exposed by              
// the CoClass Pie. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPie = class
    class function Create: IVcPie;
    class function CreateRemote(const MachineName: string): IVcPie;
  end;

// *********************************************************************//
// The Class CoWeighting provides a Create and CreateRemote method to          
// create instances of the default interface IVcWeighting exposed by              
// the CoClass Weighting. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWeighting = class
    class function Create: IVcWeighting;
    class function CreateRemote(const MachineName: string): IVcWeighting;
  end;

// *********************************************************************//
// The Class CoWall provides a Create and CreateRemote method to          
// create instances of the default interface IVcWall exposed by              
// the CoClass Wall. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWall = class
    class function Create: IVcWall;
    class function CreateRemote(const MachineName: string): IVcWall;
  end;

// *********************************************************************//
// The Class CoSeries provides a Create and CreateRemote method to          
// create instances of the default interface IVcSeries exposed by              
// the CoClass Series. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSeries = class
    class function Create: IVcSeries;
    class function CreateRemote(const MachineName: string): IVcSeries;
  end;

// *********************************************************************//
// The Class CoBar provides a Create and CreateRemote method to          
// create instances of the default interface IVcBar exposed by              
// the CoClass Bar. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBar = class
    class function Create: IVcBar;
    class function CreateRemote(const MachineName: string): IVcBar;
  end;

// *********************************************************************//
// The Class CoHiLo provides a Create and CreateRemote method to          
// create instances of the default interface IVcHiLo exposed by              
// the CoClass HiLo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoHiLo = class
    class function Create: IVcHiLo;
    class function CreateRemote(const MachineName: string): IVcHiLo;
  end;

// *********************************************************************//
// The Class CoPosition provides a Create and CreateRemote method to          
// create instances of the default interface IVcPosition exposed by              
// the CoClass Position. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPosition = class
    class function Create: IVcPosition;
    class function CreateRemote(const MachineName: string): IVcPosition;
  end;

// *********************************************************************//
// The Class CoSeriesMarker provides a Create and CreateRemote method to          
// create instances of the default interface IVcSeriesMarker exposed by              
// the CoClass SeriesMarker. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSeriesMarker = class
    class function Create: IVcSeriesMarker;
    class function CreateRemote(const MachineName: string): IVcSeriesMarker;
  end;

// *********************************************************************//
// The Class CoSeriesLabel provides a Create and CreateRemote method to          
// create instances of the default interface IVcSeriesLabel exposed by              
// the CoClass SeriesLabel. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSeriesLabel = class
    class function Create: IVcSeriesLabel;
    class function CreateRemote(const MachineName: string): IVcSeriesLabel;
  end;

// *********************************************************************//
// The Class CoStatLine provides a Create and CreateRemote method to          
// create instances of the default interface IVcStatLines exposed by              
// the CoClass StatLine. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStatLine = class
    class function Create: IVcStatLines;
    class function CreateRemote(const MachineName: string): IVcStatLines;
  end;

// *********************************************************************//
// The Class CoDataPointLabel provides a Create and CreateRemote method to          
// create instances of the default interface IVcDataPointLabel exposed by              
// the CoClass DataPointLabel. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataPointLabel = class
    class function Create: IVcDataPointLabel;
    class function CreateRemote(const MachineName: string): IVcDataPointLabel;
  end;

// *********************************************************************//
// The Class CoDataPoint provides a Create and CreateRemote method to          
// create instances of the default interface IVcDataPoint exposed by              
// the CoClass DataPoint. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataPoint = class
    class function Create: IVcDataPoint;
    class function CreateRemote(const MachineName: string): IVcDataPoint;
  end;

// *********************************************************************//
// The Class CoAxis provides a Create and CreateRemote method to          
// create instances of the default interface IVcAxis exposed by              
// the CoClass Axis. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAxis = class
    class function Create: IVcAxis;
    class function CreateRemote(const MachineName: string): IVcAxis;
  end;

// *********************************************************************//
// The Class CoCategoryScale provides a Create and CreateRemote method to          
// create instances of the default interface IVcCategoryScale exposed by              
// the CoClass CategoryScale. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCategoryScale = class
    class function Create: IVcCategoryScale;
    class function CreateRemote(const MachineName: string): IVcCategoryScale;
  end;

// *********************************************************************//
// The Class CoDateScale provides a Create and CreateRemote method to          
// create instances of the default interface IVcDateScale exposed by              
// the CoClass DateScale. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDateScale = class
    class function Create: IVcDateScale;
    class function CreateRemote(const MachineName: string): IVcDateScale;
  end;

// *********************************************************************//
// The Class CoAxisGrid provides a Create and CreateRemote method to          
// create instances of the default interface IVcAxisGrid exposed by              
// the CoClass AxisGrid. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAxisGrid = class
    class function Create: IVcAxisGrid;
    class function CreateRemote(const MachineName: string): IVcAxisGrid;
  end;

// *********************************************************************//
// The Class CoIntersection provides a Create and CreateRemote method to          
// create instances of the default interface IVcIntersection exposed by              
// the CoClass Intersection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoIntersection = class
    class function Create: IVcIntersection;
    class function CreateRemote(const MachineName: string): IVcIntersection;
  end;

// *********************************************************************//
// The Class CoTick provides a Create and CreateRemote method to          
// create instances of the default interface IVcTick exposed by              
// the CoClass Tick. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTick = class
    class function Create: IVcTick;
    class function CreateRemote(const MachineName: string): IVcTick;
  end;

// *********************************************************************//
// The Class CoAxisScale provides a Create and CreateRemote method to          
// create instances of the default interface IVcScale exposed by              
// the CoClass AxisScale. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAxisScale = class
    class function Create: IVcScale;
    class function CreateRemote(const MachineName: string): IVcScale;
  end;

// *********************************************************************//
// The Class CoValueScale provides a Create and CreateRemote method to          
// create instances of the default interface IVcValueScale exposed by              
// the CoClass ValueScale. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoValueScale = class
    class function Create: IVcValueScale;
    class function CreateRemote(const MachineName: string): IVcValueScale;
  end;

// *********************************************************************//
// The Class CoAxisTitle provides a Create and CreateRemote method to          
// create instances of the default interface IVcAxisTitle exposed by              
// the CoClass AxisTitle. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAxisTitle = class
    class function Create: IVcAxisTitle;
    class function CreateRemote(const MachineName: string): IVcAxisTitle;
  end;

// *********************************************************************//
// The Class CoLabel_ provides a Create and CreateRemote method to          
// create instances of the default interface IVcLabel exposed by              
// the CoClass Label_. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLabel_ = class
    class function Create: IVcLabel;
    class function CreateRemote(const MachineName: string): IVcLabel;
  end;

// *********************************************************************//
// The Class CoLight provides a Create and CreateRemote method to          
// create instances of the default interface IVcLight exposed by              
// the CoClass Light. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLight = class
    class function Create: IVcLight;
    class function CreateRemote(const MachineName: string): IVcLight;
  end;

// *********************************************************************//
// The Class CoElevation provides a Create and CreateRemote method to          
// create instances of the default interface IVcElevation exposed by              
// the CoClass Elevation. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoElevation = class
    class function Create: IVcElevation;
    class function CreateRemote(const MachineName: string): IVcElevation;
  end;

// *********************************************************************//
// The Class CoAttribute provides a Create and CreateRemote method to          
// create instances of the default interface IVcAttribute exposed by              
// the CoClass Attribute. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttribute = class
    class function Create: IVcAttribute;
    class function CreateRemote(const MachineName: string): IVcAttribute;
  end;

// *********************************************************************//
// The Class CoSurface provides a Create and CreateRemote method to          
// create instances of the default interface IVcSurface exposed by              
// the CoClass Surface. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSurface = class
    class function Create: IVcSurface;
    class function CreateRemote(const MachineName: string): IVcSurface;
  end;

// *********************************************************************//
// The Class CoContour provides a Create and CreateRemote method to          
// create instances of the default interface IVcContour exposed by              
// the CoClass Contour. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoContour = class
    class function Create: IVcContour;
    class function CreateRemote(const MachineName: string): IVcContour;
  end;

// *********************************************************************//
// The Class CoLightSource provides a Create and CreateRemote method to          
// create instances of the default interface IVcLightSource exposed by              
// the CoClass LightSource. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLightSource = class
    class function Create: IVcLightSource;
    class function CreateRemote(const MachineName: string): IVcLightSource;
  end;

// *********************************************************************//
// The Class CoSeriesCollection provides a Create and CreateRemote method to          
// create instances of the default interface IVcSeriesCollection exposed by              
// the CoClass SeriesCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSeriesCollection = class
    class function Create: IVcSeriesCollection;
    class function CreateRemote(const MachineName: string): IVcSeriesCollection;
  end;

// *********************************************************************//
// The Class CoDataPoints provides a Create and CreateRemote method to          
// create instances of the default interface IVcDataPoints exposed by              
// the CoClass DataPoints. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataPoints = class
    class function Create: IVcDataPoints;
    class function CreateRemote(const MachineName: string): IVcDataPoints;
  end;

// *********************************************************************//
// The Class CoLabels provides a Create and CreateRemote method to          
// create instances of the default interface IVcLabels exposed by              
// the CoClass Labels. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLabels = class
    class function Create: IVcLabels;
    class function CreateRemote(const MachineName: string): IVcLabels;
  end;

// *********************************************************************//
// The Class CoXYZ provides a Create and CreateRemote method to          
// create instances of the default interface IVcXYZ exposed by              
// the CoClass XYZ. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoXYZ = class
    class function Create: IVcXYZ;
    class function CreateRemote(const MachineName: string): IVcXYZ;
  end;

// *********************************************************************//
// The Class CoLightSources provides a Create and CreateRemote method to          
// create instances of the default interface IVcLightSources exposed by              
// the CoClass LightSources. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLightSources = class
    class function Create: IVcLightSources;
    class function CreateRemote(const MachineName: string): IVcLightSources;
  end;

// *********************************************************************//
// The Class CoAttributes provides a Create and CreateRemote method to          
// create instances of the default interface IVcAttributes exposed by              
// the CoClass Attributes. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttributes = class
    class function Create: IVcAttributes;
    class function CreateRemote(const MachineName: string): IVcAttributes;
  end;

// *********************************************************************//
// The Class CoContourGradient provides a Create and CreateRemote method to          
// create instances of the default interface IVcContourGradient exposed by              
// the CoClass ContourGradient. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoContourGradient = class
    class function Create: IVcContourGradient;
    class function CreateRemote(const MachineName: string): IVcContourGradient;
  end;

procedure Register;

implementation

uses ComObj;

procedure TVtChart.InitControlData;
const
  CEventDispIDs: array [0..24] of DWORD = (
    $00000001, $00000002, $00000003, $00000004, $00000005, $00000006,
    $00000007, $00000008, $00000009, $0000000A, $0000000B, $0000000C,
    $0000000D, $0000000E, $0000000F, $00000010, $00000011, $00000012,
    $00000013, $00000014, $00000015, $00000016, $00000017, $00000018,
    $00000019);
  CLicenseKey: array[0..42] of Word = ( $0043, $006F, $0070, $0079, $0072, $0069, $0067, $0068, $0074, $0020, $0028
    , $0063, $0029, $0020, $0031, $0039, $0039, $0035, $0020, $0056, $0069
    , $0073, $0075, $0061, $006C, $0020, $0043, $006F, $006D, $0070, $006F
    , $006E, $0065, $006E, $0074, $0073, $002C, $0020, $0049, $006E, $0063
    , $002E, $0000);
  CTPictureIDs: array [0..0] of DWORD = (
    $00000019);
  CControlData: TControlData2 = (
    ClassID: '{5A721580-5AF0-11CE-8384-0020AF2337F2}';
    EventIID: '{5A721582-5AF0-11CE-8384-0020AF2337F2}';
    EventCount: 25;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000008;
    Version: 401;
    FontCount: 0;
    FontIDs: nil;
    PictureCount: 1;
    PictureIDs: @CTPictureIDs);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnChartSelected) - Cardinal(Self);
end;

procedure TVtChart.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _DVtChart;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TVtChart.GetControlInterface: _DVtChart;
begin
  CreateControl;
  Result := FIntf;
end;

function TVtChart.Get_Title: IDispatch;
begin
  Result := DefaultInterface.Title;
end;

procedure TVtChart.Set_Title(const Value: IDispatch);
begin
  DefaultInterface.Title := Value;
end;

function TVtChart.Get_Footnote: IDispatch;
begin
  Result := DefaultInterface.Footnote;
end;

procedure TVtChart.Set_Footnote(const Value: IDispatch);
begin
  DefaultInterface.Footnote := Value;
end;

function TVtChart.Get_Backdrop: IDispatch;
begin
  Result := DefaultInterface.Backdrop;
end;

procedure TVtChart.Set_Backdrop(const Value: IDispatch);
begin
  DefaultInterface.Backdrop := Value;
end;

function TVtChart.Get_PrintInformation: IDispatch;
begin
  Result := DefaultInterface.PrintInformation;
end;

procedure TVtChart.Set_PrintInformation(const Value: IDispatch);
begin
  DefaultInterface.PrintInformation := Value;
end;

function TVtChart.Get_Legend: IDispatch;
begin
  Result := DefaultInterface.Legend;
end;

procedure TVtChart.Set_Legend(const Value: IDispatch);
begin
  DefaultInterface.Legend := Value;
end;

function TVtChart.Get_DataGrid: IDispatch;
begin
  Result := DefaultInterface.DataGrid;
end;

procedure TVtChart.Set_DataGrid(const Value: IDispatch);
begin
  DefaultInterface.DataGrid := Value;
end;

function TVtChart.Get_Plot: IDispatch;
begin
  Result := DefaultInterface.Plot;
end;

procedure TVtChart.Set_Plot(const Value: IDispatch);
begin
  DefaultInterface.Plot := Value;
end;

function  TVtChart.Get_GetBitmap(options: OleVariant): OLE_HANDLE;
begin
  Result := DefaultInterface.GetBitmap[options];
end;

procedure TVtChart.EditPaste;
begin
  DefaultInterface.EditPaste;
end;

procedure TVtChart.EditCopy;
begin
  DefaultInterface.EditCopy;
end;

procedure TVtChart.ActivateSelectionDialog;
begin
  DefaultInterface.ActivateSelectionDialog;
end;

procedure TVtChart.Layout;
begin
  DefaultInterface.Layout;
end;

procedure TVtChart.ToDefaults;
begin
  DefaultInterface.ToDefaults;
end;

procedure TVtChart.PrintSetupDialog;
begin
  DefaultInterface.PrintSetupDialog;
end;

procedure TVtChart.PrintChart;
begin
  DefaultInterface.PrintChart;
end;

procedure TVtChart.SelectPart(part: Smallint; index1: Smallint; index2: Smallint; index3: Smallint; 
                              index4: Smallint);
begin
  DefaultInterface.SelectPart(part, index1, index2, index3, index4);
end;

procedure TVtChart.GetSelectedPart(var part: Smallint; var index1: Smallint; var index2: Smallint; 
                                   var index3: Smallint; var index4: Smallint);
begin
  DefaultInterface.GetSelectedPart(part, index1, index2, index3, index4);
end;

procedure TVtChart.GetDLLVersion(var major: Smallint; var minor: Smallint);
begin
  DefaultInterface.GetDLLVersion(major, minor);
end;

procedure TVtChart.TwipsToChartPart(xVal: Integer; yVal: Integer; var part: Smallint; 
                                    var index1: Smallint; var index2: Smallint; 
                                    var index3: Smallint; var index4: Smallint);
begin
  DefaultInterface.TwipsToChartPart(xVal, yVal, part, index1, index2, index3, index4);
end;

procedure TVtChart.ReadFromFile(const FileName: WideString);
begin
  DefaultInterface.ReadFromFile(FileName);
end;

procedure TVtChart.WritePictureToFile(const FileName: WideString; pictureType: Smallint; 
                                      options: Smallint);
begin
  DefaultInterface.WritePictureToFile(FileName, pictureType, options);
end;

procedure TVtChart.WriteToFile(const FileName: WideString);
begin
  DefaultInterface.WriteToFile(FileName);
end;

procedure TVtChart.ActivateFormatMenu(X: Integer; Y: Integer);
begin
  DefaultInterface.ActivateFormatMenu(X, Y);
end;

procedure TVtChart.GetMetafile(options: Smallint; var Handle: OLE_HANDLE; var Width: Integer; 
                               var Height: Integer);
begin
  DefaultInterface.GetMetafile(options, Handle, Width, Height);
end;

procedure TVtChart.CopyDataFromArray(Top: Smallint; Left: Smallint; Bottom: Smallint; 
                                     Right: Smallint; Array_: OleVariant);
begin
  DefaultInterface.CopyDataFromArray(Top, Left, Bottom, Right, Array_);
end;

procedure TVtChart.CopyDataToArray(Top: Smallint; Left: Smallint; Bottom: Smallint; 
                                   Right: Smallint; Array_: OleVariant);
begin
  DefaultInterface.CopyDataToArray(Top, Left, Bottom, Right, Array_);
end;

procedure TVtChart.Draw(hDC: OLE_HANDLE; hDCType: Smallint; Top: Integer; Left: Integer; 
                        Bottom: Integer; Right: Integer; Layout: WordBool; Stretch: WordBool);
begin
  DefaultInterface.Draw(hDC, hDCType, Top, Left, Bottom, Right, Layout, Stretch);
end;

procedure TVtChart.UseWizard;
begin
  DefaultInterface.UseWizard;
end;

procedure TVtChart.EditChartData;
begin
  DefaultInterface.EditChartData;
end;

procedure TVtChart.Refresh;
begin
  DefaultInterface.Refresh;
end;

procedure TVtChart.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

class function CoCoor.Create: ICoor;
begin
  Result := CreateComObject(CLASS_Coor) as ICoor;
end;

class function CoCoor.CreateRemote(const MachineName: string): ICoor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Coor) as ICoor;
end;

class function CoLCoor.Create: ILCoor;
begin
  Result := CreateComObject(CLASS_LCoor) as ILCoor;
end;

class function CoLCoor.CreateRemote(const MachineName: string): ILCoor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LCoor) as ILCoor;
end;

class function CoCoor3.Create: ICoor3;
begin
  Result := CreateComObject(CLASS_Coor3) as ICoor3;
end;

class function CoCoor3.CreateRemote(const MachineName: string): ICoor3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Coor3) as ICoor3;
end;

class function CoLRect.Create: ILRect;
begin
  Result := CreateComObject(CLASS_LRect) as ILRect;
end;

class function CoLRect.CreateRemote(const MachineName: string): ILRect;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LRect) as ILRect;
end;

class function CoRect.Create: IRect;
begin
  Result := CreateComObject(CLASS_Rect) as IRect;
end;

class function CoRect.CreateRemote(const MachineName: string): IRect;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Rect) as IRect;
end;

class function CoVtColor.Create: IColor;
begin
  Result := CreateComObject(CLASS_VtColor) as IColor;
end;

class function CoVtColor.CreateRemote(const MachineName: string): IColor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VtColor) as IColor;
end;

class function CoBrush.Create: IBrush;
begin
  Result := CreateComObject(CLASS_Brush) as IBrush;
end;

class function CoBrush.CreateRemote(const MachineName: string): IBrush;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Brush) as IBrush;
end;

class function CoShadow.Create: IShadow;
begin
  Result := CreateComObject(CLASS_Shadow) as IShadow;
end;

class function CoShadow.CreateRemote(const MachineName: string): IShadow;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Shadow) as IShadow;
end;

class function CoTextLayout.Create: ITextLayout;
begin
  Result := CreateComObject(CLASS_TextLayout) as ITextLayout;
end;

class function CoTextLayout.CreateRemote(const MachineName: string): ITextLayout;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TextLayout) as ITextLayout;
end;

class function CoTitle.Create: IVcTitle;
begin
  Result := CreateComObject(CLASS_Title) as IVcTitle;
end;

class function CoTitle.CreateRemote(const MachineName: string): IVcTitle;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Title) as IVcTitle;
end;

class function CoLocation.Create: ILocation;
begin
  Result := CreateComObject(CLASS_Location) as ILocation;
end;

class function CoLocation.CreateRemote(const MachineName: string): ILocation;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Location) as ILocation;
end;

class function CoVtFont.Create: IFont;
begin
  Result := CreateComObject(CLASS_VtFont) as IFont;
end;

class function CoVtFont.CreateRemote(const MachineName: string): IFont;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VtFont) as IFont;
end;

class function CoBackdrop.Create: IBackdrop;
begin
  Result := CreateComObject(CLASS_Backdrop) as IBackdrop;
end;

class function CoBackdrop.CreateRemote(const MachineName: string): IBackdrop;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Backdrop) as IBackdrop;
end;

class function CoFrame.Create: IFrame;
begin
  Result := CreateComObject(CLASS_Frame) as IFrame;
end;

class function CoFrame.CreateRemote(const MachineName: string): IFrame;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Frame) as IFrame;
end;

class function CoGradient.Create: IGradient;
begin
  Result := CreateComObject(CLASS_Gradient) as IGradient;
end;

class function CoGradient.CreateRemote(const MachineName: string): IGradient;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Gradient) as IGradient;
end;

class function CoVtPicture.Create: IPicture;
begin
  Result := CreateComObject(CLASS_VtPicture) as IPicture;
end;

class function CoVtPicture.CreateRemote(const MachineName: string): IPicture;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VtPicture) as IPicture;
end;

class function CoFill.Create: IFill;
begin
  Result := CreateComObject(CLASS_Fill) as IFill;
end;

class function CoFill.CreateRemote(const MachineName: string): IFill;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Fill) as IFill;
end;

class function CoPen.Create: IVcPen;
begin
  Result := CreateComObject(CLASS_Pen) as IVcPen;
end;

class function CoPen.CreateRemote(const MachineName: string): IVcPen;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Pen) as IVcPen;
end;

class function CoMarker.Create: IVcMarker;
begin
  Result := CreateComObject(CLASS_Marker) as IVcMarker;
end;

class function CoMarker.CreateRemote(const MachineName: string): IVcMarker;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Marker) as IVcMarker;
end;

class function CoFootnote.Create: IVcFootnote;
begin
  Result := CreateComObject(CLASS_Footnote) as IVcFootnote;
end;

class function CoFootnote.CreateRemote(const MachineName: string): IVcFootnote;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Footnote) as IVcFootnote;
end;

class function CoLegend.Create: IVcLegend;
begin
  Result := CreateComObject(CLASS_Legend) as IVcLegend;
end;

class function CoLegend.CreateRemote(const MachineName: string): IVcLegend;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Legend) as IVcLegend;
end;

class function CoPrintInformation.Create: IVcPrintInformation;
begin
  Result := CreateComObject(CLASS_PrintInformation) as IVcPrintInformation;
end;

class function CoPrintInformation.CreateRemote(const MachineName: string): IVcPrintInformation;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PrintInformation) as IVcPrintInformation;
end;

class function CoDataGrid.Create: IVcDataGrid;
begin
  Result := CreateComObject(CLASS_DataGrid) as IVcDataGrid;
end;

class function CoDataGrid.CreateRemote(const MachineName: string): IVcDataGrid;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataGrid) as IVcDataGrid;
end;

class function CoPlot.Create: IVcPlot;
begin
  Result := CreateComObject(CLASS_Plot) as IVcPlot;
end;

class function CoPlot.CreateRemote(const MachineName: string): IVcPlot;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Plot) as IVcPlot;
end;

class function CoView3d.Create: IVcView3d;
begin
  Result := CreateComObject(CLASS_View3d) as IVcView3d;
end;

class function CoView3d.CreateRemote(const MachineName: string): IVcView3d;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_View3d) as IVcView3d;
end;

class function CoPlotBase.Create: IVcPlotBase;
begin
  Result := CreateComObject(CLASS_PlotBase) as IVcPlotBase;
end;

class function CoPlotBase.CreateRemote(const MachineName: string): IVcPlotBase;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PlotBase) as IVcPlotBase;
end;

class function CoDoughnut.Create: IVcDoughnut;
begin
  Result := CreateComObject(CLASS_Doughnut) as IVcDoughnut;
end;

class function CoDoughnut.CreateRemote(const MachineName: string): IVcDoughnut;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Doughnut) as IVcDoughnut;
end;

class function CoPie.Create: IVcPie;
begin
  Result := CreateComObject(CLASS_Pie) as IVcPie;
end;

class function CoPie.CreateRemote(const MachineName: string): IVcPie;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Pie) as IVcPie;
end;

class function CoWeighting.Create: IVcWeighting;
begin
  Result := CreateComObject(CLASS_Weighting) as IVcWeighting;
end;

class function CoWeighting.CreateRemote(const MachineName: string): IVcWeighting;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Weighting) as IVcWeighting;
end;

class function CoWall.Create: IVcWall;
begin
  Result := CreateComObject(CLASS_Wall) as IVcWall;
end;

class function CoWall.CreateRemote(const MachineName: string): IVcWall;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Wall) as IVcWall;
end;

class function CoSeries.Create: IVcSeries;
begin
  Result := CreateComObject(CLASS_Series) as IVcSeries;
end;

class function CoSeries.CreateRemote(const MachineName: string): IVcSeries;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Series) as IVcSeries;
end;

class function CoBar.Create: IVcBar;
begin
  Result := CreateComObject(CLASS_Bar) as IVcBar;
end;

class function CoBar.CreateRemote(const MachineName: string): IVcBar;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Bar) as IVcBar;
end;

class function CoHiLo.Create: IVcHiLo;
begin
  Result := CreateComObject(CLASS_HiLo) as IVcHiLo;
end;

class function CoHiLo.CreateRemote(const MachineName: string): IVcHiLo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_HiLo) as IVcHiLo;
end;

class function CoPosition.Create: IVcPosition;
begin
  Result := CreateComObject(CLASS_Position) as IVcPosition;
end;

class function CoPosition.CreateRemote(const MachineName: string): IVcPosition;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Position) as IVcPosition;
end;

class function CoSeriesMarker.Create: IVcSeriesMarker;
begin
  Result := CreateComObject(CLASS_SeriesMarker) as IVcSeriesMarker;
end;

class function CoSeriesMarker.CreateRemote(const MachineName: string): IVcSeriesMarker;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SeriesMarker) as IVcSeriesMarker;
end;

class function CoSeriesLabel.Create: IVcSeriesLabel;
begin
  Result := CreateComObject(CLASS_SeriesLabel) as IVcSeriesLabel;
end;

class function CoSeriesLabel.CreateRemote(const MachineName: string): IVcSeriesLabel;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SeriesLabel) as IVcSeriesLabel;
end;

class function CoStatLine.Create: IVcStatLines;
begin
  Result := CreateComObject(CLASS_StatLine) as IVcStatLines;
end;

class function CoStatLine.CreateRemote(const MachineName: string): IVcStatLines;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StatLine) as IVcStatLines;
end;

class function CoDataPointLabel.Create: IVcDataPointLabel;
begin
  Result := CreateComObject(CLASS_DataPointLabel) as IVcDataPointLabel;
end;

class function CoDataPointLabel.CreateRemote(const MachineName: string): IVcDataPointLabel;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataPointLabel) as IVcDataPointLabel;
end;

class function CoDataPoint.Create: IVcDataPoint;
begin
  Result := CreateComObject(CLASS_DataPoint) as IVcDataPoint;
end;

class function CoDataPoint.CreateRemote(const MachineName: string): IVcDataPoint;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataPoint) as IVcDataPoint;
end;

class function CoAxis.Create: IVcAxis;
begin
  Result := CreateComObject(CLASS_Axis) as IVcAxis;
end;

class function CoAxis.CreateRemote(const MachineName: string): IVcAxis;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Axis) as IVcAxis;
end;

class function CoCategoryScale.Create: IVcCategoryScale;
begin
  Result := CreateComObject(CLASS_CategoryScale) as IVcCategoryScale;
end;

class function CoCategoryScale.CreateRemote(const MachineName: string): IVcCategoryScale;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CategoryScale) as IVcCategoryScale;
end;

class function CoDateScale.Create: IVcDateScale;
begin
  Result := CreateComObject(CLASS_DateScale) as IVcDateScale;
end;

class function CoDateScale.CreateRemote(const MachineName: string): IVcDateScale;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DateScale) as IVcDateScale;
end;

class function CoAxisGrid.Create: IVcAxisGrid;
begin
  Result := CreateComObject(CLASS_AxisGrid) as IVcAxisGrid;
end;

class function CoAxisGrid.CreateRemote(const MachineName: string): IVcAxisGrid;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AxisGrid) as IVcAxisGrid;
end;

class function CoIntersection.Create: IVcIntersection;
begin
  Result := CreateComObject(CLASS_Intersection) as IVcIntersection;
end;

class function CoIntersection.CreateRemote(const MachineName: string): IVcIntersection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Intersection) as IVcIntersection;
end;

class function CoTick.Create: IVcTick;
begin
  Result := CreateComObject(CLASS_Tick) as IVcTick;
end;

class function CoTick.CreateRemote(const MachineName: string): IVcTick;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Tick) as IVcTick;
end;

class function CoAxisScale.Create: IVcScale;
begin
  Result := CreateComObject(CLASS_AxisScale) as IVcScale;
end;

class function CoAxisScale.CreateRemote(const MachineName: string): IVcScale;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AxisScale) as IVcScale;
end;

class function CoValueScale.Create: IVcValueScale;
begin
  Result := CreateComObject(CLASS_ValueScale) as IVcValueScale;
end;

class function CoValueScale.CreateRemote(const MachineName: string): IVcValueScale;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ValueScale) as IVcValueScale;
end;

class function CoAxisTitle.Create: IVcAxisTitle;
begin
  Result := CreateComObject(CLASS_AxisTitle) as IVcAxisTitle;
end;

class function CoAxisTitle.CreateRemote(const MachineName: string): IVcAxisTitle;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AxisTitle) as IVcAxisTitle;
end;

class function CoLabel_.Create: IVcLabel;
begin
  Result := CreateComObject(CLASS_Label_) as IVcLabel;
end;

class function CoLabel_.CreateRemote(const MachineName: string): IVcLabel;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Label_) as IVcLabel;
end;

class function CoLight.Create: IVcLight;
begin
  Result := CreateComObject(CLASS_Light) as IVcLight;
end;

class function CoLight.CreateRemote(const MachineName: string): IVcLight;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Light) as IVcLight;
end;

class function CoElevation.Create: IVcElevation;
begin
  Result := CreateComObject(CLASS_Elevation) as IVcElevation;
end;

class function CoElevation.CreateRemote(const MachineName: string): IVcElevation;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Elevation) as IVcElevation;
end;

class function CoAttribute.Create: IVcAttribute;
begin
  Result := CreateComObject(CLASS_Attribute) as IVcAttribute;
end;

class function CoAttribute.CreateRemote(const MachineName: string): IVcAttribute;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Attribute) as IVcAttribute;
end;

class function CoSurface.Create: IVcSurface;
begin
  Result := CreateComObject(CLASS_Surface) as IVcSurface;
end;

class function CoSurface.CreateRemote(const MachineName: string): IVcSurface;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Surface) as IVcSurface;
end;

class function CoContour.Create: IVcContour;
begin
  Result := CreateComObject(CLASS_Contour) as IVcContour;
end;

class function CoContour.CreateRemote(const MachineName: string): IVcContour;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Contour) as IVcContour;
end;

class function CoLightSource.Create: IVcLightSource;
begin
  Result := CreateComObject(CLASS_LightSource) as IVcLightSource;
end;

class function CoLightSource.CreateRemote(const MachineName: string): IVcLightSource;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LightSource) as IVcLightSource;
end;

class function CoSeriesCollection.Create: IVcSeriesCollection;
begin
  Result := CreateComObject(CLASS_SeriesCollection) as IVcSeriesCollection;
end;

class function CoSeriesCollection.CreateRemote(const MachineName: string): IVcSeriesCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SeriesCollection) as IVcSeriesCollection;
end;

class function CoDataPoints.Create: IVcDataPoints;
begin
  Result := CreateComObject(CLASS_DataPoints) as IVcDataPoints;
end;

class function CoDataPoints.CreateRemote(const MachineName: string): IVcDataPoints;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataPoints) as IVcDataPoints;
end;

class function CoLabels.Create: IVcLabels;
begin
  Result := CreateComObject(CLASS_Labels) as IVcLabels;
end;

class function CoLabels.CreateRemote(const MachineName: string): IVcLabels;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Labels) as IVcLabels;
end;

class function CoXYZ.Create: IVcXYZ;
begin
  Result := CreateComObject(CLASS_XYZ) as IVcXYZ;
end;

class function CoXYZ.CreateRemote(const MachineName: string): IVcXYZ;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_XYZ) as IVcXYZ;
end;

class function CoLightSources.Create: IVcLightSources;
begin
  Result := CreateComObject(CLASS_LightSources) as IVcLightSources;
end;

class function CoLightSources.CreateRemote(const MachineName: string): IVcLightSources;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LightSources) as IVcLightSources;
end;

class function CoAttributes.Create: IVcAttributes;
begin
  Result := CreateComObject(CLASS_Attributes) as IVcAttributes;
end;

class function CoAttributes.CreateRemote(const MachineName: string): IVcAttributes;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Attributes) as IVcAttributes;
end;

class function CoContourGradient.Create: IVcContourGradient;
begin
  Result := CreateComObject(CLASS_ContourGradient) as IVcContourGradient;
end;

class function CoContourGradient.CreateRemote(const MachineName: string): IVcContourGradient;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ContourGradient) as IVcContourGradient;
end;

procedure Register;
begin
  RegisterComponents('ActiveX',[TVtChart]);
end;

end.
