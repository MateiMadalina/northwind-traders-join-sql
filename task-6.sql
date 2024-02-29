-- -- TASK:
-- List the employees (title_of_courtesy, first_name, last_name concatenated) as employee, and count the number of orders they have handled (orders).
-- Sort by the number of orders descending.

SELECT CONCAT(title_of_courtesy, ' ', first_name, ' ', last_name) AS employee,
COUNT(orders.employee_id) AS orders
FROM employees
JOIN orders ON employees.employee_id = orders.employee_id
GROUP BY employees.title_of_courtesy, employees.first_name, employees.last_name
ORDER BY COUNT(orders.employee_id) DESC;