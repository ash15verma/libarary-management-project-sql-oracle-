LOAD DATA 
infile "C:\Users\Harish\OneDrive\Desktop\library_Management_system project of sql\library_Management_system project\employees.csv"
INTO TABLE EMPLOYEES_TEST --Data will be inserted into the employees_TEST table.
WHEN (emp_id != 'emp_id')
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
emp_id,
emp_name,
position,
sal,
branch_id)
