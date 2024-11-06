import 'package:flutter/material.dart';

class CustomArticles extends StatelessWidget {
  String image;
  String title;
  String decription;

  CustomArticles({super.key,
  required this.image,
    required this.title,
    required this.decription,

  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.network(image),
        SizedBox(height: 31,),
        Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
        Text(decription),


      ],
    );
  }
}
