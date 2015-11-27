# PART I    ctrl + /   ->注释快捷键
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

SELECT
  now(),
  curdate(),
  curtime();
# 9、查找员工雇佣日期中当月的最后一天雇佣的。
SELECT *
FROM scott.emp
WHERE HIREDATE = LAST_DAY(HIREDATE);
UPDATE scott.emp
SET HIREDATE = last_day(HIREDATE)
WHERE ENAME = 'king';
# 10、检索出雇佣年限超过12年的员工信息。
SELECT *
FROM scott.emp
WHERE year(HIREDATE) = 1981;
SELECT *
FROM scott.emp
WHERE (year(localtime) - year(HIREDATE)) > 12;
SELECT EXTRACT(YEAR FROM HIREDATE)
FROM scott.emp;
SELECT *
FROM scott.emp
WHERE DATE_ADD(HIREDATE, INTERVAL 30 YEAR) > NOW();
# 11、找出姓名以A、B、S开始的员工信息。
SELECT *
FROM scott.emp
WHERE SUBSTR(ENAME, 1, 1) IN ('A', 'B', 'C');
# 12、找到名字长度为7个字符的员工信息。
SELECT ENAME
FROM scott.emp
WHERE CHAR_LENGTH(ENAME) = 5;

# 13、名字中不包含R字符的员工信息。
SELECT *
FROM scott.emp
WHERE ENAME NOT LIKE '%R%';

# 14、找出员工名字的前3个字符。
SELECT SUBSTR(ENAME, 1, 3)
FROM scott.emp;

# 15、将名字中A改为a。
SELECT REPLACE(ENAME, 'A', 'a')
FROM scott.emp;

# 16、将员工的雇佣日期拖后10年。
SELECT DATE_ADD(HIREDATE, INTERVAL 10 YEAR)
FROM scott.emp;
# 17、返回员工的详细信息并按姓名排序。
SELECT *
FROM scott.emp
ORDER BY ENAME;
# 18、返回员工的信息并按员工的工作年限降序排列。
SELECT *
FROM scott.emp
ORDER BY HIREDATE ASC;
# 19、返回员工的信息并按工作降序工资升序排列。
SELECT *
FROM scott.emp
ORDER BY JOB DESC, SAL + ifnull(COMM, 0) ASC;
# 20、返回员工的姓名、雇佣年份和月份并且按月份和雇佣日期排序。
SELECT
  ENAME,
  HIREDATE,
  YEAR(HIREDATE),
  MONTH(HIREDATE)
FROM scott.emp
ORDER BY MONTH(HIREDATE), HIREDATE;
SELECT
  ename,
  HIREDATE,
  extract(YEAR FROM HIREDATE)  year,
  extract(MONTH FROM HIREDATE) month
FROM scott.emp;
# 21、计算员工的日薪(按30天)。
SELECT round((sal + ifnull(comm, 0)) / 30, 2)
FROM scott.emp;
# 22、找出2月份雇佣的员工。
SELECT *
FROM scott.emp
WHERE MONTH(HIREDATE) = 02;
SELECT *
FROM scott.emp
WHERE extract(MONTH FROM HIREDATE) = 2;
# 23、至今为止，员工被雇佣的天数。
SELECT CURDATE();
SELECT DATEDIFF(now(), HIREDATE)
FROM scott.emp;
# 24、找出姓名中包含A的员工信息。
SELECT *
FROM scott.emp
WHERE ENAME LIKE '%A%';
# 25、计算出员工被雇佣了多少年、多少月、多少日。


# PART II
# 1. 返回拥有员工的部门名、部门号。
SELECT
  d.DEPTNO,
  e.ENAME
FROM scott.dept d, scott.emp e
WHERE d.DEPTNO = e.DEPTNO;
# 2. 工资水平多于smith的员工信息。
SELECT *
FROM scott.emp
WHERE (SAL + IFNULL(COMM, 0)) >
      (
        SELECT SAL + IFNULL(COMM, 0)
        FROM scott.emp
        WHERE ENAME = 'JONES'
      );

# 3. 返回员工和所属经理的姓名。
SELECT
  e1.ENAME,
  e2.ENAME
FROM scott.emp e1, scott.emp e2
WHERE e1.MGR = e2.EMPNO;

# 4. 返回雇员的雇佣日期早于其经理雇佣日E期的员工及其经理姓名。
SELECT
  e1.ENAME,
  e2.ENAME
FROM scott.emp e1, scott.emp e2
WHERE e1.MGR = e2.EMPNO AND e1.HIREDATE < e2.HIREDATE;

# 5. 返回员工姓名及其所在的部门名称。
SELECT
  ENAME,
  DNAME
