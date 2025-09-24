import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

// Clase para manejar las solicitudes HTTP relacionadas con el modelo User
class UserService {
  // URL base para las solicitudes a la API
  static const String baseUrl = 'http://192.168.1.107:8080/api/usuarios';

  // Método para obtener todos los usuarios
  static Future<List<User>> getUsers() async {
    // Realiza una solicitud GET a la URL base
    final response = await http.get(Uri.parse(baseUrl));
    // Si la solicitud fue exitosa (código 200)
    if (response.statusCode == 200) {
      // Decodifica el cuerpo de la respuesta JSON en una lista dinámica
      List<dynamic> body = jsonDecode(response.body);
      // Convierte cada elemento de la lista en una instancia de User
      List<User> users =
          body.map((dynamic item) => User.fromJson(item)).toList();
      return users;
    } else {
      // Si la solicitud falló, lanza una excepción
      throw Exception('Error al cargar usuarios');
    }
  }

  // Método para crear un nuevo usuario
  static Future<User> createUser(User user) async {
    // Realiza una solicitud POST a la URL base con el cuerpo JSON del usuario
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );
    // Si la creación fue exitosa (código 201)
    if (response.statusCode == 201) {
      // Decodifica el cuerpo de la respuesta JSON en una instancia de User
      return User.fromJson(jsonDecode(response.body));
    } else {
      // Si la solicitud falló, lanza una excepción
      throw Exception('Error al crear usuario');
    }
  }

  // Método para actualizar un usuario existente
  static Future<User> updateUser(User user) async {
    // Realiza una solicitud POST a la URL base con el cuerpo JSON del usuario
    final response = await http.post(
      Uri.parse('$baseUrl'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'id': user.id,
        'correo': user.correo,
        'nombre': user.nombre,
      }),
    );
    // Si la actualización fue exitosa (código 201)
    if (response.statusCode == 201) {
      // Decodifica el cuerpo de la respuesta JSON en una instancia de User
      return User.fromJson(jsonDecode(response.body));
    } else {
      // Lanza una excepción
      throw Exception('Error al actualizar usuario');
    }
  }

  // Método para eliminar un usuario existente por su ID
  static Future<void> deleteUser(int id) async {
    // Realiza una solicitud DELETE a la URL base con el ID del usuario
    final response = await http.delete(Uri.parse('$baseUrl/$id'));
    // Si la eliminación no fue exitosa (código diferente a 204)
    if (response.statusCode != 204){
      // Lanza una excepción
      throw Exception('Error al eliminar usuario');
    }
  }
}
