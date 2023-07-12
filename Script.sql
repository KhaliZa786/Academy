CREATE database academy


CREATE table academy.Groups
(id int not null auto_increment primary key,
 Name varchar(10) not null unique,
 Rating int not null,
 constraint CHK_Rating check(Rating>=0 and Rating<=5),
 Year int not null, 
 constraint CHK_Year check (Year>=1 and Year<=5)
);

CREATE table academy.Departments
(id int auto_increment not null primary key,
Financing decimal not null,
constraint CHK_Financing check(Financing>0),
Name varchar(100) not null unique
);

CREATE table academy.Faculties
(id int auto_increment not null primary key,
Name varchar(100)not null unique
);

drop table academy.Teachers;
CREATE TABLE academy.Teachers (
  `id` int NOT NULL AUTO_INCREMENT,
  `EmploymentDate` date NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Premium` decimal(10,0) NOT NULL,
  `Salary` decimal(10,0) NOT NULL,
  `Surname` varchar(200) NOT NULL,
  isAssistant bit not null default 0,
  isProfessor bit not null default 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `CHK_EmploymentData` CHECK ((`EmploymentDate` >= _utf8mb4'1990-01-01')),
  CONSTRAINT `CHK_Premium` CHECK ((`Premium` > 0)),
  CONSTRAINT `CHK_Salary` CHECK ((`Salary` >= 0))
);

drop table academy.Faculties;
CREATE TABLE academy.Faculties (
  id int NOT NULL AUTO_INCREMENT,
  Name varchar(100) NOT NULL,
  Dean varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`Name`)
);

drop table academy.Teachers;

CREATE TABLE academy.Teachers (
  `id` int NOT NULL AUTO_INCREMENT,
  `EmploymentDate` date NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Premium` decimal(10,0) NOT NULL,
  `Salary` decimal(10,0) NOT NULL,
  `Surname` varchar(200) NOT NULL,
  `isAssistant` bit(1) NOT NULL DEFAULT b'0',
  `isProfessor` bit(1) NOT NULL DEFAULT b'0',
   Position varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `CHK_EmploymentData` CHECK ((`EmploymentDate` >= _utf8mb4'1990-01-01')),
  CONSTRAINT `CHK_Premium` CHECK ((`Premium` > 0)),
  CONSTRAINT `CHK_Salary` CHECK ((`Salary` >= 0))
);

insert into academy.Faculties(Name,Dean) values ('Экономики','Клименко');
insert into academy.Faculties(Name, Dean) values ('Права','Шатрова');
insert into academy.Faculties(Name, Dean) values ('Технологический','Каменская');
insert into academy.Faculties(Name, Dean) values ('Информационных технологий','Шишков');
insert into academy.Faculties(Name, Dean) values ('Computer Science','Орлов');


INSERT into academy.Departments (Financing , Name) values (1000000, 'Международное право');
INSERT into academy.Departments (Financing , Name) values (1000000, 'Уголовное право');
INSERT into academy.Departments (Financing , Name) values (1000000, 'Радиотехника');
INSERT into academy.Departments (Financing , Name) values (1000000, 'Разработка ПО');


insert into academy.Groups (Name,Rating,Year) values ('001М',5,3);
insert into academy.Groups (Name,Rating,Year) values ('002В',5,2);
insert into academy.Groups (Name,Rating,Year) values ('003П',5,1);
insert into academy.Groups (Name,Rating,Year) values ('004Д',5,4);

drop table academy.Groups

insert into academy.Teachers (EmploymentDate,Name,Premium,Salary,Surname,isAssistant,isProfessor,Position) values ('2017-04-10','Ирина',35000,760000,'Петрова',1,0);
insert into academy.Teachers (EmploymentDate,Name,Premium,Salary,Surname,isAssistant,isProfessor) values ('2015-08-20','Василий',25000,280000, 'Иванов',0,1);
insert into academy.Teachers (EmploymentDate,Name,Premium,Salary,Surname,isAssistant,isProfessor) values ('2010-09-19','Дмитрий',9000,350000, 'Сидоров',0,1);
insert into academy.Teachers (EmploymentDate,Name,Premium,Salary,Surname,isAssistant,isProfessor) values ('2008-06-18','Сергей',15000,150000, 'Павлов',1,0);

insert into academy.Teachers (EmploymentDate,Name,Premium,Salary,Surname,isAssistant,isProfessor, Position) values ('2017-04-10','Ирина',35000,760000,'Петрова',1,0, 'доцент');
insert into academy.Teachers (EmploymentDate,Name,Premium,Salary,Surname,isAssistant,isProfessor, Position) values ('2015-08-20','Василий',25000,280000, 'Иванов',0,1, 'доцент');
insert into academy.Teachers (EmploymentDate,Name,Premium,Salary,Surname,isAssistant,isProfessor, Position) values ('2010-09-19','Дмитрий',9000,350000, 'Сидоров',0,1, 'старший преподаватель');
insert into academy.Teachers (EmploymentDate,Name,Premium,Salary,Surname,isAssistant,isProfessor, Position) values ('2008-06-18','Сергей',15000,150000, 'Павлов',1,0, 'старший преподаватель');

INSERT into academy.Departments (Financing , Name) values (1000000, 'Software Development');
