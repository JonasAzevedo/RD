/*  Updates.sql    
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
 *  Set department managers.
 *  A department manager can be a director, a vice president, a CFO,
 *  a sales rep, etc.  Several departments have no managers (TBH).
 */

UPDATE department SET mngr_no = 105 WHERE dept_no = '000';
UPDATE department SET mngr_no = 85 WHERE dept_no = '100';
UPDATE department SET mngr_no = 2 WHERE dept_no = '600';
UPDATE department SET mngr_no = 46 WHERE dept_no = '900';
UPDATE department SET mngr_no = 9 WHERE dept_no = '622';
UPDATE department SET mngr_no = 15 WHERE dept_no = '623';
UPDATE department SET mngr_no = 107 WHERE dept_no = '670';
UPDATE department SET mngr_no = 20 WHERE dept_no = '671';
UPDATE department SET mngr_no = 94 WHERE dept_no = '672';
UPDATE department SET mngr_no = 11 WHERE dept_no = '130';
UPDATE department SET mngr_no = 72 WHERE dept_no = '140';
UPDATE department SET mngr_no = 118 WHERE dept_no = '115';
UPDATE department SET mngr_no = 36 WHERE dept_no = '120';
UPDATE department SET mngr_no = 141 WHERE dept_no = '121';
UPDATE department SET mngr_no = 134 WHERE dept_no = '123';
UPDATE department SET mngr_no = 121 WHERE dept_no = '125';
UPDATE department SET mngr_no = 34 WHERE dept_no = '110';

/*
 *  Generate some salary history records.
*/

UPDATE employee SET salary = salary + salary * 0.10 
    WHERE hire_date <= '08/01/91' AND job_grade = 5;
UPDATE salary_history
    SET change_date = '12/15/92', updater_id = 'admin2';

UPDATE salary_history
    SET change_date = '09/08/93', updater_id = 'elaine'
    WHERE NOT updater_id IN ('admin2');

UPDATE employee SET salary = salary - salary * 0.0325
    WHERE salary > 110000 AND job_country = 'USA';
UPDATE salary_history
    SET change_date = '12/20/93', updater_id = 'tj'
    WHERE NOT updater_id IN ('admin2', 'elaine');

UPDATE employee SET salary = salary + salary * 0.10
    WHERE job_code = 'SRep' AND hire_date < '12/20/93';
UPDATE salary_history
    SET change_date = '12/20/93', updater_id = 'elaine'
    WHERE NOT updater_id IN ('admin2', 'elaine', 'tj');

/*
 *  Put some customers on-hold.
 */

UPDATE customer SET on_hold = '*' WHERE cust_no = 1002;
UPDATE customer SET on_hold = '*' WHERE cust_no = 1009;

commit;
exit;
