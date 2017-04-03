unit Outlook8;

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
// File generated on 6/19/2002 2:25:35 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: w:\typelib\typelib\typelibraries\msoutl8.olb (1)
// LIBID: {00062FFF-0000-0000-C000-000000000046}
// LCID: 0
// Helpfile: C:\Program Files\Microsoft Office\Office\VBAOUTL.HLP
// HelpString: Microsoft Outlook 8.0 Object Library
// DepndLst: 
//   (1) v1.0 stdole, (C:\WINNT\System32\stdole32.tlb)
//   (2) v2.0 Office, (C:\Program Files\Microsoft Office\Office\MSO97.DLL)
//   (3) v2.0 MSForms, (C:\WINNT\System32\FM20.DLL)
// Errors:
//   Hint: Symbol 'Application' renamed to 'OutlookApplication'
//   Hint: Parameter 'Object' of _IApplication.CreateObject changed to 'Object_'
//   Hint: Parameter 'Type' of _IApplication.GetNamespace changed to 'Type_'
//   Hint: Parameter 'Type' of _DApplication.GetNamespace changed to 'Type_'
//   Hint: Member 'End' of '_IAppointmentItem' changed to 'End_'
//   Hint: Parameter 'End' of _IAppointmentItem.End changed to 'End_'
//   Hint: Parameter 'End' of _IAppointmentItem.End changed to 'End_'
//   Hint: Parameter 'Type' of _IAppointmentItem.SaveAs changed to 'Type_'
//   Hint: Member 'End' of '_DAppointmentItem' changed to 'End_'
//   Hint: Parameter 'Type' of _DAppointmentItem.SaveAs changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of _IAttachment.Type changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of _IAttachments.Add changed to 'Type_'
//   Hint: Parameter 'Type' of Attachments.Add changed to 'Type_'
//   Hint: Parameter 'Type' of _IContactItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DContactItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _IFolders.Add changed to 'Type_'
//   Hint: Parameter 'Type' of Folders.Add changed to 'Type_'
//   Hint: Parameter 'Type' of _IItems.Add changed to 'Type_'
//   Hint: Parameter 'Property' of _IItems.Sort changed to 'Property_'
//   Hint: Parameter 'Type' of Items.Add changed to 'Type_'
//   Hint: Parameter 'Property' of Items.Sort changed to 'Property_'
//   Hint: Member 'End' of '_IJournalItem' changed to 'End_'
//   Hint: Parameter 'End' of _IJournalItem.End changed to 'End_'
//   Hint: Parameter 'End' of _IJournalItem.End changed to 'End_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of _IJournalItem.Type changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of _IJournalItem.Type changed to 'Type_'
//   Hint: Parameter 'Type' of _IJournalItem.SaveAs changed to 'Type_'
//   Hint: Member 'End' of '_DJournalItem' changed to 'End_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of _DJournalItem.SaveAs changed to 'Type_'
//   Hint: Member 'To' of '_IMailItem' changed to 'To_'
//   Hint: Parameter 'To' of _IMailItem.To changed to 'To_'
//   Hint: Parameter 'To' of _IMailItem.To changed to 'To_'
//   Hint: Parameter 'Type' of _IMailItem.SaveAs changed to 'Type_'
//   Hint: Member 'To' of '_DMailItem' changed to 'To_'
//   Hint: Parameter 'Type' of _DMailItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _IMeetingCanceledItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DMeetingCanceledItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _IMeetingRequestAcceptedItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DMeetingRequestAcceptedItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _IMeetingRequestDeclinedItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DMeetingRequestDeclinedItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _IMeetingRequestItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DMeetingRequestItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _IMeetingRequestTentativeItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DMeetingRequestTentativeItem.SaveAs changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of _INameSpace.Type changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of _INoteItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DNoteItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _IOfficeDocumentItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DOfficeDocumentItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _IPostItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DPostItem.SaveAs changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of _IRecipient.Type changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of _IRecipient.Type changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of _IRemoteItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DRemoteItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _IReportItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DReportItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _ITaskItem.SaveAs changed to 'Type_'
//   Hint: Symbol 'Assign' renamed to 'Assign_'
//   Hint: Parameter 'Type' of _DTaskItem.SaveAs changed to 'Type_'
//   Hint: Symbol 'Assign' renamed to 'Assign_'
//   Hint: Parameter 'Type' of _ITaskRequestAcceptItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DTaskRequestAcceptItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _ITaskRequestDeclineItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DTaskRequestDeclineItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _ITaskRequestItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DTaskRequestItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _ITaskRequestUpdateItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _DTaskRequestUpdateItem.SaveAs changed to 'Type_'
//   Hint: Parameter 'Type' of _IUserProperties.Add changed to 'Type_'
//   Hint: Parameter 'Type' of UserProperties.Add changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of _IUserProperty.Type changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Application' renamed to 'OutlookApplication'
//   Hint: Member 'End' of '_IAppointmentItem' changed to 'End_'
//   Hint: Member 'End' of '_DAppointmentItem' changed to 'End_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'End' of '_IJournalItem' changed to 'End_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'End' of '_DJournalItem' changed to 'End_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'To' of '_IMailItem' changed to 'To_'
//   Hint: Member 'To' of '_DMailItem' changed to 'To_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Assign' renamed to 'Assign_'
//   Hint: Symbol 'Assign' renamed to 'Assign_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
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

uses Windows, ActiveX, Classes, Graphics, MSForms97, Office97, OleCtrls, OleServer, 
StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  OutlookMajorVersion = 8;
  OutlookMinorVersion = 0;

  LIBID_Outlook: TGUID = '{00062FFF-0000-0000-C000-000000000046}';

  IID__IItemEvents: TGUID = '{0006313A-0000-0000-C000-000000000046}';
  DIID__DItemEvents: TGUID = '{0006303A-0000-0000-C000-000000000046}';
  IID__IAction: TGUID = '{00063143-0000-0000-C000-000000000046}';
  DIID_Action: TGUID = '{00063043-0000-0000-C000-000000000046}';
  IID__IActions: TGUID = '{0006313E-0000-0000-C000-000000000046}';
  DIID_Actions: TGUID = '{0006303E-0000-0000-C000-000000000046}';
  IID__IApplication: TGUID = '{00063101-0000-0000-C000-000000000046}';
  DIID__DApplication: TGUID = '{00063001-0000-0000-C000-000000000046}';
  CLASS_OutlookApplication: TGUID = '{0006F033-0000-0000-C000-000000000046}';
  IID__IAppointmentItem: TGUID = '{00063133-0000-0000-C000-000000000046}';
  DIID__DAppointmentItem: TGUID = '{00063033-0000-0000-C000-000000000046}';
  CLASS_AppointmentItem: TGUID = '{00061030-0000-0000-C000-000000000046}';
  IID__IAttachment: TGUID = '{00063107-0000-0000-C000-000000000046}';
  DIID_Attachment: TGUID = '{00063007-0000-0000-C000-000000000046}';
  IID__IAttachments: TGUID = '{0006313C-0000-0000-C000-000000000046}';
  DIID_Attachments: TGUID = '{0006303C-0000-0000-C000-000000000046}';
  IID__IContactItem: TGUID = '{00063121-0000-0000-C000-000000000046}';
  DIID__DContactItem: TGUID = '{00063021-0000-0000-C000-000000000046}';
  CLASS_ContactItem: TGUID = '{00061031-0000-0000-C000-000000000046}';
  IID__IExplorer: TGUID = '{00063103-0000-0000-C000-000000000046}';
  DIID_Explorer: TGUID = '{00063003-0000-0000-C000-000000000046}';
  IID__IFolders: TGUID = '{00063140-0000-0000-C000-000000000046}';
  DIID_Folders: TGUID = '{00063040-0000-0000-C000-000000000046}';
  IID__IFormDescription: TGUID = '{00063146-0000-0000-C000-000000000046}';
  DIID_FormDescription: TGUID = '{00063046-0000-0000-C000-000000000046}';
  IID__IInspector: TGUID = '{00063105-0000-0000-C000-000000000046}';
  DIID_Inspector: TGUID = '{00063005-0000-0000-C000-000000000046}';
  IID__IItems: TGUID = '{00063141-0000-0000-C000-000000000046}';
  DIID_Items: TGUID = '{00063041-0000-0000-C000-000000000046}';
  IID__IJournalItem: TGUID = '{00063122-0000-0000-C000-000000000046}';
  DIID__DJournalItem: TGUID = '{00063022-0000-0000-C000-000000000046}';
  CLASS_JournalItem: TGUID = '{00061037-0000-0000-C000-000000000046}';
  IID__IMailItem: TGUID = '{00063134-0000-0000-C000-000000000046}';
  DIID__DMailItem: TGUID = '{00063034-0000-0000-C000-000000000046}';
  CLASS_MailItem: TGUID = '{00061033-0000-0000-C000-000000000046}';
  IID__IMAPIFolder: TGUID = '{00063106-0000-0000-C000-000000000046}';
  DIID_MAPIFolder: TGUID = '{00063006-0000-0000-C000-000000000046}';
  IID__IMeetingCanceledItem: TGUID = '{00063128-0000-0000-C000-000000000046}';
  DIID__DMeetingCanceledItem: TGUID = '{00063028-0000-0000-C000-000000000046}';
  CLASS__MeetingCanceledItem: TGUID = '{00061040-0000-0000-C000-000000000046}';
  IID__IMeetingRequestAcceptedItem: TGUID = '{00063130-0000-0000-C000-000000000046}';
  DIID__DMeetingRequestAcceptedItem: TGUID = '{00063030-0000-0000-C000-000000000046}';
  CLASS__MeetingRequestAcceptedItem: TGUID = '{00061042-0000-0000-C000-000000000046}';
  IID__IMeetingRequestDeclinedItem: TGUID = '{00063131-0000-0000-C000-000000000046}';
  DIID__DMeetingRequestDeclinedItem: TGUID = '{00063031-0000-0000-C000-000000000046}';
  CLASS__MeetingRequestDeclinedItem: TGUID = '{00061043-0000-0000-C000-000000000046}';
  IID__IMeetingRequestItem: TGUID = '{00063129-0000-0000-C000-000000000046}';
  DIID__DMeetingRequestItem: TGUID = '{00063029-0000-0000-C000-000000000046}';
  CLASS_MeetingRequestItem: TGUID = '{00061041-0000-0000-C000-000000000046}';
  IID__IMeetingRequestTentativeItem: TGUID = '{00063132-0000-0000-C000-000000000046}';
  DIID__DMeetingRequestTentativeItem: TGUID = '{00063032-0000-0000-C000-000000000046}';
  CLASS__MeetingRequestTentativeItem: TGUID = '{00061044-0000-0000-C000-000000000046}';
  IID__INameSpace: TGUID = '{00063102-0000-0000-C000-000000000046}';
  DIID_NameSpace: TGUID = '{00063002-0000-0000-C000-000000000046}';
  IID__INoteItem: TGUID = '{00063125-0000-0000-C000-000000000046}';
  DIID__DNoteItem: TGUID = '{00063025-0000-0000-C000-000000000046}';
  CLASS_NoteItem: TGUID = '{00061034-0000-0000-C000-000000000046}';
  IID__IOfficeDocumentItem: TGUID = '{00063120-0000-0000-C000-000000000046}';
  DIID__DOfficeDocumentItem: TGUID = '{00063020-0000-0000-C000-000000000046}';
  CLASS__OfficeDocumentItem: TGUID = '{00061061-0000-0000-C000-000000000046}';
  IID__IPages: TGUID = '{0006313F-0000-0000-C000-000000000046}';
  DIID_Pages: TGUID = '{0006303F-0000-0000-C000-000000000046}';
  IID__IPostItem: TGUID = '{00063124-0000-0000-C000-000000000046}';
  DIID__DPostItem: TGUID = '{00063024-0000-0000-C000-000000000046}';
  CLASS_PostItem: TGUID = '{0006103A-0000-0000-C000-000000000046}';
  IID__IRecipient: TGUID = '{00063145-0000-0000-C000-000000000046}';
  DIID_Recipient: TGUID = '{00063045-0000-0000-C000-000000000046}';
  IID__IRecipients: TGUID = '{0006313B-0000-0000-C000-000000000046}';
  DIID_Recipients: TGUID = '{0006303B-0000-0000-C000-000000000046}';
  IID__IRecurrencePattern: TGUID = '{00063144-0000-0000-C000-000000000046}';
  DIID_RecurrencePattern: TGUID = '{00063044-0000-0000-C000-000000000046}';
  IID__IRemoteItem: TGUID = '{00063123-0000-0000-C000-000000000046}';
  DIID__DRemoteItem: TGUID = '{00063023-0000-0000-C000-000000000046}';
  CLASS_RemoteItem: TGUID = '{00061060-0000-0000-C000-000000000046}';
  IID__IReportItem: TGUID = '{00063126-0000-0000-C000-000000000046}';
  DIID__DReportItem: TGUID = '{00063026-0000-0000-C000-000000000046}';
  CLASS_ReportItem: TGUID = '{00061035-0000-0000-C000-000000000046}';
  IID__ITaskItem: TGUID = '{00063135-0000-0000-C000-000000000046}';
  DIID__DTaskItem: TGUID = '{00063035-0000-0000-C000-000000000046}';
  CLASS_TaskItem: TGUID = '{00061032-0000-0000-C000-000000000046}';
  IID__ITaskRequestAcceptItem: TGUID = '{00063138-0000-0000-C000-000000000046}';
  DIID__DTaskRequestAcceptItem: TGUID = '{00063038-0000-0000-C000-000000000046}';
  CLASS__TaskRequestAcceptItem: TGUID = '{00061052-0000-0000-C000-000000000046}';
  IID__ITaskRequestDeclineItem: TGUID = '{00063139-0000-0000-C000-000000000046}';
  DIID__DTaskRequestDeclineItem: TGUID = '{00063039-0000-0000-C000-000000000046}';
  CLASS__TaskRequestDeclineItem: TGUID = '{00061053-0000-0000-C000-000000000046}';
  IID__ITaskRequestItem: TGUID = '{00063136-0000-0000-C000-000000000046}';
  DIID__DTaskRequestItem: TGUID = '{00063036-0000-0000-C000-000000000046}';
  CLASS_TaskRequestItem: TGUID = '{00061050-0000-0000-C000-000000000046}';
  IID__ITaskRequestUpdateItem: TGUID = '{00063137-0000-0000-C000-000000000046}';
  DIID__DTaskRequestUpdateItem: TGUID = '{00063037-0000-0000-C000-000000000046}';
  CLASS__TaskRequestUpdateItem: TGUID = '{00061051-0000-0000-C000-000000000046}';
  IID__IUserProperties: TGUID = '{0006313D-0000-0000-C000-000000000046}';
  DIID_UserProperties: TGUID = '{0006303D-0000-0000-C000-000000000046}';
  IID__IUserProperty: TGUID = '{00063142-0000-0000-C000-000000000046}';
  DIID_UserProperty: TGUID = '{00063042-0000-0000-C000-000000000046}';
  IID__IRecipientControl: TGUID = '{D87E7E16-6897-11CE-A6C0-00AA00608FAA}';
  DIID__DRecipientControl: TGUID = '{0006F025-0000-0000-C000-000000000046}';
  DIID__DRecipientControlEvents: TGUID = '{D87E7E17-6897-11CE-A6C0-00AA00608FAA}';
  CLASS__RecipientControl: TGUID = '{0006F023-0000-0000-C000-000000000046}';
  IID__IDocSiteControl: TGUID = '{43507DD0-811D-11CE-B565-00AA00608FAA}';
  DIID__DDocSiteControl: TGUID = '{0006F026-0000-0000-C000-000000000046}';
  DIID__DDocSiteControlEvents: TGUID = '{50BB9B50-811D-11CE-B565-00AA00608FAA}';
  CLASS__DocSiteControl: TGUID = '{0006F024-0000-0000-C000-000000000046}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum OlAttachmentType
type
  OlAttachmentType = TOleEnum;
const
  olByValue = $00000001;
  olByReference = $00000004;
  olEmbeddedItem = $00000005;
  olOLE = $00000006;

// Constants for enum OlBusyStatus
type
  OlBusyStatus = TOleEnum;
const
  olFree = $00000000;
  olTentative = $00000001;
  olBusy = $00000002;
  olOutOfOffice = $00000003;

// Constants for enum OlDaysOfWeek
type
  OlDaysOfWeek = TOleEnum;
const
  olSunday = $00000001;
  olMonday = $00000002;
  olTuesday = $00000004;
  olWednesday = $00000008;
  olThursday = $00000010;
  olFriday = $00000020;
  olSaturday = $00000040;

// Constants for enum OlDefaultFolders
type
  OlDefaultFolders = TOleEnum;
const
  olFolderDeletedItems = $00000003;
  olFolderOutbox = $00000004;
  olFolderSentMail = $00000005;
  olFolderInbox = $00000006;
  olFolderCalendar = $00000009;
  olFolderContacts = $0000000A;
  olFolderJournal = $0000000B;
  olFolderNotes = $0000000C;
  olFolderTasks = $0000000D;

// Constants for enum OlFolderDisplayMode
type
  OlFolderDisplayMode = TOleEnum;
const
  olFolderDisplayNormal = $00000000;
  olFolderDisplayFolderOnly = $00000001;
  olFolderDisplayNoNavigation = $00000002;

// Constants for enum OlFormRegistry
type
  OlFormRegistry = TOleEnum;
const
  olDefaultRegistry = $00000000;
  olOrganizationRegistry = $00000004;
  olPersonalRegistry = $00000002;
  olFolderRegistry = $00000003;

// Constants for enum OlGender
type
  OlGender = TOleEnum;
const
  olUnspecified = $00000000;
  olFemale = $00000001;
  olMale = $00000002;

// Constants for enum OlImportance
type
  OlImportance = TOleEnum;
const
  olImportanceLow = $00000000;
  olImportanceNormal = $00000001;
  olImportanceHigh = $00000002;

// Constants for enum OlInspectorClose
type
  OlInspectorClose = TOleEnum;
const
  olSave = $00000000;
  olDiscard = $00000001;
  olPromptForSave = $00000002;

// Constants for enum OlItems
type
  OlItems = TOleEnum;
const
  olMailItem = $00000000;
  olAppointmentItem = $00000001;
  olContactItem = $00000002;
  olTaskItem = $00000003;
  olJournalItem = $00000004;
  olNoteItem = $00000005;
  olPostItem = $00000006;

// Constants for enum OlJournalRecipientType
type
  OlJournalRecipientType = TOleEnum;
const
  olAssociatedContact = $00000001;

// Constants for enum OlMailingAddress
type
  OlMailingAddress = TOleEnum;
const
  olNone = $00000000;
  olHome = $00000001;
  olBusiness = $00000002;
  olOther = $00000003;

// Constants for enum OlMailRecipientType
type
  OlMailRecipientType = TOleEnum;
const
  olOriginator = $00000000;
  olTo = $00000001;
  olCC = $00000002;
  olBCC = $00000003;

// Constants for enum OlMeetingRecipientType
type
  OlMeetingRecipientType = TOleEnum;
const
  olOrganizer = $00000000;
  olRequired = $00000001;
  olOptional = $00000002;
  olResource = $00000003;

// Constants for enum OlMeetingStatus
type
  OlMeetingStatus = TOleEnum;
const
  olNonMeeting = $00000000;
  olMeeting = $00000001;
  olMeetingReceived = $00000003;
  olMeetingCanceled = $00000005;

// Constants for enum OlNoteColor
type
  OlNoteColor = TOleEnum;
const
  olBlue = $00000000;
  olGreen = $00000001;
  olPink = $00000002;
  olYellow = $00000003;
  olWhite = $00000004;

// Constants for enum OlRecurrenceType
type
  OlRecurrenceType = TOleEnum;
const
  olRecursDaily = $00000000;
  olRecursWeekly = $00000001;
  olRecursMonthly = $00000002;
  olRecursMonthNth = $00000003;
  olRecursYearly = $00000005;
  olRecursYearNth = $00000006;

// Constants for enum OlRemoteStatus
type
  OlRemoteStatus = TOleEnum;
const
  olRemoteStatusNone = $00000000;
  olUnMarked = $00000001;
  olMarkedForDownload = $00000002;
  olMarkedForCopy = $00000003;
  olMarkedForDelete = $00000004;

// Constants for enum OlMeetingResponse
type
  OlMeetingResponse = TOleEnum;
const
  olMeetingAccepted = $00000003;
  olMeetingDeclined = $00000004;
  olMeetingTentative = $00000002;

// Constants for enum OlResponseStatus
type
  OlResponseStatus = TOleEnum;
const
  olResponseNone = $00000000;
  olResponseOrganized = $00000001;
  olResponseTentative = $00000002;
  olResponseAccepted = $00000003;
  olResponseDeclined = $00000004;
  olResponseNotResponded = $00000005;

// Constants for enum OlSaveAsType
type
  OlSaveAsType = TOleEnum;
const
  olTXT = $00000000;
  olRTF = $00000001;
  olTemplate = $00000002;
  olMSG = $00000003;
  olDoc = $00000004;

// Constants for enum OlSensitivity
type
  OlSensitivity = TOleEnum;
const
  olNormal = $00000000;
  olPersonal = $00000001;
  olPrivate = $00000002;
  olConfidential = $00000003;

// Constants for enum OlFlagStatus
type
  OlFlagStatus = TOleEnum;
const
  olNoFlag = $00000000;
  olFlagComplete = $00000001;
  olFlagMarked = $00000002;

// Constants for enum OlTaskDelegationState
type
  OlTaskDelegationState = TOleEnum;
const
  olTaskNotDelegated = $00000000;
  olTaskDelegationUnknown = $00000001;
  olTaskDelegationAccepted = $00000002;
  olTaskDelegationDeclined = $00000003;

// Constants for enum OlTaskOwnership
type
  OlTaskOwnership = TOleEnum;
const
  olNewTask = $00000000;
  olDelegatedTask = $00000001;
  olOwnTask = $00000002;

// Constants for enum OlTaskRecipientType
type
  OlTaskRecipientType = TOleEnum;
const
  olUpdate = $00000001;
  olFinalStatus = $00000002;

// Constants for enum OlTaskResponse
type
  OlTaskResponse = TOleEnum;
const
  olTaskSimple = $00000000;
  olTaskAssign = $00000001;
  olTaskAccept = $00000002;
  olTaskDecline = $00000003;

// Constants for enum OlTaskStatus
type
  OlTaskStatus = TOleEnum;
const
  olTaskNotStarted = $00000000;
  olTaskInProgress = $00000001;
  olTaskComplete = $00000002;
  olTaskWaiting = $00000003;
  olTaskDeferred = $00000004;

// Constants for enum OlTrackingStatus
type
  OlTrackingStatus = TOleEnum;
const
  olTrackingNone = $00000000;
  olTrackingDelivered = $00000001;
  olTrackingNotDelivered = $00000002;
  olTrackingNotRead = $00000003;
  olTrackingRecallFailure = $00000004;
  olTrackingRecallSuccess = $00000005;
  olTrackingRead = $00000006;
  olTrackingReplied = $00000007;

// Constants for enum OlUserPropertyType
type
  OlUserPropertyType = TOleEnum;
const
  olText = $00000001;
  olNumber = $00000003;
  olDateTime = $00000005;
  olYesNo = $00000006;
  olDuration = $00000007;
  olKeywords = $0000000B;
  olPercent = $0000000C;
  olCurrency = $0000000E;
  olFormula = $00000012;
  olCombination = $00000013;

// Constants for enum OlActionCopyLike
type
  OlActionCopyLike = TOleEnum;
const
  olReply = $00000000;
  olReplyAll = $00000001;
  olForward = $00000002;
  olReplyFolder = $00000003;
  olRespond = $00000004;

// Constants for enum OlActionReplyStyle
type
  OlActionReplyStyle = TOleEnum;
const
  olOmitOriginalText = $00000000;
  olEmbedOriginalItem = $00000001;
  olIncludeOriginalText = $00000002;
  olIndentOriginalText = $00000003;
  olLinkOriginalItem = $00000004;
  olUserPreference = $00000005;

// Constants for enum OlActionResponseStyle
type
  OlActionResponseStyle = TOleEnum;
const
  olOpen = $00000000;
  olSend = $00000001;
  olPrompt = $00000002;

// Constants for enum OlActionShowOn
type
  OlActionShowOn = TOleEnum;
const
  olDontShow = $00000000;
  olMenu = $00000001;
  olMenuAndToolbar = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _IItemEvents = interface;
  _DItemEvents = dispinterface;
  _IAction = interface;
  Action = dispinterface;
  _IActions = interface;
  Actions = dispinterface;
  _IApplication = interface;
  _DApplication = dispinterface;
  _IAppointmentItem = interface;
  _DAppointmentItem = dispinterface;
  _IAttachment = interface;
  Attachment = dispinterface;
  _IAttachments = interface;
  Attachments = dispinterface;
  _IContactItem = interface;
  _DContactItem = dispinterface;
  _IExplorer = interface;
  Explorer = dispinterface;
  _IFolders = interface;
  Folders = dispinterface;
  _IFormDescription = interface;
  FormDescription = dispinterface;
  _IInspector = interface;
  Inspector = dispinterface;
  _IItems = interface;
  Items = dispinterface;
  _IJournalItem = interface;
  _DJournalItem = dispinterface;
  _IMailItem = interface;
  _DMailItem = dispinterface;
  _IMAPIFolder = interface;
  MAPIFolder = dispinterface;
  _IMeetingCanceledItem = interface;
  _DMeetingCanceledItem = dispinterface;
  _IMeetingRequestAcceptedItem = interface;
  _DMeetingRequestAcceptedItem = dispinterface;
  _IMeetingRequestDeclinedItem = interface;
  _DMeetingRequestDeclinedItem = dispinterface;
  _IMeetingRequestItem = interface;
  _DMeetingRequestItem = dispinterface;
  _IMeetingRequestTentativeItem = interface;
  _DMeetingRequestTentativeItem = dispinterface;
  _INameSpace = interface;
  NameSpace = dispinterface;
  _INoteItem = interface;
  _DNoteItem = dispinterface;
  _IOfficeDocumentItem = interface;
  _DOfficeDocumentItem = dispinterface;
  _IPages = interface;
  Pages = dispinterface;
  _IPostItem = interface;
  _DPostItem = dispinterface;
  _IRecipient = interface;
  Recipient = dispinterface;
  _IRecipients = interface;
  Recipients = dispinterface;
  _IRecurrencePattern = interface;
  RecurrencePattern = dispinterface;
  _IRemoteItem = interface;
  _DRemoteItem = dispinterface;
  _IReportItem = interface;
  _DReportItem = dispinterface;
  _ITaskItem = interface;
  _DTaskItem = dispinterface;
  _ITaskRequestAcceptItem = interface;
  _DTaskRequestAcceptItem = dispinterface;
  _ITaskRequestDeclineItem = interface;
  _DTaskRequestDeclineItem = dispinterface;
  _ITaskRequestItem = interface;
  _DTaskRequestItem = dispinterface;
  _ITaskRequestUpdateItem = interface;
  _DTaskRequestUpdateItem = dispinterface;
  _IUserProperties = interface;
  UserProperties = dispinterface;
  _IUserProperty = interface;
  UserProperty = dispinterface;
  _IRecipientControl = interface;
  _DRecipientControl = dispinterface;
  _DRecipientControlEvents = dispinterface;
  _IDocSiteControl = interface;
  _DDocSiteControl = dispinterface;
  _DDocSiteControlEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  OutlookApplication = _DApplication;
  AppointmentItem = _DAppointmentItem;
  ContactItem = _DContactItem;
  JournalItem = _DJournalItem;
  MailItem = _DMailItem;
  _MeetingCanceledItem = _DMeetingCanceledItem;
  _MeetingRequestAcceptedItem = _DMeetingRequestAcceptedItem;
  _MeetingRequestDeclinedItem = _DMeetingRequestDeclinedItem;
  MeetingRequestItem = _DMeetingRequestItem;
  _MeetingRequestTentativeItem = _DMeetingRequestTentativeItem;
  NoteItem = _DNoteItem;
  _OfficeDocumentItem = _DOfficeDocumentItem;
  PostItem = _DPostItem;
  RemoteItem = _DRemoteItem;
  ReportItem = _DReportItem;
  TaskItem = _DTaskItem;
  _TaskRequestAcceptItem = _DTaskRequestAcceptItem;
  _TaskRequestDeclineItem = _DTaskRequestDeclineItem;
  TaskRequestItem = _DTaskRequestItem;
  _TaskRequestUpdateItem = _DTaskRequestUpdateItem;
  _RecipientControl = _DRecipientControl;
  _DocSiteControl = _DDocSiteControl;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PUserType1 = ^TGUID; {*}
  PShortint1 = ^Shortint; {*}
  PPShortint1 = ^PShortint1; {*}
  PUserType2 = ^DISPPARAMS; {*}


// *********************************************************************//
// Interface: _IItemEvents
// Flags:     (4096) Dispatchable
// GUID:      {0006313A-0000-0000-C000-000000000046}
// *********************************************************************//
  _IItemEvents = interface(IDispatch)
    ['{0006313A-0000-0000-C000-000000000046}']
    function Read: WordBool; stdcall;
    function Write: WordBool; stdcall;
    function Open: WordBool; stdcall;
    function Close: WordBool; stdcall;
    function Send: WordBool; stdcall;
    function Reply(const Response: IDispatch): WordBool; stdcall;
    function ReplyAll(const Response: IDispatch): WordBool; stdcall;
    function Forward(const Forward: IDispatch): WordBool; stdcall;
    function CustomAction(const Action: IDispatch; const Response: IDispatch): WordBool; stdcall;
    procedure CustomPropertyChange(const Name: WideString); stdcall;
    procedure PropertyChange(const Name: WideString); stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DItemEvents
// Flags:     (4096) Dispatchable
// GUID:      {0006303A-0000-0000-C000-000000000046}
// *********************************************************************//
  _DItemEvents = dispinterface
    ['{0006303A-0000-0000-C000-000000000046}']
    function Read: WordBool; dispid 61441;
    function Write: WordBool; dispid 61442;
    function Open: WordBool; dispid 61443;
    function Close: WordBool; dispid 61444;
    function Send: WordBool; dispid 61445;
    function Reply(const Response: IDispatch): WordBool; dispid 62566;
    function ReplyAll(const Response: IDispatch): WordBool; dispid 62567;
    function Forward(const Forward: IDispatch): WordBool; dispid 62568;
    function CustomAction(const Action: IDispatch; const Response: IDispatch): WordBool; dispid 61446;
    procedure CustomPropertyChange(const Name: WideString); dispid 61448;
    procedure PropertyChange(const Name: WideString); dispid 61449;
  end;

// *********************************************************************//
// Interface: _IAction
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063143-0000-0000-C000-000000000046}
// *********************************************************************//
  _IAction = interface(IDispatch)
    ['{00063143-0000-0000-C000-000000000046}']
    function Get_CopyLike(out CopyLike: OlActionCopyLike): HResult; stdcall;
    function Set_CopyLike(CopyLike: OlActionCopyLike): HResult; stdcall;
    function Get_Enabled(out Enabled: WordBool): HResult; stdcall;
    function Set_Enabled(Enabled: WordBool): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Name(out Name: WideString): HResult; stdcall;
    function Set_Name(const Name: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Prefix(out Prefix: WideString): HResult; stdcall;
    function Set_Prefix(const Prefix: WideString): HResult; stdcall;
    function Get_ReplyStyle(out ReplyStyle: OlActionReplyStyle): HResult; stdcall;
    function Set_ReplyStyle(ReplyStyle: OlActionReplyStyle): HResult; stdcall;
    function Get_ResponseStyle(out ResponseStyle: OlActionResponseStyle): HResult; stdcall;
    function Set_ResponseStyle(ResponseStyle: OlActionResponseStyle): HResult; stdcall;
    function Get_ShowOn(out ShowOn: OlActionShowOn): HResult; stdcall;
    function Set_ShowOn(ShowOn: OlActionShowOn): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Execute(out Item: IDispatch): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  Action
// Flags:     (4096) Dispatchable
// GUID:      {00063043-0000-0000-C000-000000000046}
// *********************************************************************//
  Action = dispinterface
    ['{00063043-0000-0000-C000-000000000046}']
    property CopyLike: OlActionCopyLike dispid 100;
    property Enabled: WordBool dispid 103;
    property MessageClass: WideString dispid 26;
    property Name: WideString dispid 12289;
    property Parent: IDispatch readonly dispid 61441;
    property Prefix: WideString dispid 61;
    property ReplyStyle: OlActionReplyStyle dispid 101;
    property ResponseStyle: OlActionResponseStyle dispid 102;
    property ShowOn: OlActionShowOn dispid 105;
    procedure Delete; dispid 108;
    function Execute: IDispatch; dispid 106;
  end;

// *********************************************************************//
// Interface: _IActions
// Flags:     (4112) Hidden Dispatchable
// GUID:      {0006313E-0000-0000-C000-000000000046}
// *********************************************************************//
  _IActions = interface(IDispatch)
    ['{0006313E-0000-0000-C000-000000000046}']
    function Get_Count(out Count: Integer): HResult; stdcall;
    function Add(out Action: Action): HResult; stdcall;
    function Item(Index: OleVariant; out Action: Action): HResult; stdcall;
    function Remove(Index: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  Actions
// Flags:     (4096) Dispatchable
// GUID:      {0006303E-0000-0000-C000-000000000046}
// *********************************************************************//
  Actions = dispinterface
    ['{0006303E-0000-0000-C000-000000000046}']
    property Count: Integer readonly dispid 80;
    function Add: Action; dispid 100;
    function Item(Index: OleVariant): Action; dispid 81;
    procedure Remove(Index: Integer); dispid 82;
  end;

// *********************************************************************//
// Interface: _IApplication
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063101-0000-0000-C000-000000000046}
// *********************************************************************//
  _IApplication = interface(IDispatch)
    ['{00063101-0000-0000-C000-000000000046}']
    function Get_Assistant(out Assistant: Assistant): HResult; stdcall;
    function ActiveExplorer(out ActiveExplorer: Explorer): HResult; stdcall;
    function ActiveInspector(out ActiveInspector: Inspector): HResult; stdcall;
    function CreateItem(ItemType: OlItems; out Item: IDispatch): HResult; stdcall;
    function CreateItemFromTemplate(const TemplatePath: WideString; InFolder: OleVariant; 
                                    out Item: IDispatch): HResult; stdcall;
    function CreateObject(const ObjectName: WideString; out Object_: IDispatch): HResult; stdcall;
    function GetNamespace(const Type_: WideString; out NameSpace: NameSpace): HResult; stdcall;
    function Quit: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DApplication
// Flags:     (4096) Dispatchable
// GUID:      {00063001-0000-0000-C000-000000000046}
// *********************************************************************//
  _DApplication = dispinterface
    ['{00063001-0000-0000-C000-000000000046}']
    property Assistant: Assistant readonly dispid 276;
    function ActiveExplorer: Explorer; dispid 273;
    function ActiveInspector: Inspector; dispid 274;
    function CreateItem(ItemType: OlItems): IDispatch; dispid 266;
    function CreateItemFromTemplate(const TemplatePath: WideString; InFolder: OleVariant): IDispatch; dispid 267;
    function CreateObject(const ObjectName: WideString): IDispatch; dispid 277;
    function GetNamespace(const Type_: WideString): NameSpace; dispid 272;
    procedure Quit; dispid 275;
  end;

// *********************************************************************//
// Interface: _IAppointmentItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063133-0000-0000-C000-000000000046}
// *********************************************************************//
  _IAppointmentItem = interface(IDispatch)
    ['{00063133-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Get_AllDayEvent(out AllDayEvent: WordBool): HResult; stdcall;
    function Set_AllDayEvent(AllDayEvent: WordBool): HResult; stdcall;
    function Get_BusyStatus(out BusyStatus: OlBusyStatus): HResult; stdcall;
    function Set_BusyStatus(BusyStatus: OlBusyStatus): HResult; stdcall;
    function Get_Duration(out Duration: Integer): HResult; stdcall;
    function Set_Duration(Duration: Integer): HResult; stdcall;
    function Get_End_(out End_: TDateTime): HResult; stdcall;
    function Set_End_(End_: TDateTime): HResult; stdcall;
    function Get_IsRecurring(out IsRecurring: WordBool): HResult; stdcall;
    function Get_Location(out Location: WideString): HResult; stdcall;
    function Set_Location(const Location: WideString): HResult; stdcall;
    function Get_MeetingStatus(out MeetingStatus: OlMeetingStatus): HResult; stdcall;
    function Set_MeetingStatus(MeetingStatus: OlMeetingStatus): HResult; stdcall;
    function Get_OptionalAttendees(out OptionalAttendees: WideString): HResult; stdcall;
    function Set_OptionalAttendees(const OptionalAttendees: WideString): HResult; stdcall;
    function Get_Organizer(out Organizer: WideString): HResult; stdcall;
    function Get_Recipients(out Recipients: Recipients): HResult; stdcall;
    function Get_ReminderMinutesBeforeStart(out ReminderMinutesBeforeStart: Integer): HResult; stdcall;
    function Set_ReminderMinutesBeforeStart(ReminderMinutesBeforeStart: Integer): HResult; stdcall;
    function Get_ReminderOverrideDefault(out ReminderOverrideDefault: WordBool): HResult; stdcall;
    function Set_ReminderOverrideDefault(ReminderOverrideDefault: WordBool): HResult; stdcall;
    function Get_ReminderPlaySound(out ReminderPlaySound: WordBool): HResult; stdcall;
    function Set_ReminderPlaySound(ReminderPlaySound: WordBool): HResult; stdcall;
    function Get_ReminderSet(out ReminderSet: WordBool): HResult; stdcall;
    function Set_ReminderSet(ReminderSet: WordBool): HResult; stdcall;
    function Get_ReminderSoundFile(out ReminderSoundFile: WideString): HResult; stdcall;
    function Set_ReminderSoundFile(const ReminderSoundFile: WideString): HResult; stdcall;
    function Get_ReplyTime(out ReplyTime: TDateTime): HResult; stdcall;
    function Set_ReplyTime(ReplyTime: TDateTime): HResult; stdcall;
    function Get_RequiredAttendees(out RequiredAttendees: WideString): HResult; stdcall;
    function Set_RequiredAttendees(const RequiredAttendees: WideString): HResult; stdcall;
    function Get_Resources(out Resources: WideString): HResult; stdcall;
    function Set_Resources(const Resources: WideString): HResult; stdcall;
    function Get_ResponseRequested(out ResponseRequested: WordBool): HResult; stdcall;
    function Set_ResponseRequested(ResponseRequested: WordBool): HResult; stdcall;
    function Get_ResponseStatus(out ResponseStatus: OlResponseStatus): HResult; stdcall;
    function Get_Start(out Start: TDateTime): HResult; stdcall;
    function Set_Start(Start: TDateTime): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function ClearRecurrencePattern: HResult; stdcall;
    function GetRecurrencePattern(out RecurrencPattern: RecurrencePattern): HResult; stdcall;
    function Respond(Response: OlMeetingResponse; fNoUI: OleVariant; 
                     fAdditionalTextDialog: OleVariant; out ResponseItem: IDispatch): HResult; stdcall;
    function Send: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DAppointmentItem
// Flags:     (4096) Dispatchable
// GUID:      {00063033-0000-0000-C000-000000000046}
// *********************************************************************//
  _DAppointmentItem = dispinterface
    ['{00063033-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    property AllDayEvent: WordBool dispid 33301;
    property BusyStatus: OlBusyStatus dispid 33285;
    property Duration: Integer dispid 33299;
    property End_: TDateTime dispid 33294;
    property IsRecurring: WordBool readonly dispid 33315;
    property Location: WideString dispid 33288;
    property MeetingStatus: OlMeetingStatus dispid 33303;
    property OptionalAttendees: WideString dispid 3587;
    property Organizer: WideString readonly dispid 66;
    property Recipients: Recipients readonly dispid 63508;
    property ReminderMinutesBeforeStart: Integer dispid 34049;
    property ReminderOverrideDefault: WordBool dispid 34076;
    property ReminderPlaySound: WordBool dispid 34078;
    property ReminderSet: WordBool dispid 34051;
    property ReminderSoundFile: WideString dispid 34079;
    property ReplyTime: TDateTime dispid 33312;
    property RequiredAttendees: WideString dispid 3588;
    property Resources: WideString dispid 3586;
    property ResponseRequested: WordBool dispid 99;
    property ResponseStatus: OlResponseStatus readonly dispid 33304;
    property Start: TDateTime dispid 33293;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    procedure ClearRecurrencePattern; dispid 61605;
    function GetRecurrencePattern: RecurrencePattern; dispid 61604;
    function Respond(Response: OlMeetingResponse; fNoUI: OleVariant; 
                     fAdditionalTextDialog: OleVariant): IDispatch; dispid 62722;
    procedure Send; dispid 61557;
  end;

// *********************************************************************//
// Interface: _IAttachment
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063107-0000-0000-C000-000000000046}
// *********************************************************************//
  _IAttachment = interface(IDispatch)
    ['{00063107-0000-0000-C000-000000000046}']
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_DisplayName(out DisplayName: WideString): HResult; stdcall;
    function Set_DisplayName(const DisplayName: WideString): HResult; stdcall;
    function Get_FileName(out FileName: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_PathName(out PathName: WideString): HResult; stdcall;
    function Get_Position(out Position: Integer): HResult; stdcall;
    function Set_Position(Position: Integer): HResult; stdcall;
    function Get_type_(out Type_: OlAttachmentType): HResult; stdcall;
    function Delete: HResult; stdcall;
    function SaveAsFile(const Path: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  Attachment
// Flags:     (4096) Dispatchable
// GUID:      {00063007-0000-0000-C000-000000000046}
// *********************************************************************//
  Attachment = dispinterface
    ['{00063007-0000-0000-C000-000000000046}']
    property Application: OutlookApplication readonly dispid 61440;
    property DisplayName: WideString dispid 12289;
    property FileName: WideString readonly dispid 14084;
    property Parent: IDispatch readonly dispid 113;
    property PathName: WideString readonly dispid 14088;
    property Position: Integer dispid 114;
    property type_: OlAttachmentType readonly dispid 14085;
    procedure Delete; dispid 105;
    procedure SaveAsFile(const Path: WideString); dispid 104;
  end;

// *********************************************************************//
// Interface: _IAttachments
// Flags:     (4112) Hidden Dispatchable
// GUID:      {0006313C-0000-0000-C000-000000000046}
// *********************************************************************//
  _IAttachments = interface(IDispatch)
    ['{0006313C-0000-0000-C000-000000000046}']
    function Get_Count(out Count: Integer): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Add(Source: OleVariant; Type_: OleVariant; Position: OleVariant; 
                 DisplayName: OleVariant; out Attachment: Attachment): HResult; stdcall;
    function Item(Index: OleVariant; out Attachment: Attachment): HResult; stdcall;
    function Remove(Index: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  Attachments
// Flags:     (4096) Dispatchable
// GUID:      {0006303C-0000-0000-C000-000000000046}
// *********************************************************************//
  Attachments = dispinterface
    ['{0006303C-0000-0000-C000-000000000046}']
    property Count: Integer readonly dispid 80;
    property Parent: IDispatch readonly dispid 61441;
    function Add(Source: OleVariant; Type_: OleVariant; Position: OleVariant; 
                 DisplayName: OleVariant): Attachment; dispid 101;
    function Item(Index: OleVariant): Attachment; dispid 81;
    procedure Remove(Index: Integer); dispid 84;
  end;

// *********************************************************************//
// Interface: _IContactItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063121-0000-0000-C000-000000000046}
// *********************************************************************//
  _IContactItem = interface(IDispatch)
    ['{00063121-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Get_Account(out Account: WideString): HResult; stdcall;
    function Set_Account(const Account: WideString): HResult; stdcall;
    function Get_Anniversary(out Anniversary: TDateTime): HResult; stdcall;
    function Set_Anniversary(Anniversary: TDateTime): HResult; stdcall;
    function Get_AssistantName(out AssistantName: WideString): HResult; stdcall;
    function Set_AssistantName(const AssistantName: WideString): HResult; stdcall;
    function Get_AssistantTelephoneNumber(out AssistantTelephoneNumber: WideString): HResult; stdcall;
    function Set_AssistantTelephoneNumber(const AssistantTelephoneNumber: WideString): HResult; stdcall;
    function Get_Birthday(out Birthday: TDateTime): HResult; stdcall;
    function Set_Birthday(Birthday: TDateTime): HResult; stdcall;
    function Get_Business2TelephoneNumber(out Business2TelephoneNumber: WideString): HResult; stdcall;
    function Set_Business2TelephoneNumber(const Business2TelephoneNumber: WideString): HResult; stdcall;
    function Get_BusinessAddress(out BusinessAddress: WideString): HResult; stdcall;
    function Set_BusinessAddress(const BusinessAddress: WideString): HResult; stdcall;
    function Get_BusinessAddressCity(out BusinessAddressCity: WideString): HResult; stdcall;
    function Set_BusinessAddressCity(const BusinessAddressCity: WideString): HResult; stdcall;
    function Get_BusinessAddressCountry(out BusinessAddressCountry: WideString): HResult; stdcall;
    function Set_BusinessAddressCountry(const BusinessAddressCountry: WideString): HResult; stdcall;
    function Get_BusinessAddressPostalCode(out BusinessAddressPostalCode: WideString): HResult; stdcall;
    function Set_BusinessAddressPostalCode(const BusinessAddressPostalCode: WideString): HResult; stdcall;
    function Get_BusinessAddressPostOfficeBox(out BusinessAddressPostOfficeBox: WideString): HResult; stdcall;
    function Set_BusinessAddressPostOfficeBox(const BusinessAddressPostOfficeBox: WideString): HResult; stdcall;
    function Get_BusinessAddressState(out BusinessAddressState: WideString): HResult; stdcall;
    function Set_BusinessAddressState(const BusinessAddressState: WideString): HResult; stdcall;
    function Get_BusinessAddressStreet(out BusinessAddressStreet: WideString): HResult; stdcall;
    function Set_BusinessAddressStreet(const BusinessAddressStreet: WideString): HResult; stdcall;
    function Get_BusinessFaxNumber(out BusinessFaxNumber: WideString): HResult; stdcall;
    function Set_BusinessFaxNumber(const BusinessFaxNumber: WideString): HResult; stdcall;
    function Get_BusinessHomePage(out BusinessHomePage: WideString): HResult; stdcall;
    function Set_BusinessHomePage(const BusinessHomePage: WideString): HResult; stdcall;
    function Get_BusinessTelephoneNumber(out BusinessTelephoneNumber: WideString): HResult; stdcall;
    function Set_BusinessTelephoneNumber(const BusinessTelephoneNumber: WideString): HResult; stdcall;
    function Get_CallbackTelephoneNumber(out CallbackTelephoneNumber: WideString): HResult; stdcall;
    function Set_CallbackTelephoneNumber(const CallbackTelephoneNumber: WideString): HResult; stdcall;
    function Get_CarTelephoneNumber(out CarTelephoneNumber: WideString): HResult; stdcall;
    function Set_CarTelephoneNumber(const CarTelephoneNumber: WideString): HResult; stdcall;
    function Get_Children(out Children: WideString): HResult; stdcall;
    function Set_Children(const Children: WideString): HResult; stdcall;
    function Get_CompanyAndFullName(out CompanyAndFullName: WideString): HResult; stdcall;
    function Get_CompanyMainTelephoneNumber(out CompanyMainTelephoneNumber: WideString): HResult; stdcall;
    function Set_CompanyMainTelephoneNumber(const CompanyMainTelephoneNumber: WideString): HResult; stdcall;
    function Get_CompanyName(out CompanyName: WideString): HResult; stdcall;
    function Set_CompanyName(const CompanyName: WideString): HResult; stdcall;
    function Get_ComputerNetworkName(out ComputerNetworkName: WideString): HResult; stdcall;
    function Set_ComputerNetworkName(const ComputerNetworkName: WideString): HResult; stdcall;
    function Get_CustomerID(out CustomerID: WideString): HResult; stdcall;
    function Set_CustomerID(const CustomerID: WideString): HResult; stdcall;
    function Get_Department(out Department: WideString): HResult; stdcall;
    function Set_Department(const Department: WideString): HResult; stdcall;
    function Get_Email1Address(out Email1Address: WideString): HResult; stdcall;
    function Set_Email1Address(const Email1Address: WideString): HResult; stdcall;
    function Get_Email1AddressType(out Email1AddressType: WideString): HResult; stdcall;
    function Set_Email1AddressType(const Email1AddressType: WideString): HResult; stdcall;
    function Get_Email1DisplayName(out Email1DisplayName: WideString): HResult; stdcall;
    function Get_Email1EntryID(out Email1EntryID: WideString): HResult; stdcall;
    function Get_Email2Address(out Email2Address: WideString): HResult; stdcall;
    function Set_Email2Address(const Email2Address: WideString): HResult; stdcall;
    function Get_Email2AddressType(out Email2AddressType: WideString): HResult; stdcall;
    function Set_Email2AddressType(const Email2AddressType: WideString): HResult; stdcall;
    function Get_Email2DisplayName(out Email2DisplayName: WideString): HResult; stdcall;
    function Get_Email2EntryID(out Email2EntryID: WideString): HResult; stdcall;
    function Get_Email3Address(out Email3Address: WideString): HResult; stdcall;
    function Set_Email3Address(const Email3Address: WideString): HResult; stdcall;
    function Get_Email3AddressType(out Email3AddressType: WideString): HResult; stdcall;
    function Set_Email3AddressType(const Email3AddressType: WideString): HResult; stdcall;
    function Get_Email3DisplayName(out Email3DisplayName: WideString): HResult; stdcall;
    function Get_Email3EntryID(out Email3EntryID: WideString): HResult; stdcall;
    function Get_FileAs(out FileAs: WideString): HResult; stdcall;
    function Set_FileAs(const FileAs: WideString): HResult; stdcall;
    function Get_FirstName(out FirstName: WideString): HResult; stdcall;
    function Set_FirstName(const FirstName: WideString): HResult; stdcall;
    function Get_FTPSite(out FTPSite: WideString): HResult; stdcall;
    function Set_FTPSite(const FTPSite: WideString): HResult; stdcall;
    function Get_FullName(out FullName: WideString): HResult; stdcall;
    function Set_FullName(const FullName: WideString): HResult; stdcall;
    function Get_FullNameAndCompany(out FullNameAndCompany: WideString): HResult; stdcall;
    function Get_Gender(out Gender: OlGender): HResult; stdcall;
    function Set_Gender(Gender: OlGender): HResult; stdcall;
    function Get_GovernmentIDNumber(out GovernmentIDNumber: WideString): HResult; stdcall;
    function Set_GovernmentIDNumber(const GovernmentIDNumber: WideString): HResult; stdcall;
    function Get_Hobby(out Hobby: WideString): HResult; stdcall;
    function Set_Hobby(const Hobby: WideString): HResult; stdcall;
    function Get_Home2TelephoneNumber(out Home2TelephoneNumber: WideString): HResult; stdcall;
    function Set_Home2TelephoneNumber(const Home2TelephoneNumber: WideString): HResult; stdcall;
    function Get_HomeAddress(out HomeAddress: WideString): HResult; stdcall;
    function Set_HomeAddress(const HomeAddress: WideString): HResult; stdcall;
    function Get_HomeAddressCity(out HomeAddressCity: WideString): HResult; stdcall;
    function Set_HomeAddressCity(const HomeAddressCity: WideString): HResult; stdcall;
    function Get_HomeAddressCountry(out HomeAddressCountry: WideString): HResult; stdcall;
    function Set_HomeAddressCountry(const HomeAddressCountry: WideString): HResult; stdcall;
    function Get_HomeAddressPostalCode(out HomeAddressPostalCode: WideString): HResult; stdcall;
    function Set_HomeAddressPostalCode(const HomeAddressPostalCode: WideString): HResult; stdcall;
    function Get_HomeAddressPostOfficeBox(out HomeAddressPostOfficeBox: WideString): HResult; stdcall;
    function Set_HomeAddressPostOfficeBox(const HomeAddressPostOfficeBox: WideString): HResult; stdcall;
    function Get_HomeAddressState(out HomeAddressState: WideString): HResult; stdcall;
    function Set_HomeAddressState(const HomeAddressState: WideString): HResult; stdcall;
    function Get_HomeAddressStreet(out HomeAddressStreet: WideString): HResult; stdcall;
    function Set_HomeAddressStreet(const HomeAddressStreet: WideString): HResult; stdcall;
    function Get_HomeFaxNumber(out HomeFaxNumber: WideString): HResult; stdcall;
    function Set_HomeFaxNumber(const HomeFaxNumber: WideString): HResult; stdcall;
    function Get_HomeTelephoneNumber(out HomeTelephoneNumber: WideString): HResult; stdcall;
    function Set_HomeTelephoneNumber(const HomeTelephoneNumber: WideString): HResult; stdcall;
    function Get_Initials(out Initials: WideString): HResult; stdcall;
    function Set_Initials(const Initials: WideString): HResult; stdcall;
    function Get_ISDNNumber(out ISDNNumber: WideString): HResult; stdcall;
    function Set_ISDNNumber(const ISDNNumber: WideString): HResult; stdcall;
    function Get_JobTitle(out JobTitle: WideString): HResult; stdcall;
    function Set_JobTitle(const JobTitle: WideString): HResult; stdcall;
    function Get_Journal(out Journal: WordBool): HResult; stdcall;
    function Set_Journal(Journal: WordBool): HResult; stdcall;
    function Get_Language(out Language: WideString): HResult; stdcall;
    function Set_Language(const Language: WideString): HResult; stdcall;
    function Get_LastName(out LastName: WideString): HResult; stdcall;
    function Set_LastName(const LastName: WideString): HResult; stdcall;
    function Get_LastNameAndFirstName(out LastNameAndFirstName: WideString): HResult; stdcall;
    function Get_MailingAddress(out MailingAddress: WideString): HResult; stdcall;
    function Set_MailingAddress(const MailingAddress: WideString): HResult; stdcall;
    function Get_MailingAddressCity(out MailingAddressCity: WideString): HResult; stdcall;
    function Set_MailingAddressCity(const MailingAddressCity: WideString): HResult; stdcall;
    function Get_MailingAddressCountry(out MailingAddressCountry: WideString): HResult; stdcall;
    function Set_MailingAddressCountry(const MailingAddressCountry: WideString): HResult; stdcall;
    function Get_MailingAddressPostalCode(out MailingAddressPostalCode: WideString): HResult; stdcall;
    function Set_MailingAddressPostalCode(const MailingAddressPostalCode: WideString): HResult; stdcall;
    function Get_MailingAddressPostOfficeBox(out MailingAddressPostOfficeBox: WideString): HResult; stdcall;
    function Set_MailingAddressPostOfficeBox(const MailingAddressPostOfficeBox: WideString): HResult; stdcall;
    function Get_MailingAddressState(out MailingAddressState: WideString): HResult; stdcall;
    function Set_MailingAddressState(const MailingAddressState: WideString): HResult; stdcall;
    function Get_MailingAddressStreet(out MailingAddressStreet: WideString): HResult; stdcall;
    function Set_MailingAddressStreet(const MailingAddressStreet: WideString): HResult; stdcall;
    function Get_ManagerName(out ManagerName: WideString): HResult; stdcall;
    function Set_ManagerName(const ManagerName: WideString): HResult; stdcall;
    function Get_MiddleName(out MiddleName: WideString): HResult; stdcall;
    function Set_MiddleName(const MiddleName: WideString): HResult; stdcall;
    function Get_MobileTelephoneNumber(out MobileTelephoneNumber: WideString): HResult; stdcall;
    function Set_MobileTelephoneNumber(const MobileTelephoneNumber: WideString): HResult; stdcall;
    function Get_NickName(out NickName: WideString): HResult; stdcall;
    function Set_NickName(const NickName: WideString): HResult; stdcall;
    function Get_OfficeLocation(out OfficeLocation: WideString): HResult; stdcall;
    function Set_OfficeLocation(const OfficeLocation: WideString): HResult; stdcall;
    function Get_OrganizationalIDNumber(out OrganizationalIDNumber: WideString): HResult; stdcall;
    function Set_OrganizationalIDNumber(const OrganizationalIDNumber: WideString): HResult; stdcall;
    function Get_OtherAddress(out OtherAddress: WideString): HResult; stdcall;
    function Set_OtherAddress(const OtherAddress: WideString): HResult; stdcall;
    function Get_OtherAddressCity(out OtherAddressCity: WideString): HResult; stdcall;
    function Set_OtherAddressCity(const OtherAddressCity: WideString): HResult; stdcall;
    function Get_OtherAddressCountry(out OtherAddressCountry: WideString): HResult; stdcall;
    function Set_OtherAddressCountry(const OtherAddressCountry: WideString): HResult; stdcall;
    function Get_OtherAddressPostalCode(out OtherAddressPostalCode: WideString): HResult; stdcall;
    function Set_OtherAddressPostalCode(const OtherAddressPostalCode: WideString): HResult; stdcall;
    function Get_OtherAddressPostOfficeBox(out OtherAddressPostOfficeBox: WideString): HResult; stdcall;
    function Set_OtherAddressPostOfficeBox(const OtherAddressPostOfficeBox: WideString): HResult; stdcall;
    function Get_OtherAddressState(out OtherAddressState: WideString): HResult; stdcall;
    function Set_OtherAddressState(const OtherAddressState: WideString): HResult; stdcall;
    function Get_OtherAddressStreet(out OtherAddressStreet: WideString): HResult; stdcall;
    function Set_OtherAddressStreet(const OtherAddressStreet: WideString): HResult; stdcall;
    function Get_OtherFaxNumber(out OtherFaxNumber: WideString): HResult; stdcall;
    function Set_OtherFaxNumber(const OtherFaxNumber: WideString): HResult; stdcall;
    function Get_OtherTelephoneNumber(out OtherTelephoneNumber: WideString): HResult; stdcall;
    function Set_OtherTelephoneNumber(const OtherTelephoneNumber: WideString): HResult; stdcall;
    function Get_PagerNumber(out PagerNumber: WideString): HResult; stdcall;
    function Set_PagerNumber(const PagerNumber: WideString): HResult; stdcall;
    function Get_PersonalHomePage(out PersonalHomePage: WideString): HResult; stdcall;
    function Set_PersonalHomePage(const PersonalHomePage: WideString): HResult; stdcall;
    function Get_PrimaryTelephoneNumber(out PrimaryTelephoneNumber: WideString): HResult; stdcall;
    function Set_PrimaryTelephoneNumber(const PrimaryTelephoneNumber: WideString): HResult; stdcall;
    function Get_Profession(out Profession: WideString): HResult; stdcall;
    function Set_Profession(const Profession: WideString): HResult; stdcall;
    function Get_RadioTelephoneNumber(out RadioTelephoneNumber: WideString): HResult; stdcall;
    function Set_RadioTelephoneNumber(const RadioTelephoneNumber: WideString): HResult; stdcall;
    function Get_ReferredBy(out ReferredBy: WideString): HResult; stdcall;
    function Set_ReferredBy(const ReferredBy: WideString): HResult; stdcall;
    function Get_SelectedMailingAddress(out SelectedMailingAddress: OlMailingAddress): HResult; stdcall;
    function Set_SelectedMailingAddress(SelectedMailingAddress: OlMailingAddress): HResult; stdcall;
    function Get_Spouse(out Spouse: WideString): HResult; stdcall;
    function Set_Spouse(const Spouse: WideString): HResult; stdcall;
    function Get_Suffix(out Suffix: WideString): HResult; stdcall;
    function Set_Suffix(const Suffix: WideString): HResult; stdcall;
    function Get_TelexNumber(out TelexNumber: WideString): HResult; stdcall;
    function Set_TelexNumber(const TelexNumber: WideString): HResult; stdcall;
    function Get_Title(out Title: WideString): HResult; stdcall;
    function Set_Title(const Title: WideString): HResult; stdcall;
    function Get_TTYTDDTelephoneNumber(out TTYTDDTelephoneNumber: WideString): HResult; stdcall;
    function Set_TTYTDDTelephoneNumber(const TTYTDDTelephoneNumber: WideString): HResult; stdcall;
    function Get_User1(out User1: WideString): HResult; stdcall;
    function Set_User1(const User1: WideString): HResult; stdcall;
    function Get_User2(out User2: WideString): HResult; stdcall;
    function Set_User2(const User2: WideString): HResult; stdcall;
    function Get_User3(out User3: WideString): HResult; stdcall;
    function Set_User3(const User3: WideString): HResult; stdcall;
    function Get_User4(out User4: WideString): HResult; stdcall;
    function Set_User4(const User4: WideString): HResult; stdcall;
    function Get_UserCertificate(out UserCertificate: WideString): HResult; stdcall;
    function Set_UserCertificate(const UserCertificate: WideString): HResult; stdcall;
    function Get_WebPage(out WebPage: WideString): HResult; stdcall;
    function Set_WebPage(const WebPage: WideString): HResult; stdcall;
    function Get_YomiCompanyName(out YomiCompanyName: WideString): HResult; stdcall;
    function Set_YomiCompanyName(const YomiCompanyName: WideString): HResult; stdcall;
    function Get_YomiFirstName(out YomiFirstName: WideString): HResult; stdcall;
    function Set_YomiFirstName(const YomiFirstName: WideString): HResult; stdcall;
    function Get_YomiLastName(out YomiLastName: WideString): HResult; stdcall;
    function Set_YomiLastName(const YomiLastName: WideString): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DContactItem
// Flags:     (4096) Dispatchable
// GUID:      {00063021-0000-0000-C000-000000000046}
// *********************************************************************//
  _DContactItem = dispinterface
    ['{00063021-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    property Account: WideString dispid 14848;
    property Anniversary: TDateTime dispid 14913;
    property AssistantName: WideString dispid 14896;
    property AssistantTelephoneNumber: WideString dispid 14894;
    property Birthday: TDateTime dispid 14914;
    property Business2TelephoneNumber: WideString dispid 14875;
    property BusinessAddress: WideString dispid 32795;
    property BusinessAddressCity: WideString dispid 32838;
    property BusinessAddressCountry: WideString dispid 32841;
    property BusinessAddressPostalCode: WideString dispid 32840;
    property BusinessAddressPostOfficeBox: WideString dispid 32842;
    property BusinessAddressState: WideString dispid 32839;
    property BusinessAddressStreet: WideString dispid 32837;
    property BusinessFaxNumber: WideString dispid 14884;
    property BusinessHomePage: WideString dispid 14929;
    property BusinessTelephoneNumber: WideString dispid 14856;
    property CallbackTelephoneNumber: WideString dispid 14850;
    property CarTelephoneNumber: WideString dispid 14878;
    property Children: WideString dispid 32780;
    property CompanyAndFullName: WideString readonly dispid 32792;
    property CompanyMainTelephoneNumber: WideString dispid 14935;
    property CompanyName: WideString dispid 14870;
    property ComputerNetworkName: WideString dispid 14921;
    property CustomerID: WideString dispid 14922;
    property Department: WideString dispid 14872;
    property Email1Address: WideString dispid 32899;
    property Email1AddressType: WideString dispid 32898;
    property Email1DisplayName: WideString readonly dispid 32896;
    property Email1EntryID: WideString readonly dispid 32901;
    property Email2Address: WideString dispid 32915;
    property Email2AddressType: WideString dispid 32914;
    property Email2DisplayName: WideString readonly dispid 32912;
    property Email2EntryID: WideString readonly dispid 32917;
    property Email3Address: WideString dispid 32931;
    property Email3AddressType: WideString dispid 32930;
    property Email3DisplayName: WideString readonly dispid 32928;
    property Email3EntryID: WideString readonly dispid 32933;
    property FileAs: WideString dispid 32773;
    property FirstName: WideString dispid 14854;
    property FTPSite: WideString dispid 14924;
    property FullName: WideString dispid 12289;
    property FullNameAndCompany: WideString readonly dispid 32793;
    property Gender: OlGender dispid 14925;
    property GovernmentIDNumber: WideString dispid 14855;
    property Hobby: WideString dispid 14915;
    property Home2TelephoneNumber: WideString dispid 14895;
    property HomeAddress: WideString dispid 32794;
    property HomeAddressCity: WideString dispid 14937;
    property HomeAddressCountry: WideString dispid 14938;
    property HomeAddressPostalCode: WideString dispid 14939;
    property HomeAddressPostOfficeBox: WideString dispid 14942;
    property HomeAddressState: WideString dispid 14940;
    property HomeAddressStreet: WideString dispid 14941;
    property HomeFaxNumber: WideString dispid 14885;
    property HomeTelephoneNumber: WideString dispid 14857;
    property Initials: WideString dispid 14858;
    property ISDNNumber: WideString dispid 14893;
    property JobTitle: WideString dispid 14871;
    property Journal: WordBool dispid 32805;
    property Language: WideString dispid 14860;
    property LastName: WideString dispid 14865;
    property LastNameAndFirstName: WideString readonly dispid 32791;
    property MailingAddress: WideString dispid 14869;
    property MailingAddressCity: WideString dispid 14887;
    property MailingAddressCountry: WideString dispid 14886;
    property MailingAddressPostalCode: WideString dispid 14890;
    property MailingAddressPostOfficeBox: WideString dispid 14891;
    property MailingAddressState: WideString dispid 14888;
    property MailingAddressStreet: WideString dispid 14889;
    property ManagerName: WideString dispid 14926;
    property MiddleName: WideString dispid 14916;
    property MobileTelephoneNumber: WideString dispid 14876;
    property NickName: WideString dispid 14927;
    property OfficeLocation: WideString dispid 14873;
    property OrganizationalIDNumber: WideString dispid 14864;
    property OtherAddress: WideString dispid 32796;
    property OtherAddressCity: WideString dispid 14943;
    property OtherAddressCountry: WideString dispid 14944;
    property OtherAddressPostalCode: WideString dispid 14945;
    property OtherAddressPostOfficeBox: WideString dispid 14948;
    property OtherAddressState: WideString dispid 14946;
    property OtherAddressStreet: WideString dispid 14947;
    property OtherFaxNumber: WideString dispid 14883;
    property OtherTelephoneNumber: WideString dispid 14879;
    property PagerNumber: WideString dispid 14881;
    property PersonalHomePage: WideString dispid 14928;
    property PrimaryTelephoneNumber: WideString dispid 14874;
    property Profession: WideString dispid 14918;
    property RadioTelephoneNumber: WideString dispid 14877;
    property ReferredBy: WideString dispid 14919;
    property SelectedMailingAddress: OlMailingAddress dispid 32802;
    property Spouse: WideString dispid 14920;
    property Suffix: WideString dispid 14853;
    property TelexNumber: WideString dispid 14892;
    property Title: WideString dispid 14917;
    property TTYTDDTelephoneNumber: WideString dispid 14923;
    property User1: WideString dispid 32847;
    property User2: WideString dispid 32848;
    property User3: WideString dispid 32849;
    property User4: WideString dispid 32850;
    property UserCertificate: WideString dispid 32790;
    property WebPage: WideString dispid 32811;
    property YomiCompanyName: WideString dispid 32814;
    property YomiFirstName: WideString dispid 32812;
    property YomiLastName: WideString dispid 32813;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
  end;

// *********************************************************************//
// Interface: _IExplorer
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063103-0000-0000-C000-000000000046}
// *********************************************************************//
  _IExplorer = interface(IDispatch)
    ['{00063103-0000-0000-C000-000000000046}']
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_CommandBars(out CommandBars: CommandBars): HResult; stdcall;
    function Get_CurrentFolder(out CurrentFolder: MAPIFolder): HResult; stdcall;
    function _Set_CurrentFolder(const CurrentFolder: MAPIFolder): HResult; stdcall;
    function Get_Parent(out Parent: OutlookApplication): HResult; stdcall;
    function Close: HResult; stdcall;
    function Display: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  Explorer
// Flags:     (4096) Dispatchable
// GUID:      {00063003-0000-0000-C000-000000000046}
// *********************************************************************//
  Explorer = dispinterface
    ['{00063003-0000-0000-C000-000000000046}']
    property Application: OutlookApplication readonly dispid 61440;
    property CommandBars: CommandBars readonly dispid 8448;
    property CurrentFolder: MAPIFolder dispid 8449;
    property Parent: OutlookApplication readonly dispid 61441;
    procedure Close; dispid 8451;
    procedure Display; dispid 8452;
  end;

// *********************************************************************//
// Interface: _IFolders
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063140-0000-0000-C000-000000000046}
// *********************************************************************//
  _IFolders = interface(IDispatch)
    ['{00063140-0000-0000-C000-000000000046}']
    function Get_Count(out Count: Integer): HResult; stdcall;
    function Add(const Name: WideString; Type_: OleVariant; out Folder: MAPIFolder): HResult; stdcall;
    function Item(Index: OleVariant; out Folder: MAPIFolder): HResult; stdcall;
    function Remove(Index: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  Folders
// Flags:     (4096) Dispatchable
// GUID:      {00063040-0000-0000-C000-000000000046}
// *********************************************************************//
  Folders = dispinterface
    ['{00063040-0000-0000-C000-000000000046}']
    property Count: Integer readonly dispid 80;
    function Add(const Name: WideString; Type_: OleVariant): MAPIFolder; dispid 100;
    function Item(Index: OleVariant): MAPIFolder; dispid 81;
    procedure Remove(Index: Integer); dispid 84;
  end;

// *********************************************************************//
// Interface: _IFormDescription
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063146-0000-0000-C000-000000000046}
// *********************************************************************//
  _IFormDescription = interface(IDispatch)
    ['{00063146-0000-0000-C000-000000000046}']
    function Get_Category(out Category: WideString): HResult; stdcall;
    function Set_Category(const Category: WideString): HResult; stdcall;
    function Get_CategorySub(out CategorySub: WideString): HResult; stdcall;
    function Set_CategorySub(const CategorySub: WideString): HResult; stdcall;
    function Get_Comment(out Comment: WideString): HResult; stdcall;
    function Set_Comment(const Comment: WideString): HResult; stdcall;
    function Get_ContactName(out ContactName: WideString): HResult; stdcall;
    function Set_ContactName(const ContactName: WideString): HResult; stdcall;
    function Get_DisplayName(out DisplayName: WideString): HResult; stdcall;
    function Set_DisplayName(const DisplayName: WideString): HResult; stdcall;
    function Get_Hidden(out Hidden: WordBool): HResult; stdcall;
    function Set_Hidden(Hidden: WordBool): HResult; stdcall;
    function Get_Icon(out Icon: WideString): HResult; stdcall;
    function Set_Icon(const Icon: WideString): HResult; stdcall;
    function Get_Locked(out Locked: WordBool): HResult; stdcall;
    function Set_Locked(Locked: WordBool): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Get_MiniIcon(out MiniIcon: WideString): HResult; stdcall;
    function Set_MiniIcon(const MiniIcon: WideString): HResult; stdcall;
    function Get_Name(out Name: WideString): HResult; stdcall;
    function Set_Name(const Name: WideString): HResult; stdcall;
    function Get_Number(out Number: WideString): HResult; stdcall;
    function Set_Number(const Number: WideString): HResult; stdcall;
    function Get_OneOff(out OneOff: WordBool): HResult; stdcall;
    function Set_OneOff(OneOff: WordBool): HResult; stdcall;
    function Get_Password(out Password: WideString): HResult; stdcall;
    function Set_Password(const Password: WideString): HResult; stdcall;
    function Get_Template(out Template: WideString): HResult; stdcall;
    function Set_Template(const Template: WideString): HResult; stdcall;
    function Get_UseWordMail(out UseWordMail: WordBool): HResult; stdcall;
    function Set_UseWordMail(UseWordMail: WordBool): HResult; stdcall;
    function Get_Version(out Version: WideString): HResult; stdcall;
    function Set_Version(const Version: WideString): HResult; stdcall;
    function PublishForm(Registry: OlFormRegistry; Folder: OleVariant): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  FormDescription
// Flags:     (4096) Dispatchable
// GUID:      {00063046-0000-0000-C000-000000000046}
// *********************************************************************//
  FormDescription = dispinterface
    ['{00063046-0000-0000-C000-000000000046}']
    property Category: WideString dispid 13060;
    property CategorySub: WideString dispid 13061;
    property Comment: WideString dispid 12292;
    property ContactName: WideString dispid 13059;
    property DisplayName: WideString dispid 12289;
    property Hidden: WordBool dispid 13063;
    property Icon: WideString dispid 4093;
    property Locked: WordBool dispid 102;
    property MessageClass: WideString readonly dispid 26;
    property MiniIcon: WideString dispid 4092;
    property Name: WideString dispid 61469;
    property Number: WideString dispid 104;
    property OneOff: WordBool dispid 101;
    property Password: WideString dispid 103;
    property Template: WideString dispid 106;
    property UseWordMail: WordBool dispid 105;
    property Version: WideString dispid 13057;
    procedure PublishForm(Registry: OlFormRegistry; Folder: OleVariant); dispid 107;
  end;

// *********************************************************************//
// Interface: _IInspector
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063105-0000-0000-C000-000000000046}
// *********************************************************************//
  _IInspector = interface(IDispatch)
    ['{00063105-0000-0000-C000-000000000046}']
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_CommandBars(out CommandBars: CommandBars): HResult; stdcall;
    function Get_CurrentItem(out CurrentItem: IDispatch): HResult; stdcall;
    function Get_ModifiedFormPages(out ModifiedFormPages: Pages): HResult; stdcall;
    function Get_Parent(out Parent: OutlookApplication): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function HideFormPage(const PageName: WideString): HResult; stdcall;
    function IsWordMail(out IsWordMail: WordBool): HResult; stdcall;
    function SetCurrentFormPage(const PageName: WideString): HResult; stdcall;
    function ShowFormPage(const PageName: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  Inspector
// Flags:     (4096) Dispatchable
// GUID:      {00063005-0000-0000-C000-000000000046}
// *********************************************************************//
  Inspector = dispinterface
    ['{00063005-0000-0000-C000-000000000046}']
    property Application: OutlookApplication readonly dispid 61440;
    property CommandBars: CommandBars readonly dispid 8448;
    property CurrentItem: IDispatch readonly dispid 8450;
    property ModifiedFormPages: Pages readonly dispid 8454;
    property Parent: OutlookApplication readonly dispid 61441;
    procedure Close(SaveMode: OlInspectorClose); dispid 8451;
    procedure Display(Modal: OleVariant); dispid 8452;
    procedure HideFormPage(const PageName: WideString); dispid 8456;
    function IsWordMail: WordBool; dispid 8453;
    procedure SetCurrentFormPage(const PageName: WideString); dispid 8460;
    procedure ShowFormPage(const PageName: WideString); dispid 8457;
  end;

// *********************************************************************//
// Interface: _IItems
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063141-0000-0000-C000-000000000046}
// *********************************************************************//
  _IItems = interface(IDispatch)
    ['{00063141-0000-0000-C000-000000000046}']
    function Get_Count(out Count: Integer): HResult; stdcall;
    function Get_IncludeRecurrences(out IncludeRecurrences: WordBool): HResult; stdcall;
    function Set_IncludeRecurrences(IncludeRecurrences: WordBool): HResult; stdcall;
    function Add(Type_: OleVariant; out Item: IDispatch): HResult; stdcall;
    function Find(const Filter: WideString; out Item: IDispatch): HResult; stdcall;
    function FindNext(out Item: IDispatch): HResult; stdcall;
    function Item(Index: OleVariant; out Item: IDispatch): HResult; stdcall;
    function Remove(Index: Integer): HResult; stdcall;
    function Restrict(const Filter: WideString; out Items: Items): HResult; stdcall;
    function Sort(const Property_: WideString; Descending: OleVariant): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  Items
// Flags:     (4096) Dispatchable
// GUID:      {00063041-0000-0000-C000-000000000046}
// *********************************************************************//
  Items = dispinterface
    ['{00063041-0000-0000-C000-000000000046}']
    property Count: Integer readonly dispid 80;
    property IncludeRecurrences: WordBool dispid 206;
    function Add(Type_: OleVariant): IDispatch; dispid 200;
    function Find(const Filter: WideString): IDispatch; dispid 203;
    function FindNext: IDispatch; dispid 204;
    function Item(Index: OleVariant): IDispatch; dispid 81;
    procedure Remove(Index: Integer); dispid 84;
    function Restrict(const Filter: WideString): Items; dispid 202;
    procedure Sort(const Property_: WideString; Descending: OleVariant); dispid 205;
  end;

// *********************************************************************//
// Interface: _IJournalItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063122-0000-0000-C000-000000000046}
// *********************************************************************//
  _IJournalItem = interface(IDispatch)
    ['{00063122-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Get_ContactNames(out ContactNames: WideString): HResult; stdcall;
    function Set_ContactNames(const ContactNames: WideString): HResult; stdcall;
    function Get_DocPosted(out DocPosted: WordBool): HResult; stdcall;
    function Set_DocPosted(DocPosted: WordBool): HResult; stdcall;
    function Get_DocPrinted(out DocPrinted: WordBool): HResult; stdcall;
    function Set_DocPrinted(DocPrinted: WordBool): HResult; stdcall;
    function Get_DocRouted(out DocRouted: WordBool): HResult; stdcall;
    function Set_DocRouted(DocRouted: WordBool): HResult; stdcall;
    function Get_DocSaved(out DocSaved: WordBool): HResult; stdcall;
    function Set_DocSaved(DocSaved: WordBool): HResult; stdcall;
    function Get_Duration(out Duration: Integer): HResult; stdcall;
    function Set_Duration(Duration: Integer): HResult; stdcall;
    function Get_End_(out End_: TDateTime): HResult; stdcall;
    function Set_End_(End_: TDateTime): HResult; stdcall;
    function Get_Recipients(out Recipients: Recipients): HResult; stdcall;
    function Get_Start(out Start: TDateTime): HResult; stdcall;
    function Set_Start(Start: TDateTime): HResult; stdcall;
    function Get_type_(out Type_: WideString): HResult; stdcall;
    function Set_type_(const Type_: WideString): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function Forward(out Item: MailItem): HResult; stdcall;
    function Reply(out Item: MailItem): HResult; stdcall;
    function ReplyAll(out Item: MailItem): HResult; stdcall;
    function StartTimer: HResult; stdcall;
    function StopTimer: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DJournalItem
// Flags:     (4096) Dispatchable
// GUID:      {00063022-0000-0000-C000-000000000046}
// *********************************************************************//
  _DJournalItem = dispinterface
    ['{00063022-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    property ContactNames: WideString dispid 3588;
    property DocPosted: WordBool dispid 34577;
    property DocPrinted: WordBool dispid 34574;
    property DocRouted: WordBool dispid 34576;
    property DocSaved: WordBool dispid 34575;
    property Duration: Integer dispid 34567;
    property End_: TDateTime dispid 34568;
    property Recipients: Recipients readonly dispid 63508;
    property Start: TDateTime dispid 34566;
    property type_: WideString dispid 34560;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    function Forward: MailItem; dispid 63507;
    function Reply: MailItem; dispid 63504;
    function ReplyAll: MailItem; dispid 63505;
    procedure StartTimer; dispid 63269;
    procedure StopTimer; dispid 63270;
  end;

// *********************************************************************//
// Interface: _IMailItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063134-0000-0000-C000-000000000046}
// *********************************************************************//
  _IMailItem = interface(IDispatch)
    ['{00063134-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Get_AlternateRecipientAllowed(out AlternateRecipientAllowed: WordBool): HResult; stdcall;
    function Set_AlternateRecipientAllowed(AlternateRecipientAllowed: WordBool): HResult; stdcall;
    function Get_AutoForwarded(out AutoForwarded: WordBool): HResult; stdcall;
    function Set_AutoForwarded(AutoForwarded: WordBool): HResult; stdcall;
    function Get_BCC(out BCC: WideString): HResult; stdcall;
    function Set_BCC(const BCC: WideString): HResult; stdcall;
    function Get_CC(out CC: WideString): HResult; stdcall;
    function Set_CC(const CC: WideString): HResult; stdcall;
    function Get_ConversationIndex(out ConversationIndex: WideString): HResult; stdcall;
    function Get_ConversationTopic(out ConversationTopic: WideString): HResult; stdcall;
    function Get_DeferredDeliveryTime(out DeferredDeliveryTime: TDateTime): HResult; stdcall;
    function Set_DeferredDeliveryTime(DeferredDeliveryTime: TDateTime): HResult; stdcall;
    function Get_DeleteAfterSubmit(out DeleteAfterSubmit: WordBool): HResult; stdcall;
    function Set_DeleteAfterSubmit(DeleteAfterSubmit: WordBool): HResult; stdcall;
    function Get_ExpiryTime(out ExpiryTime: TDateTime): HResult; stdcall;
    function Set_ExpiryTime(ExpiryTime: TDateTime): HResult; stdcall;
    function Get_FlagDueBy(out FlagDueBy: TDateTime): HResult; stdcall;
    function Set_FlagDueBy(FlagDueBy: TDateTime): HResult; stdcall;
    function Get_FlagRequest(out FlagRequest: WideString): HResult; stdcall;
    function Set_FlagRequest(const FlagRequest: WideString): HResult; stdcall;
    function Get_FlagStatus(out FlagStatus: OlFlagStatus): HResult; stdcall;
    function Set_FlagStatus(FlagStatus: OlFlagStatus): HResult; stdcall;
    function Get_OriginatorDeliveryReportRequested(out OriginatorDeliveryReportRequested: WordBool): HResult; stdcall;
    function Set_OriginatorDeliveryReportRequested(OriginatorDeliveryReportRequested: WordBool): HResult; stdcall;
    function Get_ReadReceiptRequested(out ReadReceiptRequested: WordBool): HResult; stdcall;
    function Set_ReadReceiptRequested(ReadReceiptRequested: WordBool): HResult; stdcall;
    function Get_ReceivedByEntryID(out ReceivedByEntryID: WideString): HResult; stdcall;
    function Get_ReceivedByName(out ReceivedByName: WideString): HResult; stdcall;
    function Get_ReceivedOnBehalfOfEntryID(out ReceivedOnBehalfOfEntryID: WideString): HResult; stdcall;
    function Get_ReceivedOnBehalfOfName(out ReceivedOnBehalfOfName: WideString): HResult; stdcall;
    function Get_ReceivedTime(out ReceivedTime: TDateTime): HResult; stdcall;
    function Get_RecipientReassignmentProhibited(out RecipientReassignmentProhibited: WordBool): HResult; stdcall;
    function Set_RecipientReassignmentProhibited(RecipientReassignmentProhibited: WordBool): HResult; stdcall;
    function Get_Recipients(out Recipients: Recipients): HResult; stdcall;
    function Get_ReminderOverrideDefault(out ReminderOverrideDefault: WordBool): HResult; stdcall;
    function Set_ReminderOverrideDefault(ReminderOverrideDefault: WordBool): HResult; stdcall;
    function Get_ReminderPlaySound(out ReminderPlaySound: WordBool): HResult; stdcall;
    function Set_ReminderPlaySound(ReminderPlaySound: WordBool): HResult; stdcall;
    function Get_ReminderSet(out ReminderSet: WordBool): HResult; stdcall;
    function Set_ReminderSet(ReminderSet: WordBool): HResult; stdcall;
    function Get_ReminderSoundFile(out ReminderSoundFile: WideString): HResult; stdcall;
    function Set_ReminderSoundFile(const ReminderSoundFile: WideString): HResult; stdcall;
    function Get_ReminderTime(out ReminderTime: TDateTime): HResult; stdcall;
    function Set_ReminderTime(ReminderTime: TDateTime): HResult; stdcall;
    function Get_RemoteStatus(out RemoteStatus: OlRemoteStatus): HResult; stdcall;
    function Get_ReplyRecipientNames(out ReplyRecipientNames: WideString): HResult; stdcall;
    function Get_ReplyRecipients(out ReplyRecipients: Recipients): HResult; stdcall;
    function Get_SaveSentMessageFolder(out SaveSentMessageFolder: MAPIFolder): HResult; stdcall;
    function _Set_SaveSentMessageFolder(const SaveSentMessageFolder: MAPIFolder): HResult; stdcall;
    function Get_SenderName(out SenderName: WideString): HResult; stdcall;
    function Get_SentOn(out SentOn: TDateTime): HResult; stdcall;
    function Get_SentOnBehalfOfName(out SentOnBehalfOfName: WideString): HResult; stdcall;
    function Set_SentOnBehalfOfName(const SentOnBehalfOfName: WideString): HResult; stdcall;
    function Get_To_(out To_: WideString): HResult; stdcall;
    function Set_To_(const To_: WideString): HResult; stdcall;
    function Get_VotingOptions(out VotingOptions: WideString): HResult; stdcall;
    function Set_VotingOptions(const VotingOptions: WideString): HResult; stdcall;
    function Get_VotingResponse(out VotingResponse: WideString): HResult; stdcall;
    function Set_VotingResponse(const VotingResponse: WideString): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function ClearConversationIndex: HResult; stdcall;
    function Forward(out Item: MailItem): HResult; stdcall;
    function Reply(out Item: MailItem): HResult; stdcall;
    function ReplyAll(out Item: MailItem): HResult; stdcall;
    function Send: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DMailItem
// Flags:     (4096) Dispatchable
// GUID:      {00063034-0000-0000-C000-000000000046}
// *********************************************************************//
  _DMailItem = dispinterface
    ['{00063034-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    property AlternateRecipientAllowed: WordBool dispid 2;
    property AutoForwarded: WordBool dispid 5;
    property BCC: WideString dispid 3586;
    property CC: WideString dispid 3587;
    property ConversationIndex: WideString readonly dispid 113;
    property ConversationTopic: WideString readonly dispid 112;
    property DeferredDeliveryTime: TDateTime dispid 15;
    property DeleteAfterSubmit: WordBool dispid 3585;
    property ExpiryTime: TDateTime dispid 21;
    property FlagDueBy: TDateTime dispid 48;
    property FlagRequest: WideString dispid 34096;
    property FlagStatus: OlFlagStatus dispid 4240;
    property OriginatorDeliveryReportRequested: WordBool dispid 35;
    property ReadReceiptRequested: WordBool dispid 41;
    property ReceivedByEntryID: WideString readonly dispid 63;
    property ReceivedByName: WideString readonly dispid 64;
    property ReceivedOnBehalfOfEntryID: WideString readonly dispid 67;
    property ReceivedOnBehalfOfName: WideString readonly dispid 68;
    property ReceivedTime: TDateTime readonly dispid 3590;
    property RecipientReassignmentProhibited: WordBool dispid 43;
    property Recipients: Recipients readonly dispid 63508;
    property ReminderOverrideDefault: WordBool dispid 34076;
    property ReminderPlaySound: WordBool dispid 34078;
    property ReminderSet: WordBool dispid 34051;
    property ReminderSoundFile: WideString dispid 34079;
    property ReminderTime: TDateTime dispid 34050;
    property RemoteStatus: OlRemoteStatus readonly dispid 34065;
    property ReplyRecipientNames: WideString readonly dispid 80;
    property ReplyRecipients: Recipients readonly dispid 61459;
    property SaveSentMessageFolder: MAPIFolder dispid 62465;
    property SenderName: WideString readonly dispid 3098;
    property SentOn: TDateTime readonly dispid 57;
    property SentOnBehalfOfName: WideString dispid 66;
    property To_: WideString dispid 3588;
    property VotingOptions: WideString dispid 61467;
    property VotingResponse: WideString dispid 34084;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    procedure ClearConversationIndex; dispid 63522;
    function Forward: MailItem; dispid 63507;
    function Reply: MailItem; dispid 63504;
    function ReplyAll: MailItem; dispid 63505;
    procedure Send; dispid 61557;
  end;

// *********************************************************************//
// Interface: _IMAPIFolder
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063106-0000-0000-C000-000000000046}
// *********************************************************************//
  _IMAPIFolder = interface(IDispatch)
    ['{00063106-0000-0000-C000-000000000046}']
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_DefaultItemType(out DefaultItemType: OlItems): HResult; stdcall;
    function Get_DefaultMessageClass(out DefaultMessageClass: WideString): HResult; stdcall;
    function Get_Description(out Description: WideString): HResult; stdcall;
    function Set_Description(const Description: WideString): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_Folders(out Folders: Folders): HResult; stdcall;
    function Get_Items(out Items: Items): HResult; stdcall;
    function Get_Name(out Name: WideString): HResult; stdcall;
    function Set_Name(const Name: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_StoreID(out StoreID: WideString): HResult; stdcall;
    function Get_UnReadItemCount(out UnReadItemCount: Integer): HResult; stdcall;
    function CopyTo(const DestinationFolder: MAPIFolder; out Folder: MAPIFolder): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display: HResult; stdcall;
    function GetExplorer(DisplayMode: OleVariant; out Explorer: Explorer): HResult; stdcall;
    function MoveTo(const DestinationFolder: MAPIFolder): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  MAPIFolder
// Flags:     (4096) Dispatchable
// GUID:      {00063006-0000-0000-C000-000000000046}
// *********************************************************************//
  MAPIFolder = dispinterface
    ['{00063006-0000-0000-C000-000000000046}']
    property Application: OutlookApplication readonly dispid 61440;
    property DefaultItemType: OlItems readonly dispid 12550;
    property DefaultMessageClass: WideString readonly dispid 12551;
    property Description: WideString dispid 12292;
    property EntryID: WideString readonly dispid 61470;
    property Folders: Folders readonly dispid 8451;
    property Items: Items readonly dispid 12544;
    property Name: WideString dispid 12289;
    property Parent: IDispatch readonly dispid 61441;
    property StoreID: WideString readonly dispid 12552;
    property UnReadItemCount: Integer readonly dispid 13827;
    function CopyTo(const DestinationFolder: MAPIFolder): MAPIFolder; dispid 61490;
    procedure Delete; dispid 61509;
    procedure Display; dispid 12548;
    function GetExplorer(DisplayMode: OleVariant): Explorer; dispid 12545;
    procedure MoveTo(const DestinationFolder: MAPIFolder); dispid 61492;
  end;

// *********************************************************************//
// Interface: _IMeetingCanceledItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063128-0000-0000-C000-000000000046}
// *********************************************************************//
  _IMeetingCanceledItem = interface(IDispatch)
    ['{00063128-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function GetAssociatedAppointment(AddToCalendar: WordBool; out AppointmentItem: AppointmentItem): HResult; stdcall;
    function Send: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DMeetingCanceledItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063028-0000-0000-C000-000000000046}
// *********************************************************************//
  _DMeetingCanceledItem = dispinterface
    ['{00063028-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    function GetAssociatedAppointment(AddToCalendar: WordBool): AppointmentItem; dispid 63328;
    procedure Send; dispid 61557;
  end;

// *********************************************************************//
// Interface: _IMeetingRequestAcceptedItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063130-0000-0000-C000-000000000046}
// *********************************************************************//
  _IMeetingRequestAcceptedItem = interface(IDispatch)
    ['{00063130-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function GetAssociatedAppointment(AddToCalendar: WordBool; out AppointmentItem: AppointmentItem): HResult; stdcall;
    function Send: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DMeetingRequestAcceptedItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063030-0000-0000-C000-000000000046}
// *********************************************************************//
  _DMeetingRequestAcceptedItem = dispinterface
    ['{00063030-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    function GetAssociatedAppointment(AddToCalendar: WordBool): AppointmentItem; dispid 63328;
    procedure Send; dispid 61557;
  end;

// *********************************************************************//
// Interface: _IMeetingRequestDeclinedItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063131-0000-0000-C000-000000000046}
// *********************************************************************//
  _IMeetingRequestDeclinedItem = interface(IDispatch)
    ['{00063131-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function GetAssociatedAppointment(AddToCalendar: WordBool; out AppointmentItem: AppointmentItem): HResult; stdcall;
    function Send: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DMeetingRequestDeclinedItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063031-0000-0000-C000-000000000046}
// *********************************************************************//
  _DMeetingRequestDeclinedItem = dispinterface
    ['{00063031-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    function GetAssociatedAppointment(AddToCalendar: WordBool): AppointmentItem; dispid 63328;
    procedure Send; dispid 61557;
  end;

// *********************************************************************//
// Interface: _IMeetingRequestItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063129-0000-0000-C000-000000000046}
// *********************************************************************//
  _IMeetingRequestItem = interface(IDispatch)
    ['{00063129-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function GetAssociatedAppointment(AddToCalendar: WordBool; out AppointmentItem: AppointmentItem): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DMeetingRequestItem
// Flags:     (4096) Dispatchable
// GUID:      {00063029-0000-0000-C000-000000000046}
// *********************************************************************//
  _DMeetingRequestItem = dispinterface
    ['{00063029-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    function GetAssociatedAppointment(AddToCalendar: WordBool): AppointmentItem; dispid 63328;
  end;

// *********************************************************************//
// Interface: _IMeetingRequestTentativeItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063132-0000-0000-C000-000000000046}
// *********************************************************************//
  _IMeetingRequestTentativeItem = interface(IDispatch)
    ['{00063132-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function GetAssociatedAppointment(AddToCalendar: WordBool; out AppointmentItem: AppointmentItem): HResult; stdcall;
    function Send: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DMeetingRequestTentativeItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063032-0000-0000-C000-000000000046}
// *********************************************************************//
  _DMeetingRequestTentativeItem = dispinterface
    ['{00063032-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    function GetAssociatedAppointment(AddToCalendar: WordBool): AppointmentItem; dispid 63328;
    procedure Send; dispid 61557;
  end;

// *********************************************************************//
// Interface: _INameSpace
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063102-0000-0000-C000-000000000046}
// *********************************************************************//
  _INameSpace = interface(IDispatch)
    ['{00063102-0000-0000-C000-000000000046}']
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_CurrentUser(out CurrentUser: Recipient): HResult; stdcall;
    function Get_Folders(out Folders: Folders): HResult; stdcall;
    function Get_Parent(out Parent: OutlookApplication): HResult; stdcall;
    function Get_type_(out Type_: WideString): HResult; stdcall;
    function CreateRecipient(const RecipientName: WideString; out Recipient: Recipient): HResult; stdcall;
    function GetDefaultFolder(FolderType: OlDefaultFolders; out Folder: MAPIFolder): HResult; stdcall;
    function GetFolderFromID(const EntryIDFolder: WideString; EntryIDStore: OleVariant; 
                             out Folder: MAPIFolder): HResult; stdcall;
    function GetItemFromID(const EntryIDItem: WideString; EntryIDStore: OleVariant; 
                           out Item: IDispatch): HResult; stdcall;
    function GetRecipientFromID(const EntryID: WideString; out Recipient: Recipient): HResult; stdcall;
    function GetSharedDefaultFolder(const Recipient: Recipient; FolderType: OlDefaultFolders; 
                                    out Folder: MAPIFolder): HResult; stdcall;
    function Logoff: HResult; stdcall;
    function Logon(Profile: OleVariant; Password: OleVariant; ShowDialog: OleVariant; 
                   NewSession: OleVariant): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  NameSpace
// Flags:     (4096) Dispatchable
// GUID:      {00063002-0000-0000-C000-000000000046}
// *********************************************************************//
  NameSpace = dispinterface
    ['{00063002-0000-0000-C000-000000000046}']
    property Application: OutlookApplication readonly dispid 61440;
    property CurrentUser: Recipient readonly dispid 8449;
    property Folders: Folders readonly dispid 8451;
    property Parent: OutlookApplication readonly dispid 61441;
    property type_: WideString readonly dispid 8452;
    function CreateRecipient(const RecipientName: WideString): Recipient; dispid 8458;
    function GetDefaultFolder(FolderType: OlDefaultFolders): MAPIFolder; dispid 8459;
    function GetFolderFromID(const EntryIDFolder: WideString; EntryIDStore: OleVariant): MAPIFolder; dispid 8456;
    function GetItemFromID(const EntryIDItem: WideString; EntryIDStore: OleVariant): IDispatch; dispid 8457;
    function GetRecipientFromID(const EntryID: WideString): Recipient; dispid 8455;
    function GetSharedDefaultFolder(const Recipient: Recipient; FolderType: OlDefaultFolders): MAPIFolder; dispid 8460;
    procedure Logoff; dispid 8454;
    procedure Logon(Profile: OleVariant; Password: OleVariant; ShowDialog: OleVariant; 
                    NewSession: OleVariant); dispid 8453;
  end;

// *********************************************************************//
// Interface: _INoteItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063125-0000-0000-C000-000000000046}
// *********************************************************************//
  _INoteItem = interface(IDispatch)
    ['{00063125-0000-0000-C000-000000000046}']
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Color(out Color: OlNoteColor): HResult; stdcall;
    function Set_Color(Color: OlNoteColor): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Height(out Height: Integer): HResult; stdcall;
    function Set_Height(Height: Integer): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_Left(out Left: Integer): HResult; stdcall;
    function Set_Left(Left: Integer): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Parent(out Parent: MAPIFolder): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Get_Top(out Top: Integer): HResult; stdcall;
    function Set_Top(Top: Integer): HResult; stdcall;
    function Get_Width(out Width: Integer): HResult; stdcall;
    function Set_Width(Width: Integer): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DNoteItem
// Flags:     (4096) Dispatchable
// GUID:      {00063025-0000-0000-C000-000000000046}
// *********************************************************************//
  _DNoteItem = dispinterface
    ['{00063025-0000-0000-C000-000000000046}']
    property Application: OutlookApplication readonly dispid 61440;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Color: OlNoteColor dispid 35584;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property GetInspector: Inspector readonly dispid 61502;
    property Height: Integer dispid 35587;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property Left: Integer dispid 35588;
    property MessageClass: WideString dispid 26;
    property Parent: MAPIFolder readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString readonly dispid 63392;
    property Top: Integer dispid 35589;
    property Width: Integer dispid 35586;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
  end;

// *********************************************************************//
// Interface: _IOfficeDocumentItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063120-0000-0000-C000-000000000046}
// *********************************************************************//
  _IOfficeDocumentItem = interface(IDispatch)
    ['{00063120-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DOfficeDocumentItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063020-0000-0000-C000-000000000046}
// *********************************************************************//
  _DOfficeDocumentItem = dispinterface
    ['{00063020-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
  end;

// *********************************************************************//
// Interface: _IPages
// Flags:     (4112) Hidden Dispatchable
// GUID:      {0006313F-0000-0000-C000-000000000046}
// *********************************************************************//
  _IPages = interface(IDispatch)
    ['{0006313F-0000-0000-C000-000000000046}']
    function Get_Count(out Count: Integer): HResult; stdcall;
    function Add(Name: OleVariant; out Page: Page): HResult; stdcall;
    function Item(Index: OleVariant; out Page: Page): HResult; stdcall;
    function Remove(Index: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  Pages
// Flags:     (4096) Dispatchable
// GUID:      {0006303F-0000-0000-C000-000000000046}
// *********************************************************************//
  Pages = dispinterface
    ['{0006303F-0000-0000-C000-000000000046}']
    property Count: Integer readonly dispid 80;
    function Add(Name: OleVariant): Page; dispid 300;
    function Item(Index: OleVariant): Page; dispid 81;
    procedure Remove(Index: Integer); dispid 301;
  end;

// *********************************************************************//
// Interface: _IPostItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063124-0000-0000-C000-000000000046}
// *********************************************************************//
  _IPostItem = interface(IDispatch)
    ['{00063124-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Get_ConversationIndex(out ConversationIndex: WideString): HResult; stdcall;
    function Get_ConversationTopic(out ConversationTopic: WideString): HResult; stdcall;
    function Get_ExpiryTime(out ExpiryTime: TDateTime): HResult; stdcall;
    function Set_ExpiryTime(ExpiryTime: TDateTime): HResult; stdcall;
    function Get_ReceivedTime(out ReceivedTime: TDateTime): HResult; stdcall;
    function Get_SenderName(out SenderName: WideString): HResult; stdcall;
    function Get_SentOn(out SentOn: TDateTime): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function ClearConversationIndex: HResult; stdcall;
    function Forward(out Item: MailItem): HResult; stdcall;
    function Post: HResult; stdcall;
    function Reply(out Item: MailItem): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DPostItem
// Flags:     (4096) Dispatchable
// GUID:      {00063024-0000-0000-C000-000000000046}
// *********************************************************************//
  _DPostItem = dispinterface
    ['{00063024-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    property ConversationIndex: WideString readonly dispid 113;
    property ConversationTopic: WideString readonly dispid 112;
    property ExpiryTime: TDateTime dispid 21;
    property ReceivedTime: TDateTime readonly dispid 3590;
    property SenderName: WideString readonly dispid 3098;
    property SentOn: TDateTime readonly dispid 57;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    procedure ClearConversationIndex; dispid 63522;
    function Forward: MailItem; dispid 63507;
    procedure Post; dispid 61557;
    function Reply: MailItem; dispid 63504;
  end;

// *********************************************************************//
// Interface: _IRecipient
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063145-0000-0000-C000-000000000046}
// *********************************************************************//
  _IRecipient = interface(IDispatch)
    ['{00063145-0000-0000-C000-000000000046}']
    function Get_Address(out Address: WideString): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_AutoResponse(out AutoResponse: WideString): HResult; stdcall;
    function Set_AutoResponse(const AutoResponse: WideString): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_MeetingResponseStatus(out MeetingResponseStatus: OlResponseStatus): HResult; stdcall;
    function Set_MeetingResponseStatus(MeetingResponseStatus: OlResponseStatus): HResult; stdcall;
    function Get_Name(out Name: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Resolved(out Resolved: WordBool): HResult; stdcall;
    function Get_TrackingStatus(out TrackingStatus: OlTrackingStatus): HResult; stdcall;
    function Set_TrackingStatus(TrackingStatus: OlTrackingStatus): HResult; stdcall;
    function Get_TrackingStatusTime(out TrackingStatusTime: TDateTime): HResult; stdcall;
    function Set_TrackingStatusTime(TrackingStatusTime: TDateTime): HResult; stdcall;
    function Get_type_(out Type_: Integer): HResult; stdcall;
    function Set_type_(Type_: Integer): HResult; stdcall;
    function Delete: HResult; stdcall;
    function FreeBusy(Start: TDateTime; MinPerChar: Integer; CompleteFormat: OleVariant; 
                      out FreeBusyInfo: WideString): HResult; stdcall;
    function Resolve(out Success: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  Recipient
// Flags:     (4096) Dispatchable
// GUID:      {00063045-0000-0000-C000-000000000046}
// *********************************************************************//
  Recipient = dispinterface
    ['{00063045-0000-0000-C000-000000000046}']
    property Address: WideString readonly dispid 12291;
    property Application: OutlookApplication readonly dispid 61440;
    property AutoResponse: WideString dispid 106;
    property EntryID: WideString readonly dispid 61470;
    property MeetingResponseStatus: OlResponseStatus dispid 102;
    property Name: WideString readonly dispid 12289;
    property Parent: IDispatch readonly dispid 109;
    property Resolved: WordBool readonly dispid 100;
    property TrackingStatus: OlTrackingStatus dispid 118;
    property TrackingStatusTime: TDateTime dispid 119;
    property type_: Integer dispid 112;
    procedure Delete; dispid 110;
    function FreeBusy(Start: TDateTime; MinPerChar: Integer; CompleteFormat: OleVariant): WideString; dispid 111;
    function Resolve: WordBool; dispid 113;
  end;

// *********************************************************************//
// Interface: _IRecipients
// Flags:     (4112) Hidden Dispatchable
// GUID:      {0006313B-0000-0000-C000-000000000046}
// *********************************************************************//
  _IRecipients = interface(IDispatch)
    ['{0006313B-0000-0000-C000-000000000046}']
    function Get_Count(out Count: Integer): HResult; stdcall;
    function Add(const Name: WideString; out Recipient: Recipient): HResult; stdcall;
    function Item(Index: OleVariant; out Recipient: Recipient): HResult; stdcall;
    function Remove(Index: Integer): HResult; stdcall;
    function ResolveAll(out Success: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  Recipients
// Flags:     (4096) Dispatchable
// GUID:      {0006303B-0000-0000-C000-000000000046}
// *********************************************************************//
  Recipients = dispinterface
    ['{0006303B-0000-0000-C000-000000000046}']
    property Count: Integer readonly dispid 80;
    function Add(const Name: WideString): Recipient; dispid 111;
    function Item(Index: OleVariant): Recipient; dispid 81;
    procedure Remove(Index: Integer); dispid 84;
    function ResolveAll: WordBool; dispid 126;
  end;

// *********************************************************************//
// Interface: _IRecurrencePattern
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063144-0000-0000-C000-000000000046}
// *********************************************************************//
  _IRecurrencePattern = interface(IDispatch)
    ['{00063144-0000-0000-C000-000000000046}']
    function Get_DayOfMonth(out DayOfMonth: Integer): HResult; stdcall;
    function Set_DayOfMonth(DayOfMonth: Integer): HResult; stdcall;
    function Get_DayOfWeekMask(out DayOfWeekMask: OlDaysOfWeek): HResult; stdcall;
    function Set_DayOfWeekMask(DayOfWeekMask: OlDaysOfWeek): HResult; stdcall;
    function Get_Duration(out Duration: Integer): HResult; stdcall;
    function Set_Duration(Duration: Integer): HResult; stdcall;
    function Get_EndTime(out EndTime: TDateTime): HResult; stdcall;
    function Set_EndTime(EndTime: TDateTime): HResult; stdcall;
    function Get_Instance(out Instance: Integer): HResult; stdcall;
    function Set_Instance(Instance: Integer): HResult; stdcall;
    function Get_Interval(out Interval: Integer): HResult; stdcall;
    function Set_Interval(Interval: Integer): HResult; stdcall;
    function Get_MonthOfYear(out MonthOfYear: Integer): HResult; stdcall;
    function Set_MonthOfYear(MonthOfYear: Integer): HResult; stdcall;
    function Get_NoEndDate(out NoEndDate: WordBool): HResult; stdcall;
    function Set_NoEndDate(NoEndDate: WordBool): HResult; stdcall;
    function Get_Occurrences(out Occurrences: Integer): HResult; stdcall;
    function Set_Occurrences(Occurrences: Integer): HResult; stdcall;
    function Get_PatternEndDate(out PatternEndDate: TDateTime): HResult; stdcall;
    function Set_PatternEndDate(PatternEndDate: TDateTime): HResult; stdcall;
    function Get_PatternStartDate(out PatternStartDate: TDateTime): HResult; stdcall;
    function Set_PatternStartDate(PatternStartDate: TDateTime): HResult; stdcall;
    function Get_RecurrenceType(out RecurrenceType: OlRecurrenceType): HResult; stdcall;
    function Set_RecurrenceType(RecurrenceType: OlRecurrenceType): HResult; stdcall;
    function Get_Regenerate(out Regenerate: WordBool): HResult; stdcall;
    function Set_Regenerate(Regenerate: WordBool): HResult; stdcall;
    function Get_StartTime(out StartTime: TDateTime): HResult; stdcall;
    function Set_StartTime(StartTime: TDateTime): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  RecurrencePattern
// Flags:     (4096) Dispatchable
// GUID:      {00063044-0000-0000-C000-000000000046}
// *********************************************************************//
  RecurrencePattern = dispinterface
    ['{00063044-0000-0000-C000-000000000046}']
    property DayOfMonth: Integer dispid 4096;
    property DayOfWeekMask: OlDaysOfWeek dispid 4097;
    property Duration: Integer dispid 4109;
    property EndTime: TDateTime dispid 4108;
    property Instance: Integer dispid 4099;
    property Interval: Integer dispid 4100;
    property MonthOfYear: Integer dispid 4102;
    property NoEndDate: WordBool dispid 4107;
    property Occurrences: Integer dispid 4101;
    property PatternEndDate: TDateTime dispid 4098;
    property PatternStartDate: TDateTime dispid 4104;
    property RecurrenceType: OlRecurrenceType dispid 4103;
    property Regenerate: WordBool dispid 4106;
    property StartTime: TDateTime dispid 4105;
  end;

// *********************************************************************//
// Interface: _IRemoteItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063123-0000-0000-C000-000000000046}
// *********************************************************************//
  _IRemoteItem = interface(IDispatch)
    ['{00063123-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Get_HasAttachment(out HasAttachment: WordBool): HResult; stdcall;
    function Get_RemoteMessageClass(out RemoteMessageClass: WideString): HResult; stdcall;
    function Get_TransferSize(out TransferSize: Integer): HResult; stdcall;
    function Get_TransferTime(out TransferTime: Integer): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DRemoteItem
// Flags:     (4096) Dispatchable
// GUID:      {00063023-0000-0000-C000-000000000046}
// *********************************************************************//
  _DRemoteItem = dispinterface
    ['{00063023-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    property HasAttachment: WordBool readonly dispid 36615;
    property RemoteMessageClass: WideString readonly dispid 36610;
    property TransferSize: Integer readonly dispid 36613;
    property TransferTime: Integer readonly dispid 36612;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
  end;

// *********************************************************************//
// Interface: _IReportItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063126-0000-0000-C000-000000000046}
// *********************************************************************//
  _IReportItem = interface(IDispatch)
    ['{00063126-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DReportItem
// Flags:     (4096) Dispatchable
// GUID:      {00063026-0000-0000-C000-000000000046}
// *********************************************************************//
  _DReportItem = dispinterface
    ['{00063026-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
  end;

// *********************************************************************//
// Interface: _ITaskItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063135-0000-0000-C000-000000000046}
// *********************************************************************//
  _ITaskItem = interface(IDispatch)
    ['{00063135-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Get_ActualWork(out ActualWork: Integer): HResult; stdcall;
    function Set_ActualWork(ActualWork: Integer): HResult; stdcall;
    function Get_CardData(out CardData: WideString): HResult; stdcall;
    function Set_CardData(const CardData: WideString): HResult; stdcall;
    function Get_Complete(out Complete: WordBool): HResult; stdcall;
    function Set_Complete(Complete: WordBool): HResult; stdcall;
    function Get_Contacts(out Contacts: WideString): HResult; stdcall;
    function Set_Contacts(const Contacts: WideString): HResult; stdcall;
    function Get_DateCompleted(out DateCompleted: TDateTime): HResult; stdcall;
    function Set_DateCompleted(DateCompleted: TDateTime): HResult; stdcall;
    function Get_DelegationState(out DelegationState: OlTaskDelegationState): HResult; stdcall;
    function Get_Delegator(out Delegator: WideString): HResult; stdcall;
    function Get_DueDate(out DueDate: TDateTime): HResult; stdcall;
    function Set_DueDate(DueDate: TDateTime): HResult; stdcall;
    function Get_IsRecurring(out IsRecurring: WordBool): HResult; stdcall;
    function Get_Ordinal(out Ordinal: Integer): HResult; stdcall;
    function Set_Ordinal(Ordinal: Integer): HResult; stdcall;
    function Get_Owner(out Owner: WideString): HResult; stdcall;
    function Set_Owner(const Owner: WideString): HResult; stdcall;
    function Get_Ownership(out Ownership: OlTaskOwnership): HResult; stdcall;
    function Get_PercentComplete(out PercentComplete: Integer): HResult; stdcall;
    function Set_PercentComplete(PercentComplete: Integer): HResult; stdcall;
    function Get_Recipients(out Recipients: Recipients): HResult; stdcall;
    function Get_ReminderOverrideDefault(out ReminderOverrideDefault: WordBool): HResult; stdcall;
    function Set_ReminderOverrideDefault(ReminderOverrideDefault: WordBool): HResult; stdcall;
    function Get_ReminderPlaySound(out ReminderPlaySound: WordBool): HResult; stdcall;
    function Set_ReminderPlaySound(ReminderPlaySound: WordBool): HResult; stdcall;
    function Get_ReminderSet(out ReminderSet: WordBool): HResult; stdcall;
    function Set_ReminderSet(ReminderSet: WordBool): HResult; stdcall;
    function Get_ReminderSoundFile(out ReminderSoundFile: WideString): HResult; stdcall;
    function Set_ReminderSoundFile(const ReminderSoundFile: WideString): HResult; stdcall;
    function Get_ReminderTime(out ReminderTime: TDateTime): HResult; stdcall;
    function Set_ReminderTime(ReminderTime: TDateTime): HResult; stdcall;
    function Get_ResponseState(out ResponseState: OlTaskResponse): HResult; stdcall;
    function Get_Role(out Role: WideString): HResult; stdcall;
    function Set_Role(const Role: WideString): HResult; stdcall;
    function Get_SchedulePlusPriority(out SchedulePlusPriority: WideString): HResult; stdcall;
    function Set_SchedulePlusPriority(const SchedulePlusPriority: WideString): HResult; stdcall;
    function Get_StartDate(out StartDate: TDateTime): HResult; stdcall;
    function Set_StartDate(StartDate: TDateTime): HResult; stdcall;
    function Get_Status(out Status: OlTaskStatus): HResult; stdcall;
    function Set_Status(Status: OlTaskStatus): HResult; stdcall;
    function Get_StatusOnCompletionRecipients(out StatusOnCompletionRecipients: WideString): HResult; stdcall;
    function Set_StatusOnCompletionRecipients(const StatusOnCompletionRecipients: WideString): HResult; stdcall;
    function Get_StatusUpdateRecipients(out StatusUpdateRecipients: WideString): HResult; stdcall;
    function Set_StatusUpdateRecipients(const StatusUpdateRecipients: WideString): HResult; stdcall;
    function Get_TeamTask(out TeamTask: WordBool): HResult; stdcall;
    function Set_TeamTask(TeamTask: WordBool): HResult; stdcall;
    function Get_TotalWork(out TotalWork: Integer): HResult; stdcall;
    function Set_TotalWork(TotalWork: Integer): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function Assign_(out Item: TaskItem): HResult; stdcall;
    function CancelResponseState: HResult; stdcall;
    function ClearRecurrencePattern: HResult; stdcall;
    function GetRecurrencePattern: HResult; stdcall;
    function MarkComplete: HResult; stdcall;
    function Respond(Response: OlTaskResponse; fNoUI: OleVariant; 
                     fAdditionalTextDialog: OleVariant; out Item: TaskItem): HResult; stdcall;
    function Send: HResult; stdcall;
    function SkipRecurrence: WordBool; stdcall;
    function StatusReport(out StatusReport: IDispatch): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DTaskItem
// Flags:     (4096) Dispatchable
// GUID:      {00063035-0000-0000-C000-000000000046}
// *********************************************************************//
  _DTaskItem = dispinterface
    ['{00063035-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    property ActualWork: Integer dispid 33040;
    property CardData: WideString dispid 33067;
    property Complete: WordBool dispid 33052;
    property Contacts: WideString dispid 34106;
    property DateCompleted: TDateTime dispid 33039;
    property DelegationState: OlTaskDelegationState readonly dispid 33066;
    property Delegator: WideString readonly dispid 33057;
    property DueDate: TDateTime dispid 33029;
    property IsRecurring: WordBool readonly dispid 62999;
    property Ordinal: Integer dispid 33059;
    property Owner: WideString dispid 33055;
    property Ownership: OlTaskOwnership readonly dispid 33065;
    property PercentComplete: Integer dispid 63007;
    property Recipients: Recipients readonly dispid 63508;
    property ReminderOverrideDefault: WordBool dispid 34076;
    property ReminderPlaySound: WordBool dispid 34078;
    property ReminderSet: WordBool dispid 34051;
    property ReminderSoundFile: WideString dispid 34079;
    property ReminderTime: TDateTime dispid 34050;
    property ResponseState: OlTaskResponse readonly dispid 63011;
    property Role: WideString dispid 33063;
    property SchedulePlusPriority: WideString dispid 33071;
    property StartDate: TDateTime dispid 33028;
    property Status: OlTaskStatus dispid 33025;
    property StatusOnCompletionRecipients: WideString dispid 3586;
    property StatusUpdateRecipients: WideString dispid 3587;
    property TeamTask: WordBool dispid 33027;
    property TotalWork: Integer dispid 33041;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    function Assign_: TaskItem; dispid 63008;
    procedure CancelResponseState; dispid 63010;
    procedure ClearRecurrencePattern; dispid 61605;
    procedure GetRecurrencePattern; dispid 61604;
    procedure MarkComplete; dispid 62989;
    function Respond(Response: OlTaskResponse; fNoUI: OleVariant; fAdditionalTextDialog: OleVariant): TaskItem; dispid 63009;
    procedure Send; dispid 61557;
    function SkipRecurrence: WordBool; dispid 63012;
    function StatusReport: IDispatch; dispid 62994;
  end;

// *********************************************************************//
// Interface: _ITaskRequestAcceptItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063138-0000-0000-C000-000000000046}
// *********************************************************************//
  _ITaskRequestAcceptItem = interface(IDispatch)
    ['{00063138-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function GetAssociatedTask(AddToTaskList: WordBool; out Item: TaskItem): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DTaskRequestAcceptItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063038-0000-0000-C000-000000000046}
// *********************************************************************//
  _DTaskRequestAcceptItem = dispinterface
    ['{00063038-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    function GetAssociatedTask(AddToTaskList: WordBool): TaskItem; dispid 61460;
  end;

// *********************************************************************//
// Interface: _ITaskRequestDeclineItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063139-0000-0000-C000-000000000046}
// *********************************************************************//
  _ITaskRequestDeclineItem = interface(IDispatch)
    ['{00063139-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function GetAssociatedTask(AddToTaskList: WordBool; out Item: TaskItem): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DTaskRequestDeclineItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063039-0000-0000-C000-000000000046}
// *********************************************************************//
  _DTaskRequestDeclineItem = dispinterface
    ['{00063039-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    function GetAssociatedTask(AddToTaskList: WordBool): TaskItem; dispid 61460;
  end;

// *********************************************************************//
// Interface: _ITaskRequestItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063136-0000-0000-C000-000000000046}
// *********************************************************************//
  _ITaskRequestItem = interface(IDispatch)
    ['{00063136-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function GetAssociatedTask(AddToTaskList: WordBool; out Item: TaskItem): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DTaskRequestItem
// Flags:     (4096) Dispatchable
// GUID:      {00063036-0000-0000-C000-000000000046}
// *********************************************************************//
  _DTaskRequestItem = dispinterface
    ['{00063036-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    function GetAssociatedTask(AddToTaskList: WordBool): TaskItem; dispid 61460;
  end;

// *********************************************************************//
// Interface: _ITaskRequestUpdateItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063137-0000-0000-C000-000000000046}
// *********************************************************************//
  _ITaskRequestUpdateItem = interface(IDispatch)
    ['{00063137-0000-0000-C000-000000000046}']
    function Get_Actions(out Actions: Actions): HResult; stdcall;
    function Get_Application(out Application: OutlookApplication): HResult; stdcall;
    function Get_Attachments(out Attachments: Attachments): HResult; stdcall;
    function Get_BillingInformation(out BillingInformation: WideString): HResult; stdcall;
    function Set_BillingInformation(const BillingInformation: WideString): HResult; stdcall;
    function Get_Body(out Body: WideString): HResult; stdcall;
    function Set_Body(const Body: WideString): HResult; stdcall;
    function Get_Categories(out Categories: WideString): HResult; stdcall;
    function Set_Categories(const Categories: WideString): HResult; stdcall;
    function Get_Companies(out Companies: WideString): HResult; stdcall;
    function Set_Companies(const Companies: WideString): HResult; stdcall;
    function Get_CreationTime(out CreationTime: TDateTime): HResult; stdcall;
    function Get_EntryID(out EntryID: WideString): HResult; stdcall;
    function Get_FormDescription(out FormDescription: FormDescription): HResult; stdcall;
    function Get_GetInspector(out GetInspector: Inspector): HResult; stdcall;
    function Get_Importance(out Importance: OlImportance): HResult; stdcall;
    function Set_Importance(Importance: OlImportance): HResult; stdcall;
    function Get_LastModificationTime(out LastModificationTime: TDateTime): HResult; stdcall;
    function Get_MessageClass(out MessageClass: WideString): HResult; stdcall;
    function Set_MessageClass(const MessageClass: WideString): HResult; stdcall;
    function Get_Mileage(out Mileage: WideString): HResult; stdcall;
    function Set_Mileage(const Mileage: WideString): HResult; stdcall;
    function Get_NoAging(out NoAging: WordBool): HResult; stdcall;
    function Set_NoAging(NoAging: WordBool): HResult; stdcall;
    function Get_OutlookInternalVersion(out OutlookInternalVersion: WideString): HResult; stdcall;
    function Get_OutlookVersion(out OutlookVersion: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_Saved(out Saved: WordBool): HResult; stdcall;
    function Get_Sensitivity(out Sensitivity: OlSensitivity): HResult; stdcall;
    function Set_Sensitivity(Sensitivity: OlSensitivity): HResult; stdcall;
    function Get_Size(out Size: Integer): HResult; stdcall;
    function Get_Subject(out Subject: WideString): HResult; stdcall;
    function Set_Subject(const Subject: WideString): HResult; stdcall;
    function Get_UnRead(out UnRead: WordBool): HResult; stdcall;
    function Set_UnRead(UnRead: WordBool): HResult; stdcall;
    function Get_UserProperties(out UserProperties: UserProperties): HResult; stdcall;
    function Close(SaveMode: OlInspectorClose): HResult; stdcall;
    function Copy(out Item: IDispatch): HResult; stdcall;
    function Delete: HResult; stdcall;
    function Display(Modal: OleVariant): HResult; stdcall;
    function Move(const DestFldr: MAPIFolder; out Item: IDispatch): HResult; stdcall;
    function Save: HResult; stdcall;
    function SaveAs(const Path: WideString; Type_: OleVariant): HResult; stdcall;
    function PrintOut: HResult; stdcall;
    function GetAssociatedTask(AddToTaskList: WordBool; out Item: TaskItem): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DTaskRequestUpdateItem
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063037-0000-0000-C000-000000000046}
// *********************************************************************//
  _DTaskRequestUpdateItem = dispinterface
    ['{00063037-0000-0000-C000-000000000046}']
    property Actions: Actions readonly dispid 63511;
    property Application: OutlookApplication readonly dispid 61440;
    property Attachments: Attachments readonly dispid 63509;
    property BillingInformation: WideString dispid 34101;
    property Body: WideString dispid 37120;
    property Categories: WideString dispid 36865;
    property Companies: WideString dispid 34107;
    property CreationTime: TDateTime readonly dispid 12295;
    property EntryID: WideString readonly dispid 61470;
    property FormDescription: FormDescription readonly dispid 61589;
    property GetInspector: Inspector readonly dispid 61502;
    property Importance: OlImportance dispid 23;
    property LastModificationTime: TDateTime readonly dispid 12296;
    property MessageClass: WideString dispid 26;
    property Mileage: WideString dispid 34100;
    property NoAging: WordBool dispid 34062;
    property OutlookInternalVersion: WideString readonly dispid 34130;
    property OutlookVersion: WideString readonly dispid 34132;
    property Parent: IDispatch readonly dispid 61441;
    property Saved: WordBool readonly dispid 61603;
    property Sensitivity: OlSensitivity dispid 54;
    property Size: Integer readonly dispid 3592;
    property Subject: WideString dispid 55;
    property UnRead: WordBool dispid 61468;
    property UserProperties: UserProperties readonly dispid 63510;
    procedure Close(SaveMode: OlInspectorClose); dispid 61475;
    function Copy: IDispatch; dispid 61490;
    procedure Delete; dispid 61514;
    procedure Display(Modal: OleVariant); dispid 61606;
    function Move(const DestFldr: MAPIFolder): IDispatch; dispid 61492;
    procedure Save; dispid 61512;
    procedure SaveAs(const Path: WideString; Type_: OleVariant); dispid 61521;
    procedure PrintOut; dispid 61491;
    function GetAssociatedTask(AddToTaskList: WordBool): TaskItem; dispid 61460;
  end;

// *********************************************************************//
// Interface: _IUserProperties
// Flags:     (4112) Hidden Dispatchable
// GUID:      {0006313D-0000-0000-C000-000000000046}
// *********************************************************************//
  _IUserProperties = interface(IDispatch)
    ['{0006313D-0000-0000-C000-000000000046}']
    function Get_Count(out Count: Integer): HResult; stdcall;
    function Add(const Name: WideString; Type_: OlUserPropertyType; AddToFolderFields: OleVariant; 
                 DisplayFormat: OleVariant; out UserProperty: UserProperty): HResult; stdcall;
    function Find(const Name: WideString; Custom: OleVariant): HResult; stdcall;
    function Item(Index: OleVariant; out UserProperty: UserProperty): HResult; stdcall;
    function Remove(Index: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  UserProperties
// Flags:     (4096) Dispatchable
// GUID:      {0006303D-0000-0000-C000-000000000046}
// *********************************************************************//
  UserProperties = dispinterface
    ['{0006303D-0000-0000-C000-000000000046}']
    property Count: Integer readonly dispid 80;
    function Add(const Name: WideString; Type_: OlUserPropertyType; AddToFolderFields: OleVariant; 
                 DisplayFormat: OleVariant): UserProperty; dispid 102;
    procedure Find(const Name: WideString; Custom: OleVariant); dispid 103;
    function Item(Index: OleVariant): UserProperty; dispid 81;
    procedure Remove(Index: Integer); dispid 82;
  end;

// *********************************************************************//
// Interface: _IUserProperty
// Flags:     (4112) Hidden Dispatchable
// GUID:      {00063142-0000-0000-C000-000000000046}
// *********************************************************************//
  _IUserProperty = interface(IDispatch)
    ['{00063142-0000-0000-C000-000000000046}']
    function Get_Formula(out Formula: WideString): HResult; stdcall;
    function Set_Formula(const Formula: WideString): HResult; stdcall;
    function Get_Name(out Name: WideString): HResult; stdcall;
    function Get_Parent(out Parent: IDispatch): HResult; stdcall;
    function Get_type_(out Type_: OlUserPropertyType): HResult; stdcall;
    function Get_ValidationFormula(out ValidationFormula: WideString): HResult; stdcall;
    function Set_ValidationFormula(const ValidationFormula: WideString): HResult; stdcall;
    function Get_ValidationText(out ValidationText: WideString): HResult; stdcall;
    function Set_ValidationText(const ValidationText: WideString): HResult; stdcall;
    function Get_Value(out Value: OleVariant): HResult; stdcall;
    function Set_Value(Value: OleVariant): HResult; stdcall;
    function Delete: HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  UserProperty
// Flags:     (4096) Dispatchable
// GUID:      {00063042-0000-0000-C000-000000000046}
// *********************************************************************//
  UserProperty = dispinterface
    ['{00063042-0000-0000-C000-000000000046}']
    property Formula: WideString dispid 103;
    property Name: WideString readonly dispid 12289;
    property Parent: IDispatch readonly dispid 61441;
    property type_: OlUserPropertyType readonly dispid 109;
    property ValidationFormula: WideString dispid 104;
    property ValidationText: WideString dispid 105;
    property Value: OleVariant dispid 0;
    procedure Delete; dispid 108;
  end;

// *********************************************************************//
// Interface: _IRecipientControl
// Flags:     (4112) Hidden Dispatchable
// GUID:      {D87E7E16-6897-11CE-A6C0-00AA00608FAA}
// *********************************************************************//
  _IRecipientControl = interface(IDispatch)
    ['{D87E7E16-6897-11CE-A6C0-00AA00608FAA}']
    function Get_Enabled(out Enabled: WordBool): HResult; stdcall;
    function Set_Enabled(Enabled: WordBool): HResult; stdcall;
    function Get_BackColor(out BackColor: Integer): HResult; stdcall;
    function Set_BackColor(BackColor: Integer): HResult; stdcall;
    function Get_ForeColor(out ForeColor: Integer): HResult; stdcall;
    function Set_ForeColor(ForeColor: Integer): HResult; stdcall;
    function Get_ReadOnly(out ReadOnly: WordBool): HResult; stdcall;
    function Set_ReadOnly(ReadOnly: WordBool): HResult; stdcall;
    function Get_Font(out Font: IFontDisp): HResult; stdcall;
    function Set_Font(const Font: IFontDisp): HResult; stdcall;
    function Get_SpecialEffect(out Effect: Integer): HResult; stdcall;
    function Set_SpecialEffect(Effect: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DRecipientControl
// Flags:     (4112) Hidden Dispatchable
// GUID:      {0006F025-0000-0000-C000-000000000046}
// *********************************************************************//
  _DRecipientControl = dispinterface
    ['{0006F025-0000-0000-C000-000000000046}']
    property Enabled: WordBool dispid -514;
    property BackColor: Integer dispid -501;
    property ForeColor: Integer dispid -513;
    property ReadOnly: WordBool dispid -2147356664;
    property Font: IFontDisp dispid -512;
    property SpecialEffect: Integer dispid 12;
  end;

// *********************************************************************//
// DispIntf:  _DRecipientControlEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {D87E7E17-6897-11CE-A6C0-00AA00608FAA}
// *********************************************************************//
  _DRecipientControlEvents = dispinterface
    ['{D87E7E17-6897-11CE-A6C0-00AA00608FAA}']
  end;

// *********************************************************************//
// Interface: _IDocSiteControl
// Flags:     (4112) Hidden Dispatchable
// GUID:      {43507DD0-811D-11CE-B565-00AA00608FAA}
// *********************************************************************//
  _IDocSiteControl = interface(IDispatch)
    ['{43507DD0-811D-11CE-B565-00AA00608FAA}']
    function Get_ReadOnly(out ReadOnly: WordBool): HResult; stdcall;
    function Set_ReadOnly(ReadOnly: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// DispIntf:  _DDocSiteControl
// Flags:     (4112) Hidden Dispatchable
// GUID:      {0006F026-0000-0000-C000-000000000046}
// *********************************************************************//
  _DDocSiteControl = dispinterface
    ['{0006F026-0000-0000-C000-000000000046}']
    property ReadOnly: WordBool dispid -2147356664;
  end;

// *********************************************************************//
// DispIntf:  _DDocSiteControlEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {50BB9B50-811D-11CE-B565-00AA00608FAA}
// *********************************************************************//
  _DDocSiteControlEvents = dispinterface
    ['{50BB9B50-811D-11CE-B565-00AA00608FAA}']
  end;

// *********************************************************************//
// The Class CoOutlookApplication provides a Create and CreateRemote method to          
// create instances of the default interface _DApplication exposed by              
// the CoClass OutlookApplication. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOutlookApplication = class
    class function Create: _DApplication;
    class function CreateRemote(const MachineName: string): _DApplication;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOutlookApplication
// Help String      : 
// Default Interface: _DApplication
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TOutlookApplicationProperties= class;
{$ENDIF}
  TOutlookApplication = class(TOleServer)
  private
    FAutoQuit:    Boolean;
    FIntf:        _DApplication;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TOutlookApplicationProperties;
    function      GetServerProperties: TOutlookApplicationProperties;
{$ENDIF}
    function      GetDefaultInterface: _DApplication;
  protected
    procedure InitServerData; override;
    function Get_Assistant: Assistant;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DApplication);
    procedure Disconnect; override;
    function ActiveExplorer: Explorer;
    function ActiveInspector: Inspector;
    function CreateItem(ItemType: OlItems): IDispatch;
    function CreateItemFromTemplate(const TemplatePath: WideString; InFolder: OleVariant): IDispatch;
    function CreateObject(const ObjectName: WideString): IDispatch;
    function GetNamespace(const Type_: WideString): NameSpace;
    procedure Quit;
    property DefaultInterface: _DApplication read GetDefaultInterface;
    property Assistant: Assistant read Get_Assistant;
  published
    property AutoQuit: Boolean read FAutoQuit write FAutoQuit; 
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TOutlookApplicationProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TOutlookApplication
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TOutlookApplicationProperties = class(TPersistent)
  private
    FServer:    TOutlookApplication;
    function    GetDefaultInterface: _DApplication;
    constructor Create(AServer: TOutlookApplication);
  protected
    function Get_Assistant: Assistant;
  public
    property DefaultInterface: _DApplication read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoAppointmentItem provides a Create and CreateRemote method to          
// create instances of the default interface _DAppointmentItem exposed by              
// the CoClass AppointmentItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAppointmentItem = class
    class function Create: _DAppointmentItem;
    class function CreateRemote(const MachineName: string): _DAppointmentItem;
  end;

  TAppointmentItemReply = procedure(ASender: TObject; const Response: IDispatch) of object;
  TAppointmentItemReplyAll = procedure(ASender: TObject; const Response: IDispatch) of object;
  TAppointmentItemForward = procedure(ASender: TObject; const Forward: IDispatch) of object;
  TAppointmentItemCustomAction = procedure(ASender: TObject; const Action: IDispatch; 
                                                             const Response: IDispatch) of object;
  TAppointmentItemCustomPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;
  TAppointmentItemPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAppointmentItem
// Help String      : 
// Default Interface: _DAppointmentItem
// Def. Intf. DISP? : Yes
// Event   Interface: _DItemEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAppointmentItemProperties= class;
{$ENDIF}
  TAppointmentItem = class(TOleServer)
  private
    FOnRead: TNotifyEvent;
    FOnWrite: TNotifyEvent;
    FOnOpen: TNotifyEvent;
    FOnClose: TNotifyEvent;
    FOnSend: TNotifyEvent;
    FOnReply: TAppointmentItemReply;
    FOnReplyAll: TAppointmentItemReplyAll;
    FOnForward: TAppointmentItemForward;
    FOnCustomAction: TAppointmentItemCustomAction;
    FOnCustomPropertyChange: TAppointmentItemCustomPropertyChange;
    FOnPropertyChange: TAppointmentItemPropertyChange;
    FIntf:        _DAppointmentItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TAppointmentItemProperties;
    function      GetServerProperties: TAppointmentItemProperties;
{$ENDIF}
    function      GetDefaultInterface: _DAppointmentItem;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_AllDayEvent: WordBool;
    procedure Set_AllDayEvent(Param1: WordBool);
    function Get_BusyStatus: OlBusyStatus;
    procedure Set_BusyStatus(Param1: OlBusyStatus);
    function Get_Duration: Integer;
    procedure Set_Duration(Param1: Integer);
    function Get_End_: TDateTime;
    procedure Set_End_(Param1: TDateTime);
    function Get_IsRecurring: WordBool;
    function Get_Location: WideString;
    procedure Set_Location(const Param1: WideString);
    function Get_MeetingStatus: OlMeetingStatus;
    procedure Set_MeetingStatus(Param1: OlMeetingStatus);
    function Get_OptionalAttendees: WideString;
    procedure Set_OptionalAttendees(const Param1: WideString);
    function Get_Organizer: WideString;
    function Get_Recipients: Recipients;
    function Get_ReminderMinutesBeforeStart: Integer;
    procedure Set_ReminderMinutesBeforeStart(Param1: Integer);
    function Get_ReminderOverrideDefault: WordBool;
    procedure Set_ReminderOverrideDefault(Param1: WordBool);
    function Get_ReminderPlaySound: WordBool;
    procedure Set_ReminderPlaySound(Param1: WordBool);
    function Get_ReminderSet: WordBool;
    procedure Set_ReminderSet(Param1: WordBool);
    function Get_ReminderSoundFile: WideString;
    procedure Set_ReminderSoundFile(const Param1: WideString);
    function Get_ReplyTime: TDateTime;
    procedure Set_ReplyTime(Param1: TDateTime);
    function Get_RequiredAttendees: WideString;
    procedure Set_RequiredAttendees(const Param1: WideString);
    function Get_Resources: WideString;
    procedure Set_Resources(const Param1: WideString);
    function Get_ResponseRequested: WordBool;
    procedure Set_ResponseRequested(Param1: WordBool);
    function Get_ResponseStatus: OlResponseStatus;
    function Get_Start: TDateTime;
    procedure Set_Start(Param1: TDateTime);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DAppointmentItem);
    procedure Disconnect; override;
    procedure Close(SaveMode: OlInspectorClose);
    function Copy: IDispatch;
    procedure Delete;
    procedure Display(Modal: OleVariant);
    function Move(const DestFldr: MAPIFolder): IDispatch;
    procedure Save;
    procedure SaveAs(const Path: WideString; Type_: OleVariant);
    procedure PrintOut;
    procedure ClearRecurrencePattern;
    function GetRecurrencePattern: RecurrencePattern;
    function Respond(Response: OlMeetingResponse; fNoUI: OleVariant; 
                     fAdditionalTextDialog: OleVariant): IDispatch;
    procedure Send;
    property DefaultInterface: _DAppointmentItem read GetDefaultInterface;
    property Actions: Actions read Get_Actions;
    property Application: OutlookApplication read Get_Application;
    property Attachments: Attachments read Get_Attachments;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: Inspector read Get_GetInspector;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property OutlookInternalVersion: WideString read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Parent: IDispatch read Get_Parent;
    property Saved: WordBool read Get_Saved;
    property Size: Integer read Get_Size;
    property UserProperties: UserProperties read Get_UserProperties;
    property IsRecurring: WordBool read Get_IsRecurring;
    property Organizer: WideString read Get_Organizer;
    property Recipients: Recipients read Get_Recipients;
    property ResponseStatus: OlResponseStatus read Get_ResponseStatus;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property AllDayEvent: WordBool read Get_AllDayEvent write Set_AllDayEvent;
    property BusyStatus: OlBusyStatus read Get_BusyStatus write Set_BusyStatus;
    property Duration: Integer read Get_Duration write Set_Duration;
    property End_: TDateTime read Get_End_ write Set_End_;
    property Location: WideString read Get_Location write Set_Location;
    property MeetingStatus: OlMeetingStatus read Get_MeetingStatus write Set_MeetingStatus;
    property OptionalAttendees: WideString read Get_OptionalAttendees write Set_OptionalAttendees;
    property ReminderMinutesBeforeStart: Integer read Get_ReminderMinutesBeforeStart write Set_ReminderMinutesBeforeStart;
    property ReminderOverrideDefault: WordBool read Get_ReminderOverrideDefault write Set_ReminderOverrideDefault;
    property ReminderPlaySound: WordBool read Get_ReminderPlaySound write Set_ReminderPlaySound;
    property ReminderSet: WordBool read Get_ReminderSet write Set_ReminderSet;
    property ReminderSoundFile: WideString read Get_ReminderSoundFile write Set_ReminderSoundFile;
    property ReplyTime: TDateTime read Get_ReplyTime write Set_ReplyTime;
    property RequiredAttendees: WideString read Get_RequiredAttendees write Set_RequiredAttendees;
    property Resources: WideString read Get_Resources write Set_Resources;
    property ResponseRequested: WordBool read Get_ResponseRequested write Set_ResponseRequested;
    property Start: TDateTime read Get_Start write Set_Start;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAppointmentItemProperties read GetServerProperties;
{$ENDIF}
    property OnRead: TNotifyEvent read FOnRead write FOnRead;
    property OnWrite: TNotifyEvent read FOnWrite write FOnWrite;
    property OnOpen: TNotifyEvent read FOnOpen write FOnOpen;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnSend: TNotifyEvent read FOnSend write FOnSend;
    property OnReply: TAppointmentItemReply read FOnReply write FOnReply;
    property OnReplyAll: TAppointmentItemReplyAll read FOnReplyAll write FOnReplyAll;
    property OnForward: TAppointmentItemForward read FOnForward write FOnForward;
    property OnCustomAction: TAppointmentItemCustomAction read FOnCustomAction write FOnCustomAction;
    property OnCustomPropertyChange: TAppointmentItemCustomPropertyChange read FOnCustomPropertyChange write FOnCustomPropertyChange;
    property OnPropertyChange: TAppointmentItemPropertyChange read FOnPropertyChange write FOnPropertyChange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAppointmentItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAppointmentItemProperties = class(TPersistent)
  private
    FServer:    TAppointmentItem;
    function    GetDefaultInterface: _DAppointmentItem;
    constructor Create(AServer: TAppointmentItem);
  protected
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_AllDayEvent: WordBool;
    procedure Set_AllDayEvent(Param1: WordBool);
    function Get_BusyStatus: OlBusyStatus;
    procedure Set_BusyStatus(Param1: OlBusyStatus);
    function Get_Duration: Integer;
    procedure Set_Duration(Param1: Integer);
    function Get_End_: TDateTime;
    procedure Set_End_(Param1: TDateTime);
    function Get_IsRecurring: WordBool;
    function Get_Location: WideString;
    procedure Set_Location(const Param1: WideString);
    function Get_MeetingStatus: OlMeetingStatus;
    procedure Set_MeetingStatus(Param1: OlMeetingStatus);
    function Get_OptionalAttendees: WideString;
    procedure Set_OptionalAttendees(const Param1: WideString);
    function Get_Organizer: WideString;
    function Get_Recipients: Recipients;
    function Get_ReminderMinutesBeforeStart: Integer;
    procedure Set_ReminderMinutesBeforeStart(Param1: Integer);
    function Get_ReminderOverrideDefault: WordBool;
    procedure Set_ReminderOverrideDefault(Param1: WordBool);
    function Get_ReminderPlaySound: WordBool;
    procedure Set_ReminderPlaySound(Param1: WordBool);
    function Get_ReminderSet: WordBool;
    procedure Set_ReminderSet(Param1: WordBool);
    function Get_ReminderSoundFile: WideString;
    procedure Set_ReminderSoundFile(const Param1: WideString);
    function Get_ReplyTime: TDateTime;
    procedure Set_ReplyTime(Param1: TDateTime);
    function Get_RequiredAttendees: WideString;
    procedure Set_RequiredAttendees(const Param1: WideString);
    function Get_Resources: WideString;
    procedure Set_Resources(const Param1: WideString);
    function Get_ResponseRequested: WordBool;
    procedure Set_ResponseRequested(Param1: WordBool);
    function Get_ResponseStatus: OlResponseStatus;
    function Get_Start: TDateTime;
    procedure Set_Start(Param1: TDateTime);
  public
    property DefaultInterface: _DAppointmentItem read GetDefaultInterface;
  published
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property AllDayEvent: WordBool read Get_AllDayEvent write Set_AllDayEvent;
    property BusyStatus: OlBusyStatus read Get_BusyStatus write Set_BusyStatus;
    property Duration: Integer read Get_Duration write Set_Duration;
    property End_: TDateTime read Get_End_ write Set_End_;
    property Location: WideString read Get_Location write Set_Location;
    property MeetingStatus: OlMeetingStatus read Get_MeetingStatus write Set_MeetingStatus;
    property OptionalAttendees: WideString read Get_OptionalAttendees write Set_OptionalAttendees;
    property ReminderMinutesBeforeStart: Integer read Get_ReminderMinutesBeforeStart write Set_ReminderMinutesBeforeStart;
    property ReminderOverrideDefault: WordBool read Get_ReminderOverrideDefault write Set_ReminderOverrideDefault;
    property ReminderPlaySound: WordBool read Get_ReminderPlaySound write Set_ReminderPlaySound;
    property ReminderSet: WordBool read Get_ReminderSet write Set_ReminderSet;
    property ReminderSoundFile: WideString read Get_ReminderSoundFile write Set_ReminderSoundFile;
    property ReplyTime: TDateTime read Get_ReplyTime write Set_ReplyTime;
    property RequiredAttendees: WideString read Get_RequiredAttendees write Set_RequiredAttendees;
    property Resources: WideString read Get_Resources write Set_Resources;
    property ResponseRequested: WordBool read Get_ResponseRequested write Set_ResponseRequested;
    property Start: TDateTime read Get_Start write Set_Start;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoContactItem provides a Create and CreateRemote method to          
// create instances of the default interface _DContactItem exposed by              
// the CoClass ContactItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoContactItem = class
    class function Create: _DContactItem;
    class function CreateRemote(const MachineName: string): _DContactItem;
  end;

  TContactItemReply = procedure(ASender: TObject; const Response: IDispatch) of object;
  TContactItemReplyAll = procedure(ASender: TObject; const Response: IDispatch) of object;
  TContactItemForward = procedure(ASender: TObject; const Forward: IDispatch) of object;
  TContactItemCustomAction = procedure(ASender: TObject; const Action: IDispatch; 
                                                         const Response: IDispatch) of object;
  TContactItemCustomPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;
  TContactItemPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TContactItem
// Help String      : 
// Default Interface: _DContactItem
// Def. Intf. DISP? : Yes
// Event   Interface: _DItemEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TContactItemProperties= class;
{$ENDIF}
  TContactItem = class(TOleServer)
  private
    FOnRead: TNotifyEvent;
    FOnWrite: TNotifyEvent;
    FOnOpen: TNotifyEvent;
    FOnClose: TNotifyEvent;
    FOnSend: TNotifyEvent;
    FOnReply: TContactItemReply;
    FOnReplyAll: TContactItemReplyAll;
    FOnForward: TContactItemForward;
    FOnCustomAction: TContactItemCustomAction;
    FOnCustomPropertyChange: TContactItemCustomPropertyChange;
    FOnPropertyChange: TContactItemPropertyChange;
    FIntf:        _DContactItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TContactItemProperties;
    function      GetServerProperties: TContactItemProperties;
{$ENDIF}
    function      GetDefaultInterface: _DContactItem;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_Account: WideString;
    procedure Set_Account(const Param1: WideString);
    function Get_Anniversary: TDateTime;
    procedure Set_Anniversary(Param1: TDateTime);
    function Get_AssistantName: WideString;
    procedure Set_AssistantName(const Param1: WideString);
    function Get_AssistantTelephoneNumber: WideString;
    procedure Set_AssistantTelephoneNumber(const Param1: WideString);
    function Get_Birthday: TDateTime;
    procedure Set_Birthday(Param1: TDateTime);
    function Get_Business2TelephoneNumber: WideString;
    procedure Set_Business2TelephoneNumber(const Param1: WideString);
    function Get_BusinessAddress: WideString;
    procedure Set_BusinessAddress(const Param1: WideString);
    function Get_BusinessAddressCity: WideString;
    procedure Set_BusinessAddressCity(const Param1: WideString);
    function Get_BusinessAddressCountry: WideString;
    procedure Set_BusinessAddressCountry(const Param1: WideString);
    function Get_BusinessAddressPostalCode: WideString;
    procedure Set_BusinessAddressPostalCode(const Param1: WideString);
    function Get_BusinessAddressPostOfficeBox: WideString;
    procedure Set_BusinessAddressPostOfficeBox(const Param1: WideString);
    function Get_BusinessAddressState: WideString;
    procedure Set_BusinessAddressState(const Param1: WideString);
    function Get_BusinessAddressStreet: WideString;
    procedure Set_BusinessAddressStreet(const Param1: WideString);
    function Get_BusinessFaxNumber: WideString;
    procedure Set_BusinessFaxNumber(const Param1: WideString);
    function Get_BusinessHomePage: WideString;
    procedure Set_BusinessHomePage(const Param1: WideString);
    function Get_BusinessTelephoneNumber: WideString;
    procedure Set_BusinessTelephoneNumber(const Param1: WideString);
    function Get_CallbackTelephoneNumber: WideString;
    procedure Set_CallbackTelephoneNumber(const Param1: WideString);
    function Get_CarTelephoneNumber: WideString;
    procedure Set_CarTelephoneNumber(const Param1: WideString);
    function Get_Children: WideString;
    procedure Set_Children(const Param1: WideString);
    function Get_CompanyAndFullName: WideString;
    function Get_CompanyMainTelephoneNumber: WideString;
    procedure Set_CompanyMainTelephoneNumber(const Param1: WideString);
    function Get_CompanyName: WideString;
    procedure Set_CompanyName(const Param1: WideString);
    function Get_ComputerNetworkName: WideString;
    procedure Set_ComputerNetworkName(const Param1: WideString);
    function Get_CustomerID: WideString;
    procedure Set_CustomerID(const Param1: WideString);
    function Get_Department: WideString;
    procedure Set_Department(const Param1: WideString);
    function Get_Email1Address: WideString;
    procedure Set_Email1Address(const Param1: WideString);
    function Get_Email1AddressType: WideString;
    procedure Set_Email1AddressType(const Param1: WideString);
    function Get_Email1DisplayName: WideString;
    function Get_Email1EntryID: WideString;
    function Get_Email2Address: WideString;
    procedure Set_Email2Address(const Param1: WideString);
    function Get_Email2AddressType: WideString;
    procedure Set_Email2AddressType(const Param1: WideString);
    function Get_Email2DisplayName: WideString;
    function Get_Email2EntryID: WideString;
    function Get_Email3Address: WideString;
    procedure Set_Email3Address(const Param1: WideString);
    function Get_Email3AddressType: WideString;
    procedure Set_Email3AddressType(const Param1: WideString);
    function Get_Email3DisplayName: WideString;
    function Get_Email3EntryID: WideString;
    function Get_FileAs: WideString;
    procedure Set_FileAs(const Param1: WideString);
    function Get_FirstName: WideString;
    procedure Set_FirstName(const Param1: WideString);
    function Get_FTPSite: WideString;
    procedure Set_FTPSite(const Param1: WideString);
    function Get_FullName: WideString;
    procedure Set_FullName(const Param1: WideString);
    function Get_FullNameAndCompany: WideString;
    function Get_Gender: OlGender;
    procedure Set_Gender(Param1: OlGender);
    function Get_GovernmentIDNumber: WideString;
    procedure Set_GovernmentIDNumber(const Param1: WideString);
    function Get_Hobby: WideString;
    procedure Set_Hobby(const Param1: WideString);
    function Get_Home2TelephoneNumber: WideString;
    procedure Set_Home2TelephoneNumber(const Param1: WideString);
    function Get_HomeAddress: WideString;
    procedure Set_HomeAddress(const Param1: WideString);
    function Get_HomeAddressCity: WideString;
    procedure Set_HomeAddressCity(const Param1: WideString);
    function Get_HomeAddressCountry: WideString;
    procedure Set_HomeAddressCountry(const Param1: WideString);
    function Get_HomeAddressPostalCode: WideString;
    procedure Set_HomeAddressPostalCode(const Param1: WideString);
    function Get_HomeAddressPostOfficeBox: WideString;
    procedure Set_HomeAddressPostOfficeBox(const Param1: WideString);
    function Get_HomeAddressState: WideString;
    procedure Set_HomeAddressState(const Param1: WideString);
    function Get_HomeAddressStreet: WideString;
    procedure Set_HomeAddressStreet(const Param1: WideString);
    function Get_HomeFaxNumber: WideString;
    procedure Set_HomeFaxNumber(const Param1: WideString);
    function Get_HomeTelephoneNumber: WideString;
    procedure Set_HomeTelephoneNumber(const Param1: WideString);
    function Get_Initials: WideString;
    procedure Set_Initials(const Param1: WideString);
    function Get_ISDNNumber: WideString;
    procedure Set_ISDNNumber(const Param1: WideString);
    function Get_JobTitle: WideString;
    procedure Set_JobTitle(const Param1: WideString);
    function Get_Journal: WordBool;
    procedure Set_Journal(Param1: WordBool);
    function Get_Language: WideString;
    procedure Set_Language(const Param1: WideString);
    function Get_LastName: WideString;
    procedure Set_LastName(const Param1: WideString);
    function Get_LastNameAndFirstName: WideString;
    function Get_MailingAddress: WideString;
    procedure Set_MailingAddress(const Param1: WideString);
    function Get_MailingAddressCity: WideString;
    procedure Set_MailingAddressCity(const Param1: WideString);
    function Get_MailingAddressCountry: WideString;
    procedure Set_MailingAddressCountry(const Param1: WideString);
    function Get_MailingAddressPostalCode: WideString;
    procedure Set_MailingAddressPostalCode(const Param1: WideString);
    function Get_MailingAddressPostOfficeBox: WideString;
    procedure Set_MailingAddressPostOfficeBox(const Param1: WideString);
    function Get_MailingAddressState: WideString;
    procedure Set_MailingAddressState(const Param1: WideString);
    function Get_MailingAddressStreet: WideString;
    procedure Set_MailingAddressStreet(const Param1: WideString);
    function Get_ManagerName: WideString;
    procedure Set_ManagerName(const Param1: WideString);
    function Get_MiddleName: WideString;
    procedure Set_MiddleName(const Param1: WideString);
    function Get_MobileTelephoneNumber: WideString;
    procedure Set_MobileTelephoneNumber(const Param1: WideString);
    function Get_NickName: WideString;
    procedure Set_NickName(const Param1: WideString);
    function Get_OfficeLocation: WideString;
    procedure Set_OfficeLocation(const Param1: WideString);
    function Get_OrganizationalIDNumber: WideString;
    procedure Set_OrganizationalIDNumber(const Param1: WideString);
    function Get_OtherAddress: WideString;
    procedure Set_OtherAddress(const Param1: WideString);
    function Get_OtherAddressCity: WideString;
    procedure Set_OtherAddressCity(const Param1: WideString);
    function Get_OtherAddressCountry: WideString;
    procedure Set_OtherAddressCountry(const Param1: WideString);
    function Get_OtherAddressPostalCode: WideString;
    procedure Set_OtherAddressPostalCode(const Param1: WideString);
    function Get_OtherAddressPostOfficeBox: WideString;
    procedure Set_OtherAddressPostOfficeBox(const Param1: WideString);
    function Get_OtherAddressState: WideString;
    procedure Set_OtherAddressState(const Param1: WideString);
    function Get_OtherAddressStreet: WideString;
    procedure Set_OtherAddressStreet(const Param1: WideString);
    function Get_OtherFaxNumber: WideString;
    procedure Set_OtherFaxNumber(const Param1: WideString);
    function Get_OtherTelephoneNumber: WideString;
    procedure Set_OtherTelephoneNumber(const Param1: WideString);
    function Get_PagerNumber: WideString;
    procedure Set_PagerNumber(const Param1: WideString);
    function Get_PersonalHomePage: WideString;
    procedure Set_PersonalHomePage(const Param1: WideString);
    function Get_PrimaryTelephoneNumber: WideString;
    procedure Set_PrimaryTelephoneNumber(const Param1: WideString);
    function Get_Profession: WideString;
    procedure Set_Profession(const Param1: WideString);
    function Get_RadioTelephoneNumber: WideString;
    procedure Set_RadioTelephoneNumber(const Param1: WideString);
    function Get_ReferredBy: WideString;
    procedure Set_ReferredBy(const Param1: WideString);
    function Get_SelectedMailingAddress: OlMailingAddress;
    procedure Set_SelectedMailingAddress(Param1: OlMailingAddress);
    function Get_Spouse: WideString;
    procedure Set_Spouse(const Param1: WideString);
    function Get_Suffix: WideString;
    procedure Set_Suffix(const Param1: WideString);
    function Get_TelexNumber: WideString;
    procedure Set_TelexNumber(const Param1: WideString);
    function Get_Title: WideString;
    procedure Set_Title(const Param1: WideString);
    function Get_TTYTDDTelephoneNumber: WideString;
    procedure Set_TTYTDDTelephoneNumber(const Param1: WideString);
    function Get_User1: WideString;
    procedure Set_User1(const Param1: WideString);
    function Get_User2: WideString;
    procedure Set_User2(const Param1: WideString);
    function Get_User3: WideString;
    procedure Set_User3(const Param1: WideString);
    function Get_User4: WideString;
    procedure Set_User4(const Param1: WideString);
    function Get_UserCertificate: WideString;
    procedure Set_UserCertificate(const Param1: WideString);
    function Get_WebPage: WideString;
    procedure Set_WebPage(const Param1: WideString);
    function Get_YomiCompanyName: WideString;
    procedure Set_YomiCompanyName(const Param1: WideString);
    function Get_YomiFirstName: WideString;
    procedure Set_YomiFirstName(const Param1: WideString);
    function Get_YomiLastName: WideString;
    procedure Set_YomiLastName(const Param1: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DContactItem);
    procedure Disconnect; override;
    procedure Close(SaveMode: OlInspectorClose);
    function Copy: IDispatch;
    procedure Delete;
    procedure Display(Modal: OleVariant);
    function Move(const DestFldr: MAPIFolder): IDispatch;
    procedure Save;
    procedure SaveAs(const Path: WideString; Type_: OleVariant);
    procedure PrintOut;
    property DefaultInterface: _DContactItem read GetDefaultInterface;
    property Actions: Actions read Get_Actions;
    property Application: OutlookApplication read Get_Application;
    property Attachments: Attachments read Get_Attachments;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: Inspector read Get_GetInspector;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property OutlookInternalVersion: WideString read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Parent: IDispatch read Get_Parent;
    property Saved: WordBool read Get_Saved;
    property Size: Integer read Get_Size;
    property UserProperties: UserProperties read Get_UserProperties;
    property CompanyAndFullName: WideString read Get_CompanyAndFullName;
    property Email1DisplayName: WideString read Get_Email1DisplayName;
    property Email1EntryID: WideString read Get_Email1EntryID;
    property Email2DisplayName: WideString read Get_Email2DisplayName;
    property Email2EntryID: WideString read Get_Email2EntryID;
    property Email3DisplayName: WideString read Get_Email3DisplayName;
    property Email3EntryID: WideString read Get_Email3EntryID;
    property FullNameAndCompany: WideString read Get_FullNameAndCompany;
    property LastNameAndFirstName: WideString read Get_LastNameAndFirstName;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property Account: WideString read Get_Account write Set_Account;
    property Anniversary: TDateTime read Get_Anniversary write Set_Anniversary;
    property AssistantName: WideString read Get_AssistantName write Set_AssistantName;
    property AssistantTelephoneNumber: WideString read Get_AssistantTelephoneNumber write Set_AssistantTelephoneNumber;
    property Birthday: TDateTime read Get_Birthday write Set_Birthday;
    property Business2TelephoneNumber: WideString read Get_Business2TelephoneNumber write Set_Business2TelephoneNumber;
    property BusinessAddress: WideString read Get_BusinessAddress write Set_BusinessAddress;
    property BusinessAddressCity: WideString read Get_BusinessAddressCity write Set_BusinessAddressCity;
    property BusinessAddressCountry: WideString read Get_BusinessAddressCountry write Set_BusinessAddressCountry;
    property BusinessAddressPostalCode: WideString read Get_BusinessAddressPostalCode write Set_BusinessAddressPostalCode;
    property BusinessAddressPostOfficeBox: WideString read Get_BusinessAddressPostOfficeBox write Set_BusinessAddressPostOfficeBox;
    property BusinessAddressState: WideString read Get_BusinessAddressState write Set_BusinessAddressState;
    property BusinessAddressStreet: WideString read Get_BusinessAddressStreet write Set_BusinessAddressStreet;
    property BusinessFaxNumber: WideString read Get_BusinessFaxNumber write Set_BusinessFaxNumber;
    property BusinessHomePage: WideString read Get_BusinessHomePage write Set_BusinessHomePage;
    property BusinessTelephoneNumber: WideString read Get_BusinessTelephoneNumber write Set_BusinessTelephoneNumber;
    property CallbackTelephoneNumber: WideString read Get_CallbackTelephoneNumber write Set_CallbackTelephoneNumber;
    property CarTelephoneNumber: WideString read Get_CarTelephoneNumber write Set_CarTelephoneNumber;
    property Children: WideString read Get_Children write Set_Children;
    property CompanyMainTelephoneNumber: WideString read Get_CompanyMainTelephoneNumber write Set_CompanyMainTelephoneNumber;
    property CompanyName: WideString read Get_CompanyName write Set_CompanyName;
    property ComputerNetworkName: WideString read Get_ComputerNetworkName write Set_ComputerNetworkName;
    property CustomerID: WideString read Get_CustomerID write Set_CustomerID;
    property Department: WideString read Get_Department write Set_Department;
    property Email1Address: WideString read Get_Email1Address write Set_Email1Address;
    property Email1AddressType: WideString read Get_Email1AddressType write Set_Email1AddressType;
    property Email2Address: WideString read Get_Email2Address write Set_Email2Address;
    property Email2AddressType: WideString read Get_Email2AddressType write Set_Email2AddressType;
    property Email3Address: WideString read Get_Email3Address write Set_Email3Address;
    property Email3AddressType: WideString read Get_Email3AddressType write Set_Email3AddressType;
    property FileAs: WideString read Get_FileAs write Set_FileAs;
    property FirstName: WideString read Get_FirstName write Set_FirstName;
    property FTPSite: WideString read Get_FTPSite write Set_FTPSite;
    property FullName: WideString read Get_FullName write Set_FullName;
    property Gender: OlGender read Get_Gender write Set_Gender;
    property GovernmentIDNumber: WideString read Get_GovernmentIDNumber write Set_GovernmentIDNumber;
    property Hobby: WideString read Get_Hobby write Set_Hobby;
    property Home2TelephoneNumber: WideString read Get_Home2TelephoneNumber write Set_Home2TelephoneNumber;
    property HomeAddress: WideString read Get_HomeAddress write Set_HomeAddress;
    property HomeAddressCity: WideString read Get_HomeAddressCity write Set_HomeAddressCity;
    property HomeAddressCountry: WideString read Get_HomeAddressCountry write Set_HomeAddressCountry;
    property HomeAddressPostalCode: WideString read Get_HomeAddressPostalCode write Set_HomeAddressPostalCode;
    property HomeAddressPostOfficeBox: WideString read Get_HomeAddressPostOfficeBox write Set_HomeAddressPostOfficeBox;
    property HomeAddressState: WideString read Get_HomeAddressState write Set_HomeAddressState;
    property HomeAddressStreet: WideString read Get_HomeAddressStreet write Set_HomeAddressStreet;
    property HomeFaxNumber: WideString read Get_HomeFaxNumber write Set_HomeFaxNumber;
    property HomeTelephoneNumber: WideString read Get_HomeTelephoneNumber write Set_HomeTelephoneNumber;
    property Initials: WideString read Get_Initials write Set_Initials;
    property ISDNNumber: WideString read Get_ISDNNumber write Set_ISDNNumber;
    property JobTitle: WideString read Get_JobTitle write Set_JobTitle;
    property Journal: WordBool read Get_Journal write Set_Journal;
    property Language: WideString read Get_Language write Set_Language;
    property LastName: WideString read Get_LastName write Set_LastName;
    property MailingAddress: WideString read Get_MailingAddress write Set_MailingAddress;
    property MailingAddressCity: WideString read Get_MailingAddressCity write Set_MailingAddressCity;
    property MailingAddressCountry: WideString read Get_MailingAddressCountry write Set_MailingAddressCountry;
    property MailingAddressPostalCode: WideString read Get_MailingAddressPostalCode write Set_MailingAddressPostalCode;
    property MailingAddressPostOfficeBox: WideString read Get_MailingAddressPostOfficeBox write Set_MailingAddressPostOfficeBox;
    property MailingAddressState: WideString read Get_MailingAddressState write Set_MailingAddressState;
    property MailingAddressStreet: WideString read Get_MailingAddressStreet write Set_MailingAddressStreet;
    property ManagerName: WideString read Get_ManagerName write Set_ManagerName;
    property MiddleName: WideString read Get_MiddleName write Set_MiddleName;
    property MobileTelephoneNumber: WideString read Get_MobileTelephoneNumber write Set_MobileTelephoneNumber;
    property NickName: WideString read Get_NickName write Set_NickName;
    property OfficeLocation: WideString read Get_OfficeLocation write Set_OfficeLocation;
    property OrganizationalIDNumber: WideString read Get_OrganizationalIDNumber write Set_OrganizationalIDNumber;
    property OtherAddress: WideString read Get_OtherAddress write Set_OtherAddress;
    property OtherAddressCity: WideString read Get_OtherAddressCity write Set_OtherAddressCity;
    property OtherAddressCountry: WideString read Get_OtherAddressCountry write Set_OtherAddressCountry;
    property OtherAddressPostalCode: WideString read Get_OtherAddressPostalCode write Set_OtherAddressPostalCode;
    property OtherAddressPostOfficeBox: WideString read Get_OtherAddressPostOfficeBox write Set_OtherAddressPostOfficeBox;
    property OtherAddressState: WideString read Get_OtherAddressState write Set_OtherAddressState;
    property OtherAddressStreet: WideString read Get_OtherAddressStreet write Set_OtherAddressStreet;
    property OtherFaxNumber: WideString read Get_OtherFaxNumber write Set_OtherFaxNumber;
    property OtherTelephoneNumber: WideString read Get_OtherTelephoneNumber write Set_OtherTelephoneNumber;
    property PagerNumber: WideString read Get_PagerNumber write Set_PagerNumber;
    property PersonalHomePage: WideString read Get_PersonalHomePage write Set_PersonalHomePage;
    property PrimaryTelephoneNumber: WideString read Get_PrimaryTelephoneNumber write Set_PrimaryTelephoneNumber;
    property Profession: WideString read Get_Profession write Set_Profession;
    property RadioTelephoneNumber: WideString read Get_RadioTelephoneNumber write Set_RadioTelephoneNumber;
    property ReferredBy: WideString read Get_ReferredBy write Set_ReferredBy;
    property SelectedMailingAddress: OlMailingAddress read Get_SelectedMailingAddress write Set_SelectedMailingAddress;
    property Spouse: WideString read Get_Spouse write Set_Spouse;
    property Suffix: WideString read Get_Suffix write Set_Suffix;
    property TelexNumber: WideString read Get_TelexNumber write Set_TelexNumber;
    property Title: WideString read Get_Title write Set_Title;
    property TTYTDDTelephoneNumber: WideString read Get_TTYTDDTelephoneNumber write Set_TTYTDDTelephoneNumber;
    property User1: WideString read Get_User1 write Set_User1;
    property User2: WideString read Get_User2 write Set_User2;
    property User3: WideString read Get_User3 write Set_User3;
    property User4: WideString read Get_User4 write Set_User4;
    property UserCertificate: WideString read Get_UserCertificate write Set_UserCertificate;
    property WebPage: WideString read Get_WebPage write Set_WebPage;
    property YomiCompanyName: WideString read Get_YomiCompanyName write Set_YomiCompanyName;
    property YomiFirstName: WideString read Get_YomiFirstName write Set_YomiFirstName;
    property YomiLastName: WideString read Get_YomiLastName write Set_YomiLastName;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TContactItemProperties read GetServerProperties;
{$ENDIF}
    property OnRead: TNotifyEvent read FOnRead write FOnRead;
    property OnWrite: TNotifyEvent read FOnWrite write FOnWrite;
    property OnOpen: TNotifyEvent read FOnOpen write FOnOpen;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnSend: TNotifyEvent read FOnSend write FOnSend;
    property OnReply: TContactItemReply read FOnReply write FOnReply;
    property OnReplyAll: TContactItemReplyAll read FOnReplyAll write FOnReplyAll;
    property OnForward: TContactItemForward read FOnForward write FOnForward;
    property OnCustomAction: TContactItemCustomAction read FOnCustomAction write FOnCustomAction;
    property OnCustomPropertyChange: TContactItemCustomPropertyChange read FOnCustomPropertyChange write FOnCustomPropertyChange;
    property OnPropertyChange: TContactItemPropertyChange read FOnPropertyChange write FOnPropertyChange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TContactItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TContactItemProperties = class(TPersistent)
  private
    FServer:    TContactItem;
    function    GetDefaultInterface: _DContactItem;
    constructor Create(AServer: TContactItem);
  protected
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_Account: WideString;
    procedure Set_Account(const Param1: WideString);
    function Get_Anniversary: TDateTime;
    procedure Set_Anniversary(Param1: TDateTime);
    function Get_AssistantName: WideString;
    procedure Set_AssistantName(const Param1: WideString);
    function Get_AssistantTelephoneNumber: WideString;
    procedure Set_AssistantTelephoneNumber(const Param1: WideString);
    function Get_Birthday: TDateTime;
    procedure Set_Birthday(Param1: TDateTime);
    function Get_Business2TelephoneNumber: WideString;
    procedure Set_Business2TelephoneNumber(const Param1: WideString);
    function Get_BusinessAddress: WideString;
    procedure Set_BusinessAddress(const Param1: WideString);
    function Get_BusinessAddressCity: WideString;
    procedure Set_BusinessAddressCity(const Param1: WideString);
    function Get_BusinessAddressCountry: WideString;
    procedure Set_BusinessAddressCountry(const Param1: WideString);
    function Get_BusinessAddressPostalCode: WideString;
    procedure Set_BusinessAddressPostalCode(const Param1: WideString);
    function Get_BusinessAddressPostOfficeBox: WideString;
    procedure Set_BusinessAddressPostOfficeBox(const Param1: WideString);
    function Get_BusinessAddressState: WideString;
    procedure Set_BusinessAddressState(const Param1: WideString);
    function Get_BusinessAddressStreet: WideString;
    procedure Set_BusinessAddressStreet(const Param1: WideString);
    function Get_BusinessFaxNumber: WideString;
    procedure Set_BusinessFaxNumber(const Param1: WideString);
    function Get_BusinessHomePage: WideString;
    procedure Set_BusinessHomePage(const Param1: WideString);
    function Get_BusinessTelephoneNumber: WideString;
    procedure Set_BusinessTelephoneNumber(const Param1: WideString);
    function Get_CallbackTelephoneNumber: WideString;
    procedure Set_CallbackTelephoneNumber(const Param1: WideString);
    function Get_CarTelephoneNumber: WideString;
    procedure Set_CarTelephoneNumber(const Param1: WideString);
    function Get_Children: WideString;
    procedure Set_Children(const Param1: WideString);
    function Get_CompanyAndFullName: WideString;
    function Get_CompanyMainTelephoneNumber: WideString;
    procedure Set_CompanyMainTelephoneNumber(const Param1: WideString);
    function Get_CompanyName: WideString;
    procedure Set_CompanyName(const Param1: WideString);
    function Get_ComputerNetworkName: WideString;
    procedure Set_ComputerNetworkName(const Param1: WideString);
    function Get_CustomerID: WideString;
    procedure Set_CustomerID(const Param1: WideString);
    function Get_Department: WideString;
    procedure Set_Department(const Param1: WideString);
    function Get_Email1Address: WideString;
    procedure Set_Email1Address(const Param1: WideString);
    function Get_Email1AddressType: WideString;
    procedure Set_Email1AddressType(const Param1: WideString);
    function Get_Email1DisplayName: WideString;
    function Get_Email1EntryID: WideString;
    function Get_Email2Address: WideString;
    procedure Set_Email2Address(const Param1: WideString);
    function Get_Email2AddressType: WideString;
    procedure Set_Email2AddressType(const Param1: WideString);
    function Get_Email2DisplayName: WideString;
    function Get_Email2EntryID: WideString;
    function Get_Email3Address: WideString;
    procedure Set_Email3Address(const Param1: WideString);
    function Get_Email3AddressType: WideString;
    procedure Set_Email3AddressType(const Param1: WideString);
    function Get_Email3DisplayName: WideString;
    function Get_Email3EntryID: WideString;
    function Get_FileAs: WideString;
    procedure Set_FileAs(const Param1: WideString);
    function Get_FirstName: WideString;
    procedure Set_FirstName(const Param1: WideString);
    function Get_FTPSite: WideString;
    procedure Set_FTPSite(const Param1: WideString);
    function Get_FullName: WideString;
    procedure Set_FullName(const Param1: WideString);
    function Get_FullNameAndCompany: WideString;
    function Get_Gender: OlGender;
    procedure Set_Gender(Param1: OlGender);
    function Get_GovernmentIDNumber: WideString;
    procedure Set_GovernmentIDNumber(const Param1: WideString);
    function Get_Hobby: WideString;
    procedure Set_Hobby(const Param1: WideString);
    function Get_Home2TelephoneNumber: WideString;
    procedure Set_Home2TelephoneNumber(const Param1: WideString);
    function Get_HomeAddress: WideString;
    procedure Set_HomeAddress(const Param1: WideString);
    function Get_HomeAddressCity: WideString;
    procedure Set_HomeAddressCity(const Param1: WideString);
    function Get_HomeAddressCountry: WideString;
    procedure Set_HomeAddressCountry(const Param1: WideString);
    function Get_HomeAddressPostalCode: WideString;
    procedure Set_HomeAddressPostalCode(const Param1: WideString);
    function Get_HomeAddressPostOfficeBox: WideString;
    procedure Set_HomeAddressPostOfficeBox(const Param1: WideString);
    function Get_HomeAddressState: WideString;
    procedure Set_HomeAddressState(const Param1: WideString);
    function Get_HomeAddressStreet: WideString;
    procedure Set_HomeAddressStreet(const Param1: WideString);
    function Get_HomeFaxNumber: WideString;
    procedure Set_HomeFaxNumber(const Param1: WideString);
    function Get_HomeTelephoneNumber: WideString;
    procedure Set_HomeTelephoneNumber(const Param1: WideString);
    function Get_Initials: WideString;
    procedure Set_Initials(const Param1: WideString);
    function Get_ISDNNumber: WideString;
    procedure Set_ISDNNumber(const Param1: WideString);
    function Get_JobTitle: WideString;
    procedure Set_JobTitle(const Param1: WideString);
    function Get_Journal: WordBool;
    procedure Set_Journal(Param1: WordBool);
    function Get_Language: WideString;
    procedure Set_Language(const Param1: WideString);
    function Get_LastName: WideString;
    procedure Set_LastName(const Param1: WideString);
    function Get_LastNameAndFirstName: WideString;
    function Get_MailingAddress: WideString;
    procedure Set_MailingAddress(const Param1: WideString);
    function Get_MailingAddressCity: WideString;
    procedure Set_MailingAddressCity(const Param1: WideString);
    function Get_MailingAddressCountry: WideString;
    procedure Set_MailingAddressCountry(const Param1: WideString);
    function Get_MailingAddressPostalCode: WideString;
    procedure Set_MailingAddressPostalCode(const Param1: WideString);
    function Get_MailingAddressPostOfficeBox: WideString;
    procedure Set_MailingAddressPostOfficeBox(const Param1: WideString);
    function Get_MailingAddressState: WideString;
    procedure Set_MailingAddressState(const Param1: WideString);
    function Get_MailingAddressStreet: WideString;
    procedure Set_MailingAddressStreet(const Param1: WideString);
    function Get_ManagerName: WideString;
    procedure Set_ManagerName(const Param1: WideString);
    function Get_MiddleName: WideString;
    procedure Set_MiddleName(const Param1: WideString);
    function Get_MobileTelephoneNumber: WideString;
    procedure Set_MobileTelephoneNumber(const Param1: WideString);
    function Get_NickName: WideString;
    procedure Set_NickName(const Param1: WideString);
    function Get_OfficeLocation: WideString;
    procedure Set_OfficeLocation(const Param1: WideString);
    function Get_OrganizationalIDNumber: WideString;
    procedure Set_OrganizationalIDNumber(const Param1: WideString);
    function Get_OtherAddress: WideString;
    procedure Set_OtherAddress(const Param1: WideString);
    function Get_OtherAddressCity: WideString;
    procedure Set_OtherAddressCity(const Param1: WideString);
    function Get_OtherAddressCountry: WideString;
    procedure Set_OtherAddressCountry(const Param1: WideString);
    function Get_OtherAddressPostalCode: WideString;
    procedure Set_OtherAddressPostalCode(const Param1: WideString);
    function Get_OtherAddressPostOfficeBox: WideString;
    procedure Set_OtherAddressPostOfficeBox(const Param1: WideString);
    function Get_OtherAddressState: WideString;
    procedure Set_OtherAddressState(const Param1: WideString);
    function Get_OtherAddressStreet: WideString;
    procedure Set_OtherAddressStreet(const Param1: WideString);
    function Get_OtherFaxNumber: WideString;
    procedure Set_OtherFaxNumber(const Param1: WideString);
    function Get_OtherTelephoneNumber: WideString;
    procedure Set_OtherTelephoneNumber(const Param1: WideString);
    function Get_PagerNumber: WideString;
    procedure Set_PagerNumber(const Param1: WideString);
    function Get_PersonalHomePage: WideString;
    procedure Set_PersonalHomePage(const Param1: WideString);
    function Get_PrimaryTelephoneNumber: WideString;
    procedure Set_PrimaryTelephoneNumber(const Param1: WideString);
    function Get_Profession: WideString;
    procedure Set_Profession(const Param1: WideString);
    function Get_RadioTelephoneNumber: WideString;
    procedure Set_RadioTelephoneNumber(const Param1: WideString);
    function Get_ReferredBy: WideString;
    procedure Set_ReferredBy(const Param1: WideString);
    function Get_SelectedMailingAddress: OlMailingAddress;
    procedure Set_SelectedMailingAddress(Param1: OlMailingAddress);
    function Get_Spouse: WideString;
    procedure Set_Spouse(const Param1: WideString);
    function Get_Suffix: WideString;
    procedure Set_Suffix(const Param1: WideString);
    function Get_TelexNumber: WideString;
    procedure Set_TelexNumber(const Param1: WideString);
    function Get_Title: WideString;
    procedure Set_Title(const Param1: WideString);
    function Get_TTYTDDTelephoneNumber: WideString;
    procedure Set_TTYTDDTelephoneNumber(const Param1: WideString);
    function Get_User1: WideString;
    procedure Set_User1(const Param1: WideString);
    function Get_User2: WideString;
    procedure Set_User2(const Param1: WideString);
    function Get_User3: WideString;
    procedure Set_User3(const Param1: WideString);
    function Get_User4: WideString;
    procedure Set_User4(const Param1: WideString);
    function Get_UserCertificate: WideString;
    procedure Set_UserCertificate(const Param1: WideString);
    function Get_WebPage: WideString;
    procedure Set_WebPage(const Param1: WideString);
    function Get_YomiCompanyName: WideString;
    procedure Set_YomiCompanyName(const Param1: WideString);
    function Get_YomiFirstName: WideString;
    procedure Set_YomiFirstName(const Param1: WideString);
    function Get_YomiLastName: WideString;
    procedure Set_YomiLastName(const Param1: WideString);
  public
    property DefaultInterface: _DContactItem read GetDefaultInterface;
  published
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property Account: WideString read Get_Account write Set_Account;
    property Anniversary: TDateTime read Get_Anniversary write Set_Anniversary;
    property AssistantName: WideString read Get_AssistantName write Set_AssistantName;
    property AssistantTelephoneNumber: WideString read Get_AssistantTelephoneNumber write Set_AssistantTelephoneNumber;
    property Birthday: TDateTime read Get_Birthday write Set_Birthday;
    property Business2TelephoneNumber: WideString read Get_Business2TelephoneNumber write Set_Business2TelephoneNumber;
    property BusinessAddress: WideString read Get_BusinessAddress write Set_BusinessAddress;
    property BusinessAddressCity: WideString read Get_BusinessAddressCity write Set_BusinessAddressCity;
    property BusinessAddressCountry: WideString read Get_BusinessAddressCountry write Set_BusinessAddressCountry;
    property BusinessAddressPostalCode: WideString read Get_BusinessAddressPostalCode write Set_BusinessAddressPostalCode;
    property BusinessAddressPostOfficeBox: WideString read Get_BusinessAddressPostOfficeBox write Set_BusinessAddressPostOfficeBox;
    property BusinessAddressState: WideString read Get_BusinessAddressState write Set_BusinessAddressState;
    property BusinessAddressStreet: WideString read Get_BusinessAddressStreet write Set_BusinessAddressStreet;
    property BusinessFaxNumber: WideString read Get_BusinessFaxNumber write Set_BusinessFaxNumber;
    property BusinessHomePage: WideString read Get_BusinessHomePage write Set_BusinessHomePage;
    property BusinessTelephoneNumber: WideString read Get_BusinessTelephoneNumber write Set_BusinessTelephoneNumber;
    property CallbackTelephoneNumber: WideString read Get_CallbackTelephoneNumber write Set_CallbackTelephoneNumber;
    property CarTelephoneNumber: WideString read Get_CarTelephoneNumber write Set_CarTelephoneNumber;
    property Children: WideString read Get_Children write Set_Children;
    property CompanyMainTelephoneNumber: WideString read Get_CompanyMainTelephoneNumber write Set_CompanyMainTelephoneNumber;
    property CompanyName: WideString read Get_CompanyName write Set_CompanyName;
    property ComputerNetworkName: WideString read Get_ComputerNetworkName write Set_ComputerNetworkName;
    property CustomerID: WideString read Get_CustomerID write Set_CustomerID;
    property Department: WideString read Get_Department write Set_Department;
    property Email1Address: WideString read Get_Email1Address write Set_Email1Address;
    property Email1AddressType: WideString read Get_Email1AddressType write Set_Email1AddressType;
    property Email2Address: WideString read Get_Email2Address write Set_Email2Address;
    property Email2AddressType: WideString read Get_Email2AddressType write Set_Email2AddressType;
    property Email3Address: WideString read Get_Email3Address write Set_Email3Address;
    property Email3AddressType: WideString read Get_Email3AddressType write Set_Email3AddressType;
    property FileAs: WideString read Get_FileAs write Set_FileAs;
    property FirstName: WideString read Get_FirstName write Set_FirstName;
    property FTPSite: WideString read Get_FTPSite write Set_FTPSite;
    property FullName: WideString read Get_FullName write Set_FullName;
    property Gender: OlGender read Get_Gender write Set_Gender;
    property GovernmentIDNumber: WideString read Get_GovernmentIDNumber write Set_GovernmentIDNumber;
    property Hobby: WideString read Get_Hobby write Set_Hobby;
    property Home2TelephoneNumber: WideString read Get_Home2TelephoneNumber write Set_Home2TelephoneNumber;
    property HomeAddress: WideString read Get_HomeAddress write Set_HomeAddress;
    property HomeAddressCity: WideString read Get_HomeAddressCity write Set_HomeAddressCity;
    property HomeAddressCountry: WideString read Get_HomeAddressCountry write Set_HomeAddressCountry;
    property HomeAddressPostalCode: WideString read Get_HomeAddressPostalCode write Set_HomeAddressPostalCode;
    property HomeAddressPostOfficeBox: WideString read Get_HomeAddressPostOfficeBox write Set_HomeAddressPostOfficeBox;
    property HomeAddressState: WideString read Get_HomeAddressState write Set_HomeAddressState;
    property HomeAddressStreet: WideString read Get_HomeAddressStreet write Set_HomeAddressStreet;
    property HomeFaxNumber: WideString read Get_HomeFaxNumber write Set_HomeFaxNumber;
    property HomeTelephoneNumber: WideString read Get_HomeTelephoneNumber write Set_HomeTelephoneNumber;
    property Initials: WideString read Get_Initials write Set_Initials;
    property ISDNNumber: WideString read Get_ISDNNumber write Set_ISDNNumber;
    property JobTitle: WideString read Get_JobTitle write Set_JobTitle;
    property Journal: WordBool read Get_Journal write Set_Journal;
    property Language: WideString read Get_Language write Set_Language;
    property LastName: WideString read Get_LastName write Set_LastName;
    property MailingAddress: WideString read Get_MailingAddress write Set_MailingAddress;
    property MailingAddressCity: WideString read Get_MailingAddressCity write Set_MailingAddressCity;
    property MailingAddressCountry: WideString read Get_MailingAddressCountry write Set_MailingAddressCountry;
    property MailingAddressPostalCode: WideString read Get_MailingAddressPostalCode write Set_MailingAddressPostalCode;
    property MailingAddressPostOfficeBox: WideString read Get_MailingAddressPostOfficeBox write Set_MailingAddressPostOfficeBox;
    property MailingAddressState: WideString read Get_MailingAddressState write Set_MailingAddressState;
    property MailingAddressStreet: WideString read Get_MailingAddressStreet write Set_MailingAddressStreet;
    property ManagerName: WideString read Get_ManagerName write Set_ManagerName;
    property MiddleName: WideString read Get_MiddleName write Set_MiddleName;
    property MobileTelephoneNumber: WideString read Get_MobileTelephoneNumber write Set_MobileTelephoneNumber;
    property NickName: WideString read Get_NickName write Set_NickName;
    property OfficeLocation: WideString read Get_OfficeLocation write Set_OfficeLocation;
    property OrganizationalIDNumber: WideString read Get_OrganizationalIDNumber write Set_OrganizationalIDNumber;
    property OtherAddress: WideString read Get_OtherAddress write Set_OtherAddress;
    property OtherAddressCity: WideString read Get_OtherAddressCity write Set_OtherAddressCity;
    property OtherAddressCountry: WideString read Get_OtherAddressCountry write Set_OtherAddressCountry;
    property OtherAddressPostalCode: WideString read Get_OtherAddressPostalCode write Set_OtherAddressPostalCode;
    property OtherAddressPostOfficeBox: WideString read Get_OtherAddressPostOfficeBox write Set_OtherAddressPostOfficeBox;
    property OtherAddressState: WideString read Get_OtherAddressState write Set_OtherAddressState;
    property OtherAddressStreet: WideString read Get_OtherAddressStreet write Set_OtherAddressStreet;
    property OtherFaxNumber: WideString read Get_OtherFaxNumber write Set_OtherFaxNumber;
    property OtherTelephoneNumber: WideString read Get_OtherTelephoneNumber write Set_OtherTelephoneNumber;
    property PagerNumber: WideString read Get_PagerNumber write Set_PagerNumber;
    property PersonalHomePage: WideString read Get_PersonalHomePage write Set_PersonalHomePage;
    property PrimaryTelephoneNumber: WideString read Get_PrimaryTelephoneNumber write Set_PrimaryTelephoneNumber;
    property Profession: WideString read Get_Profession write Set_Profession;
    property RadioTelephoneNumber: WideString read Get_RadioTelephoneNumber write Set_RadioTelephoneNumber;
    property ReferredBy: WideString read Get_ReferredBy write Set_ReferredBy;
    property SelectedMailingAddress: OlMailingAddress read Get_SelectedMailingAddress write Set_SelectedMailingAddress;
    property Spouse: WideString read Get_Spouse write Set_Spouse;
    property Suffix: WideString read Get_Suffix write Set_Suffix;
    property TelexNumber: WideString read Get_TelexNumber write Set_TelexNumber;
    property Title: WideString read Get_Title write Set_Title;
    property TTYTDDTelephoneNumber: WideString read Get_TTYTDDTelephoneNumber write Set_TTYTDDTelephoneNumber;
    property User1: WideString read Get_User1 write Set_User1;
    property User2: WideString read Get_User2 write Set_User2;
    property User3: WideString read Get_User3 write Set_User3;
    property User4: WideString read Get_User4 write Set_User4;
    property UserCertificate: WideString read Get_UserCertificate write Set_UserCertificate;
    property WebPage: WideString read Get_WebPage write Set_WebPage;
    property YomiCompanyName: WideString read Get_YomiCompanyName write Set_YomiCompanyName;
    property YomiFirstName: WideString read Get_YomiFirstName write Set_YomiFirstName;
    property YomiLastName: WideString read Get_YomiLastName write Set_YomiLastName;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoJournalItem provides a Create and CreateRemote method to          
// create instances of the default interface _DJournalItem exposed by              
// the CoClass JournalItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoJournalItem = class
    class function Create: _DJournalItem;
    class function CreateRemote(const MachineName: string): _DJournalItem;
  end;

  TJournalItemReply = procedure(ASender: TObject; const Response: IDispatch) of object;
  TJournalItemReplyAll = procedure(ASender: TObject; const Response: IDispatch) of object;
  TJournalItemForward = procedure(ASender: TObject; const Forward: IDispatch) of object;
  TJournalItemCustomAction = procedure(ASender: TObject; const Action: IDispatch; 
                                                         const Response: IDispatch) of object;
  TJournalItemCustomPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;
  TJournalItemPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TJournalItem
// Help String      : 
// Default Interface: _DJournalItem
// Def. Intf. DISP? : Yes
// Event   Interface: _DItemEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TJournalItemProperties= class;
{$ENDIF}
  TJournalItem = class(TOleServer)
  private
    FOnRead: TNotifyEvent;
    FOnWrite: TNotifyEvent;
    FOnOpen: TNotifyEvent;
    FOnClose: TNotifyEvent;
    FOnSend: TNotifyEvent;
    FOnReply: TJournalItemReply;
    FOnReplyAll: TJournalItemReplyAll;
    FOnForward: TJournalItemForward;
    FOnCustomAction: TJournalItemCustomAction;
    FOnCustomPropertyChange: TJournalItemCustomPropertyChange;
    FOnPropertyChange: TJournalItemPropertyChange;
    FIntf:        _DJournalItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TJournalItemProperties;
    function      GetServerProperties: TJournalItemProperties;
{$ENDIF}
    function      GetDefaultInterface: _DJournalItem;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_ContactNames: WideString;
    procedure Set_ContactNames(const Param1: WideString);
    function Get_DocPosted: WordBool;
    procedure Set_DocPosted(Param1: WordBool);
    function Get_DocPrinted: WordBool;
    procedure Set_DocPrinted(Param1: WordBool);
    function Get_DocRouted: WordBool;
    procedure Set_DocRouted(Param1: WordBool);
    function Get_DocSaved: WordBool;
    procedure Set_DocSaved(Param1: WordBool);
    function Get_Duration: Integer;
    procedure Set_Duration(Param1: Integer);
    function Get_End_: TDateTime;
    procedure Set_End_(Param1: TDateTime);
    function Get_Recipients: Recipients;
    function Get_Start: TDateTime;
    procedure Set_Start(Param1: TDateTime);
    function Get_type_: WideString;
    procedure Set_type_(const Param1: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DJournalItem);
    procedure Disconnect; override;
    procedure Close(SaveMode: OlInspectorClose);
    function Copy: IDispatch;
    procedure Delete;
    procedure Display(Modal: OleVariant);
    function Move(const DestFldr: MAPIFolder): IDispatch;
    procedure Save;
    procedure SaveAs(const Path: WideString; Type_: OleVariant);
    procedure PrintOut;
    function Forward: MailItem;
    function Reply: MailItem;
    function ReplyAll: MailItem;
    procedure StartTimer;
    procedure StopTimer;
    property DefaultInterface: _DJournalItem read GetDefaultInterface;
    property Actions: Actions read Get_Actions;
    property Application: OutlookApplication read Get_Application;
    property Attachments: Attachments read Get_Attachments;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: Inspector read Get_GetInspector;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property OutlookInternalVersion: WideString read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Parent: IDispatch read Get_Parent;
    property Saved: WordBool read Get_Saved;
    property Size: Integer read Get_Size;
    property UserProperties: UserProperties read Get_UserProperties;
    property Recipients: Recipients read Get_Recipients;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property ContactNames: WideString read Get_ContactNames write Set_ContactNames;
    property DocPosted: WordBool read Get_DocPosted write Set_DocPosted;
    property DocPrinted: WordBool read Get_DocPrinted write Set_DocPrinted;
    property DocRouted: WordBool read Get_DocRouted write Set_DocRouted;
    property DocSaved: WordBool read Get_DocSaved write Set_DocSaved;
    property Duration: Integer read Get_Duration write Set_Duration;
    property End_: TDateTime read Get_End_ write Set_End_;
    property Start: TDateTime read Get_Start write Set_Start;
    property type_: WideString read Get_type_ write Set_type_;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TJournalItemProperties read GetServerProperties;
{$ENDIF}
    property OnRead: TNotifyEvent read FOnRead write FOnRead;
    property OnWrite: TNotifyEvent read FOnWrite write FOnWrite;
    property OnOpen: TNotifyEvent read FOnOpen write FOnOpen;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnSend: TNotifyEvent read FOnSend write FOnSend;
    property OnReply: TJournalItemReply read FOnReply write FOnReply;
    property OnReplyAll: TJournalItemReplyAll read FOnReplyAll write FOnReplyAll;
    property OnForward: TJournalItemForward read FOnForward write FOnForward;
    property OnCustomAction: TJournalItemCustomAction read FOnCustomAction write FOnCustomAction;
    property OnCustomPropertyChange: TJournalItemCustomPropertyChange read FOnCustomPropertyChange write FOnCustomPropertyChange;
    property OnPropertyChange: TJournalItemPropertyChange read FOnPropertyChange write FOnPropertyChange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TJournalItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TJournalItemProperties = class(TPersistent)
  private
    FServer:    TJournalItem;
    function    GetDefaultInterface: _DJournalItem;
    constructor Create(AServer: TJournalItem);
  protected
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_ContactNames: WideString;
    procedure Set_ContactNames(const Param1: WideString);
    function Get_DocPosted: WordBool;
    procedure Set_DocPosted(Param1: WordBool);
    function Get_DocPrinted: WordBool;
    procedure Set_DocPrinted(Param1: WordBool);
    function Get_DocRouted: WordBool;
    procedure Set_DocRouted(Param1: WordBool);
    function Get_DocSaved: WordBool;
    procedure Set_DocSaved(Param1: WordBool);
    function Get_Duration: Integer;
    procedure Set_Duration(Param1: Integer);
    function Get_End_: TDateTime;
    procedure Set_End_(Param1: TDateTime);
    function Get_Recipients: Recipients;
    function Get_Start: TDateTime;
    procedure Set_Start(Param1: TDateTime);
    function Get_type_: WideString;
    procedure Set_type_(const Param1: WideString);
  public
    property DefaultInterface: _DJournalItem read GetDefaultInterface;
  published
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property ContactNames: WideString read Get_ContactNames write Set_ContactNames;
    property DocPosted: WordBool read Get_DocPosted write Set_DocPosted;
    property DocPrinted: WordBool read Get_DocPrinted write Set_DocPrinted;
    property DocRouted: WordBool read Get_DocRouted write Set_DocRouted;
    property DocSaved: WordBool read Get_DocSaved write Set_DocSaved;
    property Duration: Integer read Get_Duration write Set_Duration;
    property End_: TDateTime read Get_End_ write Set_End_;
    property Start: TDateTime read Get_Start write Set_Start;
    property type_: WideString read Get_type_ write Set_type_;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMailItem provides a Create and CreateRemote method to          
// create instances of the default interface _DMailItem exposed by              
// the CoClass MailItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMailItem = class
    class function Create: _DMailItem;
    class function CreateRemote(const MachineName: string): _DMailItem;
  end;

  TMailItemReply = procedure(ASender: TObject; const Response: IDispatch) of object;
  TMailItemReplyAll = procedure(ASender: TObject; const Response: IDispatch) of object;
  TMailItemForward = procedure(ASender: TObject; const Forward: IDispatch) of object;
  TMailItemCustomAction = procedure(ASender: TObject; const Action: IDispatch; 
                                                      const Response: IDispatch) of object;
  TMailItemCustomPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;
  TMailItemPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMailItem
// Help String      : 
// Default Interface: _DMailItem
// Def. Intf. DISP? : Yes
// Event   Interface: _DItemEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMailItemProperties= class;
{$ENDIF}
  TMailItem = class(TOleServer)
  private
    FOnRead: TNotifyEvent;
    FOnWrite: TNotifyEvent;
    FOnOpen: TNotifyEvent;
    FOnClose: TNotifyEvent;
    FOnSend: TNotifyEvent;
    FOnReply: TMailItemReply;
    FOnReplyAll: TMailItemReplyAll;
    FOnForward: TMailItemForward;
    FOnCustomAction: TMailItemCustomAction;
    FOnCustomPropertyChange: TMailItemCustomPropertyChange;
    FOnPropertyChange: TMailItemPropertyChange;
    FIntf:        _DMailItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMailItemProperties;
    function      GetServerProperties: TMailItemProperties;
{$ENDIF}
    function      GetDefaultInterface: _DMailItem;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_AlternateRecipientAllowed: WordBool;
    procedure Set_AlternateRecipientAllowed(Param1: WordBool);
    function Get_AutoForwarded: WordBool;
    procedure Set_AutoForwarded(Param1: WordBool);
    function Get_BCC: WideString;
    procedure Set_BCC(const Param1: WideString);
    function Get_CC: WideString;
    procedure Set_CC(const Param1: WideString);
    function Get_ConversationIndex: WideString;
    function Get_ConversationTopic: WideString;
    function Get_DeferredDeliveryTime: TDateTime;
    procedure Set_DeferredDeliveryTime(Param1: TDateTime);
    function Get_DeleteAfterSubmit: WordBool;
    procedure Set_DeleteAfterSubmit(Param1: WordBool);
    function Get_ExpiryTime: TDateTime;
    procedure Set_ExpiryTime(Param1: TDateTime);
    function Get_FlagDueBy: TDateTime;
    procedure Set_FlagDueBy(Param1: TDateTime);
    function Get_FlagRequest: WideString;
    procedure Set_FlagRequest(const Param1: WideString);
    function Get_FlagStatus: OlFlagStatus;
    procedure Set_FlagStatus(Param1: OlFlagStatus);
    function Get_OriginatorDeliveryReportRequested: WordBool;
    procedure Set_OriginatorDeliveryReportRequested(Param1: WordBool);
    function Get_ReadReceiptRequested: WordBool;
    procedure Set_ReadReceiptRequested(Param1: WordBool);
    function Get_ReceivedByEntryID: WideString;
    function Get_ReceivedByName: WideString;
    function Get_ReceivedOnBehalfOfEntryID: WideString;
    function Get_ReceivedOnBehalfOfName: WideString;
    function Get_ReceivedTime: TDateTime;
    function Get_RecipientReassignmentProhibited: WordBool;
    procedure Set_RecipientReassignmentProhibited(Param1: WordBool);
    function Get_Recipients: Recipients;
    function Get_ReminderOverrideDefault: WordBool;
    procedure Set_ReminderOverrideDefault(Param1: WordBool);
    function Get_ReminderPlaySound: WordBool;
    procedure Set_ReminderPlaySound(Param1: WordBool);
    function Get_ReminderSet: WordBool;
    procedure Set_ReminderSet(Param1: WordBool);
    function Get_ReminderSoundFile: WideString;
    procedure Set_ReminderSoundFile(const Param1: WideString);
    function Get_ReminderTime: TDateTime;
    procedure Set_ReminderTime(Param1: TDateTime);
    function Get_RemoteStatus: OlRemoteStatus;
    function Get_ReplyRecipientNames: WideString;
    function Get_ReplyRecipients: Recipients;
    function Get_SaveSentMessageFolder: MAPIFolder;
    procedure _Set_SaveSentMessageFolder(const Param1: MAPIFolder);
    function Get_SenderName: WideString;
    function Get_SentOn: TDateTime;
    function Get_SentOnBehalfOfName: WideString;
    procedure Set_SentOnBehalfOfName(const Param1: WideString);
    function Get_To_: WideString;
    procedure Set_To_(const Param1: WideString);
    function Get_VotingOptions: WideString;
    procedure Set_VotingOptions(const Param1: WideString);
    function Get_VotingResponse: WideString;
    procedure Set_VotingResponse(const Param1: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DMailItem);
    procedure Disconnect; override;
    procedure Close(SaveMode: OlInspectorClose);
    function Copy: IDispatch;
    procedure Delete;
    procedure Display(Modal: OleVariant);
    function Move(const DestFldr: MAPIFolder): IDispatch;
    procedure Save;
    procedure SaveAs(const Path: WideString; Type_: OleVariant);
    procedure PrintOut;
    procedure ClearConversationIndex;
    function Forward: MailItem;
    function Reply: MailItem;
    function ReplyAll: MailItem;
    procedure Send;
    property DefaultInterface: _DMailItem read GetDefaultInterface;
    property Actions: Actions read Get_Actions;
    property Application: OutlookApplication read Get_Application;
    property Attachments: Attachments read Get_Attachments;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: Inspector read Get_GetInspector;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property OutlookInternalVersion: WideString read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Parent: IDispatch read Get_Parent;
    property Saved: WordBool read Get_Saved;
    property Size: Integer read Get_Size;
    property UserProperties: UserProperties read Get_UserProperties;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property ReceivedByEntryID: WideString read Get_ReceivedByEntryID;
    property ReceivedByName: WideString read Get_ReceivedByName;
    property ReceivedOnBehalfOfEntryID: WideString read Get_ReceivedOnBehalfOfEntryID;
    property ReceivedOnBehalfOfName: WideString read Get_ReceivedOnBehalfOfName;
    property ReceivedTime: TDateTime read Get_ReceivedTime;
    property Recipients: Recipients read Get_Recipients;
    property RemoteStatus: OlRemoteStatus read Get_RemoteStatus;
    property ReplyRecipientNames: WideString read Get_ReplyRecipientNames;
    property ReplyRecipients: Recipients read Get_ReplyRecipients;
    property SaveSentMessageFolder: MAPIFolder read Get_SaveSentMessageFolder;
    property SenderName: WideString read Get_SenderName;
    property SentOn: TDateTime read Get_SentOn;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property AlternateRecipientAllowed: WordBool read Get_AlternateRecipientAllowed write Set_AlternateRecipientAllowed;
    property AutoForwarded: WordBool read Get_AutoForwarded write Set_AutoForwarded;
    property BCC: WideString read Get_BCC write Set_BCC;
    property CC: WideString read Get_CC write Set_CC;
    property DeferredDeliveryTime: TDateTime read Get_DeferredDeliveryTime write Set_DeferredDeliveryTime;
    property DeleteAfterSubmit: WordBool read Get_DeleteAfterSubmit write Set_DeleteAfterSubmit;
    property ExpiryTime: TDateTime read Get_ExpiryTime write Set_ExpiryTime;
    property FlagDueBy: TDateTime read Get_FlagDueBy write Set_FlagDueBy;
    property FlagRequest: WideString read Get_FlagRequest write Set_FlagRequest;
    property FlagStatus: OlFlagStatus read Get_FlagStatus write Set_FlagStatus;
    property OriginatorDeliveryReportRequested: WordBool read Get_OriginatorDeliveryReportRequested write Set_OriginatorDeliveryReportRequested;
    property ReadReceiptRequested: WordBool read Get_ReadReceiptRequested write Set_ReadReceiptRequested;
    property RecipientReassignmentProhibited: WordBool read Get_RecipientReassignmentProhibited write Set_RecipientReassignmentProhibited;
    property ReminderOverrideDefault: WordBool read Get_ReminderOverrideDefault write Set_ReminderOverrideDefault;
    property ReminderPlaySound: WordBool read Get_ReminderPlaySound write Set_ReminderPlaySound;
    property ReminderSet: WordBool read Get_ReminderSet write Set_ReminderSet;
    property ReminderSoundFile: WideString read Get_ReminderSoundFile write Set_ReminderSoundFile;
    property ReminderTime: TDateTime read Get_ReminderTime write Set_ReminderTime;
    property SentOnBehalfOfName: WideString read Get_SentOnBehalfOfName write Set_SentOnBehalfOfName;
    property To_: WideString read Get_To_ write Set_To_;
    property VotingOptions: WideString read Get_VotingOptions write Set_VotingOptions;
    property VotingResponse: WideString read Get_VotingResponse write Set_VotingResponse;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMailItemProperties read GetServerProperties;
{$ENDIF}
    property OnRead: TNotifyEvent read FOnRead write FOnRead;
    property OnWrite: TNotifyEvent read FOnWrite write FOnWrite;
    property OnOpen: TNotifyEvent read FOnOpen write FOnOpen;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnSend: TNotifyEvent read FOnSend write FOnSend;
    property OnReply: TMailItemReply read FOnReply write FOnReply;
    property OnReplyAll: TMailItemReplyAll read FOnReplyAll write FOnReplyAll;
    property OnForward: TMailItemForward read FOnForward write FOnForward;
    property OnCustomAction: TMailItemCustomAction read FOnCustomAction write FOnCustomAction;
    property OnCustomPropertyChange: TMailItemCustomPropertyChange read FOnCustomPropertyChange write FOnCustomPropertyChange;
    property OnPropertyChange: TMailItemPropertyChange read FOnPropertyChange write FOnPropertyChange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMailItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMailItemProperties = class(TPersistent)
  private
    FServer:    TMailItem;
    function    GetDefaultInterface: _DMailItem;
    constructor Create(AServer: TMailItem);
  protected
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_AlternateRecipientAllowed: WordBool;
    procedure Set_AlternateRecipientAllowed(Param1: WordBool);
    function Get_AutoForwarded: WordBool;
    procedure Set_AutoForwarded(Param1: WordBool);
    function Get_BCC: WideString;
    procedure Set_BCC(const Param1: WideString);
    function Get_CC: WideString;
    procedure Set_CC(const Param1: WideString);
    function Get_ConversationIndex: WideString;
    function Get_ConversationTopic: WideString;
    function Get_DeferredDeliveryTime: TDateTime;
    procedure Set_DeferredDeliveryTime(Param1: TDateTime);
    function Get_DeleteAfterSubmit: WordBool;
    procedure Set_DeleteAfterSubmit(Param1: WordBool);
    function Get_ExpiryTime: TDateTime;
    procedure Set_ExpiryTime(Param1: TDateTime);
    function Get_FlagDueBy: TDateTime;
    procedure Set_FlagDueBy(Param1: TDateTime);
    function Get_FlagRequest: WideString;
    procedure Set_FlagRequest(const Param1: WideString);
    function Get_FlagStatus: OlFlagStatus;
    procedure Set_FlagStatus(Param1: OlFlagStatus);
    function Get_OriginatorDeliveryReportRequested: WordBool;
    procedure Set_OriginatorDeliveryReportRequested(Param1: WordBool);
    function Get_ReadReceiptRequested: WordBool;
    procedure Set_ReadReceiptRequested(Param1: WordBool);
    function Get_ReceivedByEntryID: WideString;
    function Get_ReceivedByName: WideString;
    function Get_ReceivedOnBehalfOfEntryID: WideString;
    function Get_ReceivedOnBehalfOfName: WideString;
    function Get_ReceivedTime: TDateTime;
    function Get_RecipientReassignmentProhibited: WordBool;
    procedure Set_RecipientReassignmentProhibited(Param1: WordBool);
    function Get_Recipients: Recipients;
    function Get_ReminderOverrideDefault: WordBool;
    procedure Set_ReminderOverrideDefault(Param1: WordBool);
    function Get_ReminderPlaySound: WordBool;
    procedure Set_ReminderPlaySound(Param1: WordBool);
    function Get_ReminderSet: WordBool;
    procedure Set_ReminderSet(Param1: WordBool);
    function Get_ReminderSoundFile: WideString;
    procedure Set_ReminderSoundFile(const Param1: WideString);
    function Get_ReminderTime: TDateTime;
    procedure Set_ReminderTime(Param1: TDateTime);
    function Get_RemoteStatus: OlRemoteStatus;
    function Get_ReplyRecipientNames: WideString;
    function Get_ReplyRecipients: Recipients;
    function Get_SaveSentMessageFolder: MAPIFolder;
    procedure _Set_SaveSentMessageFolder(const Param1: MAPIFolder);
    function Get_SenderName: WideString;
    function Get_SentOn: TDateTime;
    function Get_SentOnBehalfOfName: WideString;
    procedure Set_SentOnBehalfOfName(const Param1: WideString);
    function Get_To_: WideString;
    procedure Set_To_(const Param1: WideString);
    function Get_VotingOptions: WideString;
    procedure Set_VotingOptions(const Param1: WideString);
    function Get_VotingResponse: WideString;
    procedure Set_VotingResponse(const Param1: WideString);
  public
    property DefaultInterface: _DMailItem read GetDefaultInterface;
  published
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property AlternateRecipientAllowed: WordBool read Get_AlternateRecipientAllowed write Set_AlternateRecipientAllowed;
    property AutoForwarded: WordBool read Get_AutoForwarded write Set_AutoForwarded;
    property BCC: WideString read Get_BCC write Set_BCC;
    property CC: WideString read Get_CC write Set_CC;
    property DeferredDeliveryTime: TDateTime read Get_DeferredDeliveryTime write Set_DeferredDeliveryTime;
    property DeleteAfterSubmit: WordBool read Get_DeleteAfterSubmit write Set_DeleteAfterSubmit;
    property ExpiryTime: TDateTime read Get_ExpiryTime write Set_ExpiryTime;
    property FlagDueBy: TDateTime read Get_FlagDueBy write Set_FlagDueBy;
    property FlagRequest: WideString read Get_FlagRequest write Set_FlagRequest;
    property FlagStatus: OlFlagStatus read Get_FlagStatus write Set_FlagStatus;
    property OriginatorDeliveryReportRequested: WordBool read Get_OriginatorDeliveryReportRequested write Set_OriginatorDeliveryReportRequested;
    property ReadReceiptRequested: WordBool read Get_ReadReceiptRequested write Set_ReadReceiptRequested;
    property RecipientReassignmentProhibited: WordBool read Get_RecipientReassignmentProhibited write Set_RecipientReassignmentProhibited;
    property ReminderOverrideDefault: WordBool read Get_ReminderOverrideDefault write Set_ReminderOverrideDefault;
    property ReminderPlaySound: WordBool read Get_ReminderPlaySound write Set_ReminderPlaySound;
    property ReminderSet: WordBool read Get_ReminderSet write Set_ReminderSet;
    property ReminderSoundFile: WideString read Get_ReminderSoundFile write Set_ReminderSoundFile;
    property ReminderTime: TDateTime read Get_ReminderTime write Set_ReminderTime;
    property SentOnBehalfOfName: WideString read Get_SentOnBehalfOfName write Set_SentOnBehalfOfName;
    property To_: WideString read Get_To_ write Set_To_;
    property VotingOptions: WideString read Get_VotingOptions write Set_VotingOptions;
    property VotingResponse: WideString read Get_VotingResponse write Set_VotingResponse;
  end;
{$ENDIF}


// *********************************************************************//
// The Class Co_MeetingCanceledItem provides a Create and CreateRemote method to          
// create instances of the default interface _DMeetingCanceledItem exposed by              
// the CoClass _MeetingCanceledItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Co_MeetingCanceledItem = class
    class function Create: _DMeetingCanceledItem;
    class function CreateRemote(const MachineName: string): _DMeetingCanceledItem;
  end;

// *********************************************************************//
// The Class Co_MeetingRequestAcceptedItem provides a Create and CreateRemote method to          
// create instances of the default interface _DMeetingRequestAcceptedItem exposed by              
// the CoClass _MeetingRequestAcceptedItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Co_MeetingRequestAcceptedItem = class
    class function Create: _DMeetingRequestAcceptedItem;
    class function CreateRemote(const MachineName: string): _DMeetingRequestAcceptedItem;
  end;

// *********************************************************************//
// The Class Co_MeetingRequestDeclinedItem provides a Create and CreateRemote method to          
// create instances of the default interface _DMeetingRequestDeclinedItem exposed by              
// the CoClass _MeetingRequestDeclinedItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Co_MeetingRequestDeclinedItem = class
    class function Create: _DMeetingRequestDeclinedItem;
    class function CreateRemote(const MachineName: string): _DMeetingRequestDeclinedItem;
  end;

// *********************************************************************//
// The Class CoMeetingRequestItem provides a Create and CreateRemote method to          
// create instances of the default interface _DMeetingRequestItem exposed by              
// the CoClass MeetingRequestItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMeetingRequestItem = class
    class function Create: _DMeetingRequestItem;
    class function CreateRemote(const MachineName: string): _DMeetingRequestItem;
  end;

  TMeetingRequestItemReply = procedure(ASender: TObject; const Response: IDispatch) of object;
  TMeetingRequestItemReplyAll = procedure(ASender: TObject; const Response: IDispatch) of object;
  TMeetingRequestItemForward = procedure(ASender: TObject; const Forward: IDispatch) of object;
  TMeetingRequestItemCustomAction = procedure(ASender: TObject; const Action: IDispatch; 
                                                                const Response: IDispatch) of object;
  TMeetingRequestItemCustomPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;
  TMeetingRequestItemPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMeetingRequestItem
// Help String      : 
// Default Interface: _DMeetingRequestItem
// Def. Intf. DISP? : Yes
// Event   Interface: _DItemEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMeetingRequestItemProperties= class;
{$ENDIF}
  TMeetingRequestItem = class(TOleServer)
  private
    FOnRead: TNotifyEvent;
    FOnWrite: TNotifyEvent;
    FOnOpen: TNotifyEvent;
    FOnClose: TNotifyEvent;
    FOnSend: TNotifyEvent;
    FOnReply: TMeetingRequestItemReply;
    FOnReplyAll: TMeetingRequestItemReplyAll;
    FOnForward: TMeetingRequestItemForward;
    FOnCustomAction: TMeetingRequestItemCustomAction;
    FOnCustomPropertyChange: TMeetingRequestItemCustomPropertyChange;
    FOnPropertyChange: TMeetingRequestItemPropertyChange;
    FIntf:        _DMeetingRequestItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMeetingRequestItemProperties;
    function      GetServerProperties: TMeetingRequestItemProperties;
{$ENDIF}
    function      GetDefaultInterface: _DMeetingRequestItem;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DMeetingRequestItem);
    procedure Disconnect; override;
    procedure Close(SaveMode: OlInspectorClose);
    function Copy: IDispatch;
    procedure Delete;
    procedure Display(Modal: OleVariant);
    function Move(const DestFldr: MAPIFolder): IDispatch;
    procedure Save;
    procedure SaveAs(const Path: WideString; Type_: OleVariant);
    procedure PrintOut;
    function GetAssociatedAppointment(AddToCalendar: WordBool): AppointmentItem;
    property DefaultInterface: _DMeetingRequestItem read GetDefaultInterface;
    property Actions: Actions read Get_Actions;
    property Application: OutlookApplication read Get_Application;
    property Attachments: Attachments read Get_Attachments;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: Inspector read Get_GetInspector;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property OutlookInternalVersion: WideString read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Parent: IDispatch read Get_Parent;
    property Saved: WordBool read Get_Saved;
    property Size: Integer read Get_Size;
    property UserProperties: UserProperties read Get_UserProperties;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMeetingRequestItemProperties read GetServerProperties;
{$ENDIF}
    property OnRead: TNotifyEvent read FOnRead write FOnRead;
    property OnWrite: TNotifyEvent read FOnWrite write FOnWrite;
    property OnOpen: TNotifyEvent read FOnOpen write FOnOpen;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnSend: TNotifyEvent read FOnSend write FOnSend;
    property OnReply: TMeetingRequestItemReply read FOnReply write FOnReply;
    property OnReplyAll: TMeetingRequestItemReplyAll read FOnReplyAll write FOnReplyAll;
    property OnForward: TMeetingRequestItemForward read FOnForward write FOnForward;
    property OnCustomAction: TMeetingRequestItemCustomAction read FOnCustomAction write FOnCustomAction;
    property OnCustomPropertyChange: TMeetingRequestItemCustomPropertyChange read FOnCustomPropertyChange write FOnCustomPropertyChange;
    property OnPropertyChange: TMeetingRequestItemPropertyChange read FOnPropertyChange write FOnPropertyChange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMeetingRequestItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMeetingRequestItemProperties = class(TPersistent)
  private
    FServer:    TMeetingRequestItem;
    function    GetDefaultInterface: _DMeetingRequestItem;
    constructor Create(AServer: TMeetingRequestItem);
  protected
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
  public
    property DefaultInterface: _DMeetingRequestItem read GetDefaultInterface;
  published
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
  end;
{$ENDIF}


// *********************************************************************//
// The Class Co_MeetingRequestTentativeItem provides a Create and CreateRemote method to          
// create instances of the default interface _DMeetingRequestTentativeItem exposed by              
// the CoClass _MeetingRequestTentativeItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Co_MeetingRequestTentativeItem = class
    class function Create: _DMeetingRequestTentativeItem;
    class function CreateRemote(const MachineName: string): _DMeetingRequestTentativeItem;
  end;

// *********************************************************************//
// The Class CoNoteItem provides a Create and CreateRemote method to          
// create instances of the default interface _DNoteItem exposed by              
// the CoClass NoteItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNoteItem = class
    class function Create: _DNoteItem;
    class function CreateRemote(const MachineName: string): _DNoteItem;
  end;

  TNoteItemReply = procedure(ASender: TObject; const Response: IDispatch) of object;
  TNoteItemReplyAll = procedure(ASender: TObject; const Response: IDispatch) of object;
  TNoteItemForward = procedure(ASender: TObject; const Forward: IDispatch) of object;
  TNoteItemCustomAction = procedure(ASender: TObject; const Action: IDispatch; 
                                                      const Response: IDispatch) of object;
  TNoteItemCustomPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;
  TNoteItemPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TNoteItem
// Help String      : 
// Default Interface: _DNoteItem
// Def. Intf. DISP? : Yes
// Event   Interface: _DItemEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TNoteItemProperties= class;
{$ENDIF}
  TNoteItem = class(TOleServer)
  private
    FOnRead: TNotifyEvent;
    FOnWrite: TNotifyEvent;
    FOnOpen: TNotifyEvent;
    FOnClose: TNotifyEvent;
    FOnSend: TNotifyEvent;
    FOnReply: TNoteItemReply;
    FOnReplyAll: TNoteItemReplyAll;
    FOnForward: TNoteItemForward;
    FOnCustomAction: TNoteItemCustomAction;
    FOnCustomPropertyChange: TNoteItemCustomPropertyChange;
    FOnPropertyChange: TNoteItemPropertyChange;
    FIntf:        _DNoteItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TNoteItemProperties;
    function      GetServerProperties: TNoteItemProperties;
{$ENDIF}
    function      GetDefaultInterface: _DNoteItem;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Application: OutlookApplication;
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Color: OlNoteColor;
    procedure Set_Color(Param1: OlNoteColor);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_GetInspector: Inspector;
    function Get_Height: Integer;
    procedure Set_Height(Param1: Integer);
    function Get_LastModificationTime: TDateTime;
    function Get_Left: Integer;
    procedure Set_Left(Param1: Integer);
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Parent: MAPIFolder;
    function Get_Saved: WordBool;
    function Get_Size: Integer;
    function Get_Subject: WideString;
    function Get_Top: Integer;
    procedure Set_Top(Param1: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Param1: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DNoteItem);
    procedure Disconnect; override;
    procedure Close(SaveMode: OlInspectorClose);
    function Copy: IDispatch;
    procedure Delete;
    procedure Display(Modal: OleVariant);
    function Move(const DestFldr: MAPIFolder): IDispatch;
    procedure Save;
    procedure SaveAs(const Path: WideString; Type_: OleVariant);
    procedure PrintOut;
    property DefaultInterface: _DNoteItem read GetDefaultInterface;
    property Application: OutlookApplication read Get_Application;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property GetInspector: Inspector read Get_GetInspector;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property Parent: MAPIFolder read Get_Parent;
    property Saved: WordBool read Get_Saved;
    property Size: Integer read Get_Size;
    property Subject: WideString read Get_Subject;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Color: OlNoteColor read Get_Color write Set_Color;
    property Height: Integer read Get_Height write Set_Height;
    property Left: Integer read Get_Left write Set_Left;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Top: Integer read Get_Top write Set_Top;
    property Width: Integer read Get_Width write Set_Width;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TNoteItemProperties read GetServerProperties;
{$ENDIF}
    property OnRead: TNotifyEvent read FOnRead write FOnRead;
    property OnWrite: TNotifyEvent read FOnWrite write FOnWrite;
    property OnOpen: TNotifyEvent read FOnOpen write FOnOpen;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnSend: TNotifyEvent read FOnSend write FOnSend;
    property OnReply: TNoteItemReply read FOnReply write FOnReply;
    property OnReplyAll: TNoteItemReplyAll read FOnReplyAll write FOnReplyAll;
    property OnForward: TNoteItemForward read FOnForward write FOnForward;
    property OnCustomAction: TNoteItemCustomAction read FOnCustomAction write FOnCustomAction;
    property OnCustomPropertyChange: TNoteItemCustomPropertyChange read FOnCustomPropertyChange write FOnCustomPropertyChange;
    property OnPropertyChange: TNoteItemPropertyChange read FOnPropertyChange write FOnPropertyChange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TNoteItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TNoteItemProperties = class(TPersistent)
  private
    FServer:    TNoteItem;
    function    GetDefaultInterface: _DNoteItem;
    constructor Create(AServer: TNoteItem);
  protected
    function Get_Application: OutlookApplication;
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Color: OlNoteColor;
    procedure Set_Color(Param1: OlNoteColor);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_GetInspector: Inspector;
    function Get_Height: Integer;
    procedure Set_Height(Param1: Integer);
    function Get_LastModificationTime: TDateTime;
    function Get_Left: Integer;
    procedure Set_Left(Param1: Integer);
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Parent: MAPIFolder;
    function Get_Saved: WordBool;
    function Get_Size: Integer;
    function Get_Subject: WideString;
    function Get_Top: Integer;
    procedure Set_Top(Param1: Integer);
    function Get_Width: Integer;
    procedure Set_Width(Param1: Integer);
  public
    property DefaultInterface: _DNoteItem read GetDefaultInterface;
  published
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Color: OlNoteColor read Get_Color write Set_Color;
    property Height: Integer read Get_Height write Set_Height;
    property Left: Integer read Get_Left write Set_Left;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Top: Integer read Get_Top write Set_Top;
    property Width: Integer read Get_Width write Set_Width;
  end;
{$ENDIF}


// *********************************************************************//
// The Class Co_OfficeDocumentItem provides a Create and CreateRemote method to          
// create instances of the default interface _DOfficeDocumentItem exposed by              
// the CoClass _OfficeDocumentItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Co_OfficeDocumentItem = class
    class function Create: _DOfficeDocumentItem;
    class function CreateRemote(const MachineName: string): _DOfficeDocumentItem;
  end;

// *********************************************************************//
// The Class CoPostItem provides a Create and CreateRemote method to          
// create instances of the default interface _DPostItem exposed by              
// the CoClass PostItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPostItem = class
    class function Create: _DPostItem;
    class function CreateRemote(const MachineName: string): _DPostItem;
  end;

  TPostItemReply = procedure(ASender: TObject; const Response: IDispatch) of object;
  TPostItemReplyAll = procedure(ASender: TObject; const Response: IDispatch) of object;
  TPostItemForward = procedure(ASender: TObject; const Forward: IDispatch) of object;
  TPostItemCustomAction = procedure(ASender: TObject; const Action: IDispatch; 
                                                      const Response: IDispatch) of object;
  TPostItemCustomPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;
  TPostItemPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPostItem
// Help String      : 
// Default Interface: _DPostItem
// Def. Intf. DISP? : Yes
// Event   Interface: _DItemEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPostItemProperties= class;
{$ENDIF}
  TPostItem = class(TOleServer)
  private
    FOnRead: TNotifyEvent;
    FOnWrite: TNotifyEvent;
    FOnOpen: TNotifyEvent;
    FOnClose: TNotifyEvent;
    FOnSend: TNotifyEvent;
    FOnReply: TPostItemReply;
    FOnReplyAll: TPostItemReplyAll;
    FOnForward: TPostItemForward;
    FOnCustomAction: TPostItemCustomAction;
    FOnCustomPropertyChange: TPostItemCustomPropertyChange;
    FOnPropertyChange: TPostItemPropertyChange;
    FIntf:        _DPostItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TPostItemProperties;
    function      GetServerProperties: TPostItemProperties;
{$ENDIF}
    function      GetDefaultInterface: _DPostItem;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_ConversationIndex: WideString;
    function Get_ConversationTopic: WideString;
    function Get_ExpiryTime: TDateTime;
    procedure Set_ExpiryTime(Param1: TDateTime);
    function Get_ReceivedTime: TDateTime;
    function Get_SenderName: WideString;
    function Get_SentOn: TDateTime;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DPostItem);
    procedure Disconnect; override;
    procedure Close(SaveMode: OlInspectorClose);
    function Copy: IDispatch;
    procedure Delete;
    procedure Display(Modal: OleVariant);
    function Move(const DestFldr: MAPIFolder): IDispatch;
    procedure Save;
    procedure SaveAs(const Path: WideString; Type_: OleVariant);
    procedure PrintOut;
    procedure ClearConversationIndex;
    function Forward: MailItem;
    procedure Post;
    function Reply: MailItem;
    property DefaultInterface: _DPostItem read GetDefaultInterface;
    property Actions: Actions read Get_Actions;
    property Application: OutlookApplication read Get_Application;
    property Attachments: Attachments read Get_Attachments;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: Inspector read Get_GetInspector;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property OutlookInternalVersion: WideString read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Parent: IDispatch read Get_Parent;
    property Saved: WordBool read Get_Saved;
    property Size: Integer read Get_Size;
    property UserProperties: UserProperties read Get_UserProperties;
    property ConversationIndex: WideString read Get_ConversationIndex;
    property ConversationTopic: WideString read Get_ConversationTopic;
    property ReceivedTime: TDateTime read Get_ReceivedTime;
    property SenderName: WideString read Get_SenderName;
    property SentOn: TDateTime read Get_SentOn;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property ExpiryTime: TDateTime read Get_ExpiryTime write Set_ExpiryTime;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPostItemProperties read GetServerProperties;
{$ENDIF}
    property OnRead: TNotifyEvent read FOnRead write FOnRead;
    property OnWrite: TNotifyEvent read FOnWrite write FOnWrite;
    property OnOpen: TNotifyEvent read FOnOpen write FOnOpen;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnSend: TNotifyEvent read FOnSend write FOnSend;
    property OnReply: TPostItemReply read FOnReply write FOnReply;
    property OnReplyAll: TPostItemReplyAll read FOnReplyAll write FOnReplyAll;
    property OnForward: TPostItemForward read FOnForward write FOnForward;
    property OnCustomAction: TPostItemCustomAction read FOnCustomAction write FOnCustomAction;
    property OnCustomPropertyChange: TPostItemCustomPropertyChange read FOnCustomPropertyChange write FOnCustomPropertyChange;
    property OnPropertyChange: TPostItemPropertyChange read FOnPropertyChange write FOnPropertyChange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPostItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPostItemProperties = class(TPersistent)
  private
    FServer:    TPostItem;
    function    GetDefaultInterface: _DPostItem;
    constructor Create(AServer: TPostItem);
  protected
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_ConversationIndex: WideString;
    function Get_ConversationTopic: WideString;
    function Get_ExpiryTime: TDateTime;
    procedure Set_ExpiryTime(Param1: TDateTime);
    function Get_ReceivedTime: TDateTime;
    function Get_SenderName: WideString;
    function Get_SentOn: TDateTime;
  public
    property DefaultInterface: _DPostItem read GetDefaultInterface;
  published
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property ExpiryTime: TDateTime read Get_ExpiryTime write Set_ExpiryTime;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoRemoteItem provides a Create and CreateRemote method to          
// create instances of the default interface _DRemoteItem exposed by              
// the CoClass RemoteItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRemoteItem = class
    class function Create: _DRemoteItem;
    class function CreateRemote(const MachineName: string): _DRemoteItem;
  end;

  TRemoteItemReply = procedure(ASender: TObject; const Response: IDispatch) of object;
  TRemoteItemReplyAll = procedure(ASender: TObject; const Response: IDispatch) of object;
  TRemoteItemForward = procedure(ASender: TObject; const Forward: IDispatch) of object;
  TRemoteItemCustomAction = procedure(ASender: TObject; const Action: IDispatch; 
                                                        const Response: IDispatch) of object;
  TRemoteItemCustomPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;
  TRemoteItemPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRemoteItem
// Help String      : 
// Default Interface: _DRemoteItem
// Def. Intf. DISP? : Yes
// Event   Interface: _DItemEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRemoteItemProperties= class;
{$ENDIF}
  TRemoteItem = class(TOleServer)
  private
    FOnRead: TNotifyEvent;
    FOnWrite: TNotifyEvent;
    FOnOpen: TNotifyEvent;
    FOnClose: TNotifyEvent;
    FOnSend: TNotifyEvent;
    FOnReply: TRemoteItemReply;
    FOnReplyAll: TRemoteItemReplyAll;
    FOnForward: TRemoteItemForward;
    FOnCustomAction: TRemoteItemCustomAction;
    FOnCustomPropertyChange: TRemoteItemCustomPropertyChange;
    FOnPropertyChange: TRemoteItemPropertyChange;
    FIntf:        _DRemoteItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TRemoteItemProperties;
    function      GetServerProperties: TRemoteItemProperties;
{$ENDIF}
    function      GetDefaultInterface: _DRemoteItem;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_HasAttachment: WordBool;
    function Get_RemoteMessageClass: WideString;
    function Get_TransferSize: Integer;
    function Get_TransferTime: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DRemoteItem);
    procedure Disconnect; override;
    procedure Close(SaveMode: OlInspectorClose);
    function Copy: IDispatch;
    procedure Delete;
    procedure Display(Modal: OleVariant);
    function Move(const DestFldr: MAPIFolder): IDispatch;
    procedure Save;
    procedure SaveAs(const Path: WideString; Type_: OleVariant);
    procedure PrintOut;
    property DefaultInterface: _DRemoteItem read GetDefaultInterface;
    property Actions: Actions read Get_Actions;
    property Application: OutlookApplication read Get_Application;
    property Attachments: Attachments read Get_Attachments;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: Inspector read Get_GetInspector;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property OutlookInternalVersion: WideString read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Parent: IDispatch read Get_Parent;
    property Saved: WordBool read Get_Saved;
    property Size: Integer read Get_Size;
    property UserProperties: UserProperties read Get_UserProperties;
    property HasAttachment: WordBool read Get_HasAttachment;
    property RemoteMessageClass: WideString read Get_RemoteMessageClass;
    property TransferSize: Integer read Get_TransferSize;
    property TransferTime: Integer read Get_TransferTime;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRemoteItemProperties read GetServerProperties;
{$ENDIF}
    property OnRead: TNotifyEvent read FOnRead write FOnRead;
    property OnWrite: TNotifyEvent read FOnWrite write FOnWrite;
    property OnOpen: TNotifyEvent read FOnOpen write FOnOpen;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnSend: TNotifyEvent read FOnSend write FOnSend;
    property OnReply: TRemoteItemReply read FOnReply write FOnReply;
    property OnReplyAll: TRemoteItemReplyAll read FOnReplyAll write FOnReplyAll;
    property OnForward: TRemoteItemForward read FOnForward write FOnForward;
    property OnCustomAction: TRemoteItemCustomAction read FOnCustomAction write FOnCustomAction;
    property OnCustomPropertyChange: TRemoteItemCustomPropertyChange read FOnCustomPropertyChange write FOnCustomPropertyChange;
    property OnPropertyChange: TRemoteItemPropertyChange read FOnPropertyChange write FOnPropertyChange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRemoteItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRemoteItemProperties = class(TPersistent)
  private
    FServer:    TRemoteItem;
    function    GetDefaultInterface: _DRemoteItem;
    constructor Create(AServer: TRemoteItem);
  protected
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_HasAttachment: WordBool;
    function Get_RemoteMessageClass: WideString;
    function Get_TransferSize: Integer;
    function Get_TransferTime: Integer;
  public
    property DefaultInterface: _DRemoteItem read GetDefaultInterface;
  published
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoReportItem provides a Create and CreateRemote method to          
// create instances of the default interface _DReportItem exposed by              
// the CoClass ReportItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReportItem = class
    class function Create: _DReportItem;
    class function CreateRemote(const MachineName: string): _DReportItem;
  end;

  TReportItemReply = procedure(ASender: TObject; const Response: IDispatch) of object;
  TReportItemReplyAll = procedure(ASender: TObject; const Response: IDispatch) of object;
  TReportItemForward = procedure(ASender: TObject; const Forward: IDispatch) of object;
  TReportItemCustomAction = procedure(ASender: TObject; const Action: IDispatch; 
                                                        const Response: IDispatch) of object;
  TReportItemCustomPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;
  TReportItemPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TReportItem
// Help String      : 
// Default Interface: _DReportItem
// Def. Intf. DISP? : Yes
// Event   Interface: _DItemEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TReportItemProperties= class;
{$ENDIF}
  TReportItem = class(TOleServer)
  private
    FOnRead: TNotifyEvent;
    FOnWrite: TNotifyEvent;
    FOnOpen: TNotifyEvent;
    FOnClose: TNotifyEvent;
    FOnSend: TNotifyEvent;
    FOnReply: TReportItemReply;
    FOnReplyAll: TReportItemReplyAll;
    FOnForward: TReportItemForward;
    FOnCustomAction: TReportItemCustomAction;
    FOnCustomPropertyChange: TReportItemCustomPropertyChange;
    FOnPropertyChange: TReportItemPropertyChange;
    FIntf:        _DReportItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TReportItemProperties;
    function      GetServerProperties: TReportItemProperties;
{$ENDIF}
    function      GetDefaultInterface: _DReportItem;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DReportItem);
    procedure Disconnect; override;
    procedure Close(SaveMode: OlInspectorClose);
    function Copy: IDispatch;
    procedure Delete;
    procedure Display(Modal: OleVariant);
    function Move(const DestFldr: MAPIFolder): IDispatch;
    procedure Save;
    procedure SaveAs(const Path: WideString; Type_: OleVariant);
    procedure PrintOut;
    property DefaultInterface: _DReportItem read GetDefaultInterface;
    property Actions: Actions read Get_Actions;
    property Application: OutlookApplication read Get_Application;
    property Attachments: Attachments read Get_Attachments;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: Inspector read Get_GetInspector;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property OutlookInternalVersion: WideString read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Parent: IDispatch read Get_Parent;
    property Saved: WordBool read Get_Saved;
    property Size: Integer read Get_Size;
    property UserProperties: UserProperties read Get_UserProperties;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TReportItemProperties read GetServerProperties;
{$ENDIF}
    property OnRead: TNotifyEvent read FOnRead write FOnRead;
    property OnWrite: TNotifyEvent read FOnWrite write FOnWrite;
    property OnOpen: TNotifyEvent read FOnOpen write FOnOpen;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnSend: TNotifyEvent read FOnSend write FOnSend;
    property OnReply: TReportItemReply read FOnReply write FOnReply;
    property OnReplyAll: TReportItemReplyAll read FOnReplyAll write FOnReplyAll;
    property OnForward: TReportItemForward read FOnForward write FOnForward;
    property OnCustomAction: TReportItemCustomAction read FOnCustomAction write FOnCustomAction;
    property OnCustomPropertyChange: TReportItemCustomPropertyChange read FOnCustomPropertyChange write FOnCustomPropertyChange;
    property OnPropertyChange: TReportItemPropertyChange read FOnPropertyChange write FOnPropertyChange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TReportItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TReportItemProperties = class(TPersistent)
  private
    FServer:    TReportItem;
    function    GetDefaultInterface: _DReportItem;
    constructor Create(AServer: TReportItem);
  protected
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
  public
    property DefaultInterface: _DReportItem read GetDefaultInterface;
  published
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoTaskItem provides a Create and CreateRemote method to          
// create instances of the default interface _DTaskItem exposed by              
// the CoClass TaskItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTaskItem = class
    class function Create: _DTaskItem;
    class function CreateRemote(const MachineName: string): _DTaskItem;
  end;

  TTaskItemReply = procedure(ASender: TObject; const Response: IDispatch) of object;
  TTaskItemReplyAll = procedure(ASender: TObject; const Response: IDispatch) of object;
  TTaskItemForward = procedure(ASender: TObject; const Forward: IDispatch) of object;
  TTaskItemCustomAction = procedure(ASender: TObject; const Action: IDispatch; 
                                                      const Response: IDispatch) of object;
  TTaskItemCustomPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;
  TTaskItemPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTaskItem
// Help String      : 
// Default Interface: _DTaskItem
// Def. Intf. DISP? : Yes
// Event   Interface: _DItemEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TTaskItemProperties= class;
{$ENDIF}
  TTaskItem = class(TOleServer)
  private
    FOnRead: TNotifyEvent;
    FOnWrite: TNotifyEvent;
    FOnOpen: TNotifyEvent;
    FOnClose: TNotifyEvent;
    FOnSend: TNotifyEvent;
    FOnReply: TTaskItemReply;
    FOnReplyAll: TTaskItemReplyAll;
    FOnForward: TTaskItemForward;
    FOnCustomAction: TTaskItemCustomAction;
    FOnCustomPropertyChange: TTaskItemCustomPropertyChange;
    FOnPropertyChange: TTaskItemPropertyChange;
    FIntf:        _DTaskItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TTaskItemProperties;
    function      GetServerProperties: TTaskItemProperties;
{$ENDIF}
    function      GetDefaultInterface: _DTaskItem;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_ActualWork: Integer;
    procedure Set_ActualWork(Param1: Integer);
    function Get_CardData: WideString;
    procedure Set_CardData(const Param1: WideString);
    function Get_Complete: WordBool;
    procedure Set_Complete(Param1: WordBool);
    function Get_Contacts: WideString;
    procedure Set_Contacts(const Param1: WideString);
    function Get_DateCompleted: TDateTime;
    procedure Set_DateCompleted(Param1: TDateTime);
    function Get_DelegationState: OlTaskDelegationState;
    function Get_Delegator: WideString;
    function Get_DueDate: TDateTime;
    procedure Set_DueDate(Param1: TDateTime);
    function Get_IsRecurring: WordBool;
    function Get_Ordinal: Integer;
    procedure Set_Ordinal(Param1: Integer);
    function Get_Owner: WideString;
    procedure Set_Owner(const Param1: WideString);
    function Get_Ownership: OlTaskOwnership;
    function Get_PercentComplete: Integer;
    procedure Set_PercentComplete(Param1: Integer);
    function Get_Recipients: Recipients;
    function Get_ReminderOverrideDefault: WordBool;
    procedure Set_ReminderOverrideDefault(Param1: WordBool);
    function Get_ReminderPlaySound: WordBool;
    procedure Set_ReminderPlaySound(Param1: WordBool);
    function Get_ReminderSet: WordBool;
    procedure Set_ReminderSet(Param1: WordBool);
    function Get_ReminderSoundFile: WideString;
    procedure Set_ReminderSoundFile(const Param1: WideString);
    function Get_ReminderTime: TDateTime;
    procedure Set_ReminderTime(Param1: TDateTime);
    function Get_ResponseState: OlTaskResponse;
    function Get_Role: WideString;
    procedure Set_Role(const Param1: WideString);
    function Get_SchedulePlusPriority: WideString;
    procedure Set_SchedulePlusPriority(const Param1: WideString);
    function Get_StartDate: TDateTime;
    procedure Set_StartDate(Param1: TDateTime);
    function Get_Status: OlTaskStatus;
    procedure Set_Status(Param1: OlTaskStatus);
    function Get_StatusOnCompletionRecipients: WideString;
    procedure Set_StatusOnCompletionRecipients(const Param1: WideString);
    function Get_StatusUpdateRecipients: WideString;
    procedure Set_StatusUpdateRecipients(const Param1: WideString);
    function Get_TeamTask: WordBool;
    procedure Set_TeamTask(Param1: WordBool);
    function Get_TotalWork: Integer;
    procedure Set_TotalWork(Param1: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DTaskItem);
    procedure Disconnect; override;
    procedure Close(SaveMode: OlInspectorClose);
    function Copy: IDispatch;
    procedure Delete;
    procedure Display(Modal: OleVariant);
    function Move(const DestFldr: MAPIFolder): IDispatch;
    procedure Save;
    procedure SaveAs(const Path: WideString; Type_: OleVariant);
    procedure PrintOut;
    function Assign_: TaskItem;
    procedure CancelResponseState;
    procedure ClearRecurrencePattern;
    procedure GetRecurrencePattern;
    procedure MarkComplete;
    function Respond(Response: OlTaskResponse; fNoUI: OleVariant; fAdditionalTextDialog: OleVariant): TaskItem;
    procedure Send;
    function SkipRecurrence: WordBool;
    function StatusReport: IDispatch;
    property DefaultInterface: _DTaskItem read GetDefaultInterface;
    property Actions: Actions read Get_Actions;
    property Application: OutlookApplication read Get_Application;
    property Attachments: Attachments read Get_Attachments;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: Inspector read Get_GetInspector;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property OutlookInternalVersion: WideString read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Parent: IDispatch read Get_Parent;
    property Saved: WordBool read Get_Saved;
    property Size: Integer read Get_Size;
    property UserProperties: UserProperties read Get_UserProperties;
    property DelegationState: OlTaskDelegationState read Get_DelegationState;
    property Delegator: WideString read Get_Delegator;
    property IsRecurring: WordBool read Get_IsRecurring;
    property Ownership: OlTaskOwnership read Get_Ownership;
    property Recipients: Recipients read Get_Recipients;
    property ResponseState: OlTaskResponse read Get_ResponseState;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property ActualWork: Integer read Get_ActualWork write Set_ActualWork;
    property CardData: WideString read Get_CardData write Set_CardData;
    property Complete: WordBool read Get_Complete write Set_Complete;
    property Contacts: WideString read Get_Contacts write Set_Contacts;
    property DateCompleted: TDateTime read Get_DateCompleted write Set_DateCompleted;
    property DueDate: TDateTime read Get_DueDate write Set_DueDate;
    property Ordinal: Integer read Get_Ordinal write Set_Ordinal;
    property Owner: WideString read Get_Owner write Set_Owner;
    property PercentComplete: Integer read Get_PercentComplete write Set_PercentComplete;
    property ReminderOverrideDefault: WordBool read Get_ReminderOverrideDefault write Set_ReminderOverrideDefault;
    property ReminderPlaySound: WordBool read Get_ReminderPlaySound write Set_ReminderPlaySound;
    property ReminderSet: WordBool read Get_ReminderSet write Set_ReminderSet;
    property ReminderSoundFile: WideString read Get_ReminderSoundFile write Set_ReminderSoundFile;
    property ReminderTime: TDateTime read Get_ReminderTime write Set_ReminderTime;
    property Role: WideString read Get_Role write Set_Role;
    property SchedulePlusPriority: WideString read Get_SchedulePlusPriority write Set_SchedulePlusPriority;
    property StartDate: TDateTime read Get_StartDate write Set_StartDate;
    property Status: OlTaskStatus read Get_Status write Set_Status;
    property StatusOnCompletionRecipients: WideString read Get_StatusOnCompletionRecipients write Set_StatusOnCompletionRecipients;
    property StatusUpdateRecipients: WideString read Get_StatusUpdateRecipients write Set_StatusUpdateRecipients;
    property TeamTask: WordBool read Get_TeamTask write Set_TeamTask;
    property TotalWork: Integer read Get_TotalWork write Set_TotalWork;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TTaskItemProperties read GetServerProperties;
{$ENDIF}
    property OnRead: TNotifyEvent read FOnRead write FOnRead;
    property OnWrite: TNotifyEvent read FOnWrite write FOnWrite;
    property OnOpen: TNotifyEvent read FOnOpen write FOnOpen;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnSend: TNotifyEvent read FOnSend write FOnSend;
    property OnReply: TTaskItemReply read FOnReply write FOnReply;
    property OnReplyAll: TTaskItemReplyAll read FOnReplyAll write FOnReplyAll;
    property OnForward: TTaskItemForward read FOnForward write FOnForward;
    property OnCustomAction: TTaskItemCustomAction read FOnCustomAction write FOnCustomAction;
    property OnCustomPropertyChange: TTaskItemCustomPropertyChange read FOnCustomPropertyChange write FOnCustomPropertyChange;
    property OnPropertyChange: TTaskItemPropertyChange read FOnPropertyChange write FOnPropertyChange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TTaskItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TTaskItemProperties = class(TPersistent)
  private
    FServer:    TTaskItem;
    function    GetDefaultInterface: _DTaskItem;
    constructor Create(AServer: TTaskItem);
  protected
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
    function Get_ActualWork: Integer;
    procedure Set_ActualWork(Param1: Integer);
    function Get_CardData: WideString;
    procedure Set_CardData(const Param1: WideString);
    function Get_Complete: WordBool;
    procedure Set_Complete(Param1: WordBool);
    function Get_Contacts: WideString;
    procedure Set_Contacts(const Param1: WideString);
    function Get_DateCompleted: TDateTime;
    procedure Set_DateCompleted(Param1: TDateTime);
    function Get_DelegationState: OlTaskDelegationState;
    function Get_Delegator: WideString;
    function Get_DueDate: TDateTime;
    procedure Set_DueDate(Param1: TDateTime);
    function Get_IsRecurring: WordBool;
    function Get_Ordinal: Integer;
    procedure Set_Ordinal(Param1: Integer);
    function Get_Owner: WideString;
    procedure Set_Owner(const Param1: WideString);
    function Get_Ownership: OlTaskOwnership;
    function Get_PercentComplete: Integer;
    procedure Set_PercentComplete(Param1: Integer);
    function Get_Recipients: Recipients;
    function Get_ReminderOverrideDefault: WordBool;
    procedure Set_ReminderOverrideDefault(Param1: WordBool);
    function Get_ReminderPlaySound: WordBool;
    procedure Set_ReminderPlaySound(Param1: WordBool);
    function Get_ReminderSet: WordBool;
    procedure Set_ReminderSet(Param1: WordBool);
    function Get_ReminderSoundFile: WideString;
    procedure Set_ReminderSoundFile(const Param1: WideString);
    function Get_ReminderTime: TDateTime;
    procedure Set_ReminderTime(Param1: TDateTime);
    function Get_ResponseState: OlTaskResponse;
    function Get_Role: WideString;
    procedure Set_Role(const Param1: WideString);
    function Get_SchedulePlusPriority: WideString;
    procedure Set_SchedulePlusPriority(const Param1: WideString);
    function Get_StartDate: TDateTime;
    procedure Set_StartDate(Param1: TDateTime);
    function Get_Status: OlTaskStatus;
    procedure Set_Status(Param1: OlTaskStatus);
    function Get_StatusOnCompletionRecipients: WideString;
    procedure Set_StatusOnCompletionRecipients(const Param1: WideString);
    function Get_StatusUpdateRecipients: WideString;
    procedure Set_StatusUpdateRecipients(const Param1: WideString);
    function Get_TeamTask: WordBool;
    procedure Set_TeamTask(Param1: WordBool);
    function Get_TotalWork: Integer;
    procedure Set_TotalWork(Param1: Integer);
  public
    property DefaultInterface: _DTaskItem read GetDefaultInterface;
  published
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
    property ActualWork: Integer read Get_ActualWork write Set_ActualWork;
    property CardData: WideString read Get_CardData write Set_CardData;
    property Complete: WordBool read Get_Complete write Set_Complete;
    property Contacts: WideString read Get_Contacts write Set_Contacts;
    property DateCompleted: TDateTime read Get_DateCompleted write Set_DateCompleted;
    property DueDate: TDateTime read Get_DueDate write Set_DueDate;
    property Ordinal: Integer read Get_Ordinal write Set_Ordinal;
    property Owner: WideString read Get_Owner write Set_Owner;
    property PercentComplete: Integer read Get_PercentComplete write Set_PercentComplete;
    property ReminderOverrideDefault: WordBool read Get_ReminderOverrideDefault write Set_ReminderOverrideDefault;
    property ReminderPlaySound: WordBool read Get_ReminderPlaySound write Set_ReminderPlaySound;
    property ReminderSet: WordBool read Get_ReminderSet write Set_ReminderSet;
    property ReminderSoundFile: WideString read Get_ReminderSoundFile write Set_ReminderSoundFile;
    property ReminderTime: TDateTime read Get_ReminderTime write Set_ReminderTime;
    property Role: WideString read Get_Role write Set_Role;
    property SchedulePlusPriority: WideString read Get_SchedulePlusPriority write Set_SchedulePlusPriority;
    property StartDate: TDateTime read Get_StartDate write Set_StartDate;
    property Status: OlTaskStatus read Get_Status write Set_Status;
    property StatusOnCompletionRecipients: WideString read Get_StatusOnCompletionRecipients write Set_StatusOnCompletionRecipients;
    property StatusUpdateRecipients: WideString read Get_StatusUpdateRecipients write Set_StatusUpdateRecipients;
    property TeamTask: WordBool read Get_TeamTask write Set_TeamTask;
    property TotalWork: Integer read Get_TotalWork write Set_TotalWork;
  end;
{$ENDIF}


// *********************************************************************//
// The Class Co_TaskRequestAcceptItem provides a Create and CreateRemote method to          
// create instances of the default interface _DTaskRequestAcceptItem exposed by              
// the CoClass _TaskRequestAcceptItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Co_TaskRequestAcceptItem = class
    class function Create: _DTaskRequestAcceptItem;
    class function CreateRemote(const MachineName: string): _DTaskRequestAcceptItem;
  end;

// *********************************************************************//
// The Class Co_TaskRequestDeclineItem provides a Create and CreateRemote method to          
// create instances of the default interface _DTaskRequestDeclineItem exposed by              
// the CoClass _TaskRequestDeclineItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Co_TaskRequestDeclineItem = class
    class function Create: _DTaskRequestDeclineItem;
    class function CreateRemote(const MachineName: string): _DTaskRequestDeclineItem;
  end;

// *********************************************************************//
// The Class CoTaskRequestItem provides a Create and CreateRemote method to          
// create instances of the default interface _DTaskRequestItem exposed by              
// the CoClass TaskRequestItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTaskRequestItem = class
    class function Create: _DTaskRequestItem;
    class function CreateRemote(const MachineName: string): _DTaskRequestItem;
  end;

  TTaskRequestItemReply = procedure(ASender: TObject; const Response: IDispatch) of object;
  TTaskRequestItemReplyAll = procedure(ASender: TObject; const Response: IDispatch) of object;
  TTaskRequestItemForward = procedure(ASender: TObject; const Forward: IDispatch) of object;
  TTaskRequestItemCustomAction = procedure(ASender: TObject; const Action: IDispatch; 
                                                             const Response: IDispatch) of object;
  TTaskRequestItemCustomPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;
  TTaskRequestItemPropertyChange = procedure(ASender: TObject; const Name: WideString) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTaskRequestItem
// Help String      : 
// Default Interface: _DTaskRequestItem
// Def. Intf. DISP? : Yes
// Event   Interface: _DItemEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TTaskRequestItemProperties= class;
{$ENDIF}
  TTaskRequestItem = class(TOleServer)
  private
    FOnRead: TNotifyEvent;
    FOnWrite: TNotifyEvent;
    FOnOpen: TNotifyEvent;
    FOnClose: TNotifyEvent;
    FOnSend: TNotifyEvent;
    FOnReply: TTaskRequestItemReply;
    FOnReplyAll: TTaskRequestItemReplyAll;
    FOnForward: TTaskRequestItemForward;
    FOnCustomAction: TTaskRequestItemCustomAction;
    FOnCustomPropertyChange: TTaskRequestItemCustomPropertyChange;
    FOnPropertyChange: TTaskRequestItemPropertyChange;
    FIntf:        _DTaskRequestItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TTaskRequestItemProperties;
    function      GetServerProperties: TTaskRequestItemProperties;
{$ENDIF}
    function      GetDefaultInterface: _DTaskRequestItem;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DTaskRequestItem);
    procedure Disconnect; override;
    procedure Close(SaveMode: OlInspectorClose);
    function Copy: IDispatch;
    procedure Delete;
    procedure Display(Modal: OleVariant);
    function Move(const DestFldr: MAPIFolder): IDispatch;
    procedure Save;
    procedure SaveAs(const Path: WideString; Type_: OleVariant);
    procedure PrintOut;
    function GetAssociatedTask(AddToTaskList: WordBool): TaskItem;
    property DefaultInterface: _DTaskRequestItem read GetDefaultInterface;
    property Actions: Actions read Get_Actions;
    property Application: OutlookApplication read Get_Application;
    property Attachments: Attachments read Get_Attachments;
    property CreationTime: TDateTime read Get_CreationTime;
    property EntryID: WideString read Get_EntryID;
    property FormDescription: FormDescription read Get_FormDescription;
    property GetInspector: Inspector read Get_GetInspector;
    property LastModificationTime: TDateTime read Get_LastModificationTime;
    property OutlookInternalVersion: WideString read Get_OutlookInternalVersion;
    property OutlookVersion: WideString read Get_OutlookVersion;
    property Parent: IDispatch read Get_Parent;
    property Saved: WordBool read Get_Saved;
    property Size: Integer read Get_Size;
    property UserProperties: UserProperties read Get_UserProperties;
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TTaskRequestItemProperties read GetServerProperties;
{$ENDIF}
    property OnRead: TNotifyEvent read FOnRead write FOnRead;
    property OnWrite: TNotifyEvent read FOnWrite write FOnWrite;
    property OnOpen: TNotifyEvent read FOnOpen write FOnOpen;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnSend: TNotifyEvent read FOnSend write FOnSend;
    property OnReply: TTaskRequestItemReply read FOnReply write FOnReply;
    property OnReplyAll: TTaskRequestItemReplyAll read FOnReplyAll write FOnReplyAll;
    property OnForward: TTaskRequestItemForward read FOnForward write FOnForward;
    property OnCustomAction: TTaskRequestItemCustomAction read FOnCustomAction write FOnCustomAction;
    property OnCustomPropertyChange: TTaskRequestItemCustomPropertyChange read FOnCustomPropertyChange write FOnCustomPropertyChange;
    property OnPropertyChange: TTaskRequestItemPropertyChange read FOnPropertyChange write FOnPropertyChange;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TTaskRequestItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TTaskRequestItemProperties = class(TPersistent)
  private
    FServer:    TTaskRequestItem;
    function    GetDefaultInterface: _DTaskRequestItem;
    constructor Create(AServer: TTaskRequestItem);
  protected
    function Get_Actions: Actions;
    function Get_Application: OutlookApplication;
    function Get_Attachments: Attachments;
    function Get_BillingInformation: WideString;
    procedure Set_BillingInformation(const Param1: WideString);
    function Get_Body: WideString;
    procedure Set_Body(const Param1: WideString);
    function Get_Categories: WideString;
    procedure Set_Categories(const Param1: WideString);
    function Get_Companies: WideString;
    procedure Set_Companies(const Param1: WideString);
    function Get_CreationTime: TDateTime;
    function Get_EntryID: WideString;
    function Get_FormDescription: FormDescription;
    function Get_GetInspector: Inspector;
    function Get_Importance: OlImportance;
    procedure Set_Importance(Param1: OlImportance);
    function Get_LastModificationTime: TDateTime;
    function Get_MessageClass: WideString;
    procedure Set_MessageClass(const Param1: WideString);
    function Get_Mileage: WideString;
    procedure Set_Mileage(const Param1: WideString);
    function Get_NoAging: WordBool;
    procedure Set_NoAging(Param1: WordBool);
    function Get_OutlookInternalVersion: WideString;
    function Get_OutlookVersion: WideString;
    function Get_Parent: IDispatch;
    function Get_Saved: WordBool;
    function Get_Sensitivity: OlSensitivity;
    procedure Set_Sensitivity(Param1: OlSensitivity);
    function Get_Size: Integer;
    function Get_Subject: WideString;
    procedure Set_Subject(const Param1: WideString);
    function Get_UnRead: WordBool;
    procedure Set_UnRead(Param1: WordBool);
    function Get_UserProperties: UserProperties;
  public
    property DefaultInterface: _DTaskRequestItem read GetDefaultInterface;
  published
    property BillingInformation: WideString read Get_BillingInformation write Set_BillingInformation;
    property Body: WideString read Get_Body write Set_Body;
    property Categories: WideString read Get_Categories write Set_Categories;
    property Companies: WideString read Get_Companies write Set_Companies;
    property Importance: OlImportance read Get_Importance write Set_Importance;
    property MessageClass: WideString read Get_MessageClass write Set_MessageClass;
    property Mileage: WideString read Get_Mileage write Set_Mileage;
    property NoAging: WordBool read Get_NoAging write Set_NoAging;
    property Sensitivity: OlSensitivity read Get_Sensitivity write Set_Sensitivity;
    property Subject: WideString read Get_Subject write Set_Subject;
    property UnRead: WordBool read Get_UnRead write Set_UnRead;
  end;
{$ENDIF}


// *********************************************************************//
// The Class Co_TaskRequestUpdateItem provides a Create and CreateRemote method to          
// create instances of the default interface _DTaskRequestUpdateItem exposed by              
// the CoClass _TaskRequestUpdateItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Co_TaskRequestUpdateItem = class
    class function Create: _DTaskRequestUpdateItem;
    class function CreateRemote(const MachineName: string): _DTaskRequestUpdateItem;
  end;

implementation

uses ComObj;

class function CoOutlookApplication.Create: _DApplication;
begin
  Result := CreateComObject(CLASS_OutlookApplication) as _DApplication;
end;

class function CoOutlookApplication.CreateRemote(const MachineName: string): _DApplication;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OutlookApplication) as _DApplication;
end;

procedure TOutlookApplication.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0006F033-0000-0000-C000-000000000046}';
    IntfIID:   '{00063001-0000-0000-C000-000000000046}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOutlookApplication.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _DApplication;
  end;
end;

procedure TOutlookApplication.ConnectTo(svrIntf: _DApplication);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOutlookApplication.DisConnect;
begin
  if Fintf <> nil then
  begin
    if FAutoQuit then
      Quit();
    FIntf := nil;
  end;
end;

function TOutlookApplication.GetDefaultInterface: _DApplication;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TOutlookApplication.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TOutlookApplicationProperties.Create(Self);
{$ENDIF}
end;

destructor TOutlookApplication.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TOutlookApplication.GetServerProperties: TOutlookApplicationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TOutlookApplication.Get_Assistant: Assistant;
begin
    Result := DefaultInterface.Assistant;
end;

function TOutlookApplication.ActiveExplorer: Explorer;
begin
  Result := DefaultInterface.ActiveExplorer;
end;

function TOutlookApplication.ActiveInspector: Inspector;
begin
  Result := DefaultInterface.ActiveInspector;
end;

function TOutlookApplication.CreateItem(ItemType: OlItems): IDispatch;
begin
  Result := DefaultInterface.CreateItem(ItemType);
end;

function TOutlookApplication.CreateItemFromTemplate(const TemplatePath: WideString; 
                                                    InFolder: OleVariant): IDispatch;
begin
  Result := DefaultInterface.CreateItemFromTemplate(TemplatePath, InFolder);
end;

function TOutlookApplication.CreateObject(const ObjectName: WideString): IDispatch;
begin
  Result := DefaultInterface.CreateObject(ObjectName);
end;

function TOutlookApplication.GetNamespace(const Type_: WideString): NameSpace;
begin
  Result := DefaultInterface.GetNamespace(Type_);
end;

procedure TOutlookApplication.Quit;
begin
  DefaultInterface.Quit;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TOutlookApplicationProperties.Create(AServer: TOutlookApplication);
begin
  inherited Create;
  FServer := AServer;
end;

function TOutlookApplicationProperties.GetDefaultInterface: _DApplication;
begin
  Result := FServer.DefaultInterface;
end;

function TOutlookApplicationProperties.Get_Assistant: Assistant;
begin
    Result := DefaultInterface.Assistant;
end;

{$ENDIF}

class function CoAppointmentItem.Create: _DAppointmentItem;
begin
  Result := CreateComObject(CLASS_AppointmentItem) as _DAppointmentItem;
end;

class function CoAppointmentItem.CreateRemote(const MachineName: string): _DAppointmentItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AppointmentItem) as _DAppointmentItem;
end;

procedure TAppointmentItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{00061030-0000-0000-C000-000000000046}';
    IntfIID:   '{00063033-0000-0000-C000-000000000046}';
    EventIID:  '{0006303A-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAppointmentItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _DAppointmentItem;
  end;
end;

procedure TAppointmentItem.ConnectTo(svrIntf: _DAppointmentItem);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TAppointmentItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TAppointmentItem.GetDefaultInterface: _DAppointmentItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TAppointmentItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAppointmentItemProperties.Create(Self);
{$ENDIF}
end;

destructor TAppointmentItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAppointmentItem.GetServerProperties: TAppointmentItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TAppointmentItem.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    61441: if Assigned(FOnRead) then
         FOnRead(Self);
    61442: if Assigned(FOnWrite) then
         FOnWrite(Self);
    61443: if Assigned(FOnOpen) then
         FOnOpen(Self);
    61444: if Assigned(FOnClose) then
         FOnClose(Self);
    61445: if Assigned(FOnSend) then
         FOnSend(Self);
    62566: if Assigned(FOnReply) then
         FOnReply(Self, Params[0] {const IDispatch});
    62567: if Assigned(FOnReplyAll) then
         FOnReplyAll(Self, Params[0] {const IDispatch});
    62568: if Assigned(FOnForward) then
         FOnForward(Self, Params[0] {const IDispatch});
    61446: if Assigned(FOnCustomAction) then
         FOnCustomAction(Self,
                         Params[0] {const IDispatch},
                         Params[1] {const IDispatch});
    61448: if Assigned(FOnCustomPropertyChange) then
         FOnCustomPropertyChange(Self, Params[0] {const WideString});
    61449: if Assigned(FOnPropertyChange) then
         FOnPropertyChange(Self, Params[0] {const WideString});
  end; {case DispID}
end;

function TAppointmentItem.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TAppointmentItem.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TAppointmentItem.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TAppointmentItem.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TAppointmentItem.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TAppointmentItem.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TAppointmentItem.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TAppointmentItem.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TAppointmentItem.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TAppointmentItem.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TAppointmentItem.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TAppointmentItem.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TAppointmentItem.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TAppointmentItem.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TAppointmentItem.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TAppointmentItem.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TAppointmentItem.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TAppointmentItem.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TAppointmentItem.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TAppointmentItem.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TAppointmentItem.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TAppointmentItem.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TAppointmentItem.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TAppointmentItem.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TAppointmentItem.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TAppointmentItem.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TAppointmentItem.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TAppointmentItem.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TAppointmentItem.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TAppointmentItem.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TAppointmentItem.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TAppointmentItem.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TAppointmentItem.Get_AllDayEvent: WordBool;
begin
    Result := DefaultInterface.AllDayEvent;
end;

procedure TAppointmentItem.Set_AllDayEvent(Param1: WordBool);
begin
  DefaultInterface.AllDayEvent := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_BusyStatus: OlBusyStatus;
begin
    Result := DefaultInterface.BusyStatus;
end;

procedure TAppointmentItem.Set_BusyStatus(Param1: OlBusyStatus);
begin
  DefaultInterface.BusyStatus := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_Duration: Integer;
begin
    Result := DefaultInterface.Duration;
end;

procedure TAppointmentItem.Set_Duration(Param1: Integer);
begin
  DefaultInterface.Duration := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_End_: TDateTime;
begin
    Result := DefaultInterface.End_;
end;

procedure TAppointmentItem.Set_End_(Param1: TDateTime);
begin
  DefaultInterface.End_ := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_IsRecurring: WordBool;
begin
    Result := DefaultInterface.IsRecurring;
end;

function TAppointmentItem.Get_Location: WideString;
begin
    Result := DefaultInterface.Location;
end;

procedure TAppointmentItem.Set_Location(const Param1: WideString);
  { Warning: The property Location has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Location := Param1;
end;

function TAppointmentItem.Get_MeetingStatus: OlMeetingStatus;
begin
    Result := DefaultInterface.MeetingStatus;
end;

procedure TAppointmentItem.Set_MeetingStatus(Param1: OlMeetingStatus);
begin
  DefaultInterface.MeetingStatus := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_OptionalAttendees: WideString;
begin
    Result := DefaultInterface.OptionalAttendees;
end;

procedure TAppointmentItem.Set_OptionalAttendees(const Param1: WideString);
  { Warning: The property OptionalAttendees has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OptionalAttendees := Param1;
end;

function TAppointmentItem.Get_Organizer: WideString;
begin
    Result := DefaultInterface.Organizer;
end;

function TAppointmentItem.Get_Recipients: Recipients;
begin
    Result := DefaultInterface.Recipients;
end;

function TAppointmentItem.Get_ReminderMinutesBeforeStart: Integer;
begin
    Result := DefaultInterface.ReminderMinutesBeforeStart;
end;

procedure TAppointmentItem.Set_ReminderMinutesBeforeStart(Param1: Integer);
begin
  DefaultInterface.ReminderMinutesBeforeStart := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_ReminderOverrideDefault: WordBool;
begin
    Result := DefaultInterface.ReminderOverrideDefault;
end;

procedure TAppointmentItem.Set_ReminderOverrideDefault(Param1: WordBool);
begin
  DefaultInterface.ReminderOverrideDefault := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_ReminderPlaySound: WordBool;
begin
    Result := DefaultInterface.ReminderPlaySound;
end;

procedure TAppointmentItem.Set_ReminderPlaySound(Param1: WordBool);
begin
  DefaultInterface.ReminderPlaySound := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_ReminderSet: WordBool;
begin
    Result := DefaultInterface.ReminderSet;
end;

procedure TAppointmentItem.Set_ReminderSet(Param1: WordBool);
begin
  DefaultInterface.ReminderSet := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_ReminderSoundFile: WideString;
begin
    Result := DefaultInterface.ReminderSoundFile;
end;

procedure TAppointmentItem.Set_ReminderSoundFile(const Param1: WideString);
  { Warning: The property ReminderSoundFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ReminderSoundFile := Param1;
end;

function TAppointmentItem.Get_ReplyTime: TDateTime;
begin
    Result := DefaultInterface.ReplyTime;
end;

procedure TAppointmentItem.Set_ReplyTime(Param1: TDateTime);
begin
  DefaultInterface.ReplyTime := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_RequiredAttendees: WideString;
begin
    Result := DefaultInterface.RequiredAttendees;
end;

procedure TAppointmentItem.Set_RequiredAttendees(const Param1: WideString);
  { Warning: The property RequiredAttendees has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RequiredAttendees := Param1;
end;

function TAppointmentItem.Get_Resources: WideString;
begin
    Result := DefaultInterface.Resources;
end;

procedure TAppointmentItem.Set_Resources(const Param1: WideString);
  { Warning: The property Resources has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Resources := Param1;
end;

function TAppointmentItem.Get_ResponseRequested: WordBool;
begin
    Result := DefaultInterface.ResponseRequested;
end;

procedure TAppointmentItem.Set_ResponseRequested(Param1: WordBool);
begin
  DefaultInterface.ResponseRequested := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItem.Get_ResponseStatus: OlResponseStatus;
begin
    Result := DefaultInterface.ResponseStatus;
end;

function TAppointmentItem.Get_Start: TDateTime;
begin
    Result := DefaultInterface.Start;
end;

procedure TAppointmentItem.Set_Start(Param1: TDateTime);
begin
  DefaultInterface.Start := Param1 {TKIND_DISPATCH};
end;

procedure TAppointmentItem.Close(SaveMode: OlInspectorClose);
begin
  DefaultInterface.Close(SaveMode);
end;

function TAppointmentItem.Copy: IDispatch;
begin
  Result := DefaultInterface.Copy;
end;

procedure TAppointmentItem.Delete;
begin
  DefaultInterface.Delete;
end;

procedure TAppointmentItem.Display(Modal: OleVariant);
begin
  DefaultInterface.Display(Modal);
end;

function TAppointmentItem.Move(const DestFldr: MAPIFolder): IDispatch;
begin
  Result := DefaultInterface.Move(DestFldr);
end;

procedure TAppointmentItem.Save;
begin
  DefaultInterface.Save;
end;

procedure TAppointmentItem.SaveAs(const Path: WideString; Type_: OleVariant);
begin
  DefaultInterface.SaveAs(Path, Type_);
end;

procedure TAppointmentItem.PrintOut;
begin
  DefaultInterface.PrintOut;
end;

procedure TAppointmentItem.ClearRecurrencePattern;
begin
  DefaultInterface.ClearRecurrencePattern;
end;

function TAppointmentItem.GetRecurrencePattern: RecurrencePattern;
begin
  Result := DefaultInterface.GetRecurrencePattern;
end;

function TAppointmentItem.Respond(Response: OlMeetingResponse; fNoUI: OleVariant; 
                                  fAdditionalTextDialog: OleVariant): IDispatch;
begin
  Result := DefaultInterface.Respond(Response, fNoUI, fAdditionalTextDialog);
end;

procedure TAppointmentItem.Send;
begin
  DefaultInterface.Send;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAppointmentItemProperties.Create(AServer: TAppointmentItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TAppointmentItemProperties.GetDefaultInterface: _DAppointmentItem;
begin
  Result := FServer.DefaultInterface;
end;

function TAppointmentItemProperties.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TAppointmentItemProperties.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TAppointmentItemProperties.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TAppointmentItemProperties.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TAppointmentItemProperties.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TAppointmentItemProperties.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TAppointmentItemProperties.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TAppointmentItemProperties.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TAppointmentItemProperties.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TAppointmentItemProperties.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TAppointmentItemProperties.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TAppointmentItemProperties.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TAppointmentItemProperties.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TAppointmentItemProperties.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TAppointmentItemProperties.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TAppointmentItemProperties.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TAppointmentItemProperties.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TAppointmentItemProperties.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TAppointmentItemProperties.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TAppointmentItemProperties.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TAppointmentItemProperties.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TAppointmentItemProperties.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TAppointmentItemProperties.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TAppointmentItemProperties.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TAppointmentItemProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TAppointmentItemProperties.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TAppointmentItemProperties.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TAppointmentItemProperties.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TAppointmentItemProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TAppointmentItemProperties.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TAppointmentItemProperties.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TAppointmentItemProperties.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TAppointmentItemProperties.Get_AllDayEvent: WordBool;
begin
    Result := DefaultInterface.AllDayEvent;
end;

procedure TAppointmentItemProperties.Set_AllDayEvent(Param1: WordBool);
begin
  DefaultInterface.AllDayEvent := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_BusyStatus: OlBusyStatus;
begin
    Result := DefaultInterface.BusyStatus;
end;

procedure TAppointmentItemProperties.Set_BusyStatus(Param1: OlBusyStatus);
begin
  DefaultInterface.BusyStatus := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_Duration: Integer;
begin
    Result := DefaultInterface.Duration;
end;

procedure TAppointmentItemProperties.Set_Duration(Param1: Integer);
begin
  DefaultInterface.Duration := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_End_: TDateTime;
begin
    Result := DefaultInterface.End_;
end;

procedure TAppointmentItemProperties.Set_End_(Param1: TDateTime);
begin
  DefaultInterface.End_ := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_IsRecurring: WordBool;
begin
    Result := DefaultInterface.IsRecurring;
end;

function TAppointmentItemProperties.Get_Location: WideString;
begin
    Result := DefaultInterface.Location;
end;

procedure TAppointmentItemProperties.Set_Location(const Param1: WideString);
  { Warning: The property Location has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Location := Param1;
end;

function TAppointmentItemProperties.Get_MeetingStatus: OlMeetingStatus;
begin
    Result := DefaultInterface.MeetingStatus;
end;

procedure TAppointmentItemProperties.Set_MeetingStatus(Param1: OlMeetingStatus);
begin
  DefaultInterface.MeetingStatus := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_OptionalAttendees: WideString;
begin
    Result := DefaultInterface.OptionalAttendees;
end;

procedure TAppointmentItemProperties.Set_OptionalAttendees(const Param1: WideString);
  { Warning: The property OptionalAttendees has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OptionalAttendees := Param1;
end;

function TAppointmentItemProperties.Get_Organizer: WideString;
begin
    Result := DefaultInterface.Organizer;
end;

function TAppointmentItemProperties.Get_Recipients: Recipients;
begin
    Result := DefaultInterface.Recipients;
end;

function TAppointmentItemProperties.Get_ReminderMinutesBeforeStart: Integer;
begin
    Result := DefaultInterface.ReminderMinutesBeforeStart;
end;

procedure TAppointmentItemProperties.Set_ReminderMinutesBeforeStart(Param1: Integer);
begin
  DefaultInterface.ReminderMinutesBeforeStart := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_ReminderOverrideDefault: WordBool;
begin
    Result := DefaultInterface.ReminderOverrideDefault;
end;

procedure TAppointmentItemProperties.Set_ReminderOverrideDefault(Param1: WordBool);
begin
  DefaultInterface.ReminderOverrideDefault := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_ReminderPlaySound: WordBool;
begin
    Result := DefaultInterface.ReminderPlaySound;
end;

procedure TAppointmentItemProperties.Set_ReminderPlaySound(Param1: WordBool);
begin
  DefaultInterface.ReminderPlaySound := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_ReminderSet: WordBool;
begin
    Result := DefaultInterface.ReminderSet;
end;

procedure TAppointmentItemProperties.Set_ReminderSet(Param1: WordBool);
begin
  DefaultInterface.ReminderSet := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_ReminderSoundFile: WideString;
begin
    Result := DefaultInterface.ReminderSoundFile;
end;

procedure TAppointmentItemProperties.Set_ReminderSoundFile(const Param1: WideString);
  { Warning: The property ReminderSoundFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ReminderSoundFile := Param1;
end;

function TAppointmentItemProperties.Get_ReplyTime: TDateTime;
begin
    Result := DefaultInterface.ReplyTime;
end;

procedure TAppointmentItemProperties.Set_ReplyTime(Param1: TDateTime);
begin
  DefaultInterface.ReplyTime := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_RequiredAttendees: WideString;
begin
    Result := DefaultInterface.RequiredAttendees;
end;

procedure TAppointmentItemProperties.Set_RequiredAttendees(const Param1: WideString);
  { Warning: The property RequiredAttendees has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RequiredAttendees := Param1;
end;

function TAppointmentItemProperties.Get_Resources: WideString;
begin
    Result := DefaultInterface.Resources;
end;

procedure TAppointmentItemProperties.Set_Resources(const Param1: WideString);
  { Warning: The property Resources has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Resources := Param1;
end;

function TAppointmentItemProperties.Get_ResponseRequested: WordBool;
begin
    Result := DefaultInterface.ResponseRequested;
end;

procedure TAppointmentItemProperties.Set_ResponseRequested(Param1: WordBool);
begin
  DefaultInterface.ResponseRequested := Param1 {TKIND_DISPATCH};
end;

function TAppointmentItemProperties.Get_ResponseStatus: OlResponseStatus;
begin
    Result := DefaultInterface.ResponseStatus;
end;

function TAppointmentItemProperties.Get_Start: TDateTime;
begin
    Result := DefaultInterface.Start;
end;

procedure TAppointmentItemProperties.Set_Start(Param1: TDateTime);
begin
  DefaultInterface.Start := Param1 {TKIND_DISPATCH};
end;

{$ENDIF}

class function CoContactItem.Create: _DContactItem;
begin
  Result := CreateComObject(CLASS_ContactItem) as _DContactItem;
end;

class function CoContactItem.CreateRemote(const MachineName: string): _DContactItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ContactItem) as _DContactItem;
end;

procedure TContactItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{00061031-0000-0000-C000-000000000046}';
    IntfIID:   '{00063021-0000-0000-C000-000000000046}';
    EventIID:  '{0006303A-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TContactItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _DContactItem;
  end;
end;

procedure TContactItem.ConnectTo(svrIntf: _DContactItem);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TContactItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TContactItem.GetDefaultInterface: _DContactItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TContactItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TContactItemProperties.Create(Self);
{$ENDIF}
end;

destructor TContactItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TContactItem.GetServerProperties: TContactItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TContactItem.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    61441: if Assigned(FOnRead) then
         FOnRead(Self);
    61442: if Assigned(FOnWrite) then
         FOnWrite(Self);
    61443: if Assigned(FOnOpen) then
         FOnOpen(Self);
    61444: if Assigned(FOnClose) then
         FOnClose(Self);
    61445: if Assigned(FOnSend) then
         FOnSend(Self);
    62566: if Assigned(FOnReply) then
         FOnReply(Self, Params[0] {const IDispatch});
    62567: if Assigned(FOnReplyAll) then
         FOnReplyAll(Self, Params[0] {const IDispatch});
    62568: if Assigned(FOnForward) then
         FOnForward(Self, Params[0] {const IDispatch});
    61446: if Assigned(FOnCustomAction) then
         FOnCustomAction(Self,
                         Params[0] {const IDispatch},
                         Params[1] {const IDispatch});
    61448: if Assigned(FOnCustomPropertyChange) then
         FOnCustomPropertyChange(Self, Params[0] {const WideString});
    61449: if Assigned(FOnPropertyChange) then
         FOnPropertyChange(Self, Params[0] {const WideString});
  end; {case DispID}
end;

function TContactItem.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TContactItem.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TContactItem.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TContactItem.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TContactItem.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TContactItem.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TContactItem.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TContactItem.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TContactItem.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TContactItem.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TContactItem.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TContactItem.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TContactItem.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TContactItem.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TContactItem.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TContactItem.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TContactItem.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TContactItem.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TContactItem.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TContactItem.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TContactItem.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TContactItem.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TContactItem.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TContactItem.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TContactItem.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TContactItem.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TContactItem.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TContactItem.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TContactItem.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TContactItem.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TContactItem.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TContactItem.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TContactItem.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TContactItem.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TContactItem.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TContactItem.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TContactItem.Get_Account: WideString;
begin
    Result := DefaultInterface.Account;
end;

procedure TContactItem.Set_Account(const Param1: WideString);
  { Warning: The property Account has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Account := Param1;
end;

function TContactItem.Get_Anniversary: TDateTime;
begin
    Result := DefaultInterface.Anniversary;
end;

procedure TContactItem.Set_Anniversary(Param1: TDateTime);
begin
  DefaultInterface.Anniversary := Param1 {TKIND_DISPATCH};
end;

function TContactItem.Get_AssistantName: WideString;
begin
    Result := DefaultInterface.AssistantName;
end;

procedure TContactItem.Set_AssistantName(const Param1: WideString);
  { Warning: The property AssistantName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AssistantName := Param1;
end;

function TContactItem.Get_AssistantTelephoneNumber: WideString;
begin
    Result := DefaultInterface.AssistantTelephoneNumber;
end;

procedure TContactItem.Set_AssistantTelephoneNumber(const Param1: WideString);
  { Warning: The property AssistantTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AssistantTelephoneNumber := Param1;
end;

function TContactItem.Get_Birthday: TDateTime;
begin
    Result := DefaultInterface.Birthday;
end;

procedure TContactItem.Set_Birthday(Param1: TDateTime);
begin
  DefaultInterface.Birthday := Param1 {TKIND_DISPATCH};
end;

function TContactItem.Get_Business2TelephoneNumber: WideString;
begin
    Result := DefaultInterface.Business2TelephoneNumber;
end;

procedure TContactItem.Set_Business2TelephoneNumber(const Param1: WideString);
  { Warning: The property Business2TelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Business2TelephoneNumber := Param1;
end;

function TContactItem.Get_BusinessAddress: WideString;
begin
    Result := DefaultInterface.BusinessAddress;
end;

procedure TContactItem.Set_BusinessAddress(const Param1: WideString);
  { Warning: The property BusinessAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddress := Param1;
end;

function TContactItem.Get_BusinessAddressCity: WideString;
begin
    Result := DefaultInterface.BusinessAddressCity;
end;

procedure TContactItem.Set_BusinessAddressCity(const Param1: WideString);
  { Warning: The property BusinessAddressCity has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddressCity := Param1;
end;

function TContactItem.Get_BusinessAddressCountry: WideString;
begin
    Result := DefaultInterface.BusinessAddressCountry;
end;

procedure TContactItem.Set_BusinessAddressCountry(const Param1: WideString);
  { Warning: The property BusinessAddressCountry has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddressCountry := Param1;
end;

function TContactItem.Get_BusinessAddressPostalCode: WideString;
begin
    Result := DefaultInterface.BusinessAddressPostalCode;
end;

procedure TContactItem.Set_BusinessAddressPostalCode(const Param1: WideString);
  { Warning: The property BusinessAddressPostalCode has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddressPostalCode := Param1;
end;

function TContactItem.Get_BusinessAddressPostOfficeBox: WideString;
begin
    Result := DefaultInterface.BusinessAddressPostOfficeBox;
end;

procedure TContactItem.Set_BusinessAddressPostOfficeBox(const Param1: WideString);
  { Warning: The property BusinessAddressPostOfficeBox has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddressPostOfficeBox := Param1;
end;

function TContactItem.Get_BusinessAddressState: WideString;
begin
    Result := DefaultInterface.BusinessAddressState;
end;

procedure TContactItem.Set_BusinessAddressState(const Param1: WideString);
  { Warning: The property BusinessAddressState has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddressState := Param1;
end;

function TContactItem.Get_BusinessAddressStreet: WideString;
begin
    Result := DefaultInterface.BusinessAddressStreet;
end;

procedure TContactItem.Set_BusinessAddressStreet(const Param1: WideString);
  { Warning: The property BusinessAddressStreet has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddressStreet := Param1;
end;

function TContactItem.Get_BusinessFaxNumber: WideString;
begin
    Result := DefaultInterface.BusinessFaxNumber;
end;

procedure TContactItem.Set_BusinessFaxNumber(const Param1: WideString);
  { Warning: The property BusinessFaxNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessFaxNumber := Param1;
end;

function TContactItem.Get_BusinessHomePage: WideString;
begin
    Result := DefaultInterface.BusinessHomePage;
end;

procedure TContactItem.Set_BusinessHomePage(const Param1: WideString);
  { Warning: The property BusinessHomePage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessHomePage := Param1;
end;

function TContactItem.Get_BusinessTelephoneNumber: WideString;
begin
    Result := DefaultInterface.BusinessTelephoneNumber;
end;

procedure TContactItem.Set_BusinessTelephoneNumber(const Param1: WideString);
  { Warning: The property BusinessTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessTelephoneNumber := Param1;
end;

function TContactItem.Get_CallbackTelephoneNumber: WideString;
begin
    Result := DefaultInterface.CallbackTelephoneNumber;
end;

procedure TContactItem.Set_CallbackTelephoneNumber(const Param1: WideString);
  { Warning: The property CallbackTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CallbackTelephoneNumber := Param1;
end;

function TContactItem.Get_CarTelephoneNumber: WideString;
begin
    Result := DefaultInterface.CarTelephoneNumber;
end;

procedure TContactItem.Set_CarTelephoneNumber(const Param1: WideString);
  { Warning: The property CarTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CarTelephoneNumber := Param1;
end;

function TContactItem.Get_Children: WideString;
begin
    Result := DefaultInterface.Children;
end;

procedure TContactItem.Set_Children(const Param1: WideString);
  { Warning: The property Children has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Children := Param1;
end;

function TContactItem.Get_CompanyAndFullName: WideString;
begin
    Result := DefaultInterface.CompanyAndFullName;
end;

function TContactItem.Get_CompanyMainTelephoneNumber: WideString;
begin
    Result := DefaultInterface.CompanyMainTelephoneNumber;
end;

procedure TContactItem.Set_CompanyMainTelephoneNumber(const Param1: WideString);
  { Warning: The property CompanyMainTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CompanyMainTelephoneNumber := Param1;
end;

function TContactItem.Get_CompanyName: WideString;
begin
    Result := DefaultInterface.CompanyName;
end;

procedure TContactItem.Set_CompanyName(const Param1: WideString);
  { Warning: The property CompanyName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CompanyName := Param1;
end;

function TContactItem.Get_ComputerNetworkName: WideString;
begin
    Result := DefaultInterface.ComputerNetworkName;
end;

procedure TContactItem.Set_ComputerNetworkName(const Param1: WideString);
  { Warning: The property ComputerNetworkName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ComputerNetworkName := Param1;
end;

function TContactItem.Get_CustomerID: WideString;
begin
    Result := DefaultInterface.CustomerID;
end;

procedure TContactItem.Set_CustomerID(const Param1: WideString);
  { Warning: The property CustomerID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CustomerID := Param1;
end;

function TContactItem.Get_Department: WideString;
begin
    Result := DefaultInterface.Department;
end;

procedure TContactItem.Set_Department(const Param1: WideString);
  { Warning: The property Department has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Department := Param1;
end;

function TContactItem.Get_Email1Address: WideString;
begin
    Result := DefaultInterface.Email1Address;
end;

procedure TContactItem.Set_Email1Address(const Param1: WideString);
  { Warning: The property Email1Address has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email1Address := Param1;
end;

function TContactItem.Get_Email1AddressType: WideString;
begin
    Result := DefaultInterface.Email1AddressType;
end;

procedure TContactItem.Set_Email1AddressType(const Param1: WideString);
  { Warning: The property Email1AddressType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email1AddressType := Param1;
end;

function TContactItem.Get_Email1DisplayName: WideString;
begin
    Result := DefaultInterface.Email1DisplayName;
end;

function TContactItem.Get_Email1EntryID: WideString;
begin
    Result := DefaultInterface.Email1EntryID;
end;

function TContactItem.Get_Email2Address: WideString;
begin
    Result := DefaultInterface.Email2Address;
end;

procedure TContactItem.Set_Email2Address(const Param1: WideString);
  { Warning: The property Email2Address has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email2Address := Param1;
end;

function TContactItem.Get_Email2AddressType: WideString;
begin
    Result := DefaultInterface.Email2AddressType;
end;

procedure TContactItem.Set_Email2AddressType(const Param1: WideString);
  { Warning: The property Email2AddressType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email2AddressType := Param1;
end;

function TContactItem.Get_Email2DisplayName: WideString;
begin
    Result := DefaultInterface.Email2DisplayName;
end;

function TContactItem.Get_Email2EntryID: WideString;
begin
    Result := DefaultInterface.Email2EntryID;
end;

function TContactItem.Get_Email3Address: WideString;
begin
    Result := DefaultInterface.Email3Address;
end;

procedure TContactItem.Set_Email3Address(const Param1: WideString);
  { Warning: The property Email3Address has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email3Address := Param1;
end;

function TContactItem.Get_Email3AddressType: WideString;
begin
    Result := DefaultInterface.Email3AddressType;
end;

procedure TContactItem.Set_Email3AddressType(const Param1: WideString);
  { Warning: The property Email3AddressType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email3AddressType := Param1;
end;

function TContactItem.Get_Email3DisplayName: WideString;
begin
    Result := DefaultInterface.Email3DisplayName;
end;

function TContactItem.Get_Email3EntryID: WideString;
begin
    Result := DefaultInterface.Email3EntryID;
end;

function TContactItem.Get_FileAs: WideString;
begin
    Result := DefaultInterface.FileAs;
end;

procedure TContactItem.Set_FileAs(const Param1: WideString);
  { Warning: The property FileAs has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FileAs := Param1;
end;

function TContactItem.Get_FirstName: WideString;
begin
    Result := DefaultInterface.FirstName;
end;

procedure TContactItem.Set_FirstName(const Param1: WideString);
  { Warning: The property FirstName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FirstName := Param1;
end;

function TContactItem.Get_FTPSite: WideString;
begin
    Result := DefaultInterface.FTPSite;
end;

procedure TContactItem.Set_FTPSite(const Param1: WideString);
  { Warning: The property FTPSite has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FTPSite := Param1;
end;

function TContactItem.Get_FullName: WideString;
begin
    Result := DefaultInterface.FullName;
end;

procedure TContactItem.Set_FullName(const Param1: WideString);
  { Warning: The property FullName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FullName := Param1;
end;

function TContactItem.Get_FullNameAndCompany: WideString;
begin
    Result := DefaultInterface.FullNameAndCompany;
end;

function TContactItem.Get_Gender: OlGender;
begin
    Result := DefaultInterface.Gender;
end;

procedure TContactItem.Set_Gender(Param1: OlGender);
begin
  DefaultInterface.Gender := Param1 {TKIND_DISPATCH};
end;

function TContactItem.Get_GovernmentIDNumber: WideString;
begin
    Result := DefaultInterface.GovernmentIDNumber;
end;

procedure TContactItem.Set_GovernmentIDNumber(const Param1: WideString);
  { Warning: The property GovernmentIDNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.GovernmentIDNumber := Param1;
end;

function TContactItem.Get_Hobby: WideString;
begin
    Result := DefaultInterface.Hobby;
end;

procedure TContactItem.Set_Hobby(const Param1: WideString);
  { Warning: The property Hobby has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Hobby := Param1;
end;

function TContactItem.Get_Home2TelephoneNumber: WideString;
begin
    Result := DefaultInterface.Home2TelephoneNumber;
end;

procedure TContactItem.Set_Home2TelephoneNumber(const Param1: WideString);
  { Warning: The property Home2TelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Home2TelephoneNumber := Param1;
end;

function TContactItem.Get_HomeAddress: WideString;
begin
    Result := DefaultInterface.HomeAddress;
end;

procedure TContactItem.Set_HomeAddress(const Param1: WideString);
  { Warning: The property HomeAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddress := Param1;
end;

function TContactItem.Get_HomeAddressCity: WideString;
begin
    Result := DefaultInterface.HomeAddressCity;
end;

procedure TContactItem.Set_HomeAddressCity(const Param1: WideString);
  { Warning: The property HomeAddressCity has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddressCity := Param1;
end;

function TContactItem.Get_HomeAddressCountry: WideString;
begin
    Result := DefaultInterface.HomeAddressCountry;
end;

procedure TContactItem.Set_HomeAddressCountry(const Param1: WideString);
  { Warning: The property HomeAddressCountry has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddressCountry := Param1;
end;

function TContactItem.Get_HomeAddressPostalCode: WideString;
begin
    Result := DefaultInterface.HomeAddressPostalCode;
end;

procedure TContactItem.Set_HomeAddressPostalCode(const Param1: WideString);
  { Warning: The property HomeAddressPostalCode has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddressPostalCode := Param1;
end;

function TContactItem.Get_HomeAddressPostOfficeBox: WideString;
begin
    Result := DefaultInterface.HomeAddressPostOfficeBox;
end;

procedure TContactItem.Set_HomeAddressPostOfficeBox(const Param1: WideString);
  { Warning: The property HomeAddressPostOfficeBox has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddressPostOfficeBox := Param1;
end;

function TContactItem.Get_HomeAddressState: WideString;
begin
    Result := DefaultInterface.HomeAddressState;
end;

procedure TContactItem.Set_HomeAddressState(const Param1: WideString);
  { Warning: The property HomeAddressState has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddressState := Param1;
end;

function TContactItem.Get_HomeAddressStreet: WideString;
begin
    Result := DefaultInterface.HomeAddressStreet;
end;

procedure TContactItem.Set_HomeAddressStreet(const Param1: WideString);
  { Warning: The property HomeAddressStreet has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddressStreet := Param1;
end;

function TContactItem.Get_HomeFaxNumber: WideString;
begin
    Result := DefaultInterface.HomeFaxNumber;
end;

procedure TContactItem.Set_HomeFaxNumber(const Param1: WideString);
  { Warning: The property HomeFaxNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeFaxNumber := Param1;
end;

function TContactItem.Get_HomeTelephoneNumber: WideString;
begin
    Result := DefaultInterface.HomeTelephoneNumber;
end;

procedure TContactItem.Set_HomeTelephoneNumber(const Param1: WideString);
  { Warning: The property HomeTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeTelephoneNumber := Param1;
end;

function TContactItem.Get_Initials: WideString;
begin
    Result := DefaultInterface.Initials;
end;

procedure TContactItem.Set_Initials(const Param1: WideString);
  { Warning: The property Initials has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Initials := Param1;
end;

function TContactItem.Get_ISDNNumber: WideString;
begin
    Result := DefaultInterface.ISDNNumber;
end;

procedure TContactItem.Set_ISDNNumber(const Param1: WideString);
  { Warning: The property ISDNNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ISDNNumber := Param1;
end;

function TContactItem.Get_JobTitle: WideString;
begin
    Result := DefaultInterface.JobTitle;
end;

procedure TContactItem.Set_JobTitle(const Param1: WideString);
  { Warning: The property JobTitle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.JobTitle := Param1;
end;

function TContactItem.Get_Journal: WordBool;
begin
    Result := DefaultInterface.Journal;
end;

procedure TContactItem.Set_Journal(Param1: WordBool);
begin
  DefaultInterface.Journal := Param1 {TKIND_DISPATCH};
end;

function TContactItem.Get_Language: WideString;
begin
    Result := DefaultInterface.Language;
end;

procedure TContactItem.Set_Language(const Param1: WideString);
  { Warning: The property Language has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Language := Param1;
end;

function TContactItem.Get_LastName: WideString;
begin
    Result := DefaultInterface.LastName;
end;

procedure TContactItem.Set_LastName(const Param1: WideString);
  { Warning: The property LastName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LastName := Param1;
end;

function TContactItem.Get_LastNameAndFirstName: WideString;
begin
    Result := DefaultInterface.LastNameAndFirstName;
end;

function TContactItem.Get_MailingAddress: WideString;
begin
    Result := DefaultInterface.MailingAddress;
end;

procedure TContactItem.Set_MailingAddress(const Param1: WideString);
  { Warning: The property MailingAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddress := Param1;
end;

function TContactItem.Get_MailingAddressCity: WideString;
begin
    Result := DefaultInterface.MailingAddressCity;
end;

procedure TContactItem.Set_MailingAddressCity(const Param1: WideString);
  { Warning: The property MailingAddressCity has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddressCity := Param1;
end;

function TContactItem.Get_MailingAddressCountry: WideString;
begin
    Result := DefaultInterface.MailingAddressCountry;
end;

procedure TContactItem.Set_MailingAddressCountry(const Param1: WideString);
  { Warning: The property MailingAddressCountry has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddressCountry := Param1;
end;

function TContactItem.Get_MailingAddressPostalCode: WideString;
begin
    Result := DefaultInterface.MailingAddressPostalCode;
end;

procedure TContactItem.Set_MailingAddressPostalCode(const Param1: WideString);
  { Warning: The property MailingAddressPostalCode has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddressPostalCode := Param1;
end;

function TContactItem.Get_MailingAddressPostOfficeBox: WideString;
begin
    Result := DefaultInterface.MailingAddressPostOfficeBox;
end;

procedure TContactItem.Set_MailingAddressPostOfficeBox(const Param1: WideString);
  { Warning: The property MailingAddressPostOfficeBox has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddressPostOfficeBox := Param1;
end;

function TContactItem.Get_MailingAddressState: WideString;
begin
    Result := DefaultInterface.MailingAddressState;
end;

procedure TContactItem.Set_MailingAddressState(const Param1: WideString);
  { Warning: The property MailingAddressState has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddressState := Param1;
end;

function TContactItem.Get_MailingAddressStreet: WideString;
begin
    Result := DefaultInterface.MailingAddressStreet;
end;

procedure TContactItem.Set_MailingAddressStreet(const Param1: WideString);
  { Warning: The property MailingAddressStreet has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddressStreet := Param1;
end;

function TContactItem.Get_ManagerName: WideString;
begin
    Result := DefaultInterface.ManagerName;
end;

procedure TContactItem.Set_ManagerName(const Param1: WideString);
  { Warning: The property ManagerName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ManagerName := Param1;
end;

function TContactItem.Get_MiddleName: WideString;
begin
    Result := DefaultInterface.MiddleName;
end;

procedure TContactItem.Set_MiddleName(const Param1: WideString);
  { Warning: The property MiddleName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MiddleName := Param1;
end;

function TContactItem.Get_MobileTelephoneNumber: WideString;
begin
    Result := DefaultInterface.MobileTelephoneNumber;
end;

procedure TContactItem.Set_MobileTelephoneNumber(const Param1: WideString);
  { Warning: The property MobileTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MobileTelephoneNumber := Param1;
end;

function TContactItem.Get_NickName: WideString;
begin
    Result := DefaultInterface.NickName;
end;

procedure TContactItem.Set_NickName(const Param1: WideString);
  { Warning: The property NickName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NickName := Param1;
end;

function TContactItem.Get_OfficeLocation: WideString;
begin
    Result := DefaultInterface.OfficeLocation;
end;

procedure TContactItem.Set_OfficeLocation(const Param1: WideString);
  { Warning: The property OfficeLocation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OfficeLocation := Param1;
end;

function TContactItem.Get_OrganizationalIDNumber: WideString;
begin
    Result := DefaultInterface.OrganizationalIDNumber;
end;

procedure TContactItem.Set_OrganizationalIDNumber(const Param1: WideString);
  { Warning: The property OrganizationalIDNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OrganizationalIDNumber := Param1;
end;

function TContactItem.Get_OtherAddress: WideString;
begin
    Result := DefaultInterface.OtherAddress;
end;

procedure TContactItem.Set_OtherAddress(const Param1: WideString);
  { Warning: The property OtherAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddress := Param1;
end;

function TContactItem.Get_OtherAddressCity: WideString;
begin
    Result := DefaultInterface.OtherAddressCity;
end;

procedure TContactItem.Set_OtherAddressCity(const Param1: WideString);
  { Warning: The property OtherAddressCity has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddressCity := Param1;
end;

function TContactItem.Get_OtherAddressCountry: WideString;
begin
    Result := DefaultInterface.OtherAddressCountry;
end;

procedure TContactItem.Set_OtherAddressCountry(const Param1: WideString);
  { Warning: The property OtherAddressCountry has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddressCountry := Param1;
end;

function TContactItem.Get_OtherAddressPostalCode: WideString;
begin
    Result := DefaultInterface.OtherAddressPostalCode;
end;

procedure TContactItem.Set_OtherAddressPostalCode(const Param1: WideString);
  { Warning: The property OtherAddressPostalCode has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddressPostalCode := Param1;
end;

function TContactItem.Get_OtherAddressPostOfficeBox: WideString;
begin
    Result := DefaultInterface.OtherAddressPostOfficeBox;
end;

procedure TContactItem.Set_OtherAddressPostOfficeBox(const Param1: WideString);
  { Warning: The property OtherAddressPostOfficeBox has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddressPostOfficeBox := Param1;
end;

function TContactItem.Get_OtherAddressState: WideString;
begin
    Result := DefaultInterface.OtherAddressState;
end;

procedure TContactItem.Set_OtherAddressState(const Param1: WideString);
  { Warning: The property OtherAddressState has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddressState := Param1;
end;

function TContactItem.Get_OtherAddressStreet: WideString;
begin
    Result := DefaultInterface.OtherAddressStreet;
end;

procedure TContactItem.Set_OtherAddressStreet(const Param1: WideString);
  { Warning: The property OtherAddressStreet has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddressStreet := Param1;
end;

function TContactItem.Get_OtherFaxNumber: WideString;
begin
    Result := DefaultInterface.OtherFaxNumber;
end;

procedure TContactItem.Set_OtherFaxNumber(const Param1: WideString);
  { Warning: The property OtherFaxNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherFaxNumber := Param1;
end;

function TContactItem.Get_OtherTelephoneNumber: WideString;
begin
    Result := DefaultInterface.OtherTelephoneNumber;
end;

procedure TContactItem.Set_OtherTelephoneNumber(const Param1: WideString);
  { Warning: The property OtherTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherTelephoneNumber := Param1;
end;

function TContactItem.Get_PagerNumber: WideString;
begin
    Result := DefaultInterface.PagerNumber;
end;

procedure TContactItem.Set_PagerNumber(const Param1: WideString);
  { Warning: The property PagerNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PagerNumber := Param1;
end;

function TContactItem.Get_PersonalHomePage: WideString;
begin
    Result := DefaultInterface.PersonalHomePage;
end;

procedure TContactItem.Set_PersonalHomePage(const Param1: WideString);
  { Warning: The property PersonalHomePage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PersonalHomePage := Param1;
end;

function TContactItem.Get_PrimaryTelephoneNumber: WideString;
begin
    Result := DefaultInterface.PrimaryTelephoneNumber;
end;

procedure TContactItem.Set_PrimaryTelephoneNumber(const Param1: WideString);
  { Warning: The property PrimaryTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PrimaryTelephoneNumber := Param1;
end;

function TContactItem.Get_Profession: WideString;
begin
    Result := DefaultInterface.Profession;
end;

procedure TContactItem.Set_Profession(const Param1: WideString);
  { Warning: The property Profession has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Profession := Param1;
end;

function TContactItem.Get_RadioTelephoneNumber: WideString;
begin
    Result := DefaultInterface.RadioTelephoneNumber;
end;

procedure TContactItem.Set_RadioTelephoneNumber(const Param1: WideString);
  { Warning: The property RadioTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RadioTelephoneNumber := Param1;
end;

function TContactItem.Get_ReferredBy: WideString;
begin
    Result := DefaultInterface.ReferredBy;
end;

procedure TContactItem.Set_ReferredBy(const Param1: WideString);
  { Warning: The property ReferredBy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ReferredBy := Param1;
end;

function TContactItem.Get_SelectedMailingAddress: OlMailingAddress;
begin
    Result := DefaultInterface.SelectedMailingAddress;
end;

procedure TContactItem.Set_SelectedMailingAddress(Param1: OlMailingAddress);
begin
  DefaultInterface.SelectedMailingAddress := Param1 {TKIND_DISPATCH};
end;

function TContactItem.Get_Spouse: WideString;
begin
    Result := DefaultInterface.Spouse;
end;

procedure TContactItem.Set_Spouse(const Param1: WideString);
  { Warning: The property Spouse has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Spouse := Param1;
end;

function TContactItem.Get_Suffix: WideString;
begin
    Result := DefaultInterface.Suffix;
end;

procedure TContactItem.Set_Suffix(const Param1: WideString);
  { Warning: The property Suffix has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Suffix := Param1;
end;

function TContactItem.Get_TelexNumber: WideString;
begin
    Result := DefaultInterface.TelexNumber;
end;

procedure TContactItem.Set_TelexNumber(const Param1: WideString);
  { Warning: The property TelexNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TelexNumber := Param1;
end;

function TContactItem.Get_Title: WideString;
begin
    Result := DefaultInterface.Title;
end;

procedure TContactItem.Set_Title(const Param1: WideString);
  { Warning: The property Title has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Title := Param1;
end;

function TContactItem.Get_TTYTDDTelephoneNumber: WideString;
begin
    Result := DefaultInterface.TTYTDDTelephoneNumber;
end;

procedure TContactItem.Set_TTYTDDTelephoneNumber(const Param1: WideString);
  { Warning: The property TTYTDDTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TTYTDDTelephoneNumber := Param1;
end;

function TContactItem.Get_User1: WideString;
begin
    Result := DefaultInterface.User1;
end;

procedure TContactItem.Set_User1(const Param1: WideString);
  { Warning: The property User1 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.User1 := Param1;
end;

function TContactItem.Get_User2: WideString;
begin
    Result := DefaultInterface.User2;
end;

procedure TContactItem.Set_User2(const Param1: WideString);
  { Warning: The property User2 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.User2 := Param1;
end;

function TContactItem.Get_User3: WideString;
begin
    Result := DefaultInterface.User3;
end;

procedure TContactItem.Set_User3(const Param1: WideString);
  { Warning: The property User3 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.User3 := Param1;
end;

function TContactItem.Get_User4: WideString;
begin
    Result := DefaultInterface.User4;
end;

procedure TContactItem.Set_User4(const Param1: WideString);
  { Warning: The property User4 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.User4 := Param1;
end;

function TContactItem.Get_UserCertificate: WideString;
begin
    Result := DefaultInterface.UserCertificate;
end;

procedure TContactItem.Set_UserCertificate(const Param1: WideString);
  { Warning: The property UserCertificate has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UserCertificate := Param1;
end;

function TContactItem.Get_WebPage: WideString;
begin
    Result := DefaultInterface.WebPage;
end;

procedure TContactItem.Set_WebPage(const Param1: WideString);
  { Warning: The property WebPage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.WebPage := Param1;
end;

function TContactItem.Get_YomiCompanyName: WideString;
begin
    Result := DefaultInterface.YomiCompanyName;
end;

procedure TContactItem.Set_YomiCompanyName(const Param1: WideString);
  { Warning: The property YomiCompanyName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.YomiCompanyName := Param1;
end;

function TContactItem.Get_YomiFirstName: WideString;
begin
    Result := DefaultInterface.YomiFirstName;
end;

procedure TContactItem.Set_YomiFirstName(const Param1: WideString);
  { Warning: The property YomiFirstName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.YomiFirstName := Param1;
end;

function TContactItem.Get_YomiLastName: WideString;
begin
    Result := DefaultInterface.YomiLastName;
end;

procedure TContactItem.Set_YomiLastName(const Param1: WideString);
  { Warning: The property YomiLastName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.YomiLastName := Param1;
end;

procedure TContactItem.Close(SaveMode: OlInspectorClose);
begin
  DefaultInterface.Close(SaveMode);
end;

function TContactItem.Copy: IDispatch;
begin
  Result := DefaultInterface.Copy;
end;

procedure TContactItem.Delete;
begin
  DefaultInterface.Delete;
end;

procedure TContactItem.Display(Modal: OleVariant);
begin
  DefaultInterface.Display(Modal);
end;

function TContactItem.Move(const DestFldr: MAPIFolder): IDispatch;
begin
  Result := DefaultInterface.Move(DestFldr);
end;

procedure TContactItem.Save;
begin
  DefaultInterface.Save;
end;

procedure TContactItem.SaveAs(const Path: WideString; Type_: OleVariant);
begin
  DefaultInterface.SaveAs(Path, Type_);
end;

procedure TContactItem.PrintOut;
begin
  DefaultInterface.PrintOut;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TContactItemProperties.Create(AServer: TContactItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TContactItemProperties.GetDefaultInterface: _DContactItem;
begin
  Result := FServer.DefaultInterface;
end;

function TContactItemProperties.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TContactItemProperties.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TContactItemProperties.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TContactItemProperties.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TContactItemProperties.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TContactItemProperties.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TContactItemProperties.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TContactItemProperties.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TContactItemProperties.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TContactItemProperties.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TContactItemProperties.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TContactItemProperties.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TContactItemProperties.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TContactItemProperties.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TContactItemProperties.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TContactItemProperties.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TContactItemProperties.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TContactItemProperties.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TContactItemProperties.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TContactItemProperties.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TContactItemProperties.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TContactItemProperties.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TContactItemProperties.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TContactItemProperties.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TContactItemProperties.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TContactItemProperties.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TContactItemProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TContactItemProperties.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TContactItemProperties.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TContactItemProperties.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TContactItemProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TContactItemProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TContactItemProperties.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TContactItemProperties.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TContactItemProperties.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TContactItemProperties.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TContactItemProperties.Get_Account: WideString;
begin
    Result := DefaultInterface.Account;
end;

procedure TContactItemProperties.Set_Account(const Param1: WideString);
  { Warning: The property Account has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Account := Param1;
end;

function TContactItemProperties.Get_Anniversary: TDateTime;
begin
    Result := DefaultInterface.Anniversary;
end;

procedure TContactItemProperties.Set_Anniversary(Param1: TDateTime);
begin
  DefaultInterface.Anniversary := Param1 {TKIND_DISPATCH};
end;

function TContactItemProperties.Get_AssistantName: WideString;
begin
    Result := DefaultInterface.AssistantName;
end;

procedure TContactItemProperties.Set_AssistantName(const Param1: WideString);
  { Warning: The property AssistantName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AssistantName := Param1;
end;

function TContactItemProperties.Get_AssistantTelephoneNumber: WideString;
begin
    Result := DefaultInterface.AssistantTelephoneNumber;
end;

procedure TContactItemProperties.Set_AssistantTelephoneNumber(const Param1: WideString);
  { Warning: The property AssistantTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AssistantTelephoneNumber := Param1;
end;

function TContactItemProperties.Get_Birthday: TDateTime;
begin
    Result := DefaultInterface.Birthday;
end;

procedure TContactItemProperties.Set_Birthday(Param1: TDateTime);
begin
  DefaultInterface.Birthday := Param1 {TKIND_DISPATCH};
end;

function TContactItemProperties.Get_Business2TelephoneNumber: WideString;
begin
    Result := DefaultInterface.Business2TelephoneNumber;
end;

procedure TContactItemProperties.Set_Business2TelephoneNumber(const Param1: WideString);
  { Warning: The property Business2TelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Business2TelephoneNumber := Param1;
end;

function TContactItemProperties.Get_BusinessAddress: WideString;
begin
    Result := DefaultInterface.BusinessAddress;
end;

procedure TContactItemProperties.Set_BusinessAddress(const Param1: WideString);
  { Warning: The property BusinessAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddress := Param1;
end;

function TContactItemProperties.Get_BusinessAddressCity: WideString;
begin
    Result := DefaultInterface.BusinessAddressCity;
end;

procedure TContactItemProperties.Set_BusinessAddressCity(const Param1: WideString);
  { Warning: The property BusinessAddressCity has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddressCity := Param1;
end;

function TContactItemProperties.Get_BusinessAddressCountry: WideString;
begin
    Result := DefaultInterface.BusinessAddressCountry;
end;

procedure TContactItemProperties.Set_BusinessAddressCountry(const Param1: WideString);
  { Warning: The property BusinessAddressCountry has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddressCountry := Param1;
end;

function TContactItemProperties.Get_BusinessAddressPostalCode: WideString;
begin
    Result := DefaultInterface.BusinessAddressPostalCode;
end;

procedure TContactItemProperties.Set_BusinessAddressPostalCode(const Param1: WideString);
  { Warning: The property BusinessAddressPostalCode has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddressPostalCode := Param1;
end;

function TContactItemProperties.Get_BusinessAddressPostOfficeBox: WideString;
begin
    Result := DefaultInterface.BusinessAddressPostOfficeBox;
end;

procedure TContactItemProperties.Set_BusinessAddressPostOfficeBox(const Param1: WideString);
  { Warning: The property BusinessAddressPostOfficeBox has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddressPostOfficeBox := Param1;
end;

function TContactItemProperties.Get_BusinessAddressState: WideString;
begin
    Result := DefaultInterface.BusinessAddressState;
end;

procedure TContactItemProperties.Set_BusinessAddressState(const Param1: WideString);
  { Warning: The property BusinessAddressState has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddressState := Param1;
end;

function TContactItemProperties.Get_BusinessAddressStreet: WideString;
begin
    Result := DefaultInterface.BusinessAddressStreet;
end;

procedure TContactItemProperties.Set_BusinessAddressStreet(const Param1: WideString);
  { Warning: The property BusinessAddressStreet has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessAddressStreet := Param1;
end;

function TContactItemProperties.Get_BusinessFaxNumber: WideString;
begin
    Result := DefaultInterface.BusinessFaxNumber;
end;

procedure TContactItemProperties.Set_BusinessFaxNumber(const Param1: WideString);
  { Warning: The property BusinessFaxNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessFaxNumber := Param1;
end;

function TContactItemProperties.Get_BusinessHomePage: WideString;
begin
    Result := DefaultInterface.BusinessHomePage;
end;

procedure TContactItemProperties.Set_BusinessHomePage(const Param1: WideString);
  { Warning: The property BusinessHomePage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessHomePage := Param1;
end;

function TContactItemProperties.Get_BusinessTelephoneNumber: WideString;
begin
    Result := DefaultInterface.BusinessTelephoneNumber;
end;

procedure TContactItemProperties.Set_BusinessTelephoneNumber(const Param1: WideString);
  { Warning: The property BusinessTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BusinessTelephoneNumber := Param1;
end;

function TContactItemProperties.Get_CallbackTelephoneNumber: WideString;
begin
    Result := DefaultInterface.CallbackTelephoneNumber;
end;

procedure TContactItemProperties.Set_CallbackTelephoneNumber(const Param1: WideString);
  { Warning: The property CallbackTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CallbackTelephoneNumber := Param1;
end;

function TContactItemProperties.Get_CarTelephoneNumber: WideString;
begin
    Result := DefaultInterface.CarTelephoneNumber;
end;

procedure TContactItemProperties.Set_CarTelephoneNumber(const Param1: WideString);
  { Warning: The property CarTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CarTelephoneNumber := Param1;
end;

function TContactItemProperties.Get_Children: WideString;
begin
    Result := DefaultInterface.Children;
end;

procedure TContactItemProperties.Set_Children(const Param1: WideString);
  { Warning: The property Children has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Children := Param1;
end;

function TContactItemProperties.Get_CompanyAndFullName: WideString;
begin
    Result := DefaultInterface.CompanyAndFullName;
end;

function TContactItemProperties.Get_CompanyMainTelephoneNumber: WideString;
begin
    Result := DefaultInterface.CompanyMainTelephoneNumber;
end;

procedure TContactItemProperties.Set_CompanyMainTelephoneNumber(const Param1: WideString);
  { Warning: The property CompanyMainTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CompanyMainTelephoneNumber := Param1;
end;

function TContactItemProperties.Get_CompanyName: WideString;
begin
    Result := DefaultInterface.CompanyName;
end;

procedure TContactItemProperties.Set_CompanyName(const Param1: WideString);
  { Warning: The property CompanyName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CompanyName := Param1;
end;

function TContactItemProperties.Get_ComputerNetworkName: WideString;
begin
    Result := DefaultInterface.ComputerNetworkName;
end;

procedure TContactItemProperties.Set_ComputerNetworkName(const Param1: WideString);
  { Warning: The property ComputerNetworkName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ComputerNetworkName := Param1;
end;

function TContactItemProperties.Get_CustomerID: WideString;
begin
    Result := DefaultInterface.CustomerID;
end;

procedure TContactItemProperties.Set_CustomerID(const Param1: WideString);
  { Warning: The property CustomerID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CustomerID := Param1;
end;

function TContactItemProperties.Get_Department: WideString;
begin
    Result := DefaultInterface.Department;
end;

procedure TContactItemProperties.Set_Department(const Param1: WideString);
  { Warning: The property Department has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Department := Param1;
end;

function TContactItemProperties.Get_Email1Address: WideString;
begin
    Result := DefaultInterface.Email1Address;
end;

procedure TContactItemProperties.Set_Email1Address(const Param1: WideString);
  { Warning: The property Email1Address has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email1Address := Param1;
end;

function TContactItemProperties.Get_Email1AddressType: WideString;
begin
    Result := DefaultInterface.Email1AddressType;
end;

procedure TContactItemProperties.Set_Email1AddressType(const Param1: WideString);
  { Warning: The property Email1AddressType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email1AddressType := Param1;
end;

function TContactItemProperties.Get_Email1DisplayName: WideString;
begin
    Result := DefaultInterface.Email1DisplayName;
end;

function TContactItemProperties.Get_Email1EntryID: WideString;
begin
    Result := DefaultInterface.Email1EntryID;
end;

function TContactItemProperties.Get_Email2Address: WideString;
begin
    Result := DefaultInterface.Email2Address;
end;

procedure TContactItemProperties.Set_Email2Address(const Param1: WideString);
  { Warning: The property Email2Address has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email2Address := Param1;
end;

function TContactItemProperties.Get_Email2AddressType: WideString;
begin
    Result := DefaultInterface.Email2AddressType;
end;

procedure TContactItemProperties.Set_Email2AddressType(const Param1: WideString);
  { Warning: The property Email2AddressType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email2AddressType := Param1;
end;

function TContactItemProperties.Get_Email2DisplayName: WideString;
begin
    Result := DefaultInterface.Email2DisplayName;
end;

function TContactItemProperties.Get_Email2EntryID: WideString;
begin
    Result := DefaultInterface.Email2EntryID;
end;

function TContactItemProperties.Get_Email3Address: WideString;
begin
    Result := DefaultInterface.Email3Address;
end;

procedure TContactItemProperties.Set_Email3Address(const Param1: WideString);
  { Warning: The property Email3Address has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email3Address := Param1;
end;

function TContactItemProperties.Get_Email3AddressType: WideString;
begin
    Result := DefaultInterface.Email3AddressType;
end;

procedure TContactItemProperties.Set_Email3AddressType(const Param1: WideString);
  { Warning: The property Email3AddressType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Email3AddressType := Param1;
end;

function TContactItemProperties.Get_Email3DisplayName: WideString;
begin
    Result := DefaultInterface.Email3DisplayName;
end;

function TContactItemProperties.Get_Email3EntryID: WideString;
begin
    Result := DefaultInterface.Email3EntryID;
end;

function TContactItemProperties.Get_FileAs: WideString;
begin
    Result := DefaultInterface.FileAs;
end;

procedure TContactItemProperties.Set_FileAs(const Param1: WideString);
  { Warning: The property FileAs has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FileAs := Param1;
end;

function TContactItemProperties.Get_FirstName: WideString;
begin
    Result := DefaultInterface.FirstName;
end;

procedure TContactItemProperties.Set_FirstName(const Param1: WideString);
  { Warning: The property FirstName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FirstName := Param1;
end;

function TContactItemProperties.Get_FTPSite: WideString;
begin
    Result := DefaultInterface.FTPSite;
end;

procedure TContactItemProperties.Set_FTPSite(const Param1: WideString);
  { Warning: The property FTPSite has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FTPSite := Param1;
end;

function TContactItemProperties.Get_FullName: WideString;
begin
    Result := DefaultInterface.FullName;
end;

procedure TContactItemProperties.Set_FullName(const Param1: WideString);
  { Warning: The property FullName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FullName := Param1;
end;

function TContactItemProperties.Get_FullNameAndCompany: WideString;
begin
    Result := DefaultInterface.FullNameAndCompany;
end;

function TContactItemProperties.Get_Gender: OlGender;
begin
    Result := DefaultInterface.Gender;
end;

procedure TContactItemProperties.Set_Gender(Param1: OlGender);
begin
  DefaultInterface.Gender := Param1 {TKIND_DISPATCH};
end;

function TContactItemProperties.Get_GovernmentIDNumber: WideString;
begin
    Result := DefaultInterface.GovernmentIDNumber;
end;

procedure TContactItemProperties.Set_GovernmentIDNumber(const Param1: WideString);
  { Warning: The property GovernmentIDNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.GovernmentIDNumber := Param1;
end;

function TContactItemProperties.Get_Hobby: WideString;
begin
    Result := DefaultInterface.Hobby;
end;

procedure TContactItemProperties.Set_Hobby(const Param1: WideString);
  { Warning: The property Hobby has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Hobby := Param1;
end;

function TContactItemProperties.Get_Home2TelephoneNumber: WideString;
begin
    Result := DefaultInterface.Home2TelephoneNumber;
end;

procedure TContactItemProperties.Set_Home2TelephoneNumber(const Param1: WideString);
  { Warning: The property Home2TelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Home2TelephoneNumber := Param1;
end;

function TContactItemProperties.Get_HomeAddress: WideString;
begin
    Result := DefaultInterface.HomeAddress;
end;

procedure TContactItemProperties.Set_HomeAddress(const Param1: WideString);
  { Warning: The property HomeAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddress := Param1;
end;

function TContactItemProperties.Get_HomeAddressCity: WideString;
begin
    Result := DefaultInterface.HomeAddressCity;
end;

procedure TContactItemProperties.Set_HomeAddressCity(const Param1: WideString);
  { Warning: The property HomeAddressCity has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddressCity := Param1;
end;

function TContactItemProperties.Get_HomeAddressCountry: WideString;
begin
    Result := DefaultInterface.HomeAddressCountry;
end;

procedure TContactItemProperties.Set_HomeAddressCountry(const Param1: WideString);
  { Warning: The property HomeAddressCountry has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddressCountry := Param1;
end;

function TContactItemProperties.Get_HomeAddressPostalCode: WideString;
begin
    Result := DefaultInterface.HomeAddressPostalCode;
end;

procedure TContactItemProperties.Set_HomeAddressPostalCode(const Param1: WideString);
  { Warning: The property HomeAddressPostalCode has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddressPostalCode := Param1;
end;

function TContactItemProperties.Get_HomeAddressPostOfficeBox: WideString;
begin
    Result := DefaultInterface.HomeAddressPostOfficeBox;
end;

procedure TContactItemProperties.Set_HomeAddressPostOfficeBox(const Param1: WideString);
  { Warning: The property HomeAddressPostOfficeBox has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddressPostOfficeBox := Param1;
end;

function TContactItemProperties.Get_HomeAddressState: WideString;
begin
    Result := DefaultInterface.HomeAddressState;
end;

procedure TContactItemProperties.Set_HomeAddressState(const Param1: WideString);
  { Warning: The property HomeAddressState has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddressState := Param1;
end;

function TContactItemProperties.Get_HomeAddressStreet: WideString;
begin
    Result := DefaultInterface.HomeAddressStreet;
end;

procedure TContactItemProperties.Set_HomeAddressStreet(const Param1: WideString);
  { Warning: The property HomeAddressStreet has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeAddressStreet := Param1;
end;

function TContactItemProperties.Get_HomeFaxNumber: WideString;
begin
    Result := DefaultInterface.HomeFaxNumber;
end;

procedure TContactItemProperties.Set_HomeFaxNumber(const Param1: WideString);
  { Warning: The property HomeFaxNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeFaxNumber := Param1;
end;

function TContactItemProperties.Get_HomeTelephoneNumber: WideString;
begin
    Result := DefaultInterface.HomeTelephoneNumber;
end;

procedure TContactItemProperties.Set_HomeTelephoneNumber(const Param1: WideString);
  { Warning: The property HomeTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HomeTelephoneNumber := Param1;
end;

function TContactItemProperties.Get_Initials: WideString;
begin
    Result := DefaultInterface.Initials;
end;

procedure TContactItemProperties.Set_Initials(const Param1: WideString);
  { Warning: The property Initials has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Initials := Param1;
end;

function TContactItemProperties.Get_ISDNNumber: WideString;
begin
    Result := DefaultInterface.ISDNNumber;
end;

procedure TContactItemProperties.Set_ISDNNumber(const Param1: WideString);
  { Warning: The property ISDNNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ISDNNumber := Param1;
end;

function TContactItemProperties.Get_JobTitle: WideString;
begin
    Result := DefaultInterface.JobTitle;
end;

procedure TContactItemProperties.Set_JobTitle(const Param1: WideString);
  { Warning: The property JobTitle has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.JobTitle := Param1;
end;

function TContactItemProperties.Get_Journal: WordBool;
begin
    Result := DefaultInterface.Journal;
end;

procedure TContactItemProperties.Set_Journal(Param1: WordBool);
begin
  DefaultInterface.Journal := Param1 {TKIND_DISPATCH};
end;

function TContactItemProperties.Get_Language: WideString;
begin
    Result := DefaultInterface.Language;
end;

procedure TContactItemProperties.Set_Language(const Param1: WideString);
  { Warning: The property Language has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Language := Param1;
end;

function TContactItemProperties.Get_LastName: WideString;
begin
    Result := DefaultInterface.LastName;
end;

procedure TContactItemProperties.Set_LastName(const Param1: WideString);
  { Warning: The property LastName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LastName := Param1;
end;

function TContactItemProperties.Get_LastNameAndFirstName: WideString;
begin
    Result := DefaultInterface.LastNameAndFirstName;
end;

function TContactItemProperties.Get_MailingAddress: WideString;
begin
    Result := DefaultInterface.MailingAddress;
end;

procedure TContactItemProperties.Set_MailingAddress(const Param1: WideString);
  { Warning: The property MailingAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddress := Param1;
end;

function TContactItemProperties.Get_MailingAddressCity: WideString;
begin
    Result := DefaultInterface.MailingAddressCity;
end;

procedure TContactItemProperties.Set_MailingAddressCity(const Param1: WideString);
  { Warning: The property MailingAddressCity has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddressCity := Param1;
end;

function TContactItemProperties.Get_MailingAddressCountry: WideString;
begin
    Result := DefaultInterface.MailingAddressCountry;
end;

procedure TContactItemProperties.Set_MailingAddressCountry(const Param1: WideString);
  { Warning: The property MailingAddressCountry has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddressCountry := Param1;
end;

function TContactItemProperties.Get_MailingAddressPostalCode: WideString;
begin
    Result := DefaultInterface.MailingAddressPostalCode;
end;

procedure TContactItemProperties.Set_MailingAddressPostalCode(const Param1: WideString);
  { Warning: The property MailingAddressPostalCode has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddressPostalCode := Param1;
end;

function TContactItemProperties.Get_MailingAddressPostOfficeBox: WideString;
begin
    Result := DefaultInterface.MailingAddressPostOfficeBox;
end;

procedure TContactItemProperties.Set_MailingAddressPostOfficeBox(const Param1: WideString);
  { Warning: The property MailingAddressPostOfficeBox has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddressPostOfficeBox := Param1;
end;

function TContactItemProperties.Get_MailingAddressState: WideString;
begin
    Result := DefaultInterface.MailingAddressState;
end;

procedure TContactItemProperties.Set_MailingAddressState(const Param1: WideString);
  { Warning: The property MailingAddressState has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddressState := Param1;
end;

function TContactItemProperties.Get_MailingAddressStreet: WideString;
begin
    Result := DefaultInterface.MailingAddressStreet;
end;

procedure TContactItemProperties.Set_MailingAddressStreet(const Param1: WideString);
  { Warning: The property MailingAddressStreet has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MailingAddressStreet := Param1;
end;

function TContactItemProperties.Get_ManagerName: WideString;
begin
    Result := DefaultInterface.ManagerName;
end;

procedure TContactItemProperties.Set_ManagerName(const Param1: WideString);
  { Warning: The property ManagerName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ManagerName := Param1;
end;

function TContactItemProperties.Get_MiddleName: WideString;
begin
    Result := DefaultInterface.MiddleName;
end;

procedure TContactItemProperties.Set_MiddleName(const Param1: WideString);
  { Warning: The property MiddleName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MiddleName := Param1;
end;

function TContactItemProperties.Get_MobileTelephoneNumber: WideString;
begin
    Result := DefaultInterface.MobileTelephoneNumber;
end;

procedure TContactItemProperties.Set_MobileTelephoneNumber(const Param1: WideString);
  { Warning: The property MobileTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MobileTelephoneNumber := Param1;
end;

function TContactItemProperties.Get_NickName: WideString;
begin
    Result := DefaultInterface.NickName;
end;

procedure TContactItemProperties.Set_NickName(const Param1: WideString);
  { Warning: The property NickName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.NickName := Param1;
end;

function TContactItemProperties.Get_OfficeLocation: WideString;
begin
    Result := DefaultInterface.OfficeLocation;
end;

procedure TContactItemProperties.Set_OfficeLocation(const Param1: WideString);
  { Warning: The property OfficeLocation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OfficeLocation := Param1;
end;

function TContactItemProperties.Get_OrganizationalIDNumber: WideString;
begin
    Result := DefaultInterface.OrganizationalIDNumber;
end;

procedure TContactItemProperties.Set_OrganizationalIDNumber(const Param1: WideString);
  { Warning: The property OrganizationalIDNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OrganizationalIDNumber := Param1;
end;

function TContactItemProperties.Get_OtherAddress: WideString;
begin
    Result := DefaultInterface.OtherAddress;
end;

procedure TContactItemProperties.Set_OtherAddress(const Param1: WideString);
  { Warning: The property OtherAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddress := Param1;
end;

function TContactItemProperties.Get_OtherAddressCity: WideString;
begin
    Result := DefaultInterface.OtherAddressCity;
end;

procedure TContactItemProperties.Set_OtherAddressCity(const Param1: WideString);
  { Warning: The property OtherAddressCity has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddressCity := Param1;
end;

function TContactItemProperties.Get_OtherAddressCountry: WideString;
begin
    Result := DefaultInterface.OtherAddressCountry;
end;

procedure TContactItemProperties.Set_OtherAddressCountry(const Param1: WideString);
  { Warning: The property OtherAddressCountry has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddressCountry := Param1;
end;

function TContactItemProperties.Get_OtherAddressPostalCode: WideString;
begin
    Result := DefaultInterface.OtherAddressPostalCode;
end;

procedure TContactItemProperties.Set_OtherAddressPostalCode(const Param1: WideString);
  { Warning: The property OtherAddressPostalCode has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddressPostalCode := Param1;
end;

function TContactItemProperties.Get_OtherAddressPostOfficeBox: WideString;
begin
    Result := DefaultInterface.OtherAddressPostOfficeBox;
end;

procedure TContactItemProperties.Set_OtherAddressPostOfficeBox(const Param1: WideString);
  { Warning: The property OtherAddressPostOfficeBox has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddressPostOfficeBox := Param1;
end;

function TContactItemProperties.Get_OtherAddressState: WideString;
begin
    Result := DefaultInterface.OtherAddressState;
end;

procedure TContactItemProperties.Set_OtherAddressState(const Param1: WideString);
  { Warning: The property OtherAddressState has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddressState := Param1;
end;

function TContactItemProperties.Get_OtherAddressStreet: WideString;
begin
    Result := DefaultInterface.OtherAddressStreet;
end;

procedure TContactItemProperties.Set_OtherAddressStreet(const Param1: WideString);
  { Warning: The property OtherAddressStreet has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherAddressStreet := Param1;
end;

function TContactItemProperties.Get_OtherFaxNumber: WideString;
begin
    Result := DefaultInterface.OtherFaxNumber;
end;

procedure TContactItemProperties.Set_OtherFaxNumber(const Param1: WideString);
  { Warning: The property OtherFaxNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherFaxNumber := Param1;
end;

function TContactItemProperties.Get_OtherTelephoneNumber: WideString;
begin
    Result := DefaultInterface.OtherTelephoneNumber;
end;

procedure TContactItemProperties.Set_OtherTelephoneNumber(const Param1: WideString);
  { Warning: The property OtherTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.OtherTelephoneNumber := Param1;
end;

function TContactItemProperties.Get_PagerNumber: WideString;
begin
    Result := DefaultInterface.PagerNumber;
end;

procedure TContactItemProperties.Set_PagerNumber(const Param1: WideString);
  { Warning: The property PagerNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PagerNumber := Param1;
end;

function TContactItemProperties.Get_PersonalHomePage: WideString;
begin
    Result := DefaultInterface.PersonalHomePage;
end;

procedure TContactItemProperties.Set_PersonalHomePage(const Param1: WideString);
  { Warning: The property PersonalHomePage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PersonalHomePage := Param1;
end;

function TContactItemProperties.Get_PrimaryTelephoneNumber: WideString;
begin
    Result := DefaultInterface.PrimaryTelephoneNumber;
end;

procedure TContactItemProperties.Set_PrimaryTelephoneNumber(const Param1: WideString);
  { Warning: The property PrimaryTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PrimaryTelephoneNumber := Param1;
end;

function TContactItemProperties.Get_Profession: WideString;
begin
    Result := DefaultInterface.Profession;
end;

procedure TContactItemProperties.Set_Profession(const Param1: WideString);
  { Warning: The property Profession has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Profession := Param1;
end;

function TContactItemProperties.Get_RadioTelephoneNumber: WideString;
begin
    Result := DefaultInterface.RadioTelephoneNumber;
end;

procedure TContactItemProperties.Set_RadioTelephoneNumber(const Param1: WideString);
  { Warning: The property RadioTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RadioTelephoneNumber := Param1;
end;

function TContactItemProperties.Get_ReferredBy: WideString;
begin
    Result := DefaultInterface.ReferredBy;
end;

procedure TContactItemProperties.Set_ReferredBy(const Param1: WideString);
  { Warning: The property ReferredBy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ReferredBy := Param1;
end;

function TContactItemProperties.Get_SelectedMailingAddress: OlMailingAddress;
begin
    Result := DefaultInterface.SelectedMailingAddress;
end;

procedure TContactItemProperties.Set_SelectedMailingAddress(Param1: OlMailingAddress);
begin
  DefaultInterface.SelectedMailingAddress := Param1 {TKIND_DISPATCH};
end;

function TContactItemProperties.Get_Spouse: WideString;
begin
    Result := DefaultInterface.Spouse;
end;

procedure TContactItemProperties.Set_Spouse(const Param1: WideString);
  { Warning: The property Spouse has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Spouse := Param1;
end;

function TContactItemProperties.Get_Suffix: WideString;
begin
    Result := DefaultInterface.Suffix;
end;

procedure TContactItemProperties.Set_Suffix(const Param1: WideString);
  { Warning: The property Suffix has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Suffix := Param1;
end;

function TContactItemProperties.Get_TelexNumber: WideString;
begin
    Result := DefaultInterface.TelexNumber;
end;

procedure TContactItemProperties.Set_TelexNumber(const Param1: WideString);
  { Warning: The property TelexNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TelexNumber := Param1;
end;

function TContactItemProperties.Get_Title: WideString;
begin
    Result := DefaultInterface.Title;
end;

procedure TContactItemProperties.Set_Title(const Param1: WideString);
  { Warning: The property Title has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Title := Param1;
end;

function TContactItemProperties.Get_TTYTDDTelephoneNumber: WideString;
begin
    Result := DefaultInterface.TTYTDDTelephoneNumber;
end;

procedure TContactItemProperties.Set_TTYTDDTelephoneNumber(const Param1: WideString);
  { Warning: The property TTYTDDTelephoneNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TTYTDDTelephoneNumber := Param1;
end;

function TContactItemProperties.Get_User1: WideString;
begin
    Result := DefaultInterface.User1;
end;

procedure TContactItemProperties.Set_User1(const Param1: WideString);
  { Warning: The property User1 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.User1 := Param1;
end;

function TContactItemProperties.Get_User2: WideString;
begin
    Result := DefaultInterface.User2;
end;

procedure TContactItemProperties.Set_User2(const Param1: WideString);
  { Warning: The property User2 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.User2 := Param1;
end;

function TContactItemProperties.Get_User3: WideString;
begin
    Result := DefaultInterface.User3;
end;

procedure TContactItemProperties.Set_User3(const Param1: WideString);
  { Warning: The property User3 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.User3 := Param1;
end;

function TContactItemProperties.Get_User4: WideString;
begin
    Result := DefaultInterface.User4;
end;

procedure TContactItemProperties.Set_User4(const Param1: WideString);
  { Warning: The property User4 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.User4 := Param1;
end;

function TContactItemProperties.Get_UserCertificate: WideString;
begin
    Result := DefaultInterface.UserCertificate;
end;

procedure TContactItemProperties.Set_UserCertificate(const Param1: WideString);
  { Warning: The property UserCertificate has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UserCertificate := Param1;
end;

function TContactItemProperties.Get_WebPage: WideString;
begin
    Result := DefaultInterface.WebPage;
end;

procedure TContactItemProperties.Set_WebPage(const Param1: WideString);
  { Warning: The property WebPage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.WebPage := Param1;
end;

function TContactItemProperties.Get_YomiCompanyName: WideString;
begin
    Result := DefaultInterface.YomiCompanyName;
end;

procedure TContactItemProperties.Set_YomiCompanyName(const Param1: WideString);
  { Warning: The property YomiCompanyName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.YomiCompanyName := Param1;
end;

function TContactItemProperties.Get_YomiFirstName: WideString;
begin
    Result := DefaultInterface.YomiFirstName;
end;

procedure TContactItemProperties.Set_YomiFirstName(const Param1: WideString);
  { Warning: The property YomiFirstName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.YomiFirstName := Param1;
end;

function TContactItemProperties.Get_YomiLastName: WideString;
begin
    Result := DefaultInterface.YomiLastName;
end;

procedure TContactItemProperties.Set_YomiLastName(const Param1: WideString);
  { Warning: The property YomiLastName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.YomiLastName := Param1;
end;

{$ENDIF}

class function CoJournalItem.Create: _DJournalItem;
begin
  Result := CreateComObject(CLASS_JournalItem) as _DJournalItem;
end;

class function CoJournalItem.CreateRemote(const MachineName: string): _DJournalItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_JournalItem) as _DJournalItem;
end;

procedure TJournalItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{00061037-0000-0000-C000-000000000046}';
    IntfIID:   '{00063022-0000-0000-C000-000000000046}';
    EventIID:  '{0006303A-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TJournalItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _DJournalItem;
  end;
end;

procedure TJournalItem.ConnectTo(svrIntf: _DJournalItem);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TJournalItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TJournalItem.GetDefaultInterface: _DJournalItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TJournalItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TJournalItemProperties.Create(Self);
{$ENDIF}
end;

destructor TJournalItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TJournalItem.GetServerProperties: TJournalItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TJournalItem.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    61441: if Assigned(FOnRead) then
         FOnRead(Self);
    61442: if Assigned(FOnWrite) then
         FOnWrite(Self);
    61443: if Assigned(FOnOpen) then
         FOnOpen(Self);
    61444: if Assigned(FOnClose) then
         FOnClose(Self);
    61445: if Assigned(FOnSend) then
         FOnSend(Self);
    62566: if Assigned(FOnReply) then
         FOnReply(Self, Params[0] {const IDispatch});
    62567: if Assigned(FOnReplyAll) then
         FOnReplyAll(Self, Params[0] {const IDispatch});
    62568: if Assigned(FOnForward) then
         FOnForward(Self, Params[0] {const IDispatch});
    61446: if Assigned(FOnCustomAction) then
         FOnCustomAction(Self,
                         Params[0] {const IDispatch},
                         Params[1] {const IDispatch});
    61448: if Assigned(FOnCustomPropertyChange) then
         FOnCustomPropertyChange(Self, Params[0] {const WideString});
    61449: if Assigned(FOnPropertyChange) then
         FOnPropertyChange(Self, Params[0] {const WideString});
  end; {case DispID}
end;

function TJournalItem.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TJournalItem.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TJournalItem.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TJournalItem.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TJournalItem.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TJournalItem.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TJournalItem.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TJournalItem.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TJournalItem.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TJournalItem.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TJournalItem.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TJournalItem.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TJournalItem.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TJournalItem.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TJournalItem.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TJournalItem.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TJournalItem.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TJournalItem.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TJournalItem.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TJournalItem.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TJournalItem.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TJournalItem.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TJournalItem.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TJournalItem.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TJournalItem.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TJournalItem.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TJournalItem.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TJournalItem.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TJournalItem.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TJournalItem.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TJournalItem.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TJournalItem.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TJournalItem.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TJournalItem.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TJournalItem.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TJournalItem.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TJournalItem.Get_ContactNames: WideString;
begin
    Result := DefaultInterface.ContactNames;
end;

procedure TJournalItem.Set_ContactNames(const Param1: WideString);
  { Warning: The property ContactNames has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ContactNames := Param1;
end;

function TJournalItem.Get_DocPosted: WordBool;
begin
    Result := DefaultInterface.DocPosted;
end;

procedure TJournalItem.Set_DocPosted(Param1: WordBool);
begin
  DefaultInterface.DocPosted := Param1 {TKIND_DISPATCH};
end;

function TJournalItem.Get_DocPrinted: WordBool;
begin
    Result := DefaultInterface.DocPrinted;
end;

procedure TJournalItem.Set_DocPrinted(Param1: WordBool);
begin
  DefaultInterface.DocPrinted := Param1 {TKIND_DISPATCH};
end;

function TJournalItem.Get_DocRouted: WordBool;
begin
    Result := DefaultInterface.DocRouted;
end;

procedure TJournalItem.Set_DocRouted(Param1: WordBool);
begin
  DefaultInterface.DocRouted := Param1 {TKIND_DISPATCH};
end;

function TJournalItem.Get_DocSaved: WordBool;
begin
    Result := DefaultInterface.DocSaved;
end;

procedure TJournalItem.Set_DocSaved(Param1: WordBool);
begin
  DefaultInterface.DocSaved := Param1 {TKIND_DISPATCH};
end;

function TJournalItem.Get_Duration: Integer;
begin
    Result := DefaultInterface.Duration;
end;

procedure TJournalItem.Set_Duration(Param1: Integer);
begin
  DefaultInterface.Duration := Param1 {TKIND_DISPATCH};
end;

function TJournalItem.Get_End_: TDateTime;
begin
    Result := DefaultInterface.End_;
end;

procedure TJournalItem.Set_End_(Param1: TDateTime);
begin
  DefaultInterface.End_ := Param1 {TKIND_DISPATCH};
end;

function TJournalItem.Get_Recipients: Recipients;
begin
    Result := DefaultInterface.Recipients;
end;

function TJournalItem.Get_Start: TDateTime;
begin
    Result := DefaultInterface.Start;
end;

procedure TJournalItem.Set_Start(Param1: TDateTime);
begin
  DefaultInterface.Start := Param1 {TKIND_DISPATCH};
end;

function TJournalItem.Get_type_: WideString;
begin
    Result := DefaultInterface.type_;
end;

procedure TJournalItem.Set_type_(const Param1: WideString);
  { Warning: The property type_ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.type_ := Param1;
end;

procedure TJournalItem.Close(SaveMode: OlInspectorClose);
begin
  DefaultInterface.Close(SaveMode);
end;

function TJournalItem.Copy: IDispatch;
begin
  Result := DefaultInterface.Copy;
end;

procedure TJournalItem.Delete;
begin
  DefaultInterface.Delete;
end;

procedure TJournalItem.Display(Modal: OleVariant);
begin
  DefaultInterface.Display(Modal);
end;

function TJournalItem.Move(const DestFldr: MAPIFolder): IDispatch;
begin
  Result := DefaultInterface.Move(DestFldr);
end;

procedure TJournalItem.Save;
begin
  DefaultInterface.Save;
end;

procedure TJournalItem.SaveAs(const Path: WideString; Type_: OleVariant);
begin
  DefaultInterface.SaveAs(Path, Type_);
end;

procedure TJournalItem.PrintOut;
begin
  DefaultInterface.PrintOut;
end;

function TJournalItem.Forward: MailItem;
begin
  Result := DefaultInterface.Forward;
end;

function TJournalItem.Reply: MailItem;
begin
  Result := DefaultInterface.Reply;
end;

function TJournalItem.ReplyAll: MailItem;
begin
  Result := DefaultInterface.ReplyAll;
end;

procedure TJournalItem.StartTimer;
begin
  DefaultInterface.StartTimer;
end;

procedure TJournalItem.StopTimer;
begin
  DefaultInterface.StopTimer;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TJournalItemProperties.Create(AServer: TJournalItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TJournalItemProperties.GetDefaultInterface: _DJournalItem;
begin
  Result := FServer.DefaultInterface;
end;

function TJournalItemProperties.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TJournalItemProperties.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TJournalItemProperties.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TJournalItemProperties.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TJournalItemProperties.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TJournalItemProperties.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TJournalItemProperties.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TJournalItemProperties.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TJournalItemProperties.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TJournalItemProperties.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TJournalItemProperties.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TJournalItemProperties.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TJournalItemProperties.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TJournalItemProperties.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TJournalItemProperties.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TJournalItemProperties.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TJournalItemProperties.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TJournalItemProperties.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TJournalItemProperties.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TJournalItemProperties.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TJournalItemProperties.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TJournalItemProperties.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TJournalItemProperties.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TJournalItemProperties.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TJournalItemProperties.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TJournalItemProperties.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TJournalItemProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TJournalItemProperties.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TJournalItemProperties.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TJournalItemProperties.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TJournalItemProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TJournalItemProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TJournalItemProperties.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TJournalItemProperties.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TJournalItemProperties.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TJournalItemProperties.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TJournalItemProperties.Get_ContactNames: WideString;
begin
    Result := DefaultInterface.ContactNames;
end;

procedure TJournalItemProperties.Set_ContactNames(const Param1: WideString);
  { Warning: The property ContactNames has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ContactNames := Param1;
end;

function TJournalItemProperties.Get_DocPosted: WordBool;
begin
    Result := DefaultInterface.DocPosted;
end;

procedure TJournalItemProperties.Set_DocPosted(Param1: WordBool);
begin
  DefaultInterface.DocPosted := Param1 {TKIND_DISPATCH};
end;

function TJournalItemProperties.Get_DocPrinted: WordBool;
begin
    Result := DefaultInterface.DocPrinted;
end;

procedure TJournalItemProperties.Set_DocPrinted(Param1: WordBool);
begin
  DefaultInterface.DocPrinted := Param1 {TKIND_DISPATCH};
end;

function TJournalItemProperties.Get_DocRouted: WordBool;
begin
    Result := DefaultInterface.DocRouted;
end;

procedure TJournalItemProperties.Set_DocRouted(Param1: WordBool);
begin
  DefaultInterface.DocRouted := Param1 {TKIND_DISPATCH};
end;

function TJournalItemProperties.Get_DocSaved: WordBool;
begin
    Result := DefaultInterface.DocSaved;
end;

procedure TJournalItemProperties.Set_DocSaved(Param1: WordBool);
begin
  DefaultInterface.DocSaved := Param1 {TKIND_DISPATCH};
end;

function TJournalItemProperties.Get_Duration: Integer;
begin
    Result := DefaultInterface.Duration;
end;

procedure TJournalItemProperties.Set_Duration(Param1: Integer);
begin
  DefaultInterface.Duration := Param1 {TKIND_DISPATCH};
end;

function TJournalItemProperties.Get_End_: TDateTime;
begin
    Result := DefaultInterface.End_;
end;

procedure TJournalItemProperties.Set_End_(Param1: TDateTime);
begin
  DefaultInterface.End_ := Param1 {TKIND_DISPATCH};
end;

function TJournalItemProperties.Get_Recipients: Recipients;
begin
    Result := DefaultInterface.Recipients;
end;

function TJournalItemProperties.Get_Start: TDateTime;
begin
    Result := DefaultInterface.Start;
end;

procedure TJournalItemProperties.Set_Start(Param1: TDateTime);
begin
  DefaultInterface.Start := Param1 {TKIND_DISPATCH};
end;

function TJournalItemProperties.Get_type_: WideString;
begin
    Result := DefaultInterface.type_;
end;

procedure TJournalItemProperties.Set_type_(const Param1: WideString);
  { Warning: The property type_ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.type_ := Param1;
end;

{$ENDIF}

class function CoMailItem.Create: _DMailItem;
begin
  Result := CreateComObject(CLASS_MailItem) as _DMailItem;
end;

class function CoMailItem.CreateRemote(const MachineName: string): _DMailItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MailItem) as _DMailItem;
end;

procedure TMailItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{00061033-0000-0000-C000-000000000046}';
    IntfIID:   '{00063034-0000-0000-C000-000000000046}';
    EventIID:  '{0006303A-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMailItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _DMailItem;
  end;
end;

procedure TMailItem.ConnectTo(svrIntf: _DMailItem);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TMailItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TMailItem.GetDefaultInterface: _DMailItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMailItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMailItemProperties.Create(Self);
{$ENDIF}
end;

destructor TMailItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMailItem.GetServerProperties: TMailItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TMailItem.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    61441: if Assigned(FOnRead) then
         FOnRead(Self);
    61442: if Assigned(FOnWrite) then
         FOnWrite(Self);
    61443: if Assigned(FOnOpen) then
         FOnOpen(Self);
    61444: if Assigned(FOnClose) then
         FOnClose(Self);
    61445: if Assigned(FOnSend) then
         FOnSend(Self);
    62566: if Assigned(FOnReply) then
         FOnReply(Self, Params[0] {const IDispatch});
    62567: if Assigned(FOnReplyAll) then
         FOnReplyAll(Self, Params[0] {const IDispatch});
    62568: if Assigned(FOnForward) then
         FOnForward(Self, Params[0] {const IDispatch});
    61446: if Assigned(FOnCustomAction) then
         FOnCustomAction(Self,
                         Params[0] {const IDispatch},
                         Params[1] {const IDispatch});
    61448: if Assigned(FOnCustomPropertyChange) then
         FOnCustomPropertyChange(Self, Params[0] {const WideString});
    61449: if Assigned(FOnPropertyChange) then
         FOnPropertyChange(Self, Params[0] {const WideString});
  end; {case DispID}
end;

function TMailItem.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TMailItem.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TMailItem.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TMailItem.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TMailItem.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TMailItem.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TMailItem.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TMailItem.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TMailItem.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TMailItem.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TMailItem.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TMailItem.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TMailItem.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TMailItem.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TMailItem.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TMailItem.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TMailItem.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TMailItem.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TMailItem.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TMailItem.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TMailItem.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TMailItem.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TMailItem.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TMailItem.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TMailItem.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TMailItem.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TMailItem.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TMailItem.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TMailItem.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TMailItem.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TMailItem.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TMailItem.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TMailItem.Get_AlternateRecipientAllowed: WordBool;
begin
    Result := DefaultInterface.AlternateRecipientAllowed;
end;

procedure TMailItem.Set_AlternateRecipientAllowed(Param1: WordBool);
begin
  DefaultInterface.AlternateRecipientAllowed := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_AutoForwarded: WordBool;
begin
    Result := DefaultInterface.AutoForwarded;
end;

procedure TMailItem.Set_AutoForwarded(Param1: WordBool);
begin
  DefaultInterface.AutoForwarded := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_BCC: WideString;
begin
    Result := DefaultInterface.BCC;
end;

procedure TMailItem.Set_BCC(const Param1: WideString);
  { Warning: The property BCC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BCC := Param1;
end;

function TMailItem.Get_CC: WideString;
begin
    Result := DefaultInterface.CC;
end;

procedure TMailItem.Set_CC(const Param1: WideString);
  { Warning: The property CC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CC := Param1;
end;

function TMailItem.Get_ConversationIndex: WideString;
begin
    Result := DefaultInterface.ConversationIndex;
end;

function TMailItem.Get_ConversationTopic: WideString;
begin
    Result := DefaultInterface.ConversationTopic;
end;

function TMailItem.Get_DeferredDeliveryTime: TDateTime;
begin
    Result := DefaultInterface.DeferredDeliveryTime;
end;

procedure TMailItem.Set_DeferredDeliveryTime(Param1: TDateTime);
begin
  DefaultInterface.DeferredDeliveryTime := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_DeleteAfterSubmit: WordBool;
begin
    Result := DefaultInterface.DeleteAfterSubmit;
end;

procedure TMailItem.Set_DeleteAfterSubmit(Param1: WordBool);
begin
  DefaultInterface.DeleteAfterSubmit := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_ExpiryTime: TDateTime;
begin
    Result := DefaultInterface.ExpiryTime;
end;

procedure TMailItem.Set_ExpiryTime(Param1: TDateTime);
begin
  DefaultInterface.ExpiryTime := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_FlagDueBy: TDateTime;
begin
    Result := DefaultInterface.FlagDueBy;
end;

procedure TMailItem.Set_FlagDueBy(Param1: TDateTime);
begin
  DefaultInterface.FlagDueBy := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_FlagRequest: WideString;
begin
    Result := DefaultInterface.FlagRequest;
end;

procedure TMailItem.Set_FlagRequest(const Param1: WideString);
  { Warning: The property FlagRequest has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FlagRequest := Param1;
end;

function TMailItem.Get_FlagStatus: OlFlagStatus;
begin
    Result := DefaultInterface.FlagStatus;
end;

procedure TMailItem.Set_FlagStatus(Param1: OlFlagStatus);
begin
  DefaultInterface.FlagStatus := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_OriginatorDeliveryReportRequested: WordBool;
begin
    Result := DefaultInterface.OriginatorDeliveryReportRequested;
end;

procedure TMailItem.Set_OriginatorDeliveryReportRequested(Param1: WordBool);
begin
  DefaultInterface.OriginatorDeliveryReportRequested := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_ReadReceiptRequested: WordBool;
begin
    Result := DefaultInterface.ReadReceiptRequested;
end;

procedure TMailItem.Set_ReadReceiptRequested(Param1: WordBool);
begin
  DefaultInterface.ReadReceiptRequested := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_ReceivedByEntryID: WideString;
begin
    Result := DefaultInterface.ReceivedByEntryID;
end;

function TMailItem.Get_ReceivedByName: WideString;
begin
    Result := DefaultInterface.ReceivedByName;
end;

function TMailItem.Get_ReceivedOnBehalfOfEntryID: WideString;
begin
    Result := DefaultInterface.ReceivedOnBehalfOfEntryID;
end;

function TMailItem.Get_ReceivedOnBehalfOfName: WideString;
begin
    Result := DefaultInterface.ReceivedOnBehalfOfName;
end;

function TMailItem.Get_ReceivedTime: TDateTime;
begin
    Result := DefaultInterface.ReceivedTime;
end;

function TMailItem.Get_RecipientReassignmentProhibited: WordBool;
begin
    Result := DefaultInterface.RecipientReassignmentProhibited;
end;

procedure TMailItem.Set_RecipientReassignmentProhibited(Param1: WordBool);
begin
  DefaultInterface.RecipientReassignmentProhibited := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_Recipients: Recipients;
begin
    Result := DefaultInterface.Recipients;
end;

function TMailItem.Get_ReminderOverrideDefault: WordBool;
begin
    Result := DefaultInterface.ReminderOverrideDefault;
end;

procedure TMailItem.Set_ReminderOverrideDefault(Param1: WordBool);
begin
  DefaultInterface.ReminderOverrideDefault := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_ReminderPlaySound: WordBool;
begin
    Result := DefaultInterface.ReminderPlaySound;
end;

procedure TMailItem.Set_ReminderPlaySound(Param1: WordBool);
begin
  DefaultInterface.ReminderPlaySound := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_ReminderSet: WordBool;
begin
    Result := DefaultInterface.ReminderSet;
end;

procedure TMailItem.Set_ReminderSet(Param1: WordBool);
begin
  DefaultInterface.ReminderSet := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_ReminderSoundFile: WideString;
begin
    Result := DefaultInterface.ReminderSoundFile;
end;

procedure TMailItem.Set_ReminderSoundFile(const Param1: WideString);
  { Warning: The property ReminderSoundFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ReminderSoundFile := Param1;
end;

function TMailItem.Get_ReminderTime: TDateTime;
begin
    Result := DefaultInterface.ReminderTime;
end;

procedure TMailItem.Set_ReminderTime(Param1: TDateTime);
begin
  DefaultInterface.ReminderTime := Param1 {TKIND_DISPATCH};
end;

function TMailItem.Get_RemoteStatus: OlRemoteStatus;
begin
    Result := DefaultInterface.RemoteStatus;
end;

function TMailItem.Get_ReplyRecipientNames: WideString;
begin
    Result := DefaultInterface.ReplyRecipientNames;
end;

function TMailItem.Get_ReplyRecipients: Recipients;
begin
    Result := DefaultInterface.ReplyRecipients;
end;

function TMailItem.Get_SaveSentMessageFolder: MAPIFolder;
begin
    Result := DefaultInterface.SaveSentMessageFolder;
end;

procedure TMailItem._Set_SaveSentMessageFolder(const Param1: MAPIFolder);
  { Warning: The property SaveSentMessageFolder has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SaveSentMessageFolder := Param1;
end;

function TMailItem.Get_SenderName: WideString;
begin
    Result := DefaultInterface.SenderName;
end;

function TMailItem.Get_SentOn: TDateTime;
begin
    Result := DefaultInterface.SentOn;
end;

function TMailItem.Get_SentOnBehalfOfName: WideString;
begin
    Result := DefaultInterface.SentOnBehalfOfName;
end;

procedure TMailItem.Set_SentOnBehalfOfName(const Param1: WideString);
  { Warning: The property SentOnBehalfOfName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SentOnBehalfOfName := Param1;
end;

function TMailItem.Get_To_: WideString;
begin
    Result := DefaultInterface.To_;
end;

procedure TMailItem.Set_To_(const Param1: WideString);
  { Warning: The property To_ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.To_ := Param1;
end;

function TMailItem.Get_VotingOptions: WideString;
begin
    Result := DefaultInterface.VotingOptions;
end;

procedure TMailItem.Set_VotingOptions(const Param1: WideString);
  { Warning: The property VotingOptions has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VotingOptions := Param1;
end;

function TMailItem.Get_VotingResponse: WideString;
begin
    Result := DefaultInterface.VotingResponse;
end;

procedure TMailItem.Set_VotingResponse(const Param1: WideString);
  { Warning: The property VotingResponse has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VotingResponse := Param1;
end;

procedure TMailItem.Close(SaveMode: OlInspectorClose);
begin
  DefaultInterface.Close(SaveMode);
end;

function TMailItem.Copy: IDispatch;
begin
  Result := DefaultInterface.Copy;
end;

procedure TMailItem.Delete;
begin
  DefaultInterface.Delete;
end;

procedure TMailItem.Display(Modal: OleVariant);
begin
  DefaultInterface.Display(Modal);
end;

function TMailItem.Move(const DestFldr: MAPIFolder): IDispatch;
begin
  Result := DefaultInterface.Move(DestFldr);
end;

procedure TMailItem.Save;
begin
  DefaultInterface.Save;
end;

procedure TMailItem.SaveAs(const Path: WideString; Type_: OleVariant);
begin
  DefaultInterface.SaveAs(Path, Type_);
end;

procedure TMailItem.PrintOut;
begin
  DefaultInterface.PrintOut;
end;

procedure TMailItem.ClearConversationIndex;
begin
  DefaultInterface.ClearConversationIndex;
end;

function TMailItem.Forward: MailItem;
begin
  Result := DefaultInterface.Forward;
end;

function TMailItem.Reply: MailItem;
begin
  Result := DefaultInterface.Reply;
end;

function TMailItem.ReplyAll: MailItem;
begin
  Result := DefaultInterface.ReplyAll;
end;

procedure TMailItem.Send;
begin
  DefaultInterface.Send;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMailItemProperties.Create(AServer: TMailItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TMailItemProperties.GetDefaultInterface: _DMailItem;
begin
  Result := FServer.DefaultInterface;
end;

function TMailItemProperties.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TMailItemProperties.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TMailItemProperties.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TMailItemProperties.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TMailItemProperties.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TMailItemProperties.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TMailItemProperties.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TMailItemProperties.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TMailItemProperties.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TMailItemProperties.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TMailItemProperties.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TMailItemProperties.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TMailItemProperties.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TMailItemProperties.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TMailItemProperties.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TMailItemProperties.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TMailItemProperties.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TMailItemProperties.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TMailItemProperties.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TMailItemProperties.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TMailItemProperties.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TMailItemProperties.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TMailItemProperties.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TMailItemProperties.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TMailItemProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TMailItemProperties.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TMailItemProperties.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TMailItemProperties.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TMailItemProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TMailItemProperties.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TMailItemProperties.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TMailItemProperties.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TMailItemProperties.Get_AlternateRecipientAllowed: WordBool;
begin
    Result := DefaultInterface.AlternateRecipientAllowed;
end;

procedure TMailItemProperties.Set_AlternateRecipientAllowed(Param1: WordBool);
begin
  DefaultInterface.AlternateRecipientAllowed := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_AutoForwarded: WordBool;
begin
    Result := DefaultInterface.AutoForwarded;
end;

procedure TMailItemProperties.Set_AutoForwarded(Param1: WordBool);
begin
  DefaultInterface.AutoForwarded := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_BCC: WideString;
begin
    Result := DefaultInterface.BCC;
end;

procedure TMailItemProperties.Set_BCC(const Param1: WideString);
  { Warning: The property BCC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BCC := Param1;
end;

function TMailItemProperties.Get_CC: WideString;
begin
    Result := DefaultInterface.CC;
end;

procedure TMailItemProperties.Set_CC(const Param1: WideString);
  { Warning: The property CC has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CC := Param1;
end;

function TMailItemProperties.Get_ConversationIndex: WideString;
begin
    Result := DefaultInterface.ConversationIndex;
end;

function TMailItemProperties.Get_ConversationTopic: WideString;
begin
    Result := DefaultInterface.ConversationTopic;
end;

function TMailItemProperties.Get_DeferredDeliveryTime: TDateTime;
begin
    Result := DefaultInterface.DeferredDeliveryTime;
end;

procedure TMailItemProperties.Set_DeferredDeliveryTime(Param1: TDateTime);
begin
  DefaultInterface.DeferredDeliveryTime := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_DeleteAfterSubmit: WordBool;
begin
    Result := DefaultInterface.DeleteAfterSubmit;
end;

procedure TMailItemProperties.Set_DeleteAfterSubmit(Param1: WordBool);
begin
  DefaultInterface.DeleteAfterSubmit := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_ExpiryTime: TDateTime;
begin
    Result := DefaultInterface.ExpiryTime;
end;

procedure TMailItemProperties.Set_ExpiryTime(Param1: TDateTime);
begin
  DefaultInterface.ExpiryTime := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_FlagDueBy: TDateTime;
begin
    Result := DefaultInterface.FlagDueBy;
end;

procedure TMailItemProperties.Set_FlagDueBy(Param1: TDateTime);
begin
  DefaultInterface.FlagDueBy := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_FlagRequest: WideString;
begin
    Result := DefaultInterface.FlagRequest;
end;

procedure TMailItemProperties.Set_FlagRequest(const Param1: WideString);
  { Warning: The property FlagRequest has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FlagRequest := Param1;
end;

function TMailItemProperties.Get_FlagStatus: OlFlagStatus;
begin
    Result := DefaultInterface.FlagStatus;
end;

procedure TMailItemProperties.Set_FlagStatus(Param1: OlFlagStatus);
begin
  DefaultInterface.FlagStatus := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_OriginatorDeliveryReportRequested: WordBool;
begin
    Result := DefaultInterface.OriginatorDeliveryReportRequested;
end;

procedure TMailItemProperties.Set_OriginatorDeliveryReportRequested(Param1: WordBool);
begin
  DefaultInterface.OriginatorDeliveryReportRequested := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_ReadReceiptRequested: WordBool;
begin
    Result := DefaultInterface.ReadReceiptRequested;
end;

procedure TMailItemProperties.Set_ReadReceiptRequested(Param1: WordBool);
begin
  DefaultInterface.ReadReceiptRequested := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_ReceivedByEntryID: WideString;
begin
    Result := DefaultInterface.ReceivedByEntryID;
end;

function TMailItemProperties.Get_ReceivedByName: WideString;
begin
    Result := DefaultInterface.ReceivedByName;
end;

function TMailItemProperties.Get_ReceivedOnBehalfOfEntryID: WideString;
begin
    Result := DefaultInterface.ReceivedOnBehalfOfEntryID;
end;

function TMailItemProperties.Get_ReceivedOnBehalfOfName: WideString;
begin
    Result := DefaultInterface.ReceivedOnBehalfOfName;
end;

function TMailItemProperties.Get_ReceivedTime: TDateTime;
begin
    Result := DefaultInterface.ReceivedTime;
end;

function TMailItemProperties.Get_RecipientReassignmentProhibited: WordBool;
begin
    Result := DefaultInterface.RecipientReassignmentProhibited;
end;

procedure TMailItemProperties.Set_RecipientReassignmentProhibited(Param1: WordBool);
begin
  DefaultInterface.RecipientReassignmentProhibited := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_Recipients: Recipients;
begin
    Result := DefaultInterface.Recipients;
end;

function TMailItemProperties.Get_ReminderOverrideDefault: WordBool;
begin
    Result := DefaultInterface.ReminderOverrideDefault;
end;

procedure TMailItemProperties.Set_ReminderOverrideDefault(Param1: WordBool);
begin
  DefaultInterface.ReminderOverrideDefault := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_ReminderPlaySound: WordBool;
begin
    Result := DefaultInterface.ReminderPlaySound;
end;

procedure TMailItemProperties.Set_ReminderPlaySound(Param1: WordBool);
begin
  DefaultInterface.ReminderPlaySound := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_ReminderSet: WordBool;
begin
    Result := DefaultInterface.ReminderSet;
end;

procedure TMailItemProperties.Set_ReminderSet(Param1: WordBool);
begin
  DefaultInterface.ReminderSet := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_ReminderSoundFile: WideString;
begin
    Result := DefaultInterface.ReminderSoundFile;
end;

procedure TMailItemProperties.Set_ReminderSoundFile(const Param1: WideString);
  { Warning: The property ReminderSoundFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ReminderSoundFile := Param1;
end;

function TMailItemProperties.Get_ReminderTime: TDateTime;
begin
    Result := DefaultInterface.ReminderTime;
end;

procedure TMailItemProperties.Set_ReminderTime(Param1: TDateTime);
begin
  DefaultInterface.ReminderTime := Param1 {TKIND_DISPATCH};
end;

function TMailItemProperties.Get_RemoteStatus: OlRemoteStatus;
begin
    Result := DefaultInterface.RemoteStatus;
end;

function TMailItemProperties.Get_ReplyRecipientNames: WideString;
begin
    Result := DefaultInterface.ReplyRecipientNames;
end;

function TMailItemProperties.Get_ReplyRecipients: Recipients;
begin
    Result := DefaultInterface.ReplyRecipients;
end;

function TMailItemProperties.Get_SaveSentMessageFolder: MAPIFolder;
begin
    Result := DefaultInterface.SaveSentMessageFolder;
end;

procedure TMailItemProperties._Set_SaveSentMessageFolder(const Param1: MAPIFolder);
  { Warning: The property SaveSentMessageFolder has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SaveSentMessageFolder := Param1;
end;

function TMailItemProperties.Get_SenderName: WideString;
begin
    Result := DefaultInterface.SenderName;
end;

function TMailItemProperties.Get_SentOn: TDateTime;
begin
    Result := DefaultInterface.SentOn;
end;

function TMailItemProperties.Get_SentOnBehalfOfName: WideString;
begin
    Result := DefaultInterface.SentOnBehalfOfName;
end;

procedure TMailItemProperties.Set_SentOnBehalfOfName(const Param1: WideString);
  { Warning: The property SentOnBehalfOfName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SentOnBehalfOfName := Param1;
end;

function TMailItemProperties.Get_To_: WideString;
begin
    Result := DefaultInterface.To_;
end;

procedure TMailItemProperties.Set_To_(const Param1: WideString);
  { Warning: The property To_ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.To_ := Param1;
end;

function TMailItemProperties.Get_VotingOptions: WideString;
begin
    Result := DefaultInterface.VotingOptions;
end;

procedure TMailItemProperties.Set_VotingOptions(const Param1: WideString);
  { Warning: The property VotingOptions has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VotingOptions := Param1;
end;

function TMailItemProperties.Get_VotingResponse: WideString;
begin
    Result := DefaultInterface.VotingResponse;
end;

procedure TMailItemProperties.Set_VotingResponse(const Param1: WideString);
  { Warning: The property VotingResponse has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.VotingResponse := Param1;
end;

{$ENDIF}

class function Co_MeetingCanceledItem.Create: _DMeetingCanceledItem;
begin
  Result := CreateComObject(CLASS__MeetingCanceledItem) as _DMeetingCanceledItem;
end;

class function Co_MeetingCanceledItem.CreateRemote(const MachineName: string): _DMeetingCanceledItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS__MeetingCanceledItem) as _DMeetingCanceledItem;
end;

class function Co_MeetingRequestAcceptedItem.Create: _DMeetingRequestAcceptedItem;
begin
  Result := CreateComObject(CLASS__MeetingRequestAcceptedItem) as _DMeetingRequestAcceptedItem;
end;

class function Co_MeetingRequestAcceptedItem.CreateRemote(const MachineName: string): _DMeetingRequestAcceptedItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS__MeetingRequestAcceptedItem) as _DMeetingRequestAcceptedItem;
end;

class function Co_MeetingRequestDeclinedItem.Create: _DMeetingRequestDeclinedItem;
begin
  Result := CreateComObject(CLASS__MeetingRequestDeclinedItem) as _DMeetingRequestDeclinedItem;
end;

class function Co_MeetingRequestDeclinedItem.CreateRemote(const MachineName: string): _DMeetingRequestDeclinedItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS__MeetingRequestDeclinedItem) as _DMeetingRequestDeclinedItem;
end;

class function CoMeetingRequestItem.Create: _DMeetingRequestItem;
begin
  Result := CreateComObject(CLASS_MeetingRequestItem) as _DMeetingRequestItem;
end;

class function CoMeetingRequestItem.CreateRemote(const MachineName: string): _DMeetingRequestItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MeetingRequestItem) as _DMeetingRequestItem;
end;

procedure TMeetingRequestItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{00061041-0000-0000-C000-000000000046}';
    IntfIID:   '{00063029-0000-0000-C000-000000000046}';
    EventIID:  '{0006303A-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMeetingRequestItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _DMeetingRequestItem;
  end;
end;

procedure TMeetingRequestItem.ConnectTo(svrIntf: _DMeetingRequestItem);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TMeetingRequestItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TMeetingRequestItem.GetDefaultInterface: _DMeetingRequestItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMeetingRequestItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMeetingRequestItemProperties.Create(Self);
{$ENDIF}
end;

destructor TMeetingRequestItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMeetingRequestItem.GetServerProperties: TMeetingRequestItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TMeetingRequestItem.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    61441: if Assigned(FOnRead) then
         FOnRead(Self);
    61442: if Assigned(FOnWrite) then
         FOnWrite(Self);
    61443: if Assigned(FOnOpen) then
         FOnOpen(Self);
    61444: if Assigned(FOnClose) then
         FOnClose(Self);
    61445: if Assigned(FOnSend) then
         FOnSend(Self);
    62566: if Assigned(FOnReply) then
         FOnReply(Self, Params[0] {const IDispatch});
    62567: if Assigned(FOnReplyAll) then
         FOnReplyAll(Self, Params[0] {const IDispatch});
    62568: if Assigned(FOnForward) then
         FOnForward(Self, Params[0] {const IDispatch});
    61446: if Assigned(FOnCustomAction) then
         FOnCustomAction(Self,
                         Params[0] {const IDispatch},
                         Params[1] {const IDispatch});
    61448: if Assigned(FOnCustomPropertyChange) then
         FOnCustomPropertyChange(Self, Params[0] {const WideString});
    61449: if Assigned(FOnPropertyChange) then
         FOnPropertyChange(Self, Params[0] {const WideString});
  end; {case DispID}
end;

function TMeetingRequestItem.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TMeetingRequestItem.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TMeetingRequestItem.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TMeetingRequestItem.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TMeetingRequestItem.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TMeetingRequestItem.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TMeetingRequestItem.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TMeetingRequestItem.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TMeetingRequestItem.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TMeetingRequestItem.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TMeetingRequestItem.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TMeetingRequestItem.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TMeetingRequestItem.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TMeetingRequestItem.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TMeetingRequestItem.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TMeetingRequestItem.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TMeetingRequestItem.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TMeetingRequestItem.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TMeetingRequestItem.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TMeetingRequestItem.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TMeetingRequestItem.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TMeetingRequestItem.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TMeetingRequestItem.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TMeetingRequestItem.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TMeetingRequestItem.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TMeetingRequestItem.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TMeetingRequestItem.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TMeetingRequestItem.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TMeetingRequestItem.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TMeetingRequestItem.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TMeetingRequestItem.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TMeetingRequestItem.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TMeetingRequestItem.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TMeetingRequestItem.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TMeetingRequestItem.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TMeetingRequestItem.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

procedure TMeetingRequestItem.Close(SaveMode: OlInspectorClose);
begin
  DefaultInterface.Close(SaveMode);
end;

function TMeetingRequestItem.Copy: IDispatch;
begin
  Result := DefaultInterface.Copy;
end;

procedure TMeetingRequestItem.Delete;
begin
  DefaultInterface.Delete;
end;

procedure TMeetingRequestItem.Display(Modal: OleVariant);
begin
  DefaultInterface.Display(Modal);
end;

function TMeetingRequestItem.Move(const DestFldr: MAPIFolder): IDispatch;
begin
  Result := DefaultInterface.Move(DestFldr);
end;

procedure TMeetingRequestItem.Save;
begin
  DefaultInterface.Save;
end;

procedure TMeetingRequestItem.SaveAs(const Path: WideString; Type_: OleVariant);
begin
  DefaultInterface.SaveAs(Path, Type_);
end;

procedure TMeetingRequestItem.PrintOut;
begin
  DefaultInterface.PrintOut;
end;

function TMeetingRequestItem.GetAssociatedAppointment(AddToCalendar: WordBool): AppointmentItem;
begin
  Result := DefaultInterface.GetAssociatedAppointment(AddToCalendar);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMeetingRequestItemProperties.Create(AServer: TMeetingRequestItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TMeetingRequestItemProperties.GetDefaultInterface: _DMeetingRequestItem;
begin
  Result := FServer.DefaultInterface;
end;

function TMeetingRequestItemProperties.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TMeetingRequestItemProperties.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TMeetingRequestItemProperties.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TMeetingRequestItemProperties.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TMeetingRequestItemProperties.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TMeetingRequestItemProperties.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TMeetingRequestItemProperties.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TMeetingRequestItemProperties.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TMeetingRequestItemProperties.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TMeetingRequestItemProperties.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TMeetingRequestItemProperties.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TMeetingRequestItemProperties.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TMeetingRequestItemProperties.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TMeetingRequestItemProperties.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TMeetingRequestItemProperties.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TMeetingRequestItemProperties.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TMeetingRequestItemProperties.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TMeetingRequestItemProperties.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TMeetingRequestItemProperties.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TMeetingRequestItemProperties.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TMeetingRequestItemProperties.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TMeetingRequestItemProperties.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TMeetingRequestItemProperties.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TMeetingRequestItemProperties.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TMeetingRequestItemProperties.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TMeetingRequestItemProperties.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TMeetingRequestItemProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TMeetingRequestItemProperties.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TMeetingRequestItemProperties.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TMeetingRequestItemProperties.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TMeetingRequestItemProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TMeetingRequestItemProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TMeetingRequestItemProperties.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TMeetingRequestItemProperties.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TMeetingRequestItemProperties.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TMeetingRequestItemProperties.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

{$ENDIF}

class function Co_MeetingRequestTentativeItem.Create: _DMeetingRequestTentativeItem;
begin
  Result := CreateComObject(CLASS__MeetingRequestTentativeItem) as _DMeetingRequestTentativeItem;
end;

class function Co_MeetingRequestTentativeItem.CreateRemote(const MachineName: string): _DMeetingRequestTentativeItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS__MeetingRequestTentativeItem) as _DMeetingRequestTentativeItem;
end;

class function CoNoteItem.Create: _DNoteItem;
begin
  Result := CreateComObject(CLASS_NoteItem) as _DNoteItem;
end;

class function CoNoteItem.CreateRemote(const MachineName: string): _DNoteItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NoteItem) as _DNoteItem;
end;

procedure TNoteItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{00061034-0000-0000-C000-000000000046}';
    IntfIID:   '{00063025-0000-0000-C000-000000000046}';
    EventIID:  '{0006303A-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TNoteItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _DNoteItem;
  end;
end;

procedure TNoteItem.ConnectTo(svrIntf: _DNoteItem);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TNoteItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TNoteItem.GetDefaultInterface: _DNoteItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TNoteItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TNoteItemProperties.Create(Self);
{$ENDIF}
end;

destructor TNoteItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TNoteItem.GetServerProperties: TNoteItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TNoteItem.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    61441: if Assigned(FOnRead) then
         FOnRead(Self);
    61442: if Assigned(FOnWrite) then
         FOnWrite(Self);
    61443: if Assigned(FOnOpen) then
         FOnOpen(Self);
    61444: if Assigned(FOnClose) then
         FOnClose(Self);
    61445: if Assigned(FOnSend) then
         FOnSend(Self);
    62566: if Assigned(FOnReply) then
         FOnReply(Self, Params[0] {const IDispatch});
    62567: if Assigned(FOnReplyAll) then
         FOnReplyAll(Self, Params[0] {const IDispatch});
    62568: if Assigned(FOnForward) then
         FOnForward(Self, Params[0] {const IDispatch});
    61446: if Assigned(FOnCustomAction) then
         FOnCustomAction(Self,
                         Params[0] {const IDispatch},
                         Params[1] {const IDispatch});
    61448: if Assigned(FOnCustomPropertyChange) then
         FOnCustomPropertyChange(Self, Params[0] {const WideString});
    61449: if Assigned(FOnPropertyChange) then
         FOnPropertyChange(Self, Params[0] {const WideString});
  end; {case DispID}
end;

function TNoteItem.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TNoteItem.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TNoteItem.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TNoteItem.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TNoteItem.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TNoteItem.Get_Color: OlNoteColor;
begin
    Result := DefaultInterface.Color;
end;

procedure TNoteItem.Set_Color(Param1: OlNoteColor);
begin
  DefaultInterface.Color := Param1 {TKIND_DISPATCH};
end;

function TNoteItem.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TNoteItem.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TNoteItem.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TNoteItem.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TNoteItem.Set_Height(Param1: Integer);
begin
  DefaultInterface.Height := Param1 {TKIND_DISPATCH};
end;

function TNoteItem.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TNoteItem.Get_Left: Integer;
begin
    Result := DefaultInterface.Left;
end;

procedure TNoteItem.Set_Left(Param1: Integer);
begin
  DefaultInterface.Left := Param1 {TKIND_DISPATCH};
end;

function TNoteItem.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TNoteItem.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TNoteItem.Get_Parent: MAPIFolder;
begin
    Result := DefaultInterface.Parent;
end;

function TNoteItem.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TNoteItem.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TNoteItem.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

function TNoteItem.Get_Top: Integer;
begin
    Result := DefaultInterface.Top;
end;

procedure TNoteItem.Set_Top(Param1: Integer);
begin
  DefaultInterface.Top := Param1 {TKIND_DISPATCH};
end;

function TNoteItem.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TNoteItem.Set_Width(Param1: Integer);
begin
  DefaultInterface.Width := Param1 {TKIND_DISPATCH};
end;

procedure TNoteItem.Close(SaveMode: OlInspectorClose);
begin
  DefaultInterface.Close(SaveMode);
end;

function TNoteItem.Copy: IDispatch;
begin
  Result := DefaultInterface.Copy;
end;

procedure TNoteItem.Delete;
begin
  DefaultInterface.Delete;
end;

procedure TNoteItem.Display(Modal: OleVariant);
begin
  DefaultInterface.Display(Modal);
end;

function TNoteItem.Move(const DestFldr: MAPIFolder): IDispatch;
begin
  Result := DefaultInterface.Move(DestFldr);
end;

procedure TNoteItem.Save;
begin
  DefaultInterface.Save;
end;

procedure TNoteItem.SaveAs(const Path: WideString; Type_: OleVariant);
begin
  DefaultInterface.SaveAs(Path, Type_);
end;

procedure TNoteItem.PrintOut;
begin
  DefaultInterface.PrintOut;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TNoteItemProperties.Create(AServer: TNoteItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TNoteItemProperties.GetDefaultInterface: _DNoteItem;
begin
  Result := FServer.DefaultInterface;
end;

function TNoteItemProperties.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TNoteItemProperties.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TNoteItemProperties.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TNoteItemProperties.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TNoteItemProperties.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TNoteItemProperties.Get_Color: OlNoteColor;
begin
    Result := DefaultInterface.Color;
end;

procedure TNoteItemProperties.Set_Color(Param1: OlNoteColor);
begin
  DefaultInterface.Color := Param1 {TKIND_DISPATCH};
end;

function TNoteItemProperties.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TNoteItemProperties.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TNoteItemProperties.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TNoteItemProperties.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TNoteItemProperties.Set_Height(Param1: Integer);
begin
  DefaultInterface.Height := Param1 {TKIND_DISPATCH};
end;

function TNoteItemProperties.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TNoteItemProperties.Get_Left: Integer;
begin
    Result := DefaultInterface.Left;
end;

procedure TNoteItemProperties.Set_Left(Param1: Integer);
begin
  DefaultInterface.Left := Param1 {TKIND_DISPATCH};
end;

function TNoteItemProperties.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TNoteItemProperties.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TNoteItemProperties.Get_Parent: MAPIFolder;
begin
    Result := DefaultInterface.Parent;
end;

function TNoteItemProperties.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TNoteItemProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TNoteItemProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

function TNoteItemProperties.Get_Top: Integer;
begin
    Result := DefaultInterface.Top;
end;

procedure TNoteItemProperties.Set_Top(Param1: Integer);
begin
  DefaultInterface.Top := Param1 {TKIND_DISPATCH};
end;

function TNoteItemProperties.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TNoteItemProperties.Set_Width(Param1: Integer);
begin
  DefaultInterface.Width := Param1 {TKIND_DISPATCH};
end;

{$ENDIF}

class function Co_OfficeDocumentItem.Create: _DOfficeDocumentItem;
begin
  Result := CreateComObject(CLASS__OfficeDocumentItem) as _DOfficeDocumentItem;
end;

class function Co_OfficeDocumentItem.CreateRemote(const MachineName: string): _DOfficeDocumentItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS__OfficeDocumentItem) as _DOfficeDocumentItem;
end;

class function CoPostItem.Create: _DPostItem;
begin
  Result := CreateComObject(CLASS_PostItem) as _DPostItem;
end;

class function CoPostItem.CreateRemote(const MachineName: string): _DPostItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PostItem) as _DPostItem;
end;

procedure TPostItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0006103A-0000-0000-C000-000000000046}';
    IntfIID:   '{00063024-0000-0000-C000-000000000046}';
    EventIID:  '{0006303A-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPostItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _DPostItem;
  end;
end;

procedure TPostItem.ConnectTo(svrIntf: _DPostItem);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TPostItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TPostItem.GetDefaultInterface: _DPostItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TPostItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPostItemProperties.Create(Self);
{$ENDIF}
end;

destructor TPostItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPostItem.GetServerProperties: TPostItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TPostItem.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    61441: if Assigned(FOnRead) then
         FOnRead(Self);
    61442: if Assigned(FOnWrite) then
         FOnWrite(Self);
    61443: if Assigned(FOnOpen) then
         FOnOpen(Self);
    61444: if Assigned(FOnClose) then
         FOnClose(Self);
    61445: if Assigned(FOnSend) then
         FOnSend(Self);
    62566: if Assigned(FOnReply) then
         FOnReply(Self, Params[0] {const IDispatch});
    62567: if Assigned(FOnReplyAll) then
         FOnReplyAll(Self, Params[0] {const IDispatch});
    62568: if Assigned(FOnForward) then
         FOnForward(Self, Params[0] {const IDispatch});
    61446: if Assigned(FOnCustomAction) then
         FOnCustomAction(Self,
                         Params[0] {const IDispatch},
                         Params[1] {const IDispatch});
    61448: if Assigned(FOnCustomPropertyChange) then
         FOnCustomPropertyChange(Self, Params[0] {const WideString});
    61449: if Assigned(FOnPropertyChange) then
         FOnPropertyChange(Self, Params[0] {const WideString});
  end; {case DispID}
end;

function TPostItem.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TPostItem.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TPostItem.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TPostItem.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TPostItem.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TPostItem.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TPostItem.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TPostItem.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TPostItem.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TPostItem.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TPostItem.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TPostItem.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TPostItem.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TPostItem.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TPostItem.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TPostItem.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TPostItem.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TPostItem.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TPostItem.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TPostItem.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TPostItem.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TPostItem.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TPostItem.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TPostItem.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TPostItem.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TPostItem.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TPostItem.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TPostItem.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TPostItem.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TPostItem.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TPostItem.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TPostItem.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TPostItem.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TPostItem.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TPostItem.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TPostItem.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TPostItem.Get_ConversationIndex: WideString;
begin
    Result := DefaultInterface.ConversationIndex;
end;

function TPostItem.Get_ConversationTopic: WideString;
begin
    Result := DefaultInterface.ConversationTopic;
end;

function TPostItem.Get_ExpiryTime: TDateTime;
begin
    Result := DefaultInterface.ExpiryTime;
end;

procedure TPostItem.Set_ExpiryTime(Param1: TDateTime);
begin
  DefaultInterface.ExpiryTime := Param1 {TKIND_DISPATCH};
end;

function TPostItem.Get_ReceivedTime: TDateTime;
begin
    Result := DefaultInterface.ReceivedTime;
end;

function TPostItem.Get_SenderName: WideString;
begin
    Result := DefaultInterface.SenderName;
end;

function TPostItem.Get_SentOn: TDateTime;
begin
    Result := DefaultInterface.SentOn;
end;

procedure TPostItem.Close(SaveMode: OlInspectorClose);
begin
  DefaultInterface.Close(SaveMode);
end;

function TPostItem.Copy: IDispatch;
begin
  Result := DefaultInterface.Copy;
end;

procedure TPostItem.Delete;
begin
  DefaultInterface.Delete;
end;

procedure TPostItem.Display(Modal: OleVariant);
begin
  DefaultInterface.Display(Modal);
end;

function TPostItem.Move(const DestFldr: MAPIFolder): IDispatch;
begin
  Result := DefaultInterface.Move(DestFldr);
end;

procedure TPostItem.Save;
begin
  DefaultInterface.Save;
end;

procedure TPostItem.SaveAs(const Path: WideString; Type_: OleVariant);
begin
  DefaultInterface.SaveAs(Path, Type_);
end;

procedure TPostItem.PrintOut;
begin
  DefaultInterface.PrintOut;
end;

procedure TPostItem.ClearConversationIndex;
begin
  DefaultInterface.ClearConversationIndex;
end;

function TPostItem.Forward: MailItem;
begin
  Result := DefaultInterface.Forward;
end;

procedure TPostItem.Post;
begin
  DefaultInterface.Post;
end;

function TPostItem.Reply: MailItem;
begin
  Result := DefaultInterface.Reply;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPostItemProperties.Create(AServer: TPostItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TPostItemProperties.GetDefaultInterface: _DPostItem;
begin
  Result := FServer.DefaultInterface;
end;

function TPostItemProperties.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TPostItemProperties.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TPostItemProperties.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TPostItemProperties.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TPostItemProperties.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TPostItemProperties.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TPostItemProperties.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TPostItemProperties.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TPostItemProperties.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TPostItemProperties.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TPostItemProperties.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TPostItemProperties.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TPostItemProperties.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TPostItemProperties.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TPostItemProperties.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TPostItemProperties.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TPostItemProperties.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TPostItemProperties.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TPostItemProperties.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TPostItemProperties.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TPostItemProperties.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TPostItemProperties.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TPostItemProperties.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TPostItemProperties.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TPostItemProperties.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TPostItemProperties.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TPostItemProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TPostItemProperties.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TPostItemProperties.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TPostItemProperties.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TPostItemProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TPostItemProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TPostItemProperties.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TPostItemProperties.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TPostItemProperties.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TPostItemProperties.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TPostItemProperties.Get_ConversationIndex: WideString;
begin
    Result := DefaultInterface.ConversationIndex;
end;

function TPostItemProperties.Get_ConversationTopic: WideString;
begin
    Result := DefaultInterface.ConversationTopic;
end;

function TPostItemProperties.Get_ExpiryTime: TDateTime;
begin
    Result := DefaultInterface.ExpiryTime;
end;

procedure TPostItemProperties.Set_ExpiryTime(Param1: TDateTime);
begin
  DefaultInterface.ExpiryTime := Param1 {TKIND_DISPATCH};
end;

function TPostItemProperties.Get_ReceivedTime: TDateTime;
begin
    Result := DefaultInterface.ReceivedTime;
end;

function TPostItemProperties.Get_SenderName: WideString;
begin
    Result := DefaultInterface.SenderName;
end;

function TPostItemProperties.Get_SentOn: TDateTime;
begin
    Result := DefaultInterface.SentOn;
end;

{$ENDIF}

class function CoRemoteItem.Create: _DRemoteItem;
begin
  Result := CreateComObject(CLASS_RemoteItem) as _DRemoteItem;
end;

class function CoRemoteItem.CreateRemote(const MachineName: string): _DRemoteItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RemoteItem) as _DRemoteItem;
end;

procedure TRemoteItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{00061060-0000-0000-C000-000000000046}';
    IntfIID:   '{00063023-0000-0000-C000-000000000046}';
    EventIID:  '{0006303A-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRemoteItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _DRemoteItem;
  end;
end;

procedure TRemoteItem.ConnectTo(svrIntf: _DRemoteItem);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TRemoteItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TRemoteItem.GetDefaultInterface: _DRemoteItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TRemoteItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRemoteItemProperties.Create(Self);
{$ENDIF}
end;

destructor TRemoteItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRemoteItem.GetServerProperties: TRemoteItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TRemoteItem.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    61441: if Assigned(FOnRead) then
         FOnRead(Self);
    61442: if Assigned(FOnWrite) then
         FOnWrite(Self);
    61443: if Assigned(FOnOpen) then
         FOnOpen(Self);
    61444: if Assigned(FOnClose) then
         FOnClose(Self);
    61445: if Assigned(FOnSend) then
         FOnSend(Self);
    62566: if Assigned(FOnReply) then
         FOnReply(Self, Params[0] {const IDispatch});
    62567: if Assigned(FOnReplyAll) then
         FOnReplyAll(Self, Params[0] {const IDispatch});
    62568: if Assigned(FOnForward) then
         FOnForward(Self, Params[0] {const IDispatch});
    61446: if Assigned(FOnCustomAction) then
         FOnCustomAction(Self,
                         Params[0] {const IDispatch},
                         Params[1] {const IDispatch});
    61448: if Assigned(FOnCustomPropertyChange) then
         FOnCustomPropertyChange(Self, Params[0] {const WideString});
    61449: if Assigned(FOnPropertyChange) then
         FOnPropertyChange(Self, Params[0] {const WideString});
  end; {case DispID}
end;

function TRemoteItem.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TRemoteItem.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TRemoteItem.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TRemoteItem.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TRemoteItem.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TRemoteItem.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TRemoteItem.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TRemoteItem.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TRemoteItem.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TRemoteItem.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TRemoteItem.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TRemoteItem.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TRemoteItem.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TRemoteItem.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TRemoteItem.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TRemoteItem.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TRemoteItem.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TRemoteItem.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TRemoteItem.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TRemoteItem.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TRemoteItem.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TRemoteItem.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TRemoteItem.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TRemoteItem.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TRemoteItem.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TRemoteItem.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TRemoteItem.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TRemoteItem.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TRemoteItem.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TRemoteItem.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TRemoteItem.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TRemoteItem.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TRemoteItem.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TRemoteItem.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TRemoteItem.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TRemoteItem.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TRemoteItem.Get_HasAttachment: WordBool;
begin
    Result := DefaultInterface.HasAttachment;
end;

function TRemoteItem.Get_RemoteMessageClass: WideString;
begin
    Result := DefaultInterface.RemoteMessageClass;
end;

function TRemoteItem.Get_TransferSize: Integer;
begin
    Result := DefaultInterface.TransferSize;
end;

function TRemoteItem.Get_TransferTime: Integer;
begin
    Result := DefaultInterface.TransferTime;
end;

procedure TRemoteItem.Close(SaveMode: OlInspectorClose);
begin
  DefaultInterface.Close(SaveMode);
end;

function TRemoteItem.Copy: IDispatch;
begin
  Result := DefaultInterface.Copy;
end;

procedure TRemoteItem.Delete;
begin
  DefaultInterface.Delete;
end;

procedure TRemoteItem.Display(Modal: OleVariant);
begin
  DefaultInterface.Display(Modal);
end;

function TRemoteItem.Move(const DestFldr: MAPIFolder): IDispatch;
begin
  Result := DefaultInterface.Move(DestFldr);
end;

procedure TRemoteItem.Save;
begin
  DefaultInterface.Save;
end;

procedure TRemoteItem.SaveAs(const Path: WideString; Type_: OleVariant);
begin
  DefaultInterface.SaveAs(Path, Type_);
end;

procedure TRemoteItem.PrintOut;
begin
  DefaultInterface.PrintOut;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRemoteItemProperties.Create(AServer: TRemoteItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TRemoteItemProperties.GetDefaultInterface: _DRemoteItem;
begin
  Result := FServer.DefaultInterface;
end;

function TRemoteItemProperties.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TRemoteItemProperties.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TRemoteItemProperties.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TRemoteItemProperties.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TRemoteItemProperties.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TRemoteItemProperties.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TRemoteItemProperties.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TRemoteItemProperties.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TRemoteItemProperties.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TRemoteItemProperties.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TRemoteItemProperties.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TRemoteItemProperties.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TRemoteItemProperties.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TRemoteItemProperties.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TRemoteItemProperties.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TRemoteItemProperties.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TRemoteItemProperties.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TRemoteItemProperties.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TRemoteItemProperties.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TRemoteItemProperties.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TRemoteItemProperties.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TRemoteItemProperties.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TRemoteItemProperties.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TRemoteItemProperties.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TRemoteItemProperties.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TRemoteItemProperties.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TRemoteItemProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TRemoteItemProperties.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TRemoteItemProperties.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TRemoteItemProperties.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TRemoteItemProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TRemoteItemProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TRemoteItemProperties.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TRemoteItemProperties.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TRemoteItemProperties.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TRemoteItemProperties.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TRemoteItemProperties.Get_HasAttachment: WordBool;
begin
    Result := DefaultInterface.HasAttachment;
end;

function TRemoteItemProperties.Get_RemoteMessageClass: WideString;
begin
    Result := DefaultInterface.RemoteMessageClass;
end;

function TRemoteItemProperties.Get_TransferSize: Integer;
begin
    Result := DefaultInterface.TransferSize;
end;

function TRemoteItemProperties.Get_TransferTime: Integer;
begin
    Result := DefaultInterface.TransferTime;
end;

{$ENDIF}

class function CoReportItem.Create: _DReportItem;
begin
  Result := CreateComObject(CLASS_ReportItem) as _DReportItem;
end;

class function CoReportItem.CreateRemote(const MachineName: string): _DReportItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReportItem) as _DReportItem;
end;

procedure TReportItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{00061035-0000-0000-C000-000000000046}';
    IntfIID:   '{00063026-0000-0000-C000-000000000046}';
    EventIID:  '{0006303A-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TReportItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _DReportItem;
  end;
end;

procedure TReportItem.ConnectTo(svrIntf: _DReportItem);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TReportItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TReportItem.GetDefaultInterface: _DReportItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TReportItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TReportItemProperties.Create(Self);
{$ENDIF}
end;

destructor TReportItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TReportItem.GetServerProperties: TReportItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TReportItem.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    61441: if Assigned(FOnRead) then
         FOnRead(Self);
    61442: if Assigned(FOnWrite) then
         FOnWrite(Self);
    61443: if Assigned(FOnOpen) then
         FOnOpen(Self);
    61444: if Assigned(FOnClose) then
         FOnClose(Self);
    61445: if Assigned(FOnSend) then
         FOnSend(Self);
    62566: if Assigned(FOnReply) then
         FOnReply(Self, Params[0] {const IDispatch});
    62567: if Assigned(FOnReplyAll) then
         FOnReplyAll(Self, Params[0] {const IDispatch});
    62568: if Assigned(FOnForward) then
         FOnForward(Self, Params[0] {const IDispatch});
    61446: if Assigned(FOnCustomAction) then
         FOnCustomAction(Self,
                         Params[0] {const IDispatch},
                         Params[1] {const IDispatch});
    61448: if Assigned(FOnCustomPropertyChange) then
         FOnCustomPropertyChange(Self, Params[0] {const WideString});
    61449: if Assigned(FOnPropertyChange) then
         FOnPropertyChange(Self, Params[0] {const WideString});
  end; {case DispID}
end;

function TReportItem.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TReportItem.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TReportItem.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TReportItem.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TReportItem.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TReportItem.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TReportItem.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TReportItem.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TReportItem.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TReportItem.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TReportItem.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TReportItem.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TReportItem.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TReportItem.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TReportItem.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TReportItem.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TReportItem.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TReportItem.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TReportItem.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TReportItem.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TReportItem.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TReportItem.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TReportItem.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TReportItem.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TReportItem.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TReportItem.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TReportItem.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TReportItem.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TReportItem.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TReportItem.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TReportItem.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TReportItem.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TReportItem.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TReportItem.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TReportItem.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TReportItem.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

procedure TReportItem.Close(SaveMode: OlInspectorClose);
begin
  DefaultInterface.Close(SaveMode);
end;

function TReportItem.Copy: IDispatch;
begin
  Result := DefaultInterface.Copy;
end;

procedure TReportItem.Delete;
begin
  DefaultInterface.Delete;
end;

procedure TReportItem.Display(Modal: OleVariant);
begin
  DefaultInterface.Display(Modal);
end;

function TReportItem.Move(const DestFldr: MAPIFolder): IDispatch;
begin
  Result := DefaultInterface.Move(DestFldr);
end;

procedure TReportItem.Save;
begin
  DefaultInterface.Save;
end;

procedure TReportItem.SaveAs(const Path: WideString; Type_: OleVariant);
begin
  DefaultInterface.SaveAs(Path, Type_);
end;

procedure TReportItem.PrintOut;
begin
  DefaultInterface.PrintOut;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TReportItemProperties.Create(AServer: TReportItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TReportItemProperties.GetDefaultInterface: _DReportItem;
begin
  Result := FServer.DefaultInterface;
end;

function TReportItemProperties.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TReportItemProperties.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TReportItemProperties.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TReportItemProperties.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TReportItemProperties.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TReportItemProperties.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TReportItemProperties.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TReportItemProperties.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TReportItemProperties.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TReportItemProperties.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TReportItemProperties.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TReportItemProperties.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TReportItemProperties.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TReportItemProperties.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TReportItemProperties.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TReportItemProperties.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TReportItemProperties.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TReportItemProperties.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TReportItemProperties.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TReportItemProperties.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TReportItemProperties.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TReportItemProperties.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TReportItemProperties.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TReportItemProperties.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TReportItemProperties.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TReportItemProperties.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TReportItemProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TReportItemProperties.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TReportItemProperties.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TReportItemProperties.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TReportItemProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TReportItemProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TReportItemProperties.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TReportItemProperties.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TReportItemProperties.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TReportItemProperties.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

{$ENDIF}

class function CoTaskItem.Create: _DTaskItem;
begin
  Result := CreateComObject(CLASS_TaskItem) as _DTaskItem;
end;

class function CoTaskItem.CreateRemote(const MachineName: string): _DTaskItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TaskItem) as _DTaskItem;
end;

procedure TTaskItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{00061032-0000-0000-C000-000000000046}';
    IntfIID:   '{00063035-0000-0000-C000-000000000046}';
    EventIID:  '{0006303A-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTaskItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _DTaskItem;
  end;
end;

procedure TTaskItem.ConnectTo(svrIntf: _DTaskItem);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TTaskItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TTaskItem.GetDefaultInterface: _DTaskItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TTaskItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TTaskItemProperties.Create(Self);
{$ENDIF}
end;

destructor TTaskItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TTaskItem.GetServerProperties: TTaskItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TTaskItem.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    61441: if Assigned(FOnRead) then
         FOnRead(Self);
    61442: if Assigned(FOnWrite) then
         FOnWrite(Self);
    61443: if Assigned(FOnOpen) then
         FOnOpen(Self);
    61444: if Assigned(FOnClose) then
         FOnClose(Self);
    61445: if Assigned(FOnSend) then
         FOnSend(Self);
    62566: if Assigned(FOnReply) then
         FOnReply(Self, Params[0] {const IDispatch});
    62567: if Assigned(FOnReplyAll) then
         FOnReplyAll(Self, Params[0] {const IDispatch});
    62568: if Assigned(FOnForward) then
         FOnForward(Self, Params[0] {const IDispatch});
    61446: if Assigned(FOnCustomAction) then
         FOnCustomAction(Self,
                         Params[0] {const IDispatch},
                         Params[1] {const IDispatch});
    61448: if Assigned(FOnCustomPropertyChange) then
         FOnCustomPropertyChange(Self, Params[0] {const WideString});
    61449: if Assigned(FOnPropertyChange) then
         FOnPropertyChange(Self, Params[0] {const WideString});
  end; {case DispID}
end;

function TTaskItem.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TTaskItem.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TTaskItem.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TTaskItem.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TTaskItem.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TTaskItem.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TTaskItem.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TTaskItem.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TTaskItem.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TTaskItem.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TTaskItem.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TTaskItem.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TTaskItem.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TTaskItem.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TTaskItem.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TTaskItem.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TTaskItem.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TTaskItem.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TTaskItem.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TTaskItem.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TTaskItem.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TTaskItem.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TTaskItem.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TTaskItem.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TTaskItem.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TTaskItem.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TTaskItem.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TTaskItem.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TTaskItem.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TTaskItem.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TTaskItem.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TTaskItem.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TTaskItem.Get_ActualWork: Integer;
begin
    Result := DefaultInterface.ActualWork;
end;

procedure TTaskItem.Set_ActualWork(Param1: Integer);
begin
  DefaultInterface.ActualWork := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_CardData: WideString;
begin
    Result := DefaultInterface.CardData;
end;

procedure TTaskItem.Set_CardData(const Param1: WideString);
  { Warning: The property CardData has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CardData := Param1;
end;

function TTaskItem.Get_Complete: WordBool;
begin
    Result := DefaultInterface.Complete;
end;

procedure TTaskItem.Set_Complete(Param1: WordBool);
begin
  DefaultInterface.Complete := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_Contacts: WideString;
begin
    Result := DefaultInterface.Contacts;
end;

procedure TTaskItem.Set_Contacts(const Param1: WideString);
  { Warning: The property Contacts has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Contacts := Param1;
end;

function TTaskItem.Get_DateCompleted: TDateTime;
begin
    Result := DefaultInterface.DateCompleted;
end;

procedure TTaskItem.Set_DateCompleted(Param1: TDateTime);
begin
  DefaultInterface.DateCompleted := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_DelegationState: OlTaskDelegationState;
begin
    Result := DefaultInterface.DelegationState;
end;

function TTaskItem.Get_Delegator: WideString;
begin
    Result := DefaultInterface.Delegator;
end;

function TTaskItem.Get_DueDate: TDateTime;
begin
    Result := DefaultInterface.DueDate;
end;

procedure TTaskItem.Set_DueDate(Param1: TDateTime);
begin
  DefaultInterface.DueDate := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_IsRecurring: WordBool;
begin
    Result := DefaultInterface.IsRecurring;
end;

function TTaskItem.Get_Ordinal: Integer;
begin
    Result := DefaultInterface.Ordinal;
end;

procedure TTaskItem.Set_Ordinal(Param1: Integer);
begin
  DefaultInterface.Ordinal := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_Owner: WideString;
begin
    Result := DefaultInterface.Owner;
end;

procedure TTaskItem.Set_Owner(const Param1: WideString);
  { Warning: The property Owner has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Owner := Param1;
end;

function TTaskItem.Get_Ownership: OlTaskOwnership;
begin
    Result := DefaultInterface.Ownership;
end;

function TTaskItem.Get_PercentComplete: Integer;
begin
    Result := DefaultInterface.PercentComplete;
end;

procedure TTaskItem.Set_PercentComplete(Param1: Integer);
begin
  DefaultInterface.PercentComplete := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_Recipients: Recipients;
begin
    Result := DefaultInterface.Recipients;
end;

function TTaskItem.Get_ReminderOverrideDefault: WordBool;
begin
    Result := DefaultInterface.ReminderOverrideDefault;
end;

procedure TTaskItem.Set_ReminderOverrideDefault(Param1: WordBool);
begin
  DefaultInterface.ReminderOverrideDefault := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_ReminderPlaySound: WordBool;
begin
    Result := DefaultInterface.ReminderPlaySound;
end;

procedure TTaskItem.Set_ReminderPlaySound(Param1: WordBool);
begin
  DefaultInterface.ReminderPlaySound := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_ReminderSet: WordBool;
begin
    Result := DefaultInterface.ReminderSet;
end;

procedure TTaskItem.Set_ReminderSet(Param1: WordBool);
begin
  DefaultInterface.ReminderSet := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_ReminderSoundFile: WideString;
begin
    Result := DefaultInterface.ReminderSoundFile;
end;

procedure TTaskItem.Set_ReminderSoundFile(const Param1: WideString);
  { Warning: The property ReminderSoundFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ReminderSoundFile := Param1;
end;

function TTaskItem.Get_ReminderTime: TDateTime;
begin
    Result := DefaultInterface.ReminderTime;
end;

procedure TTaskItem.Set_ReminderTime(Param1: TDateTime);
begin
  DefaultInterface.ReminderTime := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_ResponseState: OlTaskResponse;
begin
    Result := DefaultInterface.ResponseState;
end;

function TTaskItem.Get_Role: WideString;
begin
    Result := DefaultInterface.Role;
end;

procedure TTaskItem.Set_Role(const Param1: WideString);
  { Warning: The property Role has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Role := Param1;
end;

function TTaskItem.Get_SchedulePlusPriority: WideString;
begin
    Result := DefaultInterface.SchedulePlusPriority;
end;

procedure TTaskItem.Set_SchedulePlusPriority(const Param1: WideString);
  { Warning: The property SchedulePlusPriority has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SchedulePlusPriority := Param1;
end;

function TTaskItem.Get_StartDate: TDateTime;
begin
    Result := DefaultInterface.StartDate;
end;

procedure TTaskItem.Set_StartDate(Param1: TDateTime);
begin
  DefaultInterface.StartDate := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_Status: OlTaskStatus;
begin
    Result := DefaultInterface.Status;
end;

procedure TTaskItem.Set_Status(Param1: OlTaskStatus);
begin
  DefaultInterface.Status := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_StatusOnCompletionRecipients: WideString;
begin
    Result := DefaultInterface.StatusOnCompletionRecipients;
end;

procedure TTaskItem.Set_StatusOnCompletionRecipients(const Param1: WideString);
  { Warning: The property StatusOnCompletionRecipients has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.StatusOnCompletionRecipients := Param1;
end;

function TTaskItem.Get_StatusUpdateRecipients: WideString;
begin
    Result := DefaultInterface.StatusUpdateRecipients;
end;

procedure TTaskItem.Set_StatusUpdateRecipients(const Param1: WideString);
  { Warning: The property StatusUpdateRecipients has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.StatusUpdateRecipients := Param1;
end;

function TTaskItem.Get_TeamTask: WordBool;
begin
    Result := DefaultInterface.TeamTask;
end;

procedure TTaskItem.Set_TeamTask(Param1: WordBool);
begin
  DefaultInterface.TeamTask := Param1 {TKIND_DISPATCH};
end;

function TTaskItem.Get_TotalWork: Integer;
begin
    Result := DefaultInterface.TotalWork;
end;

procedure TTaskItem.Set_TotalWork(Param1: Integer);
begin
  DefaultInterface.TotalWork := Param1 {TKIND_DISPATCH};
end;

procedure TTaskItem.Close(SaveMode: OlInspectorClose);
begin
  DefaultInterface.Close(SaveMode);
end;

function TTaskItem.Copy: IDispatch;
begin
  Result := DefaultInterface.Copy;
end;

procedure TTaskItem.Delete;
begin
  DefaultInterface.Delete;
end;

procedure TTaskItem.Display(Modal: OleVariant);
begin
  DefaultInterface.Display(Modal);
end;

function TTaskItem.Move(const DestFldr: MAPIFolder): IDispatch;
begin
  Result := DefaultInterface.Move(DestFldr);
end;

procedure TTaskItem.Save;
begin
  DefaultInterface.Save;
end;

procedure TTaskItem.SaveAs(const Path: WideString; Type_: OleVariant);
begin
  DefaultInterface.SaveAs(Path, Type_);
end;

procedure TTaskItem.PrintOut;
begin
  DefaultInterface.PrintOut;
end;

function TTaskItem.Assign_: TaskItem;
begin
  Result := DefaultInterface.Assign_;
end;

procedure TTaskItem.CancelResponseState;
begin
  DefaultInterface.CancelResponseState;
end;

procedure TTaskItem.ClearRecurrencePattern;
begin
  DefaultInterface.ClearRecurrencePattern;
end;

procedure TTaskItem.GetRecurrencePattern;
begin
  DefaultInterface.GetRecurrencePattern;
end;

procedure TTaskItem.MarkComplete;
begin
  DefaultInterface.MarkComplete;
end;

function TTaskItem.Respond(Response: OlTaskResponse; fNoUI: OleVariant; 
                           fAdditionalTextDialog: OleVariant): TaskItem;
begin
  Result := DefaultInterface.Respond(Response, fNoUI, fAdditionalTextDialog);
end;

procedure TTaskItem.Send;
begin
  DefaultInterface.Send;
end;

function TTaskItem.SkipRecurrence: WordBool;
begin
  Result := DefaultInterface.SkipRecurrence;
end;

function TTaskItem.StatusReport: IDispatch;
begin
  Result := DefaultInterface.StatusReport;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TTaskItemProperties.Create(AServer: TTaskItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TTaskItemProperties.GetDefaultInterface: _DTaskItem;
begin
  Result := FServer.DefaultInterface;
end;

function TTaskItemProperties.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TTaskItemProperties.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TTaskItemProperties.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TTaskItemProperties.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TTaskItemProperties.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TTaskItemProperties.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TTaskItemProperties.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TTaskItemProperties.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TTaskItemProperties.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TTaskItemProperties.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TTaskItemProperties.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TTaskItemProperties.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TTaskItemProperties.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TTaskItemProperties.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TTaskItemProperties.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TTaskItemProperties.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TTaskItemProperties.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TTaskItemProperties.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TTaskItemProperties.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TTaskItemProperties.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TTaskItemProperties.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TTaskItemProperties.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TTaskItemProperties.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TTaskItemProperties.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TTaskItemProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TTaskItemProperties.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TTaskItemProperties.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TTaskItemProperties.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TTaskItemProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TTaskItemProperties.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TTaskItemProperties.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TTaskItemProperties.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

function TTaskItemProperties.Get_ActualWork: Integer;
begin
    Result := DefaultInterface.ActualWork;
end;

procedure TTaskItemProperties.Set_ActualWork(Param1: Integer);
begin
  DefaultInterface.ActualWork := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_CardData: WideString;
begin
    Result := DefaultInterface.CardData;
end;

procedure TTaskItemProperties.Set_CardData(const Param1: WideString);
  { Warning: The property CardData has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CardData := Param1;
end;

function TTaskItemProperties.Get_Complete: WordBool;
begin
    Result := DefaultInterface.Complete;
end;

procedure TTaskItemProperties.Set_Complete(Param1: WordBool);
begin
  DefaultInterface.Complete := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_Contacts: WideString;
begin
    Result := DefaultInterface.Contacts;
end;

procedure TTaskItemProperties.Set_Contacts(const Param1: WideString);
  { Warning: The property Contacts has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Contacts := Param1;
end;

function TTaskItemProperties.Get_DateCompleted: TDateTime;
begin
    Result := DefaultInterface.DateCompleted;
end;

procedure TTaskItemProperties.Set_DateCompleted(Param1: TDateTime);
begin
  DefaultInterface.DateCompleted := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_DelegationState: OlTaskDelegationState;
begin
    Result := DefaultInterface.DelegationState;
end;

function TTaskItemProperties.Get_Delegator: WideString;
begin
    Result := DefaultInterface.Delegator;
end;

function TTaskItemProperties.Get_DueDate: TDateTime;
begin
    Result := DefaultInterface.DueDate;
end;

procedure TTaskItemProperties.Set_DueDate(Param1: TDateTime);
begin
  DefaultInterface.DueDate := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_IsRecurring: WordBool;
begin
    Result := DefaultInterface.IsRecurring;
end;

function TTaskItemProperties.Get_Ordinal: Integer;
begin
    Result := DefaultInterface.Ordinal;
end;

procedure TTaskItemProperties.Set_Ordinal(Param1: Integer);
begin
  DefaultInterface.Ordinal := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_Owner: WideString;
begin
    Result := DefaultInterface.Owner;
end;

procedure TTaskItemProperties.Set_Owner(const Param1: WideString);
  { Warning: The property Owner has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Owner := Param1;
end;

function TTaskItemProperties.Get_Ownership: OlTaskOwnership;
begin
    Result := DefaultInterface.Ownership;
end;

function TTaskItemProperties.Get_PercentComplete: Integer;
begin
    Result := DefaultInterface.PercentComplete;
end;

procedure TTaskItemProperties.Set_PercentComplete(Param1: Integer);
begin
  DefaultInterface.PercentComplete := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_Recipients: Recipients;
begin
    Result := DefaultInterface.Recipients;
end;

function TTaskItemProperties.Get_ReminderOverrideDefault: WordBool;
begin
    Result := DefaultInterface.ReminderOverrideDefault;
end;

procedure TTaskItemProperties.Set_ReminderOverrideDefault(Param1: WordBool);
begin
  DefaultInterface.ReminderOverrideDefault := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_ReminderPlaySound: WordBool;
begin
    Result := DefaultInterface.ReminderPlaySound;
end;

procedure TTaskItemProperties.Set_ReminderPlaySound(Param1: WordBool);
begin
  DefaultInterface.ReminderPlaySound := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_ReminderSet: WordBool;
begin
    Result := DefaultInterface.ReminderSet;
end;

procedure TTaskItemProperties.Set_ReminderSet(Param1: WordBool);
begin
  DefaultInterface.ReminderSet := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_ReminderSoundFile: WideString;
begin
    Result := DefaultInterface.ReminderSoundFile;
end;

procedure TTaskItemProperties.Set_ReminderSoundFile(const Param1: WideString);
  { Warning: The property ReminderSoundFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ReminderSoundFile := Param1;
end;

function TTaskItemProperties.Get_ReminderTime: TDateTime;
begin
    Result := DefaultInterface.ReminderTime;
end;

procedure TTaskItemProperties.Set_ReminderTime(Param1: TDateTime);
begin
  DefaultInterface.ReminderTime := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_ResponseState: OlTaskResponse;
begin
    Result := DefaultInterface.ResponseState;
end;

function TTaskItemProperties.Get_Role: WideString;
begin
    Result := DefaultInterface.Role;
end;

procedure TTaskItemProperties.Set_Role(const Param1: WideString);
  { Warning: The property Role has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Role := Param1;
end;

function TTaskItemProperties.Get_SchedulePlusPriority: WideString;
begin
    Result := DefaultInterface.SchedulePlusPriority;
end;

procedure TTaskItemProperties.Set_SchedulePlusPriority(const Param1: WideString);
  { Warning: The property SchedulePlusPriority has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SchedulePlusPriority := Param1;
end;

function TTaskItemProperties.Get_StartDate: TDateTime;
begin
    Result := DefaultInterface.StartDate;
end;

procedure TTaskItemProperties.Set_StartDate(Param1: TDateTime);
begin
  DefaultInterface.StartDate := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_Status: OlTaskStatus;
begin
    Result := DefaultInterface.Status;
end;

procedure TTaskItemProperties.Set_Status(Param1: OlTaskStatus);
begin
  DefaultInterface.Status := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_StatusOnCompletionRecipients: WideString;
begin
    Result := DefaultInterface.StatusOnCompletionRecipients;
end;

procedure TTaskItemProperties.Set_StatusOnCompletionRecipients(const Param1: WideString);
  { Warning: The property StatusOnCompletionRecipients has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.StatusOnCompletionRecipients := Param1;
end;

function TTaskItemProperties.Get_StatusUpdateRecipients: WideString;
begin
    Result := DefaultInterface.StatusUpdateRecipients;
end;

procedure TTaskItemProperties.Set_StatusUpdateRecipients(const Param1: WideString);
  { Warning: The property StatusUpdateRecipients has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.StatusUpdateRecipients := Param1;
end;

function TTaskItemProperties.Get_TeamTask: WordBool;
begin
    Result := DefaultInterface.TeamTask;
end;

procedure TTaskItemProperties.Set_TeamTask(Param1: WordBool);
begin
  DefaultInterface.TeamTask := Param1 {TKIND_DISPATCH};
end;

function TTaskItemProperties.Get_TotalWork: Integer;
begin
    Result := DefaultInterface.TotalWork;
end;

procedure TTaskItemProperties.Set_TotalWork(Param1: Integer);
begin
  DefaultInterface.TotalWork := Param1 {TKIND_DISPATCH};
end;

{$ENDIF}

class function Co_TaskRequestAcceptItem.Create: _DTaskRequestAcceptItem;
begin
  Result := CreateComObject(CLASS__TaskRequestAcceptItem) as _DTaskRequestAcceptItem;
end;

class function Co_TaskRequestAcceptItem.CreateRemote(const MachineName: string): _DTaskRequestAcceptItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS__TaskRequestAcceptItem) as _DTaskRequestAcceptItem;
end;

class function Co_TaskRequestDeclineItem.Create: _DTaskRequestDeclineItem;
begin
  Result := CreateComObject(CLASS__TaskRequestDeclineItem) as _DTaskRequestDeclineItem;
end;

class function Co_TaskRequestDeclineItem.CreateRemote(const MachineName: string): _DTaskRequestDeclineItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS__TaskRequestDeclineItem) as _DTaskRequestDeclineItem;
end;

class function CoTaskRequestItem.Create: _DTaskRequestItem;
begin
  Result := CreateComObject(CLASS_TaskRequestItem) as _DTaskRequestItem;
end;

class function CoTaskRequestItem.CreateRemote(const MachineName: string): _DTaskRequestItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TaskRequestItem) as _DTaskRequestItem;
end;

procedure TTaskRequestItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{00061050-0000-0000-C000-000000000046}';
    IntfIID:   '{00063036-0000-0000-C000-000000000046}';
    EventIID:  '{0006303A-0000-0000-C000-000000000046}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTaskRequestItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as _DTaskRequestItem;
  end;
end;

procedure TTaskRequestItem.ConnectTo(svrIntf: _DTaskRequestItem);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TTaskRequestItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TTaskRequestItem.GetDefaultInterface: _DTaskRequestItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TTaskRequestItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TTaskRequestItemProperties.Create(Self);
{$ENDIF}
end;

destructor TTaskRequestItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TTaskRequestItem.GetServerProperties: TTaskRequestItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TTaskRequestItem.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    61441: if Assigned(FOnRead) then
         FOnRead(Self);
    61442: if Assigned(FOnWrite) then
         FOnWrite(Self);
    61443: if Assigned(FOnOpen) then
         FOnOpen(Self);
    61444: if Assigned(FOnClose) then
         FOnClose(Self);
    61445: if Assigned(FOnSend) then
         FOnSend(Self);
    62566: if Assigned(FOnReply) then
         FOnReply(Self, Params[0] {const IDispatch});
    62567: if Assigned(FOnReplyAll) then
         FOnReplyAll(Self, Params[0] {const IDispatch});
    62568: if Assigned(FOnForward) then
         FOnForward(Self, Params[0] {const IDispatch});
    61446: if Assigned(FOnCustomAction) then
         FOnCustomAction(Self,
                         Params[0] {const IDispatch},
                         Params[1] {const IDispatch});
    61448: if Assigned(FOnCustomPropertyChange) then
         FOnCustomPropertyChange(Self, Params[0] {const WideString});
    61449: if Assigned(FOnPropertyChange) then
         FOnPropertyChange(Self, Params[0] {const WideString});
  end; {case DispID}
end;

function TTaskRequestItem.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TTaskRequestItem.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TTaskRequestItem.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TTaskRequestItem.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TTaskRequestItem.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TTaskRequestItem.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TTaskRequestItem.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TTaskRequestItem.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TTaskRequestItem.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TTaskRequestItem.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TTaskRequestItem.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TTaskRequestItem.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TTaskRequestItem.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TTaskRequestItem.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TTaskRequestItem.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TTaskRequestItem.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TTaskRequestItem.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TTaskRequestItem.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TTaskRequestItem.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TTaskRequestItem.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TTaskRequestItem.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TTaskRequestItem.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TTaskRequestItem.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TTaskRequestItem.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TTaskRequestItem.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TTaskRequestItem.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TTaskRequestItem.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TTaskRequestItem.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TTaskRequestItem.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TTaskRequestItem.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TTaskRequestItem.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TTaskRequestItem.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TTaskRequestItem.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TTaskRequestItem.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TTaskRequestItem.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TTaskRequestItem.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

procedure TTaskRequestItem.Close(SaveMode: OlInspectorClose);
begin
  DefaultInterface.Close(SaveMode);
end;

function TTaskRequestItem.Copy: IDispatch;
begin
  Result := DefaultInterface.Copy;
end;

procedure TTaskRequestItem.Delete;
begin
  DefaultInterface.Delete;
end;

procedure TTaskRequestItem.Display(Modal: OleVariant);
begin
  DefaultInterface.Display(Modal);
end;

function TTaskRequestItem.Move(const DestFldr: MAPIFolder): IDispatch;
begin
  Result := DefaultInterface.Move(DestFldr);
end;

procedure TTaskRequestItem.Save;
begin
  DefaultInterface.Save;
end;

procedure TTaskRequestItem.SaveAs(const Path: WideString; Type_: OleVariant);
begin
  DefaultInterface.SaveAs(Path, Type_);
end;

procedure TTaskRequestItem.PrintOut;
begin
  DefaultInterface.PrintOut;
end;

function TTaskRequestItem.GetAssociatedTask(AddToTaskList: WordBool): TaskItem;
begin
  Result := DefaultInterface.GetAssociatedTask(AddToTaskList);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TTaskRequestItemProperties.Create(AServer: TTaskRequestItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TTaskRequestItemProperties.GetDefaultInterface: _DTaskRequestItem;
begin
  Result := FServer.DefaultInterface;
end;

function TTaskRequestItemProperties.Get_Actions: Actions;
begin
    Result := DefaultInterface.Actions;
end;

function TTaskRequestItemProperties.Get_Application: OutlookApplication;
begin
    Result := DefaultInterface.Application;
end;

function TTaskRequestItemProperties.Get_Attachments: Attachments;
begin
    Result := DefaultInterface.Attachments;
end;

function TTaskRequestItemProperties.Get_BillingInformation: WideString;
begin
    Result := DefaultInterface.BillingInformation;
end;

procedure TTaskRequestItemProperties.Set_BillingInformation(const Param1: WideString);
  { Warning: The property BillingInformation has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.BillingInformation := Param1;
end;

function TTaskRequestItemProperties.Get_Body: WideString;
begin
    Result := DefaultInterface.Body;
end;

procedure TTaskRequestItemProperties.Set_Body(const Param1: WideString);
  { Warning: The property Body has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Body := Param1;
end;

function TTaskRequestItemProperties.Get_Categories: WideString;
begin
    Result := DefaultInterface.Categories;
end;

procedure TTaskRequestItemProperties.Set_Categories(const Param1: WideString);
  { Warning: The property Categories has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Categories := Param1;
end;

function TTaskRequestItemProperties.Get_Companies: WideString;
begin
    Result := DefaultInterface.Companies;
end;

procedure TTaskRequestItemProperties.Set_Companies(const Param1: WideString);
  { Warning: The property Companies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Companies := Param1;
end;

function TTaskRequestItemProperties.Get_CreationTime: TDateTime;
begin
    Result := DefaultInterface.CreationTime;
end;

function TTaskRequestItemProperties.Get_EntryID: WideString;
begin
    Result := DefaultInterface.EntryID;
end;

function TTaskRequestItemProperties.Get_FormDescription: FormDescription;
begin
    Result := DefaultInterface.FormDescription;
end;

function TTaskRequestItemProperties.Get_GetInspector: Inspector;
begin
    Result := DefaultInterface.GetInspector;
end;

function TTaskRequestItemProperties.Get_Importance: OlImportance;
begin
    Result := DefaultInterface.Importance;
end;

procedure TTaskRequestItemProperties.Set_Importance(Param1: OlImportance);
begin
  DefaultInterface.Importance := Param1 {TKIND_DISPATCH};
end;

function TTaskRequestItemProperties.Get_LastModificationTime: TDateTime;
begin
    Result := DefaultInterface.LastModificationTime;
end;

function TTaskRequestItemProperties.Get_MessageClass: WideString;
begin
    Result := DefaultInterface.MessageClass;
end;

procedure TTaskRequestItemProperties.Set_MessageClass(const Param1: WideString);
  { Warning: The property MessageClass has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MessageClass := Param1;
end;

function TTaskRequestItemProperties.Get_Mileage: WideString;
begin
    Result := DefaultInterface.Mileage;
end;

procedure TTaskRequestItemProperties.Set_Mileage(const Param1: WideString);
  { Warning: The property Mileage has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Mileage := Param1;
end;

function TTaskRequestItemProperties.Get_NoAging: WordBool;
begin
    Result := DefaultInterface.NoAging;
end;

procedure TTaskRequestItemProperties.Set_NoAging(Param1: WordBool);
begin
  DefaultInterface.NoAging := Param1 {TKIND_DISPATCH};
end;

function TTaskRequestItemProperties.Get_OutlookInternalVersion: WideString;
begin
    Result := DefaultInterface.OutlookInternalVersion;
end;

function TTaskRequestItemProperties.Get_OutlookVersion: WideString;
begin
    Result := DefaultInterface.OutlookVersion;
end;

function TTaskRequestItemProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

function TTaskRequestItemProperties.Get_Saved: WordBool;
begin
    Result := DefaultInterface.Saved;
end;

function TTaskRequestItemProperties.Get_Sensitivity: OlSensitivity;
begin
    Result := DefaultInterface.Sensitivity;
end;

procedure TTaskRequestItemProperties.Set_Sensitivity(Param1: OlSensitivity);
begin
  DefaultInterface.Sensitivity := Param1 {TKIND_DISPATCH};
end;

function TTaskRequestItemProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TTaskRequestItemProperties.Get_Subject: WideString;
begin
    Result := DefaultInterface.Subject;
end;

procedure TTaskRequestItemProperties.Set_Subject(const Param1: WideString);
  { Warning: The property Subject has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Subject := Param1;
end;

function TTaskRequestItemProperties.Get_UnRead: WordBool;
begin
    Result := DefaultInterface.UnRead;
end;

procedure TTaskRequestItemProperties.Set_UnRead(Param1: WordBool);
begin
  DefaultInterface.UnRead := Param1 {TKIND_DISPATCH};
end;

function TTaskRequestItemProperties.Get_UserProperties: UserProperties;
begin
    Result := DefaultInterface.UserProperties;
end;

{$ENDIF}

class function Co_TaskRequestUpdateItem.Create: _DTaskRequestUpdateItem;
begin
  Result := CreateComObject(CLASS__TaskRequestUpdateItem) as _DTaskRequestUpdateItem;
end;

class function Co_TaskRequestUpdateItem.CreateRemote(const MachineName: string): _DTaskRequestUpdateItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS__TaskRequestUpdateItem) as _DTaskRequestUpdateItem;
end;

end.
