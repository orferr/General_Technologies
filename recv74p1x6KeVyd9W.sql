-- 1. Вывести среднюю стоимость товаров из категорий 1, 2, 5, у которых название начинается с буквы "t"
SELECT AVG(price) AS average_price
FROM products
WHERE category_id IN (1, 2, 5) AND name LIKE 't';

-- 2. Посчитать стоимость заказа с 10248
SELECT SUM(price) AS total_order_cost
FROM order_details
WHERE order_id = 10248;

-- 3. Вывести количество товаров с ценой от 10 до 250 EUR
SELECT COUNT(*) AS product_count
FROM products
WHERE price BETWEEN 10 AND 250;

-- 4. Вывести сумму, на которую было отправлено товаров клиентам в Germany
SELECT SUM(od.price) AS total_cost_to_germany
FROM order_details od
JOIN orders o ON od.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.country = 'Germany';
