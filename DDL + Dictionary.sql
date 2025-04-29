--�������� 1��

CREATE TABLE new_emp
( NO NUMBER(5),
NAME VARCHAR2(20),
HIREDATE DATE,
BONUS NUMBER(6,2));

--�������� 2��

CREATE TABLE new_emp2
AS
SELECT 
    no, 
    name, 
    hiredate
FROM 
    new_emp;

--�������� 3��

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
    
--�������� 4��

ALTER TABLE new_emp2
ADD (
    birthday DATE DEFAULT SYSDATE
);

--�������� 5��

ALTER TABLE new_emp2
RENAME COLUMN birthday TO birth;

--�������� 6��

ALTER TABLE new_emp2
MODIFY no NUMBER(7);

--�������� 7��

ALTER TABLE new_emp2
DROP COLUMN birth;

--�������� 8��

TRUNCATE TABLE new_emp2;

--�������� 9��

DROP TABLE new_emp2;

