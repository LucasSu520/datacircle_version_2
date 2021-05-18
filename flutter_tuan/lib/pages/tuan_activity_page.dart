import 'package:flutter/material.dart';
import 'package:flutter_tuan/data/tuan_activity_list_data.dart';


import 'package:flutter_tuan/model/tuan_activity_model.dart';
import 'package:flutter_tuan/pages/tuan_activity_list_page.dart';

class TuanActivityPage extends StatefulWidget {
  const TuanActivityPage({this.name});
  final String name;
  @override
  _TuanActivityPageState createState() => _TuanActivityPageState();
}

class _TuanActivityPageState extends State<TuanActivityPage>
    with  AutomaticKeepAliveClientMixin {
  TuanActivityListModel _activityListModel = TuanActivityListModel([]);
  @override
  bool get wantKeepAlive => true;

  int page = 0;
  void getNextPage(String name)  {
    //TODO when the service is connected edit here
    // var data = await getTuanActivityResult(page: page++, name: name);
    // TuanActivityListModel list = TuanActivityListModel.fromJson(data);
    Future.delayed(Duration(milliseconds: 200)).then((e) {
      setState(() {
        _activityListModel.data.addAll(getTuanActivityData(name));
      });
    });
  }

  @override
  void initState() {
    //TODO when the service is connected edit here
    this._activityListModel.data.addAll(getTuanActivityData(widget.name));
    //if the service is connected open this
    // getTuanActivityList(widget.name);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return TuanActivityListPage(
      activityListModel: this._activityListModel,
      getNextPage: () => getNextPage(widget.name),
    );
  }
}

