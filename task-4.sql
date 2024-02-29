-- TASK
-- List every company_name and the state_name of customers from the US using the customersand us_states tables.
-- The list should be ordered alphabetically by the company names.

SELECT DISTINCT customers.company_name AS company_name, us_states.state_name AS state_name
FROM customers
INNER JOIN orders ON customers.customer_id=orders.customer_id
JOIN us_states ON orders.ship_region=us_states.state_abbr
ORDER BY company_name;