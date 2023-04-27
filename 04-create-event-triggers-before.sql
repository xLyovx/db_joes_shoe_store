CREATE OR REPLACE FUNCTION update_created_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER employees_update_created_at_trigger
BEFORE INSERT OR UPDATE OR DELETE
ON employees.employees
FOR EACH ROW
EXECUTE FUNCTION employees.update_created_at_column();

CREATE TRIGGER clients_update_created_at_trigger
BEFORE INSERT OR UPDATE OR DELETE
ON clients.clients
FOR EACH ROW
EXECUTE FUNCTION clients.update_created_at_column();

CREATE TRIGGER shoes_update_created_at_trigger
BEFORE INSERT OR UPDATE OR DELETE
ON shoes.shoes
FOR EACH ROW
EXECUTE FUNCTION shoes.update_created_at_column();

CREATE TRIGGER sales_update_created_at_trigger
BEFORE INSERT OR UPDATE OR DELETE
ON sales.sales
FOR EACH ROW
EXECUTE FUNCTION sales.update_created_at_column();

CREATE TRIGGER brand_shoes_update_created_at_trigger
BEFORE INSERT OR UPDATE OR DELETE
ON shoes.brands_shoes
FOR EACH ROW
EXECUTE FUNCTION shoes.update_created_at_column();
