SELECT hacker_id, name, SUM(max_score) as total_score
FROM(
SELECT s.hacker_id, h.name, s.challenge_id, max(s.score) max_score
FROM submissions s JOIN hackers h ON s.hacker_id = h.hacker_id
GROUP BY s.hacker_id, h.name, s.challenge_id
)
GROUP BY hacker_id, name
HAVING SUM(max_score) > 0
ORDER BY SUM(max_score) desc, hacker_id;