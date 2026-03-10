# libarary-management-project-sql-oracle-
This SQL-based Library Management Project helps automate library workflows, reduces manual errors, and maintains organized and accessible records. By designing appropriate database tables and relationships, I  performed CRUD (Create, Read, Update, Delete) operations efficiently and generate insightful reports for library management.
I had used various DDL,DML,TCL commands to built up the relationship of the data, whereas, foreign key and primary key was the main pillar of the project to built up the refrential integrity between the tables.

Library Management System Database
📚 Project Overview
This project implements a Library Management System Database designed to manage books, members, employees, and book transactions within a library.
The database allows efficient tracking of book availability, issuing, and returning processes across different library branches.

### The system helps libraries maintain structured records of:

1 Books and their details

2 Members who borrow books

3 Employees managing operations

4 Issued and returned books

### Database Structure

The database contains the following main tables:

1. Branch
Stores information about library branches.

Fields:
branch_id – Unique identifier for each branch
manager_id – ID of the branch manager
branch_address – Address of the branch
contact_no – Branch contact number

2. Employees
Contains details about employees working in the library.
Fields:
emp_id – Unique employee ID
emp_name – Employee name
position – Job position
salary – Employee salary
branch_id – Branch where the employee works
Relationship:
Each employee belongs to a branch.

3. Members
Stores information about library members.
Fields:
member_id – Unique member ID
member_name – Member name
member_address – Address of the member
reg_date – Registration date
Members are users who can borrow books from the library.

4. Books
Contains detailed information about books available in the library.
Fields:
isbn – Unique book identifier
book_title – Title of the book
category – Genre/category of the book
rental_price – Cost to rent the book
status – Availability status
author – Author name
publisher – Publisher name

6. Issue Status
Tracks books issued to members.
Fields:
issued_id – Unique issue transaction ID
issued_member_id – Member who borrowed the book
issued_book_name – Name of issued book
issued_date – Date book was issued
issued_book_isbn – Book ISBN
issued_emp_id – Employee who issued the book

Purpose:
Records every book borrowing transaction.

6. Return Status
Tracks returned books.
Fields:
return_id – Unique return transaction ID
issued_id – Linked issue transaction
return_book_name – Returned book name
return_date – Date the book was returned
return_book_isbn – Book ISBN

Purpose:
Keeps track of book returns.

### Database Relationships
Key relationships in the system:
A branch can have multiple employees.
Employees handle book issuing operations.
Members borrow books from the library.
Each book can be issued multiple times.
Issue Status records borrowing transactions.
Return Status records when books are returned.
These relationships ensure data integrity and efficient tracking of library activities.

⚙️ Technologies Used

SQL
Database ER Modeling
Relational Database Design

### 📊 Data Analysis Insights

This project includes SQL queries that generate useful insights:
📚 Most borrowed books in the library
👥 Most active library members
📦 Books currently issued and not returned
🧑‍💼 Employee activity in issuing books
📖 Distribution of books by category

### 📁 Project Files
library-management-system/
│
├── schema.sql
├── sample_queries.sql
├── ERD.png
└── README.md

### 🚀 Future Improvements
Potential enhancements for this system:

1-Late return penalty calculation

2-Online book reservation system

3-Member login portal

4-Book recommendation system

5-Dashboard for library analytics


### Here are 5 powerful SQL insights
```sql
--Most Borrowed Books
This query finds which books are issued the most.

SELECT 
    issued_book_name,
    COUNT(*) AS total_times_issued
FROM issue_status
GROUP BY issued_book_name
ORDER BY total_times_issued DESC;

Insight:
Shows most popular books
Helps libraries buy more copies of high-demand books


2). Most Active Library Members

Find members who borrow the most books.
SELECT 
    m.member_name,
    COUNT(i.issued_id) AS books_borrowed
FROM members m
JOIN issue_status i 
ON m.member_id = i.issued_member_id
GROUP BY m.member_name
ORDER BY books_borrowed DESC;

Insight:
Identifies frequent readers
Helps create loyalty programs

3. Books Currently Issued (Not Returned)
Find books that are still with members.
SELECT 
    issued_book_name,
    issued_member_id,
    issued_date
FROM issue_status
WHERE issued_id NOT IN (
    SELECT issued_id FROM return_status
);
Insight:
Shows currently borrowed books
Helps track library inventory availability.

 4)Employees Handling the Most Book Issues
Find employees who issued the most books.
    e.emp_name,
    COUNT(i.issued_id) AS total_books_issued
FROM employees e
JOIN issue_status i
ON e.emp_id = i.issued_emp_id
GROUP BY e.emp_name
ORDER BY total_books_issued DESC;

Insight:
Measures employee activity
Helps evaluate staff workload

5) Books by Category
Analyze how many books exist in each category.
SELECT 
    category,
    COUNT(*) AS total_books
FROM books
GROUP BY category
ORDER BY total_books DESC;


Insight:
Shows library collection distribution
Helps decide which genres need more books
```
--
👤 Author
ash15verma
Library Management Database Project
Created for database design and SQL practice.

📄 License

This project is open-source and available for educational purposes.
