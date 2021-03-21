SELECT DISTINCT city
FROM station
WHERE SUBSTRING(city, LENGTH(city),1)
NOT IN ("a", "e", "i", "o");

SELECT DISTINCT city
FROM station
WHERE MOD(id, 2)=0;
