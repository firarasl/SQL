SELECT earnings, cnt
FROM(
SELECT salary * months as earnings, count(1) cnt
FROM employee
GROUP BY salary * months
ORDER BY 1 DESC
)
WHERE rownum =1 ;