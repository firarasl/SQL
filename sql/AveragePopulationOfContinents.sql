SELECT b.continent, FLOOR(AVG(a.population))
FROM city a, country b
WHERE a.countrycode = b.code
GROUP BY b.continent
having FLOOR(AVG(a.population)) > 0;