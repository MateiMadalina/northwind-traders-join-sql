-- YOUR SOLUTION HERE
SELECT orders.order_id, freight, order_details.discount
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
WHERE discount > 0
ORDER BY freight;