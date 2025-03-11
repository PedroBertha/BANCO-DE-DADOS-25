CREATE DATABASE IMOVEL;

USE IMOVEL;

CREATE TABLE `IMOVEL`(
`1_ID` INT auto_increment PRIMARY KEY,
`2_PROPERTY` CHAR (30) NOT NULL,
`3_DESCRIPTION` TEXT,
`4_ROOMS` INT NOT NULL,
`5_VALUE` FLOAT DEFAULT 0.00 NOT NULL
);
INSERT INTO  IMOVEL (2_PROPERTY, 3_DESCRIPTION, 4_ROOMS, 5_VALUE)
VALUES
('Apartamento 1', 'Apartamento moderno com vista para o mar', 3, 350000.00),
('Casa 2', 'Casa espaçosa com jardim grande', 4, 450000.00),
('Sobrado 3', 'Sobrado com 2 andares e piscina', 5, 550000.00),
('Apartamento 4', 'Apartamento compacto no centro da cidade', 2, 200000.00),
('Casa 5', 'Casa de campo em área rural tranquila', 6, 600000.00),
('Cobertura 6', 'Cobertura com terraço e churrasqueira', 4, 800000.00),
('Apartamento 7', 'Apartamento pequeno, ideal para estudantes', 1, 120000.00),
('Chácara 8', 'Chácara com pomar e área de lazer', 3, 250000.00),
('Casa 9', 'Casa com vista para a serra e espaço gourmet', 5, 700000.00),
('Sobrado 10', 'Sobrado novo em bairro tranquilo', 4, 400000.00);

SELECT * FROM IMOVEL; 

SELECT  2_PROPERTY, 3_DESCRIPTION, 4_ROOMS, 5_VALUE
FROM IMOVEL 
WHERE 4_ROOMS > 3 AND 5_VALUE > 100000;

SELECT 2_PROPERTY, 5_VALUE
FROM IMOVEL
ORDER BY 5_VALUE DESC;
