CREATE TABLE Employees(
nid TEXT NOT NULL,
first_name TEXT NOT NULL,
last_name TEXT NOT NULL,
department TEXT NOT NULL,
job_title TEXT NOT NULL,
PRIMARY KEY (nid));
.mode csv
.import EmployeeTable.csv Employees