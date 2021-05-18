import 'package:flutter_tuan/model/tuan_activity_model.dart';

getTuanActivityData(String name) {
  List<TuanActivityItemModel> recommendActivityList = <TuanActivityItemModel>[
    TuanActivityItemModel(
        imageUrl: 'images/skate.jpg',
        name: '学习滑板（初级）',
        dest: '厦门大学科艺教学楼下',
        person: 10,
        time: '20210508',
        group: '运动',
        isOfficial: true),
    TuanActivityItemModel(
      imageUrl: 'images/party.jpg',
      name: 'COS party',
      dest: '厦门Mojito',
      person: 50,
      time: '20210520',
      group: '青年',
      isOfficial: true,
    ),
    TuanActivityItemModel(
        imageUrl: 'images/wolfKill.jpeg',
        name: '狼人杀（高级）',
        dest: '富万邦麦当劳',
        person: 8,
        time: '20210508',
        group: '桌游',
        isOfficial: true),
    TuanActivityItemModel(
        imageUrl: 'images/football.jpg',
        name: '足球',
        dest: '厦门大学演武场',
        person: 10,
        time: '20210618',
        group: '运动',
        isOfficial: true)
  ];

  List<TuanActivityItemModel> upcomingPageActivityList =
      <TuanActivityItemModel>[
    TuanActivityItemModel(
        imageUrl: 'images/concert.jpg',
        name: '音乐会',
        dest: '厦门大学科艺中心',
        person: 10,
        time: '20210508',
        group: '音乐',
        isOfficial: true),
    TuanActivityItemModel(
        imageUrl: 'images/lunZiMa.jpg',
        name: 'LOL线下比赛',
        dest: '华侨博物馆欢乐园网咖',
        person: 10,
        time: '20210508',
        group: '网游',
        isOfficial: true),
    TuanActivityItemModel(
        imageUrl: 'images/lunZiMa.jpg',
        name: '美食',
        dest: '厦门大学南光食堂',
        person: 10,
        time: '20210508',
        group: '美食',
        isOfficial: false),
    TuanActivityItemModel(
        imageUrl: 'images/MeetingRoom.jpg',
        name: '电脑展示',
        dest: '厦门大学南强二',
        person: 10,
        time: '20210508',
        group: '科技',
        isOfficial: false),
  ];

  List<TuanActivityItemModel> rankPageActivityList = <TuanActivityItemModel>[
    TuanActivityItemModel(
        imageUrl: 'images/concert.jpg',
        name: '音乐会',
        dest: '厦门大学科艺中心',
        person: 10,
        time: '20210508',
        group: '音乐',
        isOfficial: true),
    TuanActivityItemModel(
        imageUrl: 'images/lunZiMa.jpg',
        name: 'LOL线下比赛',
        dest: '华侨博物馆欢乐园网咖',
        person: 10,
        time: '20210508',
        group: '网游',
        isOfficial: true),
    TuanActivityItemModel(
        imageUrl: 'images/lunZiMa.jpg',
        name: '美食',
        dest: '厦门大学南光食堂',
        person: 10,
        time: '20210508',
        group: '美食',
        isOfficial: false),
    TuanActivityItemModel(
        imageUrl: 'images/MeetingRoom.jpg',
        name: '电脑展示',
        dest: '厦门大学南强二',
        person: 10,
        time: '20210508',
        group: '科技',
        isOfficial: false),
  ];

  switch (name) {
    case '推荐':
      // set the return for the functon.
      return recommendActivityList;
      break;
    case '即将开始':
      return upcomingPageActivityList;
      break;
    case '排名':
      return rankPageActivityList;
      break;
    default:
  }
  return null;
}
