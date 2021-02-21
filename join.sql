create schema sqlexam202102;
use sqlexam202102;

CREATE TABLE teacher (
  teacher_id char(9) NOT NULL,
  fname varchar(45) DEFAULT NULL,
  lname varchar(45) DEFAULT NULL,
  address varchar(255) DEFAULT NULL,
  email varchar(255) NOT NULL,
  title varchar(255) NOT NULL,
  PRIMARY KEY (teacher_id)) ;
  
INSERT INTO teacher (`teacher_id`,`fname`,`lname`,`address`,`email`,`title`) VALUES ('091273890','yanev','levi','haifa 901','yan12@gmail.com','Doctor');
INSERT INTO teacher (`teacher_id`,`fname`,`lname`,`address`,`email`,`title`) VALUES ('121627387','tomer','hinch','reshon 121','tomer@gmail.com','Teacher');
INSERT INTO teacher (`teacher_id`,`fname`,`lname`,`address`,`email`,`title`) VALUES ('123768673','fill','aga','jerusalem 910','f.agha@yahoo.com','Professor');
INSERT INTO teacher (`teacher_id`,`fname`,`lname`,`address`,`email`,`title`) VALUES ('213245000','moti','zak','haifa 120','oleg@gmail.com','Doctor');
INSERT INTO teacher (`teacher_id`,`fname`,`lname`,`address`,`email`,`title`) VALUES ('235172817','gal','levi','jerusalem 8129','benny.levii@gmail.com','Professor');
INSERT INTO teacher (`teacher_id`,`fname`,`lname`,`address`,`email`,`title`) VALUES ('676732901','shlomo','zaki','reshon 912','shlomo@gmail.com','Doctor');


CREATE TABLE student (
  student_id char(9) NOT NULL,
  fname varchar(45) DEFAULT NULL,
  lname varchar(45) DEFAULT NULL,
  address varchar(255) DEFAULT NULL,
  email varchar(45) NOT NULL,
  cycle int(11) NOT NULL,
  PRIMARY KEY (student_id));
  
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('123456789','Rana','Gerd','Mazkeret Batia 12','h.rana@gmail.com',1);
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('123561237','Mike','Ben','Netania','zoza.901@gmail.com',2);
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('124576798','Piter','Pan','Carmiel','piter@gmail.com',1);
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('128934675','Roza','Fisher','Haifa 590','rozeaa12@gmail.com',4);
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('178374887','Reuven','Tibbs','Akko 123','h.rana@gmail.com',1);
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('311155345','Nelly','Plosky','Herzliya 596','nelly@gmail.com',4);
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('325689150','Herzel','Limm','Petah Tikva','limm@gmail.com',2);
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('452346573','Emmanuel','Dodon','Hadera','emadd@yahoo.com',2);
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('656566237','Juri','Ribolli','Haifa 590','ribolli@gmail.com',4);
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('763778678','Shimon','Cooper','Kfar Saba','d@a.c',4);
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('898967438','Rasha','Higaze','Tamra 596','higaze.rasha@gmail.com',1);
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('918273645','Salomon','Finch','Beit Shemesh','s.finch@gmail.com',1);
INSERT INTO  student (`student_id`,`fname`,`lname`,`address`,`email`,`cycle`) VALUES ('987654321','Eran','Hayun','Ashdod','eran@yahoo.com',2);

CREATE TABLE path (
  path_id int(11),
  path_name varchar(45) NOT NULL,
  PRIMARY KEY (path_id));
  
INSERT INTO path (`path_id`,`path_name`) VALUES (1,'Embedded');
INSERT INTO path (`path_id`,`path_name`) VALUES (2,'Full Stack');
INSERT INTO path (`path_id`,`path_name`) VALUES (3,'DevOps');

CREATE TABLE course (
  course_id int(11),
  course_name varchar(45) NOT NULL,
  hours int(11) NOT NULL,
  PRIMARY KEY (course_id)); 
  
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (1,'Networking',60);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (2,'Linux',40);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (3,'Python',90);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (4,'MYSQL',40);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (5,'Docker',40);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (6,'Configuration Monitoring',30);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (7,'Kubernetes',30);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (8,'HTML',15);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (9,'CSS',20);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (10,'Bootstrap',10);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (11,'JavaScript',60);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (12,'MongoDB',20);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (13,'JAVA',90);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (14,'NodeJS',60);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (15,'Git',10);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (16,'Typescript',10);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (17,'Angular',50);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (18,'ReactJS',60);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (19,'C',120);
INSERT INTO course (`course_id`,`course_name`,`hours`) VALUES (20,'C++',100);

