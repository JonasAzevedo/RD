unit VCF1;

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
// File generated on 1/10/00 8:06:46 PM from Type Library described below.

// ************************************************************************ //
// Type Lib: c:\winnt\system32\vcf132.ocx (1)
// IID\LCID: {042BADC8-5E58-11CE-B610-524153480001}\0
// Helpfile: C:\WINNT\System32\VCF1.HLP
// DepndLst: 
//   (1) v1.0 stdole, (C:\WINNT\System32\stdole32.tlb)
//   (2) v1.0 StdVCL, (C:\WINNT\System32\STDVCL32.DLL)
//   (3) v1.0 StdType, (C:\WINNT\System32\oc30.dll)
// Errors:
//   Hint: Member 'Type' of '_DVCF1' changed to 'Type_'
//   Hint: Member 'Type' of '_DVCF1' changed to 'Type_'
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
  VCIF1LibMajorVersion = 1;
  VCIF1LibMinorVersion = 0;

  LIBID_VCIF1Lib: TGUID = '{042BADC8-5E58-11CE-B610-524153480001}';

  DIID__DVCF1: TGUID = '{042BADC6-5E58-11CE-B610-524153480001}';
  DIID__DVCF1Events: TGUID = '{042BADC7-5E58-11CE-B610-524153480001}';
  CLASS_F1Book: TGUID = '{042BADC5-5E58-11CE-B610-524153480001}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum F1ColWidthUnitsConstants
type
  F1ColWidthUnitsConstants = TOleEnum;
const
  F1ColWidthUnitsCharacters = $00000000;
  F1ColWidthUnitsTwips = $00000001;

// Constants for enum F1MousePointerConstants
type
  F1MousePointerConstants = TOleEnum;
const
  F1Default = $00000000;
  F1Arrow = $00000001;
  F1Cross = $00000002;
  F1IBeam = $00000003;
  F1Icon = $00000004;
  F1Size = $00000005;
  F1SizeNESW = $00000006;
  F1SizeNS = $00000007;
  F1SizeNWSE = $00000008;
  F1SizeWE = $00000009;
  F1UpArrow = $0000000A;
  F1Hourglass = $0000000B;
  F1NoDrop = $0000000C;
  F1Custom = $0000000D;

// Constants for enum F1ShowOffOnAutoConstants
type
  F1ShowOffOnAutoConstants = TOleEnum;
const
  F1Off = $00000000;
  F1On = $00000001;
  F1Auto = $00000002;

// Constants for enum F1ShowTabsConstants
type
  F1ShowTabsConstants = TOleEnum;
const
  F1TabsOff = $00000000;
  F1TabsBottom = $00000001;
  F1TabsTop = $00000002;

// Constants for enum F1ModeConstants
type
  F1ModeConstants = TOleEnum;
const
  F1ModeNormal = $00000000;
  F1ModeLine = $00000001;
  F1ModeRectangle = $00000002;
  F1ModeOval = $00000003;
  F1ModeArc = $00000004;
  F1ModeChart = $00000005;
  F1ModeField = $00000006;
  F1ModeButton = $00000007;
  F1ModePolygon = $00000008;
  F1ModeCheckBox = $00000009;
  F1ModeDropDown = $0000000A;

// Constants for enum F1PolyEditModeConstants
type
  F1PolyEditModeConstants = TOleEnum;
const
  F1PolyEditModeNormal = $00000000;
  F1PolyEditModePoints = $00000001;

// Constants for enum F1ShiftTypeConstants
type
  F1ShiftTypeConstants = TOleEnum;
const
  F1ShiftHorizontal = $00000001;
  F1ShiftVertical = $00000002;
  F1ShiftRows = $00000003;
  F1ShiftCols = $00000004;

// Constants for enum F1HAlignConstants
type
  F1HAlignConstants = TOleEnum;
const
  F1HAlignGeneral = $00000001;
  F1HAlignLeft = $00000002;
  F1HAlignCenter = $00000003;
  F1HAlignRight = $00000004;
  F1HAlignFill = $00000005;
  F1HAlignJustify = $00000006;
  F1HAlignCenterAcrossCells = $00000007;

// Constants for enum F1VAlignConstants
type
  F1VAlignConstants = TOleEnum;
const
  F1VAlignTop = $00000001;
  F1VAlignCenter = $00000002;
  F1VAlignBottom = $00000003;

// Constants for enum F1ClearTypeConstants
type
  F1ClearTypeConstants = TOleEnum;
const
  F1ClearDlg = $00000000;
  F1ClearAll = $00000001;
  F1ClearFormats = $00000002;
  F1ClearValues = $00000003;

// Constants for enum F1FileTypeConstants
type
  F1FileTypeConstants = TOleEnum;
const
  F1FileFormulaOne = $00000001;
  F1FileExcel4 = $00000002;
  F1FileTabbedText = $00000003;
  F1FileExcel5 = $00000004;
  F1FileFormulaOne3 = $00000005;
  F1FileTabbedTextValuesOnly = $00000006;

// Constants for enum F1ObjTypeConstants
type
  F1ObjTypeConstants = TOleEnum;
const
  F1ObjLine = $00000001;
  F1ObjRectangle = $00000002;
  F1ObjOval = $00000003;
  F1ObjArc = $00000004;
  F1ObjChart = $00000005;
  F1ObjButton = $00000007;
  F1ObjPolygon = $00000008;
  F1ObjCheckBox = $00000009;
  F1ObjDropDown = $0000000A;
  F1ObjPicture = $0000000B;

// Constants for enum F1ErrorConstants
type
  F1ErrorConstants = TOleEnum;
const
  F1ErrorNone = $00000000;
  F1ErrorGeneral = $00004E21;
  F1ErrorBadArgument = $00004E22;
  F1ErrorNoMemory = $00004E23;
  F1ErrorBadFormula = $00004E24;
  F1ErrorBufTooShort = $00004E25;
  F1ErrorNotFound = $00004E26;
  F1ErrorBadRC = $00004E27;
  F1ErrorBadHSS = $00004E28;
  F1ErrorTooManyHSS = $00004E29;
  F1ErrorNoTable = $00004E2A;
  F1ErrorUnableToOpenFile = $00004E2B;
  F1ErrorInvalidFile = $00004E2C;
  F1ErrorInsertShiftOffTable = $00004E2D;
  F1ErrorOnlyOneRange = $00004E2E;
  F1ErrorNothingToPaste = $00004E2F;
  F1ErrorBadNumberFormat = $00004E30;
  F1ErrorTooManyFonts = $00004E31;
  F1ErrorTooManySelectedRanges = $00004E32;
  F1ErrorUnableToWriteFile = $00004E33;
  F1ErrorNoTransaction = $00004E34;
  F1ErrorNothingToPrint = $00004E35;
  F1ErrorPrintMarginsDontFit = $00004E36;
  F1ErrorCancel = $00004E37;
  F1ErrorUnableToInitializePrinter = $00004E38;
  F1ErrorStringTooLong = $00004E39;
  F1ErrorFormulaTooLong = $00004E3A;
  F1ErrorUnableToOpenClipboard = $00004E3B;
  F1ErrorPasteWouldOverflowSheet = $00004E3C;
  F1ErrorLockedCellsCannotBeModified = $00004E3D;
  F1ErrorLockedDocCannotBeModified = $00004E3E;
  F1ErrorInvalidName = $00004E3F;
  F1ErrorCannotDeleteNameInUse = $00004E40;
  F1ErrorUnableToFindName = $00004E41;
  F1ErrorNoWindow = $00004E42;
  F1ErrorSelection = $00004E43;
  F1ErrorTooManyObjects = $00004E44;
  F1ErrorInvalidObjectType = $00004E45;
  F1ErrorObjectNotFound = $00004E46;
  F1ErrorInvalidRequest = $00004E47;
  F1ErrorBadValidationRule = $00004E48;
  F1ErrorBadInputMask = $00004E49;
  F1ErrorValidationFailed = $00004E4A;
  F1ErrorNoODBCConnection = $00004E4B;
  F1ErrorUnableToLoadODBC = $00004E4C;
  F1ErrorUnsupportedFeature = $00004E4D;

// Constants for enum F1ControlCellConstants
type
  F1ControlCellConstants = TOleEnum;
const
  F1ControlNoCell = $00000000;
  F1ControlCellValue = $00000001;
  F1ControlCellText = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _DVCF1 = dispinterface;
  _DVCF1Events = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  F1Book = _DVCF1;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PSmallint1 = ^Smallint; {*}
  PWordBool1 = ^WordBool; {*}
  PUINT1 = ^OLE_COLOR; {*}
  PWideString1 = ^WideString; {*}
  PSYSINT1 = ^OLE_HANDLE; {*}
  PInteger1 = ^Integer; {*}
  PDouble1 = ^Double; {*}
  PSingle1 = ^Single; {*}


