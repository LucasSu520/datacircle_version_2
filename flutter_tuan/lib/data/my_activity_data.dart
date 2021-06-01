import 'package:flutter_tuan/model/my_activity_model.dart';

getMyActivityData(String name) {
  switch (name) {
    case '全部活动':
      return MyActivityListModel([
        MyActivityItemModel(
          title: '剧本杀',
          time: '2021-6-20',
          imageUrl: 'images/wolfKill.jpeg',
          finished: false,
          originator: Originator(name: '多多的小男友', avatar: 'images/duoduo.jpg'),
        ),
        MyActivityItemModel(
            title: '厦门大学足球杯决赛',
            time: '2021-5-30',
            imageUrl: 'images/football.jpg',
            finished: true,
            originator: Originator(name: '娜娜', avatar: 'images/ouyangnana.jpg'))
      ]);
    case '已报名':
      return MyActivityListModel([
        MyActivityItemModel(
          title: '剧本杀',
          time: '2021-6-20',
          imageUrl: 'images/wolfKill.jpeg',
          finished: false,
          originator: Originator(name: '多多的小男友', avatar: 'images/duoduo.jpg'),
        ),
        MyActivityItemModel(
            title: '厦门大学足球杯决赛',
            time: '2021-5-30',
            finished: true,
            imageUrl: 'images/football.jpg',
            originator: Originator(name: '娜娜', avatar: 'images/ouyangnana.jpg'))
      ]);
    case '待评价':
      return MyActivityListModel([
        MyActivityItemModel(
          title: '剧本杀',
          finished: false,
          time: '2021-6-20',
          imageUrl: 'images/wolfKill.jpeg',
          originator: Originator(name: '多多的小男友', avatar: 'images/duoduo.jpg'),
        ),
        MyActivityItemModel(
            title: '厦门大学足球杯决赛',
            time: '2021-5-30',
            finished: true,
            imageUrl: 'images/football.jpg',
            originator: Originator(name: '娜娜', avatar: 'images/ouyangnana.jpg'))
      ]);
    default:
      return;
  }
}
