-- TASK:
-- List the best earning products of 1997! To do so, you need to list theproduct name and calculate the sum of the quantity ordered multiplied by their unit_price and (1 - discount), name this number as sum_price.
-- Show the 10 highest earning product in a descending order!

SELECT products.product_name,CAST(SUM(order_details.quantity * order_details.unit_price) AS INTEGER) AS sum_price
FROM order_details
JOIN products ON order_details.product_id = products.product_id
JOIN orders ON order_details.order_id = orders.order_id
WHERE EXTRACT(YEAR FROM orders.order_date) = 1997
GROUP BY products.product_name
ORDER BY sum_price DESC
LIMIT 10;