// *********************************************************************//
// DispIntf:  _DVCF1
// Flags:     (4112) Hidden Dispatchable
// GUID:      {042BADC6-5E58-11CE-B610-524153480001}
// *********************************************************************//
  _DVCF1 = dispinterface
    ['{042BADC6-5E58-11CE-B610-524153480001}']
    property BackColor: OLE_COLOR dispid 3;
    property Col: Integer dispid 4;
    property Row: Integer dispid 5;
    property ShowHScrollBar: Smallint dispid 6;
    property Text: WideString dispid 7;
    property Number: Double dispid 8;
    property Formula: WideString dispid 9;
    property FixedCol: Integer dispid 10;
    property FixedCols: Integer dispid 11;
    property FixedRow: Integer dispid 12;
    property FixedRows: Integer dispid 13;
    property ShowGridLines: WordBool dispid 14;
    property ShowRowHeading: WordBool dispid 15;
    property ShowSelections: Smallint dispid 16;
    property LeftCol: Integer dispid 17;
    property MaxCol: Integer dispid 18;
    property MaxRow: Integer dispid 19;
    property TopRow: Integer dispid 20;
    property AllowResize: WordBool dispid 21;
    property AllowSelections: WordBool dispid 22;
    property AllowFormulas: WordBool dispid 23;
    property AllowInCellEditing: WordBool dispid 24;
    property ShowVScrollBar: Smallint dispid 25;
    property AllowFillRange: WordBool dispid 26;
    property AllowMoveRange: WordBool dispid 27;
    property SelStartCol: Integer dispid 28;
    property SelStartRow: Integer dispid 29;
    property SelEndCol: Integer dispid 30;
    property SelEndRow: Integer dispid 31;
    property ExtraColor: OLE_COLOR dispid 32;
    property FileName: WideString dispid 33;
    property AutoRecalc: WordBool dispid 34;
    property PrintGridLines: WordBool dispid 35;
    property PrintRowHeading: WordBool dispid 36;
    property PrintHCenter: WordBool dispid 37;
    property PrintVCenter: WordBool dispid 38;
    property PrintLeftToRight: WordBool dispid 39;
    property PrintHeader: WideString dispid 40;
    property PrintFooter: WideString dispid 41;
    property PrintLeftMargin: Double dispid 42;
    property PrintTopMargin: Double dispid 43;
    property PrintRightMargin: Double dispid 44;
    property PrintBottomMargin: Double dispid 45;
    property PrintArea: WideString dispid 46;
    property PrintTitles: WideString dispid 47;
    property PrintNoColor: WordBool dispid 48;
    property Selection: WideString dispid 49;
    property TableName: WideString dispid 50;
    property DoCancelEdit: WordBool dispid 51;
    property DoSelChange: WordBool dispid 52;
    property DoStartEdit: WordBool dispid 53;
    property DoEndEdit: WordBool dispid 54;
    property DoStartRecalc: WordBool dispid 55;
    property DoEndRecalc: WordBool dispid 56;
    property DoClick: WordBool dispid 57;
    property DoDblClick: WordBool dispid 58;
    property ShowColHeading: WordBool dispid 59;
    property PrintColHeading: WordBool dispid 60;
    property Entry: WideString dispid 61;
    property Repaint: WordBool dispid 62;
    property AllowArrows: WordBool dispid 63;
    property AllowTabs: WordBool dispid 64;
    property FormattedText: WideString dispid 65;
    property RowMode: WordBool dispid 66;
    property AllowDelete: WordBool dispid 67;
    property EnableProtection: WordBool dispid 68;
    property MinCol: Integer dispid 69;
    property MinRow: Integer dispid 70;
    property DoTopLeftChanged: WordBool dispid 71;
    property AllowEditHeaders: WordBool dispid 72;
    property DoObjClick: WordBool dispid 73;
    property DoObjDblClick: WordBool dispid 74;
    property AllowObjSelections: WordBool dispid 75;
    property DoRClick: WordBool dispid 76;
    property DoRDblClick: WordBool dispid 77;
    property Clip: WideString dispid 78;
    property ClipValues: WideString dispid 79;
    property PrintLandscape: WordBool dispid 80;
    property Enabled: WordBool dispid -514;
    property BorderStyle: Smallint dispid -504;
    property AppName: WideString dispid 81;
    property HdrHeight: Smallint dispid 82;
    property HdrWidth: Smallint dispid 83;
    property NumberFormat: WideString dispid 84;
    property TopLeftText: WideString dispid 85;
    property EnterMovesDown: WordBool dispid 86;
    property LastCol: Integer dispid 87;
    property LastRow: Integer dispid 88;
    property Logical: WordBool dispid 89;
    property Mode: Smallint dispid 90;
    property PolyEditMode: Smallint dispid 91;
    property ViewScale: Smallint dispid 92;
    property SelectionCount: Smallint dispid 93;
    property Title: WideString dispid 94;
    property Type_: Smallint dispid 95;
    property ShowFormulas: WordBool dispid 96;
    property ShowZeroValues: WordBool dispid 97;
    property MousePointer: Smallint dispid 2;
    property MouseIcon: IPictureDisp dispid 98;
    property DoObjValueChanged: WordBool dispid 99;
    property ScrollToLastRC: WordBool dispid 100;
    property Modified: WordBool dispid 101;
    property DoObjGotFocus: WordBool dispid 102;
    property DoObjLostFocus: WordBool dispid 103;
    property PrintDevMode: OLE_HANDLE dispid 104;
    property NumSheets: Integer dispid 105;
    property Sheet: Integer dispid 106;
    property ColWidthUnits: Smallint dispid 107;
    property ShowTypeMarkers: WordBool dispid 108;
    property ShowTabs: Smallint dispid 109;
    property ShowEditBar: WordBool dispid 110;
    property ShowEditBarCellRef: WordBool dispid 111;
    property AllowDesigner: WordBool dispid 1;
    property hWnd: OLE_HANDLE dispid -515;
    property AllowAutoFill: WordBool dispid 112;
    property ColText[nCol: Integer]: WideString dispid 272;
    property DefinedName[const pName: WideString]: WideString dispid 273;
    property EntryRC[nRow: Integer; nCol: Integer]: WideString dispid 274;
    property FormattedTextRC[nRow: Integer; nCol: Integer]: WideString dispid 275;
    property FormulaRC[nRow: Integer; nCol: Integer]: WideString dispid 276;
    property LastColForRow[nRow: Integer]: Integer dispid 277;
    property LogicalRC[nRow: Integer; nCol: Integer]: WordBool dispid 278;
    property NumberRC[nRow: Integer; nCol: Integer]: Double dispid 279;
    property RowText[nRow: Integer]: WideString dispid 280;
    property TextRC[nRow: Integer; nCol: Integer]: WideString dispid 281;
    property TypeRC[nRow: Integer; nCol: Integer]: Smallint dispid 282;
    procedure EditPasteValues; dispid 113;
    procedure GetAlignment(var pHorizontal: Smallint; var pWordWrap: WordBool; 
                           var pVertical: Smallint; var pOrientation: Smallint); dispid 114;
    procedure GetBorder(var pLeft: Smallint; var pRight: Smallint; var pTop: Smallint; 
                        var pBottom: Smallint; var pShade: Smallint; var pcrLeft: OLE_COLOR; 
                        var pcrRight: OLE_COLOR; var pcrTop: OLE_COLOR; var pcrBottom: OLE_COLOR); dispid 115;
    procedure GetFont(var pName: WideString; var pSize: Smallint; var pBold: WordBool; 
                      var pItalic: WordBool; var pUnderline: WordBool; var pStrikeout: WordBool; 
                      var pcrColor: OLE_COLOR; var pOutline: WordBool; var pShadow: WordBool); dispid 116;
    procedure GetLineStyle(var pStyle: Smallint; var pcrColor: OLE_COLOR; var pWeight: Smallint); dispid 117;
    procedure GetPattern(var pPattern: Smallint; var pcrFG: OLE_COLOR; var pcrBG: OLE_COLOR); dispid 118;
    procedure GetProtection(var pLocked: WordBool; var pHidden: WordBool); dispid 119;
    procedure GetTabbedText(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                            bValuesOnly: WordBool; var phText: OLE_HANDLE); dispid 120;
    procedure SetTabbedText(nStartRow: Integer; nStartCol: Integer; var pRows: Integer; 
                            var pCols: Integer; bValuesOnly: WordBool; const pText: WideString); dispid 121;
    procedure AddColPageBreak(nCol: Integer); dispid 122;
    procedure AddPageBreak; dispid 123;
    procedure AddRowPageBreak(nRow: Integer); dispid 124;
    procedure AddSelection(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer); dispid 125;
    procedure Attach(const pTitle: WideString); dispid 126;
    procedure AttachToSS(hSrcSS: Integer); dispid 127;
    procedure CalculationDlg; dispid 128;
    procedure CancelEdit; dispid 129;
    procedure CheckRecalc; dispid 130;
    procedure ClearClipboard; dispid 131;
    procedure ClearRange(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; ClearType: Smallint); dispid 132;
    procedure ColorPaletteDlg; dispid 133;
    procedure ColWidthDlg; dispid 134;
    procedure CopyAll(hSrcSS: Integer); dispid 135;
    procedure CopyRange(nDstR1: Integer; nDstC1: Integer; nDstR2: Integer; nDstC2: Integer; 
                        hSrcSS: Integer; nSrcR1: Integer; nSrcC1: Integer; nSrcR2: Integer; 
                        nSrcC2: Integer); dispid 136;
    procedure DefinedNameDlg; dispid 137;
    procedure DeleteDefinedName(const pName: WideString); dispid 138;
    procedure DeleteRange(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                          ShiftType: Smallint); dispid 139;
    procedure Draw(hDC: OLE_HANDLE; x: Integer; y: Integer; cx: Integer; cy: Integer; 
                   nRow: Integer; nCol: Integer; var pRows: Integer; var pCols: Integer; 
                   nFixedRow: Integer; nFixedCol: Integer; nFixedRows: Integer; nFixedCols: Integer); dispid 140;
    procedure EditClear(ClearType: Smallint); dispid 141;
    procedure EditCopy; dispid 142;
    procedure EditCopyDown; dispid 143;
    procedure EditCopyRight; dispid 144;
    procedure EditCut; dispid 145;
    procedure EditDelete(ShiftType: Smallint); dispid 146;
    procedure EditInsert(ShiftType: Smallint); dispid 147;
    procedure EditPaste; dispid 148;
    procedure EndEdit; dispid 149;
    procedure FilePageSetupDlg; dispid 150;
    procedure FilePrint(bShowPrintDlg: WordBool); dispid 151;
    procedure FilePrintSetupDlg; dispid 152;
    procedure FormatAlignmentDlg; dispid 153;
    procedure FormatBorderDlg; dispid 154;
    procedure FormatCurrency0; dispid 155;
    procedure FormatCurrency2; dispid 156;
    procedure FormatDefaultFontDlg; dispid 157;
    procedure FormatFixed; dispid 158;
    procedure FormatFixed2; dispid 159;
    procedure FormatFontDlg; dispid 160;
    procedure FormatFraction; dispid 161;
    procedure FormatGeneral; dispid 162;
    procedure FormatHmmampm; dispid 163;
    procedure FormatMdyy; dispid 164;
    procedure FormatNumberDlg; dispid 165;
    procedure FormatPatternDlg; dispid 166;
    procedure FormatPercent; dispid 167;
    procedure FormatScientific; dispid 168;
    procedure GetActiveCell(var pRow: Integer; var pCol: Integer); dispid 169;
    property ColWidth[nCol: Integer]: Smallint dispid 283;
    property RowHeight[nRow: Integer]: Smallint dispid 284;
    procedure GetDefaultFont(var pBuf: WideString; var pSize: Smallint); dispid 170;
    procedure GetHdrSelection(var pTopLeftHdr: WordBool; var pRowHdr: WordBool; 
                              var pColHdr: WordBool); dispid 171;
    procedure GetIteration(var pIteration: WordBool; var pMaxIterations: Smallint; 
                           var pMaxChange: Double); dispid 172;
    procedure GetPrintScale(var pScale: Smallint; var pFitToPage: WordBool; var pVPages: Integer; 
                            var pHPages: Integer); dispid 173;
    procedure GetSelection(nSelection: Smallint; var pR1: Integer; var pC1: Integer; 
                           var pR2: Integer; var pC2: Integer); dispid 174;
    procedure GotoDlg; dispid 175;
    procedure HeapMin; dispid 176;
    procedure InitTable; dispid 177;
    procedure InsertRange(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                          ShiftType: Smallint); dispid 178;
    procedure LineStyleDlg; dispid 179;
    procedure MoveRange(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                        nRowOffset: Integer; nColOffset: Integer); dispid 180;
    procedure ObjAddItem(ID: Integer; const pItem: WideString); dispid 181;
    procedure ObjAddSelection(ID: Integer); dispid 182;
    procedure ObjBringToFront; dispid 183;
    procedure ObjDeleteItem(ID: Integer; nItem: Smallint); dispid 184;
    procedure ObjGetCell(ID: Integer; var pControlCellType: Smallint; var pRow: Integer; 
                         var pCol: Integer); dispid 185;
    procedure ObjGetPos(ID: Integer; var pX1: Single; var pY1: Single; var pX2: Single; 
                        var pY2: Single); dispid 186;
    procedure ObjGetSelection(nSelection: Smallint; var pID: Integer); dispid 187;
    procedure ObjInsertItem(ID: Integer; nItem: Smallint; const pItem: WideString); dispid 188;
    procedure ObjNameDlg; dispid 189;
    procedure ObjNew(ObjType: Smallint; nX1: Single; nY1: Single; nX2: Single; nY2: Single; 
                     var pID: Integer); dispid 190;
    procedure ObjNewPicture(nX1: Single; nY1: Single; nX2: Single; nY2: Single; var pID: Integer; 
                            hMF: OLE_HANDLE; nMapMode: Integer; nWndExtentX: Integer; 
                            nWndExtentY: Integer); dispid 191;
    procedure ObjOptionsDlg; dispid 192;
    procedure ObjPosToTwips(nX1: Single; nY1: Single; nX2: Single; nY2: Single; var pX: Integer; 
                            var pY: Integer; var pCX: Integer; var pCY: Integer; 
                            var pShown: Smallint); dispid 193;
    procedure ObjSendToBack; dispid 194;
    procedure ObjSetCell(ID: Integer; ControlCellType: Smallint; nRow: Integer; nCol: Integer); dispid 195;
    procedure ObjSetPicture(ID: Integer; hMF: OLE_HANDLE; nMapMode: Smallint; nWndExtentX: Integer; 
                            nWndExtentY: Integer); dispid 196;
    procedure ObjSetPos(ID: Integer; nX1: Single; nY1: Single; nX2: Single; nY2: Single); dispid 197;
    procedure ObjSetSelection(ID: Integer); dispid 198;
    procedure OpenFileDlg(const pTitle: WideString; hWndParent: OLE_HANDLE; var pBuf: WideString); dispid 199;
    procedure ProtectionDlg; dispid 200;
    procedure RangeToTwips(nRow1: Integer; nCol1: Integer; nRow2: Integer; nCol2: Integer; 
                           var pX: Integer; var pY: Integer; var pCX: Integer; var pCY: Integer; 
                           var pShown: Smallint); dispid 201;
    procedure Read(const pPathName: WideString; var pFileType: Smallint); dispid 202;
    procedure ReadFromBlob(hBlob: OLE_HANDLE; nReservedBytes: Smallint); dispid 203;
    procedure Recalc; dispid 204;
    procedure RemoveColPageBreak(nCol: Integer); dispid 205;
    procedure RemovePageBreak; dispid 206;
    procedure RemoveRowPageBreak(nRow: Integer); dispid 207;
    procedure RowHeightDlg; dispid 208;
    procedure SaveFileDlg(const pTitle: WideString; var pBuf: WideString; var pFileType: Smallint); dispid 209;
    procedure SaveWindowInfo; dispid 210;
    procedure SetActiveCell(nRow: Integer; nCol: Integer); dispid 211;
    procedure SetAlignment(HAlign: Smallint; bWordWrap: WordBool; VAlign: Smallint; 
                           nOrientation: Smallint); dispid 212;
    procedure SetBorder(nOutline: Smallint; nLeft: Smallint; nRight: Smallint; nTop: Smallint; 
                        nBottom: Smallint; nShade: Smallint; crOutline: OLE_COLOR; 
                        crLeft: OLE_COLOR; crRight: OLE_COLOR; crTop: OLE_COLOR; crBottom: OLE_COLOR); dispid 213;
    procedure SetColWidth(nC1: Integer; nC2: Integer; nWidth: Smallint; bDefColWidth: WordBool); dispid 214;
    procedure SetColWidthAuto(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                              bSetDefaults: WordBool); dispid 215;
    procedure SetDefaultFont(const pName: WideString; nSize: Smallint); dispid 216;
    procedure SetFont(const pName: WideString; nSize: Smallint; bBold: WordBool; bItalic: WordBool; 
                      bUnderline: WordBool; bStrikeout: WordBool; crColor: OLE_COLOR; 
                      bOutline: WordBool; bShadow: WordBool); dispid 217;
    procedure SetHdrSelection(bTopLeftHdr: WordBool; bRowHdr: WordBool; bColHdr: WordBool); dispid 218;
    procedure SetIteration(bIteration: WordBool; nMaxIterations: Smallint; nMaxChange: Double); dispid 219;
    procedure SetLineStyle(nStyle: Smallint; crColor: OLE_COLOR; nWeight: Smallint); dispid 220;
    procedure SetPattern(nPattern: Smallint; crFG: OLE_COLOR; crBG: OLE_COLOR); dispid 221;
    procedure SetPrintAreaFromSelection; dispid 222;
    procedure SetPrintScale(nScale: Smallint; bFitToPage: WordBool; nVPages: Smallint; 
                            nHPages: Smallint); dispid 223;
    procedure SetPrintTitlesFromSelection; dispid 224;
    procedure SetProtection(bLocked: WordBool; bHidden: WordBool); dispid 225;
    procedure SetRowHeight(nR1: Integer; nR2: Integer; nHeight: Smallint; bDefRowHeight: WordBool); dispid 226;
    procedure SetRowHeightAuto(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                               bSetDefaults: WordBool); dispid 227;
    procedure SetSelection(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer); dispid 228;
    procedure ShowActiveCell; dispid 229;
    procedure Sort3(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; bSortByRows: WordBool; 
                    nKey1: Integer; nKey2: Integer; nKey3: Integer); dispid 230;
    procedure SortDlg; dispid 231;
    procedure StartEdit(bClear: WordBool; bInCellEditFocus: WordBool; bArrowsExitEditMode: WordBool); dispid 232;
    procedure SwapTables(hSS2: Integer); dispid 233;
    procedure TransactCommit; dispid 234;
    procedure TransactRollback; dispid 235;
    procedure TransactStart; dispid 236;
    procedure TwipsToRC(x: Integer; y: Integer; var pRow: Integer; var pCol: Integer); dispid 237;
    procedure SSUpdate; dispid 238;
    function  SSVersion: Smallint; dispid 239;
    procedure Write(const pPathName: WideString; FileType: Smallint); dispid 240;
    procedure WriteToBlob(var phBlob: OLE_HANDLE; nReservedBytes: Smallint); dispid 241;
    procedure SetRowHidden(nRow1: Integer; nRow2: Integer; bHidden: WordBool); dispid 242;
    procedure SetColHidden(nCol1: Integer; nCol2: Integer; bHidden: WordBool); dispid 243;
    procedure SetColWidthTwips(nCol1: Integer; nCol2: Integer; nWidth: Integer; 
                               bDefColWidth: WordBool); dispid 244;
    property DefinedNameByIndex[nName: Integer]: WideString dispid 285;
    property SheetName[nSheet: Integer]: WideString dispid 286;
    property PaletteEntry[nEntry: Integer]: OLE_COLOR dispid 287;
    procedure EditInsertSheets; dispid 245;
    procedure EditDeleteSheets; dispid 246;
    procedure InsertSheets(nSheet: Integer; nSheets: Integer); dispid 247;
    procedure DeleteSheets(nSheet: Integer; nSheets: Integer); dispid 248;
    procedure Refresh; dispid -550;
    property ColWidthTwips[Col: Integer]: Smallint dispid 288;
    function  NextColPageBreak(Col: Integer): Integer; dispid 249;
    function  NextRowPageBreak(Row: Integer): Integer; dispid 250;
    function  ObjFirstID: Integer; dispid 251;
    function  ObjNextID(ID: Integer): Integer; dispid 252;
    function  ObjGetItemCount(ID: Integer): Smallint; dispid 253;
    function  ObjGetType(ID: Integer): Smallint; dispid 254;
    function  ObjGetSelectionCount: Smallint; dispid 255;
    function  FormatRCNr(Row: Integer; Col: Integer; DoAbsolute: WordBool): WideString; dispid 256;
    function  SS: Integer; dispid 257;
    function  ErrorNumberToText(SSError: Integer): WideString; dispid 258;
    property ObjItem[ID: Integer; Item: Smallint]: WideString dispid 289;
    property ObjItems[ID: Integer]: WideString dispid 290;
    property ObjName[ID: Integer]: WideString dispid 291;
    property ObjText[ID: Integer]: WideString dispid 292;
    property ObjValue[ID: Integer]: Smallint dispid 293;
    property ObjVisible[ID: Integer]: WordBool dispid 294;
    function  ObjNameToID(const Name: WideString): Integer; dispid 259;
    function  DefinedNameCount: Integer; dispid 260;
    property AutoFillItems[Index: Smallint]: WideString dispid 295;
    procedure ValidationRuleDlg; dispid 261;
    procedure SetValidationRule(const Rule: WideString; const Text: WideString); dispid 262;
    procedure GetValidationRule(var Rule: WideString; var Text: WideString); dispid 263;
    function  AutoFillItemsCount: Smallint; dispid 264;
    procedure CopyRangeEx(nDstSheet: Integer; nDstR1: Integer; nDstC1: Integer; nDstR2: Integer; 
                          nDstC2: Integer; hSrcSS: Integer; nSrcSheet: Integer; nSrcR1: Integer; 
                          nSrcC1: Integer; nSrcR2: Integer; nSrcC2: Integer); dispid 265;
    procedure Sort(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; bSortByRows: WordBool; 
                   Keys: OleVariant); dispid 266;
    property ColHidden[nCol: Integer]: WordBool dispid 296;
    property RowHidden[nRow: Integer]: WordBool dispid 297;
    procedure DeleteAutoFillItems(nIndex: Smallint); dispid 267;
    procedure ODBCConnect(var pConnect: WideString; bShowErrors: WordBool; var pRetCode: Smallint); dispid 268;
    procedure ODBCDisconnect; dispid 269;
    procedure ODBCQuery(var pQuery: WideString; nRow: Integer; nCol: Integer; 
                        bForceShowDlg: WordBool; var pSetColNames: WordBool; 
                        var pSetColFormats: WordBool; var pSetColWidths: WordBool; 
                        var pSetMaxRC: WordBool; var pRetCode: Smallint); dispid 270;
    property SheetSelected[nSheet: Integer]: WordBool dispid 298;
    procedure LaunchDesigner; dispid 271;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  _DVCF1Events
