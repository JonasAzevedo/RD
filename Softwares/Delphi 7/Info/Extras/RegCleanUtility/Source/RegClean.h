#define PRODUCT_NAME 101

#define SUCCESS 0
#define NOT_FOUND 1
#define FAILURE 10

#define PRODUCT_GUID "2864C41BEF2D464095A2526276524519" //"78D6887B4ADA0A64A8D820BA619B9FA5"
#define UPGRADE_GUID "EBC841C02C8449ED875E2E1CB1E207FF" //"D5F7A7830396A8C49ABD351028369901"

#include <Registry.hpp>

class TRegClean
{
    private:
        TRegistry *Reg;

    public:
        __fastcall TRegClean(void);
        __fastcall ~TRegClean(void);
        int RemoveKey(String);
        HANDLE hAdminToken;
};
