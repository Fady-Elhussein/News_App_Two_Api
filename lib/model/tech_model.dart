class TechArticlesModel {
  List<dynamic> techarticles;

  TechArticlesModel({required this.techarticles});

  factory TechArticlesModel.fromJson(Map<String,dynamic> json){
    return TechArticlesModel(techarticles: json["articles"]);
  }
}
