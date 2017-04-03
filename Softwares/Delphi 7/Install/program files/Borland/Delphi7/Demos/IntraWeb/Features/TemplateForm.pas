unit TemplateForm;
{PUBDIST}

interface

uses
  IWAppForm, IWApplication, IWTypes, IWCompListbox, IWCompEdit,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}

  IWCompButton, Classes, IWControl, IWHTMLControls, IWLayoutMgr,
  IWTemplateProcessorHTML;

type
  TformTemplate = class(TIWAppForm)
    IWLink1: TIWLink;
    IWButton1: TIWButton;
    IWEdit1: TIWEdit;
    IWListbox1: TIWListbox;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    procedure IWLink1Click(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

procedure TformTemplate.IWLink1Click(Sender: TObject);
begin
  Release;
end;

procedure TformTemplate.IWButton1Click(Sender: TObject);
begin
  IWListbox1.Items.Add(IWEdit1.Text);
end;

end.
