import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network("https://img.kemono.cr/thumbnail/data/19/45/1945a1e61bc4d00dd3012d5d9aca8ca4df6f8f522a174a7c44c642f4245200c7.png",fit: BoxFit.fitHeight),
        Image.asset("assets/images/hasumi.png", fit: BoxFit.fitHeight )
      ],
    );
  }
}