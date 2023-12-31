CREATE TABLE manufacturer (
    manufacturer_id SERIAL PRIMARY KEY,
	location_id INT REFERENCES location_region(location_id),
    name VARCHAR(50) NOT NULL
);
--drop table manufacturer
--drop table car
CREATE TABLE car (
    car_id SERIAL PRIMARY KEY,
    manufacturer_id INTEGER REFERENCES manufacturer(manufacturer_id),
    model_name VARCHAR(50) NOT NULL,
    price_usd INTEGER,
	color VARCHAR(50),
    body_type VARCHAR(50),
	transmission_id INT REFERENCES transmission(transmission_id)
);
CREATE TABLE transmission (
    transmission_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);
CREATE TABLE location_region (
    location_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

