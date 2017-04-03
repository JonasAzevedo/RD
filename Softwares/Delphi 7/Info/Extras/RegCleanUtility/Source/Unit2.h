//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H

#define MSG_REMOVED 110
#define MSG_FAILED 111
#define MSG_NOTFOUND 112
#define MSG_SUCCESS 113
#define MSG_PARTSUCCESS 114
#define MSG_COMPLETEFAILED 115
#define MSG_REMOVEDBX 116
#define TITLE_INFO 117
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <Registry.hpp>
//---------------------------------------------------------------------------



class TForm2 : public TForm
{
__published:	// IDE-managed Components
    TButton *Button1;
    TImage *Image1;
    TBevel *Bevel1;
    TLabel *Label2;
    TLabel *Label3;
    TMemo *Memo1;
    void __fastcall Button2Click(TObject *Sender);
    void __fastcall CleanupReg(TObject *Sender);
    void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
    TRegistry *Reg;
    //int CleanMSIReg();
    int CleanBCBReg(String);
    int CleanShortcuts();
    int RemoveKey(String);
public:		// User declarations
    __fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif


