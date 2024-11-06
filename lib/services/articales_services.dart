import 'package:dio/dio.dart';
import 'package:untitled/model/artiicles_model.dart';

class TeslaArticlesServices {
  static Dio dio = Dio();
 static getTeslaArticles() async{

  try{
    Response response= await dio.get(
        "https://newsapi.org/v2/everything?q=tesla&from=2024-10-06&sortBy=publishedAt&apiKey=7c64a4b2debe40168c74926def260cdf");
    if(response.statusCode==200){
      return TeslaArticlesModel.fromJson(response.data);
    }else{
      throw Exception("There is an Error");
    }
  } catch(error){
    throw Exception("The Error is $error");


  }

  }
}
