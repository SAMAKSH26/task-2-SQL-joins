--I created two tables 
-- Customer(customer_id,FirstName,LastName,city,country,phone)
-- orders(order_id,order_date,customerId,totalAmount,orderNumber)


SELECT DISTINCT * FROM customer
SELECT DISTINCT * FROM orders

--inner join
SELECT C.customer_id, C.firstName,C.lastName,C.city,C.country,O.order_id, O.orderDate FROM customer C
INNER JOIN orders O
ON C.customer_id=O.customerId

--it gives the data of customers having at least one order


--RIGHT JOIN
SELECT C.customer_id, C.firstName,C.lastName,C.city,C.country,O.order_id, O.orderDate FROM customer C
RIGHT JOIN orders O
ON C.customer_id=O.customerId

--it gives data of all orders


--LEFT JOIN
SELECT C.customer_id, C.firstName,C.lastName,C.city,C.country,O.order_id, O.orderDate FROM customer C
LEFT JOIN orders O
ON C.customer_id=O.customerId

--it gives data of all customers


--FULL OUTER JOIN 
SELECT C.customer_id, C.firstName,C.lastName,C.city,C.country,O.order_id, O.orderDate FROM customer C
FULL OUTER JOIN orders O
ON C.customer_id=O.customerId

--it gives data of all orders and all customers