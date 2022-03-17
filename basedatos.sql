-- Felix Isidro Urrieta Velazquez
-- Crear una base de datos (CREATE DATABASE)

DROP DATABASE IF EXISTS prueba;
CREATE DATABASE prueba;

SHOW DATABASES;

USE prueba;

-- Crear una tabla
CREATE TABLE gente(
    nombre VARCHAR(40), 
    fecha DATE
);

-- Podemos consultar cuántas tablas
SHOW TABLES;

-- Valores nulos
CREATE TABLE ciudad1(
    nombre CHAR(20) NOT NULL, 
    poblacion INT NULL
);

-- Valores por defecto
CREATE TABLE ciudad2 (
    nombre CHAR(20) NOT NULL,
    poblacion INT NULL DEFAULT 5000
);

-- Claves primarias
CREATE TABLE ciudad3 (
    nombre CHAR(20) NOT NULL PRIMARY KEY,
    poblacion INT NULL DEFAULT 5000
);

-- Columnas autoincrementadas
CREATE TABLE ciudad5 (
    clave INT AUTO_INCREMENT PRIMARY KEY,
    nombre CHAR(20) NOT NULL,
    poblacion INT NULL DEFAULT 5000
);

-- Comentarios
CREATE TABLE ciudad6(
    clave INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Clave principal',
    nombre CHAR(50) NOT NULL,
    poblacion INT NULL DEFAULT 5000
);

-- Índices
-- El primero corresponde a las claves primarias
CREATE TABLE ciudad4 (
    nombre CHAR(20) NOT NULL,
    poblacion INT NULL DEFAULT 5000,
    PRIMARY KEY (nombre)
);

    -- podemos especificar varios nombres de columnas, 
    -- para construir claves primarias compuestas por varias columnas
CREATE TABLE mitabla1 (
    id1 CHAR(2) NOT NULL,
    id2 CHAR(2) NOT NULL,
    texto CHAR(30),
    PRIMARY KEY (id1, id2)
);

-- El segundo tipo de índice permite definir índices sobre una columna, 
-- sobre varias, o sobre partes de columnas.
CREATE TABLE mitabla2 (
    id INT,
    nombre CHAR(19),
    INDEX (nombre)
);

-- O su equivalente:
CREATE TABLE mitabla3 (
    id INT,
    nombre CHAR(19),
    KEY (nombre)
);

-- El tercero permite definir índices con claves únicas,

CREATE TABLE mitabla5 (
    id INT,
    nombre CHAR(19),
    UNIQUE (nombre)
);

show tables;
