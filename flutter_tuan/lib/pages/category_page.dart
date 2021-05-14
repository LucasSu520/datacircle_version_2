import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/cat_page_banner.dart';
import 'package:flutter_tuan/constants/constant.dart';
import 'package:flutter_tuan/data/cat_banner_data.dart';
import 'package:flutter_tuan/main.dart';
import 'package:flutter_tuan/model/cat_activity_model.dart';
import 'package:flutter_tuan/model/cat_banner_model.dart';
import 'package:flutter_tuan/model/common_model.dart';
import 'package:flutter_tuan/component/local_nav.dart';
import 'package:flutter_tuan/component/search_bar.dart';

const DEFAULT_TEXT = '用户 | 活动 | 地点';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<CommonModel> localNavList = [];
  CatActivityListModel _catActivityListModel=CatActivityListModel([]);
  CatBannerListModel _catBannerListModel=CatBannerListModel([]);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        padding: kDefaultTabBarPadding,
        children: [
          Row(children: [
            (Expanded(
                child: SearchBar(
              hint: DEFAULT_TEXT,
            ))),
            SizedBox(
              width: 8,
            ),
            GestureDetector(
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
          CatPageBanner(catBannerListModel: _catBannerListModel),
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

    //TODO when the network is connected edit the catactivityListmodel;
    
    this._catBannerListModel.data.addAll(getCatBannerList());
    this.localNavList = new List();
    super.initState();
  }
}


