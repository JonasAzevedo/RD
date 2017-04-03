#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include <windows.h>
#include "ibase.h"

#define RESPBUF	1024

void main (int argc, char *argv)
    {
    char    *user = "SYSDBA",
        *pass = "masterkey",
        *newusr = "newuser",
        *newpass = "newpass";
    
    long	status [20];
    long    *svc_handle = NULL;
    char	svc_name[25], spb_buff[RESPBUF], thd_buff[RESPBUF];
    char	respbuf[RESPBUF], *p = respbuf, *spb = spb_buff, *thd = thd_buff,*x;
    short	spblen, thdlen;
    int	i = 0, cnt=0;
    boolean finished = FALSE;
    char sendbuf[] = {isc_info_svc_get_users};
    ISC_STATUS  loc_status[20], *stat = loc_status;
    
    *spb++ = isc_spb_version;
    *spb++ = isc_spb_current_version;
    
    *spb++ = isc_spb_user_name;
    *spb++ = strlen (user);
    for (x = user; *x;)
        *spb++ = *x++;
    
    *spb++ = isc_spb_password;
    *spb++ = strlen (pass);
    for (x = pass; *x;)
        *spb++ = *x++;
    
    sprintf (svc_name, "service_mgr");
    
    spblen = spb - spb_buff;
    
    if (isc_service_attach (status, 0, svc_name, &svc_handle, spblen, spb_buff))
        {
        isc_print_status (status);
        exit (1);
        }
    
    *thd++ = isc_action_svc_display_user;
    *thd++ = isc_spb_sec_username;
    ADD_SPB_LENGTH (thd, strlen(newusr));
    for (x = newusr; *x;)
        *thd++ = *x++;
    
    thdlen = thd - thd_buff;
    
    printf ("Attach succeed\n");
    
    if (isc_service_start(status, &svc_handle, NULL, thdlen, thd_buff))
        {
        long *vector = status;
        printf ("Unable to start service:\n");
        while (isc_interprete (respbuf, &vector))
            printf ("ERROR: %s\n", respbuf);
        printf ("End of errors\n");
        isc_service_detach (status, &svc_handle);
        exit(1);
        }
    printf ("Start succeed\n");
    
    
    if (isc_service_query (status, &svc_handle, NULL, 0, NULL, sizeof (sendbuf), sendbuf, RESPBUF, respbuf))
        {
        isc_print_status (status);
        isc_service_detach (status, &svc_handle);
        exit(1);
        }
    
    if (*p++ == isc_info_svc_get_users)
        {
        ISC_USHORT len, loop;
        ISC_ULONG  id;
        
        char buffer[50], *buf = buffer;
        
        loop = (ISC_USHORT) isc_vax_integer (p, sizeof (ISC_USHORT));
        p += sizeof (ISC_USHORT);
        
        while (*p != isc_info_end)
            {
            switch (*p++)
                {
                case isc_spb_sec_username:
                    len = (ISC_USHORT) isc_vax_integer(p, sizeof(ISC_USHORT));
                    p += sizeof (ISC_USHORT);
                    strncpy (buf, p, len);
                    p += len;
                    buffer[len] = 0;
                    printf ("Username: %s\n", buffer);
                    loop -= (len + sizeof(ISC_USHORT)+1);
                    break;
                    
                case isc_spb_sec_firstname:
                    len = (ISC_USHORT) isc_vax_integer(p, sizeof(ISC_USHORT));
                    p += sizeof (ISC_USHORT);
                    strncpy (buf, p, len);
                    p += len;
                    buffer[len] = 0;
                    printf ("Firstname: %s\n", buffer);
                    loop -= (len + sizeof(ISC_USHORT)+1);
                    break;
                    
                case isc_spb_sec_middlename:
                    len = (ISC_USHORT) isc_vax_integer(p, sizeof(ISC_USHORT));
                    p += sizeof (ISC_USHORT);
                    strncpy (buf, p, len);
                    p += len;
                    buffer[len] = 0;
                    printf ("Middlename: %s\n", buffer);
                    loop -= (len + sizeof(ISC_USHORT)+1);
                    break;
                    
                case isc_spb_sec_lastname:
                    len = (ISC_USHORT) isc_vax_integer(p, sizeof(ISC_USHORT));
                    p += sizeof (ISC_USHORT);
                    strncpy (buf, p, len);
                    p += len;
                    buffer[len] = 0;
                    printf ("Lastname: %s\n", buffer);
                    loop -= (len + sizeof(ISC_USHORT)+1);
                    break;
                    
                case isc_spb_sec_groupid:
                    id = isc_vax_integer (p, sizeof (ISC_ULONG));
                    p += sizeof (ISC_ULONG);
                    printf ("Group ID: %d\n", id);
                    loop -= (len + sizeof(ISC_ULONG)+1);
                    break;
                    
                case isc_spb_sec_userid:
                    id = isc_vax_integer (p, sizeof (ISC_ULONG));
                    p += sizeof (ISC_ULONG);
                    printf ("User ID: %d\n", id);
                    loop -= (len + sizeof(ISC_ULONG)+1);
                    break;
                    
                default: 
                    *x = *p;
                    break;
                }//switch
            } //endwhile
        }
    isc_service_detach (status, &svc_handle);
    }