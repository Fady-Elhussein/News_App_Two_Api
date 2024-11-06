import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/cutom_text.dart';
import 'package:untitled/provider/tech_provider.dart';

import '../provider/articals_provider.dart';

class TechScreen extends StatelessWidget {
  const TechScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<TechArticlesProvider>(
        builder: (context, techArticlesProvider, child) {
          var techArticlesobject = techArticlesProvider.techArticlesModel;
          if (techArticlesobject == null) {
            techArticlesProvider.getTechArticlesProvider();
            return CircularProgressIndicator();
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                return CutomTextWidget(
                    title: techArticlesobject.techarticles[index]["title"],
                    description: techArticlesobject.techarticles[index]
                    ["description"],
                    image: techArticlesobject.techarticles[index]
                    ["urlToImage"]??"No Image");
              },
              itemCount: techArticlesobject.techarticles.length,
            );
          }
        },
      ),
    );
  }
}
