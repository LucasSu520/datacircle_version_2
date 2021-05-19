import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/animation_float_button.dart';
import 'package:flutter_tuan/data/moment_sub_data.dart';
import 'package:flutter_tuan/model/moment_model.dart';
import 'package:provider/provider.dart';

import 'moment_sub_list_page.dart';

class MomentSubActivityPage extends StatefulWidget {
  @override
  _MomentSubActivityPageState createState() => _MomentSubActivityPageState();
}

class _MomentSubActivityPageState extends State<MomentSubActivityPage> with AutomaticKeepAliveClientMixin {

  MomentListModel momentSubActivityList;

  void getNextPage(){
    int page=0;
    Future.delayed(Duration(milliseconds: 0)).then((e) {
      setState(() {
        momentSubActivityList.data.addAll(getMomentSubData());
      });
    });
  }


  @override
  void initState() {
    momentSubActivityList=MomentListModel([]);
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
    var detail = position - _lastMoveY;
    bool isUp=detail>0?true:false;
    Provider.of<NotifierAnimation>(context,listen: false).animationStartAndEnd(isUp);
    _lastMoveY = position;
    },
        child: MomentSubListPage(getNextPage: getNextPage,list: momentSubActivityList,)
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

