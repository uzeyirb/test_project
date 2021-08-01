--CREATE DATABASE EMPLOYEE;
 DROP TABLE IF EXISTS doctor;
 DROP TABLE IF EXISTS department;
 DROP TABLE IF EXISTS office;


create table office(
office_id serial,
office_name varchar (32) not null,
office_street_address varchar (128) not null,
office_city varchar (128) not null,
office_state varchar (32) not null,
office_zip varchar (12) not null,
office_phone varchar (32) not null,
office_email varchar (32) not null,
office_hours varchar (256) not null,
office_parking varchar (256),
office_additional_info varchar (256),
office_url varchar (128),
constraint pk_office primary key(office_id)
);

create table department(
dept_id serial ,
department_name varchar (32) not null,
constraint pk_department primary key(dept_id)
);


create table doctor(
doctor_id serial,
job_title varchar (32) not null,
first_name varchar(32) not null,
last_name varchar(32) not null,
gender varchar (10) not null,
date_of_birth DATE not null,
date_of_hire DATE NOT NULL,
dept_id int not null,
project_id int not null,


constraint pk_doctor primary key(doctor_id),
constraint fk_doctor_dept foreign key (dept_id)references department(dept_id),
constraint fk_doctor_doctor foreign key (office_id)references office(office_id)
);
 select * from office;
insert into office values('1','web-page','2012-06-14');
insert into office values('2','software-testing','2012-06-14');
insert into office values('3','Sql','2012-06-14');



select * from department;
insert into department values('1','web-development');
insert into department values('2','testing');
insert into department values('3','release');
insert into department values('4','data analyst');


select * from doctor;
insert into doctor values('1','tester','mohamed', 'omar', 'male', '1995-12-27','2021-08-1','2','2');
insert into doctor values('2','dev','adam', 'james', 'male', '1995-12-27','2021-08-1',2,1);
insert into doctor values('3','analyst','ali', 'mo', 'male', '1995-12-27','2021-08-1',1,1);
insert into doctor values('4','business analyst','honey', 'ahmed', 'female', '1995-12-27','2021-08-1',1,3);
insert into doctor values('5','tester','brian', 'lauray', 'male', '1995-12-27','2021-08-1',3,1);
insert into doctor values('6','support','jon', 'jones', 'male', '1995-12-27','2021-08-1',3,2);
insert into doctor values('7','helper','kobe', 'bryant', 'male', '1995-12-27','2021-08-1',4,3);
insert into doctor values('8','tester','shaq', 'oneal', 'male', '1995-12-27','2021-08-1',4,1);