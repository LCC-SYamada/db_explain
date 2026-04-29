SELECT  branches.office_code,
        branches.branch_code,
        COUNT(*) AS product_count
FROM branches
INNER JOIN branch_products
ON branch_products.branch_code = branches.branch_code
AND branch_products.office_code = branches.office_code
GROUP BY branches.office_code, branches.branch_code
ORDER BY product_count DESC
LIMIT 1;