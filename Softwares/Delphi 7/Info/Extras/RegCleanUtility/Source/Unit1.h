//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <Registry.hpp>
//---------------------------------------------------------------------------

#define PRODUCT_NAME 101
#define MSG_APPNOTFOUND 102
#define MSG_NTONLY 103
#define MSG_UNKNOWNOS 104
#define MSG_WARNING 105
#define TITLE_WARNING 106


class TForm1 : public TForm
{
__published:	// IDE-managed Components
    TButton *Button1;
    TButton *Button2;
    TLabel *Label1;
    TImage *Image1;
    TBevel *Bevel1;
    TLabel *Label2;
    TLabel *Label3;
    void __fastcall Button2Click(TObject *Sender);
    void __fastcall ValidateConditions(TObject *Sender);
    void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
    bool bIsAdmin;
public:		// User declarations
    __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
