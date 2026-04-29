SELECT  office_code,
        branch_code,
        COUNT(*) AS product_count
FROM branch_products
GROUP BY office_code, branch_code
ORDER BY product_count DESC
LIMIT 1;