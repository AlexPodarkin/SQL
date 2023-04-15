USE lesson2;
CREATE TABLE sales
(
id int NOT NULL AUTO_INCREMENT,
order_date DATE NOT NULL,
count_product INT NOT NULL,
PRIMARY KEY (id)
);

USE lesson2;
INSERT INTO sales (order_date, count_product)
VALUES 
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT id AS 'id заказа',
CASE
	WHEN count_product < 100 then 'Маленький заказ'
    WHEN count_product > 100 and count_product < 300 then 'Средний заказ'
    WHEN count_product > 300 then 'Большой заказ'
    ELSE 'не определено'
END AS ' тип заказа'
FROM sales;

USE lesson2;
CREATE TABLE orders
(
id int NOT NULL AUTO_INCREMENT,
employee_id VARCHAR(5),
amount DECIMAL(5,2),
order_status VARCHAR(10),
PRIMARY KEY (id)
);

USE lesson2;
INSERT INTO orders (employee_id, amount, order_status)
VALUES 
('e03', 15.00, 'open'),
('e01', 25.50, 'open'),
('e05', 100.70, 'closed'),
('e02', 22.18, 'open'),
('e04', 9.50, 'cancelled');

SELECT id, employee_id, amount,
CASE order_status
	WHEN 'open' then 'Order is in open state'
	WHEN 'closed' then'Order is closed'
	WHEN 'cancelled' then 'Order is cancelled'
    ELSE 'neizvestno'
END AS 'full_order_status'
FROM orders;
