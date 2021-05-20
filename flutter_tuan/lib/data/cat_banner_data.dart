import 'package:flutter_tuan/model/cat_banner_model.dart';

getCatBannerData() {
  List<CatBannerItemModel> catBannerList = <CatBannerItemModel>[
    CatBannerItemModel(image: 'images/lunZiMa.jpg'),
    CatBannerItemModel(image: 'images/food.jpg'),
    CatBannerItemModel(image: 'images/football.jpg'),
  ];
  return catBannerList;
}
