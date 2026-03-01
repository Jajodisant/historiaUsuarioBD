use('StreamHubDB');

// TASK 3: Consultas con operadores lógicos y comparadores
// Películas largas (> 120 min)
db.contenido.find({ tipo: "Película", duracion_min: { $gt: 120 } });

// Usuarios Premium con mucha actividad
db.usuarios.find({
  $and: [
    { vistas_totales: { $gt: 5 } },
    { suscripcion: "Premium" }
  ]
});

// TASK 6: Agregaciones (Métricas de uso)
// Promedio de duración agrupado por género
db.contenido.aggregate([
  { $unwind: "$genero" },
  { $group: {
      _id: "$genero",
      promedio_minutos: { $avg: "$duracion_min" }
  }},
  { $sort: { promedio_minutos: -1 } }
]);