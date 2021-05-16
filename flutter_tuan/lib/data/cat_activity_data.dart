import 'package:flutter_tuan/model/cat_activity_model.dart';

getCatActivitiesData() {
  List<CatActivityListModel> catActivitiesData = [

    CatActivityListModel(
      title: "户外",
      data:[
        CatActivityItemModel(
          imageUrl:'images/climbing.jpg' ,
          name: '爬山',
          isOfficial:true ,
        ),
        CatActivityItemModel(
          imageUrl:'images/CS.jpg' ,
          name: '真人CS',
          isOfficial:true ,
        ),
        CatActivityItemModel(
          imageUrl:'images/guitar.jpg' ,
          name: '吉他聚会',
          isOfficial:false ,
        ),
        CatActivityItemModel(
          imageUrl:'images/strawberry.jpg' ,
          name: '草莓音乐节',
          isOfficial:true ,
        ),
      ]
    ),
    CatActivityListModel(
        title: '室内',
        data:[
          CatActivityItemModel(
            imageUrl:'images/food.jpg' ,
            name: '美食交流',
            isOfficial:false ,
          ),
          CatActivityItemModel(
            imageUrl:'images/library.jpeg' ,
            name: '图书馆头脑风暴',
            isOfficial:false ,
          ),
          CatActivityItemModel(
            imageUrl:'images/computer.jpeg' ,
            name: '网游争霸',
            isOfficial:true ,
          ),
          CatActivityItemModel(
            imageUrl:'images/lol.jpg' ,
            name: 'LOL线下聚会',
            isOfficial:true ,
          ),
        ]
    ),
    CatActivityListModel(
        title: '近期大火',
        data:[
          CatActivityItemModel(
            imageUrl:'images/concert.jpg' ,
            name: '音乐会',
            isOfficial:true ,
          ),
          CatActivityItemModel(
            imageUrl:'images/PUBG.jpeg' ,
            name: '吃鸡组队',
            isOfficial:true ,
          ),
          CatActivityItemModel(
            imageUrl:'images/wolfKill.jpeg' ,
            name: '线下狼人杀',
            isOfficial:false ,
          ),
          CatActivityItemModel(
            imageUrl:'images/skate.jpg' ,
            name: '滑板人生',
            isOfficial:false ,
          ),
        ]
    ),
    CatActivityListModel(
        title: '热作预约',
        data:[
          CatActivityItemModel(
            imageUrl:'images/MeetingRoom.jpg' ,
            name: '好书推荐',
            isOfficial:false ,
          ),
          CatActivityItemModel(
            imageUrl:'images/library.jpeg' ,
            name: '图书馆热点展示',
            isOfficial:false ,
          ),
          CatActivityItemModel(
            imageUrl:'images/football.jpg' ,
            name: '足球大战',
            isOfficial:true ,
          ),
          CatActivityItemModel(
            imageUrl:'images/lunZiMa.jpg' ,
            name: '支持LPL战队',
            isOfficial:true ,
          ),
        ]
    ),
  ];
  return catActivitiesData;
}
