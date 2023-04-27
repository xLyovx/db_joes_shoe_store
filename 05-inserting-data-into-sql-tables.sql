INSERT INTO  employees.employees (name, dni, gender, year_of_birth, phone, address, email) VALUES
('Luis Carlos', 'E-567901', 'Male', '1970-04-15', '0416-111-82-04', 'street #01 Simóm Bolivar','luis_carlos@gmail.com'),
('Oliver Reeves', 'V-984521', 'Male', '1990-04-15', '0424-333-45-14', 'street #05 Simon Diaz','Oliv1997@yahoo.com'),
('Daniel Oropeza', 'V-81207792', 'Male', '2004-01-01', '0414-538-25-94', 'street #22 La marrona','Dani_2000@hotmail.com'),
('Valentina Fontaines', 'E-16155923', 'Women', '1980-05-21', '0416-333-88-76', 'street #50 Franciso De Miranda','lindos_cachorritos@gmail.com'),
('Carmen Vianna', 'E-98004913', 'Women', '1970-10-25', '0426-11-22-34', 'street #02 Bandera Tricolor','DocenteVE2020@yahoo.com');

INSERT INTO  clients.clients (name, dni, gender, year_of_birth, phone, address, email) VALUES
('Yelsica Aponte', 'V-22898101', 'Women', '1990-08-25', '0426-919-28-94', 'Avenue #891 Simbolos','YELITz919@gmail.com'),
('Lucia Peralta', 'V-333656781', 'Women', '2010-04-05', '0414-999-87-65', 'Street #22 La marrona','greenday9090@gmail.com'),
('Markus Vera', 'V-29131089', 'Male', '2000-01-15', '0412-767-22-77', 'Avenue #600 Guaicaipuro','venezolanoO@gmail.com'),
('Efren Saade', 'V-14890239', 'Male', '2006-10-07', '0416-616-11-97', 'street # 44 Chavez','potrodelano@hotmail.com'),
('Juan Polanco', 'V-26148756', 'Male', '1997-03-02', '0424-727-21-88', 'street # 44 Chavez','JP2004@hotmail.com');

INSERT INTO shoes.brands_shoes (name) VALUES
('Nike'),
('Adidas'),
('Puma'),
('Reebook'),
('Vans'),
('Converse'),
('New Balance'),
('Asics'),
('Skechers'),
('Fila');

INSERT INTO shoes.shoes (name, brand_shoe_id ,description, size, color, price, quantity) VALUES
('Air Max 97', 1, 'Cushioned Running Shoes', '9.5', 'Black/Red', 139.99, 10),
('Superstar', 2, 'Rubber Toe Sneakers', '8.0', 'White/Black', 89.99, 15),
('Old Skool', 5, 'Rubber-Soled Skate Sneakers', '10.5', 'Black/White', 64.99, 20),
('Chuck Taylor All Star', 2, 'Classic Canvas Sneakers', '7.5', 'Red', 59.99, 12),
('Air Force 1', 1, 'Iconic Sneakers', '10.0', 'White', 129.99, 8),
('Gazelle', 3, 'Classic Suede Sneakers', '9.0', 'Blue', 79.99, 18),
('Classic Leather', 4, 'Sneakers with retro styling', '8.5', 'Black', 74.99, 6),
('Ultraboost', 1, 'Running Shoes with Cushioning Technology', '9.5', 'Grey', 179.99, 5),
('Sk8-Hi', 5, 'Mid-top skate shoes', '11.0', 'Black', 69.99, 10),
('Air Jordan 1', 1, 'Iconic Basketball Sneakers', '10.5', 'Black/Red', 159.99, 4);

INSERT INTO sales.sales (employee_id, client_id, shoe_id, amount)VALUES
 (2, 3, 8, 1737.2),
 (2, 1, 9, 959.71),
 (4, 3, 9, 1103.35),
 (5, 5, 7, 571.06),
 (2, 2, 5, 1405.44),
 (5, 1, 3, 1940.02),
 (5, 4, 2, 777.8),
 (2, 1, 2, 1410.42),
 (1, 4, 6, 953.68),
 (3, 4, 6, 1530.12);