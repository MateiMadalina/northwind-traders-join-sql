-- TASK
-- Let's take a look on how many employees the company has by region! (Hint: you'll need the employees, employee_territories, territories and region fields to answer correctly.

SELECT COUNT(employees.employee_id) AS count, region.region_description
FROM employees
JOIN employee_territories ON employees.employee_id = employee_territories.employee_id
JOIN territories ON employee_territories.territory_id = territories.territory_id
JOIN region ON territories.region_id = region.region_id
GROUP BY region.region_description;