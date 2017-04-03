//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include "RegClean.h"
#include "Unit1.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button2Click(TObject *Sender)
{
    Application->Terminate();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ValidateConditions(TObject *Sender)
{
    LPOSVERSIONINFO osvi = new OSVERSIONINFO;
    TRegistry *Reg = new TRegistry;

    Reg->RootKey = HKEY_CURRENT_USER;
    osvi->dwOSVersionInfoSize = sizeof(OSVERSIONINFO);
    if (GetVersionEx(osvi)) {
        if (osvi->dwPlatformId == VER_PLATFORM_WIN32_NT) {
            if (Reg->OpenKey("Software\\Borland\\Delphi\\7.0", false)) {
                Form1->Button1->Enabled = true;
                Reg->CloseKey();
            } else {
                MessageBox(NULL, LoadStr(MSG_APPNOTFOUND).c_str(), NULL, MB_OK | MB_TOPMOST | MB_ICONSTOP);
            }
        } else {
            MessageBox(NULL, LoadStr(MSG_NTONLY).c_str(), NULL, MB_OK | MB_TOPMOST | MB_ICONSTOP);
        }
    } else {
        MessageBox(NULL, LoadStr(MSG_UNKNOWNOS).c_str(), NULL, MB_OK | MB_TOPMOST | MB_ICONSTOP);
    }

    delete osvi;
    delete Reg;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
    int nResponse;

    nResponse = MessageBox(NULL, LoadStr(MSG_WARNING).c_str(), LoadStr(TITLE_WARNING).c_str(), MB_YESNO | MB_ICONEXCLAMATION | MB_DEFBUTTON2 | MB_TOPMOST);
    if (nResponse == ID_NO) {
        Application->Terminate();
    } else {
            Form2->Show();
            this->Hide();
    }
}
//---------------------------------------------------------------------------

