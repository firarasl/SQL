SELECT SUM(a.population)
FROM city a, country b
WHERE a.countrycode = b.code
AND b.continent = "Asia";