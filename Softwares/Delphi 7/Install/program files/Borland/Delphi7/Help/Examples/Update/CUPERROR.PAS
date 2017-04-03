unit CUpError;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls,DB,dbitypes,dbiprocs,dbtables;

type
  TFormError = class(TForm)
    Panel1: TPanel;
    LabelOld: TLabel;
    LabelNew: TLabel;
    LabelMessage: TLabel;
    EditOld: TEdit;
    EditNew: TEdit;
    ButtonIgnore: TButton;
    ButtonRetry: TButton;
    ButtonAbort: TButton;

  private
    { Private declarations }
  public
  function ErrorDecision(DataSet : TDataSet; E: EDataBaseError;
                                 UpdateKind: TUpdateKind):TUpdateAction;
    { Public declarations }
  end;

var
  FormError: TFormError;

implementation

uses CUpDM;

{$R *.DFM}

function TFormError.Errordecision(Dataset: TDataSet;
             E: EDataBaseError; UpdateKind: TUpdateKind):
             TUpdateAction;
    const
      UpdateKindStr: array[TUpdateKind] of String =('Modify Error',
                     'Insert Error','Delete Error');
      begin
        Panel1.caption := UpdateKindStr[UpdateKind];
        LabelMessage.Caption := E.Message;
        EditOld.text := DataModuleCache.QueryCache.Fields[0].OldValue;
        EditNew.text := DataModuleCache.QueryCache.Fields[0].NewValue;
        ShowModal;
        case ModalResult of
        mrRetry:
        begin
          DataModuleCache.QueryCache.Fields[0].newvalue := EditNew.text;
          Result := uaRetry;
        end;
        mrIgnore: Result := uaSkip;
        else
          result := uaAbort;

      end;
   end;

end.
