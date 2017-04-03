/*  Tables.sql    
*   THIS FILE IS FOR USE WITH THE TUTORIAL. IT IS NOT MEANT 
*   TO BE USED WITHOUT REFERRING TO THE ACCOMPANYING TEXT.
*
*   You must change the CONNECT parameters below to match your
*   server name, database name, username, and password.
*  
*/

CONNECT 'c:\interbase5\tutorial\tutorial.gdb'
USER 'TUTOR' PASSWORD 'tutor4ib';


/*
 * As part of the tutorial, you create the Country, Job, 
 * and Department tables by hand. The description and code
 * for each table is as follows:
 * 
 * The Country table:
 * 
 * CREATE TABLE Country(
 *     country COUNTRYNAME NOT NULL PRIMARY KEY,
 *     currency VARCHAR(10) NOT NULL);
 * COMMIT;
 *
 *  
 *  The Job table:
 *  Job id, job title, minimum and maximum salary, job description,
 *  and required languages.  A job is defined by a multiple key, 
 *  consisting of a job_code (a 5-letter job abbreviation), a job 
 *  grade, and a country name indicating the salary currency type.  
 *  The salary range is expressed in the appropriate country's currency. 
 *  The job requirement is a text blob. The job may also require some 
 *  knowledge of foreign languages, stored in a character array.
 *
 *
 * CREATE TABLE Job (
 *    job_code JOBCODE NOT NULL,
 * 	job_grade JOBGRADE NOT NULL,
 * 	job_country COUNTRYNAME NOT NULL,
 * 	job_title VARCHAR(25) NOT NULL,
 * 	min_salary SALARY NOT NULL,
 * 	max_salary SALARY NOT NULL,
 * 	job_requirement BLOB SUB_TYPE TEXT SEGMENT SIZE 400,
 * 		LANGUAGE_REQ VARCHAR(15)[1:5],
 * CONSTRAINT pkjob PRIMARY KEY (job_code, job_grade, job_country),
 * CONSTRAINT fkjob FOREIGN KEY (job_country) REFERENCES Country (country),
 * CHECK (min_salary < max_salary));
 * 
 *  The Department table:
 *  You create the first two columns using CREATE TABLE and then 
 *  add the remaining columns and the constraints with ALTER TABLE.
 *  The complete code for the Department table is:
 * 
 * CREATE TABLE Department (
 * 	dept_no         DEPTNO NOT NULL PRIMARY KEY,
 * 	department      VARCHAR(25) NOT NULL UNIQUE)
 * (You later use ALTER TABLE to add columns and constraints to
 *  the Department table.)
 */


/*  The Employee Table:
 *  Employee id, name, phone extension, date of hire, department id,
 *  job and salary information.  
 *  Salary can be entered in any country's currency.  Therefore, some 
 *  of the salaries can appear magnitudes larger than others,
 *  depending on the currency type.  Ex. Italian lira vs. U.K. pound.
 *  The currency type is determined by the country code.
 *  job_code, job_grade, and job_country reference employee's job information,
 *  illustrating two tables related by referential constraints on multiple
 *  columns.
 *  The employee salary is verified to be in the correct salary range
 *  for the given job title.
 */

CREATE TABLE Employee
(
	emp_no          EMPNO NOT NULL PRIMARY KEY,
	first_name      FIRSTNAME NOT NULL,
	last_name       LASTNAME NOT NULL,
	phone_ext       VARCHAR(4),
	hire_date       DATE DEFAULT 'NOW' NOT NULL,
	dept_no         DEPTNO,
	job_code        JOBCODE NOT NULL,
	job_grade       JOBGRADE NOT NULL,
	job_country     COUNTRYNAME NOT NULL,
	salary          SALARY NOT NULL,
	full_name       COMPUTED BY (last_name || ', ' || first_name),

FOREIGN KEY (dept_no) 
	REFERENCES Department (dept_no),
FOREIGN KEY (job_code, job_grade, job_country) 
	REFERENCES Job (job_code, job_grade, job_country),

CHECK ( salary >= (SELECT min_salary FROM job WHERE
	Job.job_code = Employee.job_code AND
	Job.job_grade = Employee.job_grade AND
	Job.job_country = Employee.job_country) AND
	salary <= (SELECT max_salary FROM Job WHERE
		Job.job_code = Employee.job_code AND
		Job.job_grade = Employee.job_grade AND
		Job.job_country = Employee.job_country))
);


/* As part of the tutorial, you create the following two indexes.
 * namex is an index on two columns of the EMPLOYEE table and 
 * budgetx is an index on the budget column of the DEPARTMENT table:
 * 
 * CREATE INDEX namex ON employee (last_name, first_name);
 * COMMIT;
 * 
 * CREATE DESCENDING INDEX budgetx ON department (budget);
 */

/*  Create the PROJECT table:
 *  Project id, project name, description, project team leader,
 *  and product type.  Project description is a text blob.   
 */

CREATE TABLE PROJECT
(
	proj_id         PROJNO NOT NULL,
	proj_name       VARCHAR(20) NOT NULL UNIQUE,
	proj_desc       BLOB(800,1),
	team_leader     EMPNO,
	product         PRODTYPE,

	PRIMARY KEY (proj_id),
	FOREIGN KEY (team_leader) REFERENCES employee (emp_no)
);
COMMIT;

/*  Create the EMPLOYEE_PROJECT table:
 *  Employee id, project id, employee's project duties.
 *  Employee duties is a text blob.
 */

