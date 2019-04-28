use master
create database RMS

use RMS

CREATE TABLE Users(
U_ID int NOT NULL PRIMARY KEY,
w_Role varchar(100),
u_fname varchar(50),
u_lname varchar(50),
u_name varchar(50) UNIQUE,
u_email varchar(200) UNIQUE,
password_ varchar(20),
gender varchar(6),
securityQuestion varchar(50),
answer varchar(30)
);

CREATE TABLE Designation(
d_ID int NOT NULL PRIMARY KEY,
designation_name varchar(100) UNIQUE,
status_ varchar(50),
);

CREATE TABLE Department(
dept_ID int NOT NULL PRIMARY KEY,
department_name varchar(100) UNIQUE,
HR_Manager varchar(50)
);

create table Offices(
ofc_ID int  NOT NULL PRIMARY KEY,
city varchar(50),
HR_Manager varchar(50)
);

CREATE TABLE Job_Post(
job_Title varchar(50),
job_Description varchar(500),
designation	varchar(100),
required_Skills varchar(500),
job_Location varchar(50),
department varchar(100),
min_Education varchar(100),
min_Experience varchar(50),
min_Max_Age_Requirements varchar(50),
gender varchar(20),
closing_Date date,
salary varchar(50),
additional_Benefits varchar(500),
job_Details_Document varchar(500),
job_Status varchar(50),
FOREIGN KEY (designation) REFERENCES Designation(designation_name),
FOREIGN KEY (department) REFERENCES Department(department_name)
);

CREATE TABLE Intership_Post(
intership_Title varchar(50),
intership_Description varchar(500),
internship_Duration varchar(50),
required_Skills varchar(500),
internship_Location varchar(50),
department varchar(100),
internship_Period varchar(50),
gender varchar(50),
closing_Date date,
internship_Details_Document varchar(500),
FOREIGN KEY (department) REFERENCES Department(department_name)
);

CREATE TABLE Interview_Management(
IM_ID int NOT NULL PRIMARY KEY,
U_ID int,
interview_Date date,
interview_Time time,
interview_Status varchar(50),
FOREIGN KEY (U_ID) REFERENCES Users(U_ID)
);

CREATE TABLE Resume_Creation1(
RC1_ID int NOT NULL PRIMARY KEY,
U_ID int,
dataSize int,
noOfJobsApplied int,
lastUsed date,
u_fname varchar(50),
u_lname varchar(50),
applicant_Image image,
DOB date,
CNIC int NOT NULL,
nationality varchar(50),
gender varchar(50),
u_email varchar(200),
contact_number1 int,
contact_number2 int,
applicant_address varchar(200),
city varchar(50),
country varchar(50),
objective varchar(500),
department_of_interest varchar(100),
field_of_interest varchar(50),
internship_duration	varchar(50),
internship_period varchar(50),
tentative_joining_date date,
applicant_skills varchar(500),
extraCurricular_activities	varchar(500),
other_interests varchar(500),
FOREIGN KEY (U_ID) REFERENCES Users(U_ID),
FOREIGN KEY (u_email) REFERENCES Users(u_email),
FOREIGN KEY (department_of_interest) REFERENCES Department(department_name)
);

CREATE TABLE Resume_Creation2(
RC2_ID int NOT NULL PRIMARY KEY,
RC1_ID int,
current_degree varchar(50),
institute_name_for_current_degree varchar(200),
expected_date_of_completion_for_current_degree date,
last_degree_or_certificate varchar(50),
institute_name_for_last_degree_or_certificate varchar(200),
performance_in_last_degree_or_certificate varchar(50),
second_last_degree varchar(50),
institute_name_for_second_last_degree varchar(200),
performance_in_second_last_degree varchar(50),
additional_qualification varchar(100),
FOREIGN KEY (RC1_ID) REFERENCES Resume_Creation1(RC1_ID)
);

CREATE TABLE Resume_Creation3(
RC3_ID int NOT NULL PRIMARY KEY,
RC2_ID int,
previous_internship_summary varchar(500),
previous_internship_months varchar(50),
internship_place varchar(50),
responsibilities_at_previous_internship varchar(200),
reference_person1 varchar(50),
affiliation_of_reference_person1 varchar(100),
contact_number_of_reference_person1 int,
email_of_reference_person1 varchar(200),
reference_person2 varchar(50),
affiliation_of_reference_person2 varchar(100),
contact_number_of_reference_person2 int,
email_of_reference_person2 varchar(200),
FOREIGN KEY (RC2_ID) REFERENCES Resume_Creation2(RC2_ID)
);

select *from Users

select *from Designation

select * from Department

select * from Offices

select * from Job_Post

select * from Intership_Post

select * from Interview_Management

select * from Resume_Creation1

select * from Resume_Creation2

select * from Resume_Creation3

