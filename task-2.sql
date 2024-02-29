-- TASK:
-- List the order_id, freight and discount from the orders and order_details tables distinctively!
-- Filter to show only those records, where the customer got a discount (= larger than 0), and order the results by the freight of the ship!

SELECT orders.order_id, freight, order_details.discount
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
WHERE discount > 0
ORDER BY freight;