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
SELECT (year(localtime) - year(HIREDATE))
FROM scott.emp;
