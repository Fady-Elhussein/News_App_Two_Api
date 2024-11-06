import 'package:flutter/material.dart';
import 'package:untitled/model/tech_model.dart';
import 'package:untitled/services/tesla_articales_services.dart';
import 'package:untitled/services/tech_articles_service.dart';


class TechArticlesProvider extends ChangeNotifier{
  TechArticlesModel? techArticlesModel;

  getTechArticlesProvider()async{
    techArticlesModel= await TechArticlesServices.getTechArticles();
    notifyListeners();
  }
}