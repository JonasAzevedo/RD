program Features;

uses
  IWInitStandAlone,
  Simple in 'Simple.pas' {formSimple: TIWFormModuleBase},
  ServerController in 'ServerController.pas' {IWServerController: TDataModule},
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  MessageDialogs in 'MessageDialogs.pas' {formMessageDialogs: TIWFormModuleBase},
  Combobox in 'Combobox.pas' {formComboboxes: TIWFormModuleBase},
  EditGridForm in 'EditGridForm.pas' {formEditGrid: TIWFormModuleBase},
  JavaApplet in 'JavaApplet.pas' {formJavaApplet: TIWFormModuleBase},
  GridForm in 'GridForm.pas' {formGrids: TIWFormModuleBase},
  Global in 'Global.pas',
  ContentWindow in 'ContentWindow.pas' {formContentWindow: TIWFormModuleBase},
  StyleSheetForm in 'StyleSheetForm.pas' {formStyleSheets: TIWFormModuleBase},
  TimerForm in 'TimerForm.pas' {formTimer: TIWAppForm},
  MapForm in 'MapForm.pas' {formMap: TIWAppForm},
  MenuForm in 'MenuForm.pas' {formMenuDemo: TIWAppForm},
  MenuFrame in 'MenuFrame.pas' {framMenu: TFrame},
  TemplateForm in 'TemplateForm.pas' {formTemplate: TIWAppForm},
  DownloadForm in 'DownloadForm.pas' {formDownload: TIWAppForm},
  FlowForm in 'FlowForm.pas' {formFlow: TIWAppForm},
  ChartForm in 'ChartForm.pas' {formChart: TIWAppForm},
  ClientSideDataForm in 'ClientSideDataForm.pas' {formClientSideData: TIWAppForm},
  pdfDemoForm in 'pdfDemoForm.pas' {formPdfDemo: TIWAppForm},
  DynamicGridForm in 'DynamicGridForm.pas' {formDynamicGrid: TIWAppForm},
  FileUploadForm in 'FileUploadForm.pas' {formFileUploadDemo: TIWAppForm},
  TreeViewForm in 'TreeViewForm.pas' {formTreeView: TIWAppForm},
  Flash in 'Flash.pas' {formFlash: TIWAppForm},
  AlignAnchorsForm in 'AlignAnchorsForm.pas' {formAlignAnchor: TIWAppForm};

{$R *.res}

begin
  IWRun(TFormMain, TIWServerController);
end.
