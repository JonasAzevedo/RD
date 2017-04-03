unit UMnuDmo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls,Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure MyPopupHandler(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  MyMainMenu: TMainMenu;
  MyPopUpMenu: TPopUpMenu;
  MySubItem1,MySubItem2 : TMenuItem;
  MySubItems: array[0..3] of TMenuItem;
  MyPopUpItems: array[0..3] of TMenuItem;
implementation

{$R *.DFM}

procedure TForm1.MyPopupHandler(Sender: TObject);
begin
  with Sender as TMenuItem do begin
    ShowMessage(Caption);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  MyMainMenu:= TMainMenu.Create(Self);
  Button4.Enabled := true;
  ShowMessage('MainMenu created but no items' + #13+
              'are added so it does not show.');
  Button1.Enabled := False;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  MyPopUpMenu := TPopUpMenu.Create(self);
  Button3.Enabled := true;
  ShowMessage('PopUpMenu created.');
  Button2.Enabled := False;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  MyPopUpMenu.Popup(Form1.Left + 60, Form1.Top + 140);
  Button9.Enabled := true;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to 3 do begin
    MyPopUpItems[i] := TMenuItem.Create(Self);
    MyPopUpItems[i].Caption := 'New item ' + IntToStr(i);
    MyPopUpMenu.Items.Add(MyPopUpItems[i]);
  end;
  Button7.Enabled := true;
  Button3.Enabled := False;
end;
procedure TForm1.Button4Click(Sender: TObject);
var
  MyItem: array[0..2] of TMenuItem;
  i: Integer;
begin
  for i := 0 to 2 do begin
    MyItem[i] := TMenuItem.Create(Self);
    MyItem[i].Caption := 'New item ' + IntToStr(i);
    MyMainMenu.Items.Add(MyItem[i]);
    end;
  Button4.Enabled := False;
  Button5.Enabled := true;
end;
procedure TForm1.Button5Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to 3 do begin
    MySubItems[i] := TMenuItem.Create(Self);
    MySubItems[i].Caption := 'New item ' + IntToStr(i);
    MySubItems[i].OnClick := MyPopUpHandler;
    MyMainMenu.Items[0].Add(MySubItems[i]);
  end;
  Button6.Enabled := true;
  Button8.Enabled := true;
  Button5.Enabled := False;
end;


procedure TForm1.Button6Click(Sender: TObject);
begin
  MySubItems[3].Break := mbBarBreak;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  MySubItems[2].Caption :='-';
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to 3 do begin
    MyPopUpItems[i].OnClick := MyPopupHandler;
  end;
end;

end.