// Flags:     (4096) Dispatchable
// GUID:      {042BADC7-5E58-11CE-B610-524153480001}
// *********************************************************************//
  _DVCF1Events = dispinterface
    ['{042BADC7-5E58-11CE-B610-524153480001}']
    procedure Click(nRow: Integer; nCol: Integer); dispid 1;
    procedure DblClick(nRow: Integer; nCol: Integer); dispid 2;
    procedure CancelEdit; dispid 3;
    procedure SelChange; dispid 4;
    procedure StartEdit(var EditString: WideString; var Cancel: Smallint); dispid 5;
    procedure EndEdit(var EditString: WideString; var Cancel: Smallint); dispid 6;
    procedure StartRecalc; dispid 7;
    procedure EndRecalc; dispid 8;
    procedure TopLeftChanged; dispid 9;
    procedure ObjClick(var ObjName: WideString; ObjID: Integer); dispid 10;
    procedure ObjDblClick(var ObjName: WideString; ObjID: Integer); dispid 11;
    procedure RClick(nRow: Integer; nCol: Integer); dispid 12;
    procedure RDblClick(nRow: Integer; nCol: Integer); dispid 13;
    procedure ObjValueChanged(var ObjName: WideString; ObjID: Integer); dispid 14;
    procedure Modified; dispid 15;
    procedure MouseDown(Button: Smallint; Shift: Smallint; x: OLE_XPOS_PIXELS; y: OLE_YPOS_PIXELS); dispid -605;
    procedure MouseUp(Button: Smallint; Shift: Smallint; x: OLE_XPOS_PIXELS; y: OLE_YPOS_PIXELS); dispid -607;
    procedure MouseMove(Button: Smallint; Shift: Smallint; x: OLE_XPOS_PIXELS; y: OLE_YPOS_PIXELS); dispid -606;
    procedure ObjGotFocus(var ObjName: WideString; ObjID: Integer); dispid 16;
    procedure ObjLostFocus(var ObjName: WideString; ObjID: Integer); dispid 17;
    procedure ValidationFailed(var pEntry: WideString; nSheet: Integer; nRow: Integer; 
                               nCol: Integer; var pShowMessage: WideString; var pAction: Smallint); dispid 18;
    procedure KeyPress(var KeyAscii: Smallint); dispid -603;
    procedure KeyDown(var KeyCode: Smallint; Shift: Smallint); dispid -602;
    procedure KeyUp(var KeyCode: Smallint; Shift: Smallint); dispid -604;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TF1Book
