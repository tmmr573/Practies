1.
CREATE TABLE students_admission_master
(
  StudentId INTEGER not null,
  StudentName varchar2(200) not null,
  StudentJoiningClass varchar2(10) not null,
  StudentAdmissionDate DATE not null,
  StudentAdmisionNo INTEGER,
  StudentAadhaarNo INTEGER,
  StudentCellNo INTEGER,
  StudentStatus varchar2(10) not null,
  StudentPhoto BLOB,
  StudentJoiningAcademicYear varchar2(10) not null,
  TeacherId varchar2(06),
  ReadFlag char, 
  LOAD_TS TIMESTAMP(6),
  UPD_TS TIMESTAMP(6),
  STUDENTFINGERPRINT BLOB,  
  CONSTRAINT StudentId_pk PRIMARY KEY(StudentId),
  CONSTRAINT s_aadhar_no_uk UNIQUE(StudentAadhaarNo)
);