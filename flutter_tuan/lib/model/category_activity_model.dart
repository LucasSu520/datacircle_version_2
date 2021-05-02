class CatActivityItemModel {
  String imageUrl;
  String name;
  bool isOfficial;
  CatActivityItemModel({this.imageUrl, this.name, this.isOfficial});

  factory CatActivityItemModel.fronJson(dynamic json){
    return CatActivityItemModel(
      imageUrl: json['imageUrl'],
      name: json['imageUrl'],
      isOfficial: json['isOfficial']
    );
  }
}

class CatActivityListModel{
  List<CatActivityItemModel> data;
  CatActivityListModel(this.data);

  factory CatActivityListModel.fromJson(List json){
    return CatActivityListModel(
      json.map((e) => CatActivityItemModel.fronJson((e))).toList()
    );
  }
}
