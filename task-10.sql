-- YOUR SOLUTION HERE
SELECT
    EXTRACT(YEAR FROM orders.order_date) AS year,
    EXTRACT(MONTH FROM orders.order_date) AS month,
    COUNT(orders.order_id) AS order_count,
    CAST(SUM(order_details.quantity * (order_details.unit_price - order_details.discount * order_details.unit_price)) AS INTEGER) AS revenue
FROM orders
    JOIN order_details ON orders.order_id = order_details.order_id
WHERE EXTRACT(YEAR FROM orders.order_date) = 1997
GROUP BY
    EXTRACT(YEAR FROM orders.order_date),
    EXTRACT(MONTH FROM orders.order_date)
ORDER BY year, month;