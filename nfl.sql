-- Make sure you are connected to the nfl database: \c nfl

-- 1. List the names of all NFL teams
SELECT name FROM teams;

-- 2. List the stadium name and head coach of all NFC teams
SELECT stadium, head_coach FROM teams WHERE conference = 'NFC';

-- 3. List the head coaches of the AFC South
SELECT head_coach FROM teams WHERE conference = 'AFC' AND division = 'South';

-- 4. The total number of players in the NFL
SELECT COUNT(*) AS total_players FROM players;

-- 5. The team names and head coaches of the NFC North and AFC East
SELECT name, head_coach, conference, division
FROM teams
WHERE (conference = 'NFC' AND division = 'North') OR (conference = 'AFC' AND division = 'East');

-- 6. The 50 players with the highest salaries
SELECT name, salary
FROM players
ORDER BY salary DESC
LIMIT 50;

-- 7. The average salary of all NFL players
SELECT AVG(salary) AS average_salary FROM players;

-- 8. The names and positions of players with a salary above 10,000,000
SELECT name, position, salary
FROM players
WHERE salary > 10000000; -- Note: SQL uses 10000000, not 10_000_000

-- 9. The player with the highest salary in the NFL
SELECT name, position, salary
FROM players
ORDER BY salary DESC
LIMIT 1;

-- 10. The name and position of the first 100 players with the lowest salaries
-- Added salary for context and id for deterministic ordering if salaries are tied.
SELECT name, position, salary
FROM players
ORDER BY salary ASC, id ASC
LIMIT 100;

-- 11. The average salary for a DE in the nfl
SELECT AVG(salary) AS average_de_salary
FROM players
WHERE position = 'DE';