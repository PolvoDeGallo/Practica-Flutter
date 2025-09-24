import 'package:get/get.dart';
import '../models/user.dart';
import '../services/user_service.dart';

// Controlador para manejar el estado y las operaciones de los usuarios
class UserController extends GetxController {
  // Variable observable que indica si una operación está en proceso (carga)
  var isLoading = true.obs;
  // Lista observable de usuarios, inicialmente vacía
  var userList = <User>[].obs;

  // Método que se ejecuta cuando el controlador se inicializa
  @override
  void onInit() {
    // Llama al método para obtener los usuarios al iniciar
    fetchUsers();
    // Llama al método de inicialización del controlador padre
    super.onInit();
  }

  // Método para obtener la lista de usuarios desde el servicio
  void fetchUsers() async {
    try {
      // Establece isLoading a true para indicar que la carga está en proceso
      isLoading(true);
      // Solicita la lista de usuarios al servicio
      var users = await UserService.getUsers();
      if (users != null) {
        // Si la lista no es nula, asigna todos los usuarios a userList
        userList.assignAll(users);
      }
    } finally {
      // Establece isLoading a false al finalizar la operación, ya sea con éxito o error
      isLoading(false);
    }
  }

  // Método para agregar un nuevo usuario
  void addUser(User user) async {
    try {
      isLoading(true);
      // Llama al servicio para crear un nuevo usuario
      var newUser = await UserService.createUser(user);
      // Agrega el nuevo usuario a la lista observable
      userList.add(newUser);
    } finally {
      isLoading(false);
    }
  }

  // Método para actualizar un usuario existente
  void updateUser(User user) async {
    try {
      isLoading(true);
      // Llama al servicio para actualizar el usuario
      var updateUser = await UserService.updateUser(user);
       // Encuentra el índice del usuario en la lista
      int index = userList.indexWhere((u) => u.id == user.id);
      if (index != -1) {
         // Si se encuentra el usuario, actualiza la entrada en la lista
        userList[index] = updateUser;
      }
    } finally {
      isLoading(false);
    }
  }

  // Método para eliminar un usuario
  void deleteUser(int id) async {
    try {
      isLoading(true);
      // Llama al servicio para eliminar el usuario por ID
      await UserService.deleteUser(id);
      // Elimina el usuario de la lista si coincide con el ID
      userList.removeWhere((u) => u.id == id);
    } finally {
      isLoading(false);
    }
  }
}
