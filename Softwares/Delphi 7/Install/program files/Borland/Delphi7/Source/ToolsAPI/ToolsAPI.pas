{ ********************************************************************** }
{                                                                        }
{ Delphi and Kylix Cross-Platform Open Tools API                         }
{                                                                        }
{ Copyright (C) 1995, 2001 Borland Software Corporation                  }
{                                                                        }
{ All Rights Reserved.                                                   }
{                                                                        }
{ ********************************************************************** }


unit ToolsAPI;

interface

{$IFDEF MSWINDOWS}
uses Windows, SysUtils, Classes, ActiveX, TypInfo, DesignIntf, Menus, ActnList,
  Graphics, ImgList, Forms, ComCtrls;
{$ENDIF}
{$IFDEF LINUX}
uses Types, SysUtils, Classes, TypInfo, DesignIntf, Menus, ActnList,
  Graphics, ImgList, Forms, ComCtrls;
{$NOINCLUDE Menus}  
{$NOINCLUDE ActnList}
{$NOINCLUDE Graphics}
{$NOINCLUDE ImgList}
{$NOINCLUDE Forms}
{$NOINCLUDE ComCtrls}  
{$ENDIF}

(*$HPPEMIT 'DEFINE_GUID(IID_IBorlandIDEServices,0x7FD1CE92,0xE053,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_INTAComponent,0x34B2E2D1,0xE36F,0x11D1,0xAB,0x0E,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_INTACustomDrawMessage,0x589BBDA2,0xF995,0x11D1,0xAB,0x27,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTACustomMessage50,0xB7523AB7,0xEB81,0x11D2,0xAC,0x7B,0x00,0xC0,0x4F,0xB1,0x73,0xDC);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTACustomMessage,0x589BBDA1,0xF995,0x11D1,0xAB,0x27,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_INTAFormEditor,0x56931EB9,0x329A,0xD411,0x87,0xC6,0x9B,0x27,0x30,0x41,0x22,0x00);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_INTAServices,0xC17B3DF1,0xDFE5,0x11D2,0xA8,0xC7,0x00,0xC0,0x4F,0xA3,0x2F,0x53);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_INTAServices40,0x3C7F3267,0xF0BF,0x11D1,0xAB,0x1E,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_INTAToDoItem,0x094003D8,0xE7AA,0x11D2,0xAA,0x99,0x00,0xC0,0x4F,0xA3,0x5C,0xE8);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_INTAUnknown,0x8CC6430B,0xE721,0x11D2,0xA8,0xCC,0x00,0xC0,0x4F,0xA3,0x2F,0x53);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAActionServices,0xF17A7BC9,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAAddressBreakpoint,0x09063878,0xE43A,0x11D1,0xAB,0x0F,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTABreakpoint,0x569EFCFB,0xC69B,0x11D2,0xAC,0x67,0x00,0xC0,0x4F,0xB1,0x73,0xDC);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTABreakpoint40,0x34B2E2D4,0xE36F,0x11D1,0xAB,0x0E,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTABreakpointNotifier,0x34B2E2D5,0xE36F,0x11D1,0xAB,0x0E,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTABufferOptions,0x8C748540,0xC6C1,0x11D2,0x81,0x39,0x00,0x60,0x97,0x92,0xF1,0x34);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTACodeInsightServices60,0x476904F8,0x89A9,0x4CD8,0xA7,0x1E,0x16,0x46,0x60,0x65,0x97,0x63);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTACodeInsightServices,0xEE5C42A9,0xDBC8,0x4C5D,0xB2,0x8E,0x52,0x80,0x24,0xCB,0xC9,0x7C);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAComponent,0xAC139ADF,0x329A,0xD411,0x87,0xC6,0x9B,0x27,0x30,0x41,0x22,0x00);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTACreator,0x6EDB9B9E,0xF57A,0x11D1,0xAB,0x23,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_INTACustomDrawCodeInsightViewer,0x32CA7B43,0x9AFC,0x49CF,0xAB,0xC9,0x7E,0xCD,0x77,0x24,0x88,0xD9);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTADebuggerNotifier,0x34B2E2D8,0xE36F,0x11D1,0xAB,0x0E,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTADebuggerServices60,0x0E3B9D7A,0xE119,0x11D1,0xAB,0x0C,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTADebuggerServices,0xA797823A,0x6BD7,0x41A4,0xB3,0x6B,0x3A,0x83,0x1A,0x73,0x7B,0x2D);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditActions60,0xECB23623,0xE2D8,0x11D2,0xAB,0xE5,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditActions,0x9A073F11,0x2732,0xD611,0x95,0x8B,0x00,0xC0,0x4F,0xA0,0x6A,0xFC);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditBlock,0x9C510463,0xC7BC,0x11D2,0x9A,0xEB,0x00,0xA0,0x24,0x57,0x62,0x1F);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditBuffer60,0x9C510460,0xC7BC,0x11D2,0x9A,0xEB,0x00,0xA0,0x24,0x57,0x62,0x1F);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditBuffer,0xEB6465CE,0xD901,0x43C4,0xAB,0x69,0x24,0x0A,0x74,0x00,0xB9,0xAA);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditBufferIterator,0x8ECB33AA,0xD0BD,0x11D2,0xAB,0xD6,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditLineNotifier,0xD9D48F50,0xE6CC,0x11D2,0xAB,0xE8,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditLineTracker,0xD9D48F4F,0xE6CC,0x11D2,0xAB,0xE8,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditOptions60,0x487BEA91,0xDBC0,0x11D2,0xAB,0xDE,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditOptions,0x02999EF7,0x669C,0x406B,0x8E,0x14,0x4F,0xE8,0xB2,0x75,0x42,0xB8);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditor,0xF17A7BD0,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditorNotifier,0x0E3B9D7B,0xE119,0x11D1,0xAB,0x0C,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditorServices60,0xC2812BA7,0xC48D,0x11D2,0x9A,0xE8,0x00,0xA0,0x24,0x57,0x62,0x1F);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditorServices,0x2596F557,0x44A3,0x49A6,0x86,0x7E,0x91,0xE2,0x1E,0x00,0xF5,0x3E);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditPosition,0x9C510464,0xC7BC,0x11D2,0x9A,0xEB,0x00,0xA0,0x24,0x57,0x62,0x1F);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditReader,0x26EB0E4F,0xF97B,0x11D1,0xAB,0x27,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditView,0x9C510462,0xC7BC,0x11D2,0x9A,0xEB,0x00,0xA0,0x24,0x57,0x62,0x1F);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditView40,0x0E3B9D78,0xE119,0x11D1,0xAB,0x0C,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEditWriter,0x26EB0E50,0xF97B,0x11D1,0xAB,0x27,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAEnvironmentOptions,0x9C0E91FB,0xFA5A,0x11D1,0xAB,0x28,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAFile,0x6E2AD9B0,0xF7F0,0x11D1,0xAB,0x26,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAFileSystem,0xA9D1389D,0xF4B0,0x11D1,0xAB,0x22,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAFormEditor,0xF17A7BD2,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAFormNotifier,0x0E3B9D7C,0xE119,0x11D1,0xAB,0x0C,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAFormWizard,0x36C8BF35,0xEFFE,0x11D1,0xAB,0x1D,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAIDENotifier,0xE052204F,0xECE9,0x11D1,0xAB,0x19,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAIDENotifier50,0xAC7D29F1,0xD9A9,0x11D2,0xA8,0xC1,0x00,0xC0,0x4F,0xA3,0x2F,0x53);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAKeyBindingServices,0xF8CAF8D8,0xD263,0x11D2,0xAB,0xD8,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAKeyboardBinding,0xF8CAF8D7,0xD263,0x11D2,0xAB,0xD8,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAKeyboardServices,0xF8CAF8D5,0xD263,0x11D2,0xAB,0xD8,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAKeyboardDiagnostics,0xAEFC65F1,0x2504,0x11D3,0xAC,0x25,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAKeyContext,0x3E7790CB,0xD2BB,0x11D2,0xAB,0xD8,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTACodeInsightManager,0xBA5B444A,0x6E78,0x4A79,0xBF,0x05,0xE1,0x84,0xC1,0x13,0x2B,0x30);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTACodeInsightParameterList,0x99B6A644,0x3E97,0x48A1,0x97,0x58,0x0A,0x5F,0xE9,0x47,0x67,0xC7);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTACodeInsightParamQuery,0xB1842926,0xC7F7,0x4869,0xB5,0x5A,0xCF,0xDB,0x6B,0xF7,0x05,0xB5);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTACodeInsightSymbolList,0x4CA1CDFD,0xBD9A,0x4628,0x94,0xAE,0x9B,0xF3,0xEB,0x2D,0xA2,0x2E);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTACodeInsightViewer,0xAAA55FAC,0x350E,0x4F43,0x9C,0x42,0x4F,0xC2,0x8B,0x6B,0xFE,0x33);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTACodeInsightViewerCanvas,0x8C60AB99,0x5BDB,0x44EE,0xB5,0xC8,0x33,0xCB,0x43,0x69,0x0D,0xF2);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAMenuWizard,0xB75C0CE2,0xEEA6,0x11D1,0x95,0x04,0x00,0x60,0x8C,0xCB,0xF1,0x53);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAMessageServices40,0x26EB0E4E,0xF97B,0x11D1,0xAB,0x27,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAMessageServices50,0x3263774B,0xE959,0x11D2,0xAC,0x7B,0x00,0xC0,0x4F,0xB1,0x73,0xDC);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAMessageGroup,0x233F4508,0x6022,0x4DDF,0xB6,0xD3,0xD2,0x10,0x8B,0xAf,0x80,0xDB);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAMessageNotifier,0xFDCB2ED4,0xB89C,0x4D00,0xB0,0xDB,0x19,0x56,0x29,0x51,0xCD,0xBB);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAMessageServices,0x58A40C76,0x7EC6,0x41DA,0xA2,0xEF,0x4B,0x3A,0xF3,0x1D,0x39,0x77);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAModule40,0xF17A7BCC,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAModule50,0x15D3FB81,0xEF27,0x488E,0xB2,0xB4,0x26,0xB5,0x9C,0xA8,0x9D,0x9D);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAModule,0x2438BFB8,0xC742,0x48CD,0x8F,0x50,0xDE,0x6C,0x7F,0x76,0x4A,0x55);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAModuleCreator,0x6EDB9B9A,0xF57A,0x11D1,0xAB,0x23,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAModuleInfo50,0xF17A7BD6,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAModuleInfo,0xB3EEB4D2,0xECDD,0x4CDC,0xB9,0x6E,0xB5,0xC8,0xF6,0xD0,0x50,0xA8);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAModuleNotifier,0xF17A7BCE,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAModuleServices,0xF17A7BCD,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTANotifier,0xF17A7BCF,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAOptions,0x9C0E91FC,0xFA5A,0x11D1,0xAB,0x28,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAPackageServices,0x26EB0E4D,0xF97B,0x11D1,0xAB,0x27,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProcess,0x34B2E2D2,0xE36F,0x11D1,0xAB,0x0E,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProcessModNotifier,0x0906387A,0xE43A,0x11D1,0xAB,0x0F,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProcessModule,0x09063879,0xE43A,0x11D1,0xAB,0x0F,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProcessNotifier,0x34B2E2D6,0xE36F,0x11D1,0xAB,0x0E,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProject,0xF17A7BCA,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProjectBuilder,0x08A5B1F5,0xFCDA,0x11D2,0xAC,0x82,0x00,0xC0,0x4F,0xB1,0x73,0xDC);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProjectBuilder40,0xF17A7BD5,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProjectCreator,0x6EDB9B9D,0xF57A,0x11D1,0xAB,0x23,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProjectCreator50,0x64312F82,0x62F3,0x48E9,0xBA,0xF6,0xB0,0x3D,0xF4,0x50,0x31,0x2A);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProjectGroup,0xF17A7BCB,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProjectGroupCreator,0x6EDB9B9F,0xF57A,0x11D1,0xAB,0x23,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProjectOptions,0xF899EBC6,0xE6E2,0x11D2,0xAA,0x90,0x00,0xC0,0x4F,0xA3,0x70,0xE9);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProjectOptions40,0xF17A7BD4,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProjectResource,0x26EB0E52,0xF97B,0x11D1,0xAB,0x27,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAProjectWizard,0x36C8BF36,0xEFFE,0x11D1,0xAB,0x1D,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTARecord,0xF8CAF8D6,0xD263,0x11D2,0xAB,0xD8,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAReplaceOptions,0xD1766F8C,0xD915,0x11D2,0xA8,0xC1,0x00,0xC0,0x4F,0xA3,0x2F,0x53);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTARepositoryWizard,0xB75C0CE1,0xEEA6,0x11D1,0x95,0x04,0x00,0x60,0x8C,0xCB,0xF1,0x53);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTARepositoryWizard60,0x08FCCD88,0x3A21,0x4281,0xAD,0xC9,0x62,0xFC,0x03,0x4C,0xDD,0x12);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAResourceEntry,0x26EB0E51,0xF97B,0x11D1,0xAB,0x27,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTASearchOptions,0xD1766F8B,0xD915,0x11D2,0xA8,0xC1,0x00,0xC0,0x4F,0xA3,0x2F,0x53);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAServices50,0x7FD1CE91,0xE053,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAServices60,0x577ECE00,0x59EE,0x4F21,0x81,0x90,0x9F,0xD8,0xA4,0x5F,0xE5,0x50);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAServices,0x0044BB24,0x425D,0xD611,0x9C,0xF1,0x00,0xC0,0x4F,0xA0,0x6A,0xFC);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTASourceBreakpoint,0x09063877,0xE43A,0x11D1,0xAB,0x0F,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTASourceEditor,0xF17A7BD1,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTASpeedSetting,0xB5CDCE07,0xE093,0x11D2,0xAB,0xE2,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAThread50,0x34B2E2D3,0xE36F,0x11D1,0xAB,0x0E,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAThread60,0x2646D502,0x95F8,0x4E6F,0xA1,0xEC,0x97,0x6E,0x96,0x63,0xC9,0xB6);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAThread,0x24064FD3,0x5D3C,0xD611,0x88,0xBC,0x00,0xC0,0x4F,0xA0,0x6A,0xFC);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAThreadNotifier,0x34B2E2D7,0xE36F,0x11D1,0xAB,0x0E,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAToDoManager,0x3D4A0565,0xEB77,0x11D2,0xAA,0x9A,0x00,0xC0,0x4F,0xA3,0x5C,0xE8);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAToDoServices,0xF8FC00EF,0xE61A,0x11D2,0xAA,0x99,0x00,0xC0,0x4F,0xA3,0x5C,0xE8);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAToolsFilterNotifier,0xCEF1F13A,0xE877,0x4F20,0x88,0xF2,0xF7,0xE2,0xBA,0x61,0xAA,0xF4); *)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAToolsFilter,0x8864B891,0x9B6D,0x4002,0xBB,0x2E,0x1D,0x6E,0x59,0xBF,0xA4,0x9A); *)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTATypeLibEditor,0xF17A7BD3,0xE07D,0x11D1,0xAB,0x0B,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTATypeLibModule,0x0BBAEEA0,0xEF74,0x11D1,0xAB,0x1C,0x00,0xC0,0x4F,0xB1,0x6F,0xB3);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAWizard,0xB75C0CE0,0xEEA6,0x11D1,0x95,0x04,0x00,0x60,0x8C,0xCB,0xF1,0x53);'*)
(*$HPPEMIT 'DEFINE_GUID(IID_IOTAWizardServices,0xB75C0CE3,0xEEA6,0x11D1,0x95,0x04,0x00,0x60,0x8C,0xCB,0xF1,0x53);'*)
(*$HPPEMIT 'DEFINE_GUID(IOTAHighlighter, 0x79D28DA1,0x42F6,0x44B9,0xAE,0x33,0xD0,0x01,0xFD,0x75,0xDC,0x40);'*)
(*$HPPEMIT 'DEFINE_GUID(IOTAHighlightServices, 0x78C26089,0x6CAD,0x40D1,0xBA,0xC2,0x37,0xA8,0x4D,0xF8,0xF3,0xE6);'*)

(*$HPPEMIT '' *)
(*$HPPEMIT '#ifdef __linux__' *)
(*$HPPEMIT '  /* provide dummy typedefs for the NTA types which may be referenced by */' *)
(*$HPPEMIT '  /* other interfaces.  The NTA interfaces are not available on Linux.  */' *)
(*$HPPEMIT '  namespace Toolsapi {' *)
(*$HPPEMIT '    typedef void* _di_INTAEditWindow;' *)
(*$HPPEMIT '    typedef void* _di_INTAComponent;' *)
(*$HPPEMIT '    typedef void* _di_INTAFormEditor;' *)
(*$HPPEMIT '    typedef void* _di_INTACustomDrawMessage;' *)
(*$HPPEMIT '    typedef void* _di_INTAServices40;' *)
(*$HPPEMIT '    typedef void* _di_INTAServices;' *)
(*$HPPEMIT '    typedef void* _di_INTAToDoItem;' *)
(*$HPPEMIT '    typedef void* _di_INTACustomDrawCodeInsightViewer;' *)
(*$HPPEMIT '  } /* namespace Toolsapi */ ' *)
(*$HPPEMIT '#endif /* __linux__ */' *)
(*$HPPEMIT '' *)

{ OTA Prefix - Open Tools API
  Accessing these interfaces only requires that the user use the Borlndmm.dll via
  sharemem. }
{ NTA Prefix - Native Tools API
  Access these interfaces requires that the user compile requiring vclxx.bpl
  since actual objects are passed among the interfaces. }