// Help String      : VCI Formula One Workbook
// Default Interface: _DVCF1
// Def. Intf. DISP? : Yes
// Event   Interface: _DVCF1Events
// TypeFlags        : (38) CanCreate Licensed Control
// *********************************************************************//
  TF1BookClick = procedure(Sender: TObject; nRow: Integer; nCol: Integer) of object;
  TF1BookDblClick = procedure(Sender: TObject; nRow: Integer; nCol: Integer) of object;
  TF1BookStartEdit = procedure(Sender: TObject; var EditString: WideString; var Cancel: Smallint) of object;
  TF1BookEndEdit = procedure(Sender: TObject; var EditString: WideString; var Cancel: Smallint) of object;
  TF1BookObjClick = procedure(Sender: TObject; var ObjName: WideString; ObjID: Integer) of object;
  TF1BookObjDblClick = procedure(Sender: TObject; var ObjName: WideString; ObjID: Integer) of object;
  TF1BookRClick = procedure(Sender: TObject; nRow: Integer; nCol: Integer) of object;
  TF1BookRDblClick = procedure(Sender: TObject; nRow: Integer; nCol: Integer) of object;
  TF1BookObjValueChanged = procedure(Sender: TObject; var ObjName: WideString; ObjID: Integer) of object;
  TF1BookObjGotFocus = procedure(Sender: TObject; var ObjName: WideString; ObjID: Integer) of object;
  TF1BookObjLostFocus = procedure(Sender: TObject; var ObjName: WideString; ObjID: Integer) of object;
  TF1BookValidationFailed = procedure(Sender: TObject; var pEntry: WideString; nSheet: Integer; 
                                                       nRow: Integer; nCol: Integer; 
                                                       var pShowMessage: WideString; 
                                                       var pAction: Smallint) of object;

  TF1Book = class(TOleControl)
  private
    FOnClick: TF1BookClick;
    FOnDblClick: TF1BookDblClick;
    FOnCancelEdit: TNotifyEvent;
    FOnSelChange: TNotifyEvent;
    FOnStartEdit: TF1BookStartEdit;
    FOnEndEdit: TF1BookEndEdit;
    FOnStartRecalc: TNotifyEvent;
    FOnEndRecalc: TNotifyEvent;
    FOnTopLeftChanged: TNotifyEvent;
    FOnObjClick: TF1BookObjClick;
    FOnObjDblClick: TF1BookObjDblClick;
    FOnRClick: TF1BookRClick;
    FOnRDblClick: TF1BookRDblClick;
    FOnObjValueChanged: TF1BookObjValueChanged;
    FOnModified: TNotifyEvent;
    FOnObjGotFocus: TF1BookObjGotFocus;
    FOnObjLostFocus: TF1BookObjLostFocus;
    FOnValidationFailed: TF1BookValidationFailed;
    FIntf: _DVCF1;
    function  GetControlInterface: _DVCF1;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function  Get_ColText(nCol: Integer): WideString;
    procedure Set_ColText(nCol: Integer; const Param2: WideString);
    function  Get_DefinedName(const pName: WideString): WideString;
    procedure Set_DefinedName(const pName: WideString; const Param2: WideString);
    function  Get_EntryRC(nRow: Integer; nCol: Integer): WideString;
    procedure Set_EntryRC(nRow: Integer; nCol: Integer; const Param3: WideString);
    function  Get_FormattedTextRC(nRow: Integer; nCol: Integer): WideString;
    procedure Set_FormattedTextRC(nRow: Integer; nCol: Integer; const Param3: WideString);
    function  Get_FormulaRC(nRow: Integer; nCol: Integer): WideString;
    procedure Set_FormulaRC(nRow: Integer; nCol: Integer; const Param3: WideString);
    function  Get_LastColForRow(nRow: Integer): Integer;
    procedure Set_LastColForRow(nRow: Integer; Param2: Integer);
    function  Get_LogicalRC(nRow: Integer; nCol: Integer): WordBool;
    procedure Set_LogicalRC(nRow: Integer; nCol: Integer; Param3: WordBool);
    function  Get_NumberRC(nRow: Integer; nCol: Integer): Double;
    procedure Set_NumberRC(nRow: Integer; nCol: Integer; Param3: Double);
    function  Get_RowText(nRow: Integer): WideString;
    procedure Set_RowText(nRow: Integer; const Param2: WideString);
    function  Get_TextRC(nRow: Integer; nCol: Integer): WideString;
    procedure Set_TextRC(nRow: Integer; nCol: Integer; const Param3: WideString);
    function  Get_TypeRC(nRow: Integer; nCol: Integer): Smallint;
    procedure Set_TypeRC(nRow: Integer; nCol: Integer; Param3: Smallint);
    function  Get_ColWidth(nCol: Integer): Smallint;
    procedure Set_ColWidth(nCol: Integer; Param2: Smallint);
    function  Get_RowHeight(nRow: Integer): Smallint;
    procedure Set_RowHeight(nRow: Integer; Param2: Smallint);
    function  Get_DefinedNameByIndex(nName: Integer): WideString;
    procedure Set_DefinedNameByIndex(nName: Integer; const Param2: WideString);
    function  Get_SheetName(nSheet: Integer): WideString;
    procedure Set_SheetName(nSheet: Integer; const Param2: WideString);
    function  Get_PaletteEntry(nEntry: Integer): OLE_COLOR;
    procedure Set_PaletteEntry(nEntry: Integer; Param2: OLE_COLOR);
    function  Get_ColWidthTwips(Col: Integer): Smallint;
    procedure Set_ColWidthTwips(Col: Integer; Param2: Smallint);
    function  Get_ObjItem(ID: Integer; Item: Smallint): WideString;
    procedure Set_ObjItem(ID: Integer; Item: Smallint; const Param3: WideString);
    function  Get_ObjItems(ID: Integer): WideString;
    procedure Set_ObjItems(ID: Integer; const Param2: WideString);
    function  Get_ObjName(ID: Integer): WideString;
    procedure Set_ObjName(ID: Integer; const Param2: WideString);
    function  Get_ObjText(ID: Integer): WideString;
    procedure Set_ObjText(ID: Integer; const Param2: WideString);
    function  Get_ObjValue(ID: Integer): Smallint;
    procedure Set_ObjValue(ID: Integer; Param2: Smallint);
    function  Get_ObjVisible(ID: Integer): WordBool;
    procedure Set_ObjVisible(ID: Integer; Param2: WordBool);
    function  Get_AutoFillItems(Index: Smallint): WideString;
    procedure Set_AutoFillItems(Index: Smallint; const Param2: WideString);
    function  Get_ColHidden(nCol: Integer): WordBool;
    procedure Set_ColHidden(nCol: Integer; Param2: WordBool);
    function  Get_RowHidden(nRow: Integer): WordBool;
    procedure Set_RowHidden(nRow: Integer; Param2: WordBool);
    function  Get_SheetSelected(nSheet: Integer): WordBool;
    procedure Set_SheetSelected(nSheet: Integer; Param2: WordBool);
  public
    procedure EditPasteValues;
    procedure GetAlignment(var pHorizontal: Smallint; var pWordWrap: WordBool; 
                           var pVertical: Smallint; var pOrientation: Smallint);
    procedure GetBorder(var pLeft: Smallint; var pRight: Smallint; var pTop: Smallint; 
                        var pBottom: Smallint; var pShade: Smallint; var pcrLeft: OLE_COLOR; 
                        var pcrRight: OLE_COLOR; var pcrTop: OLE_COLOR; var pcrBottom: OLE_COLOR);
    procedure GetFont(var pName: WideString; var pSize: Smallint; var pBold: WordBool; 
                      var pItalic: WordBool; var pUnderline: WordBool; var pStrikeout: WordBool; 
                      var pcrColor: OLE_COLOR; var pOutline: WordBool; var pShadow: WordBool);
    procedure GetLineStyle(var pStyle: Smallint; var pcrColor: OLE_COLOR; var pWeight: Smallint);
    procedure GetPattern(var pPattern: Smallint; var pcrFG: OLE_COLOR; var pcrBG: OLE_COLOR);
    procedure GetProtection(var pLocked: WordBool; var pHidden: WordBool);
    procedure GetTabbedText(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                            bValuesOnly: WordBool; var phText: OLE_HANDLE);
    procedure SetTabbedText(nStartRow: Integer; nStartCol: Integer; var pRows: Integer; 
                            var pCols: Integer; bValuesOnly: WordBool; const pText: WideString);
    procedure AddColPageBreak(nCol: Integer);
    procedure AddPageBreak;
    procedure AddRowPageBreak(nRow: Integer);
    procedure AddSelection(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer);
    procedure Attach(const pTitle: WideString);
    procedure AttachToSS(hSrcSS: Integer);
    procedure CalculationDlg;
    procedure CancelEdit;
    procedure CheckRecalc;
    procedure ClearClipboard;
    procedure ClearRange(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; ClearType: Smallint);
    procedure ColorPaletteDlg;
    procedure ColWidthDlg;
    procedure CopyAll(hSrcSS: Integer);
    procedure CopyRange(nDstR1: Integer; nDstC1: Integer; nDstR2: Integer; nDstC2: Integer; 
                        hSrcSS: Integer; nSrcR1: Integer; nSrcC1: Integer; nSrcR2: Integer; 
                        nSrcC2: Integer);
    procedure DefinedNameDlg;
    procedure DeleteDefinedName(const pName: WideString);
    procedure DeleteRange(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                          ShiftType: Smallint);
    procedure Draw(hDC: OLE_HANDLE; x: Integer; y: Integer; cx: Integer; cy: Integer; 
                   nRow: Integer; nCol: Integer; var pRows: Integer; var pCols: Integer; 
                   nFixedRow: Integer; nFixedCol: Integer; nFixedRows: Integer; nFixedCols: Integer);
    procedure EditClear(ClearType: Smallint);
    procedure EditCopy;
    procedure EditCopyDown;
    procedure EditCopyRight;
    procedure EditCut;
    procedure EditDelete(ShiftType: Smallint);
    procedure EditInsert(ShiftType: Smallint);
    procedure EditPaste;
    procedure EndEdit;
    procedure FilePageSetupDlg;
    procedure FilePrint(bShowPrintDlg: WordBool);
    procedure FilePrintSetupDlg;
    procedure FormatAlignmentDlg;
    procedure FormatBorderDlg;
    procedure FormatCurrency0;
    procedure FormatCurrency2;
    procedure FormatDefaultFontDlg;
    procedure FormatFixed;
    procedure FormatFixed2;
    procedure FormatFontDlg;
    procedure FormatFraction;
    procedure FormatGeneral;
    procedure FormatHmmampm;
    procedure FormatMdyy;
    procedure FormatNumberDlg;
    procedure FormatPatternDlg;
    procedure FormatPercent;
    procedure FormatScientific;
    procedure GetActiveCell(var pRow: Integer; var pCol: Integer);
    procedure GetDefaultFont(var pBuf: WideString; var pSize: Smallint);
    procedure GetHdrSelection(var pTopLeftHdr: WordBool; var pRowHdr: WordBool; 
                              var pColHdr: WordBool);
    procedure GetIteration(var pIteration: WordBool; var pMaxIterations: Smallint; 
                           var pMaxChange: Double);
    procedure GetPrintScale(var pScale: Smallint; var pFitToPage: WordBool; var pVPages: Integer; 
                            var pHPages: Integer);
    procedure GetSelection(nSelection: Smallint; var pR1: Integer; var pC1: Integer; 
                           var pR2: Integer; var pC2: Integer);
    procedure GotoDlg;
    procedure HeapMin;
    procedure InitTable;
    procedure InsertRange(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                          ShiftType: Smallint);
    procedure LineStyleDlg;
    procedure MoveRange(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                        nRowOffset: Integer; nColOffset: Integer);
    procedure ObjAddItem(ID: Integer; const pItem: WideString);
    procedure ObjAddSelection(ID: Integer);
    procedure ObjBringToFront;
    procedure ObjDeleteItem(ID: Integer; nItem: Smallint);
    procedure ObjGetCell(ID: Integer; var pControlCellType: Smallint; var pRow: Integer; 
                         var pCol: Integer);
    procedure ObjGetPos(ID: Integer; var pX1: Single; var pY1: Single; var pX2: Single; 
                        var pY2: Single);
    procedure ObjGetSelection(nSelection: Smallint; var pID: Integer);
    procedure ObjInsertItem(ID: Integer; nItem: Smallint; const pItem: WideString);
    procedure ObjNameDlg;
    procedure ObjNew(ObjType: Smallint; nX1: Single; nY1: Single; nX2: Single; nY2: Single; 
                     var pID: Integer);
    procedure ObjNewPicture(nX1: Single; nY1: Single; nX2: Single; nY2: Single; var pID: Integer; 
                            hMF: OLE_HANDLE; nMapMode: Integer; nWndExtentX: Integer; 
                            nWndExtentY: Integer);
    procedure ObjOptionsDlg;
    procedure ObjPosToTwips(nX1: Single; nY1: Single; nX2: Single; nY2: Single; var pX: Integer; 
                            var pY: Integer; var pCX: Integer; var pCY: Integer; 
                            var pShown: Smallint);
    procedure ObjSendToBack;
    procedure ObjSetCell(ID: Integer; ControlCellType: Smallint; nRow: Integer; nCol: Integer);
    procedure ObjSetPicture(ID: Integer; hMF: OLE_HANDLE; nMapMode: Smallint; nWndExtentX: Integer; 
                            nWndExtentY: Integer);
    procedure ObjSetPos(ID: Integer; nX1: Single; nY1: Single; nX2: Single; nY2: Single);
    procedure ObjSetSelection(ID: Integer);
    procedure OpenFileDlg(const pTitle: WideString; hWndParent: OLE_HANDLE; var pBuf: WideString);
    procedure ProtectionDlg;
    procedure RangeToTwips(nRow1: Integer; nCol1: Integer; nRow2: Integer; nCol2: Integer; 
                           var pX: Integer; var pY: Integer; var pCX: Integer; var pCY: Integer; 
                           var pShown: Smallint);
    procedure Read(const pPathName: WideString; var pFileType: Smallint);
    procedure ReadFromBlob(hBlob: OLE_HANDLE; nReservedBytes: Smallint);
    procedure Recalc;
    procedure RemoveColPageBreak(nCol: Integer);
    procedure RemovePageBreak;
    procedure RemoveRowPageBreak(nRow: Integer);
    procedure RowHeightDlg;
    procedure SaveFileDlg(const pTitle: WideString; var pBuf: WideString; var pFileType: Smallint);
    procedure SaveWindowInfo;
    procedure SetActiveCell(nRow: Integer; nCol: Integer);
    procedure SetAlignment(HAlign: Smallint; bWordWrap: WordBool; VAlign: Smallint; 
                           nOrientation: Smallint);
    procedure SetBorder(nOutline: Smallint; nLeft: Smallint; nRight: Smallint; nTop: Smallint; 
                        nBottom: Smallint; nShade: Smallint; crOutline: OLE_COLOR; 
                        crLeft: OLE_COLOR; crRight: OLE_COLOR; crTop: OLE_COLOR; crBottom: OLE_COLOR);
    procedure SetColWidth(nC1: Integer; nC2: Integer; nWidth: Smallint; bDefColWidth: WordBool);
    procedure SetColWidthAuto(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                              bSetDefaults: WordBool);
    procedure SetDefaultFont(const pName: WideString; nSize: Smallint);
    procedure SetFont(const pName: WideString; nSize: Smallint; bBold: WordBool; bItalic: WordBool; 
                      bUnderline: WordBool; bStrikeout: WordBool; crColor: OLE_COLOR; 
                      bOutline: WordBool; bShadow: WordBool);
    procedure SetHdrSelection(bTopLeftHdr: WordBool; bRowHdr: WordBool; bColHdr: WordBool);
    procedure SetIteration(bIteration: WordBool; nMaxIterations: Smallint; nMaxChange: Double);
    procedure SetLineStyle(nStyle: Smallint; crColor: OLE_COLOR; nWeight: Smallint);
    procedure SetPattern(nPattern: Smallint; crFG: OLE_COLOR; crBG: OLE_COLOR);
    procedure SetPrintAreaFromSelection;
    procedure SetPrintScale(nScale: Smallint; bFitToPage: WordBool; nVPages: Smallint; 
                            nHPages: Smallint);
    procedure SetPrintTitlesFromSelection;
    procedure SetProtection(bLocked: WordBool; bHidden: WordBool);
    procedure SetRowHeight(nR1: Integer; nR2: Integer; nHeight: Smallint; bDefRowHeight: WordBool);
    procedure SetRowHeightAuto(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                               bSetDefaults: WordBool);
    procedure SetSelection(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer);
    procedure ShowActiveCell;
    procedure Sort3(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; bSortByRows: WordBool; 
                    nKey1: Integer; nKey2: Integer; nKey3: Integer);
    procedure SortDlg;
    procedure StartEdit(bClear: WordBool; bInCellEditFocus: WordBool; bArrowsExitEditMode: WordBool);
    procedure SwapTables(hSS2: Integer);
    procedure TransactCommit;
    procedure TransactRollback;
    procedure TransactStart;
    procedure TwipsToRC(x: Integer; y: Integer; var pRow: Integer; var pCol: Integer);
    procedure SSUpdate;
    function  SSVersion: Smallint;
    procedure Write(const pPathName: WideString; FileType: Smallint);
    procedure WriteToBlob(var phBlob: OLE_HANDLE; nReservedBytes: Smallint);
    procedure SetRowHidden(nRow1: Integer; nRow2: Integer; bHidden: WordBool);
    procedure SetColHidden(nCol1: Integer; nCol2: Integer; bHidden: WordBool);
    procedure SetColWidthTwips(nCol1: Integer; nCol2: Integer; nWidth: Integer; 
                               bDefColWidth: WordBool);
    procedure EditInsertSheets;
    procedure EditDeleteSheets;
    procedure InsertSheets(nSheet: Integer; nSheets: Integer);
    procedure DeleteSheets(nSheet: Integer; nSheets: Integer);
    procedure Refresh;
    function  NextColPageBreak(Col: Integer): Integer;
    function  NextRowPageBreak(Row: Integer): Integer;
    function  ObjFirstID: Integer;
    function  ObjNextID(ID: Integer): Integer;
    function  ObjGetItemCount(ID: Integer): Smallint;
    function  ObjGetType(ID: Integer): Smallint;
    function  ObjGetSelectionCount: Smallint;
    function  FormatRCNr(Row: Integer; Col: Integer; DoAbsolute: WordBool): WideString;
    function  SS: Integer;
    function  ErrorNumberToText(SSError: Integer): WideString;
    function  ObjNameToID(const Name: WideString): Integer;
    function  DefinedNameCount: Integer;
    procedure ValidationRuleDlg;
    procedure SetValidationRule(const Rule: WideString; const Text: WideString);
    procedure GetValidationRule(var Rule: WideString; var Text: WideString);
    function  AutoFillItemsCount: Smallint;
    procedure CopyRangeEx(nDstSheet: Integer; nDstR1: Integer; nDstC1: Integer; nDstR2: Integer; 
                          nDstC2: Integer; hSrcSS: Integer; nSrcSheet: Integer; nSrcR1: Integer; 
                          nSrcC1: Integer; nSrcR2: Integer; nSrcC2: Integer);
    procedure Sort(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; bSortByRows: WordBool; 
                   Keys: OleVariant);
    procedure DeleteAutoFillItems(nIndex: Smallint);
    procedure ODBCConnect(var pConnect: WideString; bShowErrors: WordBool; var pRetCode: Smallint);
    procedure ODBCDisconnect;
    procedure ODBCQuery(var pQuery: WideString; nRow: Integer; nCol: Integer; 
                        bForceShowDlg: WordBool; var pSetColNames: WordBool; 
                        var pSetColFormats: WordBool; var pSetColWidths: WordBool; 
                        var pSetMaxRC: WordBool; var pRetCode: Smallint);
    procedure LaunchDesigner;
    procedure AboutBox;
    property  ControlInterface: _DVCF1 read GetControlInterface;
    property  DefaultInterface: _DVCF1 read GetControlInterface;
    property ColText[nCol: Integer]: WideString read Get_ColText write Set_ColText;
    property DefinedName[const pName: WideString]: WideString read Get_DefinedName write Set_DefinedName;
    property EntryRC[nRow: Integer; nCol: Integer]: WideString read Get_EntryRC write Set_EntryRC;
    property FormattedTextRC[nRow: Integer; nCol: Integer]: WideString read Get_FormattedTextRC write Set_FormattedTextRC;
    property FormulaRC[nRow: Integer; nCol: Integer]: WideString read Get_FormulaRC write Set_FormulaRC;
    property LastColForRow[nRow: Integer]: Integer read Get_LastColForRow write Set_LastColForRow;
    property LogicalRC[nRow: Integer; nCol: Integer]: WordBool read Get_LogicalRC write Set_LogicalRC;
    property NumberRC[nRow: Integer; nCol: Integer]: Double read Get_NumberRC write Set_NumberRC;
    property RowText[nRow: Integer]: WideString read Get_RowText write Set_RowText;
    property TextRC[nRow: Integer; nCol: Integer]: WideString read Get_TextRC write Set_TextRC;
    property TypeRC[nRow: Integer; nCol: Integer]: Smallint read Get_TypeRC write Set_TypeRC;
    property ColWidth[nCol: Integer]: Smallint read Get_ColWidth write Set_ColWidth;
    property RowHeight[nRow: Integer]: Smallint read Get_RowHeight write Set_RowHeight;
    property DefinedNameByIndex[nName: Integer]: WideString read Get_DefinedNameByIndex write Set_DefinedNameByIndex;
    property SheetName[nSheet: Integer]: WideString read Get_SheetName write Set_SheetName;
    property PaletteEntry[nEntry: Integer]: OLE_COLOR read Get_PaletteEntry write Set_PaletteEntry;
    property ColWidthTwips[Col: Integer]: Smallint read Get_ColWidthTwips write Set_ColWidthTwips;
    property ObjItem[ID: Integer; Item: Smallint]: WideString read Get_ObjItem write Set_ObjItem;
    property ObjItems[ID: Integer]: WideString read Get_ObjItems write Set_ObjItems;
    property ObjName[ID: Integer]: WideString read Get_ObjName write Set_ObjName;
    property ObjText[ID: Integer]: WideString read Get_ObjText write Set_ObjText;
    property ObjValue[ID: Integer]: Smallint read Get_ObjValue write Set_ObjValue;
    property ObjVisible[ID: Integer]: WordBool read Get_ObjVisible write Set_ObjVisible;
    property AutoFillItems[Index: Smallint]: WideString read Get_AutoFillItems write Set_AutoFillItems;
    property ColHidden[nCol: Integer]: WordBool read Get_ColHidden write Set_ColHidden;
    property RowHidden[nRow: Integer]: WordBool read Get_RowHidden write Set_RowHidden;
    property SheetSelected[nSheet: Integer]: WordBool read Get_SheetSelected write Set_SheetSelected;
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
    property BackColor: TColor index 3 read GetTColorProp write SetTColorProp stored False;
    property Col: Integer index 4 read GetIntegerProp write SetIntegerProp stored False;
    property Row: Integer index 5 read GetIntegerProp write SetIntegerProp stored False;
    property ShowHScrollBar: Smallint index 6 read GetSmallintProp write SetSmallintProp stored False;
    property Text: WideString index 7 read GetWideStringProp write SetWideStringProp stored False;
    property Number: Double index 8 read GetDoubleProp write SetDoubleProp stored False;
    property Formula: WideString index 9 read GetWideStringProp write SetWideStringProp stored False;
    property FixedCol: Integer index 10 read GetIntegerProp write SetIntegerProp stored False;
    property FixedCols: Integer index 11 read GetIntegerProp write SetIntegerProp stored False;
    property FixedRow: Integer index 12 read GetIntegerProp write SetIntegerProp stored False;
    property FixedRows: Integer index 13 read GetIntegerProp write SetIntegerProp stored False;
    property ShowGridLines: WordBool index 14 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowRowHeading: WordBool index 15 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowSelections: Smallint index 16 read GetSmallintProp write SetSmallintProp stored False;
    property LeftCol: Integer index 17 read GetIntegerProp write SetIntegerProp stored False;
    property MaxCol: Integer index 18 read GetIntegerProp write SetIntegerProp stored False;
    property MaxRow: Integer index 19 read GetIntegerProp write SetIntegerProp stored False;
    property TopRow: Integer index 20 read GetIntegerProp write SetIntegerProp stored False;
    property AllowResize: WordBool index 21 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowSelections: WordBool index 22 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowFormulas: WordBool index 23 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowInCellEditing: WordBool index 24 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowVScrollBar: Smallint index 25 read GetSmallintProp write SetSmallintProp stored False;
    property AllowFillRange: WordBool index 26 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowMoveRange: WordBool index 27 read GetWordBoolProp write SetWordBoolProp stored False;
    property SelStartCol: Integer index 28 read GetIntegerProp write SetIntegerProp stored False;
    property SelStartRow: Integer index 29 read GetIntegerProp write SetIntegerProp stored False;
    property SelEndCol: Integer index 30 read GetIntegerProp write SetIntegerProp stored False;
    property SelEndRow: Integer index 31 read GetIntegerProp write SetIntegerProp stored False;
    property ExtraColor: TColor index 32 read GetTColorProp write SetTColorProp stored False;
    property FileName: WideString index 33 read GetWideStringProp write SetWideStringProp stored False;
    property AutoRecalc: WordBool index 34 read GetWordBoolProp write SetWordBoolProp stored False;
    property PrintGridLines: WordBool index 35 read GetWordBoolProp write SetWordBoolProp stored False;
    property PrintRowHeading: WordBool index 36 read GetWordBoolProp write SetWordBoolProp stored False;
    property PrintHCenter: WordBool index 37 read GetWordBoolProp write SetWordBoolProp stored False;
    property PrintVCenter: WordBool index 38 read GetWordBoolProp write SetWordBoolProp stored False;
    property PrintLeftToRight: WordBool index 39 read GetWordBoolProp write SetWordBoolProp stored False;
    property PrintHeader: WideString index 40 read GetWideStringProp write SetWideStringProp stored False;
    property PrintFooter: WideString index 41 read GetWideStringProp write SetWideStringProp stored False;
    property PrintLeftMargin: Double index 42 read GetDoubleProp write SetDoubleProp stored False;
    property PrintTopMargin: Double index 43 read GetDoubleProp write SetDoubleProp stored False;
    property PrintRightMargin: Double index 44 read GetDoubleProp write SetDoubleProp stored False;
    property PrintBottomMargin: Double index 45 read GetDoubleProp write SetDoubleProp stored False;
    property PrintArea: WideString index 46 read GetWideStringProp write SetWideStringProp stored False;
    property PrintTitles: WideString index 47 read GetWideStringProp write SetWideStringProp stored False;
    property PrintNoColor: WordBool index 48 read GetWordBoolProp write SetWordBoolProp stored False;
    property Selection: WideString index 49 read GetWideStringProp write SetWideStringProp stored False;
    property TableName: WideString index 50 read GetWideStringProp write SetWideStringProp stored False;
    property DoCancelEdit: WordBool index 51 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoSelChange: WordBool index 52 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoStartEdit: WordBool index 53 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoEndEdit: WordBool index 54 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoStartRecalc: WordBool index 55 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoEndRecalc: WordBool index 56 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoClick: WordBool index 57 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoDblClick: WordBool index 58 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowColHeading: WordBool index 59 read GetWordBoolProp write SetWordBoolProp stored False;
    property PrintColHeading: WordBool index 60 read GetWordBoolProp write SetWordBoolProp stored False;
    property Entry: WideString index 61 read GetWideStringProp write SetWideStringProp stored False;
    property Repaint: WordBool index 62 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowArrows: WordBool index 63 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowTabs: WordBool index 64 read GetWordBoolProp write SetWordBoolProp stored False;
    property FormattedText: WideString index 65 read GetWideStringProp write SetWideStringProp stored False;
    property RowMode: WordBool index 66 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowDelete: WordBool index 67 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableProtection: WordBool index 68 read GetWordBoolProp write SetWordBoolProp stored False;
    property MinCol: Integer index 69 read GetIntegerProp write SetIntegerProp stored False;
    property MinRow: Integer index 70 read GetIntegerProp write SetIntegerProp stored False;
    property DoTopLeftChanged: WordBool index 71 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowEditHeaders: WordBool index 72 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoObjClick: WordBool index 73 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoObjDblClick: WordBool index 74 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowObjSelections: WordBool index 75 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoRClick: WordBool index 76 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoRDblClick: WordBool index 77 read GetWordBoolProp write SetWordBoolProp stored False;
    property Clip: WideString index 78 read GetWideStringProp write SetWideStringProp stored False;
    property ClipValues: WideString index 79 read GetWideStringProp write SetWideStringProp stored False;
    property PrintLandscape: WordBool index 80 read GetWordBoolProp write SetWordBoolProp stored False;
    property Enabled: WordBool index -514 read GetWordBoolProp write SetWordBoolProp stored False;
    property BorderStyle: Smallint index -504 read GetSmallintProp write SetSmallintProp stored False;
    property AppName: WideString index 81 read GetWideStringProp write SetWideStringProp stored False;
    property HdrHeight: Smallint index 82 read GetSmallintProp write SetSmallintProp stored False;
    property HdrWidth: Smallint index 83 read GetSmallintProp write SetSmallintProp stored False;
    property NumberFormat: WideString index 84 read GetWideStringProp write SetWideStringProp stored False;
    property TopLeftText: WideString index 85 read GetWideStringProp write SetWideStringProp stored False;
    property EnterMovesDown: WordBool index 86 read GetWordBoolProp write SetWordBoolProp stored False;
    property LastCol: Integer index 87 read GetIntegerProp write SetIntegerProp stored False;
    property LastRow: Integer index 88 read GetIntegerProp write SetIntegerProp stored False;
    property Logical: WordBool index 89 read GetWordBoolProp write SetWordBoolProp stored False;
    property Mode: Smallint index 90 read GetSmallintProp write SetSmallintProp stored False;
    property PolyEditMode: Smallint index 91 read GetSmallintProp write SetSmallintProp stored False;
    property ViewScale: Smallint index 92 read GetSmallintProp write SetSmallintProp stored False;
    property SelectionCount: Smallint index 93 read GetSmallintProp write SetSmallintProp stored False;
    property Title: WideString index 94 read GetWideStringProp write SetWideStringProp stored False;
    property Type_: Smallint index 95 read GetSmallintProp write SetSmallintProp stored False;
    property ShowFormulas: WordBool index 96 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowZeroValues: WordBool index 97 read GetWordBoolProp write SetWordBoolProp stored False;
    property MousePointer: Smallint index 2 read GetSmallintProp write SetSmallintProp stored False;
    property MouseIcon: TPicture index 98 read GetTPictureProp write SetTPictureProp stored False;
    property DoObjValueChanged: WordBool index 99 read GetWordBoolProp write SetWordBoolProp stored False;
    property ScrollToLastRC: WordBool index 100 read GetWordBoolProp write SetWordBoolProp stored False;
    property Modified: WordBool index 101 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoObjGotFocus: WordBool index 102 read GetWordBoolProp write SetWordBoolProp stored False;
    property DoObjLostFocus: WordBool index 103 read GetWordBoolProp write SetWordBoolProp stored False;
    property PrintDevMode: Integer index 104 read GetIntegerProp write SetIntegerProp stored False;
    property NumSheets: Integer index 105 read GetIntegerProp write SetIntegerProp stored False;
    property Sheet: Integer index 106 read GetIntegerProp write SetIntegerProp stored False;
    property ColWidthUnits: Smallint index 107 read GetSmallintProp write SetSmallintProp stored False;
    property ShowTypeMarkers: WordBool index 108 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowTabs: Smallint index 109 read GetSmallintProp write SetSmallintProp stored False;
    property ShowEditBar: WordBool index 110 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowEditBarCellRef: WordBool index 111 read GetWordBoolProp write SetWordBoolProp stored False;
    property AllowDesigner: WordBool index 1 read GetWordBoolProp write SetWordBoolProp stored False;
    property hWnd: Integer index -515 read GetIntegerProp write SetIntegerProp stored False;
    property AllowAutoFill: WordBool index 112 read GetWordBoolProp write SetWordBoolProp stored False;
    property OnClick: TF1BookClick read FOnClick write FOnClick;
    property OnDblClick: TF1BookDblClick read FOnDblClick write FOnDblClick;
    property OnCancelEdit: TNotifyEvent read FOnCancelEdit write FOnCancelEdit;
    property OnSelChange: TNotifyEvent read FOnSelChange write FOnSelChange;
    property OnStartEdit: TF1BookStartEdit read FOnStartEdit write FOnStartEdit;
    property OnEndEdit: TF1BookEndEdit read FOnEndEdit write FOnEndEdit;
    property OnStartRecalc: TNotifyEvent read FOnStartRecalc write FOnStartRecalc;
    property OnEndRecalc: TNotifyEvent read FOnEndRecalc write FOnEndRecalc;
    property OnTopLeftChanged: TNotifyEvent read FOnTopLeftChanged write FOnTopLeftChanged;
    property OnObjClick: TF1BookObjClick read FOnObjClick write FOnObjClick;
    property OnObjDblClick: TF1BookObjDblClick read FOnObjDblClick write FOnObjDblClick;
    property OnRClick: TF1BookRClick read FOnRClick write FOnRClick;
    property OnRDblClick: TF1BookRDblClick read FOnRDblClick write FOnRDblClick;
    property OnObjValueChanged: TF1BookObjValueChanged read FOnObjValueChanged write FOnObjValueChanged;
    property OnModified: TNotifyEvent read FOnModified write FOnModified;
    property OnObjGotFocus: TF1BookObjGotFocus read FOnObjGotFocus write FOnObjGotFocus;
    property OnObjLostFocus: TF1BookObjLostFocus read FOnObjLostFocus write FOnObjLostFocus;
    property OnValidationFailed: TF1BookValidationFailed read FOnValidationFailed write FOnValidationFailed;
  end;

