SELECT co.CONTINENT, FLOOR(AVG(ci.POPULATION))
FROM CITY ci
JOIN COUNTRY co ON ci.COUNTRYCODE = co.CODE
GROUP BY co.CONTINENT;
