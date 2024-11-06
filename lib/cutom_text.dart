import 'package:flutter/material.dart';

class CutomTextWidget extends StatelessWidget {
  String image;
  String title;
  String description;
  CutomTextWidget({
    required this.image,
    required this.title,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(image),
        Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        Text(description),
      ],
    );
  }


}
