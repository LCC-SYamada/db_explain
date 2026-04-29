CREATE TABLE offices (
  office_code VARCHAR(10) NOT NULL,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (office_code)
);

CREATE TABLE branches (
  office_code VARCHAR(10) NOT NULL,
  branch_code VARCHAR(10) NOT NULL,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (office_code, branch_code),
  CONSTRAINT fk_office 
    FOREIGN KEY(office_code)
    REFERENCES offices(office_code)
    ON DELETE CASCADE
);

CREATE TABLE product_categories (
  product_category_code VARCHAR(10) NOT NULL,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY(product_category_code)
);

CREATE TABLE products (
  product_code VARCHAR(10) NOT NULL,
  name VARCHAR(255) NOT NULL,
  product_category_code VARCHAR(10),
  PRIMARY KEY (product_code),
  CONSTRAINT fk_product_category
    FOREIGN KEY (product_category_code)
    REFERENCES product_categories(product_category_code)
    ON DELETE RESTRICT
);

CREATE TABLE branch_products (
  office_code VARCHAR(10) NOT NULL,
  branch_code VARCHAR(10) NOT NULL,
  product_code VARCHAR(10) NOT NULL,
  PRIMARY KEY (office_code, branch_code, product_code),
  CONSTRAINT fk_branch
    FOREIGN KEY(office_code, branch_code)
    REFERENCES branches(office_code, branch_code)
    ON DELETE CASCADE,
  CONSTRAINT fk_product
    FOREIGN KEY (product_code)
    REFERENCES products(product_code)
    ON DELETE RESTRICT
);