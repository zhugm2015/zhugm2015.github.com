DROP TABLE IF EXISTS design.dept;
CREATE TABLE design.dept (
  id   INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS design.student;
CREATE TABLE design.student (
  id      INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name    VARCHAR(255),
  dept_id INT(11) UNSIGNED
);

ALTER TABLE design.student
ADD CONSTRAINT fk_student_dept_id FOREIGN KEY (dept_id) REFERENCES design.dept (id);

ALTER TABLE design.student
DROP FOREIGN KEY fk_student_dept_id;

DESC design.student;
DESC design.dept;
SHOW FULL COLUMNS FROM design.student;

INSERT INTO design.dept VALUES (NULL, 'EE');
INSERT INTO design.dept VALUES (NULL, 'CS');
INSERT INTO design.dept VALUES (NULL, 'SS');
DELETE FROM design.dept
WHERE dname IS NULL;
SELECT *
FROM design.dept;

INSERT INTO design.student VALUES (NULL, 's001', 1);
INSERT INTO design.student VALUES (NULL, 's002', 2);
INSERT INTO design.student VALUES (NULL, 's003', NULL);
INSERT INTO design.student VALUES (NULL, 's003', 0);
SELECT *
FROM design.student;

ALTER TABLE design.student
CHANGE dname sname VARCHAR(255);
DESC design.student;
ALTER TABLE design.dept
CHANGE name dname VARCHAR(255);
DESC design.dept;

SELECT
  s.sname,
  d.dname
FROM design.student s, design.dept d
WHERE d.id = s.dept_id;

SELECT
  s.sname,
  d.dname
FROM design.student s INNER JOIN design.dept d ON s.dept_id = d.id;

SELECT
  s.sname,
  d.dname
FROM design.student s LEFT JOIN design.dept d ON s.dept_id = d.id;

SELECT
  s.sname,
  d.dname
FROM design.student s RIGHT JOIN design.dept d ON s.dept_id = d.id;

CREATE TABLE design.student_backup
    SELECT *
    FROM design.student;

DROP TABLE design.student_backup;

CREATE TABLE design.student_backup
  AS SELECT *
     FROM design.student;

CREATE TABLE scott.emp_backup
  AS SELECT
       empno,
       ename,
       deptno
     FROM scott.emp;

DESC scott.emp;
SELECT * FROM scott.emp_backup;