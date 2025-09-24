/*Ejemplo Json
  {
    "id": 2,
    "correo": "actualizacion",
    "nombre": "update@update.com"
} */

// Modelo de datos para representar un usuario
class User {
  //Identificadores
  int id;
  String correo;
  String nombre;

  //Constructor de la clase User
  //Los campos son obligatorios
  User({required this.id, required this.correo, required this.nombre});

  //Contructor que crea una instacia de User desde un mapa Json
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      // Asigna el valor del campo 'id' del JSON al campo id del modelo
      id: json['id'],
      // Asigna el valor del campo 'correo' del JSON al campo correo del modelo
      correo: json['correo'],
      // Asigna el valor del campo 'nombre' del JSON al campo nombre del modelo
      nombre: json['nombre'],
    );
  }

  //Metodo para convertir una instancia de User a un mapa Json
  Map<String, dynamic> toJson() {
    return {
      // Agrega el campo id al mapa JSON
      'id': id,
      // Agrega el campo correo al mapa JSON
      'correo': correo,
      // Agrega el campo nombre al mapa JSON
      'nombre': nombre,
    };
  }
}
