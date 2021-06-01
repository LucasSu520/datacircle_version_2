class MyActivityItemModel{
  const MyActivityItemModel({this.title,this.time,this.imageUrl,this.finished,this.originator});
  final String imageUrl;
  final String title;
  final bool finished;
  final String time;
  final Originator originator;

  factory MyActivityItemModel.fromJson(dynamic json){
    return MyActivityItemModel(
      imageUrl: json['imageUrl'],
      time: json['title'],
      finished: json['finished'],
      title: json['title'],
      originator: json['originator'],
    );
  }
}

class Originator {
  const Originator({this.name,this.avatar});
  final String avatar;
  final String name;
}

class MyActivityListModel{
  const MyActivityListModel(this.data);
  final List<MyActivityItemModel> data;

  factory MyActivityListModel.fromJson(List json){
    return MyActivityListModel(json.map((e) => MyActivityItemModel.fromJson(e)).toList()) ;
  }
}