LOAD DATA 
infile "C:\libary management system project\books.csv"
INTO TABLE BOOK_TEST --Data will be inserted into the BRANCH_TEST table.
WHEN (isbn != 'isbn')
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  isbn,
book_title,
category,
rental_price,
status,
author,
publisher
)


