CREATE TABLE sales (
    transaction_id INTEGER PRIMARY KEY,
    store_name VARCHAR(50),
    customer_name VARCHAR(50),
    employee_id INTEGER,
    transaction_date DATE,
    product_name VARCHAR(50),
    product_category VARCHAR(50),
    sales_amount DECIMAL(10, 2),
    performance_review_score INTEGER
);

INSERT INTO sales (transaction_id, store_name, customer_name, employee_id, transaction_date, product_name, product_category, sales_amount, performance_review_score)
VALUES
(1, 'Store A', 'John Smith', 101, '2022-01-01', 'Product 1', 'Category A', 100.00, 4),
(2, 'Store B', 'Jane Doe', 102, '2022-01-02', 'Product 2', 'Category B', 50.00, 3),
(3, 'Store C', 'Bob Johnson', 103, '2022-01-03', 'Product 1', 'Category A', 75.00, 3),
(4, 'Store A', 'Sarah Lee', 101, '2022-01-04', 'Product 3', 'Category C', 125.00, 5),
(5, 'Store B', 'Tim Jones', 102, '2022-01-05', 'Product 2', 'Category B', 75.00, 4),
(6, 'Store C', 'Samantha Smith', 103, '2022-01-06', 'Product 1', 'Category A', 100.00, 4),
(7, 'Store A', 'Tom Johnson', 101, '2022-01-07', 'Product 4', 'Category D', 200.00, 5),
(8, 'Store B', 'Alexis Davis', 102, '2022-01-08', 'Product 5', 'Category E', 150.00, 4),
(9, 'Store C', 'John Johnson', 103, '2022-01-09', 'Product 2', 'Category B', 50.00, 3),
(10, 'Store A', 'Emily Lee', 101, '2022-01-10', 'Product 3', 'Category C', 100.00, 4),
(11, 'Store B', 'Tommy Lee', 102, '2022-01-11', 'Product 1', 'Category A', 75.00, 3),
(12, 'Store C', 'Sarah Johnson', 103, '2022-01-12', 'Product 5', 'Category E', 175.00, 5),
(13, 'Store A', 'James Johnson', 101, '2022-01-13', 'Product 4', 'Category D', 225.00, 5),
(14, 'Store B', 'Linda Davis', 102, '2022-01-14', 'Product 3', 'Category C', 125.00, 4),
(15, 'Store C', 'Alex Johnson', 103, '2022-01-15', 'Product 2', 'Category B', 50.00, 3),
(16, 'Store A', 'Susan Lee', 101, '2022-01-16', 'Product 1', 'Category A', 100.00, 4),
(17, 'Store B', 'George Smith', 102, '2022-01-17', 'Product 5', 'Category E', 200.00, 5),
(18, 'Store C', 'Sam Davis', 103, '2022-01-18', 'Product 4', 'Category D', 175.00, 5),
(19, 'Store A', 'Chris Johnson', 101, '2022-01-19', 'Product 2', 'Category B', 50.00, 3),
(20, 'Store B', 'Rachel Lee', 102, '2022-01-20', 'Product 1', 'Category A', 75.00, 4),
(21, 'Store C', 'Ethan Davis', 103, '2022-01-21', 'Product 5', 'Category E', 175.00, 5),
(22, 'Store A', 'Sophia Johnson', 101, '2022-01-22', 'Product 3', 'Category C', 100.00, 4),
(23, 'Store B', 'Luke Lee', 102, '2022-01-23', 'Product 4', 'Category D', 125.00, 4);

-- List the three stores with the highest number of customer transactions

SELECT store_name, COUNT(*) as num_transactions FROM sales
GROUP BY store_name
ORDER BY num_transactions DESC
LIMIT 3;

-- Extract employee IDs for all employees who earned a three or higher on their last performance review

SELECT * FROM sales
WHERE performance_review_score >= 3;

-- Calculate the average monthly sales by product displayed in descending order

SELECT product_name, AVG(sales_amount) as avg_monthly_sales
FROM sales
GROUP BY product_name
ORDER BY avg_monthly_sales DESC;

-- Find and remove duplicates in the table without creating another table

SELECT DISTINCT store_name FROM sales;
 
-- Creating another table for joining 
CREATE TABLE orders (
    order_id INT NOT NULL AUTO_INCREMENT,
    customer_name VARCHAR(50) NOT NULL,
    employee_id INT NOT NULL,
    order_date DATE NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_category VARCHAR(50) NOT NULL,
    order_amount DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (employee_id) REFERENCES sales(transaction_id)
);


INSERT INTO orders (customer_name, employee_id, order_date, product_name, product_category, order_amount)
VALUES
('John Smith', 101, '2022-01-01', 'Product 1', 'Category A', 50.00),
('Sarah Johnson', 102, '2022-01-02', 'Product 2', 'Category B', 75.00),
('David Lee', 103, '2022-01-03', 'Product 3', 'Category C', 100.00),
('Emily Davis', 101, '2022-01-04', 'Product 4', 'Category D', 125.00),
('Michael Brown', 102, '2022-01-05', 'Product 5', 'Category E', 150.00),
('Harper Wilson', 101, '2022-01-16', 'Product 1', 'Category A', 50.00),
('Alexander Martinez', 102, '2022-01-17', 'Product 2', 'Category B', 75.00),
('Evelyn Davis', 103, '2022-01-18', 'Product 3', 'Category C', 100.00),
('Benjamin Hernandez', 101, '2022-01-19', 'Product 4', 'Category D', 125.00),
('Abigail Davis', 102, '2022-01-20', 'Product 5', 'Category E', 150.00),
('Lucas Garcia', 103, '2022-01-21', 'Product 1', 'Category A', 50.00),
('Charlotte Rodriguez', 101, '2022-01-22', 'Product 2', 'Category B', 75.00),
('Madison Brown', 102, '2022-01-23', 'Product 3', 'Category C', 100.00),
('Mason Wilson', 103, '2022-01-24', 'Product 4', 'Category D', 125.00),
('Elizabeth Martinez', 101, '2022-01-25', 'Product 5', 'Category E', 150.00),
('Ethan Davis', 102, '2022-01-26', 'Product 1', 'Category A', 50.00),
('Avery Hernandez', 103, '2022-01-27', 'Product 2', 'Category B', 75.00),
('Emma Davis', 101, '2022-01-28', 'Product 3', 'Category C', 100.00),
('Noah Garcia', 102, '2022-01-29', 'Product 4', 'Category D', 125.00),
('Mia Rodriguez', 103, '2022-01-30', 'Product 5', 'Category E', 150.00);



-- Identify the common records between two tables

SELECT * FROM sales
INNER JOIN orders
ON sales.product_name = orders.product_name;
