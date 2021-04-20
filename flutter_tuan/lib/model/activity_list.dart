import 'package:flutter_tuan/model/activity.dart';

class ActivityList{

  static List<Activity> recommendedActivityList=<Activity>[
    Activity(
      imagePath:'assets/skate.jpg' ,
      titleTxt: '学习滑板（初级）',
      subTxt: '厦门大学科艺教学楼下',
      dist: 1.2,
      personNum: 10,
      time: '20210508',
      rating:  5.0,
      group: '运动',
      official: true
    ),
    Activity(
      imagePath: 'assets/party.jpg',
      titleTxt: 'COS party',
      subTxt: '厦门Mojito',
      dist: 2.3,
      personNum: 50,
      time: '20210520',
      rating: 4.5,
      group: '青年',
      official: true,
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

  static List<Activity> upcomingPageActivityList=<Activity>[
    Activity(
        imagePath:'assets/concert.jpg' ,
        titleTxt: '音乐会',
        subTxt: '厦门大学科艺中心',
        dist: 1.2,
        personNum: 10,
        time: '20210508',
        rating:  5.0,
        group: '音乐',
        official: true
    ),
    Activity(
        imagePath:'assets/lunZiMa.jpg' ,
        titleTxt: 'LOL线下比赛',
        subTxt: '华侨博物馆欢乐园网咖',
        dist: 1.2,
        personNum: 10,
        time: '20210508',
        rating:  5.0,
        group: '网游',
        official: true
    ),
    Activity(
        imagePath:'assets/lunZiMa.jpg' ,
        titleTxt: '美食',
        subTxt: '厦门大学南光食堂',
        dist: 1.2,
        personNum: 10,
        time: '20210508',
        rating:  5.0,
        group: '美食',
        official: false
    ),
    Activity(
        imagePath:'assets/MeetingRoom.jpg' ,
        titleTxt: '电脑展示',
        subTxt: '厦门大学南强二',
        dist: 1.2,
        personNum: 10,
        time: '20210508',
        rating:  5.0,
        group: '科技',
        official: false
    ),
  ];

  static List<Activity> rankPageActivityList=<Activity>[
    Activity(
        imagePath:'assets/concert.jpg' ,
        titleTxt: '音乐会',
        subTxt: '厦门大学科艺中心',
        dist: 1.2,
        personNum: 10,
        time: '20210508',
        rating:  5.0,
        group: '音乐',
        official: true
    ),
    Activity(
        imagePath:'assets/lunZiMa.jpg' ,
        titleTxt: 'LOL线下比赛',
        subTxt: '华侨博物馆欢乐园网咖',
        dist: 1.2,
        personNum: 10,
        time: '20210508',
        rating:  5.0,
        group: '网游',
        official: true
    ),
    Activity(
        imagePath:'assets/lunZiMa.jpg' ,
        titleTxt: '美食',
        subTxt: '厦门大学南光食堂',
        dist: 1.2,
        personNum: 10,
        time: '20210508',
        rating:  5.0,
        group: '美食',
        official: false
    ),
    Activity(
        imagePath:'assets/MeetingRoom.jpg' ,
        titleTxt: '电脑展示',
        subTxt: '厦门大学南强二',
        dist: 1.2,
        personNum: 10,
        time: '20210508',
        rating:  5.0,
        group: '科技',
        official: false
    ),
  ];

}