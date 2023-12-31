-- Додавання рядків у таблицю manufacturer
INSERT INTO manufacturer (manufacturer_id, name, location_id)
VALUES (1, 'Toyota', 7), (2, 'Honda', 8), (3, 'Ford', 9);

-- Додавання рядків у таблицю car
INSERT INTO car (car_id, manufacturer_id, model_name, price_usd, color, body_type, transmission_id)
VALUES 
    (10, 1, 'Camry', 25000, 'Red', 'Sedan', 100),
    (11, 2, 'Civic', 22000, 'Blue', 'Hatchback', 101),
    (12, 3, 'Focus', 20000, 'Black', 'Sedan', 102);

-- Додавання рядків у таблицю transmission
INSERT INTO transmission (transmission_id, name)
VALUES (100, 'Automatic'), (101, 'Manual'), (102, 'CVT');

-- Додавання рядків у таблицю location_region
INSERT INTO location_region (location_id, name)
VALUES (7, 'Kyiv region'), (8, 'Lviv region'), (9, 'Odesa region');
select * from location_region
select * from manufacturer
select * from car
select * from transmission








