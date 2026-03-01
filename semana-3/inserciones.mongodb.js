use('StreamHubDB');

// TASK 2: Población inicial de contenido audiovisual
db.contenido.insertMany([
  {
    titulo: "Inception",
    tipo: "Película",
    genero: ["Sci-Fi", "Acción"],
    duracion_min: 148,
    estreno: 2010,
    puntuacion_media: 4.8
  },
  {
    titulo: "Stranger Things",
    tipo: "Serie",
    genero: ["Terror", "Drama"],
    temporadas: 4,
    estreno: 2016,
    puntuacion_media: 4.5
  },
  {
    titulo: "The Dark Knight",
    tipo: "Película",
    genero: ["Acción", "Crimen"],
    duracion_min: 152,
    estreno: 2008,
    puntuacion_media: 4.9
  },
  {
    titulo: "Soul",
    tipo: "Película",
    genero: ["Animación", "Familia"],
    duracion_min: 100,
    estreno: 2020,
    puntuacion_media: 4.2
  }
]);

// Inserción de un usuario con historial anidado
db.usuarios.insertOne({
  nombre: "Carlos Ruiz",
  email: "cruiz@mail.com",
  suscripcion: "Premium",
  vistas_totales: 12,
  historial: [
    { titulo: "Inception", fecha: new Date() }
  ]
});