procedure Register;

implementation

uses ComObj;

procedure TF1Book.InitControlData;
const
  CEventDispIDs: array [0..17] of DWORD = (
    $00000001, $00000002, $00000003, $00000004, $00000005, $00000006,
    $00000007, $00000008, $00000009, $0000000A, $0000000B, $0000000C,
    $0000000D, $0000000E, $0000000F, $00000010, $00000011, $00000012);
  CLicenseKey: array[0..42] of Word = ( $0043, $006F, $0070, $0079, $0072, $0069, $0067, $0068, $0074, $0020, $0028
    , $0063, $0029, $0020, $0031, $0039, $0039, $0035, $0020, $0056, $0069
    , $0073, $0075, $0061, $006C, $0020, $0043, $006F, $006D, $0070, $006F
    , $006E, $0065, $006E, $0074, $0073, $002C, $0020, $0049, $006E, $0063
    , $002E, $0000);
  CTPictureIDs: array [0..0] of DWORD = (
    $00000062);
  CControlData: TControlData2 = (
    ClassID: '{042BADC5-5E58-11CE-B610-524153480001}';
    EventIID: '{042BADC7-5E58-11CE-B610-524153480001}';
    EventCount: 18;
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
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnClick) - Cardinal(Self);
end;

procedure TF1Book.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _DVCF1;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TF1Book.GetControlInterface: _DVCF1;
begin
  CreateControl;
  Result := FIntf;
