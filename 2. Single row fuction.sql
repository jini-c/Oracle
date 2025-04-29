//INITCAP() �Լ�

SELECT ename, INITCAP(ename) "INITCAP"
FROM emp
WHERE deptno = 10;

SELECT name, INITCAP(NAME) "INITCAP"
FROM professor
WHERE deptno = 101;

//LOWER(), UPPER()

SELECT ename, LOWER(ename) "LOWER", UPPER(ename) "UPPER"
FROM emp
WHERE deptno = 10;

//LENGTH / LENGTHB �Լ�

SELECT ename , LENGTH(ename) "LENGTH", LENGTHB(ename) "LENGTH"
FROM emp
WHERE deptno = 20;

SELECT '������' "NAME",LENGTH('������') "LENGTH",
                      LENGTHB('������') "LEHGTHB"
FROM dual;

SET verify OFF
SELECT ename, LENGTH(ename)
FROM emp
WHERE LENGTH(ename) >LENGTH('&ename');

//CONCAT() = || �����ڶ� ���� ���

SELECT CONCAT(ename, job)
FROM emp
WHERE deptno = 10;

//SUBSTR()

COL "3,2" FOR a6
COL "-3,2" FOR a6
COL "-3,4" FOR a6

SELECT SUBSTR('abcde',3,2) "3,2",
       SUBSTR('abcde',-3,2) "-3,2",
       SUBSTR('abcde',-3,4) " -3,4"
FROM dual;

SELECT name, SUBSTR(jumin,3,4) "Birthday",
             SUBSTR(jumin,3,4) -1 "Birthday - 1"
FROM student
WHERE deptno1 = 101;