CREATE TABLE employees.employees (
    employee_id SERIAL NOT NULL UNIQUE,
    name VARCHAR(50),
    dni VARCHAR(30) UNIQUE,
    gender VARCHAR(15),
    year_of_birth DATE,
    phone VARCHAR(30) UNIQUE,
    address VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (employee_id)
);

CREATE TABLE clients.clients (
    client_id SERIAL NOT NULL UNIQUE,
    name VARCHAR(50),
    dni VARCHAR(30)UNIQUE,
    gender VARCHAR(15),
    year_of_birth DATE,
    phone VARCHAR(30) UNIQUE,
    email VARCHAR(100) UNIQUE,
    address VARCHAR(100),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (client_id)
);

CREATE TABLE shoes.brands_shoes (
    brand_shoe_id SERIAL NOT NULL,
    name VARCHAR(30),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (brand_shoe_id)
);

CREATE TABLE shoes.shoes (
    shoe_id SERIAL NOT NULL,
    name VARCHAR(30),
    brand_shoe_id SERIAL NOT NULL,
    description VARCHAR(200),
    size VARCHAR(5),
    color VARCHAR(40),
    price DECIMAL(10 , 2),
    quantity INT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (shoe_id),
    FOREIGN KEY (brand_shoe_id) REFERENCES shoes.brands_shoes(brand_shoe_id)
);

CREATE TABLE sales.sales (
    sale_id SERIAL NOT NULL,
    employee_id SERIAL NOT NULL,
    client_id SERIAL NOT NULL,
    shoe_id SERIAL NOT NULL,
    amount DECIMAL(10 , 2 ),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (sale_id),
    FOREIGN KEY (employee_id) REFERENCES employees.employees(employee_id),
    FOREIGN KEY (client_id) REFERENCES clients.clients(client_id),
    FOREIGN KEY (shoe_id) REFERENCES shoes.shoes(shoe_id)
);