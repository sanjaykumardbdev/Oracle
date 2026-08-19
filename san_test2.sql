-- 4th highest salary from EMP table in Oracle
SELECT sal
FROM (
    SELECT sal,
           DENSE_RANK() OVER (ORDER BY sal DESC) AS rnk
    FROM emp
)
WHERE rnk = 4;

-- If you want the salary to be unique even with duplicates, use ROW_NUMBER() instead of DENSE_RANK().
-- changes in main repo