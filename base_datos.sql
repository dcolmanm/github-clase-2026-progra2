-- 1. Crear la base de datos
CREATE DATABASE mi_tema;
USE mi_tema;

-- 2. Crear al menos 2 tablas relacionadas
CREATE TABLE categorias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50)
);

CREATE TABLE peliculas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(100),
  anio INT,
  id_categoria INT,
  FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

-- 3. Insertar datos (mínimo 5 registros por tabla)
INSERT INTO categorias (nombre) VALUES
('Drama'),
('Ciencia Ficción'),
('Animación'),
('Fantasía'),
('Acción');

INSERT INTO peliculas (titulo, anio, id_categoria) VALUES
('El Padrino', 1972, 1),
('Interestelar', 2014, 2),
('Toy Story', 1995, 3),
('El Señor de los Anillos', 2001, 4),
('Parásitos', 2019, 1);

-- 4. Al menos 3 consultas SELECT comentadas

-- Muestra todas las películas
SELECT * FROM peliculas;

-- Muestra título y año de películas posteriores al 2000
SELECT titulo, anio FROM peliculas WHERE anio > 2000;

-- Muestra el título de cada película junto con el nombre de su categoría
SELECT p.titulo, c.nombre
FROM peliculas p
JOIN categorias c ON p.id_categoria = c.id;