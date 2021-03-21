SELECT CASE
WHEN g.grade < 8 THEN NULL
ELSE s.name
END name, g.grade, s.marks
FROM students s, grades g
WHERE s.marks BETWEEN g.min_mark
AND g.max_mark
ORDER BY g.grade DESC, s.name ASC