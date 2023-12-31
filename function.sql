-- Функція для отримання інформації про виробника за його ідентифікатором
--Ця функція приймає ідентифікатор виробника (manufacturer_id) 
--і повертає ім'я виробника та назву регіону, де він знаходиться. 
CREATE OR REPLACE FUNCTION get_manufacturer_by_id(manufacturer_id INT)
RETURNS TABLE (
    manufacturer_name VARCHAR(50),
    location_name VARCHAR(50)
)
AS $$
BEGIN
    RETURN QUERY 
    SELECT m.name, lr.name
    FROM manufacturer m
    JOIN location_region lr ON m.location_id = lr.location_id
    WHERE m.manufacturer_id = get_manufacturer_by_id.manufacturer_id;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_manufacturer_by_id(1);