end;

function  TF1Book.Get_ColText(nCol: Integer): WideString;
begin
  Result := DefaultInterface.ColText[nCol];
end;

procedure TF1Book.Set_ColText(nCol: Integer; const Param2: WideString);
begin
  DefaultInterface.ColText[nCol] := Param2;
end;

function  TF1Book.Get_DefinedName(const pName: WideString): WideString;
begin
  Result := DefaultInterface.DefinedName[pName];
end;

procedure TF1Book.Set_DefinedName(const pName: WideString; const Param2: WideString);
begin
  DefaultInterface.DefinedName[pName] := Param2;
end;

function  TF1Book.Get_EntryRC(nRow: Integer; nCol: Integer): WideString;
begin
  Result := DefaultInterface.EntryRC[nRow, nCol];
end;

procedure TF1Book.Set_EntryRC(nRow: Integer; nCol: Integer; const Param3: WideString);
begin
  DefaultInterface.EntryRC[nRow, nCol] := Param3;
end;

function  TF1Book.Get_FormattedTextRC(nRow: Integer; nCol: Integer): WideString;
begin
  Result := DefaultInterface.FormattedTextRC[nRow, nCol];
end;

procedure TF1Book.Set_FormattedTextRC(nRow: Integer; nCol: Integer; const Param3: WideString);
begin
  DefaultInterface.FormattedTextRC[nRow, nCol] := Param3;
end;

function  TF1Book.Get_FormulaRC(nRow: Integer; nCol: Integer): WideString;
begin
  Result := DefaultInterface.FormulaRC[nRow, nCol];
end;

procedure TF1Book.Set_FormulaRC(nRow: Integer; nCol: Integer; const Param3: WideString);
begin
  DefaultInterface.FormulaRC[nRow, nCol] := Param3;
end;

function  TF1Book.Get_LastColForRow(nRow: Integer): Integer;
begin
  Result := DefaultInterface.LastColForRow[nRow];
end;

procedure TF1Book.Set_LastColForRow(nRow: Integer; Param2: Integer);
begin
  DefaultInterface.LastColForRow[nRow] := Param2;
end;

function  TF1Book.Get_LogicalRC(nRow: Integer; nCol: Integer): WordBool;
begin
  Result := DefaultInterface.LogicalRC[nRow, nCol];
end;

procedure TF1Book.Set_LogicalRC(nRow: Integer; nCol: Integer; Param3: WordBool);
begin
  DefaultInterface.LogicalRC[nRow, nCol] := Param3;
end;

function  TF1Book.Get_NumberRC(nRow: Integer; nCol: Integer): Double;
begin
  Result := DefaultInterface.NumberRC[nRow, nCol];
end;

procedure TF1Book.Set_NumberRC(nRow: Integer; nCol: Integer; Param3: Double);
begin
  DefaultInterface.NumberRC[nRow, nCol] := Param3;
end;

function  TF1Book.Get_RowText(nRow: Integer): WideString;
begin
  Result := DefaultInterface.RowText[nRow];
end;

procedure TF1Book.Set_RowText(nRow: Integer; const Param2: WideString);
begin
  DefaultInterface.RowText[nRow] := Param2;
end;

function  TF1Book.Get_TextRC(nRow: Integer; nCol: Integer): WideString;
begin
  Result := DefaultInterface.TextRC[nRow, nCol];
end;

procedure TF1Book.Set_TextRC(nRow: Integer; nCol: Integer; const Param3: WideString);
begin
  DefaultInterface.TextRC[nRow, nCol] := Param3;
end;

function  TF1Book.Get_TypeRC(nRow: Integer; nCol: Integer): Smallint;
begin
  Result := DefaultInterface.TypeRC[nRow, nCol];
end;

procedure TF1Book.Set_TypeRC(nRow: Integer; nCol: Integer; Param3: Smallint);
begin
  DefaultInterface.TypeRC[nRow, nCol] := Param3;
end;

function  TF1Book.Get_ColWidth(nCol: Integer): Smallint;
begin
  Result := DefaultInterface.ColWidth[nCol];
end;

procedure TF1Book.Set_ColWidth(nCol: Integer; Param2: Smallint);
begin
  DefaultInterface.ColWidth[nCol] := Param2;
end;

function  TF1Book.Get_RowHeight(nRow: Integer): Smallint;
begin
  Result := DefaultInterface.RowHeight[nRow];
end;

procedure TF1Book.Set_RowHeight(nRow: Integer; Param2: Smallint);
begin
  DefaultInterface.RowHeight[nRow] := Param2;
end;

function  TF1Book.Get_DefinedNameByIndex(nName: Integer): WideString;
begin
  Result := DefaultInterface.DefinedNameByIndex[nName];
end;

procedure TF1Book.Set_DefinedNameByIndex(nName: Integer; const Param2: WideString);
begin
  DefaultInterface.DefinedNameByIndex[nName] := Param2;
end;

function  TF1Book.Get_SheetName(nSheet: Integer): WideString;
begin
  Result := DefaultInterface.SheetName[nSheet];
end;

procedure TF1Book.Set_SheetName(nSheet: Integer; const Param2: WideString);
begin
  DefaultInterface.SheetName[nSheet] := Param2;
end;

function  TF1Book.Get_PaletteEntry(nEntry: Integer): OLE_COLOR;
begin
  Result := DefaultInterface.PaletteEntry[nEntry];
end;

procedure TF1Book.Set_PaletteEntry(nEntry: Integer; Param2: OLE_COLOR);
begin
  DefaultInterface.PaletteEntry[nEntry] := Param2;
end;

function  TF1Book.Get_ColWidthTwips(Col: Integer): Smallint;
begin
  Result := DefaultInterface.ColWidthTwips[Col];
end;

procedure TF1Book.Set_ColWidthTwips(Col: Integer; Param2: Smallint);
begin
  DefaultInterface.ColWidthTwips[Col] := Param2;
end;

function  TF1Book.Get_ObjItem(ID: Integer; Item: Smallint): WideString;
begin
  Result := DefaultInterface.ObjItem[ID, Item];
end;

procedure TF1Book.Set_ObjItem(ID: Integer; Item: Smallint; const Param3: WideString);
begin
  DefaultInterface.ObjItem[ID, Item] := Param3;
end;

function  TF1Book.Get_ObjItems(ID: Integer): WideString;
begin
  Result := DefaultInterface.ObjItems[ID];
end;

procedure TF1Book.Set_ObjItems(ID: Integer; const Param2: WideString);
begin
  DefaultInterface.ObjItems[ID] := Param2;
end;

function  TF1Book.Get_ObjName(ID: Integer): WideString;
begin
  Result := DefaultInterface.ObjName[ID];
end;

procedure TF1Book.Set_ObjName(ID: Integer; const Param2: WideString);
begin
  DefaultInterface.ObjName[ID] := Param2;
end;

function  TF1Book.Get_ObjText(ID: Integer): WideString;
begin
  Result := DefaultInterface.ObjText[ID];
end;

procedure TF1Book.Set_ObjText(ID: Integer; const Param2: WideString);
begin
  DefaultInterface.ObjText[ID] := Param2;
end;

function  TF1Book.Get_ObjValue(ID: Integer): Smallint;
begin
  Result := DefaultInterface.ObjValue[ID];
end;

procedure TF1Book.Set_ObjValue(ID: Integer; Param2: Smallint);
begin
  DefaultInterface.ObjValue[ID] := Param2;
end;

function  TF1Book.Get_ObjVisible(ID: Integer): WordBool;
begin
  Result := DefaultInterface.ObjVisible[ID];
end;

procedure TF1Book.Set_ObjVisible(ID: Integer; Param2: WordBool);
begin
  DefaultInterface.ObjVisible[ID] := Param2;
end;

function  TF1Book.Get_AutoFillItems(Index: Smallint): WideString;
begin
  Result := DefaultInterface.AutoFillItems[Index];
end;

procedure TF1Book.Set_AutoFillItems(Index: Smallint; const Param2: WideString);
begin
  DefaultInterface.AutoFillItems[Index] := Param2;
end;

function  TF1Book.Get_ColHidden(nCol: Integer): WordBool;
begin
  Result := DefaultInterface.ColHidden[nCol];
end;

procedure TF1Book.Set_ColHidden(nCol: Integer; Param2: WordBool);
begin
  DefaultInterface.ColHidden[nCol] := Param2;
end;

function  TF1Book.Get_RowHidden(nRow: Integer): WordBool;
begin
  Result := DefaultInterface.RowHidden[nRow];
end;

procedure TF1Book.Set_RowHidden(nRow: Integer; Param2: WordBool);
begin
  DefaultInterface.RowHidden[nRow] := Param2;
end;

function  TF1Book.Get_SheetSelected(nSheet: Integer): WordBool;
begin
  Result := DefaultInterface.SheetSelected[nSheet];
end;

procedure TF1Book.Set_SheetSelected(nSheet: Integer; Param2: WordBool);
begin
  DefaultInterface.SheetSelected[nSheet] := Param2;
end;

procedure TF1Book.EditPasteValues;
begin
  DefaultInterface.EditPasteValues;
end;

procedure TF1Book.GetAlignment(var pHorizontal: Smallint; var pWordWrap: WordBool; 
                               var pVertical: Smallint; var pOrientation: Smallint);
begin
  DefaultInterface.GetAlignment(pHorizontal, pWordWrap, pVertical, pOrientation);
end;

procedure TF1Book.GetBorder(var pLeft: Smallint; var pRight: Smallint; var pTop: Smallint; 
                            var pBottom: Smallint; var pShade: Smallint; var pcrLeft: OLE_COLOR; 
                            var pcrRight: OLE_COLOR; var pcrTop: OLE_COLOR; var pcrBottom: OLE_COLOR);
begin
  DefaultInterface.GetBorder(pLeft, pRight, pTop, pBottom, pShade, pcrLeft, pcrRight, pcrTop, 
                             pcrBottom);
end;

procedure TF1Book.GetFont(var pName: WideString; var pSize: Smallint; var pBold: WordBool; 
                          var pItalic: WordBool; var pUnderline: WordBool; 
                          var pStrikeout: WordBool; var pcrColor: OLE_COLOR; 
                          var pOutline: WordBool; var pShadow: WordBool);
begin
  DefaultInterface.GetFont(pName, pSize, pBold, pItalic, pUnderline, pStrikeout, pcrColor, 
                           pOutline, pShadow);
end;

procedure TF1Book.GetLineStyle(var pStyle: Smallint; var pcrColor: OLE_COLOR; var pWeight: Smallint);
begin
  DefaultInterface.GetLineStyle(pStyle, pcrColor, pWeight);
end;

procedure TF1Book.GetPattern(var pPattern: Smallint; var pcrFG: OLE_COLOR; var pcrBG: OLE_COLOR);
begin
  DefaultInterface.GetPattern(pPattern, pcrFG, pcrBG);
end;

procedure TF1Book.GetProtection(var pLocked: WordBool; var pHidden: WordBool);
begin
  DefaultInterface.GetProtection(pLocked, pHidden);
