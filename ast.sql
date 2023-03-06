CREATE DATABASE ast;
USE ast;

-- Tabela de cadastro do cliente
CREATE TABLE cliente(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome_fantasia VARCHAR(100) NOT NULL,
    cnpj CHAR(14) NOT NULL,
    contato VARCHAR(50),
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

INSERT INTO cliente VALUES
(NULL, 'CaramicoFish', '12345678000160', '(11)99999-9999', 'caramico@gmail.com', '1234567senha');

UPDATE cliente SET nome_fantasia = 'Caralápia' WHERE id = 1;

SELECT * FROM cliente;

CREATE TABLE sensor(
	id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(255),
    valor DOUBLE,
    local VARCHAR(255) NOT NULL
);

CREATE TABLE registro(
	id INT PRIMARY KEY AUTO_INCREMENT,
	sensor_id INT,
    temperatura DOUBLE,
    data DATETIME
);
ALTER TABLE registro RENAME COLUMN data TO data_hora; 
INSERT INTO sensor VALUES(NULL, 'Temperatura', 20.0, 'Caminhão');
SELECT * FROM sensor;

INSERT INTO registro VALUES(NULL, 1, 22.5, '2023-03-06 14:13:22');
INSERT INTO registro VALUES(NULL, 1, 22.0, '2023-03-06 15:13:22');
SELECT * FROM registro;