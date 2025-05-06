-- Drop the table if it already exists
DROP TABLE IF EXISTS computers;

-- Create the computers table
CREATE TABLE computers (
    id SERIAL PRIMARY KEY,
    make VARCHAR(100),
    model VARCHAR(100),
    cpu_speed DECIMAL(4, 2), -- in GHz
    memory_size INTEGER, -- in GB
    price DECIMAL(10, 2), -- in USD
    release_date DATE,
    photo_url TEXT,
    storage_amount INTEGER, -- in GB
    number_usb_ports INTEGER,
    number_firewire_ports INTEGER,
    number_thunderbolt_ports INTEGER
);

-- Insert 4 computers
INSERT INTO computers (
    make, model, cpu_speed, memory_size, price, release_date, photo_url,
    storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports
) VALUES
('Apple', 'MacBook Pro M2', 3.49, 16, 1999.99, '2023-11-01', 'https://example.com/macbook_m2.jpg', 512, 2, 0, 2),
('Dell', 'XPS 13', 3.20, 16, 1249.99, '2023-07-15', 'https://example.com/dell_xps13.jpg', 512, 2, 0, 1),
('HP', 'Spectre x360', 2.80, 8, 1099.99, '2022-09-30', 'https://example.com/hp_spectre.jpg', 256, 3, 0, 1),
('Lenovo', 'ThinkPad X1 Carbon', 3.00, 16, 1399.00, '2023-04-12', 'https://example.com/lenovo_x1.jpg', 512, 2, 1, 1);

-- Show all entries in the table
SELECT * FROM computers;

-- Show table structure using information_schema
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'computers';
