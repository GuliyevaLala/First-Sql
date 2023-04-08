create database Course;

use Course;

create table Users(
[Id] int,
[Name] nvarchar(255),
[Surname] nvarchar(255),
[Age] int,
[Email] nvarchar (255),
[IsDeleted] bit default 0
)

create table Teachers(
[Id] int,
[FullName] nvarchar(255),
[Age] int,
[Email] nvarchar (255),
[Address] nvarchar (255),
[IsDeleted] bit default 0
)

create table Educations(
[Id] int,
[Name] nvarchar(255))


insert into Users  (Id, Name, Surname, Age, Email, IsDeleted)
values (1, 'Safiya', 'Salamova', 18, 'salamzadeh@gmail.com',1),
(2, 'Hasan', 'Novruzzada', 18, 'hassan@gmail.com', 1),
(3, 'Ehed', 'Tagiyev', 21, 'ahad1123@gmail.com',1),
(4, 'Nurlan', 'Mammadli', 22, 'nurlanmle@gmail.com',1),
(5, 'Fidan', 'Selim', 28, 'selimf@gmail.com',1)


insert into Teachers  (Id, FullName, Age, Email,Address, IsDeleted)
values (1, 'Kamran Jabiyev', 30, 'jabiyev@gmail.com','Papanin',1),
(2, 'Javid Bashirov', 28, 'javid93@gmail.com','Ahmedli', 1),
(3, 'Lala Quliyeva', 26, 'lalaig@gmail.com','Nasimi',1),
(4, 'Kamran Abdullayev', 34, 'abdullayeff@gmail.com','Narimanov', 1),
(5, 'Nurxan Masimzade', 22, 'masimzade@gmail.com','Ajami',1)


insert into Educations(Id, Name)
values (1, 'Software Development'),
(2,'UX and UI design'),
(3, 'Marketing')


select * from Educations
select * from Teachers
select * from Users

select *from Users where Age <20

select *from Users where Age <20

select count(Id) from Users

select count (*) from Users

select *from Teachers where Age <30

select *from Teachers where IsDeleted = 1;

update Teachers set IsDeleted = 1 where Id = 3;