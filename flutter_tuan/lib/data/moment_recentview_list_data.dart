import 'package:flutter_tuan/model/moment_recentview_model.dart';

getMomentRecentViewListData(){
  List<MomentRecentViewItemModel> list;
  list=<MomentRecentViewItemModel>[
    MomentRecentViewItemModel(
      name: '桌游',
      pict: 'images/wolfKill.jpeg'
    ),
    MomentRecentViewItemModel(
      name: '户外运动',
      pict: 'images/skate.jpg'
    ),
    MomentRecentViewItemModel(
      name: '爬山',
      pict: 'images/climbing.jpg'
    )
  ];
  return list;
}