CREATE TABLE path_course (
  num int(11) NOT NULL ,
  path_id int(11) NOT NULL,
  course_id int(11) NOT NULL,
  course_order int(11) DEFAULT NULL,
  PRIMARY KEY (num)) ;

INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (1,1,19,1);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (2,1,20,2);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (3,1,3,3);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (4,1,13,4);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (5,1,2,5);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (6,2,11,1);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (7,2,4,2);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (8,2,14,3);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (9,2,12,4);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (10,2,2,5);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (11,3,2,1);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (12,3,13,2);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (13,3,3,3);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (14,3,4,4);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (15,3,5,5);
INSERT INTO path_course (`num`,`path_id`,`course_id`,`course_order`) VALUES (16,3,7,6);

CREATE TABLE cycle (
  cycle_id int(11) NOT NULL ,
  start_date datetime NOT NULL,
  cycle_type enum('morning','evening') NOT NULL,
  PRIMARY KEY (cycle_id)) ;

INSERT INTO cycle (`cycle_id`,`start_date`,`cycle_type`) VALUES (1,'2020-01-29 10:30:00','morning');
INSERT INTO cycle (`cycle_id`,`start_date`,`cycle_type`) VALUES (2,'2020-04-29 18:00:00','evening');
INSERT INTO cycle (`cycle_id`,`start_date`,`cycle_type`) VALUES (3,'2020-12-01 18:00:00','evening');
INSERT INTO cycle (`cycle_id`,`start_date`,`cycle_type`) VALUES (4,'2019-10-20 10:30:00','morning');
INSERT INTO cycle (`cycle_id`,`start_date`,`cycle_type`) VALUES (5,'2019-06-25 10:30:00','morning');
INSERT INTO cycle (`cycle_id`,`start_date`,`cycle_type`) VALUES (6,'2020-04-10 10:30:00','morning');
INSERT INTO cycle (`cycle_id`,`start_date`,`cycle_type`) VALUES (7,'2020-07-15 18:00:00','evening');

