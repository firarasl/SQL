SELECT c.company_code, c.founder,
COUNT(DISTINCT lm.lead_manager_code) AS lead_manager_count,
COUNT(DISTINCT sm.senior_manager_code) AS senior_manager_count,
COUNT(DISTINCT m.manager_code) AS manager_count,
COUNT(DISTINCT e.employee_code) AS employee_count,
FROM company c

LEFT JOIN lead_manager lm
ON c.company_code= lm.company_code

LEFT JOIN senior_manager sm
ON sm.company_code = lm.company_code
AND sm.company_code = c.company_code
AND sm.lead_manager_code = lm.lead_manager_code

LEFT JOIN manager m
ON m.company_code = sm.company_code
AND m.senior_manager_code = sm.senior_manager_code
AND m.lead_manager_code = lm.lead_manager_code

LEFT JOIN employee e
ON e.company_code = m.company_code
AND e.manager_code = m.manager_code
AND e.senior_manager_code = sm.senior_manager_code
AND e.lead_manager_code = lm.lead_manager_code

GROUP BY c.company_code, c.founder
ORDER BY c.company_code