CREATE TABLE Extracurriculars(
NID           TEXT NOT NULL,
FirstName     TEXT NOT NULL,
LastName      TEXT NOT NULL,
Program       TEXT NOT NULL,
Position      TEXT NOT NULL,
PRIMARY KEY   (NID));
.mode csv
.import ExtracurricularList.csv Extracurriculars