use lesson3;

CREATE TABLE staff_2
(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
firstname VARCHAR(20) NOT NULL,
lastname VARCHAR(20) NOT NULL,
post VARCHAR(20) NOT NULL,
seniority INT,
salary INT NOT NULL,
age INT);

INSERT staff_2
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

SELECT DISTINCT firstname FROM staff_2;

SELECT * FROM staff_2
ORDER BY id DESC
LIMIT 2;

SELECT * FROM staff_2
ORDER BY id
LIMIT 4,3;

SELECT * FROM staff_2
ORDER BY id DESC
LIMIT 2, 3;

SELECT COUNT(*)
FROM staff_2
WHERE post = 'рабочий';

SELECT SUM(salary)
FROM staff_2
WHERE post = 'начальник';

SELECT AVG(age)
FROM staff_2
WHERE salary > 30000;

SELECT MIN(salary), MAX(salary)
FROM staff_2;

CREATE TABLE activity_staff
(id INT AUTO_INCREMENT PRIMARY KEY,
staff_id INT NOT NULL,
date_activity DATE,
count_pages INT,
FOREIGN KEY (staff_id) REFERENCES staff_2 (id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO activity_staff
(staff_id, date_activity, count_pages)
VALUES 
(1,'2022-01-01', 250),
(2,'2022-01-01', 220),
(3, '2022-01-01', 170),
(1, '2022-01-02', 100),
(2, '2022-01-02', 220),
(3, '2022-01-02', 300),
(7, '2022-01-02', 350),
(1, '2022-01-03', 168),
(2, '2022-01-03', 62),
(3, '2022-01-03', 84);

SELECT staff_id, SUM(count_pages)
FROM activity_staff
GROUP BY staff_id;

SELECT date_activity, SUM(count_pages)
FROM activity_staff
group by date_activity;

SELECT date_activity, AVG(count_pages)
FROM activity_staff
group by date_activity;

SELECT
CASE
	WHEN age < 20 THEN 'младше 20'
    WHEN age BETWEEN 20 AND 40  THEN 'от 20 до 40'
    WHEN age > 40 THEN 'старше 40'
END AS info_age,
SUM(salary)
FROM staff_2
group by age;

