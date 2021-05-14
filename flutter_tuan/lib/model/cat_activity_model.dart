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
  String title;
  List<CatActivityItemModel> data;
  CatActivityListModel({this.title,this.data});

  factory CatActivityListModel.fromJson(Map<String ,dynamic> json){
    return CatActivityListModel(
      title: json['title'],
      data: json['catActivityListModel']
    );
  }
}


