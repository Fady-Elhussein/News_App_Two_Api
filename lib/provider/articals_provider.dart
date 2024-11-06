import 'package:flutter/material.dart';
import 'package:untitled/services/articales_services.dart';

import '../model/artiicles_model.dart';

class TeslaArticlesProvider extends ChangeNotifier{
  TeslaArticlesModel? teslaArticlesModel;

  getTeslaArticlesProvider()async{
   teslaArticlesModel= await TeslaArticlesServices.getTeslaArticles();
   notifyListeners();
  }
}