
CREATE TABLE scott.spring(
  Id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY COMMENT '学号',
  Name VARCHAR(11) COMMENT '姓名',
  Activity VARCHAR(11) COMMENT '参加活动'
)COMMENT '春游项目';

INSERT IGNORE scott.spring VALUES (200929001,'王华','北海公园划船');
INSERT IGNORE scott.spring VALUES (200929002,'李立','登香山');
INSERT IGNORE scott.spring VALUES (200929003,'刘静','爬长城');

DESC scott.spring;
SHOW FULL COLUMNS FROM scott.spring;
SELECT * FROM scott.spring;

