SELECT count(comm)
FROM scott.emp;

SELECT count(*)
FROM scott.emp;

SELECT
  min(sal + ifnull(comm, 0)) min,
  max(SAL + ifnull(COMM, 0)) max,
  sum(SAL + ifnull(COMM, 0)) sum
FROM scott.emp;

SELECT ucase(ename)
FROM scott.emp;

SELECT lcase(ename)
FROM scott.emp;

SELECT mid(ename, 1, 3)
FROM scott.emp;

#事务
START TRANSACTION;
#开启一次事务
SELECT *
FROM scott.emp;
#DML
DELETE FROM scott.emp
WHERE ENAME = 'ward';
ROLLBACK;
#回滚
COMMIT;
#提交

START TRANSACTION;
#开启一次事务
SELECT *
FROM scott.emp;
DELETE FROM scott.emp
WHERE ENAME = 'CLARK';
SAVEPOINT del_clark;
# 设置保留点
ROLLBACK TO del_clark;
# 回滚到保留点
ROLLBACK;
#回滚
COMMIT;
#提交

#GROUP BY 按组查询
SELECT
  JOB,
  sum(sal)
FROM scott.emp
GROUP BY JOB;

#HAVING 组检索
SELECT
  JOB,
  SUM(SAL)
FROM scott.emp
GROUP BY JOB
HAVING SUM(SAL) > 4000;