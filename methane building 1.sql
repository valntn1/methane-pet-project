use pet;

select * from methane
LIMIT 101;

-- Кількість викидів на кожну країну з сортуванням за алфавітом
SELECT 
    country, SUM(emissions) AS total_emissions, region
FROM
    methane
GROUP BY country , region
ORDER BY country ASC;

-- Сумарна кількість викидів з топ 5 країн лідерів з викидів
SELECT
    country, region, SUM(emissions) AS total_emissions
FROM
    methane
WHERE
    country NOT IN ('World' , 'Wonderland')
GROUP BY country , region
ORDER BY total_emissions DESC
LIMIT 5;

-- Види викидів на кожний type всередині країни
SELECT 
    country, SUM(emissions) AS total_emissions, em_type, region
FROM
    methane
GROUP BY country , em_type , region
ORDER BY country;

-- Які сегменти по кожній країні мають найбільший показник, з сортуванням
select region, country, SUM(emissions) AS total_emissions, segment
from methane
group by country, segment, region
order by country ASC, total_emissions;