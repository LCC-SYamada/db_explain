SELECT branches.office_code,
       branches.branch_code,
       COUNT(*) AS max_count
FROM branches
INNER JOIN branch_products
ON branches.office_code = branch_products.office_code
AND branches.branch_code = branch_products.branch_code
GROUP BY branches.office_code, branches.branch_code
HAVING COUNT(*) >= (
  SELECT MAX(product_count)
  FROM ( SELECT branches.office_code,
                branches.branch_code,
                COUNT(*) AS product_count
          FROM branches
          INNER JOIN branch_products
          ON branches.office_code = branch_products.office_code
          AND branches.branch_code = branch_products.branch_code
          GROUP BY branches.office_code, branches.branch_code
          ) AS tmp
);