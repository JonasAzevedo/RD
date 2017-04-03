#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include "/usr/interbase/include/ibase.h"

#define RESPBUF	256

int main (argc, argv)
int	argc;
char	*argv[];
{
char    *user = "SYSDBA",
        *pass = "masterkey";

char sendbuf[] = {isc_info_svc_svr_db_info};
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

printf ("Attach succeed\n");

if (isc_service_query (status, &svc_handle, NULL, 0, NULL, sizeof (sendbuf), sendbuf, RESPBUF, respbuf))
    {
    isc_print_status (status);
    isc_service_detach (status, &svc_handle);
    return;
    }
else
    {
    ISC_USHORT len = 0, chTmp = 0;
    ISC_ULONG  num;

    p = respbuf;
    item = *p++;   /* remove the sendbuf flag */
    if (item != isc_info_svc_svr_db_info)
	{
	printf ("Expected isc_info_svc_svr_db_info, got <%d>", item);
	return(1);
	}
    while (1)
	{
	switch (*p)
	    {
	    case isc_spb_dbname:
		len = (ISC_USHORT)isc_vax_integer(++p, sizeof(ISC_USHORT));
		p += sizeof (ISC_USHORT);
		printf ("isc_spb_dbname <");
		for (chTmp = 0; chTmp < len; chTmp++)
		    printf ("%c", p[chTmp]);
		printf (">\n");
		p += len;
		break;
	    case isc_spb_num_db:
		num = (ISC_ULONG) isc_vax_integer (++p, sizeof(ISC_ULONG));
		printf ("isc_spb_num_db <%d>\n", num);
		p += sizeof (ISC_ULONG);
		break;
	    case isc_spb_num_att:
		num = (ISC_ULONG) isc_vax_integer (++p, sizeof(ISC_ULONG));
		printf ("isc_spb_num_att <%d>\n", num);
		p += sizeof (ISC_ULONG);
		break;
	    case isc_info_end:
		printf ("isc_info_end, finished OK\n");
		isc_service_detach(status, &svc_handle);
		return (0);
		break;
	    case isc_info_truncated:
		printf ("isc_info_truncated, finished OK\n");
		isc_service_detach(status, &svc_handle);
		return (0);
		break;
	    case isc_info_flag_end:
		printf ("isc_info_flag_end, finished OK\n");
		isc_service_detach(status, &svc_handle);
		return (0);
		break;
	    default:
		printf ("***Internal error, got <%d>\n", *p);
		p++;
		break;
	    }
        }
    }

isc_service_detach(status, &svc_handle);
}