end;

procedure TF1Book.GetTabbedText(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                                bValuesOnly: WordBool; var phText: OLE_HANDLE);
begin
  DefaultInterface.GetTabbedText(nR1, nC1, nR2, nC2, bValuesOnly, phText);
end;

procedure TF1Book.SetTabbedText(nStartRow: Integer; nStartCol: Integer; var pRows: Integer; 
                                var pCols: Integer; bValuesOnly: WordBool; const pText: WideString);
begin
  DefaultInterface.SetTabbedText(nStartRow, nStartCol, pRows, pCols, bValuesOnly, pText);
end;

procedure TF1Book.AddColPageBreak(nCol: Integer);
begin
  DefaultInterface.AddColPageBreak(nCol);
end;

procedure TF1Book.AddPageBreak;
begin
  DefaultInterface.AddPageBreak;
end;

procedure TF1Book.AddRowPageBreak(nRow: Integer);
begin
  DefaultInterface.AddRowPageBreak(nRow);
end;

procedure TF1Book.AddSelection(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer);
begin
  DefaultInterface.AddSelection(nR1, nC1, nR2, nC2);
end;

procedure TF1Book.Attach(const pTitle: WideString);
begin
  DefaultInterface.Attach(pTitle);
end;

procedure TF1Book.AttachToSS(hSrcSS: Integer);
begin
  DefaultInterface.AttachToSS(hSrcSS);
end;

procedure TF1Book.CalculationDlg;
begin
  DefaultInterface.CalculationDlg;
end;

procedure TF1Book.CancelEdit;
begin
  DefaultInterface.CancelEdit;
end;

procedure TF1Book.CheckRecalc;
begin
  DefaultInterface.CheckRecalc;
end;

procedure TF1Book.ClearClipboard;
begin
  DefaultInterface.ClearClipboard;
end;

procedure TF1Book.ClearRange(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                             ClearType: Smallint);
begin
  DefaultInterface.ClearRange(nR1, nC1, nR2, nC2, ClearType);
end;

procedure TF1Book.ColorPaletteDlg;
begin
  DefaultInterface.ColorPaletteDlg;
end;

procedure TF1Book.ColWidthDlg;
begin
  DefaultInterface.ColWidthDlg;
end;

procedure TF1Book.CopyAll(hSrcSS: Integer);
begin
  DefaultInterface.CopyAll(hSrcSS);
end;

procedure TF1Book.CopyRange(nDstR1: Integer; nDstC1: Integer; nDstR2: Integer; nDstC2: Integer; 
                            hSrcSS: Integer; nSrcR1: Integer; nSrcC1: Integer; nSrcR2: Integer; 
                            nSrcC2: Integer);
begin
  DefaultInterface.CopyRange(nDstR1, nDstC1, nDstR2, nDstC2, hSrcSS, nSrcR1, nSrcC1, nSrcR2, nSrcC2);
end;

procedure TF1Book.DefinedNameDlg;
begin
  DefaultInterface.DefinedNameDlg;
end;

procedure TF1Book.DeleteDefinedName(const pName: WideString);
begin
  DefaultInterface.DeleteDefinedName(pName);
end;

procedure TF1Book.DeleteRange(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                              ShiftType: Smallint);
begin
  DefaultInterface.DeleteRange(nR1, nC1, nR2, nC2, ShiftType);
end;

procedure TF1Book.Draw(hDC: OLE_HANDLE; x: Integer; y: Integer; cx: Integer; cy: Integer; 
                       nRow: Integer; nCol: Integer; var pRows: Integer; var pCols: Integer; 
                       nFixedRow: Integer; nFixedCol: Integer; nFixedRows: Integer; 
                       nFixedCols: Integer);
begin
  DefaultInterface.Draw(hDC, x, y, cx, cy, nRow, nCol, pRows, pCols, nFixedRow, nFixedCol, 
                        nFixedRows, nFixedCols);
end;

procedure TF1Book.EditClear(ClearType: Smallint);
begin
  DefaultInterface.EditClear(ClearType);
end;

procedure TF1Book.EditCopy;
begin
  DefaultInterface.EditCopy;
end;

procedure TF1Book.EditCopyDown;
begin
  DefaultInterface.EditCopyDown;
end;

procedure TF1Book.EditCopyRight;
begin
  DefaultInterface.EditCopyRight;
end;

procedure TF1Book.EditCut;
begin
  DefaultInterface.EditCut;
end;

procedure TF1Book.EditDelete(ShiftType: Smallint);
begin
  DefaultInterface.EditDelete(ShiftType);
end;

procedure TF1Book.EditInsert(ShiftType: Smallint);
begin
  DefaultInterface.EditInsert(ShiftType);
end;

procedure TF1Book.EditPaste;
begin
  DefaultInterface.EditPaste;
end;

procedure TF1Book.EndEdit;
begin
  DefaultInterface.EndEdit;
end;

procedure TF1Book.FilePageSetupDlg;
begin
  DefaultInterface.FilePageSetupDlg;
end;

procedure TF1Book.FilePrint(bShowPrintDlg: WordBool);
begin
  DefaultInterface.FilePrint(bShowPrintDlg);
end;

procedure TF1Book.FilePrintSetupDlg;
begin
  DefaultInterface.FilePrintSetupDlg;
end;

procedure TF1Book.FormatAlignmentDlg;
begin
  DefaultInterface.FormatAlignmentDlg;
end;

procedure TF1Book.FormatBorderDlg;
begin
  DefaultInterface.FormatBorderDlg;
end;

procedure TF1Book.FormatCurrency0;
begin
  DefaultInterface.FormatCurrency0;
end;

procedure TF1Book.FormatCurrency2;
begin
  DefaultInterface.FormatCurrency2;
end;

procedure TF1Book.FormatDefaultFontDlg;
begin
  DefaultInterface.FormatDefaultFontDlg;
end;

procedure TF1Book.FormatFixed;
begin
  DefaultInterface.FormatFixed;
end;

procedure TF1Book.FormatFixed2;
begin
  DefaultInterface.FormatFixed2;
end;

procedure TF1Book.FormatFontDlg;
begin
  DefaultInterface.FormatFontDlg;
end;

procedure TF1Book.FormatFraction;
begin
  DefaultInterface.FormatFraction;
end;

procedure TF1Book.FormatGeneral;
begin
  DefaultInterface.FormatGeneral;
end;

procedure TF1Book.FormatHmmampm;
begin
  DefaultInterface.FormatHmmampm;
end;

procedure TF1Book.FormatMdyy;
begin
  DefaultInterface.FormatMdyy;
end;

procedure TF1Book.FormatNumberDlg;
begin
  DefaultInterface.FormatNumberDlg;
end;

procedure TF1Book.FormatPatternDlg;
begin
  DefaultInterface.FormatPatternDlg;
end;

procedure TF1Book.FormatPercent;
begin
  DefaultInterface.FormatPercent;
end;

procedure TF1Book.FormatScientific;
begin
  DefaultInterface.FormatScientific;
end;

procedure TF1Book.GetActiveCell(var pRow: Integer; var pCol: Integer);
begin
  DefaultInterface.GetActiveCell(pRow, pCol);
end;

procedure TF1Book.GetDefaultFont(var pBuf: WideString; var pSize: Smallint);
begin
  DefaultInterface.GetDefaultFont(pBuf, pSize);
end;

procedure TF1Book.GetHdrSelection(var pTopLeftHdr: WordBool; var pRowHdr: WordBool; 
                                  var pColHdr: WordBool);
begin
  DefaultInterface.GetHdrSelection(pTopLeftHdr, pRowHdr, pColHdr);
end;

procedure TF1Book.GetIteration(var pIteration: WordBool; var pMaxIterations: Smallint; 
                               var pMaxChange: Double);
begin
  DefaultInterface.GetIteration(pIteration, pMaxIterations, pMaxChange);
end;

procedure TF1Book.GetPrintScale(var pScale: Smallint; var pFitToPage: WordBool; 
                                var pVPages: Integer; var pHPages: Integer);
begin
  DefaultInterface.GetPrintScale(pScale, pFitToPage, pVPages, pHPages);
end;

procedure TF1Book.GetSelection(nSelection: Smallint; var pR1: Integer; var pC1: Integer; 
                               var pR2: Integer; var pC2: Integer);
begin
  DefaultInterface.GetSelection(nSelection, pR1, pC1, pR2, pC2);
end;

procedure TF1Book.GotoDlg;
begin
  DefaultInterface.GotoDlg;
end;

procedure TF1Book.HeapMin;
begin
  DefaultInterface.HeapMin;
end;

procedure TF1Book.InitTable;
begin
  DefaultInterface.InitTable;
end;

procedure TF1Book.InsertRange(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                              ShiftType: Smallint);
begin
  DefaultInterface.InsertRange(nR1, nC1, nR2, nC2, ShiftType);
end;

procedure TF1Book.LineStyleDlg;
begin
  DefaultInterface.LineStyleDlg;
end;

procedure TF1Book.MoveRange(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                            nRowOffset: Integer; nColOffset: Integer);
begin
  DefaultInterface.MoveRange(nR1, nC1, nR2, nC2, nRowOffset, nColOffset);
end;

procedure TF1Book.ObjAddItem(ID: Integer; const pItem: WideString);
begin
  DefaultInterface.ObjAddItem(ID, pItem);
end;

procedure TF1Book.ObjAddSelection(ID: Integer);
begin
  DefaultInterface.ObjAddSelection(ID);
end;

procedure TF1Book.ObjBringToFront;
begin
  DefaultInterface.ObjBringToFront;
end;

procedure TF1Book.ObjDeleteItem(ID: Integer; nItem: Smallint);
begin
  DefaultInterface.ObjDeleteItem(ID, nItem);
end;

procedure TF1Book.ObjGetCell(ID: Integer; var pControlCellType: Smallint; var pRow: Integer; 
                             var pCol: Integer);
begin
  DefaultInterface.ObjGetCell(ID, pControlCellType, pRow, pCol);
end;

procedure TF1Book.ObjGetPos(ID: Integer; var pX1: Single; var pY1: Single; var pX2: Single; 
                            var pY2: Single);
begin
  DefaultInterface.ObjGetPos(ID, pX1, pY1, pX2, pY2);
end;

procedure TF1Book.ObjGetSelection(nSelection: Smallint; var pID: Integer);
begin
  DefaultInterface.ObjGetSelection(nSelection, pID);
end;

procedure TF1Book.ObjInsertItem(ID: Integer; nItem: Smallint; const pItem: WideString);
begin
  DefaultInterface.ObjInsertItem(ID, nItem, pItem);
end;

procedure TF1Book.ObjNameDlg;
begin
  DefaultInterface.ObjNameDlg;
end;

procedure TF1Book.ObjNew(ObjType: Smallint; nX1: Single; nY1: Single; nX2: Single; nY2: Single; 
                         var pID: Integer);
begin
  DefaultInterface.ObjNew(ObjType, nX1, nY1, nX2, nY2, pID);
end;

procedure TF1Book.ObjNewPicture(nX1: Single; nY1: Single; nX2: Single; nY2: Single; 
                                var pID: Integer; hMF: OLE_HANDLE; nMapMode: Integer; 
                                nWndExtentX: Integer; nWndExtentY: Integer);
begin
  DefaultInterface.ObjNewPicture(nX1, nY1, nX2, nY2, pID, hMF, nMapMode, nWndExtentX, nWndExtentY);
end;

procedure TF1Book.ObjOptionsDlg;
begin
  DefaultInterface.ObjOptionsDlg;
end;

procedure TF1Book.ObjPosToTwips(nX1: Single; nY1: Single; nX2: Single; nY2: Single; 
                                var pX: Integer; var pY: Integer; var pCX: Integer; 
                                var pCY: Integer; var pShown: Smallint);
begin
  DefaultInterface.ObjPosToTwips(nX1, nY1, nX2, nY2, pX, pY, pCX, pCY, pShown);
end;

procedure TF1Book.ObjSendToBack;
begin
  DefaultInterface.ObjSendToBack;
end;

procedure TF1Book.ObjSetCell(ID: Integer; ControlCellType: Smallint; nRow: Integer; nCol: Integer);
begin
  DefaultInterface.ObjSetCell(ID, ControlCellType, nRow, nCol);
end;

procedure TF1Book.ObjSetPicture(ID: Integer; hMF: OLE_HANDLE; nMapMode: Smallint; 
                                nWndExtentX: Integer; nWndExtentY: Integer);
begin
  DefaultInterface.ObjSetPicture(ID, hMF, nMapMode, nWndExtentX, nWndExtentY);
end;

procedure TF1Book.ObjSetPos(ID: Integer; nX1: Single; nY1: Single; nX2: Single; nY2: Single);
begin
  DefaultInterface.ObjSetPos(ID, nX1, nY1, nX2, nY2);
end;

procedure TF1Book.ObjSetSelection(ID: Integer);
begin
  DefaultInterface.ObjSetSelection(ID);
end;

procedure TF1Book.OpenFileDlg(const pTitle: WideString; hWndParent: OLE_HANDLE; var pBuf: WideString);
begin
  DefaultInterface.OpenFileDlg(pTitle, hWndParent, pBuf);
end;

procedure TF1Book.ProtectionDlg;
begin
  DefaultInterface.ProtectionDlg;
end;

procedure TF1Book.RangeToTwips(nRow1: Integer; nCol1: Integer; nRow2: Integer; nCol2: Integer; 
                               var pX: Integer; var pY: Integer; var pCX: Integer; 
                               var pCY: Integer; var pShown: Smallint);
