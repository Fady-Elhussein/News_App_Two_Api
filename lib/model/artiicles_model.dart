class TeslaArticlesModel {
  List<dynamic> teslaarticles;

  TeslaArticlesModel({required this.teslaarticles});

  factory TeslaArticlesModel.fromJson(Map<String,dynamic> json){
    return TeslaArticlesModel(teslaarticles: json["articles"]);
  }
}
