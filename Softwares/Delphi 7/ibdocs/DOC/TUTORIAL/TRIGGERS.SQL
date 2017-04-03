/*  Triggers.sql
    THIS FILE IS FOR USE WITH THE TUTORIAL. IT IS NOT MEANT
    TO BE USED WITHOUT REFERRING TO THE ACCOMPANYING TEXT.

*   You must change the parameters below to match your
*   server name, database name, username, and password.
*
*   This file defines domains for the TUTORIAL database.
*/

CONNECT 'c:\interbase5\tutorial\tutorial.gdb'
USER 'TUTOR' PASSWORD 'tutor4ib';


/*
*  Create triggers for employee database
*  You create the emp_no_gen generator and the set_emp_no
*  trigger as an exercise in the tutorial.
*
*  Create the emp_no_gen generator:
*
*  CREATE GENERATOR emp_no_gen;
*  SET GENERATOR emp_no_gen to 145;
*
* Create the set_emp_no  trigger to add unique customer number:
*
* SET TERM !! ;
* CREATE TRIGGER set_emp_no FOR employee
* BEFORE INSERT AS
* BEGIN
*     new.emp_no = gen_id(emp_no_gen, 1);
* END !!
* SET TERM ; !!
*/

/* Create Generator for SET_CUST_NO trigger */

CREATE GENERATOR cust_no_gen;
SET GENERATOR cust_no_gen to 1015;

/* Create trigger to add unique customer number */

SET TERM !! ;
CREATE TRIGGER set_cust_no FOR customer
BEFORE INSERT AS
BEGIN
    new.cust_no = gen_id(cust_no_gen, 1);
END !!

/* Create trigger to maintain SALARY_HISTORY table */

CREATE TRIGGER save_salary_change FOR employee
AFTER UPDATE AS
BEGIN
    IF (old.salary <> new.salary) THEN
        INSERT INTO salary_history
            (emp_no, change_date, updater_id, old_salary, percent_change)
        VALUES (
            old.emp_no,
            'now',
            user,
            old.salary,
            (new.salary - old.salary) * 100 / old.salary);
END !!


CREATE TRIGGER post_new_order FOR sales
AFTER INSERT AS
BEGIN
    POST_EVENT 'new_order';
END !!
SET TERM ; !!


