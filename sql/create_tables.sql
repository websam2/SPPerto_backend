CREATE DATABASE IF NOT EXISTS spperto;

USE spperto;

CREATE TABLE IF NOT EXISTS empresa (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    telefone VARCHAR(20),
    logo VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS link (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empresa_id INT,
    url VARCHAR(255),
    name VARCHAR(255),
    FOREIGN KEY (empresa_id) REFERENCES empresa(id)
);
