-- YOUR SOLUTION HERE
SELECT products.product_name,CAST(SUM(order_details.quantity * order_details.unit_price) AS INTEGER) AS sum_price
FROM order_details
JOIN products ON order_details.product_id = products.product_id
JOIN orders ON order_details.order_id = orders.order_id
WHERE EXTRACT(YEAR FROM orders.order_date) = 1997
GROUP BY products.product_name
ORDER BY sum_price DESC
LIMIT 10;