//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include "RegClean.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;

extern TRegClean *Cleanup;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
    : TForm(Owner)
{
    Reg = new TRegistry;
}
//---------------------------------------------------------------------------



void __fastcall TForm2::Button2Click(TObject *Sender)
{
    Application->Terminate();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::CleanupReg(TObject *Sender)
{
    int nResult = 0;

    nResult += CleanBCBReg("\\Software\\Borland\\Delphi\\7.0");    // do not localize
    Reg->RootKey = HKEY_CURRENT_USER;
    if (Reg->OpenKey("Software\\Borland\\DBExpress", false)) {        // do not localize
        Reg->CloseKey();
        if (MessageBox(NULL, LoadStr(MSG_REMOVEDBX).c_str(), LoadStr(TITLE_INFO).c_str(),
            MB_YESNO | MB_ICONINFORMATION | MB_DEFBUTTON1 | MB_TASKMODAL | MB_SETFOREGROUND) == IDYES) {
            nResult += CleanBCBReg("\\Software\\Borland\\DBExpress");        // do not localize
        }
    }

    // display results, enable exit button
    if (nResult == SUCCESS) {
        this->Memo1->Lines->Add(LoadStr(MSG_SUCCESS));
    } else if (nResult < FAILURE) {
        this->Memo1->Lines->Add(LoadStr(MSG_PARTSUCCESS));
    } else {
        this->Memo1->Lines->Add(LoadStr(MSG_COMPLETEFAILED));
    }

    this->Button1->Enabled = true;
    this->Button1->SetFocus();


}
//---------------------------------------------------------------------------

int TForm2::CleanBCBReg(String szKey)
{
    int nResult = 0;
    String szMsg;

    Reg->RootKey = HKEY_CURRENT_USER;
    if (Reg->OpenKey(szKey, false)) {
        if (Reg->HasSubKeys()) {
            TStringList *lstKeys = new TStringList;
            int i;

            Reg->GetKeyNames(lstKeys);
            for (i = 0; i < lstKeys->Count; i++) {
                lstKeys->Strings[i] = szKey + "\\" + lstKeys->Strings[i];
                nResult += this->CleanBCBReg(lstKeys->Strings[i]);
            }
            delete lstKeys;
        }
        Reg->CloseKey();
        try {
            Cleanup->RemoveKey(szKey);
            szMsg = LoadStr(MSG_REMOVED);
            szMsg += szKey;
            Form2->Memo1->Lines->Add(szMsg);
            nResult += SUCCESS;
        } catch (...) {
            szMsg = LoadStr(MSG_FAILED);
            szMsg += szKey;
            Form2->Memo1->Lines->Add(szMsg);
            nResult += FAILURE;
        }
    } else {
        szMsg = LoadStr(MSG_NOTFOUND);
        szMsg += szKey;
        Form2->Memo1->Lines->Add(szMsg);
        nResult += NOT_FOUND;
    }

    return nResult;
}

void __fastcall TForm2::Button1Click(TObject *Sender)
{
    Application->Terminate();
}
//---------------------------------------------------------------------------


