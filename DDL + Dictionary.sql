--연습문제 1번

CREATE TABLE new_emp
( NO NUMBER(5),
NAME VARCHAR2(20),
HIREDATE DATE,
BONUS NUMBER(6,2));

--연습문제 2번

CREATE TABLE new_emp2
AS
SELECT 
    no, 
    name, 
    hiredate
FROM 
    new_emp;

--연습문제 3번

CREATE TABLE new_emp3
AS
SELECT 
    no, 
    name, 
    hiredate
FROM 
    new_emp2
WHERE 
    1 = 0;
    
--연습문제 4번

ALTER TABLE new_emp2
ADD (
    birthday DATE DEFAULT SYSDATE
);

--연습문제 5번

ALTER TABLE new_emp2
RENAME COLUMN birthday TO birth;

--연습문제 6번

ALTER TABLE new_emp2
MODIFY no NUMBER(7);

--연습문제 7번

ALTER TABLE new_emp2
DROP COLUMN birth;

--연습문제 8번

TRUNCATE TABLE new_emp2;

--연습문제 9번

DROP TABLE new_emp2;

