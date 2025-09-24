import 'package:flutter/material.dart';

class TextFliedExample extends StatelessWidget {
  const TextFliedExample({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> Cajon = ["Nombre","Apellido","Celular","Fotico"];

    // return Padding(
    //   padding: const EdgeInsets.all(18.0),
    //   child: Column(
    //     children: [
    //       for (var campo in Cajon)...[
    //         TextFieldCajon(texto: campo),
    //         Text(campo),
    //       ],
    //     ],
    //   ),
    // );
   
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: TextField(
              maxLines: 1,
              maxLength: 10,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Ingresa tu nombre",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Introduce tu email",
                border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Introduce tu contraseña",
                border: OutlineInputBorder()),
            ),
          ),
        ],
      ),
    );
  }
}



// class TextFieldCajon extends StatelessWidget {

//     final String texto;
//     const TextFieldCajon({super.key, required this.texto});

//     @override
//     Widget build(BuildContext context){
//       return Column(
//         children: [
//           TextField(decoration: InputDecoration(hintText: texto)),
//           SizedBox(height: 30,)
//         ],
//       );
//     }

// }