use lesson3;

#create drivers
select * from driver;
create table driver
(
driver_id int not null auto_increment,
name varchar (45) not null,
age int,
car varchar(40),
primary key (driver_id)
);

#change contraint
alter table driver add constraint check(age>=18);

INSERT INTO lesson3.driver 
(`driver_id`, `name`, `age`, `car`)
VALUES 
(1,'John', 20, 'Ford'),
(2, 'Jack', 22, 'Toyota'),
(3, 'Jeff', 30, 'Folksvagen'),
(4, 'Jordan', 23, 'Hunday'),
(5, 'Jeremy', 21, 'Honda'),
(6, 'Jamse', 22, 'Mazda')
;

# not meet constraint - age 17
INSERT INTO lesson3.driver 
(`name`, `age`, `car`)
VALUES
('Aya', 17, 'Ferari')
;

# change age to meet contraint - age = 18
# not meet constraint - age 17
INSERT INTO lesson3.driver 
(`name`, `age`, `car`)
VALUES
('Aya', 18, 'Ferari')
;

#create Tracks
select * from tracks;
create table Tracks
(
track_id int not null auto_increment,
length_in_meters int,
laps int,
difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL,
primary key (track_id)
);

INSERT INTO lesson3.tracks
(`length_in_meters`, `laps`, `difficulty`)
VALUES 
('12200', 3, 'hard'),
("10800", 2, "medium"),
("7087", 1, "easy"),
("26000", 3, "easy"),
("13120", 3, "medium")
;

create table race
(
race_id int not null auto_increment,
track_id int not null,
primary key (race_id)
);


INSERT INTO lesson3.race
(`track_id`)
VALUES 
(1),
(4),
(5),
(1),
(2),
(1),
(3),
(1)
;

create table participants_list
(
race_id int not null,
driver_id int not null,
foreign key (race_id) references lesson3.race(race_id),
foreign key (driver_id) references lesson3.driver(driver_id)
);

insert into participants_list (race_id,driver_id)
values
(1,2), (1,3), (1,1), (1,5),
(2,6), (2,4), (2,5), (2,3),
(3,6), (3,5), (3,2), (3,4),
(4,3), (4,6), (4,4), (4,5),
(5,4), (5,1), (5,3), (5,5),
(6,6), (6,4), (6,5), (6,3),
(7,4), (7,2), (7,5), (7,6);


# Answers:

# Q1 what is the avrage age of the drivers?
select avg(age) from lesson3.driver;
select count(age) as sum_drivers,(sum(age)/count(age)) as avg_age from driver;
select count(age) as sum_drivers,(avg(age)) as avg_age from driver;

# Q2 what is the avrage length of the course?
select avg(length_in_meters) from lesson3.tracks;
select count(length_in_meters) sum_tracks,(avg(length_in_meters)) as avg_length_in_meters from tracks;
select count(length_in_meters) sum_tracks,(sum(length_in_meters)/count(length_in_meters)) as avg_length_in_meters from tracks;

# Q3 what is the most common track.
select * from race;
select track_id, count(*) number_of_uses from lesson3.race
group by track_id;

select track_id, count(*) number_of_uses from lesson3.race
group by track_id
limit 1;

# Q4 what driver paticipates the most.
select * from participants_list;
select driver_id, count(*) as number_of_participates 
from participants_list
group by driver_id
order by driver_id desc;

select driver_id, count(*) as number_of_participates 
from participants_list
group by driver_id
order by driver_id desc
limit 1;

# Q5 what is the most common difficulty.
select * from race;
select * from tracks;
select difficulty,count(*) as most_common from tracks,race where tracks.track_id = race.track_id;

# Q6 how many meters were driven on all the races.
select * from race;
select * from tracks;
select sum(length_in_meters) as total_meters_in_all_races from tracks,race where tracks.track_id = race.track_id;

# Q7 how much is a lap in meters on avrage
select * from tracks;
# במידה ואורך המסלול המוצג מכיל את כל 3 ההקפות
select ((sum(length_in_meters)/sum(laps))/5) as avg_length_in_meters from tracks;
# במידה ואורך המסלול המוצג הוא רק הקפה אחת 
select ((sum(length_in_meters)*sum(laps))/5) as avg_length_in_meters from tracks;
