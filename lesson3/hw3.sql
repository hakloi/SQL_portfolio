use hw3;

CREATE TABLE staff
(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
firstname VARCHAR(20) NOT NULL,
lastname VARCHAR(20) NOT NULL,
post VARCHAR(20) NOT NULL,
seniority INT,
salary INT NOT NULL,
age INT);

INSERT staff
(firstname, lastname, post, seniority, salary, age)
VALUES
('Вася', 'Васькин', 'начальник', 40, 100000, 60),
('Петя', 'Петькин', 'начальник', 8, 70000, 30),
('Катя', 'Катькина', 'инженер', 2, 70000, 25),
('Саша', 'Сашкин', 'инженер', 12, 50000, 35),
('Иван', 'Иванов', 'рабочий', 40, 30000, 59),
('Петр', 'Петров', 'рабочий', 20, 25000, 40),
('Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'рабочий', 8, 19000, 28),
('Юра', 'Юркин', 'рабочий', 5, 15000, 25),
('Максим', 'Воронин', 'рабочий', 2, 11000, 22),
('Юра', 'Галкин', 'рабочий', 3, 12000, 24),
('Люся', 'Люськина', 'уборщик', 10, 10000, 49);

-- Отсортируйте данные по полю заработная плата (salary) в порядке убывания;
SELECT * FROM staff
ORDER BY salary DESC;

-- Отсортируйте данные по полю заработная плата (salary) в порядке возрастания;
SELECT * FROM staff
ORDER BY salary;

-- Выведите 5 максимальных заработных плат (saraly)
SELECT * FROM staff
ORDER BY salary DESC
LIMIT 5;

-- Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
SELECT post, SUM(salary)
FROM staff
GROUP BY post;

/*
Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте
от 24 до 49 лет включительно.
*/
SELECT COUNT(*)
FROM staff
WHERE post = "Рабочий" AND age BETWEEN 24 AND 50;

/*
Найдите количество специальностей
*/
SELECT COUNT(*)
from (select distinct post from staff) as temp;