CREATE TABLE Product_category (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(250),
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);


CREATE TABLE Product_inventory (
    id INT PRIMARY KEY,
    quantity INT NOT NULL,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE Discount (
    id INT PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    description VARCHAR2(250),
    discount_percent DECIMAL(5, 2) NOT NULL,
    active VARCHAR2(5) CHECK (active IN ('TRUE', 'FALSE')) NOT NULL,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(250),
    SKU VARCHAR(50) NOT NULL,
    category_id INT,
    inventory_id INT,
    price DECIMAL(10, 2) NOT NULL,
    discount_id INT,
    created_at TIMESTAMP ,
    modified_at TIMESTAMP ,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Product_category(id),
    FOREIGN KEY (inventory_id) REFERENCES Product_inventory(id),
    FOREIGN KEY (discount_id) REFERENCES Discount(id)
);
