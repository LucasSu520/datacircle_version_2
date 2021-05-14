import 'package:flutter/material.dart';

class TuanActivityItemModel {
  String name;
  String dest;
  int person;
  bool isOfficial;
  String time;
  String group;
  String imageUrl;
  TuanActivityItemModel(
      {this.name,
      this.dest,
      this.isOfficial,
      this.person,
      this.time,
      this.group,
      this.imageUrl});

  factory TuanActivityItemModel.fromJosn(dynamic json) {
    return TuanActivityItemModel(
        name: json['name'],
        dest: json['dest'],
        person: json['person'],
        isOfficial: json['isOfficial'],
        time: json['time'],
        group: json['group'],
        imageUrl: json['imageUrl']);
  }
}

class TuanActivityListModel {
  List<TuanActivityItemModel> data;
  TuanActivityListModel(this.data);

  factory TuanActivityListModel.fromJson(List json) {
    return TuanActivityListModel(
        json.map((e) => TuanActivityItemModel.fromJosn((e))).toList());
  }
}
