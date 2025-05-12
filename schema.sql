DROP TABLE IF EXISTS players CASCADE;
DROP TABLE IF EXISTS teams CASCADE;

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    stadium VARCHAR(255),
    division VARCHAR(255),
    conference VARCHAR(255),
    head_coach VARCHAR(255),
    active BOOLEAN
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    position VARCHAR(255),
    salary INTEGER,
    team_id INTEGER REFERENCES teams(id) -- Added (id) for clarity
);