LOAD DATA 
infile "C:\libary management system project\branch.csv" 
INTO TABLE BRANCH_TEST --Data will be inserted into the BRANCH_TEST table.
WHEN (branch_id != 'branch_id')
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  branch_id,
  manager_id,
  branch_address,
  contact_no
)