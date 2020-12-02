CREATE TABLE StudentRegister(
NID TEXT NOT NULL,
FirstName TEXT NOT NULL,
LastName TEXT NOT NULL,
Program TEXT NOT NULL,
Status TEXT NOT NULL,
GPA INTEGER NOT NULL,
Course1 TEXT NOT NULL,
Course2 TEXT NOT NULL,
PRIMARY KEY (NID));
.mode csv
.import StudentRegister.csv StudentRegister