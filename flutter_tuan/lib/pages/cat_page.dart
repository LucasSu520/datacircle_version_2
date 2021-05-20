import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/cat_page_banner.dart';
import 'package:flutter_tuan/constants/constant.dart';
import 'package:flutter_tuan/data/cat_activity_data.dart';
import 'package:flutter_tuan/data/cat_banner_data.dart';
import 'package:flutter_tuan/main.dart';
import 'package:flutter_tuan/model/cat_activity_model.dart';
import 'package:flutter_tuan/model/cat_banner_model.dart';
import 'package:flutter_tuan/component/search_bar.dart';
import 'package:flutter_tuan/pages/cat_avtivity_list_page.dart';

const DEFAULT_TEXT = '用户 | 活动 | 地点';

class CategoryPage extends StatefulWidget {
  static final ScrollController catActivityController = new ScrollController();
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<CatActivityListModel> list = [];
  CatBannerListModel _catBannerListModel = CatBannerListModel([]);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: kDefaultTabBarPadding.copyWith(top: 13,bottom: 5),
              child: Row(children: [
                (Expanded(
                    child: SearchBar(
                  hint: DEFAULT_TEXT,
                ))),
                SizedBox(
                  width: 8,
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    MyApp.scaffoldKey.currentState.openDrawer();
                  },
                  child: CircleAvatar(
                    radius: RadiusSizeConstants.circleAvatarSize,
                    backgroundImage: AssetImage('images/duoduo.jpg'),
                  ),
                ),
              ]),
            ),
            Expanded(
                child: ListView(
              padding: kDefaultTabViewPadding.copyWith(top: 14,left: 21),
              controller: CategoryPage.catActivityController,
              physics:BouncingScrollPhysics(),
              children: [
                CatPageBanner(catBannerListModel: _catBannerListModel),
                SizedBox(
                  height: 20,
                ),
                CatActivityListPage(
                  catActivityListModel: this.list,
                ),
                // Container(color: Colors.blueAccent,
                //   width:MediaQuery.of(context).size.width,
                //   padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
                //   child: LocalNav(localNavList: this.localNavList,title: '网游',),
                // ),
              ],
            ))
          ],
        ));
  }

  @override
  void initState() {
    //TODO add the list to the localNacList

    //TODO when the network is connected edit the catactivityListmodel;

    this._catBannerListModel.data.addAll(getCatBannerData());
    this.list.addAll(getCatActivitiesData());
    super.initState();
  }
}
