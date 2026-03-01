// Seleccionar la base de datos
use('StreamHubDB');

// TASK 5: Creación de Índices para optimizar búsquedas
// Índice único por título (evita duplicados y acelera búsquedas por nombre)
db.contenido.createIndex({ titulo: 1 }, { unique: true });

// Índice compuesto por tipo y género (ideal para filtros de catálogo)
db.contenido.createIndex({ tipo: 1, genero: 1 });

// Listar índices para verificar la creación
db.contenido.getIndexes();