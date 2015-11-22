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