const
  utForm          = 0;
  utDataModule    = 1;
  utProjUnit      = 2;
  utUnit          = 3;
  utRc            = 4;
  utAsm           = 5;
  utDef           = 6;
  utObj           = 7;
  utRes           = 8;
  utLib           = 9;
  utTypeLib       = 10;
  utPackageImport = 11;
  utFormResource  = 12;
  utNoMake        = 13;

  atWhiteSpace     = 0;
  atComment        = 1;
  atReservedWord   = 2;
  atIdentifier     = 3;
  atSymbol         = 4;
  atString         = 5;
  atNumber         = 6;
  atFloat          = 7;
  atOctal          = 8; // not used in Pascal tokenizer
  atHex            = 9;
  atCharacter      = 10; // not used in Pascal tokenizer
  atPreproc        = 11;
  atIllegal        = 12; // not used in Pascal tokenizer
  atAssembler      = 13;
  SyntaxOff        = 14;

  MarkedBlock      = 15;
  SearchMatch      = 16;

  atHotLink        = 17;
  
  atTags           = 20;
  atAttrNames      = 21;
  atAttrValues     = 22;
  atScripts        = 23;

  RightMargin      = 37;

  lfCurrentEIP          = $0001;
  lfBreakpointEnabled   = $0002;
  lfBreakpointDisabled  = $0004;
  lfBreakpointInvalid   = $0008;
  lfErrorLine           = $0010;
  lfBreakpointVerified  = $0020;
  lfBackgroundBkpt      = $0040; // Breakpoint only valid in a non-active process
  lfBackgroupEIP        = $0080; // Execution point only valid in a non-active process

  // The following string constants are the internal names of editor macro
  // "scripts" that get executed in response to certain menu commands.  This
  // allows a menu command to execute the exact same internal "macro script"
  // as the direct key binding.

  mcGetFindString = 'GetFindString';
  mcReplace = 'Replace';
  mcRepeatSearch = 'RepeatSearch';
  mcIncrementalSearch = 'IncrementalSearch';
  mcGotoLine = 'GotoLine';
  mcClipCut = 'ClipCut';
  mcClipCopy = 'ClipCopy';
  mcClipPaste = 'ClipPaste';
  mcClipClear = 'ClipClear';
  mcHelpKeywordSearch = 'HelpKeywordSearch';
  mcOpenFileAtCursor = 'OpenFileAtCursor';
  mcToggleBreakpoint = 'ToggleBreakpoint';
  mcRunToHere = 'RunToHere';
  mcUndo = 'Undo';
  mcRedo = 'Redo';
  mcModify = 'Modify';
  mcAddWatchAtCursor = 'AddWatchAtCursor';
  mcInspectAtCursor = 'InspectAtCursor';
  mcSetMark0 = 'setMark0';
  mcSetMark1 = 'setMark1';
  mcSetMark2 = 'setMark2';
  mcSetMark3 = 'setMark3';
  mcSetMark4 = 'setMark4';
  mcSetMark5 = 'setMark5';
  mcSetMark6 = 'setMark6';
  mcSetMark7 = 'setMark7';
  mcSetMark8 = 'setMark8';
  mcSetMark9 = 'setMark9';
  mcMoveToMark0 = 'moveToMark0';
  mcMoveToMark1 = 'moveToMark1';
  mcMoveToMark2 = 'moveToMark2';
  mcMoveToMark3 = 'moveToMark3';
  mcMoveToMark4 = 'moveToMark4';
  mcMoveToMark5 = 'moveToMark5';
  mcMoveToMark6 = 'moveToMark6';
  mcMoveToMark7 = 'moveToMark7';
  mcMoveToMark8 = 'moveToMark8';
  mcMoveToMark9 = 'moveToMark9';

  // the following constant defines the name of the IDE's editor keymapping
  // table.  This keyboard is *always* defined and should not be popped
  // from the stack.

  sEditor = 'editor';

  // The following constants define the currently available form designers,
  // CLX or VCL.  Use dAny for a wizard that doesn't care under which designer 
  // it is invoked.

  dVCL = 'dfm';
  dCLX = 'xfm';
  dAny = 'Any';

  WizardEntryPoint = 'INITWIZARD0001';
  isWizards = 'Wizards';

  { IDE's Toolbar names }
  sCustomToolBar = 'CustomToolBar';
  sStandardToolBar = 'StandardToolBar';
  sDebugToolBar = 'DebugToolBar';
  sViewToolBar = 'ViewToolBar';
  sDesktopToolBar = 'DesktopToolBar';
  sInternetToolBar = 'InternetToolBar';
  sCORBAToolBar = 'CORBAToolBar';

  { Default IDE application/project types }
  sApplication = 'Application';
  sLibrary = 'Library';
  sConsole = 'Console';
  sPackage = 'Package';

  { Default IDE Module/Unit types }
  sUnit = 'Unit'; // Raw no form designer unit/C++ module and skeleton code
  sForm = 'Form'; // Unit/C++ module with a form designer
  sText = 'Text'; // Raw single file module with no skeleton code

  { TMoveCursorMasks }
  { The move cursor mask can be built from one of the following
    mmSkipWord       - Skip to the next alphanumeric character
    mmSkipNonWord    - Skip to the next non-alphanumeric character
    mmSkipWhite      - Skip to the next whitespace character (space, tab, newline)
    mmSkipNonWhite   - Skip to the next non-whitespace character
    mmSkipSpecial    - Skip to the next non-alphanumeric and non-whitespace character
    mmSkipNonSpecial - Skip to the next alphanumeric or whitespace character

    The following can be combined with any of the above
    mmSkipLeft       - Move to the left or toward the beginning of the file
    mmSkipRight      - Move to the right or toward the end of the file

    The following can be combined with any of the above
    mmSkipStream     - Ignore line ends when skipping.  When used with
                       mmSkipWhite, and the cursor is at the beginning or end
                       of a line, the cursor will continue to move until it
                       reaches a non-white character, non-EOL character, BOF or
                       EOF }
  mmSkipWord       = $00;
  mmSkipNonWord    = $01;
  mmSkipWhite      = $02;
  mmSkipNonWhite   = $03;
  mmSkipSpecial    = $04;
  mmSkipNonSpecial = $05;
  mmSkipLeft       = $00;
  mmSkipRight      = $10;
  mmSkipStream     = $20;

  { TCodeCompleteStyle }
  { The code completion syle can be built from one the following
    csCodeList     - Invoke the IDE's CodeInsight Code completion function
    csParamList    - Invoke the IDE's CodeInsight Code parameters function

    One of the above can be combined with the following
    csManual       - This will cause the operation to be invoked immediately,
                     otherwise the IDE will use the delay timer set through the
                     Code Insight option before invoking the operation.
  }

  csCodelist       = $01;
  csParamList      = $02;
  csManual         = $80;

  { TKeyBindingFlags }
  { When assign a keybinding you may pass a combination of the following flags.
      NOTE: This *only* affects the terminal key (the last in a multi-key
            sequence).
    kfImplicitShift    - if the keycode is alpha, assign both the upper and
                         lower case versions.
    kfImplicitModifier - <Ctrl+k><Ctrl+b> = <Ctrl+K><b>
    kfImplicitKeypad   - When an assignment is made to a sequence with a
                         numeric keypad (Keypad) equivalent, such as PageUp,
                         a second assignment is implicitly made for the
                         equivalent
  }
  kfImplicitShift = $01;
  kfImplicitModifier = $02;
  kfImplicitKeypad = $04;

  { TRipFlags }
  { When calling RipText use these flags to control the most common character
    sets to include is the text ripped from the editor.

    rfBackward               - Rip the text backward or toward the beginning of the file
    rfInvertLegalChars       - Include in ripped text characters that are *not* in the set
    rfIncludeUpperAlphaChars - Automatically include all the upper case alpha characters
    rfIncludeLowerAlphaChars - Automatically include all the lower case alpha characters
    rfIncludeAlphaChars      - Automatically include all the upper and lower case alpha characters
    rfIncludeNumericChars    - Automatically include all the numeric characters
    rfIncludeSpecialChars    - Automatically include all the special characters such as "()[]..."
  }

  rfBackward               = $0100;
  rfInvertLegalChars       = $1000;
  rfIncludeUpperAlphaChars = $0001;
  rfIncludeLowerAlphaChars = $0002;
  rfIncludeAlphaChars      = $0003;
  rfIncludeNumericChars    = $0004;
  rfIncludeSpecialChars    = $0008;

  { Possible values for TOTAModuleType }

  omtForm          = 0;
  omtDataModule    = 1;
  omtProjUnit      = 2;
  omtUnit          = 3;
  omtRc            = 4;
  omtAsm           = 5;
  omtDef           = 6;
  omtObj           = 7;
  omtRes           = 8;
  omtLib           = 9;
  omtTypeLib       = 10;
  omtPackageImport = 11;
  omtFormResource  = 12;
  omtCustom        = 13;
  omtIDL           = 14;


{ IOTAEditOptions now are associated with file types. See
  IOTAEditorServices for more information }
const
  cDefEdDefault = 'Borland.EditOptions.Default';
  cDefEdPascal = 'Borland.EditOptions.Pascal';
  cDefEdC = 'Borland.EditOptions.C';
  cDefEdCSharp = 'Borland.EditOptions.C#';
  cDefEdHTML = 'Borland.EditOptions.HTML';
  cDefEdXML = 'Borland.EditOptions.XML';
  cDefEdSQL = 'Borland.EditOptions.SQL';
  cDefEdIDL = 'Borland.EditOptions.IDL'; 

type
  {
    cmOTAMake - Normal make
    cmOTABuild - Builds all modules that have source.
    cmOTACheck - Normal make without final link
    cmOTAMakeUnit - Valid only on an IOTAModule and in C++Builder
  }

  TOTACompileMode = (cmOTAMake, cmOTABuild, cmOTACheck, cmOTAMakeUnit);


  TOTAModuleType = type Integer;
  TOTAHandle = Pointer;

  TOTAToDoPriority = 0..5;

  { Editor position expressed as column/line after tabs are expanded to spaces
    and include the "virtual" editor space (columns beyond the end of lines) }
  TOTAEditPos = packed record
    Col: SmallInt; { Col is one-based }
    Line: Longint; { Line is one-based }
  end;

  { Editor position expressed as character index/line before tabs are expanded
    and does not include the indecies beyond the end of a line }
  TOTACharPos = packed record
    CharIndex: SmallInt; { CharIndex is zero-based }
    Line: Longint; { Line is one-based }
  end;

  { Available option name expressed as a name and a type }
  TOTAOptionName = record
    Name: string;
    Kind: TTypeKind;
  end;

  { Dynamic array of option names }
  TOTAOptionNameArray = array of TOTAOptionName;

{$IFDEF MSWINDOWS}
  TOTAThreadContext = Windows.TContext;
{$ENDIF}
{$IFDEF LINUX}
  TFloatingSaveArea = record
    ControlWord: DWORD;
    StatusWord: DWORD;
    TagWord: DWORD;
    ErrorOffset: DWORD;
    ErrorSelector: DWORD;
    DataOffset: DWORD;
    DataSelector: DWORD;
    RegisterArea: array[0..79] of Byte;
    Cr0NpxState: DWORD;
  end;

  TOTAThreadContext = record
    ContextFlags: DWORD;
    Dr0: DWORD;
    Dr1: DWORD;
    Dr2: DWORD;
    Dr3: DWORD;
    Dr6: DWORD;
    Dr7: DWORD;
    FloatSave: TFloatingSaveArea;
    SegGs: DWORD;
    SegFs: DWORD;
    SegEs: DWORD;
    SegDs: DWORD;
    Edi: DWORD;
    Esi: DWORD;
    Ebx: DWORD;
    Edx: DWORD;
    Ecx: DWORD;
    Eax: DWORD;
    Ebp: DWORD;
    Eip: DWORD;
    SegCs: DWORD;
    EFlags: DWORD;
    Esp: DWORD;
    SegSs: DWORD;
  end;
{$ENDIF}

  TOTAXMMReg = packed record
    case Integer of
      0: (ByteReg: packed array[0..15] of Byte);
      1: (WordReg: packed array[0..7] of Word);
      2: (LongReg: packed array[0..3] of LongWord);
      3: (Int64Reg: packed array[0..1] of Int64);
// not yet: 4: (UInt64Reg: packed array[0..1] of UInt64);
      5: (SingleReg: packed array[0..3] of Single);
      6: (DoubleReg: packed array[0..1] of Double);
  end;

  TOTAXMMRegs = packed record
    XMM0: TOTAXMMReg;
    XMM1: TOTAXMMReg;
    XMM2: TOTAXMMReg;
    XMM3: TOTAXMMReg;
    XMM4: TOTAXMMReg;
    XMM5: TOTAXMMReg;
    XMM6: TOTAXMMReg;
    XMM7: TOTAXMMReg;
  end;

  IOTAProject = interface;
  IOTAModule = interface;
  IOTANotifier = interface;
  IOTAEditView = interface;
  IOTAEditBuffer = interface;
  IOTAFormEditor = interface;
  IOTAComponent = interface;
  IBorlandIDEServices = interface;
  IOTAEditOptions = interface;
  IOTAEditorServices = interface;
  IOTAKeyboardServices = interface;
  IOTAKeyContext = interface;
  IOTAEditBlock = interface;

  { TBindingType - Indicates to the IDE how to manage this keybinding interface
     btComplete  - This keybinding defines a complete keybinding for the editor.
                   It is mutually exclusive of *all* other btComplete bindings.
                   All pre-defined internal keymaps are btComplete.
     btPartial   - This binding only implements a partial binding.  Many of
                   these may be registered and enabled as the user selects.  The
                   order of registration is determined by the user through the
                   IDE in the Tools|Editor Options dialog, Key Mappings page.
  }
  TBindingType = (btComplete, btPartial);

  { TKeyBindingResult }
  { krUnhandled - Return this if the key is not to be handled by this proc.
                  Will execute the next handler assigned to this key.  This will
                  also allow any menu shortcuts to execute if no other handers
                  handle the key.
    krHandled   - This proc handled the key and no further processing is
                  required.  No menu shortcuts will be processed
    krNextProc  - This proc handled the key but execute the next handler if one
                  exists. No menu shortcuts will be processed }
  TKeyBindingResult = (krUnhandled, krHandled, krNextProc);

  { Keybinding proc }
  TKeyBindingProc = procedure (const Context: IOTAKeyContext; KeyCode: TShortcut;
    var BindingResult: TKeyBindingResult) of object;

  TMoveCursorMasks = Byte;

  { TSearchDirection }
  TSearchDirection = (sdForward, sdBackward);

  IOTANotifier = interface(IUnknown)
    ['{F17A7BCF-E07D-11D1-AB0B-00C04FB16FB3}']
    { This procedure is called immediately after the item is successfully saved.
      This is not called for IOTAWizards }
    procedure AfterSave;
    { This function is called immediately before the item is saved. This is not
      called for IOTAWizard }
    procedure BeforeSave;
    { The associated item is being destroyed so all references should be dropped.
      Exceptions are ignored. }
    procedure Destroyed;
    { This associated item was modified in some way. This is not called for
      IOTAWizards }
    procedure Modified;
  end;

  IOTAEditorNotifier = interface(IOTANotifier)
    ['{0E3B9D7B-E119-11D1-AB0C-00C04FB16FB3}']
    { Called when a new edit view is created(opInsert) or destroyed(opRemove) }
    procedure ViewNotification(const View: IOTAEditView; Operation: TOperation);
    { Called when a view is activated }
    procedure ViewActivated(const View: IOTAEditView);
  end;

  IOTAFormNotifier = interface(IOTANotifier)
    ['{0E3B9D7C-E119-11D1-AB0C-00C04FB16FB3}']
    { Called when the given form is activated }
    procedure FormActivated;
    { This is called immediately prior to the form being streamed out.  This
      may be called without first getting a BeforeSave as in the case of
      the project being compiled. }
    procedure FormSaving;
    { Called when a component on this form was renamed }
    procedure ComponentRenamed(ComponentHandle: TOTAHandle;
      const OldName, NewName: string);
  end;

  IOTAEditor = interface(IUnknown)
    ['{F17A7BD0-E07D-11D1-AB0B-00C04FB16FB3}']
    { Call this to register an IOTANotifier. The result is the index to be
      used when calling RemoveNotifier. If <0 then an error occurred. }
    function AddNotifier(const ANotifier: IOTANotifier): Integer;
    { Returns the actual filename of this module editor. Rename through
      IOTAModule}
    function GetFileName: string;
    { Returns the editor specific modified status }
    function GetModified: Boolean;
    { Returns the associated IOTAModule }
    function GetModule: IOTAModule;
    { Mark this editor modified.  The associated module will also be modified }
    function MarkModified: Boolean;
    { Call with the index obtained from AddNotifier }
    procedure RemoveNotifier(Index: Integer);
    { Show this editor.  If no views are active, at least one will be created }
    procedure Show;

    property FileName: string read GetFileName;
    property Modified: Boolean read GetModified;
    property Module: IOTAModule read GetModule;
  end;

  IOTAToolsFilterNotifier = interface(IOTANotifier)
    ['{CEF1F13A-E877-4F20-88F2-F7E2BA61AAF4}']
    { Used by tools filter to fill message view with build result information. }
    { FileName is the name of the file that was compiled. }
    { ErrorCode is the error code result from the compile. }
    { StdOut is a string list of the standard out while the tool was executed. }
    { StdError is a string list of the standard error while the tool was executed. }
    procedure Filter(FileName: string; ErrorCode: Integer;
      StdOut,  StdError: TStrings);
    { Should return an unique name for the filter. }
    function GetFilterName: string;
  end;

  IOTAToolsFilter60 = interface(IUnknown)
    ['{8864B891-9B6D-4002-BB2E-1D6E59BFA49A}']
    { Call this to register an IOTANotifier. The result is the index to be
      used when calling RemoveNotifier. If <0 then an error occurred. }
    function AddNotifier(const ANotifier: IOTANotifier): Integer;
    { Call with the index obtained from AddNotifier }
    procedure RemoveNotifier(Index: Integer);
  end;

  IOTAToolsFilter = interface(IOTAToolsFilter60)
    ['{891B2757-FC6F-4DE9-B653-F55A52733324}']
    function FindFilter(const Name: string): IUnknown;
  end;

  { Use the IOTAEditReader class to gain read access to an editor buffer:

    NOTES:
      The buffer is accessed as a linear "file" with line breaks included.
      This reader interface could be accessed through a custom read-only
      TStream descendant.

    WARNING!!!
     o A IOTAEditReader should never be active at the same time as an IOTAEditWriter.
  }

  IOTAEditReader = interface(IUnknown)
    ['{26EB0E4F-F97B-11D1-AB27-00C04FB16FB3}']
    function GetText(Position: Longint; Buffer: PChar; Count: Longint): Longint;
  end;

  { Use the IOTAEditWriter class to gain write access to an editor buffer:

    NOTES:
     o As with the reader, the buffer is accessed as a linear "file" with
       line breaks included.  The writer uses a "copy in place" metaphor for
       modifying the editor buffer.  In other words, the writer can be thought
       of as simply copying from one buffer to another.  All positions (Pos)
       passed to the function are positions relative to the orginal file.  Due
       to the "copy" metaphor of the writer it does not support moving backward
       in the editor buffer. It is recomended that all modifications that must
       be performed should be done from the start to the finish.
     o After the IOTAEditWriter is released, the undo-buffer of the editor
       is flushed unless CreateUndoableWriter was called to obtain the
       IOTAEditWriter.

    WARNING!!!
     o A IOTAEditWriter should never be active at the same time as an IOTAEditReader.
  }

  IOTAEditWriter = interface(IUnknown)
    ['{26EB0E50-F97B-11D1-AB27-00C04FB16FB3}']
    procedure CopyTo(Pos: Longint);
    procedure DeleteTo(Pos: Longint);
    procedure Insert(Text: PChar);
    function Position: Longint;
    function GetCurrentPos: TOTACharPos;

    property CurrentPos: TOTACharPos read GetCurrentPos;
  end;

  { TOTASyntaxHighlighter is deprecated }
  TOTASyntaxHighlighter = (shNone = 0,
                           shQuery = 1,
                           shPascal = 2,
                           shC = 3,
                           shSQL = 4,
                           shIDL = 5,
                           shMax = $FF);

  {
    TOTASyntaxCode:
      The values which should be used with this type are defined in ToolsAPI as:
        atWhiteSpace     = 0;
        atComment        = 1;
        atReservedWord   = 2;
        atIdentifier     = 3;
        etc...

        Do not exceed SyntaxOff
  }
  POTASyntaxCode = ^TOTASyntaxCode;
  TOTASyntaxCode = Byte;
  {
    TOTALineClass:
      The value which is used for this type in the Highlighter interfaces is
      user defineable (it is used to gain context for lines).
  }
  TOTALineClass  = Byte;
  {$IFDEF FATCHAR}
  POTAEdChar = PWideChar;
  {$ELSE}
  POTAEdChar = PChar;
  {$ENDIF}
  {
    TOTALineSize:
      Length of line buffer to be tokenized.
  }
  TOTALineSize = Word;

  IOTAHighlighter = interface(IOTANotifier)
  ['{79D28DA1-42F6-44B9-AE33-D001FD75DC40}']
    function GetIDString: string;
    function GetName: string;
    procedure Tokenize(StartClass: TOTALineClass; LineBuf: POTAEdChar;
      LineBufLen: TOTALineSize; HighlightCodes: POTASyntaxCode);
    function TokenizeLineClass(StartClass: TOTALineClass;
      LineBuf: POTAEdChar; LineBufLen: TOTALineSize): TOTALineClass;
    property Name: string read GetName;
    property IDString: string read GetIDString;
  end;

  IOTAHighlightServices = interface
  ['{78C26089-6CAD-40D1-BAC2-37A84DF8F3E6}']
    function GetHighlighterCount: Integer;
    function GetHighlighter(Index: Integer): IOTAHighlighter;
    function AddHighlighter(const AHighlighter: IOTAHighlighter): Integer;
    procedure RemoveHighlighter(Index: Integer);
    property Highlighter[Index: Integer]: IOTAHighlighter read GetHighlighter;
    property HighlighterCount: Integer read GetHighlighterCount;
  end;

  TOTABlockType = (btInclusive, btLine, btColumn, btNonInclusive, btUnknown);

  IOTAEditView40 = interface(IUnknown)
    ['{0E3B9D78-E119-11D1-AB0C-00C04FB16FB3}']
    { Return the Current cursor position }
    function GetCursorPos: TOTAEditPos;
    { Set the current Cursor position }
    procedure SetCursorPos(const Value: TOTAEditPos);
    { Return the Current top visible position }
    function GetTopPos: TOTAEditPos;
    { Set the current top visible position }
    procedure SetTopPos(const Value: TOTAEditPos);
    { Get size of the visible portion of the view in character cells }
    function GetViewSize: TSize;
    { Converts a linear buffer offset position to a CharPos }
    function PosToCharPos(Pos: Longint): TOTACharPos;
    { Convert a CharPos to a linear buffer offset }
    function CharPosToPos(CharPos: TOTACharPos): Longint;
    { Convert between a EdPos and a CharPos }
    procedure ConvertPos(EdPosToCharPos: Boolean; var EditPos: TOTAEditPos;
      var CharPos: TOTACharPos);
    { Return the token attributes at the given EdPos. If IncludeMargin is true,
      the attribute at the right margin line is the margin line attribute, else
      it returns the actual char attribute }
    procedure GetAttributeAtPos(const EdPos: TOTAEditPos; IncludeMargin: Boolean;
      var Element, LineFlag: Integer);
    { Returns true if this interface instance is connected to the same
      underlying view as the indicated instance.  You must use this method
      in order to test for equality between views since several interface
      instances may share a single view.  You should also not hold onto
      these view interfaces for any length of time, unless a notifier is
      registered with the IOTASourceEditor so you can determine when the
      underlying implementation is vanishing. }
    function SameView(EditView: IOTAEditView): Boolean;

    property CursorPos: TOTAEditPos read GetCursorPos write SetCursorPos;
    property TopPos: TOTAEditPos read GetTopPos write SetTopPos;
    property ViewSize: TSize read GetViewSize;
  end;

  IOTASearchOptions = interface(IUnknown)
    ['{D1766F8B-D915-11D2-A8C1-00C04FA32F53}']
    function GetCaseSensitive: Boolean;
    function GetDirection: TSearchDirection;
    function GetFromCursor: Boolean;
    function GetRegularExpression: Boolean;
    function GetSearchText: string;
    function GetWholeFile: Boolean;
    function GetWordBoundary: Boolean;
    procedure SetCaseSensitive(Value: Boolean);
    procedure SetDirection(Value: TSearchDirection);
    procedure SetFromCursor(Value: Boolean);
    procedure SetRegularExpression(Value: Boolean);
    procedure SetSearchText(const Value: string);
    procedure SetWholeFile(Value: Boolean);
    procedure SetWordBoundary(Value: Boolean);

    property CaseSensitive: Boolean read GetCaseSensitive write SetCaseSensitive;
    property Direction: TSearchDirection read GetDirection write SetDirection;
    property FromCursor: Boolean read GetFromCursor write SetFromCursor;
    property RegularExpression: Boolean read GetRegularExpression write SetRegularExpression;
    property SearchText: string read GetSearchText write SetSearchText;
    property WholeFile: Boolean read GetWholeFile write SetWholeFile;
    property WordBoundary: Boolean read GetWordBoundary write SetWordBoundary;
  end;

  IOTAReplaceOptions = interface(IOTASearchOptions)
    ['{D1766F8C-D915-11D2-A8C1-00C04FA32F53}']
    function GetPromptOnReplace: Boolean;
    function GetReplaceAll: Boolean;
    function GetReplaceText: string;
    procedure SetPromptOnReplace(Value: Boolean);
    procedure SetReplaceAll(Value: Boolean);
    procedure SetReplaceText(const Value: string);

    property PromptOnReplace: Boolean read GetPromptOnReplace write SetPromptOnReplace;
    property ReplaceAll: Boolean read GetReplaceAll write SetReplaceAll;
    property ReplaceText: string read GetReplaceText write SetReplaceText;
  end;

  IOTAEditPosition = interface(IUnknown)
    ['{9C510464-C7BC-11D2-9AEB-00A02457621F}']
    procedure Align(Magnitude: Integer);
    function BackspaceDelete(HowMany: Integer): Boolean;
    function Delete(HowMany: Integer): Boolean;
    function DistanceToTab(Direction: TSearchDirection): Integer;
    function GetCharacter: Char;
    function GetColumn: Integer;
    function GetIsSpecialCharacter: Boolean;
    function GetIsWhitespace: Boolean;
    function GetIsWordCharacter: Boolean;
    function GetLastRow: Integer;
    function GetReplaceOptions: IOTAReplaceOptions;
    function GetRow: Integer;
    function GetSearchErrorString(ErrorCode: Integer): string;
    function GetSearchOptions: IOTASearchOptions;
    function GotoLine(LineNumber: Integer): Boolean;
    procedure InsertBlock(const Block: IOTAEditBlock);
    procedure InsertCharacter(Character: Char);
    procedure InsertFile(const FileName: string);
    procedure InsertText(const Text: string);
    function Move(Row, Col: Integer): Boolean;
    function MoveBOL: Boolean;
    function MoveCursor(MoveMask: TMoveCursorMasks): Boolean;
    function MoveEOF: Boolean;
    function MoveEOL: Boolean;
    function MoveReal(Row, Col: Integer): Boolean;
    function MoveRelative(Row, Col: Integer): Boolean;
    procedure Paste;
    function Read(NumberOfCharacters: Integer): string;
    function RepeatLastSearchOrReplace: Boolean;
    function Replace(const Pattern, ReplaceText: string; CaseSensitive,
      RegularExpression, WholeFile: Boolean; Direction: TSearchDirection;
      var ErrorCode: Integer): Integer; overload;
     
    function Replace: Integer; overload;
     
    function ReplaceAgain: Integer;
    procedure Restore;
    function RipText(const ValidChars: TSysCharSet; RipFlags: Integer): string; overload;
     
    function RipText(const ValidChars: string; RipFlags: Integer): string; overload;
     
    procedure Save;
    function Search(const Pattern: string; CaseSensitive, RegularExpression,
      WholeFile: Boolean; Direction: TSearchDirection;
      var ErrorCode: Integer): Boolean; overload;
     
    function Search: Boolean; overload;
     
    function SearchAgain: Boolean;
    procedure Tab(Magnitude: Integer);

    property Character: Char read GetCharacter;
    property Column: Integer read GetColumn;
    property IsSpecialCharacter: Boolean read GetIsSpecialCharacter;
    property IsWhiteSpace: Boolean read GetIsWhiteSpace;
    property IsWordCharacter: Boolean read GetIsWordCharacter;
    property LastRow: Integer read GetLastRow;
    property ReplaceOptions: IOTAReplaceOptions read GetReplaceOptions;
    property Row: Integer read GetRow;
    property SearchOptions: IOTASearchOptions read GetSearchOptions;
  end;

  IOTAEditBlock = interface(IUnknown)
    ['{9C510463-C7BC-11D2-9AEB-00A02457621F}']
    procedure BeginBlock;
    procedure Copy(Append: Boolean);
    procedure Cut(Append: Boolean);
    function Delete: Boolean;
    procedure EndBlock;
    function Extend(NewRow, NewCol: Integer): Boolean;
    function ExtendPageUp: Boolean;
    function ExtendPageDown: Boolean;
    function ExtendReal(NewRow, NewCol: Integer): Boolean;
    function ExtendRelative(DeltaRow, DeltaCol: Integer): Boolean;
    function GetEndingColumn: Integer;
    function GetEndingRow: Integer;
    function GetIsValid: Boolean;
    function GetSize: Integer;
    function GetStartingColumn: Integer;
    function GetStartingRow: Integer;
    function GetStyle: TOTABlockType;
    function GetText: string;
    function GetVisible: Boolean;
    procedure Indent(Magnitude: Integer);
    procedure LowerCase;
    function Print: Boolean;
    procedure Reset;
    procedure Restore;
    procedure Save;
    function SaveToFile(const FileName: string): Boolean;
    procedure SetStyle(Value: TOTABlockType);
    procedure SetVisible(Value: Boolean);
    procedure ToggleCase;
    procedure UpperCase;

    property EndingColumn: Integer read GetEndingColumn;
    property EndingRow: Integer read GetEndingRow;
    property IsValid: Boolean read GetIsValid;
    property Size: Integer read GetSize;
    property StartingColumn: Integer read GetStartingColumn;
    property StartingRow: Integer read GetStartingRow;
    property Style: TOTABlockType read GetStyle write SetStyle;
    property Text: string read GetText;
    property Visible: Boolean read GetVisible write SetVisible;
  end;

  INTAEditWindow = interface(IUnknown)
    ['{8CC6430B-E721-11D2-A8CC-00C04FA32F53}']
    function GetForm: TCustomForm;
    function GetStatusBar: TStatusBar;

    property Form: TCustomForm read GetForm;
    property StatusBar: TStatusBar read GetStatusBar;
  end;
  {$IFDEF LINUX}
  {$NODEFINE INTAEditWindow}
  {$ENDIF}

  IOTAEditView = interface(IOTAEditView40)
    ['{9C510462-C7BC-11D2-9AEB-00A02457621F}']
    function BookmarkGoto(BookmarkID: Integer): Boolean;
    function BookmarkRecord(BookmarkID: Integer): Boolean;
    function BookmarkToggle(BookmarkID: Integer): Boolean;
    procedure Center(Row, Col: Integer);
    function GetBlock: IOTAEditBlock;
    function GetBookmarkPos(BookmarkID: Integer): TOTACharPos;
    function GetBottomRow: Integer;
    function GetBuffer: IOTAEditBuffer;
    function GetEditWindow: INTAEditWindow;
    function GetLastEditColumn: Integer;
    function GetLastEditRow: Integer;
    function GetLeftColumn: Integer;
    function GetPosition: IOTAEditPosition;
    function GetRightColumn: Integer;
    function GetTopRow: Integer;
    procedure MoveCursorToView;
    procedure MoveViewToCursor;
    procedure PageDown;
    procedure PageUp;
    procedure Paint;
    function Scroll(DeltaRow: Integer; DeltaCol: Integer): Integer;
    procedure SetTopLeft(TopRow, LeftCol: Integer);
    procedure SetTempMsg(const Msg: string);

    property Block: IOTAEditBlock read GetBlock;
    property BottomRow: Integer read GetBottomRow;
    property BookmarkPos[BookMarkID: Integer]: TOTACharPos read GetBookmarkPos;
    property Buffer: IOTAEditBuffer read GetBuffer;
    property LastEditColumn: Integer read GetLastEditColumn;
    property LastEditRow: Integer read GetLastEditRow;
    property LeftColumn: Integer read GetLeftColumn;
    property Position: IOTAEditPosition read GetPosition;
    property RightColumn: Integer read GetRightColumn;
    property TopRow: Integer read GetTopRow;
  end;

  TClassNavigateStyle = Byte;
  TCodeCompleteStyle = Byte;

  IOTAEditActions60 = interface(IUnknown)
    ['{ECB23623-E2D8-11D2-ABE5-00C04FB16FB3}']
    procedure AddWatch;
    procedure AddWatchAtCursor;
    procedure BrowseSymbolAtCursor;
    procedure ClassComplete;
    procedure ClassNavigate(Reserved: TClassNavigateStyle);
    procedure ClosePage;
    procedure CodeTemplate;
    procedure CodeCompletion(Style: TCodeCompleteStyle);
    procedure EvaluateModify;
    procedure HelpKeyword;
    procedure IncrementalSearch;
    procedure InsertCompilerOptions;
    procedure InsertNewGUID;
    procedure InspectAtCursor;
    procedure CompileProject;
    procedure NextError;
    procedure NextPage;
    procedure OpenFile;
    procedure OpenFileAtCursor;
    procedure PriorError;
    procedure PriorPage;
    procedure ProgramReset;
    procedure RunProgram;
    procedure RunToCursor;
    procedure SaveAll;
    procedure Save;
    procedure SaveAs;
    procedure StepOver;
    procedure SwapSourceFormView;
    procedure SwapCPPHeader;
    procedure ToggleFormUnit;
    procedure TraceInto;
    procedure TraceToSource;
    procedure ViewExplorer;
    procedure ViewForms;
    procedure ViewObjectInspector;
    procedure ViewUnits;
    procedure WindowList;
    procedure ZoomWindow;
  end;

  IOTAEditActions = interface(IOTAEditActions60)
    ['{9A073F11-2732-D611-958B-00C04FA06AFC}']
    procedure NextBufferView;
    procedure PreviousBufferView;
  end;

  IOTASourceEditor = interface(IOTAEditor)
    ['{F17A7BD1-E07D-11D1-AB0B-00C04FB16FB3}']
    { Create and return an IOTAEditReader }
    function CreateReader: IOTAEditReader;
    { Create and return an IOTAEditWriter. Changes are not undoable }
    function CreateWriter: IOTAEditWriter;
    { Create and return an IOTAEditWriter. Changes are undoable }
    function CreateUndoableWriter: IOTAEditWriter;
    { Return the number of active views on this editor }
    function GetEditViewCount: Integer;
    { Return the Indexed view }
    function GetEditView(Index: Integer): IOTAEditView;
    { Returns the total number of lines in this source editor }
    function GetLinesInBuffer: Longint;
    { Change the syntax highlighter for this buffer or if shQuery is set,
      simply return the currently set highlighter.
      SetSyntaxHighlighter is deprecated. Use the IOTAEditOptions. }
    function SetSyntaxHighlighter(SyntaxHighlighter: TOTASyntaxHighlighter): TOTASyntaxHighlighter; deprecated;
    { These functions will affect all views on this buffer. }
    function GetBlockAfter: TOTACharPos;
    function GetBlockStart: TOTACharPos;
    function GetBlockType: TOTABlockType;
    function GetBlockVisible: Boolean;
    procedure SetBlockAfter(const Value: TOTACharPos);
    procedure SetBlockStart(const Value: TOTACharPos);
    procedure SetBlockType(Value: TOTABlockType);
    procedure SetBlockVisible(Value: Boolean);

    property BlockStart: TOTACharPos read GetBlockStart write SetBlockStart;
    property BlockAfter: TOTACharPos read GetBlockAfter write SetBlockAfter;
    property BlockType: TOTABlockType read GetBlockType write SetBlockType;
    property BlockVisible: Boolean read GetBlockVisible write SetBlockVisible;
    property EditViewCount: Integer read GetEditViewCount;
    property EditViews[Index: Integer]: IOTAEditView read GetEditView;
  end;

  { IOTAResourceEntry is a raw interface to a resource entry in the project's
    resource file (<projectname>.RES).

    This interface is very raw.  No implication on what is contained within
    a particular entry is made.  Is if up to the add-in developer to interpret
    the data accessed through this interface.  NOTE: The 'MAINICON' entry and
    related entries should not be modified as these are maintained by Delphi/
    C++Builder. }

  TOTAResHeaderValue = (hvFlags, hvLanguage, hvDataVersion, hvVersion,
    hvCharacteristics);

  IOTAResourceEntry = interface(IUnknown)
    ['{26EB0E51-F97B-11D1-AB27-00C04FB16FB3}']
    { Gets the resource type of this entry.  Follows Windows standard of
      specifying a type by name or value.  If the high-word is 0, then the
      low-word is the resource type value, otherwise it is a pointer to a null
      terminated ANSI (byte per char) string. Most predefined types are by
      value. }
    function GetResourceType: PChar;
    { Gets the resource name of this entry.  Follows Windows standard of
      specifying a type by name or value. If the high-word is 0, then the
      low-word is the resource type value, otherwise it is a pointer to a null
      terminated ANSI (byte per char) string. }
    function GetResourceName: PChar;
    { Changes the Type and name of this resource entry }
    function Change(NewType, NewName: PChar): Boolean;
    { Gets and sets various resource header values.  Pass in one of the \
      TResHeaderValues enums to indicate which value to get/set.  Although
      some values are 16bits (Word) these functions operation only on
      32bits (Integer). }
    function GetHeaderValue(HeaderValue: TOTAResHeaderValue;
      var Value: Integer): Boolean;
    { See GetHeaderValue }
    function SetHeaderValue(HeaderValue: TOTAResHeaderValue;
      Value: Integer): Boolean;
    { Returns a raw pointer to the actual resource data buffer. }
    function GetData: Pointer;
    { Returns the current size of the data buffer. }
    function GetDataSize: Integer;
    { Resizes the current data buffer.  If the size is smaller than the
      current size, the data is simply truncated without regard to its
      current contents. }
    procedure SetDataSize(NewSize: Integer);
    { Returns a unique handle value identifying the resource entry. }
    function GetEntryHandle: TOTAHandle;

    property DataSize: Integer read GetDataSize write SetDataSize;
  end;

  { The IOTAProjectResource is an interface on the project's resource file
    (<projectname>.RES). }

  IOTAProjectResource = interface(IOTAEditor)
    ['{26EB0E52-F97B-11D1-AB27-00C04FB16FB3}']
    { Returns the number of Resource entries. }
    function GetEntryCount: Integer;
    { Given an index, returns a IOTAResourceEntry of the index'th entry. }
    function GetEntry(Index: Integer): IOTAResourceEntry;
    { Given an entry handle, return the IOTAResourceEntry }
    function GetEntryFromHandle(EntryHandle: TOTAHandle): IOTAResourceEntry;
    { Given a Resource type and name, return a IOTAResourceEntry or nil
      if not found. }
    function FindEntry(ResType, Name: PChar): IOTAResourceEntry;
    { Given an entry handle, delete the given resource entry. }
    procedure DeleteEntry(EntryHandle: TOTAHandle);
    { Creates a new resource entry of the given type and name and returns a
      IOTAResourceEntry.  Returns nil if the entry already exists or any other
      error occurs. }
    function CreateEntry(ResType, Name: PChar; Flags, LanguageId: Word;
      DataVersion, Version, Characteristics: Integer): IOTAResourceEntry;
  end;

  TOTAGetChildCallback = procedure (Param: Pointer; Component: IOTAComponent;
    var Result: Boolean) of object;

  { INTAComponent - This is the native component interface }

  INTAComponent = interface(IUnknown)
    ['{34B2E2D1-E36F-11D1-AB0E-00C04FB16FB3}']
    { Returns the actual TComponent/TPersistent }
    function GetPersistent: TPersistent;
    { Returns the TComponent if this interface is a TComponent else nil }
    function GetComponent: TComponent;
  end;
  {$IFDEF LINUX}
  {$NODEFINE INTAComponent}
  {$ENDIF}

  { The IOTAComponent is the base interface for a component living
    on a form/data module.  Never hold this interface for very long, since
    the component may be deleted at any time. }

  IOTAComponent = interface(IUnknown)
    ['{AC139ADF-329A-D411-87C6-9B2730412200}']
    // Old GUID ['{34B2E2D0-E36F-11D1-AB0E-00C04FB16FB3}']
    { Returns a string representing the type of the component. }
    function GetComponentType: string;
    { Returns a unique Handle to the TComponent/TPersistent }
    function GetComponentHandle: TOTAHandle;
    { Returns the interface corresponding to the parent control if a TControl,
      otherwise returns the owner of the control.  If a TPersistent or the
      root object then it returns nil. }
    function GetParent: IOTAComponent;
    { Returns True if component is a TControl descendant }
    function IsTControl: Boolean;
    { Returns the number of published properties on this component. }
    function GetPropCount: Integer;
    { Given the index, returns the property name. }
    function GetPropName(Index: Integer): string;
    { Given the index, returns the property type. }
    function GetPropType(Index: Integer): TTypeKind;
    { Given the name, returns the property type. }
    function GetPropTypeByName(const Name: string): TTypeKind;
    { Given the index or name, returns the property value. The untyped var
      must be large enough to hold the returned value.  If the property is
      a descendant of TPersistent, the return value is a IOTAComponent. For
      properties of any other object type, the return value is nil. }
    function GetPropValue(Index: Integer; var Value): Boolean;
    function GetPropValueByName(const Name: string; var Value): Boolean;
    { Given the index or name, sets the property value. }
    function SetProp(Index: Integer; const Value): Boolean;
    function SetPropByName(const Name: string; const Value): Boolean;
    { Enumerate the child controls just like TComponent.GetChildren }
    function GetChildren(Param: Pointer; Proc: TOTAGetChildCallback): Boolean;
    { Returns the number of child controls (if a TWinControl/TWidgetControl descendant,
      else returns 0). }
    function GetControlCount: Integer;
    { Given the index, returns an interface to the child control. }
    function GetControl(Index: Integer): IOTAComponent;
    { Returns the number of child components (if a TComponent descendant,
      else returns 0). }
    function GetComponentCount: Integer;
    { Given the index, returns an interface to the child component. }
    function GetComponent(Index: Integer): IOTAComponent;
    { Selects the component and updates the Object Inspector. If AddToSelection
      if true, then the current selection is not cleared, and the components are
      multi-selected }
    function Select(AddToSelection: Boolean): Boolean;
    { Same as Select except it brings the form to front with the component
      selected.  If this interface is a Form/Data Module, then Focus only
      brings the form to front. See Select for description of AddToSelection}
    function Focus(AddToSelection: Boolean): Boolean;
    { Deletes the component from the form.  Following this call, this interface
      will now be invalid and must be release. }
    function Delete: Boolean;
    { Returns the IPersistent interface }
    //function GetIPersistent: IPersistent;
    { Returns the IComponent interface if instance is a TComponent else nil }
    //function GetIComponent: IComponent;
  end;

  INTAFormEditor = interface(IUnknown)
    ['{56931EB9-329A-D411-87C6-9B2730412200}']
    // Old GUID ['{34B2E2CF-E36F-11D1-AB0E-00C04FB16FB3}']
    { Return the instance of the TFormDesigner on this editor }
    function GetFormDesigner: DesignIntf.IDesigner;
    procedure GetFormResource(Stream: TStream);

    property FormDesigner: DesignIntf.IDesigner read GetFormDesigner;
  end;
  {$IFDEF LINUX}
  {$NODEFINE INTAFormEditor}
  {$ENDIF}

  IOTAFormEditor = interface(IOTAEditor)
    ['{F17A7BD2-E07D-11D1-AB0B-00C04FB16FB3}']
    { Return the form editor root component }
    function GetRootComponent: IOTAComponent;
    function FindComponent(const Name: string): IOTAComponent;
    function GetComponentFromHandle(ComponentHandle: TOTAHandle): IOTAComponent;
    function GetSelCount: Integer;
    function GetSelComponent(Index: Integer): IOTAComponent;
    function GetCreateParent: IOTAComponent;
    function CreateComponent(const Container: IOTAComponent;
      const TypeName: string; X, Y, W, H: Integer): IOTAComponent;
    procedure GetFormResource(const Stream: IStream);
  end;

  IOTATypeLibEditor = interface(IOTAEditor)
    ['{F17A7BD3-E07D-11D1-AB0B-00C04FB16FB3}']
  end;

  { Interface implemented by a client to receive notifications
    on a specific module }
  IOTAModuleNotifier = interface(IOTANotifier)
    ['{F17A7BCE-E07D-11D1-AB0B-00C04FB16FB3}']
    { CheckOverwrite is called during a SaveAs operation to determine if any
      files associated with this module will overwrite any other files.
      Return True to allow the overwrite or no overwrite will occur }
    function CheckOverwrite: Boolean;
    { User has renamed the module }
    procedure ModuleRenamed(const NewName: string);
  end;

  IOTAModuleInfo50 = interface(IUnknown)
    ['{F17A7BD6-E07D-11D1-AB0B-00C04FB16FB3}']
    { Returns the type of this module }
    function GetModuleType: TOTAModuleType;
    { Returns the Module Name }
    function GetName: string;
    { Returns the Module File name }
    function GetFileName: string;
    { Returns the Form Name }
    function GetFormName: string;
    { Returns the Design class }
    function GetDesignClass: string;
    { Fills the TStrings class with the CoClasses }
    procedure GetCoClasses(CoClasses: TStrings);
    { Opens and returns the IOTAModule associated with this IOTAModuleInfo }
    function OpenModule: IOTAModule;

    property ModuleType: TOTAModuleType read GetModuleType;
    property Name: string read GetName;
    property FileName: string read GetFileName;
    property FormName: string read GetFormName;
    property DesignClass: string read GetDesignClass;
  end;

  IOTAModuleInfo = interface(IOTAModuleInfo50)
    ['{B3EEB4D2-ECDD-4CDC-B96E-B5C8F6D050A8}']
    { Returns the Custom module type identifier }
    function GetCustomId: string;
    { Fills the TStrings class with the Additional files }
    procedure GetAdditionalFiles(Files: TStrings);

    property CustomId: string read GetCustomId;
  end;

  IOTAModule40 = interface(IUnknown)
    ['{F17A7BCC-E07D-11D1-AB0B-00C04FB16FB3}']
    { Call this to register an IOTANotifier. The result is the index to be
      used when calling RemoveNotifier. If <0 then an error occurred. }
    function AddNotifier(const ANotifier: IOTAModuleNotifier): Integer;
    { This invokes the Add To Interface dialog in Delphi }
    procedure AddToInterface;
    { Attempt to close this module. True was successful and all references to
      this module must be released. False if this module was not closed. }
    function Close: Boolean;
    { Return the filename associated with this module.  This is only the base
      name used by the IDE.  Header source and forms are obtained other ways.}
    function GetFileName: string;
    { Return the currently assigned file system }
    function GetFileSystem: string;
    { Returns the number of associated files (eg. Unit1.Pas and Unit1.dfm) }
    function GetModuleFileCount: Integer;
    { Returns the associated file editor.  Use QueryInterface to determine if
      this is an IOTASourceEditor or IOTAFormEditor }
    function GetModuleFileEditor(Index: Integer): IOTAEditor;
    { Return the number of open projects that own this module }
    function GetOwnerCount: Integer; deprecated;
    { Return the Indexed Project that owns this module }
    function GetOwner(Index: Integer): IOTAProject; deprecated;
    { Returns True if this modules has CoClasses.  Can be used to determine if
      AddToInterface can be called }
    function HasCoClasses: Boolean;
    { Call with the index obtained from AddNotifier }
    procedure RemoveNotifier(Index: Integer);
    { Save the module. ChangeName invokes the SaveAs logic.  ForceSave will not
      ask to save if the module is modified. Returns False if canceled
      or an error }
    function Save(ChangeName, ForceSave: Boolean): Boolean;
    { Sets the module filename.  Header source and forms will use the base
      filename. }
    procedure SetFileName(const AFileName: string);
    { Sets the associated file system }
    procedure SetFileSystem(const AFileSystem: string);

    property OwnerCount: Integer read GetOwnerCount;
    property Owners[Index: Integer]: IOTAProject read GetOwner;
    property FileName: string read GetFileName write SetFileName;
    property FileSystem: string read GetFileSystem write SetFileSystem;
  end;

  IOTAModule50 = interface(IOTAModule40)
    ['{15D3FB81-EF27-488E-B2B4-26B59CA89D9D}']
    { CloseModule allows an add-in to force a module closed regardless of
      whether or not it is modified.  If ForceClosed is False, then calling
      this method has the same behaviour as Close as implemented in
      IOTAModule40 }
    function CloseModule(ForceClosed: Boolean): Boolean;

    // access to the IOTAEditors contained by a Module
    property ModuleFileCount: Integer read GetModuleFileCount;
    property ModuleFileEditors[Index: Integer]: IOTAEditor read GetModuleFileEditor;
  end;

  IOTAModule = interface(IOTAModule50)
    ['{2438BFB8-C742-48CD-8F50-DE6C7F764A55}']
    { GetCurrentEditor returns the topmost editor associated with this module.
      If the form editor was the last editor focused, then that is returned,
      likewise, if one of the code editor was the last focused then that one
      is returned. }
    function GetCurrentEditor: IOTAEditor;
    { Return the number of open modules that own this module }
    function GetOwnerModuleCount: Integer;
    { Return the Indexed module that owns this module. If this is an IOTAProject
      then these two methods may not return and owner in the case where this is
      a package project and it is not a member of the currently open project group. }
    function GetOwnerModule(Index: Integer): IOTAModule;
    { MarkModifed will mark this module as "modified" without actually indicating
      *why* is it modified (which will cause internal file dates to remain constant).
      This *will* force the IDE to ask to save this module when the user attempts
      to close it.  It will also clear the "discardability" of a new unnamed
      module such as when File|New|Application is selected. }
    procedure MarkModified;  

    property CurrentEditor: IOTAEditor read GetCurrentEditor;
    property OwnerModuleCount: Integer read GetOwnerModuleCount;
    property OwnerModules[Index: Integer]: IOTAModule read GetOwnerModule;
  end;

  IOTAAdditionalModuleFiles = interface
    ['{2D73A12F-6FB3-11D4-A4B8-00C04F6BB853}']
    function GetAdditionalModuleFileCount: Integer;
    { Returns the associated IOTASourceEditor. }
    function GetAdditionalModuleFileEditor(Index: Integer): IOTAEditor;
    property AdditionalModuleFileCount: Integer read GetAdditionalModuleFileCount;
    property AdditionalModuleFileEditors[Index: Integer]: IOTAEditor read GetAdditionalModuleFileEditor;
  end;

  IOTAModuleData = interface
    ['{FFD0A5AF-49CB-4EC2-A658-957146030CEC}']
    function HasObjects: Boolean;
  end;

  IOTATypeLibModule = interface(IOTAModule)
    ['{0BBAEEA0-EF74-11D1-AB1C-00C04FB16FB3}']
  end;

  IOTAOptions = interface(IUnknown)
    ['{9C0E91FC-FA5A-11D1-AB28-00C04FB16FB3}']
    { Opens the options dialog }
    procedure EditOptions;
    { Get the value of the named option. }
    function GetOptionValue(const ValueName: string): Variant;
    { Set the value of the named option. }
    procedure SetOptionValue(const ValueName: string; const Value: Variant);
    { Get the list of available options for this option structure }
    function GetOptionNames: TOTAOptionNameArray;

    property Values[const ValueName: string]: Variant read GetOptionValue write SetOptionValue;
  end;

  IOTAProjectOptions40 = interface(IOTAOptions)
    ['{F17A7BD4-E07D-11D1-AB0B-00C04FB16FB3}']
  end;

  { One special note about IOTAProjectOptions.
    Under Windows, there is one option called "Keys" and this options is of
    type tkClass.  This is a TStrings object and corresponds to the list of
    key/value pairs in the project's version info.  When GetOptionValue is
    called for the "Keys" Option it will be returned as a Variant varType of
    vtInteger.  You should cast the Variant result to Integer then to TStrings.
    NOTE: Do NOT free the TStrings object that is returned as this is owned by
    the internal object.  Calling SetOptionValue with a TStrings object (not
    the one read with GetOptionValue), will cause the typical "SetKeys" method
    to be called and the internal Keys object is "Assigned" the values from
    the given TStrings object (ie. FKeys.Assign(Value);) }

  IOTAProjectOptions = interface(IOTAProjectOptions40)
    ['{F899EBC6-E6E2-11D2-AA90-00C04FA370E9}']
    {Set the modified state of the project options}
    procedure SetModifiedState(State: Boolean);
    {Get the modified state of the project options}
    function GetModifiedState: Boolean;

    property ModifiedState: Boolean read GetModifiedState write SetModifiedState;
  end;

  IOTAProjectBuilder40 = interface(IUnknown)
   ['{F17A7BD5-E07D-11D1-AB0B-00C04FB16FB3}']
   { True if the project is out of date and needs to be built }
   function GetShouldBuild: Boolean;
   { True if successfully built.  If Wait then the compile progress dialog
     waits for the user press OK.  If False, it does not wait if successful. }
   function BuildProject(CompileMode: TOTACompileMode; Wait: Boolean): Boolean;

   property ShouldBuild: Boolean read GetShouldBuild;
  end;

  IOTAProjectBuilder = interface(IOTAProjectBuilder40)
   ['{08A5B1F5-FCDA-11D2-AC82-00C04FB173DC}']
   { True if successfully built.  If Wait then the compile progress dialog
     waits for the user press OK.  If False, it does not wait if successful. }
   function BuildProject(CompileMode: TOTACompileMode; Wait, ClearMessages: Boolean): Boolean; overload;
  end;

  IOTAProject40 = interface(IOTAModule)
    ['{F17A7BCA-E07D-11D1-AB0B-00C04FB16FB3}']
    { Return the number of owned modules }
    function GetModuleCount: Integer;
    { Return the Indexed owned Module Info }
    function GetModule(Index: Integer): IOTAModuleInfo;
    { Return the Project options }
    function GetProjectOptions: IOTAProjectOptions;
    { Return the Project Builder }
    function GetProjectBuilder: IOTAProjectBuilder;

    property ProjectOptions: IOTAProjectOptions read GetProjectOptions;
    property ProjectBuilder: IOTAProjectBuilder read GetProjectBuilder;
  end;

  IOTAProject = interface(IOTAProject40)
    ['{06C88136-F367-4D47-B8B4-CCACB3D7439A}']
    { Call this function to add an arbitrary file to the project.  NOTE: some
      files have special meaning to different projects.  For example: adding
      VCL60.DCP will cause a new entry in a package project's "requires" list
      while it will be a raw file to any other project type.  Set IsUnitOrForm
      to true for files that are considered items that the project would
      process directly or indirectly (ie. .pas, .cpp, .rc, etc..) or can be
      opened in the code editor. For all others, including binary files
      (.res, .bpi, .dcp, etc..) set this to False. }
    procedure AddFile(const AFileName: string; IsUnitOrForm: Boolean);
    { Call this function to remove an arbitrary file from the project.  This
      must be a fully qualified filename.  See GetModule() above for info on
      obtaining this information from a Form name or unit name }
    procedure RemoveFile(const AFileName: string);
  end;  

  IOTAProjectGroup = interface(IOTAModule)
    ['{F17A7BCB-E07D-11D1-AB0B-00C04FB16FB3}']
    { Invoke the Add New Project Dialog }
    procedure AddNewProject;
    { Invoke the Open New Project Dialog }
    procedure AddExistingProject;
    { Return the currently active project }
    function GetActiveProject: IOTAProject;
    { Number of Projects in this project group }
    function GetProjectCount: Integer;
    { Return the Project interface }
    function GetProject(Index: Integer): IOTAProject;
    { Remove the given project from the project group }
    procedure RemoveProject(const AProject: IOTAProject);
    { Set the active project }
    procedure SetActiveProject(const AProject: IOTAProject);

    property ActiveProject: IOTAProject read GetActiveProject write SetActiveProject;
    property ProjectCount: Integer read GetProjectCount;
    property Projects[Index: Integer]: IOTAProject read GetProject;
  end;

  IOTAActionServices = interface(IUnknown)
    ['{F17A7BC9-E07D-11D1-AB0B-00C04FB16FB3}']
    { Action interfaces }
    function CloseFile(const FileName: string): Boolean;
    function OpenFile(const FileName: string): Boolean;
    function OpenProject(const ProjName: string; NewProjGroup: Boolean): Boolean;
    function ReloadFile(const FileName: string): Boolean;
    function SaveFile(const FileName: string): Boolean;
  end;

  IOTAFileSystem = interface(IUnknown)
    ['{A9D1389D-F4B0-11D1-AB22-00C04FB16FB3}']
    function GetFileStream(const FileName: string; Mode: Integer): IStream;
    function FileAge(const FileName: string): Longint;
    function RenameFile(const OldName, NewName: string): Boolean;
    function IsReadonly(const FileName: string): Boolean;
    function IsFileBased: Boolean;
    function DeleteFile(const FileName: string): Boolean;
    function FileExists(const FileName: string): Boolean;
    function GetTempFileName(const FileName: string): string;
    function GetBackupFileName(const FileName: string): string;
    function GetIDString: string;
  end;

  IOTAFile = interface(IUnknown)
    ['{6E2AD9B0-F7F0-11D1-AB26-00C04FB16FB3}']
    { Return the actual source code }
    function GetSource: string;
    { Return the age of the file. -1 if new }
    function GetAge: TDateTime;

    property Source: string read GetSource;
    property Age: TDateTime read GetAge;
  end;

  IOTACreator = interface(IUnknown)
    ['{6EDB9B9E-F57A-11D1-AB23-00C04FB16FB3}']
    { Return a string representing the default creator type in which to augment.
      See the definitions of sApplication, sConsole, sLibrary and
      sPackage, etc.. above.  Return an empty string indicating that this
      creator will provide *all* information }
    function GetCreatorType: string;
    { Return False if this is a new module }
    function GetExisting: Boolean;
    { Return the File system IDString that this module uses for reading/writing }
    function GetFileSystem: string;
    { Return the Owning module, if one exists (for a project module, this would
      be a project; for a project this is a project group) }
    function GetOwner: IOTAModule;
    { Return true, if this item is to be marked as un-named.  This will force the
      save as dialog to appear the first time the user saves. }
    function GetUnnamed: Boolean;

    property CreatorType: string read GetCreatorType;
    property Existing: Boolean read GetExisting;
    property FileSystem: string read GetFileSystem;
    property Owner: IOTAModule read GetOwner;
    property Unnamed: Boolean read GetUnnamed;
  end;

  IOTAModuleCreator = interface(IOTACreator)
    ['{6EDB9B9A-F57A-11D1-AB23-00C04FB16FB3}']
    { Return the Ancestor form name }
    function GetAncestorName: string;
    { Return the implementation filename, or blank to have the IDE create a new
      unique one. (C++ .cpp file or Delphi unit) NOTE: If a value is returned then it *must* be a
      fully qualified filename.  This also applies to GetIntfFileName and
      GetAdditionalFileName on the IOTAAdditionalFilesModuleCreator interface. }
    function GetImplFileName: string;
    { Return the interface filename, or blank to have the IDE create a new
      unique one.  (C++ header) }
    function GetIntfFileName: string;
    { Return the form name }
    function GetFormName: string;
    { Return True to Make this module the main form of the given Owner/Project }
    function GetMainForm: Boolean;
    { Return True to show the form }
    function GetShowForm: Boolean;
    { Return True to show the source }
    function GetShowSource: Boolean;
    { Create and return the Form resource for this new module if applicable }
    function NewFormFile(const FormIdent, AncestorIdent: string): IOTAFile;
    { Create and return the Implementation source for this module. (C++ .cpp
      file or Delphi unit) }
    function NewImplSource(const ModuleIdent, FormIdent, AncestorIdent: string): IOTAFile;
    { Create and return the Interface (C++ header) source for this module }
    function NewIntfSource(const ModuleIdent, FormIdent, AncestorIdent: string): IOTAFile;
    { Called when the new form/datamodule/custom module is created }
    procedure FormCreated(const FormEditor: IOTAFormEditor);

    property AncestorName: string read GetAncestorName;
    property FormName: string read GetFormName;
    property ImplFileName: string read GetImplFileName;
    property IntfFileName: string read GetIntfFileName;
    property MainForm: Boolean read GetMainForm;
    property ShowForm: Boolean read GetShowForm;
    property ShowSource: Boolean read GetShowSource;
  end;

  IOTAAdditionalFilesModuleCreator = interface(IOTAModuleCreator)
    ['{BACD1450-1AC5-11D4-A455-00C04F6BB853}']
    function GetAdditionalFilesCount: Integer;
    { Create and return the source for this additional file }
    function NewAdditionalFileSource(I: Integer; const ModuleIdent, FormIdent, AncestorIdent: string): IOTAFile;
    { Return the additional filename, or blank to have the IDE create a new
      unique one. }
    function GetAdditionalFileName(I: Integer): string;
    { Get the file extent used to create a new file name }
    function GetAdditionalFileExt(I: Integer): string;
  end;

  IOTAProjectCreator = interface(IOTACreator)
    ['{6EDB9B9D-F57A-11D1-AB23-00C04FB16FB3}']
    { Return the project filename. NOTE: This *must* be a fully qualified file name. }
    function GetFileName: string;
    { Return the option file name (C++ .bpr, .bpk, etc...) }
    function GetOptionFileName: string;
    { Return True to show the source }
    function GetShowSource: Boolean;
    { Called to create a new default module for this project }
    procedure NewDefaultModule;
    { Create and return the project option source. (C++) }
    function NewOptionSource(const ProjectName: string): IOTAFile;
    { Called to indicate when to create/modify the project resource file }
    procedure NewProjectResource(const Project: IOTAProject);
    { Create and return the Project source file }
    function NewProjectSource(const ProjectName: string): IOTAFile;

    property FileName: string read GetFileName;
    property OptionFileName: string read GetOptionFileName;
    property ShowSource: Boolean read GetShowSource;
  end;

  IOTAProjectCreator50 = interface(IOTAProjectCreator)
    ['{64312F82-62F3-48E9-BAF6-B03DF450312A}']
    { Called to create a new default module(s) for the given project.  This
      interface method is the prefered mechanism }
    procedure NewDefaultProjectModule(const Project: IOTAProject);
  end;

  IOTAProjectGroupCreator = interface(IOTACreator)
    ['{6EDB9B9F-F57A-11D1-AB23-00C04FB16FB3}']
    { Return the project group file name }
    function GetFileName: string;
    { Return True to show the source }
    function GetShowSource: Boolean;
    { Create and return the project group source }
    function NewProjectGroupSource(const ProjectGroupName: string): IOTAFile;

    property FileName: string read GetFileName;
    property ShowSource: Boolean read GetShowSource;
  end;

  IOTAModuleServices = interface(IUnknown)
    ['{F17A7BCD-E07D-11D1-AB0B-00C04FB16FB3}']
    { Registers a new file system }
    function AddFileSystem(FileSystem: IOTAFileSystem): Integer;
    { Close all open modules including the Project Group }
    function CloseAll: Boolean;
    { Given the Creator, create a new module of the implied type }
    function CreateModule(const Creator: IOTACreator): IOTAModule;
    { Return the currently active module }
    function CurrentModule: IOTAModule;
    { Lookup the given file system }
    function FindFileSystem(const Name: string): IOTAFileSystem;
    { Lookup the given module by form name }
    function FindFormModule(const FormName: string): IOTAModule;
    { Lookup the given module by file name }
    function FindModule(const FileName: string): IOTAModule;
    { Return the number of currently open modules }
    function GetModuleCount: Integer;
    { Return an interface on the module at index }
    function GetModule(Index: Integer): IOTAModule;
    { Given the Prefix, create a new unique Module name and class name }
    procedure GetNewModuleAndClassName(const Prefix: string; var UnitIdent,
      ClassName, FileName: string);
    { Open the File|New dialog }
    function NewModule: Boolean;
    { Removes the index'd file system from the installed file system list }
    procedure RemoveFileSystem(Index: Integer);
    { Save all modules. Same as File|Save All }
    function SaveAll: Boolean;

    property ModuleCount: Integer read GetModuleCount;
    property Modules[Index: Integer]: IOTAModule read GetModule;
  end;

  IOTAProcess = interface;
  IOTAThread = interface;

  TOTATriggerResult = (trStop, trContinue, trDefault);
  TOTAAccessType = (atRead, atWrite, atExecute);
  TOTARunMode = (ormRun, ormRunToEntry, ormRunToMain, ormRunToCursor,
    ormStmtStepInto, ormStmtStepOver, ormInstStepInto, ormInstStepOver,
    ormStmtStepToSource, ormReserved1, rmReserved2, rmReserved3);

  IOTABreakpointNotifier = interface(IOTANotifier)
    ['{34B2E2D5-E36F-11D1-AB0E-00C04FB16FB3}']
    { Called when IDE attempts to edit this breakpoint. Return False to allow
      the default edit dialogs to function. AllowKeyChanges is True if all
      Breakpoint parameters are allowed to be changed, False if only certain
      items should be allowed to change. For example; when the user selects
      "Breakpoint properties..." from the right-click menu in the editor, the
      filename and line number fields are read-only.  AllowKeyChanges will be
      False in this case. }
    function Edit(AllowKeyChanges: Boolean): Boolean;
    { Called when this breakpoint is triggered. Return trStop to stop,
      trContinue to continue or trDefault to do the default processing. }
    function Trigger: TOTATriggerResult;
    { Called when the breakpoint is verified }
    procedure Verified(Enabled, Valid: Boolean);
  end;

  IOTABreakpoint40 = interface(IUnknown)
    ['{34B2E2D4-E36F-11D1-AB0E-00C04FB16FB3}']
    { Add a callback notifier.  Returns the index of this notifier in the
      breakpoint's list of notifiers.  Retain this value to be used when
      calling RemoveNotifier }
    function AddNotifier(const Notifier: IOTABreakpointNotifier): Integer;
    { Call this to destroy the object }
    procedure Destruct;
    { Processes default Trigger actions. Returns True to indicate stop.
      This should only be called within the IOTABreakpointNotifier.Trigger
      callback. }
    function DefaultTrigger: Boolean;
    { Decrement the CurPassCount if > 0.  Return True if it goes to 0 or is 0 }
    function DecPassCount: Boolean;
    { Invokes the normal edit processing.  Calling Edit on Address breakpoints
      with an AllowKeyChanges parameter of True can cause the Breakpoint object
      to be deleted and recreated.  To properly handle this, you should install
      a breakpoint notifier and listen for the Deleted notification }
    procedure Edit(AllowKeyChanges: Boolean);
    { Evaluates the expression associated with this breakpoint }
    function EvaluateExpression: Boolean;
    { Returns the Enabled status of this BP. }
    function GetEnabled: Boolean;
    { Retrieves the Expression associated }
    function GetExpression: string;
    { Return the Source file name in-which this Breakpoint is set }
    function GetFileName: string;
    { Return the line number on which this breakpoint is set }
    function GetLineNumber: Integer;
    { Retrieves the current Pass Count if PassCount is set }
    function GetCurPassCount: Integer;
    { Retrieves the associated Pass count }
    function GetPassCount: Integer;
    { Removes the index'th notifier from the breakpoint's list }
    procedure RemoveNotifier(Index: Integer);
    { Resets the CurPassCount back to PassCount }
    procedure ResetPassCount;
    { Sets the filename }
    procedure SetFileName(const Value: string);
    { Sets the Line Number }
    procedure SetLineNumber(Value: Integer);
    { Sets the Enabled status of this breakpoint }
    procedure SetEnabled(Value: Boolean);
    { Sets the Expression associated with this breakpoint }
    procedure SetExpression(const Value: string);
    { Sets the Pass count associated with this breakpoint. Calling this will
      clear the CurPassCount. }
    procedure SetPassCount(Value: Integer);
    { Returns whether this Breakpoint is valid in the currently selected
      process }
    function ValidInCurrentProcess: Boolean;
    { Returns wheter this brekapoint is valid in the given process }
    function ValidInProcess(Process: IOTAProcess): Boolean;

    property CurPassCount: Integer read GetCurPassCount;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property Expression: string read GetExpression write SetExpression;
    property FileName: string read GetFileName write SetFileName;
    property LineNumber: Integer read GetLineNumber write SetLineNumber;
    property PassCount: Integer read GetPassCount write SetPassCount;
  end;

  IOTABreakpoint = interface(IOTABreakpoint40)
    ['{569EFCFB-C69B-11D2-AC67-00C04FB173DC}']
    { Retrieves the Group Name }
    function GetGroupName: string;
    { Retrieves the Actions }
    function GetDoBreak: Boolean;
    { Retrieves the Message to Log }
    function GetLogMessage: string;
    { Retrieves the Expression to Evaluate }
    function GetEvalExpression: string;
    { Retrieves the LogResult flag }
    function GetLogResult: Boolean;
    { Retrieves the Group to Enable }
    function GetEnableGroup: string;
    { Retrieves the Group to Disable }
    function GetDisableGroup: string;
    { Sets the Group Name }
    procedure SetGroupName(const Value: string);
    { Sets the Actions }
    procedure SetDoBreak(const Value: Boolean);
    { Sets the Message to Log }
    procedure SetLogMessage(const Value: string);
    { Sets the Expression to Evaluate }
    procedure SetEvalExpression(const Value: string);
    { Sets the LogResult flag }
    procedure SetLogResult(const Value: Boolean);
    { Sets the Group to Enable }
    procedure SetEnableGroup(const Value: string);
    { Sets the Group to Disable }
    procedure SetDisableGroup(const Value: string);
    property GroupName: string read GetGroupName write SetGroupName;
    property DoBreak: Boolean read GetDoBreak write SetDoBreak;
    property LogMessage: string read GetLogMessage write SetLogMessage;
    property EvalExpression: string read GetEvalExpression write SetEvalExpression;
    property LogResult: Boolean read GetLogResult write SetLogResult;
    property EnableGroup: string read GetEnableGroup write SetEnableGroup;
    property DisableGroup: string read GetDisableGroup write SetDisableGroup;
  end;

  IOTASourceBreakpoint = interface(IOTABreakpoint)
    ['{09063877-E43A-11D1-AB0F-00C04FB16FB3}']
  end;

  IOTAAddressBreakpoint = interface(IOTABreakpoint)
    ['{09063878-E43A-11D1-AB0F-00C04FB16FB3}']
    { Returns the start address of this breakpoint in the current process,
      0 if not valid in the current process }
    function Address: LongWord;
    { Returns the start address of this breakpoint in the given process,
      0 if not valid in the given process }
    function AddressInProcess(Process: IOTAProcess): LongWord;
    { Returns the Access type Write or Execute }
    function GetAccessType: TOTAAccessType;
    { Returns the Data Expression if this is a DW Breakpoint, empty string if
      not }
    function GetDataExpr: string;
    { Returns the Size of the line if this address breakpoint was mapped to
      a source line }
    function GetLineSize: Integer;
    { Returns the Offset in the line if this address breakpoint was mapped to
      a source line }
    function GetLineOffset: Integer;
    { Returns the Process Module this BP will stop on the entry of if a Module
      LoadBP.  If this is a Data Watch BP, this is the Exe module name that
      this breakpoint is valid for. }
    function GetModuleName: string;

    property AccessType: TOTAAccessType read GetAccessType;
    property DataExpr: string read GetDataExpr;
    property ModuleName: string read GetModuleName;
    property LineSize: Integer read GetLineSize;
    property LineOffset: Integer read GetLineOffset;
  end;

  TOTANotifyReason = (nrOther, nrRunning, nrStopped, nrException, nrFault);

  IOTAThreadNotifier = interface(IOTANotifier)
    ['{34B2E2D7-E36F-11D1-AB0E-00C04FB16FB3}']
    { This is called when the process state changes for this thread }
    procedure ThreadNotify(Reason: TOTANotifyReason);
    { This is called when an evaluate that returned erDeferred completes.
      ReturnCode <> 0 if error }
    procedure EvaluteComplete(const ExprStr, ResultStr: string; CanModify: Boolean;
      ResultAddress, ResultSize: LongWord; ReturnCode: Integer);
    { This is called when a modify that returned erDeferred completes.
      ReturnCode <> 0 if error }
    procedure ModifyComplete(const ExprStr, ResultStr: string; ReturnCode: Integer);
  end;

  TOTAEvaluateResult = (erOK, erError, erDeferred);
  TOTAThreadState = (tsStopped, tsRunnable, tsBlocked, tsNone);

  IOTAThread50 = interface(IUnknown)
    ['{34B2E2D3-E36F-11D1-AB0E-00C04FB16FB3}']
    { Add an IOTAThreadNotifier }
    function AddNotifier(const Notifier: IOTAThreadNotifier): Integer;
    { Evaluate the given expression.
      CanModify -        will be set to true if the expression can be modified.
      AllowSideEffects - indicates whether the evaluator is allowed to perform
                         any function calls in the running process in order to
                         complete the evaluation. This includes property access
                         methods.
      FormatSpecifiers - String indicating format overides. See IDE help for
                         definition
      ResultAddr       - Will be set if the expression evaluates to an address
                         within the process
      ResultSize       - Size of the expression. (ie. SizeOf(<sometype>)

      Function result will be erDeferred if the evaluator had to make a
      function call in the running process in order to finish the evaluation.
      The results are undefined in this case.  See the EvaluateComplete method
      on the IOTAThreadNotifier.  If the result is erError, the ResultStr may
      contain an error message. }
    function Evaluate(const ExprStr: string; ResultStr: PChar; ResultStrSize: LongWord;
      out CanModify: Boolean; AllowSideEffects: Boolean; FormatSpecifiers: PChar;
      out ResultAddr: LongWord; out ResultSize, ResultVal: LongWord): TOTAEvaluateResult;
    { Modify the last evaluated expression.
      ResultStr and ResultVal will be set the to the evaluated ValueStr values.
      Like Evalute, the result could be erDeferred. See the ModifyComplete
      method on the IOTAThreadNotifier.  If the result is erError then ResultStr
      may contain an error message. }
    function Modify(const ValueStr: string; ResultStr: PChar; ResultSize: LongWord;
      out ResultVal: Integer): TOTAEvaluateResult;
    { Return the number of Items on the call stack }
    function GetCallCount: Integer;
    { Return the evaluator generated string for the given stack index.  GetCallCount
      must be called before GetCallHeader. CallHeaders are one-based (not zero-based)
      so the first item in the list is at index 1 }
    function GetCallHeader(Index: Integer): string;
    { Return the source file name and line number of the given stack index }
    procedure GetCallPos(Index: Integer; out FileName: string; out LineNum: Integer);
    { If the process is stopped, return which file the process is stopped on in
      this thread.  The return string will be blank if no debug info is found at
      this location }
    function GetCurrentFile: string;
    { If the process is stopped, return the line number in the above file at
      which this process is stopped }
    function GetCurrentLine: LongWord;
{$IFDEF MSWINDOWS}
    { Return the Current Thread context }
    function GetContext: TContext;
{$ENDIF}
    { Return the OS Thread Handle }
    function GetHandle: THandle;
    { Return the OS Thread ID }
    function GetOSThreadID: LongWord;
    { Return the current thread State }
    function GetState: TOTAThreadState;
    { Remove the Index'd notifier }
    procedure RemoveNotifier(Index: Integer);

    property CallCount: Integer read GetCallCount;
    property CallHeaders[Index: Integer]: string read GetCallHeader;
    property CurrentFile: string read GetCurrentFile;
    property CurrentLine: LongWord read GetCurrentLine;
{$IFDEF MSWINDOWS}
    property Context: TContext read GetContext;
{$ENDIF}
    property Handle: THandle read GetHandle;
    property State: TOTAThreadState read GetState;
  end;

  IOTAThread60 = interface(IOTAThread50)
    ['{2646D502-95F8-4E6F-A1EC-976E9663C9B6}']
    function GetOTAThreadContext: TOTAThreadContext;
    property OTAThreadContext: TOTAThreadContext read GetOTAThreadContext;
  end;

  IOTAThread = interface(IOTAThread60)
    ['{24064FD3-5D3C-D611-88BC-00C04FA06AFC}']
    { Gets the current state of the XMM (SSE) registers.  Returns
      True if the registers are valid.  Returns False is the
      registers are invalid. }
    function GetOTAXMMRegisters(var OTAXMMRegs: TOTAXMMRegs): Boolean;
    { Sets the XMM (SSE) registers to new values. }
    procedure SetOTAXMMRegisters(NewOTAXMMRegs: TOTAXMMRegs);
  end;

  IOTAProcessModNotifier = interface(IOTANotifier)
    ['{0906387A-E43A-11D1-AB0F-00C04FB16FB3}']
    { Modified is called as evaluator symbols for this module are loaded }
  end;

  IOTAProcessModule = interface(IUnknown)
    ['{09063879-E43A-11D1-AB0F-00C04FB16FB3}']
    { Adds an IOTAProcessModNotifier }
    function AddNotifier(const Notifier: IOTAProcessModNotifier): Integer;
    { Returns the number of Compilation Units that comprise this Process Module }
    function GetCompUnitCount: Integer;
    { Returns the index'd Compilation Unit Name }
    function GetCompUnit(Index: Integer): string;
    { Returns the number of files used to create the index'd compilation unit }
    function GetCompUnitFileCount(Index: Integer): Integer;
    { Returns the index'd filename of the index'd compilation unit }
    function GetCompUnitFileName(CompIndex, FileIndex: Integer): string;
    { Returns the address of the first code instruction for this module }
    function GetEntryPoint: LongWord;
    { Returns the Base Load address of the module }
    function GetBaseAddress: LongWord;
    { Returns the number of associated source files in this process module }
    function GetFileCount: Integer;
    { Return the index'd file }
    function GetFileName(Index: Integer): string;
    { Returns the number of entry points (procedure/functions/exports) in this
      Process Module }
    function GetModuleEntryPointCount: Integer;
    { Returns the index'd module entry point name }
    function GetModuleEntryPoint(Index: Integer): string;
    { Returns the index'd module entry point address }
    function GetModuleEntryPointAddress(Index: Integer): LongWord;
    { FileName of the Exe/Dll/Bpl, etc.. }
    function GetModuleFileName: string;
    { ModuleName of the Exe/Dll/Bpl, etc }
    function GetModuleName: string;
    { Removed the index's IOTAProcessModNotifier }
    procedure RemoveNotifier(Index: Integer);

    property CompUnitCount: Integer read GetCompUnitCount;
    property CompUnit[Index: Integer]: string read GetCompUnit;
    property CompUnitFileCount[Index: Integer]: Integer read GetCompUnitFileCount;
    property CompUnitFileName[CompIndex, FileIndex: Integer]: string read GetCompUnitFileName;
    property FileCount: Integer read GetFileCount;
    property FileNames[Index: Integer]: string read GetFileName;
    property ModuleEntryPointCount: Integer read GetModuleEntryPointCount;
    property ModuleEntryPoint[Index: Integer]: string read GetModuleEntryPoint;
    property ModuleEntryPointAddress[Index: Integer]: LongWord read GetModuleEntryPointAddress;
  end;

  IOTAProcessNotifier = interface(IOTANotifier)
    ['{34B2E2D6-E36F-11D1-AB0E-00C04FB16FB3}']
    { Called when a Thread is created }
    procedure ThreadCreated(Thread: IOTAThread);
    { Called when a Thread is Destroyed }
    procedure ThreadDestroyed(Thread: IOTAThread);
    { Called when a Process module is added }
    procedure ProcessModuleCreated(ProcessModule: IOTAProcessModule);
    { Called when a Process module is deleted }
    procedure ProcessModuleDestroyed(ProcessModule: IOTAProcessModule);
  end;

  IOTAProcess60 = interface(IUnknown)
    ['{34B2E2D2-E36F-11D1-AB0E-00C04FB16FB3}']
    { Adds an IOTAProcessNotifier }
    function AddNotifier(const Notifier: IOTAProcessNotifier): Integer;
    { Return the currently active thread }
    function GetCurrentThread: IOTAThread;
    { Return the number of Thread in this process }
    function GetThreadCount: Integer;
    { Return the index'd Thread }
    function GetThread(Index: Integer): IOTAThread;
    { Get the debugger's internal process ID }
    function GetProcessId: LongWord;
    { Stop/Pause the process }
    procedure Pause;
    { Read the process memory at the given addres }
    function ReadProcessMemory(Address: LongWord; Count: Integer; var Buffer): Integer;
    { Removed the index's IOTAProcessNotifier }
    procedure RemoveNotifier(Index: Integer);
    { Run the process give the run mode }
    procedure Run(RunMode: TOTARunMode);
    { Set a new current thread }
    procedure SetCurrentThread(Value: IOTAThread);
    { Reset/Terminate the process }
    procedure Terminate;
    { Write to the process memory at the given address }
    function WriteProcessMemory(Address: LongWord; Count: Integer; var Buffer): Integer;

    property CurrentThread: IOTAThread read GetCurrentThread write SetCurrentThread;
    property ProcessId: LongWord read GetProcessId;
    property ThreadCount: Integer read GetThreadCount;
    property Threads[Index: Integer]: IOTAThread read GetThread;
  end;

  IOTAProcess = interface(IOTAProcess60)
  ['{64FC3321-BEC8-4E88-B17A-3E78EA15F10E}']
    { Get the OS process ID }
    function GetOSProcessId: LongWord;

    property OSProcessId: LongWord read GetOSProcessId;
  end;


  IOTADebuggerNotifier = interface(IOTANotifier)
    ['{34B2E2D8-E36F-11D1-AB0E-00C04FB16FB3}']
    { Called when a process is created }
    procedure ProcessCreated(Process: IOTAProcess);
    { Called when a process is Destroyed }
    procedure ProcessDestroyed(Process: IOTAProcess);
    { Called when a Breakpoint is Added }
    procedure BreakpointAdded(Breakpoint: IOTABreakpoint);
    { Called when a breakpoint is Deleted }
    procedure BreakpointDeleted(Breakpoint: IOTABreakpoint);
  end;

  TEnumerateProcessesCallback = procedure (Pid: LongWord; const ProcessName: string; Param: Pointer);

  IOTADebuggerServices60 = interface(IUnknown)
    ['{0E3B9D7A-E119-11D1-AB0C-00C04FB16FB3}']
    { Adds an IOTADebuggerNotifier }
    function AddNotifier(const Notifier: IOTADebuggerNotifier): Integer;
    { Attaches to an existing process }
    procedure AttachProcess(Pid: Integer; const RemoteHost: string = '');
    { Creates a new process }
    procedure CreateProcess(const ExeName, Args: string; const RemoteHost: string = '');
    { Enumerates all the current running processes on the local machine or remote
      machine }
    procedure EnumerateRunningProcesses(Callback: TEnumerateProcessesCallback;
      Param: Pointer; const HostName: string = '');
    { Returns the count of address breakpoints }
    function GetAddressBkptCount: Integer;
    { Returns the index'd Address Breakpoint }
    function GetAddressBkpt(Index: Integer): IOTAAddressBreakpoint;
    { Returns the currently active process. This is set whenever a debug
      event occurs }
    function GetCurrentProcess: IOTAProcess;
    { Returns the number of active processes }
    function GetProcessCount: Integer;
    { Returns the Index'd process }
    function GetProcess(Index: Integer): IOTAProcess;
    { Returns the count of source breakpoints }
    function GetSourceBkptCount: Integer;
    { Returns the index'd source Breakpoint }
    function GetSourceBkpt(Index: Integer): IOTASourceBreakpoint;
    { Log event string to Event log window if present. }
    procedure LogString(const LogStr: string);
    { Creates a new Address breakpoint, will create a source BP if the
      address given is on a line boundary }
    function NewAddressBreakpoint(Address, Length: LongWord; AccessType: TOTAAccessType;
      AProcess: IOTAProcess = nil): IOTABreakpoint;
    { Creates a new Module load Breakpoint }
    function NewModuleBreakpoint(const ModuleName: string;
      AProcess: IOTAProcess): IOTABreakpoint;
    { Creates a new Source Breakpoint }
    function NewSourceBreakpoint(const FileName: string; LineNumber: Integer;
      AProcess: IOTAProcess): IOTABreakpoint;
    { Removed the index's IOTADebuggerNotifier }
    procedure RemoveNotifier(Index: Integer);
    { Sets the current process }
    procedure SetCurrentProcess(Process: IOTAProcess);

    property AddressBkptCount: Integer read GetAddressBkptCount;
    property AddressBkpts[Index: Integer]: IOTAAddressBreakpoint read GetAddressBkpt;
    property CurrentProcess: IOTAProcess read GetCurrentProcess write SetCurrentProcess;
    property ProcessCount: Integer read GetProcessCount;
    property Processes[Index: Integer]: IOTAProcess read GetProcess;
    property SourceBkptCount: Integer read GetSourceBkptCount;
    property SourceBkpts[Index: Integer]: IOTASourceBreakpoint read GetSourceBkpt;
  end;

  // TLogItemType's are used for drawing event logs in different colors.
  TLogItemType = (litDefault,
    {$IFDEF MSWINDOWS}
    litODS, litWMSent, litWMPosted, litOleClientStart, litOleServerStart,
    litOleClientEnd, 
    {$ENDIF}
    litSourceBreakpoint, litLogBreakEval, litBreakpointMessage, litProcStart,
    litProcExit, litThreadStart, litThreadExit, litModLoad, litModUnload,
    litExceptFirstTry);

  IOTADebuggerServices = interface(IOTADebuggerServices60)
    ['{A797823A-6BD7-41A4-B36B-3A831A737B2D}']
    { Log event string to Event log window associated with the TLogItemType.
      TLogItemType's are colored differently in the event log. }
    procedure LogString(const LogStr: string; LogItemType: TLogItemType);
  end;

  TOTAFileNotification = (ofnFileOpening, ofnFileOpened, ofnFileClosing,
    ofnDefaultDesktopLoad, ofnDefaultDesktopSave, ofnProjectDesktopLoad,
    ofnProjectDesktopSave, ofnPackageInstalled, ofnPackageUninstalled,
    ofnActiveProjectChanged);

  IOTAIDENotifier = interface(IOTANotifier)
    ['{E052204F-ECE9-11D1-AB19-00C04FB16FB3}']
    { This procedure is called for many various file operations within the
      IDE }
    procedure FileNotification(NotifyCode: TOTAFileNotification;
      const FileName: string; var Cancel: Boolean);
    { This function is called immediatately before the compiler is invoked.
      Set Cancel to True to cancel the compile }
    procedure BeforeCompile(const Project: IOTAProject; var Cancel: Boolean); overload;
    { This procedure is called immediately following a compile.  Succeeded
      will be true if the compile was successful }
    procedure AfterCompile(Succeeded: Boolean); overload;
  end;

  IOTAIDENotifier50 = interface(IOTAIDENotifier)
    ['{AC7D29F1-D9A9-11D2-A8C1-00C04FA32F53}']
    { Same as BeforeCompile on IOTAIDENotifier except indicates if the compiler
      was invoked due to a CodeInsight compile }
    procedure BeforeCompile(const Project: IOTAProject; IsCodeInsight: Boolean;
      var Cancel: Boolean); overload;
    { Same as AfterCompile on IOTAIDENotifier except indicates if the compiler
      was invoked due to a CodeInsight compile }
    procedure AfterCompile(Succeeded: Boolean; IsCodeInsight: Boolean); overload;
     
  end;

  TWizardState = set of (wsEnabled, wsChecked);

  IOTAWizard = interface(IOTANotifier)
    ['{B75C0CE0-EEA6-11D1-9504-00608CCBF153}']
    { Expert UI strings }
    function GetIDString: string;
    function GetName: string;
    function GetState: TWizardState;

    { Launch the AddIn }
    procedure Execute;
  end;

  IOTARepositoryWizard = interface(IOTAWizard)
    ['{B75C0CE1-EEA6-11D1-9504-00608CCBF153}']
    function GetAuthor: string;
    function GetComment: string;
    function GetPage: string;
    function GetGlyph: Cardinal;
  end;

  IOTARepositoryWizard60 = interface(IOTARepositoryWizard)
    ['{08FCCD88-3A21-4281-ADC9-62FC034CDD12}']
    { This function should return the appropriate designer affinity for which
      this wizard is applicable.  This will help the File|New|Other... dialog
      filter the appropriate items based on the current project either CLX or
      VCL.  See the dVCL, dCLX, and dAny constants. }
    function GetDesigner: string;

    property Designer: string read GetDesigner;
  end;

  IOTAFormWizard = interface(IOTARepositoryWizard)
    ['{36C8BF35-EFFE-11D1-AB1D-00C04FB16FB3}']
  end;

  IOTAProjectWizard = interface(IOTARepositoryWizard)
    ['{36C8BF36-EFFE-11D1-AB1D-00C04FB16FB3}']
  end;

  IOTAMenuWizard = interface(IOTAWizard)
    ['{B75C0CE2-EEA6-11D1-9504-00608CCBF153}']
    function GetMenuText: string;
  end;

  TWizardRegisterProc = function(const Wizard: IOTAWizard): Boolean;
  TWizardTerminateProc = procedure;
  TWizardInitProc = function(const BorlandIDEServices: IBorlandIDEServices;
    RegisterProc: TWizardRegisterProc;
    var Terminate: TWizardTerminateProc): Boolean stdcall;

  IOTAWizardServices = interface(IUnknown)
    ['{B75C0CE3-EEA6-11D1-9504-00608CCBF153}']
    { Call this to register an IOTAWizard interface }
    function AddWizard(const AWizard: IOTAWizard): Integer;
    { Remove the index'd Wizard }
    procedure RemoveWizard(Index: Integer);
  end;

  IOTAPackageServices = interface(IUnknown)
    ['{26EB0E4D-F97B-11D1-AB27-00C04FB16FB3}']
    { Returns the number of loaded packages }
    function GetPackageCount: Integer;
    { Returns the name of the loaded package }
    function GetPackageName(Index: Integer): string;
    { Returns the number of components registered by this package index }
    function GetComponentCount(PkgIndex: Integer): Integer;
    { Returns the component name of the package index }
    function GetComponentName(PkgIndex, CompIndex: Integer): string;

    property PackageCount: Integer read GetPackageCount;
    property PackageNames[Index: Integer]: string read GetPackageName;
    property ComponentCount[PkgIndex: Integer]: Integer read GetComponentCount;
    property ComponentNames[PkgIndex, CompIndex: Integer]: string read GetComponentName;
  end;

  IOTACustomMessage = interface(IUnknown)
    ['{589BBDA1-F995-11D1-AB27-00C04FB16FB3}']
    { Returns the Column number of the file if the file is given }
    function GetColumnNumber: Integer;
    { Returns a Fully qualified filename if this message line can navigate to a
      file line }
    function GetFileName: string;
    { Returns the Line number of the above file if the above file is given }
    function GetLineNumber: Integer;
    { Returns the Raw line text }
    function GetLineText: string;
    { F1 pressed on this line }
    procedure ShowHelp;

    property ColumnNumber: Integer read GetColumnNumber;
    property FileName: string read GetFilename;
    property LineNumber: Integer read GetLineNumber;
    property LineText: string read GetLineText;
  end;

  IOTACustomMessage50 = interface(IOTACustomMessage)
    ['{B7523AB7-EB81-11D2-AC7B-00C04FB173DC}']
    { Returns the number of child messages the current message has }
    function GetChildCount: Integer;
    { Returns the child message referred to by the Index parameter }
    function GetChild(Index: Integer): IOTACustomMessage50;

    property ChildCount: Integer read GetChildCount;
    property Child[Index: Integer]: IOTACustomMessage50 read GetChild;
  end;

  INTACustomDrawMessage = interface(IOTACustomMessage)
    ['{589BBDA2-F995-11D1-AB27-00C04FB16FB3}']
    procedure Draw(Canvas: TCanvas; const Rect: TRect; Wrap: Boolean);
    function CalcRect(Canvas: TCanvas; MaxWidth: Integer; Wrap: Boolean): TRect;
  end;
  {$IFDEF LINUX}
  {$NODEFINE INTACustomDrawMessage}
  {$ENDIF}

  IOTAMessageServices40 = interface(IUnknown)
    ['{26EB0E4E-F97B-11D1-AB27-00C04FB16FB3}']
    { This method allows the external tool to handle all painting of the
      message in a fashion similar to the "Find in files" messages.  If the
      INTACustomDrawMessage is implemented then all painting is deferred to that
      interface, otherwise the painting is handled internally }
    procedure AddCustomMessage(const CustomMsg: IOTACustomMessage);
    { This method adds a simple title message that simply displays in the
      message view with no other behavior }
    procedure AddTitleMessage(const MessageStr: string);
    { This method adds a line to the message buffer that behaves similar to the
      compiler error message lines.  It allows all the painting and other
      processing to be handled by the IDE.
      PrefixStr is usually a short string that indicates from which tool this
      message originates, for ex. 'Grep tool', which would display as
      '[Grep tool]' }
    procedure AddToolMessage(const FileName, MessageStr, PrefixStr: string;
      LineNumber, ColumnNumber: Integer);
    { Clears all messages from the message buffer }
    procedure ClearAllMessages;
    { Clears all "compiler/linker" messages }
    procedure ClearCompilerMessages;
    { Clears all "Find in files" messages }
    procedure ClearSearchMessages;
    { Clears all the externally defined messages -- from all message groups }
    procedure ClearToolMessages;
  end;

  IOTAMessageServices50 = interface(IOTAMessageServices40)
    ['{3263774B-E959-11D2-AC7B-00C04FB173DC}']
    { See IOTAMessageServices40 for base description.  This method adds an out
      parameter (LineRef) which returns an opaque pointer to the Line object
      created, as well as a Parent.  If Parent is not nil, this method creates a
      new message which is a child message to an existing message (referred to
      by Parent).  A previously returned LineRef pointer should be passed as the
      Parent parameter to create a child message of the Parent. }
    procedure AddToolMessage(const FileName, MessageStr, PrefixStr: string;
      LineNumber, ColumnNumber: Integer; Parent: Pointer; out LineRef: Pointer); overload;
  end;

  IOTAMessageGroup = interface(IUnknown)
    ['{233F4508-6022-4DDF-B6D3-D2108BAF80DB}']
    function GetGroupName: string;
    property Name: string read GetGroupName;
  end;

  { Interface implemented by a client to receive notifications
    on message groups }
  IOTAMessageNotifier = interface(IOTANotifier)
    ['{FDCB2ED4-B89C-4D00-B0DB-19562951CDBB}']
    { BeforeSave, AfterSave, Destroyed, and Modified are
      currently not called for this notifier, though they
      may be in future releases }
    { Called when a new message group is added }
    procedure MessageGroupAdded(const Group: IOTAMessageGroup);
    { Called when a message group is deleted }
    procedure MessageGroupDeleted(const Group: IOTAMessageGroup);
  end;

  IOTAMessageServices60 = interface(IOTAMessageServices50)
    ['{58A40C76-7EC6-41DA-A2EF-4B3AF31D3977}']
    { Call this to register an IOTAMessageNotifier. The result is the index
      to be used when calling RemoveNotifier. If <0 then an error occurred. }
    function AddNotifier(const ANotifier: IOTAMessageNotifier): Integer;
    { Call with the index obtained from AddNotifier }
    procedure RemoveNotifier(Index: Integer);
    { This method allows you to add a new message group to the message view.
      A message group shows up as a distinct tab in the message view in the IDE.
      An interface to the newly added group is returned.  Use this interface
      when calling other methods in the IOTAMessageServices interface.  If you
      hold onto the IOTAMessageGroup reference which is returned, you should
      install an IOTAMessageNotifier and listen for the MessageGroupDeleted
      notification.  When you receive this notification, you should release your
      reference to the indicated IOTAMessageGroup. }
    function AddMessageGroup(const GroupName: string): IOTAMessageGroup;
    { See IOTAMessageServices50 for base description of AddCustomMessage,
      AddTitleMessage and AddToolMessage.  These methods add one parameter:
      MessageGroupIntf indicates which MessageGroup this message belongs to.
      If MessageGroupIntf is nil, the message is added to the "Build" tab. }
    procedure AddCustomMessage(const CustomMsg: IOTACustomMessage;
      const MessageGroupIntf: IOTAMessageGroup); overload;
    procedure AddTitleMessage(const MessageStr: string; const MessageGroupIntf: IOTAMessageGroup); overload;
    procedure AddToolMessage(const FileName, MessageStr, PrefixStr: string;
      LineNumber, ColumnNumber: Integer; Parent: Pointer; out LineRef: Pointer;
      const MessageGroupIntf: IOTAMessageGroup); overload;
    { Clears all messages in the specified group. If MessageGroupIntf is nil,
      all groups are cleared }
    procedure ClearMessageGroup(const MessageGroupIntf: IOTAMessageGroup);
    { Clears all the externally defined messages from the specified group.
      If MessageGroupIntf is nil, all externally defined messages in all
      groups are cleared }
    procedure ClearToolMessages(const MessageGroupIntf: IOTAMessageGroup); overload;
    { Returns the number of message groups currently defined }
    function GetMessageGroupCount: Integer;
    { Returns an interface to the group specified by the index }
    function GetMessageGroup(Index: Integer): IOTAMessageGroup;
    { Returns the specified group }
    function GetGroup(const GroupName: string): IOTAMessageGroup;
    { Tells the IDE to open the message view. If MessageGroupIntf is nil the
      "current" tab is focused. }
    procedure ShowMessageView(const MessageGroupIntf: IOTAMessageGroup);
    { Removes the specified message group.  If MessageGroupIntf is nil then
      this does nothing. }
    procedure RemoveMessageGroup(const MessageGroupIntf: IOTAMessageGroup);
    property MessageGroupCount: Integer read GetMessageGroupCount;
    property MessageGroup[Index: Integer]: IOTAMessageGroup read GetMessageGroup;
  end;

  TOTAMessageKind = (otamkHint, otamkWarn, otamkError, otamkFatal, otamkInfo);

  IOTAMessageServices = interface(IOTAMessageServices60)
    ['{B3F7D3A6-D1F7-48A0-8BB0-F49CF60FB815}']
    { This method adds a message to the message window that comes from a
      compiler or other translator. This method allows the build filter to
      indicate to the IDE what kind of message this is, error, warning, etc. }
    procedure AddCompilerMessage(const FileName, MessageStr, ToolName: string;
      Kind: TOTAMessageKind; LineNumber, ColumnNumber: Integer;
      Parent: Pointer; out LineRef: Pointer); overload;
  end;

  IOTAEnvironmentOptions = interface(IOTAOptions)
    ['{9C0E91FB-FA5A-11D1-AB28-00C04FB16FB3}']
  end;

  INTAServices40 = interface(IUnknown)
    ['{3C7F3267-F0BF-11D1-AB1E-00C04FB16FB3}']
    { Adds an image to the IDE's main image list.  Use the return value as an
      image index for an action item added to the IDE's main action list. This
      method is deprecated in favor of the new AddMasked method on the
      INTAServices interface defined below }
    function AddMasked(Image: TBitmap; MaskColor: TColor): Integer; overload;
    { Returns the IDE's Main ActionList component }
    function GetActionList: TCustomActionList;
    { Returns the IDE's Main ImageList component }
    function GetImageList: TCustomImageList;
    { Returns the IDE's Main Menu component }
    function GetMainMenu: TMainMenu;
    { Returns the named Toolbar }
    function GetToolBar(const ToolBarName: string): TToolBar;

    property ActionList: TCustomActionList read GetActionList;
    property ImageList: TCustomImageList read GetImageList;
    property MainMenu: TMainMenu read GetMainMenu;
    property ToolBar[const ToolBarName: string]: TToolBar read GetToolBar;
  end;
  {$IFDEF LINUX}
  {$NODEFINE INTAServices40}
  {$ENDIF}

  INTAServices = interface(INTAServices40)
    ['{C17B3DF1-DFE5-11D2-A8C7-00C04FA32F53}']
    { Adds an image to the IDE's main image list.  Use the return value as an
      image index for an action item added to the IDE's main action list.  Ident
      is used to identify dynamically added images that may already exist in the
      imagelist. Since images cannot be safely deleted without causing incorrect
      glyphs to be used for all subsequent images, this allows an add-in to be
      unloaded then reloaded in the same IDE session and still acquire the same
      image index }
    function AddMasked(Image: TBitmap; MaskColor: TColor; const Ident: string): Integer; overload;

  end;
  {$IFDEF LINUX}
  {$NODEFINE INTAServices}
  {$ENDIF}

  IOTAServices50 = interface(IUnknown)
    ['{7FD1CE91-E053-11D1-AB0B-00C04FB16FB3}']
    { General IDE event notifications }
    function AddNotifier(const Notifier: IOTAIDENotifier): Integer;
    { Remove the index'd notifier }
    procedure RemoveNotifier(Index: Integer);
    { Configuration Access }
    function GetBaseRegistryKey: string;
    { Returns the product Identifier, 'C++Builder' or 'Delphi' }
    function GetProductIdentifier: string;
{$IFDEF MSWINDOWS}
    { Main application handle }
    function GetParentHandle: HWND;
{$ENDIF}
    { Return an interface to the IDE environment options }
    function GetEnvironmentOptions: IOTAEnvironmentOptions;
  end;

  IOTAServices60 = interface(IOTAServices50)
    ['{577ECE00-59EE-4F21-8190-9FD8A45FE550}']
    { Return 'xfm' for CLX designer and 'dfm' for VCL designer }
    function GetActiveDesignerType: string;
  end;

  IOTAServices = interface(IOTAServices60)
    ['{0044BB24-425D-D611-9CF1-00C04FA06AFC}']
    { Returns the location of the root installation directory of the IDE }
    function GetRootDirectory: string;
    { Returns the location of the bin directory }
    function GetBinDirectory: string;
    { Returns the location of the template/object-repository directory }
    function GetTemplateDirectory: string;
  end;

  IOTABufferOptions60 = interface(IUnknown)
    ['{8C748540-C6C1-11D2-8139-00609792F134}']
    function GetAutoIndent: Boolean;
    function GetBackspaceUnindents: Boolean;
    function GetCreateBackupFile: Boolean;
    function GetCursorThroughTabs: Boolean;
    function GetInsertMode: Boolean;
    function GetGroupUndo: Boolean;
    function GetKeepTrailingBlanks: Boolean;
    function GetLeftGutterWidth: Integer;
    function GetRightMargin: Integer;
    function GetOverwriteBlocks: Boolean;
    function GetPersistentBlocks: Boolean;
    function GetPreserveLineEnds: Boolean;
    function GetSmartTab: Boolean;
    function GetSyntaxHighlight: Boolean;
    function GetTabStops: string;
    function GetUndoAfterSave: Boolean;
    function GetUndoLimit: Integer;
    function GetUseTabCharacter: Boolean;
    procedure SetAutoIndent(Value: Boolean);
    procedure SetBackspaceUnindents(Value: Boolean);
    procedure SetCreateBackupFile(Value: Boolean);
    procedure SetCursorThroughTabs(Value: Boolean);
    procedure SetInsertMode(Value: Boolean);
    procedure SetGroupUndo(Value: Boolean);
    procedure SetKeepTrailingBlanks(Value: Boolean);
    procedure SetLeftGutterWidth(Value: Integer);
    procedure SetRightMargin(Value: Integer);
    procedure SetOverwriteBlocks(Value: Boolean);
    procedure SetPersistentBlocks(Value: Boolean);
    procedure SetPreserveLineEnds(Value: Boolean);
    procedure SetSmartTab(Value: Boolean);
    procedure SetSyntaxHighlight(Value: Boolean);
    procedure SetTabStops(const Value: string);
    procedure SetUndoAfterSave(Value: Boolean);
    procedure SetUndoLimit(Value: Integer);
    procedure SetUseTabCharacter(Value: Boolean);

    property AutoIndent: Boolean read GetAutoIndent write SetAutoIndent;
    property BackspaceUnindents: Boolean read GetBackspaceUnindents write SetBackspaceUnindents;
    property CreateBackupFile: Boolean read GetCreateBackupFile write SetCreateBackupFile;
    property CursorThroughTabs: Boolean read GetCursorThroughTabs write SetCursorThroughTabs;
    property InsertMode: Boolean read GetInsertMode write SetInsertMode;
    property GroupUndo: Boolean read GetGroupUndo write SetGroupUndo;
    property KeepTrailingBlanks: Boolean read GetKeepTrailingBlanks write SetKeepTrailingBlanks;
    property LeftGutterWidth: Integer read GetLeftGutterWidth write SetLeftGutterWidth;
    property RightMargin: Integer read GetRightMargin write SetRightMargin;
    property OverwriteBlocks: Boolean read GetOverwriteBlocks write SetOverwriteBlocks;
    property PersistentBlocks: Boolean read GetPersistentBlocks write SetPersistentBlocks;
    property PreserveLineEnds: Boolean read GetPreserveLineEnds write SetPreserveLineEnds;
    property SmartTab: Boolean read GetSmartTab write SetSmartTab;
    property SyntaxHighlight: Boolean read GetSyntaxHighlight write SetSyntaxHighlight;
    property TabStops: string read GetTabStops write SetTabStops;
    property UndoAfterSave: Boolean read GetUndoAfterSave write SetUndoAfterSave;
    property UndoLimit: Integer read GetUndoLimit write SetUndoLimit;
    property UseTabCharacter: Boolean read GetuseTabCharacter write SetUseTabCharacter;
  end;

  IOTABufferOptions = interface(IOTABufferOptions60)
    ['{F8F13ACE-1124-408F-934F-8E92DA135424}']
    function GetShowSpace: Boolean;
    function GetShowTab: Boolean;
    procedure SetShowSpace(Value: Boolean);
    procedure SetShowTab(Value: Boolean);
    property ShowSpace: Boolean read GetShowSpace write SetShowSpace;
    property ShowTab: Boolean read GetShowTab write SetShowTab;
  end;

  IOTAEditLineNotifier = interface(IOTANotifier)
    ['{D9D48F50-E6CC-11D2-ABE8-00C04FB16FB3}']
    procedure LineChanged(OldLine, NewLine: Integer; Data: Integer);
  end;

  IOTAEditLineTracker = interface(IUnknown)
    ['{D9D48F4F-E6CC-11D2-ABE8-00C04FB16FB3}']
    function AddNotifier(const Notifier: IOTAEditLineNotifier): Integer;
     
    procedure AddLine(Line: Integer; Data: Integer);
    procedure Delete(Index: Integer);
    function GetCount: Integer;
    function GetData(Index: Integer): Integer;
    function GetEditBuffer: IOTAEditBuffer;
    function GetLineNum(Index: Integer): Integer;
    function IndexOfLine(Line: Integer): Integer;
    function IndexOfData(Data: Integer): Integer;
    procedure RemoveNotifier(Index: Integer);
    procedure SetData(Index: Integer; Value: Integer);
    procedure SetLineNum(Index: Integer; Value: Integer);

    property Count: Integer read GetCount;
    property Data[Index: Integer]: Integer read GetData write SetData;
    property LineNum[Index: Integer]: Integer read GetLineNum write SetLineNum;
  end;

  IOTAEditBuffer60 = interface(IOTASourceEditor)
    ['{9C510460-C7BC-11D2-9AEB-00A02457621F}']
    procedure ClearUndo;
    function GetBufferOptions: IOTABufferOptions;
    function GetCurrentDate: TDateTime;
    function GetEditBlock: IOTAEditBlock;
    function GetEditLineTracker: IOTAEditLineTracker;
    function GetEditPosition: IOTAEditPosition;
    function GetInitialDate: TDateTime;
    function GetIsModified: Boolean;
    function GetIsReadOnly: Boolean;
    function GetTopView: IOTAEditView;
    function Print: Boolean;
    function Redo: Boolean;
    procedure SetIsReadOnly(Value: Boolean);
    function Undo: Boolean;

    property BufferOptions: IOTABufferOptions read GetBufferOptions;
    property EditBlock: IOTAEditBlock read GetEditBlock;
    property EditPosition: IOTAEditPosition read GetEditPosition;
    property IsModified: Boolean read GetIsModified;
    property IsReadOnly: Boolean read GetIsReadOnly write SetIsReadOnly;
    property TopView: IOTAEditView read GetTopView;
  end;

  IOTAEditBuffer = interface(IOTAEditBuffer60)
    ['{EB6465CE-D901-43C4-AB69-240A7400B9AA}']
    { GetEditOptions returns the edit options for this current
      edit buffer. }
    function GetEditOptions: IOTAEditOptions;
    property EditOptions: IOTAEditOptions read GetEditOptions;
  end;

  IOTAEditBufferIterator = interface(IUnknown)
    ['{8ECB33AA-D0BD-11D2-ABD6-00C04FB16FB3}']
    function GetCount: Integer;
    function GetEditBuffer(Index: Integer): IOTAEditBuffer;

    property Count: Integer read GetCount;
    property EditBuffers[Index: Integer]: IOTAEditBuffer read GetEditBuffer;
  end;

  PKeyBindingRec = ^TKeyBindingRec;
  TKeyBindingRec = record
    KeyCode: TShortCut;
    KeyProc: TKeyBindingProc;
    Context: Pointer;
    Next: Integer;
    Reserved: Integer;
  end;

  IOTAKeyContext = interface(IUnknown)
    ['{3E7790CB-D2BB-11D2-ABD8-00C04FB16FB3}']
    function GetContext: Pointer;
    function GetEditBuffer: IOTAEditBuffer;
    function GetKeyboardServices: IOTAKeyboardServices;
    function GetKeyBindingRec(out BindingRec: TKeyBindingRec): Boolean;

    property Context: Pointer read GetContext;
    property EditBuffer: IOTAEditBuffer read GetEditBuffer;
    property KeyboardServices: IOTAKeyboardServices read GetKeyboardServices;
  end;

  IOTARecord = interface(IUnknown)
    ['{F8CAF8D6-D263-11D2-ABD8-00C04FB16FB3}']
    procedure Append(const Keys: array of TShortCut); overload;
    procedure Append(const CmdName: string; IsKeys: Boolean = True); overload;
    procedure Append(const ARecord: IOTARecord); overload;
    procedure Clear;
    function GetIsPaused: Boolean;
    function GetIsPlaying: Boolean;
    function GetIsRecording: Boolean;
    function GetName: string;
    procedure ReadFromStream(const Stream: IStream);
    procedure SetName(const Value: string);
    procedure WriteToStream(const Stream: IStream);

    property IsPaused: Boolean read GetIsPaused;
    property IsPlaying: Boolean read GetIsPlaying;
    property IsRecording: Boolean read GetIsRecording;
    property Name: string read GetName write SetName;
  end;

  TKeyBindingFlags = Integer;

  IOTAKeyBindingServices = interface(IUnknown)
    ['{F8CAF8D8-D263-11D2-ABD8-00C04FB16FB3}']
    function AddKeyBinding(const Keys: array of TShortCut; KeyProc: TKeyBindingProc;
      Context: Pointer; Flags: TKeyBindingFlags = kfImplicitShift or
      kfImplicitModifier or kfImplicitKeypad; const Keyboard: string = '';
      const MenuItemName: string = ''): Boolean;
    function AddMenuCommand(const Command: string; KeyProc: TKeyBindingProc;
      Context: Pointer): Boolean;
    procedure SetDefaultKeyProc(KeyProc: TKeyBindingProc; Context: Pointer;
      const Keyboard: string = '');
  end;

  IOTAKeyboardBinding = interface(IOTANotifier)
    ['{F8CAF8D7-D263-11D2-ABD8-00C04FB16FB3}']
    function GetBindingType: TBindingType;
    function GetDisplayName: string;
    function GetName: string;
    procedure BindKeyboard(const BindingServices: IOTAKeyBindingServices);

    property BindingType: TBindingType read GetBindingType;
    property DisplayName: string read GetDisplayName;
    property Name: string read GetName;
  end;

  IOTAKeyboardServices = interface(IUnknown)
    ['{F8CAF8D5-D263-11D2-ABD8-00C04FB16FB3}']
    function AddKeyboardBinding(const KeyBinding: IOTAKeyboardBinding): Integer;
    function GetCurrentPlayback: IOTARecord;
    function GetCurrentRecord: IOTARecord;
    function GetEditorServices: IOTAEditorServices;
    function GetKeysProcessed: LongWord;
    function NewRecordObject(out ARecord: IOTARecord): Boolean;
    procedure PausePlayback;
    procedure PauseRecord;
    procedure PopKeyboard(const Keyboard: string);
    function PushKeyboard(const Keyboard: string): string;
    procedure RestartKeyboardServices;
    procedure ResumePlayback;
    procedure ResumeRecord;
    procedure RemoveKeyboardBinding(Index: Integer);
    procedure SetPlaybackObject(const ARecord: IOTARecord);
    procedure SetRecordObject(const ARecord: IOTARecord);
    function LookupKeyBinding(const Keys: array of TShortCut;
      out BindingRec: TKeyBindingRec; const KeyBoard: string = ''): Boolean;
    function GetNextBindingRec(var BindingRec: TKeyBindingRec): Boolean;
    function CallKeyBindingProc(const BindingRec: TKeyBindingRec): TKeyBindingResult;

    property CurrentPlayback: IOTARecord read GetCurrentPlayback;
    property CurrentRecord: IOTARecord read GetCurrentRecord;
    property EditorServices: IOTAEditorServices read GetEditorServices;
    property KeysProcessed: LongWord read GetKeysProcessed;
  end;

  IOTAKeyboardDiagnostics = interface(IUnknown)
    ['{AEFC65F1-2504-11D3-AC25-00C04FB16FB3}']
    function GetKeyTracing: Boolean;
    procedure SetKeyTracing(Value: Boolean);

    property KeyTracing: Boolean read GetKeyTracing write SetKeyTracing;
  end;

  IOTASpeedSetting = interface(IOTANotifier)
    ['{B5CDCE07-E093-11D2-ABE2-00C04FB16FB3}']
    function GetDisplayName: string;
    function GetName: string;
    { ExecuteSetting is passed the current editor options.
      If you want the speed setting to apply to all IOTAEditOptions, then
      you must enumerate through them using the IOTAEditorServices. }
    procedure ExecuteSetting(const EditOptions: IOTAEditOptions);
    property DisplayName: string read GetDisplayName;
    property Name: string read GetName;
  end;

  IOTAEditOptions60 = interface(IUnknown)
    ['{487BEA91-DBC0-11D2-ABDE-00C04FB16FB3}']
    function AddSpeedSetting(const SpeedSetting: IOTASpeedSetting): Integer;

    procedure BeginUpdate;
    procedure EndUpdate;
    function GetBlockIndent: Integer;
    function GetBufferOptions: IOTABufferOptions;
    function GetFontName: string;
    function GetFontSize: Integer;
    function GetForceCutCopyEnabled: Boolean;
    function GetSpeedSettingCount: Integer;
    function GetSpeedSetting(Index: Integer): IOTASpeedSetting;
    { GetSyntaxHighlightTypes is deprecated. Use SyntaxHighlighter. }
    function GetSyntaxHighlightTypes(Index: TOTASyntaxHighlighter): string; deprecated;
    function GetUseBriefCursorShapes: Boolean;
    function GetUseBriefRegularExpressions: Boolean;
    procedure RemoveSpeedSetting(Index: Integer);
    procedure SetBlockIndent(Value: Integer);
    procedure SetFontName(const Value: string);
    procedure SetFontSize(Value: Integer);
    procedure SetForceCutCopyEnabled(Value: Boolean);
    procedure SetSpeedSetting(const Name: string);
    { SetSyntaxHighlightTypes is deprecated. Use SyntaxHighlighter. }
    procedure SetSyntaxHighlightTypes(Index: TOTASyntaxHighlighter; const Value: string); deprecated;
    procedure SetUseBriefCursorShapes(Value: Boolean);
    procedure SetUseBriefRegularExpressions(Value: Boolean);
    property BlockIndent: Integer read GetBlockIndent write SetBlockIndent;
    property BufferOptions: IOTABufferOptions read GetBufferOptions;
    property FontName: string read GetFontName write SetFontName;
    property FontSize: Integer read GetFontSize write SetFontSize;
    property ForceCutCopyEnabled: Boolean read GetForceCutCopyEnabled
      write SetForceCutCopyEnabled;
    property SpeedSettingCount: Integer read GetSpeedSettingCount;
    property SpeedSettings[Index: Integer]: IOTASpeedSetting read GetSpeedSetting;
    { SyntaxHighlightTypes is deprecated. Use SyntaxHighlighter. }
    property SyntaxHighlightTypes[Index: TOTASyntaxHighlighter]: string
      read GetSyntaxHighlightTypes write SetSyntaxHighlightTypes;
    property UseBriefCursorShapes: Boolean read GetUseBriefCursorShapes
      write SetUseBriefCursorShapes;
    property UseBriefRegularExpressions: Boolean read GetUseBriefRegularExpressions
      write SetUseBriefRegularExpressions;
  end;

  { IOTAEditOptions }
  { Certain options are now associated with particular file types,
    as seen in the Editor Options. Use the IOTAEditorServices to
    get options for a particular internal id, passing one of the
    cDefEd consts from the top of this unit.
    You may also add your own editor options using the IOTAEditorServices. }
  IOTAEditOptions = interface(IOTAEditOptions60)
    ['{02999EF7-669C-406B-8E14-4FE8B27542B8}']
    function GetExtensions: string;
    function GetOptionsName: string;
    function GetOptionsIDString: string;
    function GetSyntaxHighlighter: IOTAHighlighter;
    function GetOptionsIndex: Integer;
    procedure SetExtensions(const Value: string);
    procedure SetOptionsName(const Value: string);
    procedure SetSyntaxHighlighter(const Value: IOTAHighlighter);

    property Extensions: string read GetExtensions write SetExtensions;
    property OptionsName: string read GetOptionsName write SetOptionsName;
    property IDString: string read GetOptionsIDString;
    property SyntaxHighlighter: IOTAHighlighter read GetSyntaxHighlighter
      write SetSyntaxHighlighter;
    property OptionsIndex: Integer read GetOptionsIndex;
  end;

  IOTAEditorServices60 = interface(IUnknown)
    ['{C2812BA7-C48D-11D2-9AE8-00A02457621F}']
    { EditOptions/GetEditOptions now return the edit options for the active
      editor, which will be for whatever file type it is editing. }
    function GetEditOptions: IOTAEditOptions;
    function GetEditBufferIterator(out Iterator: IOTAEditBufferIterator): Boolean;
    function GetKeyboardServices: IOTAKeyboardServices;
    function GetTopBuffer: IOTAEditBuffer;
    function GetTopView: IOTAEditView;

    property EditOptions: IOTAEditOptions read GetEditOptions;
    property KeyboardServices: IOTAKeyboardServices read GetKeyboardServices;
    property TopBuffer: IOTAEditBuffer read GetTopBuffer;
    property TopView: IOTAEditView read GetTopView;
  end;

  IOTAEditorServices = interface(IOTAEditorServices60)
    ['{2596F557-44A3-49A6-867E-91E21E00F53E}']
    { GetEditOptions returns the IOTAEditOptions associated with the
      IDString passed in, or nil if none was found. }
    function GetEditOptions(const IDString: string): IOTAEditOptions;
    { GetEditOptionsForFile returns the IOTAEditOptions for a particular
      FileName, defaulting to the default options. }
    function GetEditOptionsForFile(const FileName: string): IOTAEditOptions;
    { AddEditOptions returns the current IOTAEditOptions with IDString,
      or adds a new one if none was found. }
    function AddEditOptions(const IDString: string): IOTAEditOptions;
    { DeleteEditOptions deletes the IOTAEditOptions with IDString,
      raising an exception if IDString was not found. }
    procedure DeleteEditOptions(const IDString: string);
    { GetEditOptionsCount/EditOptionsCount are the count of the IOTAEditOptions }
    function GetEditOptionsCount: Integer;
    { GetEditOptionsIndex is for iterating through the IOTAEditOptions }
    function GetEditOptionsIndex(Index: Integer): IOTAEditOptions;

    property EditOptionsCount: Integer read GetEditOptionsCount;
    property EditorOptions[Index: Integer]: IOTAEditOptions read GetEditOptionsIndex;
  end;


  INTAToDoItem = interface(IUnknown)
  ['{094003D8-E7AA-11D2-AA99-00C04FA35CE8}']
    { Implement this interface on items returned by a registered IOTAToDoManager.
      This interface is also returned by IOTAToDoServices.GetItem to allow read
      access to the IDE's To-Do List. }

    { CanDelete returns true to enable "Delete" on the To-Do List's local menu when this item
      is selected. }
    function  CanDelete: Boolean;
    { CanEdit returns true to enable "Edit" on the To-Do List's local menu when this item
      is selected. }
    function  CanEdit: Boolean;
    { CanShow returns true to enable "Open" on the To-Do List's local menu when this item
      is selected. }
    function  CanShow: Boolean;
    { Delete is called when the item has been selected for deletion by the user. }
    procedure Delete;
    { DrawImage draws an image representing the item in the To-Do List window. }
    procedure DrawImage(const Canvas: TCanvas; const Rect: TRect);
    { DoubleClicked indicates the user has double-clicked the item in the To-Do List window. }
    procedure DoubleClicked;
    procedure Edit;
    function  GetText: string;
    function  GetPriority: TOTAToDoPriority;
    function  GetCategory: string;
    function  GetChecked: Boolean;
    { GetModuleName returns the string shown in the "Module" column of the To-Do List
      window. }
    function  GetModuleName: string;
    { GetKind returns a unique string indicating the origin of the item. It is also used
      as the caption for submenu items of the "Filter" local menu. }
    function  GetKind: string;
    function  GetData: Integer;
    function  GetOwner: string;
    { IsValid indicates when the item has been completely defined (when processing
      items in a separate thread). }
    function  IsValid: Boolean;
    procedure SetChecked(const Value: Boolean);
    { Show is called to make the item's source visible; i.e., for an item culled
      from source code, Show opens the source file in the editor. }
    procedure Show;

    property  Checked: Boolean read GetChecked write SetChecked;
 end;
  {$IFDEF LINUX}
  {$NODEFINE INTAToDoItem}
  {$ENDIF}

  IOTAToDoManager = interface(IUnknown)
  ['{3D4A0565-EB77-11D2-AA9A-00C04FA35CE8}']
    { Implement IOTAToDoManager on a TInterfacedObject; register with IOTAToDoServices
      to add To-Do items to the list. The Manager is basically just a list of
      INTAToDoItem interfaces; INTAToDoItem methods will be called when the To-Do List
      needs to display information, paint the item's representation in the list,
      inquire about status of an item. Not all INTAToDoItems may be added to the IDE's
      list; if the user has requested not to see items with a given attribute
      (i.e., Checked or of a certain type), they will not be added to the displayed
      To-Do list. }

    { The Name property is used to uniquely identify To-Do Item managers. }
    function  GetName: string;
    procedure SetName(const AName: string);
    function  GetItem(Index: Integer): INTAToDoItem;
    function  GetItemCount: Integer;
    { ProjectChanged is called when the active project has been changed. }
    procedure ProjectChanged;
    property  Name: string read GetName write SetName;
    property  ItemCount: Integer read GetItemCount;
    property  Items[Index: Integer]: INTAToDoItem read GetItem;
  end;

  IOTAToDoServices = interface(IUnknown)
    ['{F8FC00EF-E61A-11D2-AA99-00C04FA35CE8}']
    function  AddManager(AManager: IOTAToDoManager): Integer;
    function  AddNotifier(const ANotifier: IOTANotifier): Integer;
    { GetItem returns an item in the To-Do list, including those belonging to add-in
      managers. }
    function  GetItem(Index: Integer): INTAToDoItem;
    { Returns the total number of visible To-Do items in the To-Do List, including
      those belonging to add-in managers. }
    function  GetItemCount: Integer;
    procedure RemoveManager(Index: Integer);
    procedure RemoveNotifier(Index: Integer);
    { UpdateList causes the To-Do List to collate all items provided by its managers.
      Note that it will force the To-Do List to call every registered manager to
      query the state of all its items. }
    procedure UpdateList;
    property ItemCount: Integer read GetItemCount;
    property Items[Index: Integer]: INTAToDoItem read GetItem;
  end;

  { types and interfaces for code completion }
  TOTAInvokeType = (itAuto, itManual, itTimer);

  TOTACodeInsightType = (citNone, { don't invoke code insight }
                         citCodeInsight, { perform code completion }
                         citParameterCodeInsight, { perform parameter completion }
                         citBrowseCodeInsight, { browse code (CTRL + click) }
                         citHintCodeInsight); { pop up hints over idents in the editor }

  TOTASortOrder = (soAlpha, { sort the code completion list alphanumerically }
                   soScope); { sort the code completion list by scope }

  { TOTAViewerSymbolFlags is used for color coding the class name of the ident }                   
  TOTAViewerSymbolFlags = (vsfUnknown,
                           vsfConstant,
                           vsfType,
                           vsfVariable,
                           vsfProcedure,
                           vsfFunction,
                           vsfUnit,
                           vsfLabel,
                           vsfProperty,
                           vsfConstructor,
                           vsfDestructor,
                           vsfInterface,
                           vsfEvent);
  { TOTAViewerVisibilityFlags for future use }
  TOTAViewerVisibilityFlags = (vvfPrivate,
                               vvfProtected,
                               vvfPublic,
                               vvfPublished);

  { TOTAProcDispatchFlags for future use }
  TOTAProcDispatchFlags = (pdfNone,
                           pdfVirtual,
                           pdfDynamic);

  IOTACodeInsightSymbolList = interface(IUnknown)
    ['{4CA1CDFD-BD9A-4628-94AE-9BF3EB2DA22E}']
    { Implementor should clear its symbol list }
    procedure Clear;
    { returns the count of the symbols in the list - may be modified by setting a filter - }
    function GetCount: Integer;
    { returns whether the symbol is able to be read from and written to }
    function GetSymbolIsReadWrite(I: Integer): Boolean;
    { returns whether the symbols is abstract.  Viewer draws these in the 'need to implement' color }
    function GetSymbolIsAbstract(I: Integer): Boolean;
    { return the symbol flags for the item at index 'I'.  I is the index in the filtered list }
    function GetViewerSymbolFlags(I: Integer): TOTAViewerSymbolFlags;
    { return the visibility flags for the item at index 'I'.  I is the index in the filtered list }
    function GetViewerVisibilityFlags(I: Integer): TOTAViewerVisibilityFlags;
    { return the procedure flags for the item at index 'I'.  I is the index in the filtered list }
    function GetProcDispatchFlags(I: Integer): TOTAProcDispatchFlags;
    { The list was requested to be sorted by 'Value' }
    procedure SetSortOrder(const Value: TOTASortOrder);
    { returns the sort order of the list }
    function GetSortOrder: TOTASortOrder;
    { given an identifier, return the index of the closest partial match }
    function FindIdent(const AnIdent: string): Integer;
    { given an identifier, find the 'Index' of an exact match in the list and return True.  Otherwise return False }
    function FindSymIndex(const Ident: string; var Index: Integer): Boolean;
    { set the lists filter to 'FilterText'.  It is up to the implementor to determine how to filter or if they even want to filter }
    procedure SetFilter(const FilterText: string);
    { return the symbol text for item 'Index'.  i.e. Form1 }
    function GetSymbolText(Index: Integer): string;
    { return the symbol type text for item 'Index'.  i.e. TForm1 }
    function GetSymbolTypeText(Index: Integer): string;
    { return the symbol class text for item 'Index'.  i.e. 'var', 'function', 'type', etc }
    function GetSymbolClassText(I: Integer): string;
    property SymbolClassText[I: Integer]: string read GetSymbolClassText;
    property SymbolTypeText[I: Integer]: string read GetSymbolTypeText;
    property SymbolText[I: Integer]: string read GetSymbolText;
    property SymbolFlags[I: Integer]: TOTAViewerSymbolFlags read GetViewerSymbolFlags;
    property SymbolVisibility[I: Integer]: TOTAViewerVisibilityFlags read GetViewerVisibilityFlags;
    property SymbolIsAbstract[I: Integer]: Boolean read GetSymbolIsAbstract;
    property SymbolIsReadWrite[I: Integer]: Boolean read GetSymbolIsReadWrite;
    property FuncDispatchFlags[I: Integer]: TOTAProcDispatchFlags read GetProcDispatchFlags;
    property SortOrder: TOTASortOrder read GetSortOrder write SetSortOrder;
    property Count: Integer read GetCount;
  end;

  IOTACodeInsightParamQuery = interface(IUnknown)
    ['{B1842926-C7F7-4869-B55A-CFDB6BF705B5}']
    { returns the count of the parameters }
    function GetQueryParamCount: Integer;
    { returns a string representing the return value of the method/proc }
    function GetQueryRetVal: string;
    { returns the symbol text of the parameter at 'Index' }
    function GetQueryParamSymText(Index: Integer): string;
    { returns the symbol type text of the parameter at 'Index' }
    function GetQueryParamTypeText(Index: Integer): string;
    { returns whether the symbol at index 'Index' as a default value }
    function GetQueryParamHasDefaultVal(Index: Integer): Boolean;
    { returns a string representing the type of invocation for the parameter at 'Index'. i.e. 'var', 'out', 'const' }
    function GetQueryParamInvokeTypeText(Index: Integer): string;
    property RetValType: string read GetQueryRetVal;
    property ParamSymText[Index: Integer]: string read GetQueryParamSymText;
    property ParamTypeText[Index: Integer]: string read GetQueryParamTypeText;
    property ParamCount: Integer read GetQueryParamCount;
    property ParamHasDefaultVal[Index: Integer]: Boolean read GetQueryParamHasDefaultVal;
    property ParamInvokeTypeText[Index: Integer]: string read GetQueryParamInvokeTypeText;
  end;

  IOTACodeInsightParameterList = interface(IUnknown)
    ['{99B6A644-3E97-48A1-9758-0A5FE94767C7}']
    {
      returns a ParamQuery to the caller based upon the ProcIndex.  There may be multiple
      items in list as we may be dealing with overloaded functions.
    }
    procedure GetParameterQuery(ProcIndex: Integer; out ParamQuery: IOTACodeInsightParamQuery);
    {
      return which character to use to delimit parameters in the parameter hint window.
      i.e.  Delphi uses ';'
            C++ uses ','
    }
    function GetParamDelimiter: Char;
    { returns the count of procedures in the list }
    function GetProcedureCount: Integer;
    {
      returns the parameters as a string from the procedure at index I.  The parameters
      should be delimited by a line ending (sLineBreak for instance).
    }
    function GetProcedureParamsText(I: Integer): string;
    property ProcedureParamsText[I: Integer]: string read GetProcedureParamsText;
    property ProcedureCount: Integer read GetProcedureCount;
    property ParamDelimiter: Char read GetParamDelimiter;
  end;

  IOTACodeInsightManager = interface(IUnknown)
    ['{BA5B444A-6E78-4A79-BF05-E184C1132B30}']
    { returns a description of the language which we handle }
    function GetName: string;
    { returns a unique IDString to the services module }
    function GetIDString: string;
    { returns whether we should be able to be invoked or not }
    function GetEnabled: Boolean;
    { sets the active state to Value so this manager may be turned off }
    procedure SetEnabled(Value: Boolean);
    {
      returns a charset used to get the token at the current editor position.  This is
      used for retrieving the seed text when code completion is invoked as well as
      retrieving the token from the editor when we are typing for look ahead.
      The PreValidating parameter should be used to add special tokens to the charset for retrieval
      from the editor.  For instance, C++ might add ['.', '-', '>'] to the returned charset
      when it is prevalidating.
    }
    function EditorTokenValidChars(PreValidating: Boolean): TSysCharSet;
    {
      the implementor should set Allow to True if it wishes to be invoked for the key 'Key'.
      'Key' is the key which the user pressed to invoke code completion.
      There are four special values to 'Key' when invoked by the code insight timer.

      They are as follows:
        #0 : Code completion was requested.
        #1 : Parameter insight was requested.
        #2 : A browse was requested.
        #3 : a symbol hint was requested.
    }
    procedure AllowCodeInsight(var Allow: Boolean; const Key: Char);
    {
      the implementor should return true if it wishes to allow the token 'str' to be
      a valid code point for Code Insight.
    }
    function PreValidateCodeInsight(const Str: string): Boolean;
    { returns whether the symbol at index 'Index' as browseable in the Code completion viewer }
    function IsViewerBrowsable(Index: Integer): Boolean;
    { returns whether the code completion viewer allows multi-select }
    function GetMultiSelect: Boolean;
    { returns the symbol list to the caller }
    procedure GetSymbolList(out SymbolList: IOTACodeInsightSymbolList);
    {
      determines whether or not the key 'Key' which was entered into the editor should close
      the code completion viewer or not (set CloseViewer to True or False depending on your choice).
      Also, the implementor should inform the manager whether or not it should accept the symbol
      at the currently selected index/indices.
    }
    procedure OnEditorKey(Key: Char; var CloseViewer: Boolean; var Accept: Boolean);
    { returns true if this manager should handle this file }
    function HandlesFile(const AFileName: string): Boolean;
    { returns the longest symbol class text for measurement for the viewer.  i.e.  'constructor' is longer than 'var' }
    function GetLongestItem: string;
    { returns a parameter list to the manager }
    procedure GetParameterList(out ParameterList: IOTACodeInsightParameterList);
    {
      given key 'AChar' which was entered into the editor and the current element (atComment, atIdentifier, etc),
      return how code insight should be invoked and which type of invocation it should be.

      As an example, GetCodeInsightType() might be implemented something like this:
      ...
      begin
        InvokeType := itManual;
        if not ((AElement = atString) and (AChar <> #1)) and not (AElement = atComment) then
        begin
          case AChar of
            #0: CodeInsightType := citCodeInsight;
            #1: CodeInsightType := citParameterCodeInsight;
            #2: CodeInsightType := citBrowseCodeInsight;
            #3: CodeInsightType := citHintCodeInsight;
            '.':
            begin
              CodeInsightType := citCodeInsight;
              InvokeType := itTimer;
            end;
            '(':
            begin
              CodeInsightType := citParameterCodeInsight;
              InvokeType := itTimer;
            end;
          end;
        end
        else
          CodeInsightType := citNone;
      end;
    }
    procedure GetCodeInsightType(AChar: Char; AElement: Integer; out CodeInsightType: TOTACodeInsightType;
      out InvokeType: TOTAInvokeType);
    {
      returns true if invocation was successful.  HowInvoked informs the implementor whether
      it was invoked via timer, manual, etc...  Str is the text to seed to viewer with and
      is used for the initial filtering in the viewer.
    }
    function InvokeCodeCompletion(HowInvoked: TOTAInvokeType; var Str: string): Boolean;
    {
      returns true if invocation was successful.  HowInvoked informs the implementor whether
      it was invoked via timer, manual, etc...  SelectedIndex is the index of the current parameter
      for the method/proc.
    }
    function InvokeParameterCodeInsight(HowInvoked: TOTAInvokeType; var SelectedIndex: Integer): Boolean;
    {
      tells the manager where it should anchor the parameter hint window.
      A default value (EdPos) is provided for the implementor to change if they so wish.
    }
    procedure ParameterCodeInsightAnchorPos(var EdPos: TOTAEditPos);
    {
      returns the index of the parameter which should be highlighted based upon EdPos.
      This is used to reduce extra codeinsight invocations as an implementor might
      store off the editor positions of parameters on the first invocation.
      return a -1 if you want to be reinvoked.
    }
    function ParameterCodeInsightParamIndex(EdPos: TOTAEditPos): Integer;
    { return the hint string for the position in the editor (HintLine/HintCol are the editor coordinates) }
    function GetHintText(HintLine, HintCol: Integer): string;
    {
      return a FileName and LineNumber for the symbol which is requested to be browsed to.
      if Index > -1 then it is an index into the symbol list and the browse was requested
      by a user clicking in the code completion viewer.
      return false if you'd like to inform the user that the requested operation failed otherwise return true.
      if you wish to fail by not informing the user, set AFileName = '' and ALineNum = 0.
      if Index is -1, you should use the global CodeInsightServices() and request the EditView from it.
      This should be able to give you any information you require.
    }
    function GotoDefinition(out AFileName: string; out ALineNum: Integer; Index: Integer = -1): Boolean;
    {
      called when the code completion is completed.  Accepted is true if the user has requested
      the item hinted to them in the viewer otherwise Accepted is false.
      DisplayParams should be set to true if the implementor would like to be requeried
      for parameter invocation.  It is up to the implementor to insert the text into the editor.
      One way might be to use CodeInsightServices.InsertText(StrToInsert, ShouldReplace);
      Another might be to acquire the EditView from CodeInsightServices.GetEditView() and do
      the insertion yourself.
    }
    procedure Done(Accepted: Boolean; out DisplayParams: Boolean);
    property Name: string read GetName;
    property MultiSelect: Boolean read GetMultiSelect;
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;

  IOTACodeInsightViewer = interface(IUnknown)
    ['{AAA55FAC-350E-4F43-9C42-4FC28B6BFE33}']
    { returns whether the item at index 'Index' is selected in the viewer } 
    function GetSelected(Index: Integer): Boolean;
    { returns the count of the items in the viewer }
    function GetItemCount: Integer;
    { returns the selected string.  Is useful when implementing IOTACodeInsightManager.Done() }
    function GetSelectedString: string;
    { returns the index of the selected item }
    function GetSelectedIndex: Integer;
    {
      returns the key which was used to close the viewer.  An implementation
      of IOTACodeInsightManager.Done() might use this to determine whether it should be inserted
      into the completed text or not.  For instance, a user might accept an identifier in the
      list by typing a ';'.  The comma would be the 'closekey' and the implementor of
      IOTACodeInsightManager.Done() might want to insert the identifier selected as well
      as the ';'.
    }
    function GetCloseKey: Char;
    { returns whether the selection in the viewer is valid }
    function GetIsValidSelection: Boolean;
    property Selected[Index: Integer]: Boolean read GetSelected;
    property ItemCount: Integer read GetItemCount;
    property SelectedString: string read GetSelectedString;
    property SelectedIndex: Integer read GetSelectedIndex;
    property CloseKey: Char read GetCloseKey;
    property IsValidSelection: Boolean read GetIsValidSelection;
  end;

  {
    An IOTACodeInsightManager should implement this interface if it would like to
    do custom drawing in the viewer.
  }
  INTACustomDrawCodeInsightViewer = interface(IUnknown)
    ['{32CA7B43-9AFC-49CF-ABC9-7ECD772488D9}']
    {
      called when the viewer draws the item at index 'Index'.  if DoDraw is false,
      then only a rectangle calculation is being requested.  The rectangle should be returned
      by the 'Rect' out parameter.
    }
    procedure DrawLine(Index: Integer; Canvas: TCanvas; var Rect: TRect;
      DrawingHintText: Boolean; DoDraw: Boolean; var DefaultDraw: Boolean);
  end;
  {$IFDEF LINUX}
  {$NODEFINE INTACustomDrawCodeInsightViewer}
  {$ENDIF}

  { may be queried by using (BorlandIDEServices as IOTACodeInsightServices). }
  IOTACodeInsightServices60 = interface(IUnknown)
    ['{476904F8-89A9-4CD8-A71E-164660659763}']
    { returns the current edit view to work with }
    procedure GetEditView(out EditView: IOTAEditView);
    { returns the viewer interface to be queried by code completion implementors }
    procedure GetViewer(out Viewer: IOTACodeInsightViewer);
    { returns the current code completion manager }
    procedure GetCurrentCodeInsightManager(out CodeInsightManager: IOTACodeInsightManager);
    { cancel the invocation requested from the current IOTACodeInsightManager }
    procedure CancelCodeInsightProcessing;
    { registers a new code insight manager and returns its index }
    function AddCodeInsightManager(const ACodeInsightManager: IOTACodeInsightManager): Integer;
    { unregister the manager at index 'Index' }
    procedure RemoveCodeInsightManager(Index: Integer);
    { inserts 'Str' into the editor optionally replacing the token which the editor is currently on }
    procedure InsertText(const Str: string; Replace: Boolean);
    { returns the count of installed code insight managers }
    function GetCodeInsightManagerCount: Integer;
    { returns the code insight manager at index 'Index' }
    function GetCodeInsightManager(Index: Integer): IOTACodeInsightManager;
    property CodeInsightManagerCount: Integer read GetCodeInsightManagerCount;
    property CodeInsightManager[Index: Integer]: IOTACodeInsightManager read GetCodeInsightManager;
  end;

  IOTACodeInsightServices = interface(IOTACodeInsightServices60)
  ['{EE5C42A9-DBC8-4C5D-B28E-528024CBC97C}']
    {
      sets the EditView and CurrentCIManager for operations with CI.  The
      Viewer/Hints are disabled while an EditView and/or a CodeInsightManager
      have been set via this procedure.  SetQueryContext must be called with
      parameters of nil for CodeInsightServices to be returned to its initial state.
    }
    procedure SetQueryContext(const EditView: IOTAEditView;
      const CodeInsightManager: IOTACodeInsightManager);
  end;

  IBorlandIDEServices = interface(IUnknown)
    ['{7FD1CE92-E053-11D1-AB0B-00C04FB16FB3}']
  end;

  { This class serves as a stubbed implementation of the IOTANotifer interface.
    simply statically override the methods you intend to implement and redeclare
    IOTANotifier or descendent.  The most common overrides would probably be,
    Destroyed and Modified.  Some Subsystems do *not* call all methods since in
    some cases there is not such operation. This object does not exist for
    C++Builder since these interfaces are used directly as pure virtual COM-style
    classes. }

  TNotifierObject = class(TInterfacedObject)
  public
    procedure AfterSave;
    procedure BeforeSave;
    procedure Destroyed;
    procedure Modified;
  end;
  {$NODEFINE TNotifierObject}

  { Implements IOTAFile }
  TOTAFile = class(TInterfacedObject, IOTAFile)
    FSource: string;
    FAge: TDateTime;
  public
    constructor Create(const StringCode: String; const Age: TDateTime = -1);
    function    GetSource: string; virtual;
    function    GetAge: TDateTime; virtual;
  end;

var
 (* The BorlandIDEServices global variable is initialized by the Delphi or
    C++Builder IDE.  From this interface all of the IxxxxServices interfaces
    may be queried for.  For example, in order to obtain the IOTAModuleServices
    interface, simply call the QueryInterface method with the interface
    identifier or the GUID for the IOTAModuleServices interface.  In Delphi, you
    could also use the "as" operator, however not all versions of the IDEs will
    support all the "services" interfaces.  IOTATodoServices is only supported
    in the Professional and Enterprise versions of the products.

    In Delphi;
      var
        ModuleServices: IOTAModuleServices;

      ...

      if Supports(BorlandIDEServices, IOTAModuleServices, ModuleServices) then
      begin
        ...
      end;

    or in C++Builder;

      IOTAModuleServices *ModuleServices;
      if (Supports(BorlandIDEServices, __uuidof(IOTAModuleServices), &ModuleServices))
      {
        ...
      }
  *)
  BorlandIDEServices: IBorlandIDEServices;
  LibraryWizardProc: TWizardRegisterProc = nil;

procedure RegisterPackageWizard(const Wizard: IOTAWizard);

{ Convert a String into an IOTAFile for use by the IDE }
function StringToIOTAFile(const CodeString: string): IOTAFile;

{ Returns the Active Project }
function GetActiveProject: IOTAProject;

implementation

function StringToIOTAFile(const CodeString: string): IOTAFile;
begin
  Result := TOTAFile.Create(CodeString);
end;

{ Active Project Group/ Project }
function GetActiveProjectGroup: IOTAProjectGroup;

var
  ModuleServices: IOTAModuleServices;
  i: Integer;
begin
  Result := nil;
  if Assigned(BorlandIDEServices) then
  begin
    ModuleServices := BorlandIDEServices as IOTAModuleServices;
    for i := 0 to ModuleServices.ModuleCount - 1 do
      if Supports(ModuleServices.Modules[i], IOTAProjectGroup, Result) then
        Break;
  end;
end;

function GetActiveProject: IOTAProject;
var
  ProjectGroup: IOTAProjectGroup;
begin
  Result := nil;
  ProjectGroup := GetActiveProjectGroup;
  if ProjectGroup <> nil then
    Result := ProjectGroup.ActiveProject;
end;

procedure RegisterPackageWizard(const Wizard: IOTAWizard);
begin
  if Assigned(LibraryWizardProc) then
    LibraryWizardProc(Wizard);
end;

{ TNotifierObject }

procedure TNotifierObject.AfterSave;
begin
  // do nothing stub implementation
end;

procedure TNotifierObject.BeforeSave;
begin
  // do nothing stub implementation
end;

procedure TNotifierObject.Destroyed;
begin
  // do nothing stub implementation
end;

procedure TNotifierObject.Modified;
begin
  // do nothing stub implementation
end;

{ TOTAFile }
constructor TOTAFile.Create(const StringCode: String; const Age: TDateTime);
begin
  FSource := StringCode;
  FAge := Age;
end;

function    TOTAFile.GetSource: string;
begin
  Result := FSource;
end;

function    TOTAFile.GetAge: TDateTime;
begin
  Result := FAge;
end;

end.