CREATE TABLE cycle_course (
  num int(11) NOT NULL,
  cycle_id int(11) NOT NULL,
  course_id int(11) NOT NULL,
  teacher_id int(11) NOT NULL,
  start_date datetime NOT NULL,
  PRIMARY KEY (num));
  
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (1,2,19,121627387,'2020-04-29 18:00:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (2,2,20,91273890,'2020-06-10 18:00:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (3,2,3,123768673,'2020-07-15 18:00:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (4,2,13,213245000,'2020-08-16 18:00:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (5,2,2,235172817,'2020-09-06 18:00:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (6,1,11,676732901,'2020-01-29 10:30:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (7,1,4,213245000,'2020-02-12 10:30:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (8,1,14,123768673,'2020-02-20 10:30:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (9,1,12,676732901,'2020-03-05 10:30:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (10,1,2,235172817,'2020-03-11 10:30:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (11,4,2,235172817,'2019-10-20 18:00:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (12,4,13,213245000,'2019-10-29 18:00:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (13,4,3,123768673,'2019-11-19 18:00:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (14,4,4,213245000,'2019-12-10 18:00:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (15,4,5,235172817,'2019-12-19 18:00:00');
INSERT INTO cycle_course (`num`,`cycle_id`,`course_id`,`teacher_id`,`start_date`) VALUES (16,4,7,121627387,'2019-12-29 18:00:00');

CREATE TABLE lesson (
  num int(11) NOT NULL ,
  cycle_id int(11) NOT NULL,
  course_id int(11) NOT NULL,
  lesson_number int(11) DEFAULT NULL,
  lesson_date datetime DEFAULT NULL,
  PRIMARY KEY (num)
) ;

INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (1,2,19,1,'2020-04-29 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (2,2,19,2,'2020-05-03 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (3,2,19,3,'2020-05-06 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (4,2,19,4,'2020-05-10 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (5,2,19,5,'2020-05-13 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (6,2,19,6,'2020-05-17 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (7,2,19,7,'2020-05-20 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (8,2,19,8,'2020-05-24 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (9,2,19,9,'2020-05-27 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (10,2,19,10,'2020-05-31 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (11,2,19,11,'2020-06-03 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (12,2,19,12,'2020-06-07 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (13,2,20,1,'2020-06-10 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (14,2,20,2,'2020-06-14 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (15,2,20,3,'2020-06-17 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (16,2,20,4,'2020-06-21 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (17,2,20,5,'2020-06-24 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (18,2,20,6,'2020-06-28 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (19,2,20,7,'2020-07-01 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (20,2,20,8,'2020-07-05 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (21,2,20,9,'2020-07-08 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (22,2,20,10,'2020-07-12 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (23,2,3,1,'2020-07-15 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (24,2,3,2,'2020-07-19 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (25,2,3,3,'2020-07-22 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (26,2,3,4,'2020-07-26 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (27,2,3,5,'2020-07-29 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (28,2,3,6,'2020-08-02 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (29,2,3,7,'2020-08-05 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (30,2,3,8,'2020-08-09 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (31,2,3,9,'2020-08-12 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (32,2,13,1,'2020-08-16 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (33,2,13,2,'2020-08-19 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (34,2,13,3,'2020-08-20 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (35,2,13,4,'2020-08-23 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (36,2,13,5,'2020-08-26 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (37,2,13,6,'2020-08-27 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (38,2,13,7,'2020-08-30 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (39,2,13,8,'2020-09-02 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (40,2,13,9,'2020-09-03 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (41,2,2,1,'2020-09-06 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (42,2,2,2,'2020-09-09 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (43,2,2,3,'2020-09-10 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (44,2,2,4,'2020-09-13 18:00:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (45,1,11,1,'2020-01-29 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (46,1,11,2,'2020-01-30 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (47,1,11,3,'2020-02-02 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (48,1,11,4,'2020-02-05 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (49,1,11,5,'2020-02-06 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (50,1,11,6,'2020-02-09 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (51,1,4,1,'2020-02-12 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (52,1,4,2,'2020-02-13 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (53,1,4,3,'2020-02-16 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (54,1,4,4,'2020-02-19 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (55,1,14,1,'2020-02-20 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (56,1,14,2,'2020-02-23 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (57,1,14,3,'2020-02-26 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (58,1,14,4,'2020-02-27 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (59,1,14,5,'2020-03-01 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (60,1,14,6,'2020-03-04 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (61,1,12,1,'2020-03-05 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (62,1,12,2,'2020-03-08 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (63,1,2,1,'2020-03-11 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (64,1,2,2,'2020-03-12 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (65,1,2,3,'2020-03-15 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (66,1,2,4,'2020-03-18 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (67,4,2,1,'2019-10-20 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (68,4,2,2,'2019-10-22 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (69,4,2,3,'2019-10-24 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (70,4,2,4,'2019-10-27 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (71,4,13,1,'2019-10-29 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (72,4,13,2,'2019-10-31 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (73,4,13,3,'2019-11-03 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (74,4,13,4,'2019-11-05 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (75,4,13,5,'2019-11-07 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (76,4,13,6,'2019-11-10 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (77,4,13,7,'2019-11-12 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (78,4,13,8,'2019-11-14 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (79,4,13,9,'2019-11-17 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (80,4,3,1,'2019-11-19 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (81,4,3,2,'2019-11-21 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (82,4,3,3,'2019-11-24 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (83,4,3,4,'2019-11-26 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (84,4,3,5,'2019-11-28 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (85,4,3,6,'2019-12-01 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (86,4,3,7,'2019-12-03 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (87,4,3,8,'2019-12-05 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (88,4,3,9,'2019-12-08 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (89,4,4,1,'2019-12-10 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (90,4,4,2,'2019-12-12 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (91,4,4,3,'2019-12-15 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (92,4,4,4,'2019-12-17 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (93,4,5,1,'2019-12-19 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (94,4,5,2,'2019-12-22 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (95,4,5,3,'2019-12-24 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (96,4,5,4,'2019-12-26 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (97,4,7,1,'2019-12-29 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (98,4,7,2,'2019-12-31 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (99,4,7,3,'2020-01-02 10:30:00');
INSERT INTO lesson (`num`,`cycle_id`,`course_id`,`lesson_number`,`lesson_date`) VALUES (100,4,13,11,'2020-01-02 10:30:00');

CREATE TABLE attendance (
  num int(11) NOT NULL,
  cycle_id int(11) NOT NULL,
  course_id int(11) NOT NULL,
  student_id int(11) NOT NULL,
  lesson_number int(11) DEFAULT NULL,
  attendance enum('yes','no') NOT NULL,
  PRIMARY KEY (num));

INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (1,1,11,123456789,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (2,1,11,123456789,2,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (3,1,11,123456789,3,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (4,1,11,123456789,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (5,1,11,123456789,5,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (6,1,11,123456789,6,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (7,1,4,123456789,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (8,1,4,123456789,2,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (9,1,4,123456789,3,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (10,1,4,123456789,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (11,1,14,123456789,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (12,1,14,123456789,2,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (13,1,14,123456789,3,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (14,1,14,123456789,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (15,1,14,123456789,5,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (16,1,14,123456789,6,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (17,1,12,123456789,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (18,1,12,123456789,2,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (19,1,2,123456789,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (20,1,2,123456789,2,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (21,1,2,123456789,3,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (22,1,2,123456789,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (23,2,3,123561237,1,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (24,2,3,123561237,2,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (25,2,3,123561237,3,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (26,2,3,123561237,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (27,2,3,123561237,5,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (28,2,3,123561237,6,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (29,2,3,123561237,7,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (30,2,3,123561237,8,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (31,2,3,123561237,9,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (32,2,20,123561237,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (33,2,20,123561237,2,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (34,2,20,123561237,3,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (35,2,20,123561237,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (36,2,20,123561237,5,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (37,2,20,123561237,6,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (38,2,20,123561237,7,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (39,2,20,123561237,8,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (40,2,20,123561237,9,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (41,2,20,123561237,10,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (42,2,13,123561237,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (43,2,13,123561237,2,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (44,2,13,123561237,3,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (45,2,13,123561237,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (46,2,13,123561237,5,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (47,2,13,123561237,6,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (48,2,13,123561237,7,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (49,2,13,123561237,8,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (50,2,13,123561237,9,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (51,2,2,123561237,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (52,2,2,123561237,2,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (53,2,2,123561237,3,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (54,2,2,123561237,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (55,2,19,123561237,1,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (56,2,19,123561237,2,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (57,2,19,123561237,3,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (58,2,19,123561237,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (59,2,19,123561237,5,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (60,2,19,123561237,6,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (61,2,19,123561237,7,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (62,2,19,123561237,8,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (63,2,19,123561237,9,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (64,2,19,123561237,10,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (65,2,19,123561237,11,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (66,2,19,123561237,12,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (67,4,2,128934675,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (68,4,2,128934675,2,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (69,4,2,128934675,3,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (70,4,2,128934675,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (71,4,4,128934675,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (72,4,4,128934675,2,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (73,4,4,128934675,3,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (74,4,4,128934675,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (75,4,13,128934675,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (76,4,13,128934675,2,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (77,4,13,128934675,3,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (78,4,13,128934675,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (79,4,13,128934675,5,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (80,4,13,128934675,6,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (81,4,13,128934675,7,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (82,4,13,128934675,8,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (83,4,13,128934675,9,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (84,4,3,128934675,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (85,4,3,128934675,2,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (86,4,3,128934675,3,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (87,4,3,128934675,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (88,4,3,128934675,5,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (89,4,3,128934675,6,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (90,4,3,128934675,7,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (91,4,3,128934675,8,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (92,4,3,128934675,9,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (93,4,5,128934675,1,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (94,4,5,128934675,2,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (95,4,5,128934675,3,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (96,4,5,128934675,4,'yes');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (97,4,7,128934675,1,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (98,4,7,128934675,2,'no');
INSERT INTO attendance (`num`,`cycle_id`,`course_id`,`student_id`,`lesson_number`,`attendance`) VALUES (99,4,7,128934675,3,'yes');

SELECT * FROM teacher;
SELECT * FROM student;
SELECT * FROM path;
SELECT * FROM course;
SELECT * FROM path_course;
SELECT * FROM cycle;
SELECT * FROM cycle_course;
SELECT * FROM lesson;
SELECT * FROM attendance;

#General

#1. Number of courses per path (list hours per each course) 
	############################################################
	# all courses in all the paths 
    	############################################################
	select p.path_id, p.path_name, c.course_id, c.course_name, c.hours from path_course as ps 
	left join  course as c on c.course_id = ps.course_id
	left join path as p on p.path_id = ps.path_id
	group by p.path_id, c.course_id
	order by p.path_id;
	
    	############################################################
	# all courses in spesific path 
    	############################################################
	select p.path_id, p.path_name, c.course_id, c.course_name, c.hours from path_course as ps 
	left join  course as c on c.course_id = ps.course_id
	left join path as p on p.path_id = ps.path_id
	where p.path_id = 1
	group by c.course_id;

#2. The number of hours in a path 

	select p.path_id, p.path_name, sum(c.hours) as total_hours from path_course as ps 
	left join  course as c on ps.course_id = c.course_id
	left join path as p on p.path_id = ps.path_id
	group by p.path_name;

#3. Student course list 

	########################################################################################################################
   	 # dont forget to run the variable for current date - works for both answers
    	########################################################################################################################
    
   
	set @current_D = (select CURDATE());
    
    	############################################################
	# for all students
    	############################################################
	select distinct  s.student_id, concat(s.fname," ", s.lname) as students, c.course_id, c.course_name, date(cc.start_date) as start_date,  
    	date_format(cc.start_date,'%H:%i')  as time, max(date(l.lesson_date)) as end_date, y.was_in_class, max(a.lesson_number) as total_lesson_of_course, 
		CASE
		WHEN @current_D <  date(cc.start_date)
			THEN 'not started yet'
		WHEN  @current_D < max(date(l.lesson_date))
			THEN 'on going'
		WHEN max(date(l.lesson_date)) < @current_D
			THEN 'course ended'
	END AS status
    	from cycle_course as cc
	left join
	(
		select cycle_id, course_id, count(attendance) as was_in_class  from attendance
		where attendance = "yes"
		group by cycle_id ,course_id
	) as y on y.course_id = cc.course_id and  y.cycle_id = cc.cycle_id
	left join attendance as a on a.course_id = cc.course_id and a.cycle_id = cc.cycle_id
	left join student as s on s.cycle = cc.cycle_id
	left join course as c on c.course_id = cc.course_id 
    	left join lesson as l on l.course_id = cc.course_id 
	group by a.cycle_id, a.course_id,  s.student_id 
	order by s.student_id, cc.start_date;

	
    	############################################################
   	 # Specific Student
    	############################################################
    	select distinct  s.student_id, concat(s.fname," ", s.lname) as students, c.course_id, c.course_name, date(cc.start_date) as start_date,  
   	 date_format(cc.start_date,'%H:%i')  as time, max(date(l.lesson_date)) as end_date, y.was_in_class, max(a.lesson_number) as total_lesson_of_course, 
	CASE
		WHEN @current_D <  date(cc.start_date)
			THEN 'not started yet'
		WHEN  @current_D < max(date(l.lesson_date))
			THEN 'on going'
		WHEN max(date(l.lesson_date)) < @current_D
			THEN 'course ended'
	END AS status
    	from cycle_course as cc
	left join
	(
		select cycle_id, course_id, count(attendance) as was_in_class  from attendance
		where attendance = "yes"
		group by cycle_id ,course_id
	) as y on y.course_id = cc.course_id and  y.cycle_id = cc.cycle_id
	left join attendance as a on a.course_id = cc.course_id
	left join student as s on s.cycle = cc.cycle_id
	left join course as c on c.course_id = cc.course_id
    	left join lesson as l on l.course_id = cc.course_id
    	where s.student_id = "124576798"
	group by a.course_id, a.cycle_id
	order by cc.start_date;

#4. Teacher course list (like in Student Portal)
	############################################################
	# for all teachers
    	############################################################
	select t.teacher_id, concat(t.fname," ", t.lname) as teacher, cc.num, cc.cycle_id, cc.course_id, c.course_name, cc.start_date, c.hours, count(s.student_id) as total_students_in_course from cycle_course as cc
	left join student as s on s.cycle = cc.cycle_id
	left join course as c on c.course_id = cc.course_id
	left join teacher as t on t.teacher_id = cc.teacher_id
	group by t.teacher_id, course_id
	order by t.teacher_id, cc.start_date;
	
    	############################################################
    	# spesific teacher
    	############################################################
	select t.teacher_id, concat(t.fname," ", t.lname) as teacher, cc.num, cc.cycle_id, cc.course_id, c.course_name, cc.start_date, c.hours, count(s.student_id) as total_students_in_course from cycle_course as cc
	left join student as s on s.cycle = cc.cycle_id
	left join course as c on c.course_id = cc.course_id
	left join teacher as t on t.teacher_id = cc.teacher_id
	where t.teacher_id = "676732901"
	group by t.teacher_id, course_id
	order by t.teacher_id, cc.start_date;

#5. Teacher hours (10 h per lesson)
	
    	############################################################
    	# teachers hours 
	############################################################
    	select  t.teacher_id, concat(t.fname," ", t.lname) as teacher, count(l.lesson_number) as all_lessons, count(l.lesson_number)*10 as hours_per_lesson from cycle_course as cc
	left join teacher as t on t.teacher_id = cc.teacher_id
	left join course as c on c.course_id = cc.course_id
	left join lesson as l on l.course_id = cc.course_id and l.cycle_id = cc.cycle_id
	group by t.teacher_id;
    
	##################################################################
    	# teacher hours  by course - if courses are payed differently
	##################################################################
    	select  t.teacher_id, t.fname, t.lname, c.course_name, count(l.lesson_number) as all_lessones, count(l.lesson_number)*10 as hours_per_lesson from cycle_course as cc
	left join teacher as t on t.teacher_id = cc.teacher_id
	left join course as c on c.course_id = cc.course_id
	left join lesson as l on l.course_id = cc.course_id
	group by t.teacher_id, cc.course_id
	order by t.teacher_id;

#Calendar plan 

#1. Student calendar plan (like in Student Portal)
	
    	############################################################
	# spesific studnet
    	############################################################
	select cc.cycle_id, s.student_id, concat(s.fname," ", s.lname) as student, c.course_name, l.lesson_number, day(l.lesson_date) as day, month(l.lesson_date) as month, year(l.lesson_date) as year,  concat(t.fname," ", t.lname) as teacher from cycle_course as cc
	left join  student as s on s.cycle = cc.cycle_id
	left join lesson as l on l.course_id = cc.course_id
	left join course as c on c.course_id = cc.course_id
	left join teacher as t on t.teacher_id = cc.teacher_id
	where s.student_id = "123456789"
	order by l.lesson_date;

	############################################################
    	# for all students
    	############################################################
	select cc.cycle_id, c.course_id, c.course_name, s.student_id, concat(s.fname," ", s.lname) as student,  l.lesson_number,
    	day(l.lesson_date) as day, month(l.lesson_date) as month, year(l.lesson_date) as year, concat(t.fname," ", t.lname) as teacher from cycle_course as cc
	left join  student as s on s.cycle = cc.cycle_id
	left join lesson as l on l.course_id = cc.course_id
	left join course as c on c.course_id = cc.course_id
	left join teacher as t on t.teacher_id = cc.teacher_id
	order by s.student_id, l.lesson_date;

#2. Teacher calendar plan (like in Student Portal)

	############################################################
    	# all teachers
    	############################################################
	select cc.cycle_id, c.course_id, c.course_name, t.teacher_id, concat(t.fname," ", t.lname) as teacher, date(l.lesson_date) as date, date_format(l.lesson_date,'%H:%i') as hour, l.lesson_number from cycle_course as cc
	left join course as c on c.course_id = cc.course_id
	left join lesson as l on l.course_id = cc.course_id and l.cycle_id = cc.cycle_id
	left join teacher as t on t.teacher_id = cc.teacher_id
	order by t.teacher_id, l.lesson_date;

#3. Start date and end date of the cycles 
	
    	############################################################
	# start and end date of cycles - that has an end date
    	############################################################
	select cc.cycle_id, date(cc.start_date) as start_date, date_format(cc.start_date,'%H:%i') as first_lesson_start_hour,
    	max(date(l.lesson_date)) as end_date, date_format(l.lesson_date,'%H:%i')  as last_lesson_start_hour from cycle_course as cc
	left join lesson as l on l.course_id = cc.course_id
	where cc.cycle_id = l.cycle_id
	group by l.cycle_id
	order by l.cycle_id;
    
    	#####################################################################################
    	# start and end date of all cycles - also those that dont have end date
    	#####################################################################################
	select * from cycle as cy
	left join 
    	(
		select l.cycle_id, max(date(l.lesson_date)) as end_date, date_format(l.lesson_date,'%H:%i')  as last_lesson_start_hour from lesson as l
		group by l.cycle_id
	) as l on cy.cycle_id = l.cycle_id;
	
    	############################################################
	# start and end date of specific cycle
    	############################################################
	select cc.cycle_id, date(cc.start_date) as start_date, date_format(cc.start_date,'%H:%i') as first_lesson_start_hour,
	max(date(l.lesson_date)) as end_date, date_format(l.lesson_date,'%H:%i')  as last_lesson_start_hour from cycle_course as cc
	left join lesson as l on l.course_id = cc.course_id
	where cc.cycle_id  = "2" and  l.cycle_id  = "2";

#4. Calculate examination date of each course (last calendar date)
	
    	############################################################
	# exam dates of all cycle and course
    	############################################################
	select cc.cycle_id, cc.course_id, c.course_name, max(date(l.lesson_date)) as exam_day, date_format(l.lesson_date,'%H:%i') as exam_starts from cycle_course as cc
	left join lesson as l on l.course_id = cc.course_id
	left join teacher as t on t.teacher_id = cc.teacher_id
	left join course as c on c.course_id = cc.course_id
	group by cc.cycle_id, cc.course_id
	order by cc.cycle_id, cc.course_id, l.lesson_date;
	
    	############################################################
	# exam dates of all courses on a spesific cycle
    	############################################################
	select cc.cycle_id, cc.course_id, c.course_name, max(date(l.lesson_date)) as exam_day, date_format(l.lesson_date,'%H:%i') as exam_starts from cycle_course as cc
	left join lesson as l on l.course_id = cc.course_id
	left join teacher as t on t.teacher_id = cc.teacher_id
	left join course as c on c.course_id = cc.course_id
	where cc.cycle_id  = "2" 
	group by cc.course_id
	order by exam_day;


#5. Schedule for each month, including the date, course name, teacher, lesson number, start time and end time 
    
    #lesson length - assuming it is 4 h as on currently in class

	############################################################
	# all lessons orderd by year - month
    	############################################################
	select distinct cc.course_id, c.course_name, l.lesson_number, concat(t.fname," ", t.lname) as teacher, day(l.lesson_date) as day, month(l.lesson_date) as month, year(l.lesson_date) as year, date_format(l.lesson_date,'%H:%i') as class_starts, date_format(date_add(l.lesson_date,interval 4 hour),'%H:%i') as class_ends from cycle_course as cc
	left join teacher as t on t.teacher_id = cc.teacher_id
	left join lesson as l on l.course_id = cc.course_id and l.cycle_id = cc.cycle_id
	left join course as c on c.course_id = cc.course_id
	order by date (l.lesson_date);
    
    	############################################################
	# all lessons on spesific month and  year
    	############################################################
	select distinct cc.course_id, c.course_name, l.lesson_number, concat(t.fname," ", t.lname) as teacher, day(l.lesson_date) as day, month(l.lesson_date) as month, year(l.lesson_date) as year, 
	day(l.lesson_date) as day,date_format(l.lesson_date,'%H:%i') as class_starts, date_format(date_add(l.lesson_date,interval 4 hour),'%H:%i') as class_ends from cycle_course as cc
	left join teacher as t on t.teacher_id = cc.teacher_id
	left join lesson as l on l.course_id = cc.course_id and l.cycle_id = cc.cycle_id
	left join course as c on c.course_id = cc.course_id
	where month(l.lesson_date) = "1" and year(l.lesson_date) = "2020";

#Calendar plan

#1. List of students by calendar day by teacher per cycle 
	
    	#####################################################################################################################################
	# show spesific students who learn in the class of "2020-04-29 18:00:00" and the teacher is "121627387" and his cycle is "2"
    	#####################################################################################################################################
	select cc.cycle_id, concat(t.fname, " ", t.lname) as teacher, concat(s.fname," ", s.lname) as student, c.course_name, day(l.lesson_date) as day, 
    	month(l.lesson_date) as month, year(l.lesson_date) as year from cycle_course as cc
	left join student as s on s.cycle = cc.cycle_id
	left join teacher as t on t.teacher_id = cc.teacher_id
	left join lesson as l on l.course_id = cc.course_id
	left join course as c on c.course_id = cc.course_id
	where date(l.lesson_date) = "2020-04-29";

	#####################################################################################################################################
	# showing the lessons the cycle of the lesson, the teacher teaching the lesson, student list of the lesson, and the lesson date.
    	#####################################################################################################################################
	select cc.cycle_id, concat(t.fname, " ", t.lname) as teacher, concat(s.fname," ", s.lname) as student, c.course_name, day(l.lesson_date) as day,
    	month(l.lesson_date) as month, year(l.lesson_date) as year from cycle_course as cc
	left join student as s on s.cycle = cc.cycle_id
	left join teacher as t on t.teacher_id = cc.teacher_id
	left join lesson as l on l.course_id = cc.course_id
	left join course as c on c.course_id = cc.course_id
	order by l.lesson_date, cc.cycle_id;

#2. Number of students in courses for each calendar day to check class capacity
	
    	#####################################################################################################################################
	# how many students will come to the school per spesific day and spesific hour
    	#####################################################################################################################################
	select day(l.lesson_date) as day, month(l.lesson_date) as month, year(l.lesson_date) as year , date_format(l.lesson_date,'%H:%i') as hour, 
    cc.cycle_id, c.course_id, c.course_name, count(s.student_id) as how_many_student_today from cycle_course as cc
	left join student as s on s.cycle = cc.cycle_id
	left join lesson as l on l.course_id = cc.course_id and l.cycle_id = cc.cycle_id
	left join course as c on c.course_id = cc.course_id
	group by cc.cycle_id, cc.course_id, date(l.lesson_date)
	order by cc.cycle_id, l.lesson_date;

#3. Attendance , number of lessons for each specialty in numbers per student
	
    	#####################################################################################################################################
	# attetndance for spesific course and spesific cycle
	#####################################################################################################################################
	select a.cycle_id, a.course_id, c.course_name, s.student_id, concat(s.fname, " ", lname) as student, y.was_in_class, max(a.lesson_number) as total_lesson_of_course from attendance as a
	left join
	(
		select cycle_id, course_id, count(attendance) as was_in_class from attendance
		where attendance = "yes"
		group by cycle_id ,course_id
	) as y on y.course_id = a.course_id and  y.cycle_id = a.cycle_id
	left join course as c on c.course_id = a.course_id
	left join student as s on s.student_id = a.student_id
	where a.course_id = 4 and a.cycle_id = 1;
	
    	#####################################################################################################################################
	# attendance for all cycle and courses
    	#####################################################################################################################################
	select a.cycle_id, a.course_id, c.course_name, s.student_id,s.student_id, concat(s.fname, " ", lname) as student, y.was_in_class, count(a.lesson_number) as total_lesson_of_course from attendance as a
	left join
	(
		select cycle_id, course_id, count(attendance) as was_in_class from attendance
		where attendance = "yes"
		group by cycle_id ,course_id
	) as y on y.course_id = a.course_id and  y.cycle_id = a.cycle_id
	left join course as c on c.course_id = a.course_id
	left join student as s on s.student_id = a.student_id
	group by a.course_id, a.cycle_id;


#4. Percentage of students attendance by course

	#####################################################################################################################################
	# attetndance for spesific course and spesific cycle
	#####################################################################################################################################
	select a.cycle_id, a.course_id, c.course_name, s.student_id, concat(s.fname, " ", lname) as student, y.was_in_class, 
	max(a.lesson_number) as total_lesson_of_course, concat(round(( y.was_in_class/max(a.lesson_number)*100 ),2),'%') as attendance_percentage from attendance as a
	left join
	(
		select cycle_id, course_id, count(attendance) as was_in_class from attendance
		where attendance = "yes"
		group by cycle_id ,course_id
	) as y on y.course_id = a.course_id and  y.cycle_id = a.cycle_id
	left join course as c on c.course_id = a.course_id
	left join student as s on s.student_id = a.student_id
	where a.course_id = 13 and a.cycle_id = 4;

	#####################################################################################################################################
	# attendance for all cycle and courses
	#####################################################################################################################################
	select a.cycle_id, a.course_id, c.course_name, s.student_id, concat(s.fname, " ", lname) as student, y.was_in_class, 
	max(a.lesson_number) as total_lesson_of_course, concat(round(( y.was_in_class/max(a.lesson_number)*100 ),2),'%') as attendance_percentage from attendance as a
	left join
	(
		select cycle_id, course_id, count(attendance) as was_in_class from attendance
		where attendance = "yes"
		group by cycle_id ,course_id
	) as y on y.course_id = a.course_id and  y.cycle_id = a.cycle_id
	left join course as c on c.course_id = a.course_id
	left join student as s on s.student_id = a.student_id
	group by a.cycle_id, a.course_id, student_id;


  
