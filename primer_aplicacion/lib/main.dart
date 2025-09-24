import 'package:flutter/material.dart';
import 'package:primer_aplicacion/components/button.dart';
import 'package:primer_aplicacion/components/image.dart';
import 'package:primer_aplicacion/components/text.dart';
import 'package:primer_aplicacion/components/textfield.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi aplicacion"),
          backgroundColor: Colors.red,
          foregroundColor: Colors.brown,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.bar_chart))
          ],
        ),
        backgroundColor: Colors.amber,
        body: TextExample( 
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}),
      ),
    );
  }
}
