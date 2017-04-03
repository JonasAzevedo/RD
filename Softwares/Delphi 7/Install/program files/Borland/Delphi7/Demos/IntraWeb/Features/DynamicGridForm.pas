unit DynamicGridForm;
{PUBDIST}

interface

uses
  IWAppForm, IWApplication, IWTypes, Classes, IWControl,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}  
  IWCompDynamicChart, IWHTMLControls, IWCompDynamicChartLegend,
  IWCompButton, IWCompLabel, IWClientSideDataset, IWCompListbox,
  IWClientSideDatasetDBLink, IWClientSideDatasetBase, MenuFrame,
  IWDynGrid;

type
  TformDynamicGrid = class(TIWAppForm)
    framMenu1: TframMenu;
    IWDynGrid1: TIWDynGrid;
    dsetStaticData: TIWClientSideDataset;
  public
  end;

implementation
{$R *.dfm}

end.
