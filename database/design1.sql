DROP DATABASE IF EXISTS design;
CREATE DATABASE design;

DROP TABLE IF EXISTS design.admin;
CREATE TABLE design.admin (
  id       INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) COMMENT '用户名',
  password VARCHAR(255) COMMENT '密码'
)
  COMMENT '管理员表';

DROP TABLE IF EXISTS design.activity;
CREATE TABLE design.activity (
  id   INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) COMMENT '活动名称'
)
  COMMENT '活动表';

DROP TABLE IF EXISTS design.enroll;
CREATE TABLE design.enroll (
  id             INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  student_number VARCHAR(255) COMMENT '学号',
  student_name   VARCHAR(255) COMMENT '姓名',
  activity_id    INT(11) UNSIGNED COMMENT 'FK，活动ID'
)
  COMMENT '活动表';

ALTER TABLE design.enroll
ADD CONSTRAINT fk_enroll_activity_id FOREIGN KEY (activity_id) REFERENCES design.activity (id);

# login
SELECT *
FROM design.admin
WHERE username = '' AND password = '';

# create activity
INSERT INTO design.activity VALUES (NULL, '');
# delete activity
DELETE FROM design.activity
WHERE id = 1;

# enroll
INSERT INTO design.enroll VALUES (NULL, '001', 'zhangsan', 1);

SELECT
  student_number,
  student_name,
  activity_id
FROM design.enroll;


#=======================================================================================
CREATE TABLE design.dept (
  id   INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255)
);

DROP TABLE design.dept;

CREATE TABLE design.student (
  id      INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name    VARCHAR(255),
  dept_id INT(11) UNSIGNED
);

ALTER TABLE design.student
ADD CONSTRAINT fk_student_dept_id FOREIGN KEY (dept_id) REFERENCES design.dept (id);

DESC design.student;

ALTER TABLE design.student
DROP FOREIGN KEY fk_student_dept_id;

INSERT INTO design.dept VALUES (NULL, 'EE');
INSERT INTO design.dept VALUES (NULL, 'CS');
INSERT INTO design.dept VALUES (NULL, 'SS');
DELETE FROM design.dept WHERE dname is NULL ;
SELECT *
FROM design.dept;

INSERT INTO design.student VALUES (NULL, 's001', 1);
INSERT INTO design.student VALUES (NULL, 's002', 2);
INSERT INTO design.student VALUES (NULL, 's003', NULL);
INSERT INTO design.student VALUES (NULL, 's003', 0);
SELECT *
FROM design.student;

ALTER TABLE design.dept
CHANGE name dname VARCHAR(255);
DESC design.dept;
ALTER TABLE design.student
CHANGE name sname VARCHAR(255);
DESC design.student;

SELECT
  s.sname,
  d.dname
FROM design.student s, design.dept d
WHERE s.dept_id = d.id;

SELECT
  s.sname,
  d.dname
FROM design.student s
  INNER JOIN design.dept d
    ON s.dept_id = d.id;

SELECT
  s.sname,
  d.dname
FROM design.student s
  LEFT JOIN design.dept d
    ON s.dept_id = d.id;

SELECT
  s.sname,
  d.dname
FROM design.student s
  RIGHT JOIN design.dept d
    ON s.dept_id = d.id;


