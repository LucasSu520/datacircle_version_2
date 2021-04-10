import 'package:flutter_tuan/model/activity.dart';

class ActivityList{

  static List<Activity> activityList=<Activity>[
    Activity(
      imagePath:'assets/skate.jpg' ,
      titleTxt: '学习滑板（初级）',
      subTxt: '厦门大学科艺教学楼下',
      dist: 1.2,
      personNum: 10,
      time: '20210508',
      rating:  5.0,
      group: '运动'
    ),
    Activity(
      imagePath: 'assets/party.jpg',
      titleTxt: 'COS party',
      subTxt: '厦门Mojito',
      dist: 2.3,
      personNum: 50,
      time: '20210520',
      rating: 4.5,
      group: '青年'
    ),
    Activity(
      imagePath: 'assets/wolfKill.jpeg',
      titleTxt: '狼人杀（高级）',
      subTxt: '富万邦麦当劳',
      dist: 1.6,
      personNum: 8,
      time: '20210508',
      rating: 3.8,
      group: '桌游'
    ),
    Activity(
      imagePath: 'assets/football.jpg',
      titleTxt: '足球',
      subTxt: '厦门大学演武场',
      dist: 1.8,
      personNum: 10,
      time: '20210618',
      rating: 5.0,
      group: '运动'
    )
  ];

}