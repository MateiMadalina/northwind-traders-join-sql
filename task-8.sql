-- TASK
-- List the order_id, product_name and quantity using the products and order_details tables! Sort them ascending by the order_id and descending by quantity!

SELECT order_details.order_id, products.product_name, order_details.quantity
FROM products
JOIN order_details ON products.product_id = order_details.product_id
ORDER BY order_details.order_id ASC, order_details.quantity DESC;