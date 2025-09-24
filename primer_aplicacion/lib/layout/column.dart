import 'package:flutter/material.dart';

// Columnas es lo que va hacia abajo una pinche columna xd
class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color.fromARGB(255, 62, 163, 52),
      width: double.infinity,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Holaaaaaaaaaaaaaaaaaaaaaaa"),
          Text("Hola"),
          Text("Hola mundo"),
          Text("Ashlyn racistaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
        ],
      )
    );    
  }
}