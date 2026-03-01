
-- Inserción de datos (TASK 2)
INSERT INTO docentes (nombre_completo, correo_institucional, departamento_academico, anios_experiencia) VALUES
('Dr. Arnaldo Ruiz', 'aruiz@u.edu', 'Sistemas', 12),
('Dra. Elena Pons', 'epons@u.edu', 'Matemáticas', 4),
('Ing. Mario Silva', 'msilva@u.edu', 'Sistemas', 8);

INSERT INTO estudiantes (nombre_completo, correo_electronico, genero, identificacion, carrera, fecha_nacimiento) VALUES
('Ana Gomez', 'ana@mail.com', 'F', '101', 'Sistemas', '2002-05-15'),
('Luis Paez', 'luis@mail.com', 'M', '102', 'Sistemas', '2001-10-20'),
('Sara Vera', 'sara@mail.com', 'F', '103', 'Industrial', '2003-01-12'),
('Pedro Gil', 'pedro@mail.com', 'M', '104', 'Sistemas', '2000-03-30'),
('Carla Luz', 'carla@mail.com', 'F', '105', 'Matemáticas', '2002-11-05');

INSERT INTO cursos (nombre, codigo, creditos, semestre, id_docente) VALUES
('Bases de Datos I', 'BD101', 4, 3, 1),
('Cálculo Integral', 'MAT202', 4, 2, 2),
('Programación Web', 'PW303', 3, 4, 3),
('Álgebra Lineal', 'MAT101', 3, 1, 2);

INSERT INTO inscripciones (id_estudiante, id_curso, calificacion_final) VALUES
(1, 1, 4.5), (1, 3, 3.8), (2, 1, 2.5), (2, 2, 4.0),
(3, 2, 4.8), (4, 3, 3.2), (5, 4, 4.1), (1, 2, 3.5);