import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';
import '../models/user.dart';

class UserFormScreen extends StatelessWidget {
  final UserController userController = Get.find();
  final User? user;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  UserFormScreen({this.user}) {
    if (user != null) {
      nameController.text = user!.nombre;
      emailController.text = user!.correo;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(user == null ? 'Agregar Usuario' : 'Editar Usuario'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: 'Nombre'),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: 'Correo'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (user == null) {
                      userController.addUser(User(
                        id: 0,
                        nombre: nameController.text,
                        correo: emailController.text,
                      ));
                    } else {
                      userController.updateUser(
                        User(
                          id: user!.id,
                          nombre: nameController.text,
                          correo: emailController.text,
                        ),
                      );
                    }
                    Get.back();
                  },
                  child: Text(user == null ? 'Agregar' : 'Actualizar'),
                )
              ],
            )));
  }
}
