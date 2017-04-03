/*
 *    Program type:  API Interface
 *
 *    Description:
 *        This program creates a xml file and displays a list of employee
 *        names and phone extensions.
 *
 *        This example allocates an output XSQLDA and IB_XMLDA data structure.
 *
 *        First we prepare and execute the SQL statement.  Then make a loop
 *        calling isc_dsql_xml_fetch that displays the data and creates a
 *        xml file with the corresponding information.
 *
 *
 *    NOTE:
 *          XSQLDA (SQL Descriptor Area) is a host-language data
 *          structure that DSQL uses to transport data to or from a database
 *          when processing an SQL statement.
 *
 *          IB_XMLDA (XML SQL Descriptor Area) is a host-language data
 *          structure for xml that DSQL uses to transport data to
 *          or from a database when processing an SQL statement and
 *          generating XML code.
 *
 * The contents of this file are subject to the Interbase Public
 * License Version 1.0 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a copy
 * of the License at:
 * http://www.borland.com/devsupport/interbase/opensource/IPL.html
 *
 * Software distributed under the License is distributed on an
 * "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express
 * or implied. See the License for the specific language governing
 * rights and limitations under the License.
 *
 * The Original Code was created by Borland Software Corporation
 * and its predecessors.  Portions created by Borland are Copyright (c)
 * 1994 - 2001 Borland Software Corporation.
 * All rights reserved.
 *
 * Contributor(s):
 *                 Shaunak Mistry InterBase R&D, Borland Software Corp.
 *                 Dan Mikhayltsa InterBase QA, Borland Software Corp.
 *                 Aaron Ruddick InterBase QA, Borland Software Corp.
 */

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <ibase.h>
#include <ibxml.h>
#include <ibxml_proto.h>
#include <conio.h>

/* Define length of variables we are going to SELECT from database */
#define    LASTLEN     20     /* Length of VARCHAR LAST_NAME in database */
#define    FIRSTLEN    15     /* Length of VARCHAR FIRST_NAME in database */
#define    EXTLEN       4     /* Length of VARCHAR(4) PHONE_EXT in database */

/* This macro is used to declare structures representing SQL VARCHAR types */
#define SQL_VARCHAR(len) struct {short vary_length; char vary_string[(len)+1];}

/* This macro is used to print error messages */
#define ERREXIT(status, rc)	{isc_print_status(status); return rc;}

