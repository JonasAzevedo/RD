//---------------------------------------------------------------------------

#include <vcl.h>
#include <Registry.hpp>
#include "RegClean.h"

#pragma hdrstop
USEFORM("Unit1.cpp", Form1);
USEFORM("Unit2.cpp", Form2);
USERC("Unit1.rc");
USERC("unit2.rc");
USERC("RegClean.rc");
USERES("RegClean.res");
//---------------------------------------------------------------------------
TRegClean *Cleanup;

//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
    Cleanup = new TRegClean;

    try
    {
         Application->Initialize();
         Application->CreateForm(__classid(TForm1), &Form1);
                 Application->CreateForm(__classid(TForm2), &Form2);
                 Application->Run();
//         }
    }
    catch (Exception &exception)
    {
         Application->ShowException(&exception);
    }

    delete Cleanup;
    return 0;
}
//---------------------------------------------------------------------------

__fastcall TRegClean::TRegClean()
{
    Reg = new TRegistry;
    Reg->RootKey = HKEY_CURRENT_USER;
}

__fastcall TRegClean::~TRegClean()
{
    delete Reg;
}

int TRegClean::RemoveKey(String szKey)
{
    int nResult = SUCCESS;

    Reg->Access = KEY_ALL_ACCESS;

    if (Reg->OpenKey(szKey, false)) {
        try {
            if (Reg->DeleteKey(szKey)) {
                nResult = SUCCESS;
            } else {
                nResult = FAILURE;
            }
        } catch (...) {
            nResult = FAILURE;
        }
        Reg->CloseKey();
    }
    return nResult;
}

//---------------------------------------------------------------------------


