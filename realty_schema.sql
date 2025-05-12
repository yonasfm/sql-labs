-- realty_schema.sql

-- Drop tables if they exist to start fresh
DROP TABLE IF EXISTS apartments CASCADE;
DROP TABLE IF EXISTS offices CASCADE;
DROP TABLE IF EXISTS storefronts CASCADE;

-- Create Apartments Table
CREATE TABLE apartments (
    id SERIAL PRIMARY KEY,
    apartment_number INTEGER,
    bedrooms INTEGER,
    bathrooms INTEGER,
    address VARCHAR(255),
    tenant VARCHAR(255),
    occupied BOOLEAN,
    sq_ft INTEGER,
    price INTEGER
);

-- Create Offices Table
CREATE TABLE offices (
    id SERIAL PRIMARY KEY,
    office_number INTEGER,
    floors INTEGER,
    sq_ft INTEGER,
    cubicles INTEGER,
    bathrooms INTEGER,
    address VARCHAR(255),
    company VARCHAR(255),
    occupied BOOLEAN,
    price INTEGER
);

-- Create Storefronts Table
CREATE TABLE storefronts (
    id SERIAL PRIMARY KEY, -- Added ID for easier referencing, though not strictly required by prompt
    address VARCHAR(255),
    occupied BOOLEAN,
    price INTEGER,
    kitchen BOOLEAN,
    sq_ft INTEGER,
    owner VARCHAR(255),
    outdoor_seating BOOLEAN
);