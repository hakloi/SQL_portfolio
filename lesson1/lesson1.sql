use lesson1;

CREATE TABLE teachers(
idteacher int primary key not null auto_increment,
name_teacher varchar(40), course varchar(40),
post varchar(40));

CREATE TABLE courses(
idcourse int primary key not null auto_increment,
name_course varchar(40), name_teacher varchar(40),
name_student varchar(40));

INSERT student(name,email,phone) VALUES ("Serveev", "serg@mail.ru", "8944942334"), ("Pirogova", "pir@mail.ru", "8944456834"),("Kluev", "warthunder@mail.ru", "8945465334"), ("Belova", "serggg@mail.ru", "89456566664");

SELECT * FROM student;

INSERT teachers(name,course) VALUES ("Patrusheva", "Compute Science"), ("Kireev", "Java"),("Kulish", "History");

SELECT * FROM teachers;

SELECT * FROM student where name = "Kluev";
SELECT * FROM student where name LIKE "%u%";

-- комментарий 

SELECT * FROM student where "grant" != 100;