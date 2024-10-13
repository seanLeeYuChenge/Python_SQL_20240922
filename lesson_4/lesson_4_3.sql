-- 查询所有支付记录
SELECT * FROM public.payment
ORDER BY payment_id ASC;

-- 计算每位客户的支付总额、平均数、笔数、最大和最小支付金额
SELECT customer_id,
    SUM(amount) AS 加總,
    AVG(amount) AS 平均數量,
    COUNT(amount) AS 筆數,
    MAX(amount) AS 最大,
    MIN(amount) AS 最小
FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC;

-- 按支付笔数排序的客户支付统计
SELECT customer_id,
    SUM(amount) AS 加總,
    AVG(amount) AS 平均數量,
    COUNT(amount) AS 筆數,
    MAX(amount) AS 最大,
    MIN(amount) AS 最小
FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) ASC;

-- 按支付笔数升序排序的客户支付统计
SELECT customer_id,
    SUM(amount) AS 加總,
    AVG(amount) AS 平均數量,
    COUNT(amount) AS 筆數,
    MAX(amount) AS 最大,
    MIN(amount) AS 最小
FROM payment
GROUP BY customer_id
ORDER BY 筆數 ASC;

-- 计算每位客户的全名及支付总合
SELECT (first_name || ' ' || last_name) AS full_name, SUM(amount) AS 總合
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
GROUP BY full_name
ORDER BY 總合 DESC;
