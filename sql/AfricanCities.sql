SELECT a.name
FROM city a, country b
WHERE a.countrycode = b.code
AND b.continent= "Africa";