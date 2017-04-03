#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include "ibase.h"
#include "common.h"
#include "license.h"
#include "svc_undoc.h"

#define MULTI_CLIENT_SUPPORT	 0x2L	/* SuperServer model (vs. multi-inet) */
#define SVC_RESPBUF	512
#define SERVICES isc_info_svc_server_version,\
    isc_info_svc_implementation,\
    isc_info_svc_get_licensed_users,\
    isc_info_svc_user_dbpath,\
    isc_info_svc_get_env,\
    isc_info_svc_get_env_lock,\
    isc_info_svc_get_env_msg,\
    isc_info_svc_get_license,\
    isc_info_svc_svr_db_info,\
    isc_info_svc_get_license_mask,\
    isc_info_svc_version,\
    isc_info_svc_capabilities,\
    isc_info_svc_get_config

void main ()
{
char    *user = "SYSDBA", *pass = "masterkey";
long	status [20], *svc_handle = NULL;
char	respbuf[SVC_RESPBUF], svc_name[SVC_RESPBUF], spb_buff[SVC_RESPBUF], sendbuf[] = { SERVICES };
char	*buffer, *p = respbuf, *spb = spb_buff, *x;
short	spblen;
ISC_ULONG path_length;

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

sprintf (svc_name, "corkie:service_mgr");

spblen = spb - spb_buff;

if (isc_service_attach (status, 0, svc_name, &svc_handle, spblen, spb_buff))
  {
  isc_print_status (status);
  return;
  }

if (isc_service_query (status, &svc_handle, NULL, 0, NULL, sizeof (sendbuf), sendbuf, SVC_RESPBUF, respbuf))
  {
  isc_print_status (status);
  isc_service_detach (status, &svc_handle);
  return;
  }

do {
    switch (*p++)
        {

        case isc_info_truncated:
            printf ("Buffer Truncated\n");
            break;

        case isc_info_svc_get_licensed_users:
            {
            ISC_ULONG nUsers;
            p+= sizeof (ISC_USHORT);
            nUsers = (ISC_ULONG)isc_vax_integer(p, sizeof (ISC_ULONG));
            printf ("Number of licensed users: %d\n", nUsers);
            p += sizeof(ISC_ULONG);
            break;
            }

        case isc_info_svc_server_version:
            {
            path_length = (ISC_USHORT) isc_vax_integer (p, sizeof(ISC_USHORT));
            p += sizeof (ISC_USHORT);
            buffer = (char*) malloc (path_length);
            strncpy (buffer, p, path_length);
            buffer [path_length] = '\0';
            printf ("Server version: %s\n", buffer);
            p += path_length;
            break;
            }
            
        case isc_info_svc_implementation:
            {
            path_length = (ISC_USHORT) isc_vax_integer (p, sizeof(ISC_USHORT));
            p += sizeof (ISC_USHORT);
            buffer = (char*) malloc (path_length);
            strncpy (buffer, p, path_length);
            buffer [path_length] = '\0';
            printf ("Server implementation: %s\n", buffer);
            p += path_length;
            break;
            }

        case isc_info_svc_svr_db_info:
            {
            printf ("Database information:\n");
            do {
                switch (*p++)
                    {
                    case isc_spb_dbname:
                        {
                        /* Database names in use */
                        path_length = (ISC_USHORT) isc_vax_integer (p, sizeof(ISC_USHORT));
                        p += sizeof (ISC_USHORT);
                        buffer = (char*) malloc (path_length);
                        strncpy (buffer, p, path_length);
                        buffer [path_length] = '\0';
                        printf ("Database in use: %s\n", buffer);
                        p += path_length;
                        break;
                        }
                    case isc_spb_num_att:
                        {
                        /* Num Attachments */
                        ISC_ULONG nAttachments;
                        p+= sizeof (ISC_USHORT);
                        nAttachments = (ISC_ULONG)isc_vax_integer(p, sizeof (ISC_ULONG));
                        printf ("\tNumber of attachments: %d\n", nAttachments);
                        p += sizeof(ISC_ULONG);
                        break;
                        }
                    case isc_spb_num_db:
                        {
                        /* Num databases */
                        ISC_ULONG nDatabases;
                        p+= sizeof (ISC_USHORT);
                        nDatabases = (ISC_ULONG)isc_vax_integer(p, sizeof(ISC_ULONG));
                        printf ("\tNumber of databases: %d\n", nDatabases);
                        p += sizeof(ISC_ULONG);
                        break;
                        }              
                    }
                } while (*p != isc_info_flag_end);
            break;
            }

        case isc_info_svc_get_license:
            {
            printf ("License information:\n");
            do {
                switch (*p++)
                    {
                    case isc_spb_lic_key:
                        {
                        path_length = (ISC_USHORT) isc_vax_integer (p, sizeof(ISC_USHORT));
                        p += sizeof (ISC_USHORT);
                        buffer = (char*) malloc (path_length);
                        strncpy (buffer, p, path_length);
                        buffer [path_length] = '\0';
                        printf ("\tLicense Key: %s\n", buffer);
                        p += path_length;
                        break;
                        }
                    case isc_spb_lic_id:
                        {
                        path_length = (ISC_USHORT) isc_vax_integer (p, sizeof(ISC_USHORT));
                        p += sizeof (ISC_USHORT);
                        buffer = (char*) malloc (path_length);
                        strncpy (buffer, p, path_length);
                        buffer [path_length] = '\0';
                        printf ("\tLicense ID: %s\n", buffer);
                        p += path_length;
                        break;
                        }              
                    }
                } while (*p != isc_info_flag_end);
            break;
            }

        case isc_info_svc_get_license_mask:
            {
            ISC_ULONG mask;
            printf ("License Information:\n");
            p += sizeof (ISC_USHORT);
            mask = (ISC_ULONG) isc_vax_integer (p, sizeof(ISC_ULONG));
            if (mask & LIC_S)
                printf ("\tRemote Server Enabled\n");
            p += sizeof (ISC_ULONG);
            break;
            }

        case isc_info_svc_get_config:
            {
            ISC_USHORT chTmp = 0, key;
            ISC_ULONG len = 0, ulConfigInfo;
            
            printf ("Configuration Settings:\n");
            len = (ISC_USHORT)isc_vax_integer(p, sizeof(ISC_USHORT));
            p += sizeof(ISC_USHORT);
            for (chTmp = 0; chTmp < len; chTmp++)
                {
                key = p[chTmp];
                ulConfigInfo = (ISC_ULONG)isc_vax_integer(p+ chTmp + 2, p[chTmp+1]);
                switch (key)
                    {
                    case ISCCFG_LOCKMEM_KEY:
                        printf ("\tLock mem: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_LOCKSEM_KEY:
                        printf ("\tLock Semaphores: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_LOCKSIG_KEY:
                        printf ("\tLock sig: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_EVNTMEM_KEY:
                        printf ("\tEvent mem: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_PRIORITY_KEY:
                        printf ("\tPriority: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_MEMMIN_KEY:
                        printf ("\tMin memory: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_MEMMAX_KEY:
                        printf ("\tMax Memory: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_LOCKORDER_KEY:
                        printf ("\tLock order: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_ANYLOCKMEM_KEY:
                        printf ("\tAny lock mem: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_ANYLOCKSEM_KEY:
                        printf ("\tAny lock semaphore: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_ANYLOCKSIG_KEY:
                        printf ("\tany lock sig: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_ANYEVNTMEM_KEY:
                        printf ("\tany event mem: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_LOCKHASH_KEY:
                        printf ("\tLock hash: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_DEADLOCK_KEY:
                        printf ("\tDeadlock: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_LOCKSPIN_KEY:
                        printf ("\tLock spin: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_CONN_TIMEOUT_KEY:
                        printf ("\tConn timeout: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_DUMMY_INTRVL_KEY:
                        printf ("\tDummy interval: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_IPCMAP_KEY:
                        printf ("\tMap size: %d\n", ulConfigInfo);
                        break;
                    case ISCCFG_DBCACHE_KEY:
                        printf ("\tCache size: %d\n", ulConfigInfo);
                        break;
                    }
                chTmp += p[chTmp+1] + 1;
                }
            }
            break;

        case isc_info_svc_version:
            {
            ISC_ULONG svcversion;
            p += sizeof (ISC_USHORT);
            svcversion = (ISC_ULONG) isc_vax_integer (p, sizeof(ISC_ULONG));
            printf ("Service Manager Version: %d\n", svcversion);
            p += sizeof (ISC_ULONG);
            break;
            }

        case isc_info_svc_capabilities:
            {
            ISC_ULONG capabilities;
            printf ("Server Capabilities:\n");
            p += sizeof (ISC_USHORT);
            capabilities = (ISC_ULONG) isc_vax_integer (p, sizeof(ISC_ULONG));
            if (capabilities & MULTI_CLIENT_SUPPORT)
                printf ("\tSupports multiple clients\n");
            p += sizeof (ISC_ULONG);
            break;
            }

        case isc_info_svc_user_dbpath:
            {
            path_length = (ISC_USHORT) isc_vax_integer (p, sizeof(ISC_USHORT));
            p += sizeof (ISC_USHORT);
            buffer = (char*) malloc (path_length);
            strncpy (buffer, p, path_length);
            buffer [path_length] = '\0';
            printf ("Path to ISC4.GDB: %s\n", buffer);
            p += path_length;
            break;
            }

        case isc_info_svc_get_env:
            {
            path_length = (ISC_USHORT) isc_vax_integer (p, sizeof(ISC_USHORT));
            p += sizeof (ISC_USHORT);
            buffer = (char*) malloc (path_length);
            strncpy (buffer, p, path_length);
            buffer [path_length] = '\0';
            printf ("Value of $INTERBASE: %s\n", buffer);
            p += path_length;
            break;
            }

        case isc_info_svc_get_env_lock:
            {
            path_length = (ISC_USHORT) isc_vax_integer (p, sizeof(ISC_USHORT));
            p += sizeof (ISC_USHORT);
            buffer = (char*) malloc (path_length);
            strncpy (buffer, p, path_length);
            buffer [path_length] = '\0';
            printf ("Path to <hostname>.lck: %s\n", buffer);
            p += path_length;
            break;
            }

        case isc_info_svc_get_env_msg:
            {
            path_length = (ISC_USHORT) isc_vax_integer (p, sizeof(ISC_USHORT));
            p += sizeof (ISC_USHORT);
            buffer = (char*) malloc (path_length);
            strncpy (buffer, p, path_length);
            buffer [path_length] = '\0';
            printf ("Path to INTERBASE.MSG: %s\n", buffer);
            p += path_length;
            break;
            }
        }
    } while (*p);
isc_service_detach (status, &svc_handle);						  
}