CREATE TABLE EMPLOYEE_PROJECT
(
	emp_no          EMPNO NOT NULL,
	proj_id         PROJNO NOT NULL,

	PRIMARY KEY (emp_no, proj_id),
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
	FOREIGN KEY (proj_id) REFERENCES project (proj_id)
);
COMMIT;

/*  Create the PROJ_DEPT_BUDGET table:
 *  Fiscal year, project id, department id, projected head count by
 *  fiscal quarter, projected budget.
 *  Tracks head count and budget planning by project by department.
 *  Quarterly head count is an array of integers.
 */

CREATE TABLE PROJ_DEPT_BUDGET (
	year                INTEGER NOT NULL CHECK (YEAR >= 1993),
	proj_id             PROJNO NOT NULL,
	dept_no             DEPTNO NOT NULL,
	quart_head_cnt      INTEGER [4],
	projected_budget    BUDGET,

	PRIMARY KEY (year, proj_id, dept_no),
	FOREIGN KEY (dept_no) REFERENCES department (dept_no),
	FOREIGN KEY (proj_id) REFERENCES project (proj_id));
COMMIT;


/*  Create the SALARY_HISTORY table:
 *  Employee number, salary change date, updater's user id, old salary,
 *  and percent change between old and new salary.
 */

CREATE TABLE SALARY_HISTORY
(
	emp_no              EMPNO NOT NULL,
	change_date         DATE DEFAULT 'NOW' NOT NULL,
	updater_id          VARCHAR(20) NOT NULL,
	old_salary          SALARY NOT NULL,
	percent_change      DOUBLE PRECISION
							DEFAULT 0
							NOT NULL
							CHECK (percent_change between -50 and 50),
	new_salary          COMPUTED BY
							(old_salary + old_salary * percent_change / 100),

	PRIMARY KEY (emp_no, change_date, updater_id),
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no)
);

CREATE INDEX updaterx ON salary_history (updater_id);
CREATE DESCENDING INDEX changex ON salary_history (change_date);
COMMIT;

/*  Create the CUSTOMER table:
 *  Customer id, customer name, contact first and last names,
 *  phone number, address lines, city, state or province, country,
 *  postal code or zip code, and customer status.
 */

CREATE TABLE CUSTOMER(
	cust_no             CUSTNO NOT NULL,
	customer            VARCHAR(25) NOT NULL,
	contact_first       FIRSTNAME,
	contact_last        LASTNAME,
	phone_no            PHONENUMBER,
	address_line1       ADDRESSLINE,
	address_line2       ADDRESSLINE,
	city                VARCHAR(25),
	state_province      VARCHAR(15),
	country             COUNTRYNAME,
	postal_code         VARCHAR(12),
	on_hold             CHAR DEFAULT NULL
	CHECK (on_hold IS NULL OR on_hold = '*'),
	PRIMARY KEY (cust_no),
		FOREIGN KEY (country) 
	REFERENCES country (country));

CREATE INDEX custnamex ON customer (customer);
CREATE INDEX custregion ON customer (country, city);
COMMIT;


/*  Create the SALES table:
 *  Purchase order number, customer id, sales representative, order status,
 *  order date, date shipped, date need to ship by, payment received flag,
 *  quantity ordered, total order value, type of product ordered,
 *  any percent discount offered.
 *  Tracks customer orders.
 *  SALES_REP  is the ID of the employee handling the sale.
 *  Number of days passed since the order date is a computed field.
 *  Several checks are performed on this table, among them:
 *      - A sale order must have a status: open, shipped, waiting.
 *      - The ship date must be entered, if order status is 'shipped'.
 *      - New orders can't be shipped to customers with 'on_hold' status.
 */

CREATE TABLE SALES(
	po_number       PONUMBER NOT NULL,
	cust_no         CUSTNO NOT NULL,
	sales_rep       EMPNO,
	order_status    VARCHAR(7) DEFAULT 'new' NOT NULL
		CHECK (order_status in ('new', 'open', 'shipped', 'waiting')),
	order_date      DATE DEFAULT 'now' NOT NULL,
	ship_date       DATE 
		CHECK (ship_date >= order_date OR ship_date IS NULL),
	date_needed     DATE
		CHECK (date_needed > order_date OR date_needed IS NULL),
	paid            CHAR DEFAULT 'n'
		CHECK (paid in ('y', 'n')),
	qty_ordered     INTEGER DEFAULT 1 NOT NULL
		CHECK (QTY_ORDERED >= 1),
	total_value     DECIMAL(9,2) NOT NULL
		CHECK (total_value >= 0),
	discount        FLOAT DEFAULT 0 NOT NULL
		CHECK (discount >= 0 AND discount <= 1),
	item_type       PRODTYPE,
	aged            COMPUTED BY (ship_date - order_date),

	PRIMARY KEY (po_number),
	FOREIGN KEY (cust_no) REFERENCES customer (cust_no),
	FOREIGN KEY (sales_rep) REFERENCES employee (emp_no),

	CHECK (NOT (order_status = 'shipped' AND ship_date IS NULL)),

	CHECK (NOT (order_status = 'shipped' AND
			EXISTS (SELECT on_hold FROM customer
					WHERE customer.cust_no = sales.cust_no
					AND customer.on_hold = '*'))));

CREATE INDEX needx ON sales (date_needed);
CREATE INDEX salestatx ON sales (order_status, paid);
CREATE DESCENDING INDEX qtyx ON sales (item_type, qty_ordered);
COMMIT;
EXIT;