begin
  DefaultInterface.RangeToTwips(nRow1, nCol1, nRow2, nCol2, pX, pY, pCX, pCY, pShown);
end;

procedure TF1Book.Read(const pPathName: WideString; var pFileType: Smallint);
begin
  DefaultInterface.Read(pPathName, pFileType);
end;

procedure TF1Book.ReadFromBlob(hBlob: OLE_HANDLE; nReservedBytes: Smallint);
begin
  DefaultInterface.ReadFromBlob(hBlob, nReservedBytes);
end;

procedure TF1Book.Recalc;
begin
  DefaultInterface.Recalc;
end;

procedure TF1Book.RemoveColPageBreak(nCol: Integer);
begin
  DefaultInterface.RemoveColPageBreak(nCol);
end;

procedure TF1Book.RemovePageBreak;
begin
  DefaultInterface.RemovePageBreak;
end;

procedure TF1Book.RemoveRowPageBreak(nRow: Integer);
begin
  DefaultInterface.RemoveRowPageBreak(nRow);
end;

procedure TF1Book.RowHeightDlg;
begin
  DefaultInterface.RowHeightDlg;
end;

procedure TF1Book.SaveFileDlg(const pTitle: WideString; var pBuf: WideString; 
                              var pFileType: Smallint);
begin
  DefaultInterface.SaveFileDlg(pTitle, pBuf, pFileType);
end;

procedure TF1Book.SaveWindowInfo;
begin
  DefaultInterface.SaveWindowInfo;
end;

procedure TF1Book.SetActiveCell(nRow: Integer; nCol: Integer);
begin
  DefaultInterface.SetActiveCell(nRow, nCol);
end;

procedure TF1Book.SetAlignment(HAlign: Smallint; bWordWrap: WordBool; VAlign: Smallint; 
                               nOrientation: Smallint);
begin
  DefaultInterface.SetAlignment(HAlign, bWordWrap, VAlign, nOrientation);
end;

procedure TF1Book.SetBorder(nOutline: Smallint; nLeft: Smallint; nRight: Smallint; nTop: Smallint; 
                            nBottom: Smallint; nShade: Smallint; crOutline: OLE_COLOR; 
                            crLeft: OLE_COLOR; crRight: OLE_COLOR; crTop: OLE_COLOR; 
                            crBottom: OLE_COLOR);
begin
  DefaultInterface.SetBorder(nOutline, nLeft, nRight, nTop, nBottom, nShade, crOutline, crLeft, 
                             crRight, crTop, crBottom);
end;

procedure TF1Book.SetColWidth(nC1: Integer; nC2: Integer; nWidth: Smallint; bDefColWidth: WordBool);
begin
  DefaultInterface.SetColWidth(nC1, nC2, nWidth, bDefColWidth);
end;

procedure TF1Book.SetColWidthAuto(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                                  bSetDefaults: WordBool);
begin
  DefaultInterface.SetColWidthAuto(nR1, nC1, nR2, nC2, bSetDefaults);
end;

procedure TF1Book.SetDefaultFont(const pName: WideString; nSize: Smallint);
begin
  DefaultInterface.SetDefaultFont(pName, nSize);
end;

procedure TF1Book.SetFont(const pName: WideString; nSize: Smallint; bBold: WordBool; 
                          bItalic: WordBool; bUnderline: WordBool; bStrikeout: WordBool; 
                          crColor: OLE_COLOR; bOutline: WordBool; bShadow: WordBool);
begin
  DefaultInterface.SetFont(pName, nSize, bBold, bItalic, bUnderline, bStrikeout, crColor, bOutline, 
                           bShadow);
end;

procedure TF1Book.SetHdrSelection(bTopLeftHdr: WordBool; bRowHdr: WordBool; bColHdr: WordBool);
begin
  DefaultInterface.SetHdrSelection(bTopLeftHdr, bRowHdr, bColHdr);
end;

procedure TF1Book.SetIteration(bIteration: WordBool; nMaxIterations: Smallint; nMaxChange: Double);
begin
  DefaultInterface.SetIteration(bIteration, nMaxIterations, nMaxChange);
end;

procedure TF1Book.SetLineStyle(nStyle: Smallint; crColor: OLE_COLOR; nWeight: Smallint);
begin
  DefaultInterface.SetLineStyle(nStyle, crColor, nWeight);
end;

procedure TF1Book.SetPattern(nPattern: Smallint; crFG: OLE_COLOR; crBG: OLE_COLOR);
begin
  DefaultInterface.SetPattern(nPattern, crFG, crBG);
end;

procedure TF1Book.SetPrintAreaFromSelection;
begin
  DefaultInterface.SetPrintAreaFromSelection;
end;

procedure TF1Book.SetPrintScale(nScale: Smallint; bFitToPage: WordBool; nVPages: Smallint; 
                                nHPages: Smallint);
begin
  DefaultInterface.SetPrintScale(nScale, bFitToPage, nVPages, nHPages);
end;

procedure TF1Book.SetPrintTitlesFromSelection;
begin
  DefaultInterface.SetPrintTitlesFromSelection;
end;

procedure TF1Book.SetProtection(bLocked: WordBool; bHidden: WordBool);
begin
  DefaultInterface.SetProtection(bLocked, bHidden);
end;

procedure TF1Book.SetRowHeight(nR1: Integer; nR2: Integer; nHeight: Smallint; 
                               bDefRowHeight: WordBool);
begin
  DefaultInterface.SetRowHeight(nR1, nR2, nHeight, bDefRowHeight);
end;

procedure TF1Book.SetRowHeightAuto(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                                   bSetDefaults: WordBool);
begin
  DefaultInterface.SetRowHeightAuto(nR1, nC1, nR2, nC2, bSetDefaults);
end;

procedure TF1Book.SetSelection(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer);
begin
  DefaultInterface.SetSelection(nR1, nC1, nR2, nC2);
end;

procedure TF1Book.ShowActiveCell;
begin
  DefaultInterface.ShowActiveCell;
end;

procedure TF1Book.Sort3(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                        bSortByRows: WordBool; nKey1: Integer; nKey2: Integer; nKey3: Integer);
begin
  DefaultInterface.Sort3(nR1, nC1, nR2, nC2, bSortByRows, nKey1, nKey2, nKey3);
end;

procedure TF1Book.SortDlg;
begin
  DefaultInterface.SortDlg;
end;

procedure TF1Book.StartEdit(bClear: WordBool; bInCellEditFocus: WordBool; 
                            bArrowsExitEditMode: WordBool);
begin
  DefaultInterface.StartEdit(bClear, bInCellEditFocus, bArrowsExitEditMode);
end;

procedure TF1Book.SwapTables(hSS2: Integer);
begin
  DefaultInterface.SwapTables(hSS2);
end;

procedure TF1Book.TransactCommit;
begin
  DefaultInterface.TransactCommit;
end;

procedure TF1Book.TransactRollback;
begin
  DefaultInterface.TransactRollback;
end;

procedure TF1Book.TransactStart;
begin
  DefaultInterface.TransactStart;
end;

procedure TF1Book.TwipsToRC(x: Integer; y: Integer; var pRow: Integer; var pCol: Integer);
begin
  DefaultInterface.TwipsToRC(x, y, pRow, pCol);
end;

procedure TF1Book.SSUpdate;
begin
  DefaultInterface.SSUpdate;
end;

function  TF1Book.SSVersion: Smallint;
begin
  Result := DefaultInterface.SSVersion;
end;

procedure TF1Book.Write(const pPathName: WideString; FileType: Smallint);
begin
  DefaultInterface.Write(pPathName, FileType);
end;

procedure TF1Book.WriteToBlob(var phBlob: OLE_HANDLE; nReservedBytes: Smallint);
begin
  DefaultInterface.WriteToBlob(phBlob, nReservedBytes);
end;

procedure TF1Book.SetRowHidden(nRow1: Integer; nRow2: Integer; bHidden: WordBool);
begin
  DefaultInterface.SetRowHidden(nRow1, nRow2, bHidden);
end;

procedure TF1Book.SetColHidden(nCol1: Integer; nCol2: Integer; bHidden: WordBool);
begin
  DefaultInterface.SetColHidden(nCol1, nCol2, bHidden);
end;

procedure TF1Book.SetColWidthTwips(nCol1: Integer; nCol2: Integer; nWidth: Integer; 
                                   bDefColWidth: WordBool);
begin
  DefaultInterface.SetColWidthTwips(nCol1, nCol2, nWidth, bDefColWidth);
end;

procedure TF1Book.EditInsertSheets;
begin
  DefaultInterface.EditInsertSheets;
end;

procedure TF1Book.EditDeleteSheets;
begin
  DefaultInterface.EditDeleteSheets;
end;

procedure TF1Book.InsertSheets(nSheet: Integer; nSheets: Integer);
begin
  DefaultInterface.InsertSheets(nSheet, nSheets);
end;

procedure TF1Book.DeleteSheets(nSheet: Integer; nSheets: Integer);
begin
  DefaultInterface.DeleteSheets(nSheet, nSheets);
end;

procedure TF1Book.Refresh;
begin
  DefaultInterface.Refresh;
end;

function  TF1Book.NextColPageBreak(Col: Integer): Integer;
begin
  Result := DefaultInterface.NextColPageBreak(Col);
end;

function  TF1Book.NextRowPageBreak(Row: Integer): Integer;
begin
  Result := DefaultInterface.NextRowPageBreak(Row);
end;

function  TF1Book.ObjFirstID: Integer;
begin
  Result := DefaultInterface.ObjFirstID;
end;

function  TF1Book.ObjNextID(ID: Integer): Integer;
begin
  Result := DefaultInterface.ObjNextID(ID);
end;

function  TF1Book.ObjGetItemCount(ID: Integer): Smallint;
begin
  Result := DefaultInterface.ObjGetItemCount(ID);
end;

function  TF1Book.ObjGetType(ID: Integer): Smallint;
begin
  Result := DefaultInterface.ObjGetType(ID);
end;

function  TF1Book.ObjGetSelectionCount: Smallint;
begin
  Result := DefaultInterface.ObjGetSelectionCount;
end;

function  TF1Book.FormatRCNr(Row: Integer; Col: Integer; DoAbsolute: WordBool): WideString;
begin
  Result := DefaultInterface.FormatRCNr(Row, Col, DoAbsolute);
end;

function  TF1Book.SS: Integer;
begin
  Result := DefaultInterface.SS;
end;

function  TF1Book.ErrorNumberToText(SSError: Integer): WideString;
begin
  Result := DefaultInterface.ErrorNumberToText(SSError);
end;

function  TF1Book.ObjNameToID(const Name: WideString): Integer;
begin
  Result := DefaultInterface.ObjNameToID(Name);
end;

function  TF1Book.DefinedNameCount: Integer;
begin
  Result := DefaultInterface.DefinedNameCount;
end;

procedure TF1Book.ValidationRuleDlg;
begin
  DefaultInterface.ValidationRuleDlg;
end;

procedure TF1Book.SetValidationRule(const Rule: WideString; const Text: WideString);
begin
  DefaultInterface.SetValidationRule(Rule, Text);
end;

procedure TF1Book.GetValidationRule(var Rule: WideString; var Text: WideString);
begin
  DefaultInterface.GetValidationRule(Rule, Text);
end;

function  TF1Book.AutoFillItemsCount: Smallint;
begin
  Result := DefaultInterface.AutoFillItemsCount;
end;

procedure TF1Book.CopyRangeEx(nDstSheet: Integer; nDstR1: Integer; nDstC1: Integer; 
                              nDstR2: Integer; nDstC2: Integer; hSrcSS: Integer; 
                              nSrcSheet: Integer; nSrcR1: Integer; nSrcC1: Integer; 
                              nSrcR2: Integer; nSrcC2: Integer);
begin
  DefaultInterface.CopyRangeEx(nDstSheet, nDstR1, nDstC1, nDstR2, nDstC2, hSrcSS, nSrcSheet, 
                               nSrcR1, nSrcC1, nSrcR2, nSrcC2);
end;

procedure TF1Book.Sort(nR1: Integer; nC1: Integer; nR2: Integer; nC2: Integer; 
                       bSortByRows: WordBool; Keys: OleVariant);
begin
  DefaultInterface.Sort(nR1, nC1, nR2, nC2, bSortByRows, Keys);
end;

procedure TF1Book.DeleteAutoFillItems(nIndex: Smallint);
begin
  DefaultInterface.DeleteAutoFillItems(nIndex);
end;

procedure TF1Book.ODBCConnect(var pConnect: WideString; bShowErrors: WordBool; 
                              var pRetCode: Smallint);
begin
  DefaultInterface.ODBCConnect(pConnect, bShowErrors, pRetCode);
end;

procedure TF1Book.ODBCDisconnect;
begin
  DefaultInterface.ODBCDisconnect;
end;

procedure TF1Book.ODBCQuery(var pQuery: WideString; nRow: Integer; nCol: Integer; 
                            bForceShowDlg: WordBool; var pSetColNames: WordBool; 
                            var pSetColFormats: WordBool; var pSetColWidths: WordBool; 
                            var pSetMaxRC: WordBool; var pRetCode: Smallint);
begin
  DefaultInterface.ODBCQuery(pQuery, nRow, nCol, bForceShowDlg, pSetColNames, pSetColFormats, 
                             pSetColWidths, pSetMaxRC, pRetCode);
end;

procedure TF1Book.LaunchDesigner;
begin
  DefaultInterface.LaunchDesigner;
end;

procedure TF1Book.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

procedure Register;
begin
  RegisterComponents('ActiveX',[TF1Book]);
end;

end.
