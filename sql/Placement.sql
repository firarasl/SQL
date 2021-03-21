SELECT s.name
FROM student s, packages p, friends f, packages fp
WHERE s.id = p.id
    AND s.id = f.id
    AND f.friend_id = fp.id
    AND p.salary < fp.salary
ORDER BY fp.salary;
