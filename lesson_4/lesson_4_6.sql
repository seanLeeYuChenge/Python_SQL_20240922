SELECT *
FROM payment;


SELECT customer_id,SUM(amount) AS 總合
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;



SELECT store_id ,COUNT(customer_id) AS 數量
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;

/*subquery*/
CREATE TABLE country (
    country_id SERIAL PRIMARY KEY,
    country VARCHAR(50)
);

CREATE TABLE city (
    city_id SERIAL PRIMARY KEY,
    city VARCHAR(50),
    country_id INT REFERENCES country(country_id)
);

-- 插入 country 表数据
INSERT INTO country (country) VALUES
('Taiwan'),
('USA'),
('Japan');

-- 插入 city 表数据
INSERT INTO city (city, country_id) VALUES
('Taipei', 1),
('Kaohsiung', 1),
('New York', 2),
('Los Angeles', 2),
('Tokyo', 3),
('Osaka', 3);

SELECT *
FROM country;

SELECT country_id
FROM country
WHERE country='Taiwan';

SELECT city
FROM city
WHERE country_id = 92;

SELECT city
FROM city
WHERE country_id = (
	SELECT country_id
	FROM country
	WHERE country='Taiwan'
);

SELECT city
FROM city JOIN country ON city.country_id = country.country_id
WHERE country = 'Taiwan';