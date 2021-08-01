--CREATE DATABASE EMPLOYEE;
 DROP TABLE IF EXISTS employee;
 DROP TABLE IF EXISTS department;
 DROP TABLE IF EXISTS office;


create table office(
office_id serial,
office_name varchar (256) not null,
office_street_address varchar (256) not null,
office_city varchar (256) not null,
office_state varchar (256) not null,
office_zip varchar (256) not null,
office_phone varchar (256) not null,
office_email varchar (256) not null,
office_hours varchar (256) not null,
office_parking varchar (256),
office_additional_info varchar (256),
office_url varchar (256),
constraint pk_office primary key(office_id)
);

create table department(
dept_id serial ,
department_name varchar (256) not null,
constraint pk_department primary key(dept_id)
);


create table employee(
employee_id serial,
job_title varchar (256) not null,
first_name varchar(256) not null,
last_name varchar(256) not null,
gender varchar (256) not null,
dept_id int not null,
office_id int not null,
constraint pk_employee primary key(employee_id),
constraint fk_employee_dept foreign key (dept_id)references department(dept_id),
constraint fk_employee_employee foreign key (office_id)references office(office_id)
);
 select * from office;
 --'office_id serial','office_name','office_street_address', 'office_city', 'office_state', 'office_zip', 'office_phone', 'office_email', 'office_hours', 'office_parking', 'office_additional_info', 'office_url'
insert into office values('1','Primary One Health','1905 Parsons Ave','Columbus', 'OH', '43207', '(614) 645-5500', 'office@primaryone.com', '8AM-5PM', 'Parking is Free', 'No Additional Info','https://www.primaryone.com' );
insert into office values('2','Canyon Medical Center','5969 E Broad','Columbus', 'OH', '43213', '(614) 864-6010', 'office@canyonmedical.com', '8AM-5PM', 'Parking is Free', 'No Additional Info','https://www.canyonmedical.com');
insert into office values('3','Buckeye Family Medicine','2575 W Broad St','Columbus', 'OH', '43204', '(614) 278-9666', 'office@buckeyefamilymedicine.com', '8AM-5PM', 'Parking is Free', 'No Additional Info','https://www.buckeyefamilymedicine.com');



select * from department;
insert into department values('1','Family Medicine');
insert into department values('2','Cardiology department');
insert into department values('3','Pathology/Laboratory');
insert into department values('4','Nephrology');


select * from employee;
--insert into employee values('employee_id','job_title', 'first_name', 'last_name', 'gender', 'dept_id','office_id');
insert into employee values('1','Dr', 'Tracie', 'Bolden', 'female',  1, 1 );
insert into employee values('2','Dr', 'Mike', 'Duke', 'male',  4, 1);
insert into employee values('3','Nr', 'Jessica', 'Golden', 'female',  2, 1);
