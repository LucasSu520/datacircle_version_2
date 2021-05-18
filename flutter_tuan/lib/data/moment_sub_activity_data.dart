import 'package:flutter_tuan/model/moment_sub_activity_model.dart';

getMomentSubActivityData() {
  List<MomentSubActivityItemModel> list = <MomentSubActivityItemModel>[
    MomentSubActivityItemModel(
        avatar: 'images/duoduo.jpg',
        name: '黄忆慈',
        time: '刚刚',
        content: '多多自己做的戒指 真好看💍 ',
        pict: 'images/ring3.jpg'),
    MomentSubActivityItemModel(
        avatar: 'images/ouyangnana.jpg',
        name: '歐陽娜娜Nana',
        time: '5-16',
        content: '夏天的風🍓&💛 ',
        pict: 'images/nana.jpg'),
  ];
  return list;
}
