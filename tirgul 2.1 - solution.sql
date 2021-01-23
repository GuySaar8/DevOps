create schema bank;
use bank;

create table emp_personal
(
emp_id int not null auto_increment,
fname varchar(20) not null,
phone varchar(10) not null,
gender enum('m','f') not null,
primary key(emp_id)
);

insert into emp_personal(fname,phone,gender)
values
("John","0541437584","m"),
("Jack","0546472435","m"),
("James","0547487275","m"),
("Jordan","0547461324","f"),
("Jill","0548590276","f"),
("Jasper","0540698375","m"),
("Jane","0540792546","f"),
("Jackline","0540698388","f"),
("Jimmy","0546638577","m"),
("Jim","0547580013","m"),
("Jane","0547589309","m"),
("John","0546471287","m"),
("Jordan","0548670987","m"),
("Jasper","0546572287","m"),
("John","0548709487","m");

create table branches
(
branch_id int not null auto_increment,
adress varchar(20) not null,
phone varchar(10) not null,
primary key(branch_id)
);
insert into branches(adress,phone)
values
("123 st, Tlv","0527468465"),
("234 ave, Tlv","0525462234"),
("333 st, Haifa","0527561123"),
("345 st, Jerusalem","0528572534"),
("765 ave, Netanya","0520698376");

create table positions
(
position_id int not null auto_increment,
name varchar(20) not null,
position_rank enum('1','2','3','4','5') not null,
pay int unsigned,
primary key(position_id)
);

insert into positions(name,position_rank,pay)
values
("CEO","1",52457),
("Mortgage advisor","3",18626),
("Teller","5",9736),
("Receptionist","5",8465),
("Risk manager","2",43857);

create table handled_requests
(
request_id int not null unique,
emp_id int not null,
time date,
primary key(request_id,emp_id)
);
insert into handled_requests(request_id,emp_id,time)
values
(123,2,"2020-1-20"),
(124,2,"2020-1-20"),
(125,7,"2020-1-20"),
(126,11,"2020-1-20"),
(127,2,"2020-1-20"),
(128,11,"2020-1-20"),
(129,14,"2020-1-20"),
(141,14,"2020-1-20"),
(142,7,"2020-1-20"),
(144,2,"2020-1-20"),

(151,2,"2020-1-21"),
(152,11,"2020-1-21"),
(153,7,"2020-1-21"),
(154,11,"2020-1-21"),
(155,2,"2020-1-21"),
(156,11,"2020-1-21"),
(157,11,"2020-1-21"),
(158,14,"2020-1-21"),
(159,7,"2020-1-21"),
(161,2,"2020-1-21"),

(110,2,"2020-1-19"),
(111,2,"2020-1-19"),
(112,2,"2020-1-19"),
(113,11,"2020-1-19"),
(114,2,"2020-1-19"),
(115,14,"2020-1-19"),
(116,14,"2020-1-19"),
(117,14,"2020-1-19"),
(118,7,"2020-1-19"),
(119,7,"2020-1-19"),

(176,2,"2020-1-22"),
(178,2,"2020-1-22"),
(177,7,"2020-1-22"),
(181,11,"2020-1-22"),
(182,2,"2020-1-22"),
(183,11,"2020-1-22"),
(184,14,"2020-1-22"),
(185,14,"2020-1-22"),
(186,7,"2020-1-22"),
(187,2,"2020-1-22");

create table emp_branch
(
emp_id int not null,
branch_id int not null,
foreign key(emp_id) references emp_personal(emp_id),
foreign key(branch_id) references branches(branch_id)
);
insert into emp_branch(emp_id,branch_id)
values
(1,1),
(2,1),
(3,1),
(4,2),
(5,2),
(6,3),
(7,3),
(8,3),
(9,3),
(10,4),
(11,4),
(12,4),
(13,5),
(14,5),
(15,5);

create table emp_position
(
emp_id int not null auto_increment,
position_id int not null ,
foreign key(emp_id) references emp_personal(emp_id),
foreign key(position_id) references positions(position_id)
);
insert into emp_position(emp_id,position_id)
values
(1,1),
(2,2),
(3,3),
(4,1),
(5,2),
(6,1),
(7,2),
(8,3),
(9,5),
(10,1),
(11,2),
(12,3),
(13,1),
(14,2),
(15,5);

select * from branches;
select * from emp_branch;
select * from emp_personal;
select * from emp_position;
select * from handled_requests;
select * from positions;

# Answers

# Q 1.names of all employees in a single branch.

# union of 2 tables
select branch_id,count(*) as num_of_emp_at_each_branch
from emp_personal,emp_branch 
where emp_personal.emp_id = emp_branch.emp_id
group by branch_id;

# subquery of one specific branch
select emp_id from emp_personal
where emp_id in (select emp_id from emp_branch where branch_id = '3');

# Q 2.how many employees of each position in each branch;

select branch_id,position_id,count(*) as emp_of_each_position_by_branch
from emp_branch,emp_position 
where emp_branch.emp_id = emp_position.emp_id
group by position_id;

# other answer - they do not answer the full question
select branch_id from emp_branch
where emp_id in (select count(*) as c from emp_position where position_id = "2");

select position_id, count(*) as emp_in_position  from emp_position
group by position_id;

# Q 3.what is the bank's expanse on employees each month.

#with out the union of the 2 tables we dont have the number of empleeys and the salary of each position
select *
from positions,emp_position 
where positions.position_id = emp_position.position_id
;

# sum of salary by position
select sum(pay) as sum_of_salary
from positions,emp_position 
where positions.position_id = emp_position.position_id;

# sum of salary by name of position
select name, sum(pay)
from positions,emp_position 
where positions.position_id = emp_position.position_id
group by name;

# sum of salary by position and name
select positions.position_id, name, sum(pay)
from positions,emp_position 
where positions.position_id = emp_position.position_id
group by positions.position_id;


# Q 4.what is the most efficiant bank in request processing.
select branch_id, count(*) case_closed_by_branch
from emp_branch,handled_requests 
where emp_branch.emp_id = handled_requests.emp_id
group by branch_id;

# Q 5.which employee is the most efficiant.
select handled_requests.emp_id, count(*) case_closed_by_emp
from emp_branch,handled_requests 
where emp_branch.emp_id = handled_requests.emp_id
group by emp_id;

