# ctrl + /
# 1、查找部门30中员工的详细信息。
SELECT *
FROM scott.emp
WHERE DEPTNO = 30;
# 2、找出从事clerk工作的员工的编号、姓名、部门号。
SELECT
  EMPNO,
  ENAME,
  DEPTNO
FROM scott.emp
WHERE JOB = 'clerk';
# 3、检索出奖金多于基本工资的员工信息。
SELECT *
FROM scott.emp
WHERE COMM > SAL;
# 4、检索出奖金多于基本工资60%的员工信息。
SELECT *
FROM scott.emp
WHERE COMM > SAL * 0.3;
# 5、希望看到10部门的经理或者20部门的职员(clerk)的信息。
SELECT *
FROM scott.emp
WHERE (DEPTNO = 10 AND JOB = 'MANAGER') OR (JOB = 'clerk' AND DEPTNO = 20);
# 6、找出10部门的经理、20部门的职员或者既不是经理也不是职员但是工资(基本工资+奖金)高于2000元的员工信息。
SELECT *
FROM scott.emp
WHERE (DEPTNO = 10 AND JOB = 'MANAGER') OR (DEPTNO = 20 AND JOB = 'clerk') OR
      (JOB NOT IN ('MANAGER', 'clerk') AND (sal + ifnull(COMM, 0)) > 2000);
# 7、找出获得奖金的员工的工作。
SELECT
  JOB,
  COMM
FROM scott.emp
WHERE COMM > 0;
# 8、找出奖金少于100或者没有获得奖金的员工的信息。

SELECT *
FROM scott.emp
WHERE COMM < 100 OR COMM IS NULL;
UPDATE scott.emp
SET ENAME = NULL
WHERE ENAME = 'scott';
SELECT *
FROM scott.emp
WHERE ENAME IS NULL;



# PART II
# 1. 返回拥有员工的部门名、部门号。
SELECT DNAME,DEPTNO FROM scott.dept;
# 2. 工资水平多于smith的员工信息。

# 3. 返回员工和所属经理的姓名。
SELECT ENAME ,job FROM scott.emp WHERE JOB='MANAGER';
# 4. 返回雇员的雇佣日期早于其经理雇佣日期的员工及其经理姓名。

# 5. 返回员工姓名及其所在的部门名称。

# 6. 返回从事clerk工作的员工姓名和所在部门名称。
# 7. 返回部门号及其本部门的最低工资。
# 8. 返回销售部(sales)所有员工的姓名。
# 9. 返回工资水平多于平均工资的员工。
# 10. 返回与SCOTT从事相同工作的员工。
# 11. 返回与30部门员工工资水平相同的员工姓名与工资。
# 12. 返回工资高于30部门所有员工工资水平的员工信息。
# 13. 返回部门号、部门名、部门所在位置及其每个部门的员工总数。
# 14. 返回员工的姓名、所在部门名及其工资。
# 15. 返回雇员表中不再同一部门但是从事相同工作的员工信息。
# 16. 返回员工的详细信息。(包括部门名)
# 17. 返回员工工作及其从事此工作的最低工资。
# 18. 返回不同部门经理的最低工资。
# 19. 计算出员工的年薪，并且以年薪排序。
# 20. 返回工资处于第四级别的员工的姓名。