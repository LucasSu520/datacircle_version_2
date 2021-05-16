import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/cat_activity_detai.dart';
import 'package:flutter_tuan/model/cat_activity_model.dart';

class CatActivityListPage extends StatelessWidget {
  const CatActivityListPage({this.catActivityListModel});
  final List<CatActivityListModel> catActivityListModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Theme.of(context).backgroundColor,
      child: ListView.builder(physics:RangeMaintainingScrollPhysics() ,
          itemCount: this.catActivityListModel.length,
          itemBuilder: (BuildContext context, int index) {
            return CatActivityDetail(
              catActivityListModel: catActivityListModel[index],
            );
          }),
    );
  }
}
