#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include <windows.h>
#include "ibase.h"

#define RESPBUF	256

void main (argc, argv)
int	argc;
char	*argv[];
{
char    *user = "duquette",
        *pass = "duquette",
        *role = "admins",
        *newusr = "newuser",
        *newpass = "newpass";

long	status [20];
long    *svc_handle = NULL;
char	svc_name[RESPBUF], spb_buff[RESPBUF], thd_buff[RESPBUF];
char	respbuf[RESPBUF], *p = respbuf, *spb = spb_buff, *thd = thd_buff,*x;
short	spblen, thdlen;
int	i = 0, cnt=0;
boolean finished = FALSE;

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

sprintf (svc_name, "willaby:service_mgr");

spblen = spb - spb_buff;

if (isc_service_attach (status, 0, svc_name, &svc_handle, spblen, spb_buff))
    {
    isc_print_status (status);
    exit (1);
    }

*thd++ = isc_action_svc_add_user;
*thd++ = isc_spb_sql_role_name;
ADD_SPB_LENGTH (thd, strlen(role));
for (x = role; *x;)
  *thd++ = *x++;

*thd++ = isc_spb_sec_username;
ADD_SPB_LENGTH (thd, strlen(newusr));
for (x = newusr; *x;)
  *thd++ = *x++;

*thd++ = isc_spb_sec_password;
ADD_SPB_LENGTH (thd, strlen(newpass));
for (x = newpass; *x;)
  *thd++ = *x++;

*thd++ = isc_spb_sec_firstname;
ADD_SPB_LENGTH (thd, strlen("firstname"));
for (x = "firstname"; *x;)
  *thd++ = *x++;

*thd++ = isc_spb_sec_lastname;
ADD_SPB_LENGTH (thd, strlen("lastname"));
for (x = "lastname"; *x;)
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
do
    {
    char sendbuf[] = {isc_info_svc_line};
    ISC_STATUS  loc_status[20], *stat = loc_status;
    if (isc_service_query (status, &svc_handle, NULL, 0, NULL, sizeof (sendbuf), sendbuf, RESPBUF, respbuf))
        {
        isc_print_status (status);
        isc_service_detach (status, &svc_handle);
        exit(1);
        }
    
    x = p = respbuf;
    
    if (*p++ == isc_info_svc_line)
        {
        ISC_USHORT len = 0, chTmp = 0;
        
        len = (ISC_USHORT)isc_vax_integer(p, sizeof(ISC_USHORT));
        p += sizeof (ISC_USHORT);
        if (!len)
            if (*p ==  isc_info_data_not_ready)
                {
                printf ("no data available at this moment\n");
                continue;
                }
            else
                {
                if (*p != isc_info_end)
                    printf ("Format error ... <%d>\n", *p);
                break;
                }
            for (chTmp = 0; chTmp < len; chTmp++)
                printf("%c",p[chTmp]);
            p += len;
            if (*p != isc_info_truncated && *p != isc_info_end)
                {
                printf ("Format error ... encountered <%d>\n", *p);
                break;
                }
            else
                {
                //                printf ("\nisc_info_truncated  || isc_info_end\n");
                }
        }
    else
        printf ("not a isc_info_svc_line, but %d\n", *x);
    }
    while (*x == isc_info_svc_line);
isc_service_detach (status, &svc_handle);
}