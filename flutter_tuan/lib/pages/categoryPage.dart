import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_tuan/model/common_model.dart';
import 'package:flutter_tuan/widget/local_nav.dart';
import 'package:flutter_tuan/widget/search_bar.dart';
import 'package:flutter_tuan/widget/square_swiper_pagination.dart';

const DEFAULT_TEXT = '用户 | 活动 | 地点';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<CommonModel> localNavList = [];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.fromLTRB(19, 10, 19, 10),
        children: [
          Row(children: [
            (Expanded(
                child: SearchBar(
              hint: DEFAULT_TEXT,
            ))),
            SizedBox(
              width: 6,
            ),
            CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('images/duoduo.jpg'),
            )
          ]),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 160,
            child: Swiper(
              itemCount: 3,
              autoplay: true,
              autoplayDelay: 8000,
              pagination: SwiperPagination(
                  builder: SquareSwiperPagination(
                      size: 10,
                      activeSize: 6,
                      color: Colors.white.withAlpha(80),
                      activeColor: Colors.white)),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage('images/lunZiMa.jpg'),
                            fit: BoxFit.cover)),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LocalNav(localNavList: localNavList, title: '网游 '),
          LocalNav(localNavList: localNavList, title: '运动'),
          LocalNav(localNavList: localNavList, title: '运动'),
          LocalNav(localNavList: localNavList, title: '运动'),
          LocalNav(localNavList: localNavList, title: '运动'),
          // Container(color: Colors.blueAccent,
          //   width:MediaQuery.of(context).size.width,
          //   padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
          //   child: LocalNav(localNavList: this.localNavList,title: '网游',),
          // ),
        ],
      ),
    );
  }

  @override
  void initState() {
    this.localNavList = [
      CommonModel(
          image: 'images/football.jpg', title: 'LOL线下比赛', isOfficial: true),
      CommonModel(
          image: 'images/MeetingRoom.jpg', title: '图书馆圆桌会议', isOfficial: false),
      CommonModel(
          image: 'images/wolfKill.jpeg', title: '狼人杀线下组局', isOfficial: true),
      CommonModel(
          image: 'images/party.jpg', title: '毕业party', isOfficial: true),
      CommonModel(
          image: 'images/wolfKill.jpeg', title: '狼人杀线下组局', isOfficial: true),
      CommonModel(
          image: 'images/party.jpg', title: '毕业party', isOfficial: true),
      CommonModel(
          image: 'images/wolfKill.jpeg', title: '狼人杀线下组局', isOfficial: true),
      CommonModel(
          image: 'images/party.jpg', title: '毕业party', isOfficial: true),
      CommonModel(
          image: 'images/wolfKill.jpeg', title: '狼人杀线下组局', isOfficial: true),
      CommonModel(
          image: 'images/party.jpg', title: '毕业party', isOfficial: true),
    ];
    super.initState();
  }
}