int main (int argc, char ** argv)
{
    /* Declare variables to hold database datatypes */
    SQL_VARCHAR(LASTLEN)    last_name;
    SQL_VARCHAR(FIRSTLEN)   first_name;
    char                    phone_ext[EXTLEN + 2];

    /* Declare indicator variables */
    short                   flag0 = 0, flag1 = 0;
    short                   flag2 = 0;

    /* Declare Handles*/
    isc_stmt_handle         stmt = NULL; /* statement handle */
    isc_db_handle           DB = NULL;   /* database handle */
    isc_tr_handle           trans = NULL;/* transaction handle */

    long                    status[20];  /* status vector */
    XSQLDA  ISC_FAR *       sqlda;       /* SQL Descriptor Area */
    long                    fetch_stat;  /* Status of isc_dsql_xml_fetch function */

    /* Location of database */
    char                    empdb[] = "d://testbed//employee.gdb";

    char                    *sel_str =
        "SELECT last_name, first_name, phone_ext FROM phone_list \
        WHERE location = 'Monterey' ORDER BY last_name, first_name ROWS 5;";

    IB_XMLDA xmlda; /* Main InterBase XML Structure */

    /* Declare variables that define xml output */
    char version[]    = "<?xml version = \"1.0\"?>\n<!--  XML from IB QA hive  -->\n";
    char employeedb[] = "DATABASE";                /* Databse tag name */
    char tbname[]     = "TABLE";                   /* Table tag name */
    char rowname[]    = "RECORD";                  /* ROW tag name */

    char filename[]   = "d://testbed//emp.xml";    /* Output file location */

    xmlda.xmlda_status = 0;                        /* internal status */
    xmlda.xmlda_version = 1;                       /* version of XMLDA */
    xmlda.xmlda_header_tag = version;              /* Assign xml version header tag */
    xmlda.xmlda_database_tag = employeedb;         /* Assign database tag for the xml file */
    xmlda.xmlda_table_tag = tbname;                /* Assign tablename tag for the xml file */
    xmlda.xmlda_row_tag = rowname;                 /* Assign tablename tag for the xml file */
    xmlda.xmlda_flags = XMLDA_DISPLAY_NULL_FLAG;   /* Assign Flags for xml format */
    xmlda.xmlda_file_name = filename;              /* Assign location of output file */

    /*  Attach to database */
    if (isc_attach_database(status, 0, empdb, &DB, 0, NULL))
        isc_print_status(status);

    if (isc_start_transaction(status, &trans, 1, &DB, 0, NULL))
    {
        ERREXIT(status, 1)
    }

    /* Allocate an output SQLDA. */
    sqlda = (XSQLDA ISC_FAR *) malloc(XSQLDA_LENGTH(3));
    sqlda->sqln = 3;                     /* number of fields allocated */
    sqlda->sqld = 3;                     /* actual number of fields */
    sqlda->version = 1;                  /* version of this XSQLDA */

    /* Allocate a statement. */
    if (isc_dsql_allocate_statement(status, &DB, &stmt))
    {
        ERREXIT(status, 1)
    }

    /* Prepare the statement. */
    if (isc_dsql_prepare(status, &trans, &stmt, 0, sel_str, 1, sqlda))
    {
        ERREXIT(status, 1)
    }

    /*  Define a SQLVAR for every field we allocated in sqlda->sqln
     *
     *  Although all three selected columns are of type varchar, the
     *  field's type is changed to type TEXT (SQL_TEXT + 1) for formatting.
     */

    /*  LAST_NAME VARCHAR(20) */
    sqlda->sqlvar[0].sqldata = (char *)&last_name;
    sqlda->sqlvar[0].sqltype = SQL_TEXT + 1;
    sqlda->sqlvar[0].sqlind  = &flag0;

    /*  FIRST_NAME VARCHAR(15) */
    sqlda->sqlvar[1].sqldata = (char *)&first_name;
    sqlda->sqlvar[1].sqltype = SQL_TEXT + 1 ;
    sqlda->sqlvar[1].sqlind  = &flag1;

    /*  PHONE_EXT VARCHAR(4) */
    sqlda->sqlvar[2].sqldata = (char ISC_FAR *) phone_ext;
    sqlda->sqlvar[2].sqltype = SQL_TEXT + 1;
    sqlda->sqlvar[2].sqlind  = &flag2;

    printf("\n%-20s %-15s %-10s\n\n", "LAST NAME", "FIRST NAME", "EXTENSION");

    /* Execute the statement. */
    if (isc_dsql_execute(status, &trans, &stmt, 1, NULL))
    {
        ERREXIT(status, 1)
    }

    /*
     *    Fetch and print the records.
     *    Status is 100 after the last row is fetched.
     */
    while ((fetch_stat = isc_dsql_xml_fetch(status, &stmt, 1, sqlda, &xmlda)) == 0)
    {
        printf("%-20.*s ", last_name.vary_length, last_name.vary_string);
        printf("%-15.*s ", first_name.vary_length, first_name.vary_string);
        phone_ext[sqlda->sqlvar[2].sqllen] = '\0';
        printf("%s\n", phone_ext);
    }

    /* If error with isc_dsql_xml_fetch() call */
    if (fetch_stat == -1)
    {
        printf("Could not open file: %s\n", xmlda.xmlda_file_name);
    }else if (fetch_stat != 100L)
    {
        ERREXIT(status, 1)
    }

    /* Free statement handle. */
    if (isc_dsql_free_statement(status, &stmt, DSQL_close))
    {
        ERREXIT(status, 1)
    }

    /* Commit transaction */
    if (isc_commit_transaction(status, &trans))
    {
        ERREXIT(status, 1)
    }

    /* Detach from databse */
    if (isc_detach_database(status, &DB))
    {
        ERREXIT(status, 1)
    }

    /* Last step de-allocate memory for SQLDA */
    free( sqlda);
    getch();
    return 0;
}
