import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/animation_float_button.dart';
import 'package:flutter_tuan/data/moment_sub_activity_data.dart';
import 'package:flutter_tuan/model/moment_sub_activity_model.dart';
import 'package:flutter_tuan/pages/moment_sub_activity_list_page.dart';
import 'package:provider/provider.dart';

class MomentSubActivityPage extends StatefulWidget {
  @override
  _MomentSubActivityPageState createState() => _MomentSubActivityPageState();
}

class _MomentSubActivityPageState extends State<MomentSubActivityPage> with AutomaticKeepAliveClientMixin {

  MomentSubActivityListModel momentSubActivityList;

  void getNextPage(){
    int page=0;
    Future.delayed(Duration(milliseconds: 0)).then((e) {
      setState(() {
        momentSubActivityList.data.addAll(getMomentSubActivityData());
      });
    });
  }


  @override
  void initState() {
    momentSubActivityList=MomentSubActivityListModel([]);
    getNextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    double _lastMoveY = 0.0;
    //手指按下的位置
    double _downY = 0.0;
    return Listener(
        onPointerDown: (PointerDownEvent event){
      //手指按下的距离
      _downY = event.position.distance;
    },
    onPointerMove: (PointerMoveEvent event){
    //手指移动的距离
    var position = event.position.distance;
    //判断距离差
    var detal = position - _lastMoveY;
    if (detal > 0) {
    //手指移动的距离
    Provider.of<NotifierAnimation>(context,listen: false).animationStartAndEnd(false);
    } else {
    // 所摸点长度 +滑动距离  = IistView的长度  说明到达底部
      Provider.of<NotifierAnimation>(context,listen: false).animationStartAndEnd(true);
    }
    _lastMoveY = position;
    },

        child: MomentSubActivityListPage(getNextPage: getNextPage,list: momentSubActivityList,)
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

