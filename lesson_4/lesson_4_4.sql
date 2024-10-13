CREATE TABLE IF NOT EXISTS customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

-- 创建 payment 表
CREATE TABLE IF NOT EXISTS payment (
    payment_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- 插入 customer 数据
INSERT INTO customer (first_name, last_name) VALUES
('John', 'Doe'),
('Jane', 'Smith'),
('Alice', 'Johnson'),
('Bob', 'Brown');

-- 插入 payment 数据
INSERT INTO payment (customer_id, amount) VALUES
(1, 100.00),
(1, 150.00),
(2, 200.00),
(3, 300.00),
(3, 100.00),
(3, 250.00),
(4, 50.00),
(4, 75.00),
(1, 200.00);
