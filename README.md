# SQLchallenge

# What is in this repo
In this repository, you will find 3 folders titles ERD, CSVs, and Code. In the ERD
folder you will find a picture of my completed ERD, in the CSVs folder you will find 
the 6 CSVs that are needed to create the tables, and in the Code folder you will find 
an SQL file titled schemas_code.sql which is my code for creating the tables, and
an SQL file titled Queries_code.sql which has my code for running the queries. 

# How to run the code
In order to properly run the code you must first create the 6 tables;
department, department_employees, department_manager, employees,
salaries, and titles. Once you create these 6 tables, upload the CSVs
into the tables in this order; department, deptartment_employees, department_manager,
titles, employees, salaries.

Once the CSVs are uploaded to the corresponding tables, you can run the alter table
code to alter the department_manager table and the employees table.

Once the tables have been altered, you can run the code for the 8 queries, in order
from Query 1 to Query 8.

# References for the Code
I utilized the Xpert Learning Assistant to help debug my code for creating foreign keys.
I also used it to tweak and debug my code for Query 1, debugging my code for Query 3 
to place WHERE at the end of the line, debugging my code for Query 6 to specify
which department_number I was referencing and catching a typo in Query 7 where I wrote
d0007, rather than d007. I used quick DBD's exported code to help create conditional keys 
for my tables and altering my tables to add foreign keys. Lastly, I used SQL Shack
to help with coding and syntax for Query 4 to join multiple tables. 

https://www.sqlshack.com/learn-sql-join-multiple-tables/