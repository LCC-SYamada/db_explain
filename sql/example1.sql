SELECT  product_categories.product_category_code,
        product_categories.name,
        COUNT(*) AS product_count
FROM product_categories
INNER JOIN products 
ON product_categories.product_category_code = products.product_category_code
GROUP BY product_categories.product_category_code, product_categories.name;