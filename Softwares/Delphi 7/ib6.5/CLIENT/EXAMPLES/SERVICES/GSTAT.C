#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include "/home/stsikin/dev_test/super/jrd/ibase.h"

#define RESPBUF	1024
#define RETURN_ERROR	{isc_service_detach(status, &svc_handle); exit (1);}

int main (argc, argv)
int	argc;
char	*argv[];
{
char    *user = "SYSDBA",
        *pass = "masterkey";
long	status [20];
long    *svc_handle = NULL;
char	svc_name[RESPBUF], spb_buff[RESPBUF], thd_buff[RESPBUF];
char    sendbuf[] = {isc_info_svc_line};
char	respbuf[RESPBUF], *p = respbuf, *spb = spb_buff, *thd = thd_buff,*x;
short	spblen, thdlen;
int	i = 0, options = 0;


if (argc != 2)
    {
    printf ("Usage: %s dbfile\n", argv[0]);
    return (1);
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
    return (1);
    }

*thd++ = isc_action_svc_db_stats;
*thd++ = isc_spb_dbname;
*thd++ = strlen (argv[1]);
*thd++ = strlen (argv[1]) >> 8;
for (x = argv[1]; *x;)
  *thd++ = *x++;
*thd++ = isc_spb_options;


/*******************************************************************
options |= (options | isc_spb_sts_data_pages | isc_spb_sts_db_log |
		    isc_spb_sts_hdr_pages | isc_spb_sts_idx_pages |
			isc_spb_sts_sys_relations );
*********************************************************************/
options = isc_spb_sts_idx_pages | isc_spb_sts_sys_relations;
*thd++ = options;
*thd++ = options >> 8;
*thd++ = options >> 16;
*thd++ = options >> 24;

thdlen = thd - thd_buff;

printf ("Attach succeed\n");

if (isc_service_start(status, &svc_handle, NULL, thdlen, thd_buff))
    {
    isc_print_status (status);
    isc_service_detach (status, &svc_handle);
    return(1);
    }
printf ("Start succeed\n");

do
    {
	if (isc_service_query (status, &svc_handle, NULL, 0, NULL,
		sizeof (sendbuf), sendbuf, RESPBUF, respbuf))
		{
		isc_print_status (status);
		isc_service_detach (status, &svc_handle);
		return(1);
		}

    x = p = respbuf;

    if (*p++ == isc_info_svc_line) 
		{
		ISC_USHORT len = 0, chTmp = 0;
		ISC_ULONG  tra_id = 0;

		len = (ISC_USHORT)isc_vax_integer(p, sizeof(ISC_USHORT));
		if (len == 0)
			break;
		p += sizeof (ISC_USHORT);
		for (chTmp = 0; chTmp < len; chTmp++)
			printf ("%c", p[chTmp]);
		p += len;
		}
		
	if (*p == isc_info_truncated)
	    continue;
	/****************************
	if (*p == isc_info_end)
	    break;
		**************************/

    }
while (*x == isc_info_svc_line);

isc_service_detach(status, &svc_handle);
return (0);
}
