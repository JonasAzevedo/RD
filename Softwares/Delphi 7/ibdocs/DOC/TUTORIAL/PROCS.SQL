/*  Procs.sql
*   THIS FILE IS FOR USE WITH THE TUTORIAL. IT IS NOT MEANT
*   TO BE USED WITHOUT REFERRING TO THE ACCOMPANYING TEXT.
*
*   You must change the parameters below to match your
*   server name, database name, username, and password.
*   This file defines domains for the TUTORIAL database.
*/

CONNECT 'c:\interbase5\tutorial\tutorial.gdb'
USER 'TUTOR' PASSWORD 'tutor4ib';


/*  You create Get_emp_proj UNKNOWN_EMP_ID, Add_emp_proj, and Dept_budget
*   by hand in the tutorial exercises. The code is included here for
*   reference and includes the SET TERM statements and terminators
*   necessary to run a script. If you want to enter these procedures
*   and exceptions using the script, terminate this comment and remove
*   the asterisks from in from of the code lines.
*
*  SET TERM ^ ;
*
*  CREATE PROCEDURE Get_emp_proj (v_empno SMALLINT)
*  RETURNS (v_projid CHAR(5))
*  AS
*  BEGIN
*    FOR SELECT proj_id
*    FROM Employee_project
*    WHERE emp_no = :v_empno
*    INTO :v_projid
*    DO
*      SUSPEND;
*  END ^
*
*
*  CREATE EXCEPTION UNKNOWN_EMP_ID "Invalid employee number or project ID."^
*
*  CREATE PROCEDURE Add_emp_proj (v_empno SMALLINT, v_projid CHAR(5))
*  AS
*  BEGIN
*      INSERT INTO Employee_project (emp_no, proj_id)
*        VALUES (:v_empno, :v_projid);
*      WHEN SQLCODE -530 DO
*        EXCEPTION UNKNOWN_EMP_ID;
*  END ^
*
*
*  CREATE PROCEDURE Dept_budget (v_dno CHAR(3))
*  RETURNS (total_budget NUMERIC(15, 2))
*  AS
*    DECLARE VARIABLE sumb DECIMAL(12, 2);
*    DECLARE VARIABLE rdno CHAR(3);
*    DECLARE VARIABLE cnt INTEGER;
*  BEGIN
*    total_budget = 0;
*    SELECT budget FROM Department WHERE dept_no = :v_dno INTO :total_budget;
*    SELECT COUNT(budget)
*      FROM Department
*      WHERE head_dept = :v_dno
*      INTO :cnt;
*
*    IF (cnt = 0) THEN
*      SUSPEND;
*
*    FOR SELECT dept_no
*      FROM Department
*      WHERE head_dept = :v_dno
*      INTO :rdno
*    DO
*    BEGIN
*      EXECUTE PROCEDURE Dept_budget :rdno RETURNING_VALUES :sumb;
*      total_budget = total_budget + sumb;
*    END
*  END ^
*/


SET TERM ^ ;

CREATE PROCEDURE Sub_tot_budget (v_head CHAR(3))
RETURNS (total_budget NUMERIC(15, 2),
  avg_budget NUMERIC(15, 2),
  min_budget NUMERIC(15, 2),
  max_budget NUMERIC(15, 2))
AS
BEGIN
  SELECT SUM(budget), AVG(budget), MIN(budget), MAX(budget)
    FROM Department
    WHERE head_dept = :v_head
    INTO :total_budget, :avg_budget, :min_budget, :max_budget;
  SUSPEND;
END ^


CREATE EXCEPTION REASSIGN_SALES
  "Reassign the sales records before deleting this employee."^


CREATE PROCEDURE Delete_employee (v_empno INTEGER)
AS
  DECLARE VARIABLE any_sales INTEGER;
BEGIN
  any_sales = 0;

  SELECT COUNT(po_number)
    FROM Sales
    WHERE sales_rep = :v_empno
    INTO :any_sales;

  IF (any_sales > 0) THEN
  BEGIN
    EXCEPTION REASSIGN_SALES;
    SUSPEND;
  END

  UPDATE Department
    SET mngr_no = NULL
    WHERE mngr_no = :v_empno;

/* If the employee is a project leader, update project.  */

  UPDATE Project
    SET team_leader = NULL
    WHERE team_leader = :v_empno;

/* Delete the employee from any projects. */

  DELETE FROM Employee_project
    WHERE emp_no = :v_empno;

/* Delete old salary records. */

  DELETE FROM Salary_history
    WHERE emp_no = :v_empno;

 /* Delete the employee.  */

  DELETE FROM Employee
    WHERE emp_no = :v_empno;

  SUSPEND;
END ^


CREATE PROCEDURE Org_chart
RETURNS (head_department CHAR(25), dept_name CHAR(25), mngr_name CHAR(20),
title CHAR(5), empl_cnt INTEGER)
AS
  DECLARE VARIABLE manager_no INTEGER;
  DECLARE VARIABLE dno CHAR(3);
BEGIN
  FOR SELECT H.department, D.department, D.mngr_no, D.dept_no
    FROM Department D
    LEFT OUTER JOIN Department H ON D.head_dept = H.dept_no
    ORDER BY D.dept_no
    INTO :head_department , :dept_name , :manager_no, :dno
  DO
  BEGIN
    IF (:manager_no IS NULL) THEN
    BEGIN
      mngr_name = "--TBH--";
      title = "";
    END

   ELSE
     SELECT full_name, job_code
       FROM Employee
       WHERE emp_no = :manager_no
       INTO :mngr_name, :title;

   SELECT COUNT(emp_no)
     FROM Employee
     WHERE dept_no = :dno
     INTO :empl_cnt;

   SUSPEND;
 END
