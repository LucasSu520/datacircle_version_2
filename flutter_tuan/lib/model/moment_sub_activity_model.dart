class MomentSubActivityItemModel {
  MomentSubActivityItemModel(
  {this.avatar, this.name, this.time, this.content, this.pict});
  final String avatar;
  final String name;
  final String time;
  final String content;
  final String pict;

  factory MomentSubActivityItemModel.fromJson(dynamic json) {
    return MomentSubActivityItemModel(avatar:json['avatar'],name: json['name'],
        time:json['time'],content: json['content'],pict: json['pict']);
  }
}

class MomentSubActivityListModel {
  MomentSubActivityListModel(this.data);
  final List<MomentSubActivityItemModel> data;

  factory MomentSubActivityListModel.fromJson(List json) {
    return MomentSubActivityListModel(
        json.map((e) => MomentSubActivityItemModel.fromJson(e)).toList());
  }
}
