show databases;
create database school;
use school;
show tables;
create table students(
student_id int unique not null auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
age int not null,
primary key(student_id));

create table classes(
class_id int unique not null auto_increment,
subject varchar(50) not null,
description varchar(50) not null,
level int not null,
primary key(class_id));

create table classes2(
class_id int unique not null auto_increment,
subject varchar(50) not null,
description varchar(50) not null,
level int not null,
primary key(class_id));


create table enrollment(
enrollment_id int unique not null auto_increment,
fk_student_id int not null,
fk_class_id int not null,
fk_class_id_2 int not null,
primary key(enrollment_id),
foreign key(fk_student_id) references students(student_id),
foreign key(fk_class_id) references classes(class_id),
foreign key(fk_class_id_2) references classes2(class_id));

select * from students;
insert into students(student_id,first_name,last_name,age) values("80701", "Richard", "Ulti", 13),("80702", "Vinny", "Whoon", 13),("80703", "Micheal", "Drake", 13),("80704", "Esma", "Margert", 12),("80705", "Hanoo", "Beyta", 13);

select * from classes;
insert into classes(class_id,subject,description,level) values("00631", "Maths", "Study of logic", 5),("00632", "English", "Study of literacy", 5),("00633", "Science", "Study of test", 3),("00634", "Language", "Study of diverse communication", 2),("00635", "P.E", "Study of body", 1);

select * from classes2;
insert into classes2(class_id,subject,description,level) values("00631", "Maths", "Study of logic", 5),("00632", "English", "Study of literacy", 5),("00633", "Science", "Study of test", 3),("00634", "Language", "Study of diverse communication", 2),("00635", "P.E", "Study of body", 1);

select * from enrollment;
insert into enrollment(enrollment_id,fk_student_id,fk_class_id,fk_class_id_2) values("1", "80701", "00631","00633"),("2", "80702", "00632","00631"),("3", "80703", "00633","00635"),("4", "80704", "00634","00632"),("5", "80705", "00635","00633");

select first_name from students where student_id=(select fk_student_id from enrollment where enrollment_id=1);