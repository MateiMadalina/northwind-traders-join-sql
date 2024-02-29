-- TASK:
-- Create a query that shows which product is made by which company. Lists products and their suppliers.
-- Display the product_name and the company_name of the supplier. Name result columns as product and company respectively.
-- Order the results alphabetically by product_name and by company_name.

SELECT products.product_name AS product, suppliers.company_name AS company
FROM products
JOIN suppliers ON products.supplier_id = suppliers.supplier_id
ORDER BY product, company;