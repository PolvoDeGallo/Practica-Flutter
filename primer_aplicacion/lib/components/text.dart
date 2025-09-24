import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text("Hoña"),
        Text("Holi",style:TextStyle(
          fontSize: 24
        )),
        Text("Texto basico",style:TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold
        )),
        Text("Texto curvado",style: TextStyle(
          fontStyle: FontStyle.italic, color: Colors.red, fontSize: 30, backgroundColor: Colors.blue
        ),),
        Text("Decorator", style: TextStyle(
          decoration: TextDecoration.lineThrough, fontSize:30, color: Colors.black, decorationColor: Colors.red
        )),
        Text("Espacio entre letras",style: TextStyle(
          letterSpacing: 5, fontSize: 30
        )),
        Text("Texto largo Texto largoTexto largoTexto largoTexto largo",style: TextStyle(
          fontSize: 30
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        ),
        Spacer()
      ],
    );
  }
}