END ^

CREATE PROCEDURE Mail_label (v_cust_no INTEGER)
RETURNS (line1 CHAR(40), line2 CHAR(40), line3 CHAR(40), line4 CHAR(40),
line5 CHAR(40), line6 CHAR(40))
AS
  DECLARE VARIABLE custname VARCHAR(25);
  DECLARE VARIABLE first  VARCHAR(15);
  DECLARE VARIABLE last  VARCHAR(20);
  DECLARE VARIABLE addr1  VARCHAR(30);
  DECLARE VARIABLE addr2  VARCHAR(30);
  DECLARE VARIABLE custcity  VARCHAR(25);
  DECLARE VARIABLE state  VARCHAR(15);
  DECLARE VARIABLE cntry VARCHAR(15);
  DECLARE VARIABLE postcode VARCHAR(12);
  DECLARE VARIABLE cnt  INTEGER;
BEGIN
  line1 = "";
  line2 = "";
  line3 = "";
  line4 = "";
  line5 = "";
  line6 = "";

  SELECT customer, contact_first, contact_last, address_line1,
  address_line2, city, state_province, country, postal_code
    FROM Customer
    WHERE cust_no= :v_cust_no
    INTO :custname, :first, :last, :addr1, :addr2, :custcity, :state,
    :cntry, :postcode;

  IF (custname IS NOT NULL) THEN
    line1 = custname;
  IF (first IS NOT NULL) THEN
    line2 = first || " " || last;
  ELSE
    line2 = last;
  IF (addr1 IS NOT NULL) THEN
    line3 = addr1;
  IF (addr2 IS NOT NULL) THEN
    line4 = addr2;

  IF (cntry = "USA") THEN
  BEGIN
    IF (custcity IS NOT NULL) THEN
      line5 = custcity || ", " || state || "  " || postcode;
    ELSE
      line5 = state || "  " || postcode;
  END
  ELSE
  BEGIN
    IF (custcity IS NOT NULL) THEN
      line5 = custcity || ", " || state;
    ELSE
      line5 = state;
    line6 = cntry || "    " || postcode;
 END

 SUSPEND;
END ^

CREATE EXCEPTION ORDER_ALREADY_SHIPPED "Order status is 'shipped.'"^
CREATE EXCEPTION CUSTOMER_ON_HOLD "This customer is on hold."^
CREATE EXCEPTION CUSTOMER_CHECK "Overdue balance -- can't ship."^

CREATE PROCEDURE Ship_order (v_po_num CHAR(8))
AS

 DECLARE VARIABLE ord_stat CHAR(7);
 DECLARE VARIABLE hold_stat CHAR(1);
 DECLARE VARIABLE cust_num INTEGER;
 DECLARE VARIABLE any_po CHAR(8);
BEGIN
 SELECT S.order_status, C.on_hold, C.cust_no
 FROM Sales S, Customer C
 WHERE po_number = :v_po_num
 AND S.cust_no= C.cust_no
 INTO :ord_stat, :hold_stat, :cust_num;

 /* This purchase order has been already shipped. */
 IF (ord_stat = "shipped") THEN
 BEGIN
  EXCEPTION ORDER_ALREADY_SHIPPED;
  SUSPEND;
 END

 /* Customer is on hold. */
 ELSE IF (hold_stat = "*") THEN
 BEGIN
  EXCEPTION CUSTOMER_ON_HOLD;
  SUSPEND;
 END

 /*
  * If there is an unpaid balance on orders shipped over 2 months ago,
  * put the customer on hold.
  */
 FOR SELECT po_number
  FROM Sales
  WHERE cust_no= :cust_num
  AND order_status = "shipped"
  AND paid = "n"
  AND ship_date < 'NOW' - 60
  INTO :any_po
 DO
 BEGIN
  EXCEPTION CUSTOMER_CHECK;

  UPDATE Customer
  SET on_hold = "*"
  WHERE cust_no= :cust_num;

  SUSPEND;
 END

 /*
  * Ship the order.
  */
 UPDATE Sales
 SET order_status = "shipped", SHIP_DATE = 'NOW'
 WHERE po_number = :v_po_num;

 SUSPEND;
END ^

CREATE PROCEDURE Show_langs (v_code VARCHAR(5),
v_grade SMALLINT,
v_cty VARCHAR(15))
RETURNS (languages VARCHAR(15))
AS

DECLARE VARIABLE i INTEGER;
BEGIN
  i = 1;
  WHILE (i <= 5) DO
  BEGIN
    SELECT language_req[:i] FROM Job
    WHERE ((job_code = :v_code) AND (job_grade = :v_grade) AND (job_country = :v_cty)
           AND (language_req IS NOT NULL))
    INTO :languages;
    IF (languages = " ") THEN  /* Prints "NULL" instead of blanks */
       languages = "NULL";
    i = i +1;
    SUSPEND;
  END
END ^

CREATE PROCEDURE All_langs RETURNS (code VARCHAR(5),
grade VARCHAR(5),
country VARCHAR(15),
lang VARCHAR(15))
AS

    BEGIN
 FOR SELECT job_code, job_grade, job_country FROM Job
  INTO :code, :grade, :country

 DO
 BEGIN
     FOR SELECT languages FROM Show_langs
       (:code, :grade, :country) INTO :lang DO
         SUSPEND;
     /* Put nice separators between rows */
     code = "=====";
     grade = "=====";
     country = "===============";
     lang = "==============";
     SUSPEND;
 END
    END ^
SET TERM ; ^
COMMIT WORK ;


