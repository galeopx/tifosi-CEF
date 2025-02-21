-- Création de la base de données
CREATE DATABASE IF NOT EXISTS tifosi;

-- Création de l'utilisateur avec les privilèges
CREATE USER IF NOT EXISTS 'tifosi'@'localhost' IDENTIFIED BY '2e5a8i12o';
GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi'@'localhost';
FLUSH PRIVILEGES;

-- Utilisation de la base de données
USE tifosi;

-- Création de la table marque
CREATE TABLE marque (
    id_marque INT PRIMARY KEY AUTO_INCREMENT,
    nom_marque VARCHAR(50) NOT NULL UNIQUE
);

-- Création de la table boisson
CREATE TABLE boisson (
    id_boisson INT PRIMARY KEY AUTO_INCREMENT,
    nom_boisson VARCHAR(50) NOT NULL,
    prix_boisson DECIMAL(5,2) NOT NULL CHECK (prix_boisson > 0),
    id_marque INT NOT NULL,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);

-- Création de la table focaccia
CREATE TABLE focaccia (
    id_focaccia INT PRIMARY KEY AUTO_INCREMENT,
    nom_focaccia VARCHAR(50) NOT NULL UNIQUE,
    prix_focaccia DECIMAL(5,2) NOT NULL CHECK (prix_focaccia > 0),
    description_focaccia TEXT
);

-- Création de la table ingredient
CREATE TABLE ingredient (
    id_ingredient INT PRIMARY KEY AUTO_INCREMENT,
    nom_ingredient VARCHAR(50) NOT NULL UNIQUE
);

-- Création de la table de liaison focaccia_ingredient
CREATE TABLE focaccia_ingredient (
    id_focaccia INT,
    id_ingredient INT,
    PRIMARY KEY (id_focaccia, id_ingredient),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
);