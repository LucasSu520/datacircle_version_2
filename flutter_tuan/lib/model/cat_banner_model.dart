import 'package:flutter/foundation.dart';

class CatBannerItemModel {
  CatBannerItemModel({this.image});
  final String image;

  factory CatBannerItemModel.fromJson(dynamic json) {
    return CatBannerItemModel(image: json['image']);
  }
}

class CatBannerListModel {
  List<CatBannerItemModel> data;
  CatBannerListModel(this.data);
  factory CatBannerListModel.fromFactory(List json) {
    return CatBannerListModel(
        json.map((e) => CatBannerItemModel.fromJson((e))).toList());
  }
}
