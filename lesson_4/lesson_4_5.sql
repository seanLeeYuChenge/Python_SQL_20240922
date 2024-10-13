CREATE TABLE payment1 (
    payment_id SERIAL PRIMARY KEY,
    staff_id INT,
    customer_id INT,
    payment_date TIMESTAMP,
    amount DECIMAL(10, 2)
);

INSERT INTO payment1 (staff_id, customer_id, payment_date, amount) VALUES
(1, 101, '2024-10-01 10:00:00', 150.00),
(1, 102, '2024-10-01 11:00:00', 200.00),
(2, 101, '2024-10-02 09:00:00', 300.00),
(2, 103, '2024-10-02 15:30:00', 100.00),
(3, 102, '2024-10-03 14:00:00', 250.00),
(1, 103, '2024-10-04 10:00:00', 175.00),
(3, 101, '2024-10-04 16:00:00', 125.00);

SELECT *
FROM payment1;

SELECT staff_id,COUNT(payment_id) as 訂單總合
FROM payment1
GROUP BY staff_id;

/*取出每個員工,在每一個客戶的訂單金額總合*/
SELECT staff_id,customer_id,SUM(amount)
FROM payment1
GROUP BY staff_id,customer_id
ORDER BY customer_id;

/*取出每日訂單的總合*/
/* cast operator */
SELECT payment_date::date AS 日期, SUM(amount) AS 總合
FROM payment1
GROUP BY 日期
ORDER BY 日期;