FROM scott.emp
  INNER JOIN scott.dept
    ON dept.DEPTNO = emp.DEPTNO;

SELECT
  e.ename,
  d.dname
FROM scott.emp e, scott.dept d
WHERE e.DEPTNO = d.DEPTNO;

# 6. 返回从事clerk工作的员工姓名和所在部门名称。
SELECT
  ENAME,
  DNAME,
  JOB
FROM scott.emp, scott.dept
WHERE dept.DEPTNO = emp.DEPTNO AND JOB = 'CLERK';

SELECT
  e.ENAME,
  d.DNAME
FROM scott.emp e, scott.dept d
WHERE e.DEPTNO = d.DEPTNO AND JOB = 'CLERK';

# 7. 返回部门号及其本部门的最低工资。
SELECT
  DEPTNO,
  min(sal + ifnull(comm, 0))
FROM scott.emp
GROUP BY DEPTNO;

# 8. 返回销售部(sales)所有员工的姓名。
SELECT
  e.ENAME,
  d.DNAME
FROM scott.emp e, scott.dept d
WHERE e.DEPTNO = d.DEPTNO AND d.DNAME = 'sales';

# 9. 返回工资水平多于平均工资的员工。
SELECT *
FROM scott.emp
WHERE SAL + ifnull(COMM, 0) >
      (
        SELECT avg(SAL + ifnull(COMM, 0))
        FROM scott.emp
      );

# 10. 返回与SCOTT从事相同工作的员工。
SELECT *
FROM scott.emp
WHERE JOB =
      (
        SELECT JOB
        FROM scott.emp
        WHERE ENAME = 'king'
      );

# 11. 返回与30部门员工工资水平相同的员工姓名与工资。
SELECT
  e.ENAME,
  e.sal
FROM scott.emp e
WHERE SAL + ifnull(COMM, 0) = (
  SELECT SAL + IFNULL(COMM, 0)
  FROM scott.emp
  WHERE DEPTNO = 30
);

# 12. 返回工资高于30部门所有员工工资水平的员工信息。
SELECT *
FROM scott.emp
WHERE SAL + ifnull(COMM, 0) > (
  SELECT avg(SAL + IFNULL(COMM, 0))
  FROM scott.emp
  WHERE DEPTNO = 30
);

# 13. 返回部门号、部门名、部门所在位置及其每个部门的员工总数。
SELECT
  d.DEPTNO,
  d.DNAME,
  d.LOC,
  count(e.DEPTNO)
FROM scott.emp e, scott.dept d
WHERE e.DEPTNO = d.DEPTNO
GROUP BY e.DEPTNO;

SELECT
  d.DEPTNO,
  d.DNAME,
  d.LOC,
  COUNT(e.DEPTNO)
FROM scott.emp e RIGHT JOIN scott.dept d ON e.DEPTNO = d.DEPTNO
GROUP BY e.DEPTNO;

# 14. 返回员工的姓名、所在部门名及其工资。
SELECT
  e.ENAME,
  d.DNAME,
  e.sal + ifnull(e.COMM, 0)
FROM scott.emp e, scott.dept d
WHERE e.DEPTNO = d.DEPTNO;

# 15. 返回雇员表中不再同一部门但是从事相同工作的员工信息。
SELECT
  e1.ENAME,
  e1.JOB,
  e1.DEPTNO,
  e2.ENAME,
  e2.JOB,
  e2.DEPTNO
FROM scott.emp e1, scott.emp e2
WHERE e1.DEPTNO <> e2.DEPTNO AND e1.JOB = e2.JOB;

# 16. 返回员工的详细信息。(包括部门名)
SELECT
  e1.*,
  e2.DNAME
FROM scott.emp e1, scott.dept e2
WHERE e1.DEPTNO = e2.DEPTNO;

# 17. 返回员工工作及其从事此工作的最低工资。
SELECT
  job,
  min(sal + ifnull(comm, 0))
FROM scott.emp
GROUP BY JOB;
# 18. 返回不同部门经理的最低工资。
SELECT min(sal + ifnull(comm, 0))
FROM scott.emp
WHERE JOB = 'manager'
GROUP BY DEPTNO;
# 19. 计算出员工的年薪，并且以年薪排序。
SELECT (sal + ifnull(comm, 0)) * 12
FROM scott.emp
ORDER BY 1;
# 20. 返回工资处于第四级别的员工的姓名。
SELECT e.ENAME
FROM scott.emp e, scott.salgrade s
WHERE (e.SAL + ifnull(e.comm, 0)) BETWEEN s.LOSAL AND s.HISAL AND s.GRADE = 4;