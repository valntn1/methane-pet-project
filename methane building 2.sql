
-- Додаю пусту колонку для заповнення площинами країн
SELECT country, region, SUM(emissions) AS total_emissions, NULL AS country_area
FROM methane
GROUP BY country, region
ORDER BY country ASC;

-- Фільтрувати назви країн для подальшого додавання площі 
select distinct country
from methane;

-- Створюю таблицю щоб приєднати надалі
CREATE TABLE country_area (
country VARCHAR(20) PRIMARY KEY, area_km INT
);

-- Видалити таблицю
DROP TABLE country_area;

-- Змінюю тип даних колонки в таблиці
ALTER TABLE country_area
ALTER COLUMN country TYPE varchar(20);


-- Додаю до стовпчиків таблиці дані
INSERT INTO country_area (country, area_km)
VALUES ('Algeria', 2381741),
('Angola', 1246700),
('Benin', 114763),
('Botswana', 581730),
('Cameroon', 475440),
('Central African Republic', 622984),
('Chad', 1284000),
('Congo', 342000),
('Cote d Ivoire', 322463),
('Democratic Republic of Congo', 2344858),
('Egypt', 1001450),
('Equatorial Guinea', 28051),
('Eritrea', 117600),
('Ethiopia', 1104300),
('Gabon', 267667),
('Gambia', 10380),
('Ghana', 238535),
('Guinea', 245857),
('Guinea-Bissau', 36125),
('Kenya', 580367),
('Liberia', 111369),
('Libya', 1759540),
('Morocco', 446550),
('Mozambique', 801590),
('Namibia', 824292),
('Niger', 1267000),
('Nigeria', 923768),
('Senegal', 196722),
('Seychelles', 452),
('Sierra Leone', 71740),
('Somalia', 637657),
('South Africa', 1219090),
('South Sudan', 619745),
('Sudan', 1861484),
('Tanzania', 945087),
('Togo', 56785),
('Tunisia', 163610),
('Australia', 7692024),
('Bangladesh', 147570),
('Brunei', 5765),
('China', 9596961),
('India', 3287263),
('Indonesia', 1904569),
('Japan', 377930),
('Korea', 100363),
('Malaysia', 330803),
('Mongolia', 1566000),
('New Zealand', 268838),
('Pakistan', 796095),
('Philippines', 300000),
('Thailand', 513120),
('Vietnam', 331210),
('Argentina', 2780400),
('Bolivia', 1098581),
('Brazil', 8515767),
('Colombia', 1138910),
('Cuba', 109884),
('Ecuador', 276841),
('Guyana', 214969),
('Paraguay', 406752),
('Peru', 1285216),
('Trinidadand Tobago', 5131),
('Uruguay', 176215),
('Venezuela', 916445),
('Denmark', 42933),
('Estonia', 45339),
('European Union', 4233262),
('France', 551695),
('Germany', 357022),
('Israel', 22145),
('Italy', 301340),
('Netherlands', 41543),
('Norway', 323802),
('Poland', 312696),
('Romania', 238397),
('Slovenia', 20273),
('Sweden', 450295),
('Ukraine', 603628),
('United Kingdom', 243610),
('Bahrain', 760),
('Iran', 1648195),
('Iraq', 438317),
('Jordan', 89342),
('Kuwait', 17818),
('Lebanon', 10452),
('Oman', 309500),
('Qatar', 11586),
('Saudi Arabia', 2149690),
('Syria', 185180),
('United Arab Emirates', 83600),
('Yemen', 527968),
('Canada', 9984670),
('Mexico', 1964375),
('United States', 9631418),
('Azerbaijan', 86600),
('Kazakhstan', 2724900),
('Russia', 17098242),
('Turkmenistan', 488100),
('Uzbekistan', 448978);


-- Перевіремо наявність 99 рядків
select * from country_area;
