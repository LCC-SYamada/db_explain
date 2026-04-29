INSERT INTO offices(office_code, name) VALUES
  ('001','東京'),
  ('002', '大阪');

INSERT INTO branches(office_code, branch_code, name) VALUES
  ('001', '01', '渋谷'),
  ('001', '02', '八重洲'),
  ('002', '01', '堺'),
  ('002', '02', '豊中');

INSERT INTO product_categories(product_category_code, name) VALUES
  ('C1', '水洗用品'),
  ('C2', '食器'),
  ('C3', '書籍'),
  ('C4', '日用雑誌');

INSERT INTO products(product_code, name, product_category_code) VALUES
  ('001', '石鹸', 'C1'),
  ('002', 'タオル', 'C1'),
  ('003', 'ハブラシ', 'C1'),
  ('004', 'コップ', 'C1'),
  ('005', '箸', 'C2'),
  ('006', 'スプーン', 'C2'),
  ('007', '雑誌', 'C3'),
  ('008', '爪切り', 'C4');


INSERT INTO branch_products(office_code, branch_code, product_code) VALUES
  ('001', '01', '001'),
  ('001', '01', '002'),
  ('001', '01', '003'),
  ('001', '02', '002'),
  ('001', '02', '003'),
  ('001', '02', '004'),
  ('001', '02', '005'),
  ('001', '02', '006'),
  ('002', '01', '002'),
  ('002', '01', '007'),
  ('002', '01', '008');