Obtain all shoes of a particular brand (e.g., "Nike"):
SELECT * FROM shoes.shoes 
WHERE brand_shoe_id = (
    SELECT brand_shoe_id FROM shoes.brands_shoes WHERE name = 'Nike'
    );

Obtain the average age of customers:
SELECT AVG(EXTRACT(YEAR FROM age(year_of_birth))) FROM clients.clients;

Obtain customers who have a particular address:
SELECT * FROM clients.clients WHERE address LIKE '%avez%';

Obtain the name of the brand and the quantity of shoes available:
SELECT bs.name, SUM(s.quantity) AS total_quantity 
FROM shoes.brands_shoes bs 
INNER JOIN shoes.shoes s 
ON bs.brand_shoe_id = s.brand_shoe_id 
GROUP BY bs.name;

Obtain the number of sales for each customer:
SELECT c.name, COUNT(*) AS total_sales 
FROM clients.clients c 
INNER JOIN sales.sales s 
ON c.client_id = s.client_id 
GROUP BY c.name;

Obtain customers who have made a purchase for an amount greater than or equal to $500:
SELECT c.* FROM clients.clients c 
INNER JOIN sales.sales s 
ON c.client_id = s.client_id 
WHERE s.amount >= 500;

Get shoes priced between $50 and $100:
SELECT * FROM shoes.shoes WHERE price BETWEEN 50 AND 100;

Obtain the employees who have made sales for an amount greater than or equal to the average amount of sales made:
SELECT * FROM employees.employees e 
WHERE e.employee_id IN (
  SELECT s.employee_id FROM sales.sales s 
  GROUP BY s.employee_id 
  HAVING AVG(s.amount) <= (
    SELECT AVG(s2.amount) FROM sales.sales s2
  )
);

Obtain "Adidas" brand shoes that have less than 10 units available:
SELECT * FROM shoes.shoes s 
WHERE s.brand_shoe_id = (
  SELECT brand_shoe_id FROM shoes.brands_shoes WHERE name = 'Adidas'
) AND s.quantity < 10;


Obtain the employees who have made sales for an amount greater than or equal to the highest sale made by another employee:
SELECT * FROM employees.employees e 
WHERE e.employee_id IN (
  SELECT s.employee_id FROM sales.sales s 
  WHERE s.amount >= (
    SELECT MAX(s2.amount) FROM sales.sales s2 
    WHERE s2.employee_id <> s.employee_id
  )
);

Obtain the shoes that have been sold more than once and their quantity sold:
SELECT s.name, s.color, s.size, COUNT(*) as total_sales 
FROM shoes.shoes s 
INNER JOIN sales.sales ss 
ON s.shoe_id = ss.shoe_id 
GROUP BY s.name, s.color, s.size 
HAVING COUNT(*) > 1;

Obtain the employees who have made sales for an amount greater than or 
equal to the average amount of sales made and who have sold "Nike" brand shoes. and who have sold "Nike" brand shoes:

SELECT * FROM employees.employees e 
WHERE e.employee_id IN (
  SELECT s.employee_id FROM sales.sales s 
  WHERE s.amount >= (
    SELECT AVG(s2.amount) FROM sales.sales s2
  ) AND s.shoe_id IN (
    SELECT shoe_id FROM shoes.shoes 
    WHERE brand_shoe_id = (
      SELECT brand_shoe_id FROM shoes.brands_shoes WHERE name = 'Nike'
    )
  )
);

To obtain the customers who have made purchases for an amount greater 
than or equal to the average amount of sales made by an employee and who in turn have purchased "Puma" brand shoes. 
by an employee and who in turn have purchased "Puma" brand shoes:
SELECT * FROM clients.clients c 
WHERE c.client_id IN (
  SELECT s.client_id FROM sales.sales s 
  WHERE s.amount >= (
    SELECT AVG(s2.amount) FROM sales.sales s2 
    WHERE s2.employee_id = (
      SELECT employee_id FROM employees.employees 
      WHERE name = 'Juan Perez'
    )
  ) AND s.shoe_id IN (
    SELECT shoe_id FROM shoes.shoes 
    WHERE brand_shoe_id = (
      SELECT brand_shoe_id FROM shoes.brands_shoes WHERE name = 'Puma'
    )
  )
);

Obtain shoes that have been sold by employees born after 1990:
SELECT * FROM shoes.shoes s 
WHERE s.shoe_id IN (
  SELECT ss.shoe_id FROM sales.sales ss 
  WHERE ss.employee_id IN (
    SELECT e.employee_id FROM employees.employees e 
    WHERE EXTRACT(YEAR FROM e.year_of_birth) > 1990
  )
);
