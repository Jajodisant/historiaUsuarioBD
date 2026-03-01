-- 1. JOIN: Estudiantes, inscripciones y cursos
SELECT e.nombre_completo, c.nombre AS curso, i.calificacion_final
FROM estudiantes e
JOIN inscripciones i ON e.id_estudiante = i.id_estudiante
JOIN cursos c ON i.id_curso = c.id_curso;

-- 2. Docentes con > 5 años de experiencia
SELECT c.nombre AS curso, d.nombre_completo AS docente
FROM cursos c
JOIN docentes d ON c.id_docente = d.id_docente
WHERE d.anios_experiencia > 5;

-- 3. Promedio por curso
SELECT c.nombre, AVG(i.calificacion_final) as promedio
FROM cursos c
JOIN inscripciones i ON c.id_curso = i.id_curso
GROUP BY c.nombre;

-- 4. Estudiantes en más de un curso
SELECT e.nombre_completo, COUNT(i.id_curso) as total_cursos
FROM estudiantes e
JOIN inscripciones i ON e.id_estudiante = i.id_estudiante
GROUP BY e.nombre_completo
HAVING COUNT(i.id_curso) > 1;

-- 5. ALTER TABLE
ALTER TABLE estudiantes ADD COLUMN estado_academico VARCHAR(20) DEFAULT 'Activo';

-- 6. ON DELETE (Al borrar docente, id_docente en cursos pasará a NULL por la restricción)
DELETE FROM docentes WHERE id_docente = 2;