CREATE DATABASE demo1;
# DROP DATABASE demo1;
CREATE TABLE demo1.Persons (
  Id_P      INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  LastName  VARCHAR(11),
  FirstName VARCHAR(11),
  City      VARCHAR(11)
);

ALTER TABLE demo1.Persons ADD Birthday DATE;
ALTER TABLE demo1.Persons ADD Age INT;
ALTER TABLE demo1.Persons DROP COLUMN Birthday;

DROP TABLE demo1.Persons;
INSERT INTO demo1.Persons VALUES (1, 'Adams', 'John', 'BJ');
INSERT INTO demo1.Persons VALUES (2, 'Bush', 'Gergo', 'SH');
INSERT INTO demo1.Persons VALUES (3, 'Carter', 'Thomas', 'BJ');

UPDATE demo1.Persons
SET Birthday = '1980-01-10'
WHERE LastName = 'Bush';
UPDATE demo1.Persons
SET Birthday = '1985-10-12', City = 'BJ'
WHERE LastName = 'Carter';
UPDATE demo1.Persons
SET Age = 25
WHERE LastName = 'Adams';

SELECT *
FROM demo1.Persons;
SELECT City
FROM demo1.Persons;
SELECT DISTINCT City
FROM demo1.Persons;
SELECT *
FROM demo1.Persons
WHERE Age = 25;
SELECT *
FROM demo1.Persons
WHERE FirstName = 'Gergo' AND LastName = 'Bush';
SELECT *
FROM demo1.Persons
WHERE LastName = 'Bush' OR FirstName = 'John';
SELECT FirstName
FROM demo1.Persons
ORDER BY FirstName;
SELECT *
FROM demo1.Persons
LIMIT 2;
SELECT *
FROM demo1.Persons
WHERE City NOT LIKE '%J';
SELECT *
FROM demo1.Persons
WHERE FirstName LIKE '%o%';
SELECT *
FROM demo1.Persons
WHERE FirstName LIKE '_ohn';
SELECT *
FROM demo1.Persons
WHERE LastName IN ('Admas', 'Carter');
SELECT *
FROM demo1.Persons
WHERE LastName BETWEEN 'Admas' AND 'Carter';
SELECT
  LastName  AS family,
  FirstName AS Name
FROM demo1.Persons;
SELECT
  lastName,
  FirstName,
  Birthday
FROM demo1.persons
WHERE Birthday IS NULL;

CREATE TABLE demo1.Orders (
  Id_O    INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  OrderNo INT NOT NULL,
  Id_P    INT(11) UNSIGNED  #外键数据类型要与主键的一致
  #   FOREIGN KEY (Id_P) REFERENCES Persons(Id_P)
);
ALTER TABLE demo1.Orders ADD CONSTRAINT fk_orders_Id_P FOREIGN KEY (Id_P) REFERENCES demo1.Persons (Id_P);
#追加外键
ALTER TABLE demo1.Orders DROP FOREIGN KEY fk_orders_Id_P;
#删除外键
DROP TABLE demo1.Orders;

INSERT INTO demo1.Orders VALUES (1, 123454, 3);
INSERT INTO demo1.Orders VALUES (2, 112454, 3);
INSERT INTO demo1.Orders VALUES (3, 874552, 1);

DESC demo1.Orders;
SELECT *
FROM demo1.Orders;

CREATE TABLE demo1.Products (
  P_Id         INT(11) NOT NULL,
  ProductName  VARCHAR(11),
  UnitPrice    INT(11),
  UnitsInStock INT(11),
  UnitsOnOrder INT(11)
);
INSERT INTO demo1.Products VALUES (1, 'computer', 699, 25, 15);
INSERT INTO demo1.Products VALUES (2, 'printer', 365, 36, NULL);
INSERT INTO demo1.Products VALUES (3, 'telephone', 280, 159, 57);
SELECT *
FROM demo1.Products;
SELECT
  ProductName,
  UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
FROM demo1.Products;
DROP TABLE demo1.Products;
#创建索引
CREATE INDEX PersonIndex ON demo1.Persons (LastName, FirstName, City);
SHOW INDEX FROM demo1.Persons;
DROP INDEX PersonIndex ON demo1.Persons;

#查询两个表
SELECT
  persons.LastName,
  persons.FirstName,
  orders.orderno
FROM demo1.Persons, demo1.Orders
WHERE Persons.Id_P = Orders.Id_P;

#使用别名简化程序
SELECT
  P.LastName,
  P.FirstName,
  O.orderno
FROM demo1.Persons P, demo1.Orders O
WHERE P.Id_P = O.Id_P;

#使用INNER JOIN进行查询
SELECT
  P.LastName,
  P.FirstName,
  O.orderno
FROM demo1.Persons P INNER JOIN demo1.Orders O
    ON P.Id_P = O.Id_P;

#select into创建表的备份复件
CREATE TABLE demo1.new_persons
  AS SELECT
       Id_P,
       LastName
     FROM demo1.Persons;
CREATE TABLE demo1.new_orders
  AS SELECT *
     FROM demo1.Orders;
SELECT *
FROM demo1.new_persons;
SELECT *
FROM demo1.Orders;

#create view创建视图
CREATE VIEW demo1.view_product AS
  SELECT
    ProductName,
    UnitPrice
  FROM demo1.Products;
SELECT * FROM demo1.view_product;
SHOW CREATE VIEW demo1.view_product;
