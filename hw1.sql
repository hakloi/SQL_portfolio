TRUNCATE TABLE mobile_phones;

INSERT mobile_phones
(product_name, manufacturer, product_count, price)
VALUES
("iPhone X","Apple","3","76000"),
("iPhone 8","Apple","2","51000"),
("Galaxy S9","Samsung","2","56000"),
("Galaxy S8","Samsung","1","41000"),
("P20 Pro","Huawei","5","36000");


-- Выведите название, производителя и цену для товаров,
-- количество которых превышает 2
SELECT product_name, manufacturer, price
FROM mobile_phones
WHERE product_count > 2;

-- Выведите весь ассортимент товаров марки “Samsung”
SELECT product_name, manufacturer, product_count, price
FROM mobile_phones
WHERE manufacturer = "Samsung";