SELECT  offices.name AS office_name,
        branches.name AS branch_name,
        products.name AS product_name
FROM branch_products
INNER JOIN offices
ON offices.office_code = branch_products.office_code
INNER JOIN branches
ON branches.branch_code = branch_products.branch_code
INNER JOIN products
ON products.product_code = branch_products.product_code;