LOAD DATA 
infile "C:\libary management system project\members.csv"
INTO TABLE MEMBERS_TEST --Data will be inserted into the BOOK_TEST table.
WHEN (member_id != 'member_id')
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  member_id,
  member_name,
  member_address,
  reg_date
)


