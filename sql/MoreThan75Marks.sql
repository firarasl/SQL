SELECT name FROM(
SELECT id, name, SUBSTRING(name, LENGTH(name)-2) n3
FROM students
WHERE marks > 75
) a
ORDER BY n3, id