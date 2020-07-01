create database student_examination_sys;

use student_examination_sys;

create table student (
	id varchar(10) not null,
	name varchar(50),
	age int,
	sex varchar(25),
	primary key(id)
) ENGINE=InnoDB;

insert into student values ("001", "zhangsan", 18, "male");
insert into student values ("002", "lisi", 20, "female");


create table subject (
	id int not null,
	subject varchar(50),
	teacher varchar(50),
	desription varchar(200),
	primary key(id)
) ENGINE=InnoDB;

insert into subject values (1001, "Chinese", "Mr.Wang", "the exam is easy");
insert into subject values (1002, "Math", "Miss Liu", "the exam is difficult");



create table score (
	id int not null,
	student_id varchar(10),
	subject_id int,
	score double,
	primary key(id),
	foreign key(student_id) references student(id),
	foreign key(subject_id) references subject(id)
) ENGINE=InnoDB;

insert into score values (1, "001", 1001, 80);
insert into score values (2, "002", 1002, 60);
insert into score values (3, "001", 1001, 70);
insert into score values (4, "002", 1002, 60.5);
