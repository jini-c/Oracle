//INITCAP() 함수

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

//LENGTH / LENGTHB 함수

SELECT ename , LENGTH(ename) "LENGTH", LENGTHB(ename) "LENGTH"
FROM emp
WHERE deptno = 20;

SELECT '서진수' "NAME",LENGTH('서진수') "LENGTH",
                      LENGTHB('서진수') "LEHGTHB"
FROM dual;

SET verify OFF
SELECT ename, LENGTH(ename)
FROM emp
WHERE LENGTH(ename) >LENGTH('&ename');

//CONCAT() = || 연산자랑 동일 기능

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