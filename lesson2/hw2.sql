use hw2;

/* Используя операторы языка SQL, создайте табличку “sales”.
Заполните ее данными
*/

CREATE TABLE sales
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
order_date DATE NOT NULL,
count_product INT DEFAULT '0'
);

INSERT INTO `sales`
(order_date, count_product)
VALUES 
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

/* Сгруппируйте значений количества в 3 сегмента
меньше 100, 100-300 и больше 300.
*/

SELECT 
	id as 'Номер',
IF (count_product < 100, 'Маленький заказ', 
	IF (count_product BETWEEN 100 AND 300, 'Средний заказ', 'Большой заказ'))
as 'Тип заказа'
FROM sales;

/* Создайте таблицу “orders”, заполните ее значениями.
Покажите “полный” статус заказа, используя оператор CASE
*/

CREATE TABLE orders
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
employee_id VARCHAR(5) NOT NULL UNIQUE DEFAULT 'e00',
amount FLOAT(7,2) NOT NULL DEFAULT '0.00',
order_status VARCHAR(10) NOT NULL DEFAULT 'OPEN'
);

INSERT INTO orders
(employee_id, amount, order_status)
VALUES 
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');

SELECT 
	id as 'Номер заказа',
    employee_id AS 'Номер заказчика',
    order_status AS 'Статус',
	CASE order_status
		WHEN 'OPEN' THEN 'Order in the open state'
		WHEN 'CLOSED' THEN 'Order is closed'
		WHEN 'CANCELLED' THEN 'Order is cancelled'
		ELSE 'No information!'
	END AS 'Комментарий'
FROM orders;