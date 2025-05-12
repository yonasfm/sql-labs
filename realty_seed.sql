-- realty_seed.sql

-- Seed Apartments
INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant, occupied, sq_ft, price) VALUES
(101, 1, 1, '123 Main St, Unit 101', 'Alice Wonderland', TRUE, 650, 1800),
(205, 2, 1, '456 Oak Ave, Apt 205', 'Bob The Builder', TRUE, 900, 2400),
(30, 0, 1, '789 Pine Ln, Unit 30', NULL, FALSE, 400, 1200), -- Studio, vacant
(410, 3, 2, '123 Main St, Unit 410', 'Charlie Chaplin', TRUE, 1250, 3500);

-- Seed Offices
INSERT INTO offices (office_number, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES
(201, 2, 1500, 10, 2, '1 Technology Plaza, Suite 201', 'Innovate Inc.', TRUE, 5000),
(550, 5, 5000, 50, 6, '55 Business Blvd, Floor 5', 'Global Corp', TRUE, 15000),
(10, 1, 800, 4, 1, '10 Commerce Way', NULL, FALSE, 2500), -- Small office, vacant
(300, 3, 3200, 25, 4, '3 Corporate Drive, Suite 300', 'Synergy Solutions', TRUE, 9800);

-- Seed Storefronts
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) VALUES
('100 Market St', TRUE, 4000, TRUE, 1200, 'Fine Foods LLC', TRUE), -- Restaurant/Cafe
('25 Retail Row', FALSE, 3000, FALSE, 800, 'Vacant Properties Co', FALSE), -- Standard retail, vacant
('75 Artisan Ave', TRUE, 3500, FALSE, 1000, 'Crafty Creations', FALSE), -- Boutique/Shop
('5 Waterfront Walk', TRUE, 6000, TRUE, 1800, 'Seaside Grill', TRUE); -- Restaurant w/ seating