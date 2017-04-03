/*  Domains.sql    
    THIS FILE IS FOR USE WITH THE TUTORIAL. IT IS NOT MEANT 
    TO BE USED WITHOUT REFERRING TO THE ACCOMPANYING TEXT.

*   You must change the parameters below to match your
*   server name, database name, username, and password.
*  
*   This file defines domains for the TUTORIAL.GDB database.
*/

CONNECT 'c:\interbase5\tutorial\tutorial.gdb'
USER 'TUTOR' PASSWORD 'tutor4ib';

/*
You entered these four domain
definitions by hand:

CREATE DOMAIN FIRSTNAME AS VARCHAR(15)
CREATE DOMAIN LASTNAME AS VARCHAR(20)

CREATE DOMAIN EMPNO AS SMALLINT

CREATE DOMAIN DEPTNO AS CHAR(3)
	 CHECK ((VALUE = '000') OR 
	(VALUE > '0' AND VALUE <= '999') 
	OR (VALUE IS NULL))
*/

CREATE DOMAIN addressline AS VARCHAR(30);

CREATE DOMAIN projno
    AS CHAR(5)
    CHECK (VALUE = UPPER (VALUE));

CREATE DOMAIN custno
    AS INTEGER
    CHECK (VALUE > 1000);

CREATE DOMAIN phonenumber   AS VARCHAR(20);

CREATE DOMAIN countryname   AS VARCHAR(15);

CREATE DOMAIN jobcode
    AS VARCHAR(5)
    CHECK (VALUE > '99999');  /* must begin with a letter */

CREATE DOMAIN jobgrade
    AS SMALLINT
    CHECK (VALUE BETWEEN 0 AND 6);

CREATE DOMAIN salary
    AS NUMERIC(10,2)
    DEFAULT 0
    CHECK (VALUE > 0);  /* salary is in any currency type */

/* budget is in US dollars */
CREATE DOMAIN budget
    AS DECIMAL(12,2)
    DEFAULT 50000
    CHECK (VALUE > 10000 AND VALUE <= 2000000);

CREATE DOMAIN prodtype
    AS VARCHAR(12)
    DEFAULT 'software' NOT NULL
    CHECK (VALUE IN ('software', 'hardware', 'other', 'N/A'));

CREATE DOMAIN ponumber
    AS CHAR(8)
    CHECK (VALUE STARTING WITH 'V');
