import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';
import 'user_form_screen.dart';

class HomeScreen extends StatelessWidget {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listado de Usuarios'),
      ),
      body: Obx(() {
        if (userController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: userController.userList.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(userController.userList[index].nombre),
                  subtitle: Text(userController.userList[index].correo),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      userController
                          .deleteUser(userController.userList[index].id);
                    },
                  ),
                  onTap: () {
                    Get.to(
                        UserFormScreen(user: userController.userList[index]));
                  });
            },
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.to(UserFormScreen());
          }),
    );
  }
}
