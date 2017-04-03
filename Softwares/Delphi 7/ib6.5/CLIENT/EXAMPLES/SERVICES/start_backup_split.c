#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include "ibase.h"

#define RESPBUF	1024

void main (argc, argv)
int	argc;
char	*argv[];
{
char    *user = "SYSDBA",
        *pass = "masterkey";
long	status [20];
long    *svc_handle = NULL;
char	*buffer;
char    send_buff[32], *pSendBuff;
char	svc_name[RESPBUF], spb_buff[RESPBUF], thd_buff[RESPBUF];
char    sendbuf[] = {isc_info_svc_line};
char	respbuf[RESPBUF], *p = respbuf, *spb = spb_buff, *thd = thd_buff,*x;
short	spblen, thdlen;
int	i = 0;


if (argc != 5)
    {
    printf ("Usage: %s dbfile gbk1file size gbk2file\n", argv[0]);
    exit (1);
    }

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

*thd++ = isc_action_svc_backup;
*thd++ = isc_spb_dbname;
*thd++ = (strlen (argv[1]) + 1);
*thd++ = (strlen (argv[1]) + 1) >> 8;
for (x = argv[1]; *x;)
  *thd++ = *x++;
*thd++ = isc_spb_bkp_file;
*thd++ = strlen (argv[2]);
*thd++ = strlen (argv[2]) >> 8;
for (x = argv[2]; *x;)
  *thd++ = *x++;

*thd++ = isc_spb_bkp_length;
*thd++ = atoi (argv[3]);
*thd++ = atoi (argv[3]) >> 8;
*thd++ = atoi (argv[3]) >> 16;
*thd++ = atoi (argv[3]) >> 24;
*thd++ = isc_spb_bkp_file;
*thd++ = strlen (argv[4]);
*thd++ = strlen (argv[4]) >> 8;
for (x = argv[4]; *x;)
    *thd++ = *x++;

*thd++ = isc_spb_verbose;

thdlen = thd - thd_buff;

printf ("Attach succeed\n");

if (isc_service_start(status, &svc_handle, NULL, thdlen, thd_buff))
    {
    isc_print_status (status);
    isc_service_detach (status, &svc_handle);
    exit(1);
    }
printf ("Start succeed\n");

do
    {
    if (isc_service_query (status, &svc_handle, NULL, 0, NULL,
	sizeof (sendbuf), sendbuf, RESPBUF, respbuf))
	{
	isc_print_status (status);
	isc_service_detach (status, &svc_handle);
	exit(1);
	}

    x = p = respbuf;

    if (*p++ == isc_info_svc_line)
	{
	ISC_USHORT len = 0, chTmp = 0, key;

	len = (ISC_USHORT)isc_vax_integer(p, sizeof(ISC_USHORT));
	p += sizeof (ISC_USHORT);
	if (!len)
	    if (*p == isc_info_data_not_ready)
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
	    /* printf ("\nisc_info_truncated  || isc_info_end\n"); */
	    }
	}
    else
	printf ("not a isc_info_svc_line, but %d\n", *x);
    }
while (*x == isc_info_svc_line);


isc_service_detach(status, &svc_handle);
}
