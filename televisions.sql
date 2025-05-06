-- Drop the table if it already exists
DROP TABLE IF EXISTS tv_models;

-- Create the tv_models table
CREATE TABLE tv_models (
    id SERIAL PRIMARY KEY,
    model_name VARCHAR(100),
    screen_size INTEGER,
    resolution VARCHAR(50),
    price DECIMAL(10, 2),
    release_date DATE,
    photo_url TEXT
);

-- Insert 4 televisions
INSERT INTO tv_models (model_name, screen_size, resolution, price, release_date, photo_url) VALUES
('Samsung QLED Q60B', 55, '4K', 699.99, '2023-03-15', 'https://example.com/samsung_q60b.jpg'),
('LG OLED C2', 65, '4K', 1499.00, '2022-10-20', 'https://example.com/lg_oled_c2.jpg'),
('Sony Bravia XR A90J', 55, '4K', 1799.99, '2023-05-01', 'https://example.com/sony_a90j.jpg'),
('TCL 5-Series', 50, '4K', 429.99, '2023-01-10', 'https://example.com/tcl_5series.jpg');

-- Show table contents
SELECT * FROM tv_models;

-- Show table structure
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'tv_models';
