import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/cutom_text.dart';

import '../provider/articals_provider.dart';

class TeslaScreen extends StatelessWidget {
  const TeslaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<TeslaArticlesProvider>(
        builder: (context, teslaArticlesProvider, child) {
          var teslaArticlesobject = teslaArticlesProvider.teslaArticlesModel;
          if (teslaArticlesobject == null) {
            teslaArticlesProvider.getTeslaArticlesProvider();
            return CircularProgressIndicator();
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                return CutomTextWidget(
                    title: teslaArticlesobject.teslaarticles[index]["title"],
                    description: teslaArticlesobject.teslaarticles[index]
                        ["description"],
                    image: teslaArticlesobject.teslaarticles[index]
                        ["urlToImage"]??"No Image");
              },
              itemCount: teslaArticlesobject.teslaarticles.length,
            );
          }
        },
      ),
    );
  }
}
