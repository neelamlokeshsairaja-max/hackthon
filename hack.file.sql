select *from flights;
show tables;
desc flights;
select * from flights limit 10;
select count(*) from flights;
#4
USE aviation_hackathon;

SELECT
    route,
    ROUND(AVG(delay_minutes), 2) AS average_delay_minutes
    
    
SELECT
    route,
    ROUND(AVG(delay_minutes), 2) AS average_delay_minutes
FROM flights
WHERE flight_status = 'Operated'
GROUP BY route
ORDER BY average_delay_minutes DESC
LIMIT 1;    
    FROM flights
WHERE flight_status = 'Operated'
GROUP BY route
ORDER BY average_delay_minutes DESC;


SELECT
    route,
    ROUND(AVG(delay_minutes), 2) AS average_delay_minutes
FROM flights
WHERE flight_status = 'Operated'
GROUP BY route
ORDER BY average_delay_minutes ASC
LIMIT 1;

SELECT
    route,
    ROUND(AVG(delay_minutes), 2) AS average_delay,
    CASE
        WHEN AVG(delay_minutes) <= 15 THEN 'Low Delay'
        WHEN AVG(delay_minutes) <= 30 THEN 'Moderate Delay'
        ELSE 'High Delay'
    END AS delay_category
FROM flights
WHERE flight_status = 'Operated'
GROUP BY route
ORDER BY average_delay DESC;