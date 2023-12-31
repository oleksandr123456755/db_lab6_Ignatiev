CREATE OR REPLACE FUNCTION add_new_to_model_name()
RETURNS TRIGGER AS $$
BEGIN
    NEW.model_name = CONCAT('new_', NEW.model_name);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER insert_new_model_name
BEFORE INSERT ON car
FOR EACH ROW
EXECUTE FUNCTION add_new_to_model_name();

INSERT INTO car (car_id, manufacturer_id, model_name, price_usd, color, body_type, transmission_id)
VALUES (15, 1, 'Corolla', 28000, 'Red', 'Sedan', 100);
select * from car