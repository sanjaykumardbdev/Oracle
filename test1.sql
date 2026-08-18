This is test1 file.


SELECT MAX(sal) AS second_highest_sal
FROM emp
WHERE sal < (SELECT MAX(sal) FROM emp);

