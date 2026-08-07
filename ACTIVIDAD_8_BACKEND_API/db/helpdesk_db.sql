-- =====================================================
-- BASE DE DATOS
-- Sistema Help Desk
-- Universidad Técnica de Manabí
-- Autor: Mauro Pomagualli
-- =====================================================

-- Crear la base de datos
-- CREATE DATABASE helpdesk_db;

-- =====================================================
-- TABLA TICKETS
-- =====================================================

CREATE TABLE IF NOT EXISTS tickets (

    id SERIAL PRIMARY KEY,

    titulo VARCHAR(150) NOT NULL,

    descripcion TEXT NOT NULL,

    categoria VARCHAR(30) NOT NULL,

    prioridad VARCHAR(20) NOT NULL,

    estado VARCHAR(30) NOT NULL

);

-- =====================================================
-- TABLA USUARIOS
-- =====================================================

CREATE TABLE IF NOT EXISTS usuarios (

    id SERIAL PRIMARY KEY,

    usuario VARCHAR(50) UNIQUE NOT NULL,

    password VARCHAR(100) NOT NULL

);

-- =====================================================
-- DATOS DE PRUEBA
-- =====================================================

INSERT INTO tickets
(titulo, descripcion, categoria, prioridad, estado)
VALUES
('Servidor sin conexión',
 'El servidor principal perdió comunicación con la red.',
 'Red',
 'Alta',
 'Abierto'),

('Error en disco duro',
 'El servidor presenta errores de lectura.',
 'Hardware',
 'Media',
 'En Progreso'),

('Falla del sistema operativo',
 'El sistema operativo no inicia correctamente.',
 'Software',
 'Alta',
 'Cerrado');

INSERT INTO usuarios
(usuario, password)
VALUES
('admin','12345');