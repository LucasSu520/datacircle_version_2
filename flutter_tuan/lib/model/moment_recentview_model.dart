class MomentRecentViewItemModel {
  MomentRecentViewItemModel({this.pict,this.name});
  final String pict;
  final String name;

  factory MomentRecentViewItemModel.fromJson(dynamic json){
    return MomentRecentViewItemModel(
      pict: json['pict'],
      name: json['name'],
    );
  }
}

class MomentRecentViewListModel{
  MomentRecentViewListModel(this.data);
  final List<MomentRecentViewItemModel> data;

  factory MomentRecentViewListModel.fromJson(List json){
    return MomentRecentViewListModel(
      json.map((e) => MomentRecentViewItemModel.fromJson(e)).toList()
    );
  }
}
