LOAD DATA
INFILE "C:\libary management system project\return.csv"
INTO TABLE return_status
APPEND
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  return_id        INTEGER EXTERNAL,
  issued_id        INTEGER EXTERNAL,
  return_book_name CHAR(100),
  return_date      DATE "MM-DD-YYYY",
  return_book_isbn CHAR(50)
)