DROP DATABASE IF EXISTS design;
CREATE DATABASE design;

DROP TABLE IF EXISTS design.admin;
CREATE TABLE design.admin (
  id       INT(11)UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) COMMENT '用户名',
  password VARCHAR(255) COMMENT '密码'
)
  COMMENT '管理员表';

DROP TABLE IF EXISTS design.activity;
CREATE TABLE design.activity (
  id           INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  activityname VARCHAR(255) COMMENT '活动名称'
)
  COMMENT '活动表';

DROP TABLE IF EXISTS design.enroll;
CREATE TABLE design.enroll (
  id             INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  student_number VARCHAR(255) COMMENT '学号',
  student_name   VARCHAR(255) COMMENT '姓名',
  activity_id    INT(11) UNSIGNED COMMENT 'FK 活动id'
)
  COMMENT '活动表';
# 追加enroll的外键
ALTER TABLE design.enroll
ADD CONSTRAINT fk_enroll_activity_id FOREIGN KEY (activity_id) REFERENCES design.activity (id);
DESC design.enroll;

# login 登录
SELECT * FROM design.admin WHERE username='' AND password='';

# create activity 创建活动
INSERT INTO design.activity VALUES (NULL,'');

# delete activity 删除活动
DELETE FROM design.activity WHERE id=1;

# enroll
INSERT INTO design.enroll VALUES (NULL, '001', 'zhangsan', 1);

SELECT
  student_number,
  student_name,
  activity_id
FROM design.enroll;
