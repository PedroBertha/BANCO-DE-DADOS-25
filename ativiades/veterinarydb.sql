CREATE DATABASE IF NOT EXISTS VeterinaryDB;
USE VeterinaryDB;

-- Tabela para armazenar os tipos de animais
CREATE TABLE Tipo_Animal (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL
);

-- Tabela para armazenar os animais
CREATE TABLE Animal (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    ID_Tipo_Animal INT NOT NULL,
    Dt_Nascimento DATE NOT NULL,
    Cor VARCHAR(30),
    Peso DECIMAL(5,2),
    Altura DECIMAL(5,2),
    FOREIGN KEY (ID_Tipo_Animal) REFERENCES Tipo_Animal(ID)
);

-- Tabela para armazenar as vacinas disponíveis
CREATE TABLE Vacina (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL
);

-- Tabela para armazenar o histórico de vacinas aplicadas
CREATE TABLE Historico_Vacinacao (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_Animal INT NOT NULL,
    ID_Vacina INT NOT NULL,
    Data_Aplicacao DATE NOT NULL,
    FOREIGN KEY (ID_Animal) REFERENCES Animal(ID) ON DELETE CASCADE,
    FOREIGN KEY (ID_Vacina) REFERENCES Vacina(ID) ON DELETE CASCADE
);

-- Inserindo exemplos de tipos de animais
INSERT INTO Tipo_Animal (Nome) VALUES ('Canino'), ('Felino'), ('Suíno'), ('Caprino'), ('Equino');

-- Inserindo exemplos de animais
INSERT INTO Animal (Nome, ID_Tipo_Animal, Dt_Nascimento, Cor, Peso, Altura) VALUES
('Rex', 1, '2020-05-10', 'Marrom', 25.5, 0.75),
('Mia', 2, '2019-08-15', 'Preto', 4.2, 0.30),
('Bacon', 3, '2021-02-20', 'Rosa', 50.0, 0.60),
('Thor', 5, '2018-11-30', 'Branco', 500.0, 1.70);

-- Inserindo exemplos de vacinas
INSERT INTO Vacina (Nome) VALUES
('Antirrábica'),
('V8'),
('Leptospirose'),
('Influenza Suína'),
('Tétano Equino');

-- Inserindo histórico de vacinação
INSERT INTO Historico_Vacinacao (ID_Animal, ID_Vacina, Data_Aplicacao) VALUES
(1, 1, '2024-01-10'),
(1, 2, '2024-02-20'),
(2, 3, '2024-03-05'),
(3, 4, '2024-01-25'),
(4, 5, '2024-02-15');
