import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/moment_item_detail.dart';
import 'package:flutter_tuan/component/moment_recentview_list.dart';
import 'package:flutter_tuan/data/moment_recentview_list_data.dart';
import 'package:flutter_tuan/data/moment_sub_data.dart';
import 'package:flutter_tuan/model/moment_model.dart';
import 'package:flutter_tuan/model/moment_recentview_model.dart';


class MomentRecommendedPage extends StatefulWidget {
  @override
  _MomentRecommendedPageState createState() => _MomentRecommendedPageState();
}

class _MomentRecommendedPageState extends State<MomentRecommendedPage>
    with AutomaticKeepAliveClientMixin {
  MomentRecentViewListModel viewList = MomentRecentViewListModel([]);
  MomentListModel list;

  @override
  void initState() {
    super.initState();
    list = MomentListModel([]);
    getNextPage();
    getMomentRecentViewList();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              MomentRecentViewList(
                list: this.viewList,
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              if (index + 3 == list.data.length) {
                getNextPage();
              }
              return MomentItemDetail(item: list.data[index]);
            }, childCount: list.data.length),
          )
        ],
      ),
    );
    // ListView.custom(childrenDelegate: SliverChildListDelegate([  MomentRecentViewList(list: this.viewList,),
    //   MomentSubListPage(getNextPage: getNextPage,list: list,)])));
    // MomentRecentViewList(list: this.viewList,),
    // MomentSubListPage(getNextPage: getNextPage,list: list,)
  }

  getMomentRecentViewList() {
    //TODO when the ip is connected this is OK
    // return MomentRecentViewListModel.fromJson(getMomentRecentViewResult());
    viewList.data.addAll(getMomentRecentViewListData());
  }

  void getNextPage() {
    Future.delayed(Duration(milliseconds: 0)).then((e) {
      setState(() {
        list.data.addAll(getMomentRecomData());
      });
    });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
