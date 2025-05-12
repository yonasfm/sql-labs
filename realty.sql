-- realty.sql
-- Connect to the database first in psql: \c realty_db

-- 1. The average square footage of all offices.
SELECT AVG(sq_ft) AS average_office_sq_ft FROM offices;
-- Example Output based on seed data: 2625.0000000000000000

-- 2. The total number of apartments.
SELECT COUNT(*) AS total_apartments FROM apartments;
-- Example Output based on seed data: 4

-- 3. The apartments where there is no tenant (assuming tenant IS NULL or empty string implies no tenant)
SELECT * FROM apartments WHERE tenant IS NULL OR tenant = '';
-- Alternative, if occupied field is the definitive source:
-- SELECT * FROM apartments WHERE occupied = FALSE;
-- Example Output based on seed data (using tenant check):
-- id | apartment_number | bedrooms | bathrooms |       address       | tenant | occupied | sq_ft | price
-- ----+------------------+----------+-----------+---------------------+--------+----------+-------+-------
--  3 |               30 |        0 |         1 | 789 Pine Ln, Unit 30 |        | f        |   400 |  1200

-- 4. The names of all of the companies (distinctly, excluding vacant offices)
SELECT DISTINCT company FROM offices WHERE company IS NOT NULL AND company != '';
-- Example Output based on seed data:
--       company
-- ------------------
--  Global Corp
--  Innovate Inc.
--  Synergy Solutions

-- 5. The number of cubicles and bathrooms in the 3rd office (assuming the one with id=3)
SELECT cubicles, bathrooms FROM offices WHERE id = 3;
-- Example Output based on seed data:
-- cubicles | bathrooms
-- ----------+-----------
--        4 |         1

-- 6. The storefronts that have kitchens
SELECT * FROM storefronts WHERE kitchen = TRUE;
-- Example Output based on seed data:
-- id |      address      | occupied | price | kitchen | sq_ft |       owner       | outdoor_seating
-- ----+-------------------+----------+-------+---------+-------+-------------------+-----------------
--  1 | 100 Market St     | t        |  4000 | t       |  1200 | Fine Foods LLC    | t
--  4 | 5 Waterfront Walk | t        |  6000 | t       |  1800 | Seaside Grill     | t

-- 7. The storefront with the highest square footage and outdoor seating
SELECT * FROM storefronts
WHERE outdoor_seating = TRUE
ORDER BY sq_ft DESC
LIMIT 1;
-- Example Output based on seed data:
-- id |      address      | occupied | price | kitchen | sq_ft |       owner       | outdoor_seating
-- ----+-------------------+----------+-------+---------+-------+-------------------+-----------------
--  4 | 5 Waterfront Walk | t        |  6000 | t       |  1800 | Seaside Grill     | t

-- 8. The office with the lowest number of cubicles (considering all offices, including vacant)
SELECT * FROM offices
ORDER BY cubicles ASC
LIMIT 1;
-- Example Output based on seed data:
-- id | office_number | floors | sq_ft | cubicles | bathrooms |      address      | company | occupied | price
-- ----+---------------+--------+-------+----------+-----------+-------------------+---------+----------+-------
--  3 |            10 |      1 |   800 |        4 |         1 | 10 Commerce Way   |         | f        |  2500

-- 9. The office with the most cubicles and bathrooms (combined total)
SELECT *, (cubicles + bathrooms) AS total_spaces
FROM offices
ORDER BY total_spaces DESC
LIMIT 1;
-- Alternative without showing the sum:
-- SELECT * FROM offices ORDER BY (cubicles + bathrooms) DESC LIMIT 1;
-- Example Output based on seed data:
-- id | office_number | floors | sq_ft | cubicles | bathrooms |         address          |   company   | occupied | price | total_spaces
-- ----+---------------+--------+-------+----------+-----------+--------------------------+-------------+----------+-------+--------------
--  2 |           550 |      5 |  5000 |       50 |         6 | 55 Business Blvd, Floor 5| Global Corp | t        | 15000 |           56