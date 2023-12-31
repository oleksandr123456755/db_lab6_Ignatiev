DROP PROCEDURE IF EXISTS update_car_prices(varchar(50)); 
 
CREATE OR REPLACE PROCEDURE update_car_prices(manufacturer_name VARCHAR(50), new_price INTEGER)
AS $$
BEGIN
    UPDATE car c
    SET price_usd = new_price
    FROM manufacturer m
    WHERE c.manufacturer_id = m.manufacturer_id
    AND m.name = manufacturer_name;
END;
$$ LANGUAGE plpgsql;
 
--Ця процедура приймає назву виробника manufacturer_name 
--та нову ціну new_price, оновлює ціни автомобілів цього виробника у таблиці car.
call update_car_prices('Toyota', 12345
select * from car