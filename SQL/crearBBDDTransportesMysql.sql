-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS transporte_publico;

-- Usar la base de datos
USE transporte_publico;

DROP TABLE IF EXISTS hechos_transporte;
DROP TABLE IF EXISTS dim_dia;
DROP TABLE IF EXISTS dim_region;
DROP TABLE IF EXISTS dim_transporte;
DROP TABLE IF EXISTS dim_ruta;

-- Crear la tabla de rutas
CREATE TABLE IF NOT EXISTS dim_ruta (
    id_ruta INT AUTO_INCREMENT PRIMARY KEY,
    ruta VARCHAR(255)
);

-- Crear la tabla de tipos de transporte
CREATE TABLE IF NOT EXISTS dim_transporte (
    id_transporte INT AUTO_INCREMENT PRIMARY KEY,
    tipo_transporte VARCHAR(255)
);

-- Crear la tabla de regiones
CREATE TABLE IF NOT EXISTS dim_region (
    id_region INT AUTO_INCREMENT PRIMARY KEY,
    region VARCHAR(255)
);

-- Crear la tabla de días
CREATE TABLE IF NOT EXISTS dim_dia (
    id_dia INT AUTO_INCREMENT PRIMARY KEY,
    dia_semana VARCHAR(255)
);

-- Crear la tabla de hechos de transporte
CREATE TABLE IF NOT EXISTS hechos_transporte (
    id_hecho INT AUTO_INCREMENT PRIMARY KEY,
    id_ruta INT,
    id_transporte INT,
    id_region INT,
    id_dia INT,
    numero_pasajeros FLOAT,
    duracion_viaje_minutos FLOAT,
    retraso_minutos INT,
    FOREIGN KEY (id_ruta) REFERENCES dim_ruta(id_ruta),
    FOREIGN KEY (id_transporte) REFERENCES dim_transporte(id_transporte),
    FOREIGN KEY (id_region) REFERENCES dim_region(id_region),
    FOREIGN KEY (id_dia) REFERENCES dim_dia(id_dia)
);
