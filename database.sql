DROP DATABASE IF EXISTS hospital;

CREATE DATABASE hospital;
use hospital;

CREATE TABLE docteur(
    id_docteur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    prenom VARCHAR(20) NOT NULL,
    tel VARCHAR(10) NOT NULL UNIQUE,
    specialite VARCHAR(12)
);

CREATE TABLE serviceP(
    id_service INT PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    batiment VARCHAR(1) NOT NULL
);

CREATE TABLE infirmier(
    id_infirmier INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    prenom VARCHAR(20) NOT NULL,
    tel VARCHAR(10) NOT NULL,
    rotation TIMESTAMP,
    salaire VARCHAR(10),
    id_service INT NOT NULL,
    CONSTRAINT `fk_infirmier_service` FOREIGN KEY (`id_service`) REFERENCES serviceP(`id_service`)
);

CREATE TABLE salle(
    id_salle INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(4) NOT NULL,
    nombreLits INT(2) NOT NULL,
    id_service INT NOT NULL,
    CONSTRAINT `fk_salle_service` FOREIGN KEY(`id_service`) REFERENCES serviceP(`id_service`)
);

CREATE TABLE malade(
    id_malade INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    prenom VARCHAR(20) NOT NULL,
    tel VARCHAR(10) NOT NULL,
    adresse VARCHAR(100),
    diagnostic VARCHAR(175)
);

CREATE TABLE salleHospitaliseMalade(
    id_salleHospitaliseMalade INT PRIMARY KEY AUTO_INCREMENT,
    id_salle INT NOT NULL,
    id_malade INT NOT NULL,
    numLit INT NOT NULL,
    CONSTRAINT `fk_salleHospitaliseMalade_salle` FOREIGN KEY (`id_salle`) REFERENCES salle(`id_salle`),
    CONSTRAINT `fk_salleHospitaliseMalade_malade` FOREIGN KEY (`id_malade`) REFERENCES malade(`id_malade`)
);

CREATE TABLE infirmierSurveilleSalle(
    id_infirmierSurveilleSalle INT PRIMARY KEY AUTO_INCREMENT,
    id_salle INT NOT NULL,
    id_infirmier INT NOT NULL,
    numLit INT NOT NULL,
    CONSTRAINT `fk_infirmierSurveilleSalle_salle` FOREIGN KEY(`id_salle`) REFERENCES salle(`id_salle`),
    CONSTRAINT `fk_infirmierSurveilleSalle_infirmier` FOREIGN KEY(`id_infirmier`) REFERENCES infirmier(`id_infirmier`)
);

CREATE TABLE docteurSoigneMalade(
    id_docteurSoigneMalade INT PRIMARY KEY AUTO_INCREMENT,
    id_docteur INT NOT NULL,
    id_malade INT NOT NULL,
    CONSTRAINT `fk_docteurSoigneMalade_docteur` FOREIGN KEY(`id_docteur`) REFERENCES docteur(`id_docteur`),
    CONSTRAINT `fk_docteurSoigneMalade_malade` FOREIGN KEY(`id_malade`) REFERENCES malade(`id_malade`)
);