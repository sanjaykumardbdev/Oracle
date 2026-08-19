SELECT sal
FROM (
    SELECT sal,
           DENSE_RANK() OVER (ORDER BY sal DESC) AS rnk
    FROM emp
)
WHERE rnk = 4;

-- Alternative using ROW_NUMBER():
-- SELECT sal
-- FROM (
--     SELECT sal, ROW_NUMBER() OVER (ORDER BY sal DESC) AS rn
--     FROM emp
-- )
-- WHERE rn = 4;
