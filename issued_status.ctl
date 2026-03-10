LOAD DATA 
infile "C:\libary management system project\issued_status.csv"
INTO TABLE issued_status_TEST --Data will be inserted into the BRANCH_TEST table.
WHEN (issued_id != 'issued_id')
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(issued_id,
issued_member_id,
issued_book_name,
issued_date,
issued_book_isbn,
issued_emp_id
)

