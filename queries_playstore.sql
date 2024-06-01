-- Comments in SQL Start with dash-dash --

-- Query 1 --
SELECT * FROM analytics
WHERE id = 1880;

-- Query 2 --
SELECT id, app_name FROM analytics
WHERE last_updated = '2018-08-01';

-- Query 3 --
SELECT category, count(*) AS Number_of_Apps bbbbb                                                                                                                                                                                                                                                             b   from analytics
GROUP BY category;

-- Query 4 --
SELECT app_name, reviews FROM analytics
ORDER BY reviews desc
LIMIT 5;

-- Query 5 --
SELECT app_name, reviews, rating FROM analytics
WHERE rating >= 4.8
ORDER BY reviews desc
LIMIT 1;

-- Query 6 -- 
SELECT category, AVG(rating) AS average_rating
FROM analytics
GROUP BY category
ORDER BY average_rating DESC;

-- Query 7 --
SELECT app_name, price, rating FROM analytics
WHERE rating < 3
ORDER BY price desc
LIMIT 1;

-- Query 8 --
SELECT app_name, min_installs, rating FROM analytics
WHERE min_installs <= 50 AND rating IS NOT NULL
ORDER BY rating desc, app_name;

-- Query 9 --
SELECT app_name, rating, reviews FROM analytics
WHERE rating < 3 AND reviews >= 10000;

-- Query 10 --
SELECT app_name, reviews, price, rating FROM analytics
WHERE price BETWEEN 0.1 AND 1
ORDER BY reviews desc
LIMIT 10;

-- QUERY 11 --
SELECT app_name, MIN(last_updated) AS date_updated FROM analytics
group by app_name
ORDER BY date_updated
LIMIT 1;

-- Query 12 --
SELECT app_name, price FROM analytics
ORDER BY price desc
LIMIT 1;

-- Query 14 -- 
SELECT category, count(app_name) FROM analytics
GROUP BY category
HAVING count(app_name) > 300
ORDER BY count(app_name) desc;

-- Query 15 --
SELECT app_name, reviews, min_installs, (min_installs/reviews) AS pr
oportion
FROM analytics
WHERE min_installs >= 100000
ORDER BY proportion desc
LIMIT 1;

-- FS 1 --
SELECT category, app_name, rating, min_installed FROM analysis
GROUP BY category

-- FS 2 --
SELECT app_name, min_installs, category FROM analytics
WHERE app_name ILIKE '%facebook%'
ORDER BY min_installs desc;

-- FS 3 --
SELECT app_name, genres
FROM analytics
WHERE  array_length(genres, 1) = 2;