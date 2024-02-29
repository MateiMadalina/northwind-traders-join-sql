-- TASK:
-- List everyproduct_nameand thecompany_name and contact_nameof the suppliers belonging to them distinctively, and sort them alphabetically by product name.

SELECT products.product_name, suppliers.company_name, suppliers.contact_name
FROM products
JOIN suppliers ON products.supplier_id = suppliers.supplier_id
ORDER BY products.product_name;