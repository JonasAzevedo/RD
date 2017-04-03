The following example programs demonstrate a number of useful features of
the InterBase programming interface.

You should set the following environment variables before running
the examples:

ISC_USER       A valid username on the server.
ISC_PASSWORD   The password for the above user.
ISC_DATABASE   The path to the employee.gdb example database, including
	       server name.  For example, to connect to the NT server
	       named "NTserver" via NetBEUI:
		ISC_DATABASE=\\NTserver\C:\InterBase\examples
	       
	       This assumes that InterBase was installed to a
	       directory C:\InterBase on the server host.
	       (this is not the default install directory)

In addition, you should create a guest username "guest"
with password "guest" before running the api15 example.
Use gsec or IBConsole to do this.

--

Database examples in the database directory:

Program        Description
------------   ---------------------------------------------------------------
employee.gdb   Database used in many examples in the manuals.
employee.gbk   Transportable backup file of employee.gdb.
intlemp.gdb    Database like employee.gdb, but with international characters.
intlemp.gbk    Transportable backup file of intlemp.gdb.

--

Embedded Static SQL examples in the gpre directory:

Program     Description
---------   ------------------------------------------------------------------
stat1.e     Illustrates a simple update to an existing table.
stat2.e     Illustrates singleton select.
stat3.e     Illustrates a simple cursor -- declare/open/close/fetch.
stat4.e     Show 'declare table' and 'create table'.
stat5.e     Demonstrate 'update where current of'.
stat6.e     Select an array.
stat7.e     Illustrate Blob cursor for select.
stat8.e     Illustrate Blob cursor for insert.
stat9.e     Execute and select from a stored procedure.
stat10.e    Demonstrate 'set database', 'connect' and 'set transaction'.
stat11.e    Demonstrate 'set transaction' with various isolation options.
stat12.e    Event wait and signaling.
stat12t.e

Many of these programs illustrate use of the
WHENEVER SQLERROR and BASED_ON features.

--

Embedded Dynamic SQL examples in the gpre directory:

Program     Description
---------   ------------------------------------------------------------------
dyn1.e      Execute 'create database' statement as a static string.
dyn2.e      'Execute immediate', and 'prepare' and 'execute'.
dyn3.e      Dynamic cursor for select with output SQLDA allocated.
dyn4.e      Execute an update query with parameter markers and input SQLDA.
dyn5.e      Demonstrate dynamic reallocation of SQLDA and describe statement.
dynfull.e   A full_dsql program (process unknown statements).

VARY struct is used by dyn3.e, dynfull.e.

--

InterBase API progrmaming examples in the api directory:
 
Program     Description
---------   ------------------------------------------------------------------
api1.c      Execute 'create dabatabase' statement as a static string.
            Demonstrates zero database handle.
api2.c      'Execute immediate', and 'prepare' and 'execute'.
api3.c      Dynamic cursor for select with output SQLDA allocated.
api4.c      Execute an update query with parameter markers and input SQLDA.
api5.c      Demonstrate dynamic reallocation of SQLDA and describe statement.
apifull.c   A full_dsql program (process unknown statements).
	    Demonstrates stmt_info calls and numeric scale.
api6.c      Assemble an update current of statement, based on a dynamic
            cursor name.  Free a statement handle and re-use it as the cursor.
api7.c      Demonstrate blob_open, get_segment.
api8.c      Demonstrate create_blob, put_segment.
api10.c     Update an array using get_slice/put_slice.
api11.c     Execute and select from a stored procedure.
api12.c     A program with several active transactions.
api13.c     A multi-database transaction with 2-phase commit.
api14.e     Combine the three programming styles in one program.
api15.c	    Construct a database parameter buffer.  db_info calls.
api16.c	    Demonstrate asynchronous event trapping
api16t.c    Identical to stat12t, this triggers the event for api16.

VARY struct is used by api3.c, apifull.c, and api14.e.
SQLCODE extraction from status is covered by several programs.
Zero transaction handle is covered in several programs, ex. api14.e.

--

UDF examples in the udf directory:

Program     Description
---------   ------------------------------------------------------------------
udflib.c    C code for sample UDFs.
udf.sql     SQL to declare UDFs in udflib.c for a database.
udflib.def  Library define for Windows.
ib_udf.sql  SQL to declare UDFs in the standard ib_udf.dll library.

--

Blob Filter examples in the filter directory:

Program     Description
---------   ------------------------------------------------------------------
api9.c      Demonstrate blob_open2, using a Blob filter.
api9f.c     Filter for api9.c.

--

Services API examples in the services directory:

Program               Description
-------------------   --------------------------------------------------------
get_log.c             Example of retrieving interbase.log from server.
gstat.c               Example mimicking simple gstat functionality.
isc_info_svc_all.c    Example of retrieving all sorts of server information.
query_database_info.c Example of retrieving some database information.
start_backup.c        Example of invoking a backup task.
start_backup_1.c      Another example of invoking a backup task.
start_backup_split.c  Example of backing up to multiple files.
start_license_add.c   Example of adding a license ID/key to the server.
start_restore.c       Example of invoking a database restore task.
start_restore_join.c  Example of restoring from multiple files.
start_user_add.c      Example of adding a new user to the server.
start_user_delete.c   Example of deleting a user from the server.
start_user_display.c  Example of displaying all currently configured users.
start_user_modify.c   Example of modifying attributes of a user.

NOTE: InterBase 6.0 Field Test 1 does not have a Makefile for the
services API examples.
