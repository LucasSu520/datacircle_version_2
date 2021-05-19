class MomentItemModel {
  MomentItemModel(
  {this.avatar, this.name, this.time, this.content, this.pict,this.group,this.isSubscribe});
  final String avatar;
  final String name;
  final String time;
  final String content;
  final String pict;
  final String group;
  final bool isSubscribe;

  factory MomentItemModel.fromJson(dynamic json) {
    return MomentItemModel(avatar:json['avatar'],name: json['name'],
        time:json['time'],content: json['content'],pict: json['pict'],group: json['group'],isSubscribe: json['isSubscribe']);
  }
}

class MomentListModel {
  MomentListModel(this.data);
  final List<MomentItemModel> data;

  factory MomentListModel.fromJson(List json) {
    return MomentListModel(
        json.map((e) => MomentItemModel.fromJson(e)).toList());
  }
}
