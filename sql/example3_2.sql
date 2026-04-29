SELECT branches.office_code,
       branches.branch_code,
       COUNT(*) OVER (PARTITION BY branches.office_code, branches.branch_code) AS product_count
FROM branches
INNER JOIN branch_products
ON branches.office_code = branch_products.office_code
AND branches.branch_code = branch_products.branch_code
ORDER BY product_count DESC
LIMIT 1;