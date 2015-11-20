CREATE DATABASE demo;
/*USE demo;*/
CREATE TABLE demo.student (
  id   INT(11) PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  age  INT(3) UNIQUE,
  sex VARCHAR(11)
);

DROP TABLE demo.student;
SELECT * FROM demo.student;
DELETE FROM demo.student WHERE id=201501;

INSERT INTO demo.student VALUES (201501,'Tom',18,'n');
INSERT INTO demo.student VALUES (201502,'Billy',19,'n');
INSERT INTO demo.student VALUES (201503,'Susan',20,'l');

CREATE TABLE demo.course(
  id INT(11) PRIMARY KEY,
  name VARCHAR(20)
);

INSERT INTO demo.course VALUES (1,'Java SE');
INSERT INTO demo.course VALUES (2,'MySQL');
INSERT INTO demo.course VALUES (3,'Html');

SELECT * FROM demo.course;
DROP TABLE demo.course;

CREATE TABLE demo.sc(
  sid INT(11),
  cid INT(11),
  grade INT(3),
  #联合主键
  #PRIMARY KEY (sid,cid),
  #CONSTRAINT fk_sc_sid FOREIGN KEY (sid) REFERENCES demo.student(id) ON DELETE CASCADE ,#级联
  CONSTRAINT fk_sc_cid FOREIGN KEY (cid) REFERENCES demo.course(id) ON UPDATE SET NULL
);
#shif + 上下键可以选中多行
INSERT INTO demo.sc VALUES (201501,3,NULL);
INSERT INTO demo.sc VALUES (201502,2,NULL);
INSERT INTO demo.sc VALUES (201503,1,NULL);

DROP TABLE demo.sc;
SELECT * FROM demo.sc;


UPDATE demo.student SET name='张三' WHERE name='Tom';


SELECT sex FROM demo.student;
SELECT DISTINCT sex FROM demo.student;

SELECT * FROM demo.student WHERE age <> 19;
SELECT * FROM demo.student WHERE age BETWEEN 18 AND 20;

SELECT id FROM demo.student ORDER BY id;
SELECT id FROM demo.student ORDER BY id DESC;

SELECT * FROM demo.student WHERE name LIKE '%三%';


CREATE TABLE demo.test(
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
  text CHAR(11)
);

DROP TABLE demo.test;
SELECT * FROM demo.test; #del + tab

INSERT INTO demo.test(text) VALUES ('asbfjfj');
