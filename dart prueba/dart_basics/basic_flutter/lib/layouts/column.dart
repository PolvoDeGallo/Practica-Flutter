import 'package:flutter/material.dart';
 //stl para crear estructura

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Text("Hola")
      ],

    );
  }
}