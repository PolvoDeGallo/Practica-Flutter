import 'package:flutter/material.dart';
//row es lo que va a hacia un lado una celda
class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:86,left:12,right: 50,bottom: 86),
      child: SizedBox(
        // height: double.infinity,
        child: const Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(), //Ocupan el espacio sobrante
            Text("Ejemplo "),
            Expanded(child: Text("Ejemplo 1")), //Expanded con wrap
            Text("Ole 1"),
          ],
        ),
      ),
    );
  }
}