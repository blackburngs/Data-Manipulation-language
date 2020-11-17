CREATE TABLE Product(
    Product_id VARCHAR(20) CONSTRAINT pk_product PRIMARY KEY,
    product_name VARCHAR(20) CONSTRAINT cons_product NOT NULL,
    Price NUMBER CONSTRAINT check_price CHECK (Price>0).
);
DESCRIBE Product;

CREATE TABLE Orders(
    Costumer_id VARCHAR(20) CONSTRAINT pk_costumer PRIMARY KEY,
    Product_id VARCHAR(20),
    quantity NUMBER,
    total_amount NUMBER,
    CONSTRAINT fk_costumer FOREIGN KEY (Costumer_id) REFERENCES Costumers (Costumer_id),
    CONSTRAINT fk_product FOREIGN Key (Product_id) REFERENCES Producs (Product_id),
);
DESCRIBE Orders;

CREATE TABLE Costumers(
    Costumer_id VARCHAR(20),
    Costumer_name VARCHAR(20) CONSTRAINT cons_costumer NOT NULL.
    Costumer_tel NUMBER,
);
DESCRIBE Costumers;

Alter TABLE Product ADD Category VARCHAR(20);
Alter TABLE Orders ADD OrderDate DATE(SYSDATE);

INSERT INTO Product (Product_id, product_name,Category,Price) VALUES ('P01', 'Samsung Galaxy S20', 'Smartphone', 3299);
INSERT INTO Product (Product_id, product_name,Category,Price) VALUES ('P02', 'Asus Notebook', 'Pc', 4599);

INSERT INTO Orders (Costumer_id, Product_id, OrderDate, quantity, total_amount) VALUES ('C01', 'P01', NULL, 2, 9198);
INSERT INTO Orders (Costumer_id, Product_id, OrderDate, quantity, total_amount) VALUES ('C02', 'P02', 28/05/2020, 1, 3299);

INSERT INTO Costumers (Costumer_id, Costumer_name, Costumer_tel) VALUES ('C01', 'Ali', 7321009);
INSERT INTO Costumers (Costumer_id, Costumer_name, Costumer_tel) VALUES ('C02', 'Asma', 77345823);