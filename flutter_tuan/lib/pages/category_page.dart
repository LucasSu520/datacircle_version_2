import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_tuan/constants/constant.dart';
import 'package:flutter_tuan/main.dart';
import 'package:flutter_tuan/model/common_model.dart';
import 'package:flutter_tuan/component/local_nav.dart';
import 'package:flutter_tuan/component/search_bar.dart';
import 'package:flutter_tuan/component/square_swiper_pagination.dart';

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
            ),GestureDetector(
              onTap: () {
                MyApp.scaffoldKey.currentState.openDrawer();
              },
              child: Padding(
                padding: EdgeInsets.only(right: 5),
                child: CircleAvatar(
                  radius: RadiusSizeConstants.circleAvatarSize,
                  backgroundImage: AssetImage('images/duoduo.jpg'),
                ),
              ),
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
          //TODO add the common list to the commonlistmodel
          LocalNav(localNavList: CommonListModel(List()), title: '网游 '),
          LocalNav(localNavList: CommonListModel(List()), title: '网游 '),
          LocalNav(localNavList: CommonListModel(List()), title: '网游 '),

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
    //TODO add the list to the localNacList
    this.localNavList = new List();
    super.initState();
  }
}
