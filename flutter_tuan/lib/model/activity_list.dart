class ActivityListData{
  ActivityListData({
    this.imagePath='',
    this.titleTxt='',
    this.subTxt='',
    this.group='',
    this.dist=1.8,
    this.personNum=0,
    this.time='',
    this.rating=0.0,
});

  String imagePath;
  String titleTxt;
  String subTxt;
  String group;
  double dist;
  int personNum;
  String time;
  double rating;

  static List<ActivityListData> activityList=<ActivityListData>[
    ActivityListData(
      imagePath:'assets/skate.jpg' ,
      titleTxt: '学习滑板（初级）',
      subTxt: '厦门大学科艺教学楼下',
      dist: 1.2,
      personNum: 10,
      time: '20210508',
      rating:  5.0,
    ),
    ActivityListData(
      imagePath: 'assets/party.jpg',
      titleTxt: 'COS party',
      subTxt: '厦门Mojito',
      dist: 2.3,
      personNum: 50,
      time: '20210520',
      rating: 4.5,
    ),
    ActivityListData(
      imagePath: 'assets/skate.jpg',
      titleTxt: '狼人杀（高级）',
      subTxt: '富万邦麦当劳',
      dist: 1.6,
      personNum: 8,
      time: '20210508',
      rating: 3.8,
    ),
    ActivityListData(
      imagePath: 'assets/library.com',
      titleTxt: '圆桌会议',
      subTxt: '厦门大学图书馆',
      dist: 1.8,
      personNum: 10,
      time: '20210618',
      rating: 5.0,
    )
  ];

}