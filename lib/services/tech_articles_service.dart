import 'package:dio/dio.dart';
import 'package:untitled/model/artiicles_model.dart';
import 'package:untitled/model/tech_model.dart';

class TechArticlesServices {
  static Dio dio = Dio();
  static getTechArticles() async{

    try{
      Response response= await dio.get(
          "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7c64a4b2debe40168c74926def260cdf");
      if(response.statusCode==200){
        return TechArticlesModel.fromJson(response.data);
      }else{
        throw Exception("There is an Error");
      }
    } catch(error){
      throw Exception("The Error is $error");


    }

  }




}
