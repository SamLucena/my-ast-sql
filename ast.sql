CREATE DATABASE ast;
USE ast;

-- Tabela de cadastro do cliente
CREATE TABLE client(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    cnpj CHAR(14) NOT NULL,
    contact VARCHAR(50),
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO cliente VALUES
(NULL, 'CaramicoFish', '12345678000160', '(11)99999-9999', 'caramico@gmail.com', '1234567senha');

UPDATE client SET name = 'Caralápia' WHERE id = 1;

SELECT * FROM client;

CREATE TABLE sensor(
	id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(255),
    value DOUBLE,
    place VARCHAR(255) NOT NULL
);

CREATE TABLE registry(
	id INT PRIMARY KEY AUTO_INCREMENT,
	sensor_id INT,
    temperature DOUBLE,
    date DATETIME
);
ALTER TABLE registry RENAME COLUMN date_time TO data_hora; 
INSERT INTO sensor VALUES(NULL, 'Temperatura', 20.0, 'Caminhão');
SELECT * FROM sensor;

INSERT INTO registry VALUES(NULL, 1, 22.5, '2023-03-06 14:13:22');
INSERT INTO registry VALUES(NULL, 1, 22.0, '2023-03-06 15:13:22');
SELECT * FROM registry;
