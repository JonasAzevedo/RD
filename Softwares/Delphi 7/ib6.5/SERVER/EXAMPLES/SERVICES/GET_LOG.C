#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include "/usr/interbase/include/ibase.h"

#define RESPBUF	256

void main (argc, argv)
int	argc;
char	*argv[];
{
char    *user = "SYSDBA",
        *pass = "masterkey";

char sendbuf[] = {isc_info_svc_line};
long	status [20];
long    *svc_handle = NULL;
char	svc_name[RESPBUF], spb_buff[RESPBUF], thd_buff[RESPBUF];
char	respbuf[RESPBUF], *p = respbuf, *spb = spb_buff, *thd = thd_buff,*x, item = 9;
short	spblen, thdlen;
int	i = 0, cnt=0;
int finished = 0;

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

sprintf (svc_name, "typhoon:service_mgr");

spblen = spb - spb_buff;

if (isc_service_attach (status, 0, svc_name, &svc_handle, spblen, spb_buff))
    {
    isc_print_status (status);
    exit (1);
    }

*thd++ = isc_action_svc_get_ib_log;
thdlen = thd - thd_buff;

printf ("Attach succeed\n");

if (isc_service_start(status, &svc_handle, NULL, thdlen, thd_buff))
    {
    isc_print_status (status);
    isc_service_detach (status, &svc_handle);
    exit(1);
    }
printf ("Start succeed\n");

while (1)
    {
    item = 9;
    if (isc_service_query (status, &svc_handle, NULL, 0, NULL, sizeof (sendbuf), sendbuf, RESPBUF, respbuf))
        {
        isc_print_status (status);
        isc_service_detach (status, &svc_handle);
        return;
        }
    else
        {
        ISC_USHORT len = 0, chTmp = 0;
        p = respbuf;
        item = *p++;   /* remove the sendbuf flag */
        len = (ISC_USHORT) isc_vax_integer (p, 2);  /* this is the length */
        p += sizeof (ISC_USHORT);
        item = *p;
        if (item == isc_info_end) break;
        if (item == isc_info_truncated) break;
        if (item == isc_info_svc_timeout) break;
        for (chTmp = 0; chTmp < len; chTmp++)
            printf("%c",p[chTmp]);
        p += len;
        }
    }

isc_service_detach(status, &svc_handle);
}
