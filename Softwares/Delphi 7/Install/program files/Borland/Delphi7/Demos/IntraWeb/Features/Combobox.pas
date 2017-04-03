unit Combobox;
{PUBDIST}

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWHTMLControls, IWCompLabel, IWCompText, IWCompCheckbox, IWCompListbox,
  IWExtCtrls, IWCompRectangle, IWRegion, MenuFrame, IWContainer;

type
  TformComboboxes = class(TIWAppForm)
    cmboNumbers: TIWComboBox;
    lablNumber: TIWLabel;
    IWLabel1: TIWLabel;
    chckCheckbox: TIWCheckBox;
    lablCheckbox: TIWLabel;
    IWCheckBox1: TIWCheckBox;
    IWText1: TIWText;
    IWRectangle1: TIWRectangle;
    IWRegion1: TIWRegion;
    IWLabel2: TIWLabel;
    IWRadioGroup1: TIWRadioGroup;
    IWLabel3: TIWLabel;
    IWRadioGroup2: TIWRadioGroup;
    IWText2: TIWText;
    IWCheckBox2: TIWCheckBox;
    framMenu1: TframMenu;
    IWLabel4: TIWLabel;
    procedure cmboNumbersChange(Sender: TObject);
    procedure chckCheckboxClick(Sender: TObject);
    procedure IWCheckBox2Click(Sender: TObject);
    procedure IWCheckBox1Click(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

procedure TformComboboxes.cmboNumbersChange(Sender: TObject);
begin
  lablNumber.Caption := cmboNumbers.Items[cmboNumbers.ItemIndex];
end;

procedure TformComboboxes.chckCheckboxClick(Sender: TObject);
begin
  if chckCheckbox.Checked then begin
    lablCheckbox.Caption := 'Checked';
  end else begin
    lablCheckbox.Caption := 'Unchecked';
  end;
end;

procedure TformComboboxes.IWCheckBox2Click(Sender: TObject);
begin
  IWRegion1.Visible := IWCheckbox2.Checked;
end;

procedure TformComboboxes.IWCheckBox1Click(Sender: TObject);
begin
  if IWCheckBox1.Checked then
    IWCheckBox1.Caption := 'Cool Checkbox - Checked'
  else
    IWCheckBox1.Caption := 'Cool Checkbox - Unchecked';
end;

end.
