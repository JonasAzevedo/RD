unit MenuFrame;

interface

uses
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QDialogs,{$ELSE}Dialogs,{$ENDIF}
  {$IFNDEF Linux}
  Windows, Messages,
  {$ENDIF}
  SysUtils, Classes, IWControl, IWHTMLControls,
  IWCompButton, IWCompLabel, IWAppForm, IWContainer, IWRegion;

type
  TframMenu = class(TFrame)
    linkHome: TIWLink;
    linkSimpleInputForm: TIWLink;
    linkMessageDialogs: TIWLink;
    linkComboboxes: TIWLink;
    IWLink6: TIWLink;
    linkStyleSheets: TIWLink;
    IWLink3: TIWLink;
    linkJava: TIWLink;
    linkGrids: TIWLink;
    linkEditGrid: TIWLink;
    linkPopupContent: TIWLink;
    IWLink7: TIWLink;
    IWLink2: TIWLink;
    IWLink4: TIWLink;
    IWLink1: TIWLink;
    linkDynamicChart: TIWLink;
    IWLabel1: TIWLabel;
    linkDynamicGrid: TIWLink;
    IWLink8: TIWLink;
    IWLink5: TIWLink;
    IWLink9: TIWLink;
    IWLink10: TIWLink;
    IWLink11: TIWLink;
    IWLink12: TIWLink;
    butnExit: TIWButton;
    procedure linkSimpleInputFormClick(Sender: TObject);
    procedure butnExitClick(Sender: TObject);
    procedure linkHomeClick(Sender: TObject);
    procedure linkMessageDialogsClick(Sender: TObject);
    procedure linkComboboxesClick(Sender: TObject);
    procedure linkPopupContentClick(Sender: TObject);
    procedure linkStyleSheetsClick(Sender: TObject);
    procedure IWLink3Click(Sender: TObject);
    procedure linkJavaClick(Sender: TObject);
    procedure linkGridsClick(Sender: TObject);
    procedure linkEditGridClick(Sender: TObject);
    procedure IWLink2Click(Sender: TObject);
    procedure linkDynamicChartClick(Sender: TObject);
    procedure IWLink4Click(Sender: TObject);
    procedure IWLink6Click(Sender: TObject);
    procedure IWLink1Click(Sender: TObject);
    procedure linkDynamicGridClick(Sender: TObject);
    procedure IWLink5Click(Sender: TObject);
    procedure IWLink7Click(Sender: TObject);
    procedure IWLink8Click(Sender: TObject);
    procedure IWLink9Click(Sender: TObject);
    procedure IWLink10Click(Sender: TObject);
    procedure IWLink11Click(Sender: TObject);
    procedure IWLink12Click(Sender: TObject);
  private
    procedure Move(AFormClass: TIWAppFormClass);
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation
{$R *.dfm}

uses
  Combobox, ContentWindow, ChartForm,
  DownloadForm,
  EditGridForm,
  FlowForm,
  GridForm,
  IWInit, IWTypes,
  JavaApplet,
  Main, MessageDialogs, MapForm,
  Simple, StyleSheetForm, DynamicGridForm, FileUploadForm,
  TimerForm, TemplateForm, MenuForm, pdfDemoForm, ClientSideDataForm,
  TreeViewForm, Flash, AlignAnchorsForm;

procedure TframMenu.Move(AFormClass: TIWAppFormClass);
begin
  // Release the current form
  TIWAppForm(RWebApplication.ActiveForm).Release;
  // Create the next form
  AFormClass.Create(RWebApplication).Show;
end;

procedure TframMenu.butnExitClick(Sender: TObject);
begin
  {$IFDEF Online}
  RWebApplication.TerminateAndRedirect('http://www.atozedsoftware.com/intraweb.html');
  {$ELSE}
  RWebApplication.Terminate('Thanks for trying the demo!');
  {$ENDIF}
end;

procedure TframMenu.linkSimpleInputFormClick(Sender: TObject);
begin
  Move(TformSimple);
end;

procedure TframMenu.linkHomeClick(Sender: TObject);
begin
  Move(TformMain);
end;

procedure TframMenu.linkMessageDialogsClick(Sender: TObject);
begin
  Move(TformMessageDialogs);
end;

procedure TframMenu.linkComboboxesClick(Sender: TObject);
begin
  Move(TformComboboxes);
end;

procedure TframMenu.linkPopupContentClick(Sender: TObject);
begin
  Move(TformContentWindow);
end;

procedure TframMenu.linkStyleSheetsClick(Sender: TObject);
begin
  Move(TformStyleSheets);
end;

procedure TframMenu.IWLink3Click(Sender: TObject);
begin
  Move(TformMap);
end;

procedure TframMenu.linkJavaClick(Sender: TObject);
begin
  Move(TformJavaApplet);
end;

procedure TframMenu.linkGridsClick(Sender: TObject);
begin
  Move(TformGrids);
end;

procedure TframMenu.linkEditGridClick(Sender: TObject);
begin
  Move(TformEditGrid);
end;

procedure TframMenu.IWLink2Click(Sender: TObject);
begin
  Move(TformTimer);
end;

procedure TframMenu.linkDynamicChartClick(Sender: TObject);
begin
  Move(TformChart);
end;

constructor TframMenu.Create(AOwner: TComponent);
begin
  inherited;
  linkDynamicChart.Enabled := RWebApplication.Browser = brIE;
end;

procedure TframMenu.IWLink4Click(Sender: TObject);
begin
  TformTemplate.Create(RWebApplication).Show;
end;

procedure TframMenu.IWLink6Click(Sender: TObject);
begin
  Move(TformDownload);
end;

procedure TframMenu.IWLink1Click(Sender: TObject);
begin
  TformFlow.Create(RWebApplication).Show;
end;

procedure TframMenu.linkDynamicGridClick(Sender: TObject);
begin
  Move(TformDynamicGrid);
end;

procedure TframMenu.IWLink5Click(Sender: TObject);
begin
  Move(TformMenuDemo);
end;

procedure TframMenu.IWLink7Click(Sender: TObject);
begin
  Move(TformPdfDemo);
end;

procedure TframMenu.IWLink8Click(Sender: TObject);
begin
  Move(TformClientSideData);
end;

procedure TframMenu.IWLink9Click(Sender: TObject);
begin
  Move(TformFileUploadDemo);
end;

procedure TframMenu.IWLink10Click(Sender: TObject);
begin
  Move(TformTreeView);
end;

procedure TframMenu.IWLink11Click(Sender: TObject);
begin
  Move(TformFlash);
end;

procedure TframMenu.IWLink12Click(Sender: TObject);
begin
  Move(TformAlignAnchor);
end;

end.
