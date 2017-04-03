#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "ibase.h"

#define RESPBUF	256

void main (argc, argv)
int	argc;
char	*argv[];
{
char    *user = "duquette",
        *pass = "duquette";

char    *key = "eval",
        *id = "eval";

long	status [20];
long    *svc_handle = NULL;
char	svc_name[RESPBUF], spb_buff[RESPBUF], thd_buff[RESPBUF];
char	respbuf[RESPBUF], *p = respbuf, *spb = spb_buff, *thd = thd_buff,*x;
short	spblen, thdlen;
int	i = 0, cnt=0;


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

*thd++ = isc_action_svc_add_license;
*thd++ = isc_spb_lic_key;
*thd++ = strlen (key);
*thd++ = strlen (key) >> 8;
for (x = key; *x;)
  *thd++ = *x++;

*thd++ = isc_spb_lic_id;
*thd++ = strlen (id);
*thd++ = strlen (id) >> 8;
for (x = id; *x;)
  *thd++ = *x++;

thdlen = thd - thd_buff;
printf ("Attach succeed\n");

if (isc_service_start(status, &svc_handle, NULL, thdlen, thd_buff))
    {
    long *vector = status;
    printf ("Unable to add license:\n");
    while (isc_interprete (respbuf, &vector))
        printf ("ERROR: %s\n", respbuf);
    printf ("End of errors\n");
    isc_service_detach (status, &svc_handle);
    exit(1);
    }
printf ("License Added\n");
isc_service_detach(status, &svc_handle);
}
